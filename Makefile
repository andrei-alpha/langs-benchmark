all: python c c++ java js coffee cs go

python: matmult.py
	time python matmult.py

c: matmult.c
	gcc -o matmult matmult.c && time ./matmult

c++: matmult.cpp
	g++ -o matmult matmult.cpp && time ./matmult

java: matmult.java
	javac matmult.java && time java -cp . matmult

js: matmult.js
	time node matmult.js

coffee: matmult.coffee
	time coffee matmult.coffee

cs: matmult.cs
	mcs matmult.cs && time mono matmult.exe

go: matmult.go
	time go run matmult.go
