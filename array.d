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
    int[10] a1;
    int[] a2 = [1,2,3,4,5];
    a2[0] = 0;
    writeln(a2);
    writeln("Index 0: ", a2[0]);

    int[] a3;
    a3 ~= 1; // append 1 to a3
    a3 ~= 2;
    a3 ~= 3;

    a3 = a3.remove(1); // remove 2nd index a3[1]
    writeln(a3);

    a3 = a2 ~ a3; // combine a2 and a3
    a3 = a3.remove!(x => (x % 2) == 0); // remove even numbers 
    writeln(a3);

    writeln(sort(a3));
    writeln(reverse(a3));
    writeln(a3.replace(3,2)); // replace all 3s with 2s

    a3 = a2 ~ a3;
    writeln(a3[0 .. 3]);

    auto a4 = a3.dup;

    a4[] *= 2; // mult every value by 2
    writeln(a4);

    string[][] a5 = [["12"],["34"],["56"],["78"]]; // mult-dim array
    writeln(a5);
}