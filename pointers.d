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
    int val = 23;
    int* pVal = &val;

    writeln("Address of ", val, ": ", pVal);
    writeln("Value: ", *pVal);

    void changePtrVal(int* pVal){
        *pVal = 22;
    }

    changePtrVal(&val);
    writeln("Address of ", val, ": ", pVal);
    writeln("Value: ", *pVal);
}