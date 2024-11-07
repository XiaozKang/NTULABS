#ifndef ANIMAL_H
#define ANIMAL_H

#include <iostream>
#include <string>
using namespace std;


class Animal {
public:
    Animal();
    Animal(string);
    virtual ~Animal();
    virtual void speak() const=0;
    virtual void move() const=0;
    virtual void eat() const=0;

private:
    string _name;

};

class Mammal : public Animal {
public:
    Mammal();
    Mammal(string);
    ~Mammal() override;
    void speak() const;
    void move() const;
    void eat() const;
};

#endif // ANIMAL_H
