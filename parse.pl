use strict;
use FindBin qw/$Bin/;
use Data::Dumper;

my @dirs = ('D:/QQDownload/org.eclipse.koneki.ldt.product-win32.win32.x86/workspace/test3/src/framework/client', 'D:/QQDownload/org.eclipse.koneki.ldt.product-win32.win32.x86/workspace/test3/src/framework/shared');
my $rh_parsed = {};
my $TMP_DIR = "$Bin/api" ;#. time();

main();

#print Dumper($rh_parsed);


sub main {
    mkdir "$TMP_DIR";
    
    #copy old_api to new_api, 
    
    my $cmd = "xcopy $Bin/old_api/*.lua $TMP_DIR/";
    $cmd =~ s{\/}{\\}gis;
    $cmd .=" /s /y";
    print $cmd . "\n";
    system($cmd);

    
    for my $d(@dirs){
        parse($d, "");
    }


    #and make new global.lua
    open(F, '<', "$TMP_DIR/global.lua");
    my $c = join "", <F>;
    close F;
    
    $c =~ s{return\s+nil}{};
    $c .= "\n\n";
    
    for my $s(keys %$rh_parsed){
        $c .= "-----------------------\n";
        $c .= "-- \@field[parent = #global] $s#$s $s preloaded module\n\n";
        
    }
    $c .= "return nil";
    open(F, '>', "$TMP_DIR/global.lua");
    print F $c;
    close F;
   
    #system("rd /s/q $TMP_DIR");
}

sub parse {
    my ($dir) = @_;

    my @files = glob "$dir/*";
    
    for my $f(@files){
        
        if (-d $f){
            $f =~ m{(\w+)$};
            my $short = $1;
            if (!$short){
                next;
            }
            parse($f);
        } else {
            $f =~ m{(\w+)\.lua$};
            my $short = $1;
            if (!$short){
                next;
            }
            #parse file
            open(F, '<', $f);
            my $c = join "", <F>;
            close F;
            
            #fields
            my @fields = ();
            while ($c =~ m{\W*$short\.(\w+)\s*=}g) {
                push @fields, $1;
            }
             
       
            #functions
            my @functions = ();
            while ($c =~ m{function\s+$short(\.|\:)(\w+)\((.*?)\)}g) {
                my $name = $2;
                my $params = $3;
                my @params = split ",", $params;
                push @functions, {name=> $name, params=> \@params};
            }
            $rh_parsed->{$short} = {fields => \@fields, functions => \@functions};
            
            #save to file
            open(O, '>', "$TMP_DIR/$short.lua");
            print O "-- \@module $short\n";
            print O "\n";
            
            for my $fd(@fields){
                print O "-----------------------\n";
                print O "-- \@field [parent=#$short] $fd\n";
                print O "\n";
            }
            
           
            for my $func(@functions){
                my $name = $func->{name};
                my $ra_params = $func->{params};
                 print O "-----------------------\n";
                print O "-- \@function [parent=#$short] $name\n";
                
                for my $p(@$ra_params) {
                    print O "-- \@param  $p\n";
                }
                print O "\n";
            }
            print O "-----------------------\n";
            print O "return nil\n";
            
            close O;
        }
    }
}

__END__
    
-- @module math2

-------------------------------------------------------------------------------
-- @function [parent=#math2] abs
-- @param  x
-- @param y

-------------------------------------------------------------------------------
-- @field [parent=#math2]  stderr

return nil
    
    
------------------------------------------------------------------------------

-- @field[parent = #global] math2#math2 math2 preloaded module
-- 