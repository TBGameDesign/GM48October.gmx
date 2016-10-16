var y_loc=356;

if thirdPartyA[n]=tp_med or thirdPartyB[n]=tp_med or thirdPartyC[n]=tp_med 
    {
    // draw left link
    draw_sprite(spr_leftLink,0,14,y_loc)
    }

    
if thirdPartyA[n]=tp_sci or thirdPartyB[n]=tp_sci or thirdPartyC[n]=tp_sci
    {
    draw_sprite(spr_anyLink,0,114,y_loc)
    }

if thirdPartyA[n]=tp_pol or thirdPartyB[n]=tp_pol or thirdPartyC[n]=tp_pol
    {
    draw_sprite(spr_anyLink,0,209,y_loc)
    }
    
if thirdPartyA[n]=tp_tec or thirdPartyB[n]=tp_tec or thirdPartyC[n]=tp_tec
    {
    draw_sprite(spr_anyLink,0,305,y_loc)
    }
    
if thirdPartyA[n]=tp_tra or thirdPartyB[n]=tp_tra or thirdPartyC[n]=tp_tra
    {
    draw_sprite(spr_anyLink,0,396,y_loc)
    }
    
if thirdPartyA[n]=tp_ind or thirdPartyB[n]=tp_ind or thirdPartyC[n]=tp_ind
    {
    draw_sprite(spr_anyLink,0,491,y_loc)
    }
    
if thirdPartyA[n]=tp_eco or thirdPartyB[n]=tp_eco or thirdPartyC[n]=tp_eco
    {
    draw_sprite(spr_anyLink,0,589,y_loc)
    }
    
if thirdPartyA[n]=tp_res or thirdPartyB[n]=tp_res or thirdPartyC[n]=tp_res
    {
    draw_sprite(spr_anyLink,0,684,y_loc)
    }

if thirdPartyA[n]=tp_reg or thirdPartyB[n]=tp_reg or thirdPartyC[n]=tp_reg
    {
    draw_sprite(spr_anyLink,0,777,y_loc)
    }
    
if thirdPartyA[n]=tp_env or thirdPartyB[n]=tp_env or thirdPartyC[n]=tp_env 
    {
    // draw right link
    draw_sprite(spr_rightLink,0,849,y_loc)
    }
/*    if thirdPartyArisk[n]<-2 draw_set_color(make_colour_rgb(128,0,128)) 
    if thirdPartyArisk[n]=-2 draw_set_color(make_colour_rgb(255,0,0)) 
    if thirdPartyArisk[n]=-1 draw_set_color(make_colour_rgb(255,128,0)) 
    if thirdPartyArisk[n]=0 draw_set_color(make_colour_rgb(255,255,0)) // -2,-1,0,1,2 * 20 as an offset to a 50 sided dice as a chance of chaing for the worst (diminish)
    if thirdPartyArisk[n]=1 draw_set_color(make_colour_rgb(128,255,0))
    if thirdPartyArisk[n]=2 draw_set_color(make_colour_rgb(0,255,0)) 
    if thirdPartyArisk[n]>2 draw_set_color(make_colour_rgb(0,255,128)) 
    draw_text(0,110,"Third Party A: "+string(thirdPartyA[n]))
    if thirdPartyBrisk[n]<-2 draw_set_color(make_colour_rgb(128,0,128)) 
    if thirdPartyBrisk[n]=-2 draw_set_color(make_colour_rgb(255,0,0)) 
    if thirdPartyBrisk[n]=-1 draw_set_color(make_colour_rgb(255,128,0)) 
    if thirdPartyBrisk[n]=0 draw_set_color(make_colour_rgb(255,255,0)) // -2,-1,0,1,2 * 20 as an offset to a 50 sided dice as a chance of chaing for the worst (diminish)
    if thirdPartyBrisk[n]=1 draw_set_color(make_colour_rgb(128,255,0))
    if thirdPartyBrisk[n]=2 draw_set_color(make_colour_rgb(0,255,0)) 
    if thirdPartyBrisk[n]>2 draw_set_color(make_colour_rgb(0,255,128)) 
    draw_text(250,110,"Third Party B: "+string(thirdPartyB[n]))
    if thirdPartyCrisk[n]<-2 draw_set_color(make_colour_rgb(128,0,128))
    if thirdPartyCrisk[n]=-2 draw_set_color(make_colour_rgb(255,0,0)) 
    if thirdPartyCrisk[n]=-1 draw_set_color(make_colour_rgb(255,128,0)) 
    if thirdPartyCrisk[n]=0 draw_set_color(make_colour_rgb(255,255,0)) // -2,-1,0,1,2 * 20 as an offset to a 50 sided dice as a chance of chaing for the worst (diminish)
    if thirdPartyCrisk[n]=1 draw_set_color(make_colour_rgb(128,255,0))
    if thirdPartyCrisk[n]=2 draw_set_color(make_colour_rgb(0,255,0)) 
    if thirdPartyCrisk[n]>2 draw_set_color(make_colour_rgb(0,255,128)) 
    draw_text(500,110,"Third Party C: "+string(thirdPartyC[n]))
