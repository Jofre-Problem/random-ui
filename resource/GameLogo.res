"Resource/GameLogo.res"
{
		"pinner"
		{
			"ControlName"							"panel"
			"xpos"									"cs-0.6"
			"ypos"									"rs1-20"
			"wide"									"1"
			"tall"									"1"
			"visible"								"1"
			"enabled"								"1"
			"bgcolor_override" "Black"
		}
	// ITS PINNED BY GAME TO BOTTOM-LEFT CORNER
    "GameLogo"
    {
		"pin_to_sibling" "pinner"
        "ControlName" "EditablePanel" "fieldName" "GameLogo"
		
        "xpos" "cs-0.5" 	 // doesnt do anything
		
		"ypos" "40" // doesnt do anything
		
		"wide" "f0" 	// uses VGUI1 wide and tall code
		"tall" "p0.8"	// uses VGUI1 wide and tall code
		
		// gets affected by sourcescheme console backdrop bg
		
        "offsetX" "0" "offsetY" "0" "autoResize" "0" "pinCorner" "0"
		"zpos" "100"
        "visible" "1" "enabled" "1" "mouseinputenabled" "1" "keyboardinputenabled" "0"
        "paintbackground" "1" "paintborder" "0"


		"bgcolor_override" "20 20 20 1"


        "ThemeTitle"
        {
            "ControlName" "Label" "fieldName" "ThemeTitle"
            "proportionalToParent" "1" "xpos" "cs-0.5" "ypos" "0" "wide" "p0.8" "tall" "55"
            "font" "TF2_40" "textAlignment" "center"
            "labelText" "NO THEME MATCH / REPORT THIS RESULT"
            "fgcolor_override" "255 100 180 255" "mouseinputenabled" "0"
            "newhud_theme_teal"
            {
                "labelText" "TEAL / CHAPTER BACKGROUND 1"
                "fgcolor_override" "74 245 205 255"
            }
            "newhud_theme_amber"
            {
                "labelText" "AMBER / CHAPTER BACKGROUND 2"
                "fgcolor_override" "255 190 90 255"
            }
             "newhud_theme_teal2"
            {
                "labelText" "TEAL / CHAPTER BACKGROUND 3"
                "fgcolor_override" "74 0 0 255"
            }
            "newhud_theme_amber2"
            {
                "labelText" "AMBER / CHAPTER BACKGROUND 4"
                "fgcolor_override" "255 0 0 255"
            }           
        }
        "ThemeAccent"
        {   
            "ControlName" "Panel" "fieldName" "ThemeAccent"
            "proportionalToParent" "1" "xpos" "cs-0.5" "ypos" "p0.34" "wide" "p0.5" "tall" "5"
            "paintbackground" "1" "paintborder" "0" "bgcolor_override" "255 100 180 255"
            "mouseinputenabled" "0" "keyboardinputenabled" "0"
            "newhud_theme_teal" { "bgcolor_override" "74 245 205 255" }
            "newhud_theme_amber" { "bgcolor_override" "255 190 90 255" }
        }
        "Explanation"
        {
            visible 0
            "ControlName" "Label" "fieldName" "Explanation"
            "proportionalToParent" "1" "xpos" "cs-0.5" "ypos" "p0.39" "wide" "p0.75" "tall" "1"
            "font" "TF2_40" "textAlignment" "center" "wrap" "1"
        //    "labelText" "Two background names, one conditional UI. The black texture is shared intentionally. Full process restarts test randomness; resource reloads should keep the selected theme."
            "fgcolor_override" "225 233 236 255" "mouseinputenabled" "0"
        }
        "Reload"
        {    visible 0
            "ControlName" "Button" "fieldName" "Reload"
            "proportionalToParent" "1" "xpos" "cs-0.5" "ypos" "p0.55" "wide" "p0.7" "tall" "45"
            "font" "TF2_40" "labelText" "RELOAD UI / EXPECT THE SAME THEME"
            "command" "reloadscheme" "actionsignallevel" "1"
            "paintbackground" "0" "paintborder" "0"
            "defaultFgColor_override" "225 233 236 255" "armedFgColor_override" "74 245 205 255"
            "mouseinputenabled" "1" "keyboardinputenabled" "0"
           
            "newhud_theme_amber" 
            { "armedFgColor_override" "255 190 90 255" }
        }
        "Options"
        {    visible 0
            "ControlName" "Button" "fieldName" "Options"
            "proportionalToParent" "1" "xpos" "cs-0.5" "ypos" "p0.64" "wide" "p0.7" "tall" "45"
            "font" "TF2_40" "labelText" "NATIVE OPTIONS / CHECK POPUP AND RETURN"
            "command" "OpenOptionsDialog" "actionsignallevel" "2"
            "paintbackground" "0" "paintborder" "0"
            "defaultFgColor_override" "225 233 236 255" "armedFgColor_override" "74 245 205 255"
            "mouseinputenabled" "1" "keyboardinputenabled" "0"
            
            
            "newhud_theme_amber" { "armedFgColor_override" "255 190 90 255" }
        }



        "NewMenu"
        {
            "ControlName" "EditablePanel" "fieldName" "NewMenu"
            "proportionalToParent" "1" 
            "xpos" "50" 
            "ypos" "50" 
            "wide" "200" 
            "tall" "200"

"bgcolor_override" "40 40 40 255"

            "paintbackground" "1" "paintborder" "0"
         "mouseinputenabled" "1" "keyboardinputenabled" "0"
           
            "newhud_theme_amber" 
            {             
                "NewMenu"
                {
                    "ControlName" "EditablePanel" "fieldName" "NewMenu"
                    "proportionalToParent" "1" 
                    "xpos" "0" 
                    "ypos" "0" 
                    "wide" "f0" 
                    "tall" "f0"

                    "bgcolor_override" "3 3 20 100"

                    "paintbackground" "1" "paintborder" "0"
                    "mouseinputenabled" "1" "keyboardinputenabled" "0"
                    "LogoBTN"
                    {
                        "ControlName" "Button" "fieldName" "LogoBTN"
                        "proportionalToParent" "1" 
                        "xpos" "320" 
                        "ypos" "195" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "Font40"
                        "labelText" "LIGHTHUD"
                        "command" "engine showconsole; echo Lighthud"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"

                    }
                    "ServersBTN"
                    {
                        "ControlName" "Button" "fieldName" "ServersBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "Font40"
                        "labelText" "SERVERS"
                        "command" "engine gamemenucommand OpenServerBrowser"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "LogoBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    }
                    "CreateBTN"
                    {
                        "ControlName" "Button" "fieldName" "CreateBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "Font40"
                        "labelText" "CREATE"
                        "command" "engine gamemenucommand OpenCreateMultiplayerGameDialog"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "ServersBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    }    
                    "ItemsBTN"
                    {
                        "ControlName" "Button" "fieldName" "ItemsBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "Font40"
                        "allcaps" "1"
                        "labelText" "Items"
                        "command" "engine open_charinfo"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "CreateBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    }        
                    "OptionsBTN"
                    {
                        "ControlName" "Button" "fieldName" "OptionsBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "Font40"
                        "allcaps" "1"
                        "labelText" "Options"
                        "command" "engine gamemenucommand OpenOptionsDialog"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "ItemsBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    }    
                    "AdvOptionsBTN"
                    {
                        "ControlName" "Button" "fieldName" "AdvOptionsBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "Font40"
                        "allcaps" "1"
                        "labelText" "ADV Options"
                        "command" "engine opentf2options"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "OptionsBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    } 
                    "ContrackerBTN"
                    {
                        "ControlName" "Button" "fieldName" "ContrackerBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "Font40"
                        "allcaps" "1"
                        "labelText" "Contracker"
                        "command" "questlog"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "AdvOptionsBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    }                                                                                       
                }
            }
            "newhud_theme_teal" 
            {             
                "NewMenu"
                {
                    "ControlName" "EditablePanel" "fieldName" "NewMenu"
                    "proportionalToParent" "1" 
                    "xpos" "0" 
                    "ypos" "0" 
                    "wide" "f0" 
                    "tall" "f0"

                    "bgcolor_override" "255 1 255 100"

                    "paintbackground" "1" "paintborder" "0"
                    "mouseinputenabled" "1" "keyboardinputenabled" "0"
                    "LogoBTN"
                    {
                        "ControlName" "Button" "fieldName" "LogoBTN"
                        "proportionalToParent" "1" 
                        "xpos" "320" 
                        "ypos" "195" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "TF2_40"
                        "labelText" "LIGHTHUD"
                        "command" "engine showconsole; echo Lighthud"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"

                    }
                    "ServersBTN"
                    {
                        "ControlName" "Button" "fieldName" "ServersBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "TF2_40"
                        "labelText" "SERVERS"
                        "command" "engine gamemenucommand OpenServerBrowser"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "LogoBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    }
                    "CreateBTN"
                    {
                        "ControlName" "Button" "fieldName" "CreateBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "TF2_40"
                        "labelText" "CREATE"
                        "command" "engine gamemenucommand OpenCreateMultiplayerGameDialog"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "ServersBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    }    
                    "ItemsBTN"
                    {
                        "ControlName" "Button" "fieldName" "ItemsBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "TF2_40"
                        "allcaps" "1"
                        "labelText" "Items"
                        "command" "engine open_charinfo"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "CreateBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    }        
                    "OptionsBTN"
                    {
                        "ControlName" "Button" "fieldName" "OptionsBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "TF2_40"
                        "allcaps" "1"
                        "labelText" "Options"
                        "command" "engine gamemenucommand OpenOptionsDialog"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "ItemsBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    }    
                    "AdvOptionsBTN"
                    {
                        "ControlName" "Button" "fieldName" "AdvOptionsBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "TF2_40"
                        "allcaps" "1"
                        "labelText" "Adv Options"
                        "command" "engine opentf2options"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "OptionsBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    } 
                    "ContrackerBTN"
                    {
                        "ControlName" "Button" "fieldName" "ContrackerBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "TF2_40"
                        "allcaps" "1"
                        "labelText" "Contracker"
                        "command" "questlog"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "AdvOptionsBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    } 
                }
            }   
            "newhud_theme_amber2" 
            {             
                "NewMenu"
                {
                    "ControlName" "EditablePanel" "fieldName" "NewMenu"
                    "proportionalToParent" "1" 
                    "xpos" "0" 
                    "ypos" "0" 
                    "wide" "f0" 
                    "tall" "f0"

                    "bgcolor_override" "255 255 1 100"

                    "paintbackground" "1" "paintborder" "0"
                    "mouseinputenabled" "1" "keyboardinputenabled" "0"
                   "LogoBTN"
                    {
                        "ControlName" "Button" "fieldName" "LogoBTN"
                        "proportionalToParent" "1" 
                        "xpos" "320" 
                        "ypos" "195" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "TF2Thin_40"
                        "labelText" "LIGHTHUD"
                        "command" "engine showconsole; echo Lighthud"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"

                    }
                    "ServersBTN"
                    {
                        "ControlName" "Button" "fieldName" "ServersBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "TF2Thin_40"
                        "labelText" "SERVERS"
                        "command" "engine gamemenucommand OpenServerBrowser"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "LogoBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    }
                    "CreateBTN"
                    {
                        "ControlName" "Button" "fieldName" "CreateBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "TF2Thin_40"
                        "labelText" "CREATE"
                        "command" "engine gamemenucommand OpenCreateMultiplayerGameDialog"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "ServersBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    }    
                    "ItemsBTN"
                    {
                        "ControlName" "Button" "fieldName" "ItemsBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "TF2Thin_40"
                        "allcaps" "1"
                        "labelText" "Items"
                        "command" "engine open_charinfo"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "CreateBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    }        
                    "OptionsBTN"
                    {
                        "ControlName" "Button" "fieldName" "OptionsBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "TF2Thin_40"
                        "allcaps" "1"
                        "labelText" "Options"
                        "command" "engine gamemenucommand OpenOptionsDialog"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "ItemsBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    }    
                    "AdvOptionsBTN"
                    {
                        "ControlName" "Button" "fieldName" "AdvOptionsBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "TF2Thin_40"
                        "allcaps" "1"
                        "labelText" "Adv Options"
                        "command" "engine opentf2options"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "OptionsBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    } 
                    "ContrackerBTN"
                    {
                        "ControlName" "Button" "fieldName" "ContrackerBTN"
                        "proportionalToParent" "1" 
                        "xpos" "0" 
                        "ypos" "0" 
                        "wide" "200" 
                        "tall" "45"
                        "font" "TF2Thin_40"
                        "allcaps" "1"
                        "labelText" "Contracker"
                        "command" "questlog"
                        "actionsignallevel" "3"
                        "textAlignment" "center"
                        "paintbackground" "0" "paintborder" "0"
                        "mouseinputenabled" "1" "keyboardinputenabled" "0"
				        pin_to_sibling "AdvOptionsBTN"
						"Pin_Corner_To_Sibling"			"PIN_TOPLEFT"
						"Pin_To_Sibling_Corner"			"PIN_BOTTOMLEFT"
                    } 
                }
            }
            "newhud_theme_teal2" 
            {             
                "NewMenu"
                {
                    "ControlName" "EditablePanel" "fieldName" "NewMenu"
                    "proportionalToParent" "1" 
                    "xpos" "0" 
                    "ypos" "0" 
                    "wide" "f0" 
                    "tall" "f0"

                    "bgcolor_override" "255 1 1 100"

                    "paintbackground" "1" "paintborder" "0"
                    "mouseinputenabled" "1" "keyboardinputenabled" "0"

                }
            }                   
        }


    }
}
