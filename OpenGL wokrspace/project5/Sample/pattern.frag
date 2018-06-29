#version 330 compatibility

uniform float	uTime;		// "Time", from Animate( )
uniform float uS0, uSize, uT0;
uniform float isFrag;
in vec2  	vST;		// texture coords
float _size;

const float PI = 	3.14159265;

void
main( )
{
	vec3 myColor = vec3( 1., 0., 1. );
	if(isFrag == 1.f)
		_size = (uSize*(1+0.5*sin(uTime*2*PI)));
	else
		_size = uSize*0;

	if( uS0-_size/2. <= vST.s&&  vST.s<= uS0+_size/2.  && uT0-_size/2. <= vST.t  &&   vST.t <= uT0+_size/2.  )
	{
		myColor = vec3( 0., 1., 0. );
	}
	gl_FragColor = vec4( myColor,  1. );

}