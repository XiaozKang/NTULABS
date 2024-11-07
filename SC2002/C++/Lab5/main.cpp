#include <iostream>
#include <string>
#include "animal.h"
#include "childAnimal.h"
using namespace std ;

int main()
{
    const int maxAnimals =5;
    Mammal *zoo[maxAnimals];//maximum 5 animals increase if necessary
    int noOfAnimals=0;
    int choice;
    do{
        if(noOfAnimals>=maxAnimals){
            cout<<"Zoo has no more space"<<endl;
            for(int i=0;i<noOfAnimals;i++){
                        zoo[i]->move();
                        zoo[i]->speak();
                        zoo[i]->eat();
            }
            cout<<"Program terminating ..."<<endl;
            break;
        }
        cout<<"Select the animal to send to Zoo: \n(1)Dog (2)Cat (3)Lion (4)Move all animals (5)Quit"<<endl;
        cin>>choice;
        switch(choice){
            case 1 :zoo[noOfAnimals]=new Dog();
                    noOfAnimals++;
                    break;
            case 2 :zoo[noOfAnimals]=new Cat();
                    noOfAnimals++;
                    break;
            case 3 :zoo[noOfAnimals]=new Lion();
                    noOfAnimals++;
                    break;
            case 4 :for(int i=0;i<noOfAnimals;i++){
                        zoo[i]->move();
                        zoo[i]->speak();
                        zoo[i]->eat();
                    }
                    break;
            case 5 :cout<<"Program terminating ..."<<endl;
                    break;
            default:cout<<"Please enter the input 1 to 5 only "<<endl;
                    break;
        }
    }while(choice!=5);

    for(int j=0;j<maxAnimals;j++){
        delete zoo[j];
    }
    delete []zoo;

    return 0;
}
