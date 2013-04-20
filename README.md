lua_complete_eclipse
====================

Parse lua files to make execution environment for lua/eclipse/ldt


Usage

1. Modify parse.pl , change the @dirs to what lua source dirs you want to parse.

2. Run parse.pl, it will parse the folders and generated the corresponding environment lua files into api/ directory.

3. Zip all the lua files in api/ to api.zip

4. Zip api.zip, docs/, *.rockspec into mylua.zip


And then you can use this mylua.zip in eclipse/lua/ldt.

I used quick-cocos2d-x's framework as the lua source dir, and has made a mylua.zip for my need.

Try to use it in eclipse and then you will see  some module like "ui", "display" can have auto-complete feature right now.

 