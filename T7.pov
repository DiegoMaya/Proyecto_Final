#version 3.6;
global_settings {assumed_gamma 1.0}
#include "colors.inc"  
#include "shapes.inc"
#include "textures.inc"  
//================================================
 
 #declare giro = 10*clock;
//================================================
//Camara
camera{
 location <10,5,-30>
 look_at<10,2,0>
 }
// Lampara
light_source{   <-5,14.7,-20>  color White  } 
light_source{   <15,4,-20>   White  }

              
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
union{
  sphere{   <7.5, 5, 0>, 3.9   
        texture { pigment{ Blue }}
        rotate<0,0,giro>
    }
   sphere{   <7.5, 5, 0>, 4   
        texture { pigment{ Red }}
        rotate<0,0,giro>
    }
    

  sphere {<7.5, 5, 0>,3
          texture { Gold_Metal}
          rotate<0,0,-giro>         }
                   
  clipped_by{sphere {<7,4.5,-0>,3.3 translate<2,0,-0> inverse}}
  
  rotate <15,70,0> translate <2.5,0,-2>
}

text { ttf "Arial.ttf", "Clipped", 1, 0
        translate <3.5, 3, -8>
        scale <3, 2, 1>
        rotate <-2, 2, -1>
        texture {
	        pigment{ color rgb<-10+clock,1,-10+clock>  }
            finish { diffuse 0.4
                     ambient 0.2
                     phong 1
                     phong_size 100
                     reflection 0.25
            }
        }
        
}   