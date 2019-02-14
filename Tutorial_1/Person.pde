// This Person Class Will Represent people in our class

class Person {
  
  String name;
  String year;
  PVector screenLocation;
  
  Person(String _name, String _year) {
    name = _name;
    year = _year;
    screenLocation = new PVector(width/2, height/2);
  }
  
  void randomLocation() {
    screenLocation = new PVector(random(width), random(height));
  }
  
  void drawPerson() {
    noStroke(); // No circle outline
    fill(255);  // White Fill
    ellipse(screenLocation.x, screenLocation.y, 30, 30);
    
    text(name + "\n" + "Year: " + year, screenLocation.x + 30, screenLocation.y + 30);
  }
  
}
