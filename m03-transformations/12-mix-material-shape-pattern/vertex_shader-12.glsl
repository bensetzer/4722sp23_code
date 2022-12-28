
#version 430 core

/*
 * The vertex shader is back to sending the shape color on to the fragment shader.
 */



in layout(location = 1) vec4 bPosition;
in  layout(location = 2) vec4 bColor;


uniform layout(location = 1) mat4 transform;

out vec4 vColor;

void
main()
{
    vColor = bColor;
    gl_Position = transform * bPosition;
}
