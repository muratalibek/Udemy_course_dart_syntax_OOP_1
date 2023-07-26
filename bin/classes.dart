import 'package:classes/classes.dart' as classes;

class Microphone{
  //Instance variables, member variables
  String name = "";
  String color = "";
  int model = 0;

  // Add methods to the class
  bool isOn() => true;
  int modelNumber() => model;

 void turnOn(){
   print("$name is turn on!");
   print("");
 }
 
 void turnOff(){
   print("$name is turn off!");
   print("");
 }
 
 void setVolume(){
   print("$name with color: $color volume is up!");
   print("");
 }
 /*
  Introduction to constructors.
  Constructors require for add value to object.
  this = mean this object/class
 */

  Microphone(this.name, this.color, this.model);

  /*
  Microphone(String name, String color, int model){
    this.name = name;
    this.color = color;
    this.model = model;
  }
  */
  // Named constructor
  Microphone.initialize(){   // Constructor initialization
    name = "Blue Yeti second edition";
    model = 67;
  }
  // Getter and Setter

  String get getName => name;
  set setName(String value) => name = value;
}
void main(List<String> arguments) {

  var mic = Microphone("Blue Yeti Constructor", "Silver Gray", 1234);// we are crating the actual object of type mic

  var micSecond = Microphone.initialize();
  //mic.name = "Blue Yeti";
  mic.color = "Silver Gray";
  mic.model = 1234;

  print(micSecond.name);
  print(micSecond.model);
  print("");

  print(mic.name);
  print(mic.color);
  print(mic.model);
  print("");

  mic.turnOn();
  mic.setVolume();
  mic.turnOff();

  print(mic.isOn());
  print((mic.modelNumber()));

  mic.setName = "New name";
  print(mic.getName);
}
