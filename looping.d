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

void forEachLoop(){ // cycle thru arrays
    int[] a6 = [1,2,3,4,5];
    
    foreach(x; a6){  // cycle thru a6
    writeln(x);
    }
    
    foreach(x; 5..10){
        writeln(x);
    }

    double[string] aA = 
    ["A" : 1, "B" : 2];

    foreach(k, v; aA){
        writeln(k, " ", v);
    }
    foreach(x; aA.byKeyValue){
        writefln("%s : %s", x.key, x.value);
    }

    int[] myFE = [1,2,3,4];
    foreach(ref x; myFE){ // working with copies. need to ref/
        x *= 2;
    }
    writeln(myFE);

    int myWhile = 0;
    while (myWhile < 20){
        if(myWhile % 2 == 0){
            writeln(myWhile);
            myWhile++;
            continue;
        }
        if(myWhile >= 10){
            break;
        }
        myWhile++;
    }
}

void main(){
    writeln("Hi there!");
    forEachLoop();
}