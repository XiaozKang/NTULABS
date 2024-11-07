#include "animal.h"
#include "string"
#include <iostream>
using namespace std ;

Animal::Animal():_name ="cute"{
    cout << "constructing Animal object " <<_name<< endl;
}
Animal::Animal(string name):_name(name){
    cout << "constructing Animal object " <<_name<< endl;
}


Animal::~Animal() {
    cout << "destructing Animal object " << _name << endl;
}

void Animal::speak() const {
    cout << "Animal speaks " << endl;
}

void Animal::move() const {
    cout << "Animal moves " <<endl;
}

void Animal::eat() const {
    cout << "Animal eats " <<endl;
}


Mammal::Mammal():Animal(){}
Mammal::Mammal(string name):Animal(name){}
Mammal::~Mammal() {
    cout << "destructing Mammal object " << endl;
}
void Mammal::speak() const {
    cout << "Mammal speaks" << endl;
}

void Mammal::move() const {
    cout << "Mammal move" <<endl;
}

void Mammal::eat() const {
    cout << "Mammal eat" <<endl;
}
