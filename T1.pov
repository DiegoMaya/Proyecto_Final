#version 3.6;
global_settings {assumed_gamma 1.0}
#include "colors.inc"  
#include "shapes.inc"
#include "textures.inc"  
//================================================
    

//================================================
//Camara
camera{
 location <10,5,-32>
 look_at<10,2,0>
 }
// Lampara
light_source{   <8,14.7,-30>  color White  } 
light_source{   <15,4,0>   White  }

              
  //plano y    
  
  plane {  y, 14.8    pigment{  FBM_Clouds  } }
  plane {  y, 15  pigment{  color SlateBlue  } }   
    
  plane {
    y, -8
   	texture {
   	pigment{    image_map { jpeg "cine.jpg"}  }
    finish { ambient 0.3 diffuse 0.6 }
    scale <1,10,10>
    }	
  }
  	    
  //Plano z
  plane {  z, 10.8 pigment { FBM_Clouds  }} 
  plane {  z, 11 
    texture {
	   pigment{ color rgb<-2,-2,2>  }
       finish {
         diffuse 0.4
         ambient 0.2
         phong 1
         phong_size 100
         reflection 0.25
         }
       }
  }
  
  //Plano x
  plane { x, -10  texture { Starfield } }
   
  plane { x, 27.8  texture { Starfield } }
  
 
//==============    Figuras    ===================

//  Texto 
union{
    text { ttf "crystal.ttf", "UBBJ", 1, 0
        translate <1, 3, -15>
        scale <5, 2, 1>
        rotate <-2, 1, -1>
        }
    text { ttf "crystal.ttf", "Sede Tlahuac", 1, 0
        translate <1.8, 2, -15>
        scale <2, 2, 1>
        rotate <-2, 1, -1>
        }
    text { ttf "crystal.ttf", "ING. en Computacion", 1, 0
        translate <.8, 1, -15>
        scale <2, 2, 1>
        rotate <-2, 1, -1>
        }
  texture{  Chrome_Metal }
 // translate < 1, 2,-17+(5*clock)>
  
  }