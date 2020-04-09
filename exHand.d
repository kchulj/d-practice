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

void main(){
    try {
        int zero = 0;
        // assert(zero != 0, "Can't be zero") // exception
        if (zero == 0){
            throw new Exception("Can't devide by zero"); // exception
        }
        else {
            int goodInt = 10 / zero;
        }
    }
    catch(Exception e){
        writeln(e.msg);
    }
    finally{
        writeln("Cleaning up");
    }
}