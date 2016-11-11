public class Coord {
  float x;
  float y;
  float z;
}

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

float log10 (float x) {
  return (log(x) / log(10));
}

Event[] events;
int n_rows;
Table table;
PFont body;
//int k = 0;
PImage img;
int daycheck = 0;

void setup() {
  hint(ENABLE_STROKE_PURE);
  size(1654, 1169); //image size
  fill(0);
  stroke(0);
  textSize(18);
  img = loadImage("baselqcol.jpg"); //load image
  image(img, 0, 0);
  
  table = loadTable("eventsdata.csv", "header");
  n_rows = table.getRowCount();
  events = new Event[n_rows];
  String[] pieces;
  pieces = new String[5];
  for(int j=0; j < n_rows; j++) {
    for(int i=0; i < 5; i++) {
      pieces[i] = table.getString(j,i);
    }
    events[j] =  new Event(pieces);
    events[j].set();
  }
}

void draw() {
    stroke(0);
    fill(255);
    rect(50,50,30,30);
    fill(0);
    text(daycheck, 55,70);
    for(int k = 0; k<n_rows; k++) {
        
      String name = events[k].name;
      String date = events[k].date;
      String place = events[k].place;
      float attendance = float(events[k].attendance);
      int day = events[k].n_date;
      println(name);
      println(place);
      println(events[k].o_place.x);
      println(events[k].o_place.y);
      
      if(Float.isNaN(attendance)) { //changes stroke color if attendance is just an estimation
        attendance = 100;
        stroke(#2bbdc4);
      }
      
      println("attendance: "+ attendance);
      fill(255);
      
      //text(name, events[k].o_place.x+attendance/8+5,events[k].o_place.y+10);
      //text(date, events[k].o_place.x+attendance/8+5,events[k].o_place.y+30);
      //text("Estimated attendance "+attendance, events[k].o_place.x+attendance/8+5,events[k].o_place.y+50);
      if(day == daycheck) {
        fill(255,30);
        ellipse(events[k].o_place.x,events[k].o_place.y,log10(attendance)*30,log10(attendance)*30);
        stroke(0);
        line(events[k].o_place.x-5,events[k].o_place.y,events[k].o_place.x+5,events[k].o_place.y);
        line(events[k].o_place.x,events[k].o_place.y-5,events[k].o_place.x,events[k].o_place.y+5);
        }
      }
      delay(50);
      if(daycheck <366) {
        daycheck++;
      } else {
        delay(2000);
        daycheck=0;
        image(img,0,0);
      }
  }