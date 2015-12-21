//
//  main.m
//  CarParts-Split
//
//  Created by Richard Cao on 2015-12-19.
//  Copyright © 2015 Richard Cao. All rights reserved.
//

#import "Engine.h"
#import "Tire.h"
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

int main(int argc, const char * argv[]) {
    Car *car;
    
    car = [Car new];
    
    Engine *engine = [Slant6 new];
    [car setEngine:engine];
    
    int i;
    for (i = 0; i < 4; i++) {
        Tire *tire = [AllWeatherRadial new];
        [car setTire: tire atIndex: i];
    }
    
    [car print];

    return 0;
}
