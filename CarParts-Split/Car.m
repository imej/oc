//
//  Car.m
//  CarParts-Split
//
//  Created by Richard Cao on 2015-12-20.
//  Copyright © 2015 Richard Cao. All rights reserved.
//

#import "Engine.h"
#import "Tire.h"
#import "Car.h"

@implementation Car

- (Engine *) engine
{
    return (engine);
} // engine

- (void) setEngine: (Engine *) newEngine
{
    engine = newEngine;
} // setEngine

- (void) setTire:(Tire *)tire atIndex:(int)index
{
    if (index < 0 || index > 3) {
        NSLog(@"bad index (%d) in setTire:atIndex:", index);
        exit (1);
    }
    
    tires[index] = tire;
} // setTire:atIndex:

- (Tire *) tireAtIndex:(int)index
{
    if (index < 0 || index >3) {
        NSLog(@"bad index (%d) in tireAtIndex:", index);
        exit(1);
    }
    
    return (tires[index]);
} // tireAtIndex:

- (void) print
{
    NSLog(@"%@", engine);
    
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
}

@end
