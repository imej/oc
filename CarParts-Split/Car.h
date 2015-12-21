///Users/richard/sandbox/oc/CarParts-Split/Car.h
//  Car.h
//  CarParts-Split
//
//  Created by Richard Cao on 2015-12-20.
//  Copyright © 2015 Richard Cao. All rights reserved.
//

#ifndef Car_h
#define Car_h
#import <Cocoa/Cocoa.h>
//#import "Tire.h"
//#import "Engine.h"

@class Tire;
@class Engine;

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

#endif /* Car_h */
