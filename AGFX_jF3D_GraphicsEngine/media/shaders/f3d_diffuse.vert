uniform vec4 light_diffuse;
uniform vec4 light_ambient;
uniform vec3 light_position;

varying vec4 v_light_diffuse;
varying vec4 v_light_ambient;

void main()
{
	
	gl_TexCoord[0]=gl_TextureMatrix[0]* gl_MultiTexCoord0;
	vec3 normal =gl_NormalMatrix *  gl_Normal;
	
	vec4 LightPosition =  vec4(light_position,0.0);	
	vec4 VertexPosition = gl_Vertex;
		
	vec4 lightvector = normalize(LightPosition - VertexPosition);
	
	float NxDir = max(0.0,dot(normal.xyz,lightvector.xyz));
	
	v_light_diffuse = (light_diffuse * NxDir);
	v_light_ambient = light_ambient;
	
	gl_Position = ftransform();
}
