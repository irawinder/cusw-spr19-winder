// Step 1: Create / Allocate Memory for your Person
ArrayList<Person> people;

// Runs Once
void setup() {
  size(600, 600);
  
  people = new ArrayList<Person>();
  
  for (int i=0; i<10; i++) { 
    Person p = new Person("Person " + i, str(int(random(1, 5))));
    p.randomLocation();
    people.add(p);
  }
}

// Runs Over and Over at 60 - FPS
void draw() {
  
  background(0); // Black Background
  //background(255); White Background
  
  //fill(255);
  //ellipse(mouseX, mouseY, 50, 10*mouseY/100); 
  
  // Draw Ira
  for (Person p: people) {
    p.update(); // updates location IF selected
    p.drawPerson();
  }
  
}

void mousePressed() {
  
  //background(#FF0000, 100);
  
  for (Person p: people) {
    if(p.checkSelection()) {
      break;
    } // ONLY SELECTS ONE PERSON WHEN MOUSE IS CLICKED
  }
}

void mouseReleased() {
  for (Person p: people) {
    p.locked = false;
  }
}
