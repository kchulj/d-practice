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
    int i = 0;
    writeln("increment after print: ", i++); // 0
    writeln("increment before print: ", ++i); // 2

    // math library
    writeln("abs(-1) = ", abs(-1));
    writeln("ceil(2.34) = ", ceil(2.34));
    writeln("floor(2.34) = ", floor(2.34));
    writeln("round(2.34) = ", round(2.34));
    writeln("exp(1) = ", exp(1.0)); // e^x
    writeln("log(1) = ", log(1));
    writeln("log10(1) = ", log10(1));
    writeln("pow(2,2) = ", pow(5,5)); // 5^5
    writeln("sqrt(4.0) = ", sqrt(4.0));
    writeln("cbrt(9.0) = ", cbrt(9.0));
    writeln("hypot(5,5) = ", hypot(5,5)); // get hypotenuse
    writeln("Pi = ", PI);

    writeln("sin(1.0) = ", sin(1.0));
    writeln("cos(1.0) = ", cos(1.0));
    writeln("tan(1.0) = ", tan(1.0));
    writeln("asin(1.0) = ", asin(1.0)); // arc func
    writeln("acos(1.0) = ", acos(1.0));
    writeln("atan(1.0) = ", atan(1.0));
    writeln("sinh(1.0) = ", sinh(1.0)); // hyperbolic func
    writeln("cosh(1.0) = ", cosh(1.0));
    writeln("tanh(1.0) = ", tanh(1.0));

    auto nowTime = Clock.currTime(UTC());
    writeln();
    writeln("Today's date is: ", nowTime.year, 
    "-", nowTime.month, "-", nowTime.day);

    int seed = nowTime.second;
    auto rand = Random(seed);
    writeln("Rand: ", uniform(5,20)); // generate rand num
}