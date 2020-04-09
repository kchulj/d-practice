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

/*
w : open for writing / create file
a : open for appending / create file
r : open for reading
r+ : open for reading and writing
w+ : reading and writing, 0 file, or create
a+ : reading and append writing
*/

void main(){
    File file = File("testFile.txt", "w");
    file.writeln("This is a test");
    file.writeln("This is another test");
    file.close();

    File file2 = File("testFile.txt", "r");
    while(!file2.eof()){
        writeln(chomp(file2.readln)); // chomp gets rid of newlines
    }
    file2.close();
}