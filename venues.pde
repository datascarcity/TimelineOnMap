
Coord placetocoord(String placetext){
  Coord tempcoord = new Coord();
  if(!placetext.equals("")) {
   if(placetext.equals("Lake Pavillion/Terrace")) {
     tempcoord.x = 350;
     tempcoord.y = 540;
     tempcoord.z = 0;
   }
   else if(placetext.equals("Commons")) {
     tempcoord.x = 350;
     tempcoord.y = 540;
     tempcoord.z = 0;
   }
   else if(placetext.equals("Great Lawn")) {
     tempcoord.x = 370;
     tempcoord.y = 600;
     tempcoord.z = 0;
   }
   else if(placetext.equals("Old West Palm Beach City Hall")) {
     tempcoord.x = 310;
     tempcoord.y = 490;
     tempcoord.z = 0;
   }
   else if(placetext.equals("S Dixie Highway")) {
     tempcoord.x = 333;
     tempcoord.y = 540;
     tempcoord.z = 0;
   }
   else if(placetext.equals("Flagler")) {
     tempcoord.x = 410;
     tempcoord.y = 575;
     tempcoord.z = 0;
   }
   else if(placetext.equals("Fern Dock")) {
     tempcoord.x = 554;
     tempcoord.y = 0;
     tempcoord.z = 0;
   }
   else if(placetext.equals("Norton Park")) {
     tempcoord.x = 0;
     tempcoord.y = 200;
     tempcoord.z = 0;
   }
   else if(placetext.equals("Meyer Amphiteatre")) {
     tempcoord.x = 340;
     tempcoord.y = 558;
     tempcoord.z = 0;
   }
   else if(placetext.equals("Dock")) {
     tempcoord.x = 287;
     tempcoord.y = 206;
     tempcoord.z = 0;
   }
   else if(placetext.equals("Hibiscus Street from Quadrille to Sapodilla and Rosemary from Fern to Okeechobee")) {
     tempcoord.x = 425;
     tempcoord.y = 518;
     tempcoord.z = 0;
   }
   else if(placetext.equals("City Place")) {
     tempcoord.x = 0;
     tempcoord.y = 100;
     tempcoord.z = 0;
   }
   else if(placetext.equals("Clematis Dock")) {
     tempcoord.x = 343;
     tempcoord.y = 308;
     tempcoord.z = 0;
   }
   else if(placetext.equals("South Trellis")) {
     tempcoord.x = 277;
     tempcoord.y = 287;
     tempcoord.z = 0;
   }
   else if(placetext.equals("Centennial Square")) {
     tempcoord.x = 364;
     tempcoord.y = 541;
     tempcoord.z = 0;
   }
  }
   return tempcoord;
}
/*
//Procedure to convert the duration string text to an int number to be used later
public int durationtoint(String timeintext) {
  int num = -1;
    if(!timeintext.equals("")) { //checks if the string is empty
      if(timeintext.equals("5 min")){
        num = 5;
      }
      else if(timeintext.equals("10 min")){
        num = 10;
      }
      else if(timeintext.equals("15 min")){
        num = 15;
      }
      else if(timeintext.equals("20 min")){
        num = 20;
      }
      else if(timeintext.equals("25 min")){
        num = 25;
      }
      else if(timeintext.equals("30 min")){
        num = 30;
      }
      else if(timeintext.equals("45 min")){
        num = 45;
      }
      else if(timeintext.equals("1 h")){
        num = 60;
      }
      else if(timeintext.equals("1 h 30 min")){
        num = 90;
      }
      else {
        num = 120;
      }
  }
 return num;
}

//Procedure to convert the hour string text to an int number to be used later, it works only with half hour precision, returns -1 if hour doesn't exist
public int hourtoint(String timeintext) {
  int num = -1;
  String it;
    if(!timeintext.equals("")) { //checks if the string is empty
      
      for(int i=0; i <= 9;i++){ //works from 0 to 9
        it ="0"+ str(i)+":";
        String[] m = match(timeintext, it);
        if(m != null){
          num = i*60;
        }
      }
      for(int i=10; i <= 24;i++){ //works from 10 to 24
        it =str(i)+":";
        String[] m = match(timeintext, it);
        if(m != null){
          num = i*60;
        }
      }
      String[] m = match(timeintext,":30"); //checks if it is an half hour
      if(m != null){
          num = num+30;
        }
    }
 return num;
}

void DigitalHour (int time) {
  int h = time / 60;
  int m = time % 60;
  if(h < 10 && m < 10){
    text("0" + h + ":" + "0" + m, 50,750);
  }
  else if(h<10 && m>9){
     text("0" + h + ":" + m, 50,750);
  }
  else if(m<10){
     text(h + ":0" + m, 50,750);  
  }
  else {
     text(h + ":" + m, 50,750);
  }  
}
*/