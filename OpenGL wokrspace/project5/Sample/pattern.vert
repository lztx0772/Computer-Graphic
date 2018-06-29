#version 330 compatibility

uniform float	uTime;		// "Time", from Animate( )
uniform float isVert;

out vec2  	vST;		// texture coords

const float PI = 	3.14159265;
const float AMP = 	0.2;		// amplitude
const float W = 	2.;		// frequency

void
main( )
{ 
	vST = gl_MultiTexCoord0.st;
	vec3 vert = gl_Vertex.xyz;
	if(isVert == 1.f)
	{
		vert.x = vert.x * (1+0.5*sin(uTime*2*PI));
		vert.y = vert.y * (1+0.5*sin(uTime*2*PI)); 
		vert.z = vert.z * (1+0.5*sin(uTime*2*PI)); 
	}else
	{
		vert.x = vert.x * 1.f;
		vert.y = vert.y * 1.f; 
		vert.z = vert.z * 1.f; 
	
	}

	gl_Position = gl_ModelViewProjectionMatrix * vec4( vert, 1. );
}