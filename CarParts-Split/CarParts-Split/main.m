//
//  main.m
//  CarParts-Split
//
//  Created by Richard Cao on 2015-12-19.
//  Copyright © 2015 Richard Cao. All rights reserved.
//

#import "Car.h"

int main(int argc, const char * argv[]) {
    Car *car;
    
    car = [Car new];
    
    Engine *engine = [Engine new];
    [car setEngine:engine];
    
    int i;
    for (i = 0; i < 4; i++) {
        Tire *tire = [Tire new];
        [car setTire: tire atIndex: i];
    }
    
    [car print];

    return 0;
}
