attribute vec4 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * in_Position;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D u_samp_heightmap;
uniform sampler2D u_samp_lava;
uniform sampler2D u_samp_normal;

uniform vec3 u_lava_setup; //.x - threshold .y = time

void main()
{
    vec4 samp_diffuse = texture2D( gm_BaseTexture, v_vTexcoord);
    vec4 samp_heightmap = texture2D(u_samp_heightmap, v_vTexcoord);
    vec4 samp_normal = texture2D(u_samp_normal, (v_vTexcoord * 2.0) + u_lava_setup.y) * 2.0 - 1.0;
    vec4 samp_lava = texture2D(u_samp_lava, v_vTexcoord + (samp_normal.xy*u_lava_setup.z) - u_lava_setup.y);
    
    samp_heightmap.r = step(u_lava_setup.x, samp_heightmap.r);
    
    vec3 final_color = mix(samp_diffuse.rgb, samp_lava.rgb, 1.0 - samp_heightmap.r);
    
    gl_FragColor = v_vColour * vec4(final_color, samp_diffuse.a);
}

