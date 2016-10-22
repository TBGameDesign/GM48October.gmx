
attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec2 v_texcoord;


void main()
{

    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position, 1.0);
    v_texcoord = in_TextureCoord;

}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_texcoord;


uniform sampler2D s_maskMap;


void main()
{
vec4 colour = texture2D(gm_BaseTexture, v_texcoord); // get color
float mask = texture2D(s_maskMap, v_texcoord).a; // get mask

vec3 rgb = vec3(1.0,1.0,1.0);

gl_FragColor = colour * vec4(rgb, mask );
//gl_FragColor.a = mask;
}


