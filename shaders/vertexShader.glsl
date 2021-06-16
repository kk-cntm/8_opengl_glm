#version 330 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexPos;

out vec3 color;
out vec2 texPos;

uniform mat4 transform;

uniform float offsetX;

void main() {
    gl_Position = transform * vec4(aPos, 1.0f);
    color = aColor;
    texPos = aTexPos;
}
