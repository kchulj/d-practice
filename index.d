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

void helloWorld() {
    string name;
    write("What's your name? ");
    readf("%s\n", &name);
    writeln("Hello, ", name);
}

void typeCast() {
    int cInt = 15;
    short cShort = cast(short) cInt;
    short cShort2 = cast(short) 34567; // value too large for short
    writeln("short cast: ", cShort2); // will not work

    auto sInt = to!string(10);
    writeln("Type: ", typeof(sInt).stringof);

    auto iStr = to!int("10");
    writeln("Type: ", typeof(iStr).stringof);
}

void main() {
    helloWorld();

    int a1_B = 10;
    auto bool1 = true;
    writeln("Bool : ", bool1);

    writeln("bool min: ", bool.min);
    writeln("bool max: ", bool.max);

    bool happy = true;
    writefln("Bool: %s", happy) // formatted output

    writeln("char min: ", char.min);
    writeln("char max: ", char.max);
    char a = 'A';
    writefln("Char: %c", a);

    writeln("byte min: ", byte.min);
    writeln("byte max: ", byte.max);
    writeln("short min: ", short.min);
    writeln("short max: ", short.max);
    writeln("int min: ", int.min);
    writeln("int max: ", int.max);
    writeln("long min: ", long.min);
    writeln("long max: ", long.max);
    long lNum = 123_456_789;
    writeln("lNum: %15d", lNum);

    writeln("float max: ", float.max);
    writeln("double max: ", double.max);
    writeln("real max: ", real.max);

    writeln("default int: ", int.init);
}