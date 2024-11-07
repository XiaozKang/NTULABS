#include "childAnimal.h"
using namespace std ;
Dog::Dog() : Mammal() {
    // ...
}
Dog::Dog(string name) : Mammal("TOM") {
    // ...
}

Dog::~Dog() {
    cout << "destructing Dog object " <<endl;
}

void Dog::speak() const {
    cout << "Dog Woof" << endl;
}

void Dog::move() const {
    cout << "Dog move" << endl;
}

void Dog::eat() const {
    cout << "Dog eat" << endl;
}

Cat::Cat() : Mammal() {
    // ...
}

Cat::~Cat() {
    cout<< "deconstruction Cat object" << endl;
}

void Cat::speak() const {
    cout << "Cat meow" << endl;
}

void Cat::move() const {
    cout << "Cat move" << endl;
}

void Cat::eat() const {
    cout << "Cat eats" << endl;
}

Lion::Lion() : Mammal() {
    // ...
}

Lion::~Lion() {
    cout << "deconstruction Lion object" << endl;
}

void Lion::speak() const {
    cout << "Lion roar" << endl;
}

void Lion::move() const {
    cout << "Lion move" <<endl;
}

void Lion::eat() const {
    cout << "Lion eats" <<endl;
}
