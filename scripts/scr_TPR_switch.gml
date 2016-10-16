///scr_switch(thirdPartyX[n]);

var thirdPartyVal = argument[0];
var RiskVal = 0;

switch ( thirdPartyVal ) { 

    case "Environment":
        RiskVal = tp_env_level; 
    break; 
    
    case "Industry": 
        RiskVal = tp_ind_level; 
    break; case "Regulation": thirdPartyArisk[n] = tp_reg_level; break; 
    
    case "Resources": 
        RiskVal = tp_res_level; 
    break; 
    
    case "Science": 
        RiskVal = tp_sci_level; 
    break; 
    
    case "Technology": 
        RiskVal = tp_tec_level; 
    break; 
    
    case "Transport": 
        RiskVal = tp_tra_level; 
    break; 
    
    case "Media": 
        RiskVal = tp_med_level; 
    break; 
    
    case "Politics": 
        RiskVal = tp_pol_level; 
    break; 
    
    case "Economy": 
        RiskVal = tp_eco_level; 
    break; 
    
    case "": 
        RiskVal = 0; 
    break;

}

return RiskVal;
