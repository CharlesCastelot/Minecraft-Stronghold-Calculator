
float X1 = 2013.277 ;
float Z1 = 1645.449;
float angl1 = -133.5;

float X2 = 2813 ;
float Z2 = -437.3;
float angl2 = 19.1;

float M1=0;



void setup(){
  translate(height/2, width/2);
  size(900,500);
  
}

void draw(){
  
  //first linear function
  if (angl1>0 && angl1<90){
    M1 = - tan(radians(90-angl1));
  }
  if (angl1>90 && angl1<180){
    M1 = tan(radians(angl1-90));
  }
  
  if (angl1>-180 && angl1<-90){
    M1 = - tan(radians(abs(angl1)-90));
  }
  if (angl1>-90 && angl1<0){
    M1 = tan(radians(90 - abs(angl1)));
  }
  float B1= Z1-(M1*X1);
  
  
  
  
  //second linear function
  float M2= 1;
  
  if (angl2<90 && angl2>0){
    M2 = - tan(radians(90-angl2));
  }
  if (angl2>90 && angl2<180){
    M2 = tan(radians(angl2-90));
  }
  if (angl2<-90 && angl2>-180){
    M2 = - tan(radians(abs(angl2)-90));
  }
  if (angl2<0 && angl2>-90){
    M2 =tan(radians(90 - abs(angl2)));
  }
  float B2= Z2-(M2*X2);
  
  //final calculations
  float Xfinal= (B2+((-1)*B1))/(M1+((-1)*M2));
  
  float Zfinal= (M1 * Xfinal) + B1;
  
  println("Coordinates of the stronghold are X=",Xfinal," and Z=", Zfinal);
  println("\nCoordinates of the stronghold in the nether are X=",Xfinal/8," and Z=", Zfinal/8);
  
  fill(#FF0303);
  rect(0,0,400,500);
  
}


void mousePressed(){
  
  ellipse(mouseX,mouseY,10,10);
}
