#version 3.6;
global_settings {assumed_gamma 1.0}
#include "colors.inc"  
#include "shapes.inc"
#include "textures.inc"  
//================================================
 

//================================================
//Camara
camera{
 location <10,5,-30>
 look_at<10,2,0>
 }
// Lampara
light_source{   <-4,40,-20>  color White  } 
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
    text { ttf "crystal.ttf", "7mo semestre", 1, 0
        translate <2.5, 4.5, -15>
        scale <2, 2, 1>
        rotate <-2, 1, -1>
        }    
    text { ttf "crystal.ttf", "Materia: CGIUC", 1, 0
        translate <1.2, 3.5, -15>
        scale <2.2, 2, 1>
        rotate <-2, 1, -1>
        }
    text { ttf "crystal.ttf", "Prof.: Mauricio A.", 1, 0
        translate <1, 2.5, -15>
        scale <2, 2, 1>
        rotate <-2, 1, -1>
        }
   
  texture{  Chrome_Metal }
 translate < 0, -15.5+(7*clock),0>
  
  } 