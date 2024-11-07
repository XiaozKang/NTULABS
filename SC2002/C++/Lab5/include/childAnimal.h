#ifndef CHILDANIMAL_H
#define CHILDANIMAL_H

#include "animal.h"

class Dog : public Mammal {
public:
    Dog();
    Dog(string);
    ~Dog() override;
    void speak() const ;
    void move() const ;
    void eat() const ;

private:
    std::string _owner;
};

class Cat : public Mammal {
public:
    Cat();
    ~Cat() override;
    void speak() const ;
    void move() const ;
    void eat() const ;

private:
    std::string _owner;
};

class Lion : public Mammal {
public:
    Lion();
    ~Lion() override;
    void speak() const ;
    void move() const ;
    void eat() const ;

private:
    std::string _owner;
};

#endif // CHILDANIMAL_H
