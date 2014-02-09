all: python c c++ java js coffee cs go d pascal perl ruby scala

python: python/matmult.py
	time python python/matmult.py

python3: python3/matmult.py
	time python3 python3/matmult.py

c: c/matmult.c
	gcc -O3 -Wall -static -o matmult c/matmult.c && time ./matmult

c++: cpp/matmult.cpp
	g++ -O3 -Wall -static -o matmult cpp/matmult.cpp && time ./matmult

java: java/matmult.java
	javac java/matmult.java && time java -cp java/. matmult

js: javascript/matmult.js
	time node javascript/matmult.js

coffee: coffeescript/matmult.coffee
	time coffee coffeescript/matmult.coffee

cs: csharp/matmult.cs
	mcs csharp/matmult.cs && time mono csharp/matmult.exe

go: go/matmult.go
	time go run go/matmult.go

d: d/matmult.d
	gdc -o matmult -O3 d/matmult.d && time ./matmult

pascal: pascal/matmult.pas
	fpc -optimize pascal/matmult.pas && time ./matmult

perl: perl/matmult.pl
	time perl perl/matmult.pl

ruby: ruby/matmult.ruby
	time ruby ruby/matmult.ruby

scala: scala/matmult.scala
	time scala scala/matmult.scala

clean:
	rm -rf *.class *.o *.out
