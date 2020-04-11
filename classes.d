import std.stdio;
import std.conv;
import std.math;
import std.random;
import std.datetime;
import std.algorithm;
import std.array;
import std.string;
import std.format;
import std.typecons : No;
import std.typecons;
import std.range : chain;
import std.file;
import core.thread;
import std.parallelism;
import std.concurrency;
import std.range;

class Animal {
    string name;
    double height;
    double weight;
    string sound;

    static int numAnimals;

    this(string name, double height, double weight, string sound){
        this.name = name;
        this.height = height;
        this.weight = weight;
        this.sound = sound;
        numAnimals++;
    }

    void makeSound(){
    writeln(this.name, " says ", this.sound);
    }

    void getInfo(){
    writefln("%s is %.2f inches %.2f lbs and says %s", 
    this.name, this.height, this.weight, this.sound);
    }

    static void getNumAnimals(){
    writeln("There are ", numAnimals, " animals.");
    }
}

class Dog : Animal { // Dog inherits Animal properties
    string owner;

    this(string name, double height, double weight, string sound, string owner){
        super(name, height, weight, sound); // process everything already haha
        this.owner = owner;
    }

    override void getInfo(){
        super.getInfo();
        writefln("%s's owner is %s",
        this.name, this.owner);
    }
}

interface Vehicle { // create when add functionalites to a class
    void move();
    void stop();
} 

class Car : Vehicle { // inheritance
    void move(){};
    void stop(){};
}

class Plane { // abstract class can define func that must be implemented// 
              //can also define  unlike interfaces
    abstract void fly(){
        writeln("Flying.");
    }
    abstract void crash();
}

void main(){
    Animal john = new Animal("John", 45, 100, "Woof");
    john.getInfo();

    Dog jack = new Dog("Jack", 20, 75, "Hallo", "Rob");
    jack.getInfo();

    john.getNumAnimals();
    jack.getNumAnimals();
}