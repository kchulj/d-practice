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

void helloString(){
    string s1 = "Hello";
    writeln(s1); // s1[0]
    writeln(typeof(s1).stringof);
    s1 = "World";
    writeln(s1.length);

    string s2 = s1 ~ "Friend"; // combine strings
    writeln("W: ", indexOf(s2, 'W', No.caseSensitive)); // or lastIndexOf
    
    string s3 = "1 2 3";
    auto numArr = to!(int[])(split(s3)); //convert to int arr
    writeln(numArr);
    
    string s4 = "1 2 3";
    writeln(s3 == s4);
    writeln(toUpper(s2));
    writeln(toLower(s2));

    writeln(isNumeric("10"));
}

void associativeArray(){ // key value pairs
    double[string] favNums =  
    ["Pi" : 3.14,
    "Euler" : 2.7182];

    favNums["num"] = 123.456;

    writeln(favNums);
    writeln(favNums.length);
    writeln(favNums.keys);
    writeln(favNums.values);

    if("num" in favNums){
        favNums.remove("num");
    }

    writeln(favNums);
}

void userInput(){
    char[] userArray;
    write("What's your name? ");
    readln(userArray);
    writeln("Hello, ", strip(userArray)); // strip off white space/new line
}

void fullName(){
    write("What's your first and last name?  ");
    string fName = strip(readln());
    string firstName, lastName;
    formattedRead(fName, "%s %s", firstName, lastName);
    writeln("Hello ", firstName, " ", lastName);
}

void main(){
    // associativeArray();
    fullName();
}