<h2>This is a basic win32 abstraction layer for starting projects!</h2>

The main files of the project are:
<ul>
    <li><code>win32_main.cpp</code> -where the program starts</li>
    <li><code>win32_opengl.c</code> -where openGL function pointers are loaded</li>
    <li><code>platform.h</code> -the main OS interface of the project</li>
    <li><code>tools.h</code> -some helper functions/typedefs</li>
</ul>
To build the executable,
<ol> 
    <li>Have Visual Studio installed :(</li>
    <li>Go to the main folder <em>win32basic/</em> and open CMD</li>
    <li>Type "build" and [ENTER] (this will call build.bat)</li>
    <li>Type "run" and [ENTER] (this will go to <em>build/</em> and execute game.exe)</li>
</ol>
I have also added 3 Files to get you started writing OpenGL code:
<ul>
    <li><code>shader.h</code> -an OpenGL shader abstraction</li>
    <li><code>texture.h</code> -an OpenGL texture abstraction</li>
    <li><code>quad.h</code> -code that generates a textured quad on the screen!</li>
</ul>
These are not mandatory, you can delete them if you want!

Now for a general review of the architecture.
The program starts at <code>win32_main.cpp</code> where a win32 window is created and
the function pointers to modern OpenGL functions are loaded in <code>win32_opengl.c</code>.
The prototypes for these functions lie in <code>platform.h</code> which serves as a middle
man between the OS and you, <code>tools.h</code> has some helper stuff just for convenience.
The real app resides in <code>game.c</code> where there are 3 functions there:
<ul>
    <li><code>init(void)</code>: stuff your app needs to do on startup</li>
    <li><code>update(void)</code>: data updates your app does every frame</li>
    <li><code>render(void)</code>: the rendering part of your app</li>

</ul>

I encourage everyone to go and see what the code does for themselves, its pretty simple actually! 
