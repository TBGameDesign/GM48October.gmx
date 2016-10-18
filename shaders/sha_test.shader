//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)
attribute vec2 n;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
vec2 n;

void main()
{
    vec4 originalColor = texture2D( gm_BaseTexture, v_vTexcoord );
    
    float red = 1.0;
    float green = 1.0;
    float blue = 1.0;
    float alpha = 1.0;
    n = vec2(0.025,0.025) + vec2 (0.01,0.01);
    vec4 Color = vec4(red,green,blue,alpha);
    Color.r =0.5;
    gl_FragColor = Color * texture2D( gm_BaseTexture, v_vTexcoord );
   
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}

