//
//  main.m
//  CarParts-2
//
//  Created by Richard Cao on 2015-12-19.
//  Copyright © 2015 Richard Cao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tire : NSObject
@end // Tire
@implementation Tire
- (NSString *) description
{
    return (@"I am a tire. I last a while");
} // description
@end // Tire

@interface AllWeatherRadial : Tire
@end // AllWeatherRadial

@implementation AllWeatherRadial

- (NSString *) description
{
    return (@"I am a tire for rain or shine.");
} // description

@end // AllWeatherRadial

@interface Engine : NSObject

@end

@implementation Engine

- (NSString *) description
{
    return (@"I am an engine. Vroom!");
}

@end

@interface Slant6 : Engine
@end // Slant6

@implementation Slant6

- (NSString *) description
{
    return (@"I am a slant-6. VROOOM!");
} // description

@end // Slant6

@interface  Car : NSObject
{
    Engine *engine;
    Tire *tires[4];
}

- (Engine *) engine;

- (void) setEngine: (Engine *) newEngine;

- (Tire *) tireAtIndex: (int) index;

- (void) setTire: (Tire *) tire
         atIndex: (int) index;

- (void) print;

@end

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
