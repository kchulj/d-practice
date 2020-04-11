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

void getSumTem(T)(T x, T y){
    writeln(x, " + ", y, " = ", x + y);
}

template tempTest(T){
    struct Shape{
        T height;
        T width;
    }
    T getArea(Shape shape){
        return shape.height * shape.width;
    }
}

mixin template MakeType(T, T x){
    T var1 = x;
}

mixin template getSum(T){
    T add(T x, T y){
        return x + y;
    }
}

void main() {
    getSumTem(4,5);
    getSumTem(3.3,5.5);
    writeln();

    auto shape = tempTest!int.Shape(4,5);
    writeln("Area: ", tempTest!int.getArea(shape));
    writeln();

    mixin MakeType!(int, 10); // creates variable at runtime

    mixin getSum!(double);
    writeln("1.2 + 2.3 = ", add(1.2,2.3));
}