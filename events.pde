//COORDINATES CLASS
public class Coord {
  float x;
  float y;
  float z;
}

//EVENT CLASS
public class Event {
  String name; //name of the event
  String date; //date in strin format
  String place; //venue
  String attendance; //people that attented to the event
  String day; //days since the beginning of the year
  int n_date; //days since the beginning of the year in int format
  
  Coord o_place = new Coord();
   
  public Event(String[] pieces) {
    name = pieces[0];
    date = pieces[1];
    place = pieces[2];
    attendance = pieces[3];
    day = pieces[4];
   }
   //Custom method to transform variables
   void set() {
    n_date=int(day);
    o_place = placetocoord(place);
   }
}

//LOG10 FUNCTION
float log10 (float x) {
  return (log(x) / log(10));
}

//TIMEBAR DRAWING FUNCTION
void timebar (int d) {
  int yeardays = 365;
  int bar_he = 20;
  float bar_le = (width - 80);
  float day_le= bar_le / yeardays;
  float xref = 40;
  float yref = 20;
  if (d==0) {
    stroke(0);
    noFill();
    rect(xref,yref,bar_le,bar_he);
    fill(#2bbdc4);
    text("JAN", xref,yref+40);
    text("FEB", xref+day_le*31,yref+40);
    text("MAR", xref+day_le*61,yref+40);
    text("APR", xref+day_le*92,yref+40);
    text("MAY", xref+day_le*122,yref+40);
    text("JUN", xref+day_le*153,yref+40);
    text("JUL", xref+day_le*183,yref+40);
    text("AGO", xref+day_le*214,yref+40);
    text("SEP", xref+day_le*245,yref+40);
    text("OCT", xref+day_le*275,yref+40);
    text("NOV", xref+day_le*306,yref+40);
    text("DEC", xref+day_le*336,yref+40);
    
  } else {
    fill(#2bbdc4);
      rect(xref,yref,day_le*d, bar_he);
      fill(255);
      //text(d, day_le*d-30, 38);
  }
}