use strict;
use FindBin qw/$Bin/;
use Data::Dumper;

my @dirs = ('E:/quick-cocos2d-x/framework/client', 'E:/quick-cocos2d-x/shared');
my @tolua_dirs = ('E:/quick-cocos2d-x/lib/cocos2d-x/tools/tolua++','E:/quick-cocos2d-x/lib/cocos2dx_extensions_luabinding','E:/quick-cocos2d-x/lib/cocos2dx_extra/build_luabinding');
my $rh_parsed = {};
my $TMP_DIR = "api" ;#. time();
chdir($Bin);

main();

#print Dumper($rh_parsed);


sub main {
    mkdir "$TMP_DIR";
    
    #copy old_api to new_api, 
    
    my $cmd = "cp -rf $Bin/old_api/*.lua $TMP_DIR/";


    run_system($cmd);

    
    for my $d(@dirs){
        parse($d, "");
    }
    
    #need to parse cocos2d original pkg files
    for my $cd(@tolua_dirs){
        parse_tolua($cd, "");
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
    
    #zip it to api.zip
    run_system("rm -f api.zip");
    
    chdir($TMP_DIR);
    
    run_system("zip -rq  ../api.zip *");
    
    chdir("$Bin");
    run_system("rm -f quicklua.zip");
    run_system("zip -rq  quicklua.zip api.zip docs quicklua-5.1.rockspec");
    #system("rd /s/q $TMP_DIR");
}

sub run_system {
    my $cmd = shift;
    print $cmd . "\n";
    print `$cmd`;
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
                @params = map {$_ =~ s{\s}{}g; $_} @params;
                push @functions, {name=> $name, params=> \@params};
            }
            $rh_parsed->{$short} = {fields => \@fields, functions => \@functions};
            
            #save to file
            save_to_file($short,  \@fields, \@functions);
        }
    }
}

sub save_to_file{
    my $class_name = shift;
    my $ra_fileds = shift;
    my $ra_functions = shift;
    
    
    open(O, '>', "$TMP_DIR/$class_name.lua");
    print O "-- \@module $class_name\n";
    print O "\n";
    
    for my $fd(@$ra_fileds){
        print O "-----------------------\n";
        print O "-- \@field [parent=#$class_name] $fd\n";
        print O "\n";
    }
    
   
    for my $func(@$ra_functions){
        my $name = $func->{name};
        my $ra_params = $func->{params};
         print O "-----------------------\n";
        print O "-- \@function [parent=#$class_name] $name\n";
        
        for my $p(@$ra_params) {
            print O "-- \@param  $p\n";
        }
        print O "\n";
    }
    print O "-----------------------\n";
    print O "return nil\n";
    
    close O;
}

sub parse_tolua {
    my ($dir) = @_;

    my @files = glob "$dir/*";
    
    for my $f(@files){
        
        $f =~ m{(\w+)\.(pkg|tolua)$}i;
        my $short = $1;
        if (!$short){
            next;
        }
        #parse file
        open(F, '<', $f);
        my $c = join "", <F>;
        close F;
        
        while($c =~ m{class\s+(\w+).*?\{(.*?)\}}gs){
            my $class_name = $1;
            my $body = $2;
            my @functions = ();
            while($body =~ m{(\w+)\((.*?)\)}g){
                my $func_name = $1;
                my $func_params = $2;
                my @params = split ",", $func_params;
                @params = map {$_ =~ m{(\w+)\s*$}; $1} @params;
                push @functions, {name=> $func_name, params=> \@params};
            }
            
            $rh_parsed->{$class_name} = {fields => [], functions => \@functions};
            
 
            #save to file
            save_to_file($class_name, [], \@functions);
            
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