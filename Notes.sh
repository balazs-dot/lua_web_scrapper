# Install Lua in Ubuntu
sudo apt install lua5.3	

#Using your favorite text editor, you can create your first Lua program as follows.

$ vi hello.lua

#Add the following code to the file.

print("Hello World")

#Save and close the file. Then run your program as shown.

$ lua hello.lua

#Debugging Lua
https://www.tutorialspoint.com/lua/lua_debugging.htm

#Execute hello world
docker run --rm -it -v ${PWD}:/data --workdir /data lua:1.0 /bin/bash -c "lua hello_world.lua"


#https://www.lua.org/manual/5.3/manual.html
#dynamically typed language variables do not have types; only values do. There are no type definitions in the language. All values carry their own type. 

#Debug Lua:
https://marketplace.visualstudio.com/items?itemName=actboy168.lua-debug