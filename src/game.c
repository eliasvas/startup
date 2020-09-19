#include "platform.h"
#include "tools.h"

//this is just an example you can delete it no problem
#include "quad.h" 
static Quad q;

//Here goes any startup code you have.
static void 
init(void)
{
    init_quad(&q, "../assets/dirt.png");
}



//This gets called every frame and is meant to update your data.
static void 
update(void)
{
}

//This gets called evert frame and is ment to render your data.
static void 
render(void)
{
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glClearColor(fabs2(sin(global_platform.current_time/80.f)), fabs2(sin(global_platform.current_time) / 130.f),fabs2(cos(global_platform.current_time / 70.f)), 1);

    render_quad(&q);
}
