public class Coord {
  float x;
  float y;
  float z;
}

public class Event {
  String name; //origin of the trip
  String date; //destination of the trip
  String place; //duration of the trip in text format
  String attendance; //departure time in text format
  String day;
  int n_date; //duration of the trip in number, minutes
  
  Coord o_place = new Coord();
   
  public Event(String[] pieces) {
    name = pieces[0];
    date = pieces[1];
    place = pieces[2];
    attendance = pieces[3];
    day = pieces[4];
   }
   //Custom method to set and reset the variables
   void set() {
    n_date=int(day);
    o_place = placetocoord(place);
   }
}

Event[] events;
int n_rows;
Table table;
PFont body;
int k = 0;

void setup() {
  background(255);
  size(1200, 1000);
  fill(0);
  stroke(0);
  textSize(12);
  
  table = loadTable("eventsdata.tsv", "header");
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
    String name = events[k].name;
    String date = events[k].date;
    String place = events[k].place;
    String attendance = events[k].attendance;
    int day = events[k].n_date;
    
    println(name);
    println(day);
    fill(0);
    text(name+ " " + date + " " + place + " " + attendance + " " + day, events[k].o_place.x,events[k].o_place.y);
    noFill();
    ellipse(events[k].o_place.x,events[k].o_place.y,float(events[k].attendance)/10,float(events[k].attendance)/10);
    background(255);
    delay(20);
    
    if(k<n_rows-1) {
      k++;
    }
    else {
      delay(2000);
      k=0;
      background(255);
    }
    //delay(20);
  }