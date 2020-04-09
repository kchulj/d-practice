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

int getSum(A...)(A args){
    int sum = 0;
    foreach(x; args){
        sum += x;
    }
    return sum; 
}

int fact(int n){
    if (n == 1){
        return 1;
    }
    else {
        int result = n * fact(n-1);
        return result;
    }
}

void randFunc(in int x, const int y){} //  argument can't have value that change

void randFunc2(out int f2){ // return values to parameter
    f2 = 100;
}
// int f2 = 5;
// randFunc2(f2); returns 100

    // auto anonFunc = (int a) => a * 2;
    // writeln(anonFunc(3));

void main(){
    /*int num;
    write("Enter a number: ");
    readf("%d", &num);
    writeln("Factorial of ", num, " = ", fact(num));
    writeln();
    */
    auto anonFunc = (int a) => a * 2;
    // writeln(anonFunc(3));
    
    int[] arr = [1,2,3,4,5];
    writeln(arr);
    auto anonFunc0 = map!(a => a * 2)(arr);
    writeln(anonFunc0);
    writeln();
    
    int[] arr2 = [6,7,8];
    auto anonChain = map!(a => a * 2)(chain(arr,arr2));
    writeln(anonChain);
    writeln();

    auto anonFilter = arr.filter!(a => (a % 2) == 0);
    writeln(anonFilter);
    writeln();

    auto anonReduce = reduce!((a,b) => a + b)(0, arr);
    // perform same operation on values repeatedly inside arr
    // start with 0 and add arr
    writeln(anonReduce); // sum of array
    writeln();

    auto anonMax = reduce!(max)(anonChain);
    writeln(anonMax);

    // generate random range of rand vals

    auto now2 = Clock.currTime(UTC());
    auto seed2 = now2.second;
    auto rand2 = Random(seed2);
    auto randVals = generate!(() => uniform(1,1000,rand2))().take(10);
    foreach(x; randVals){
        writeln(x);
    }
}