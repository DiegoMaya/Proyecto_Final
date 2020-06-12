#version 3.6;
global_settings {assumed_gamma 1.0}
#include "colors.inc"  
#include "shapes.inc"
#include "textures.inc"  
//================================================
 
#declare ang=10*clock;
//Valor de la altura
#declare valor=sin(ang);
//Avance del eje x     
#declare avance=cos(ang);    
   
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

text { ttf "Arial.ttf", "Diferencia", 1, 0
        translate <2.5, 1, -13>
        scale <2, 2, 1>
        rotate <-2, 1, -1>
        texture {
	        pigment{ color rgb<2,2*clock,2>  }
            finish { diffuse 0.4
                     ambient 0.2
                     phong 1
                     phong_size 100
                     reflection 0.25
            }
        }
        
}  

difference{
    sphere{   <8-(8*avance),2+(8*valor),0>, 2.5   
        texture { Gold_Metal}
    }
    box{  <2.5, -2.5, -2.5>, <-1.7, 2.5, 2.5>
    
        pigment{ Red }
        finish { phong 1.0  }
        rotate <10, -20*ang,20*ang >        
        translate <7.5, 9.5, 0>
      }
    box{  <2.5, -2.5, -2.5>, <-1.7, 2.5, 2.5>
    
        pigment{ Green }
        finish { phong 1.0  }
        rotate <10, -20*ang,20*ang >        
        translate <7.5, -5.5, 0>
      }
}