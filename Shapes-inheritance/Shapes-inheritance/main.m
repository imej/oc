//
//  main.m
//  Shapes-inheritance
//
//  Created by Richard Cao on 2015-12-13.
//  Copyright © 2015 Richard Cao. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
} ShapeColor;

typedef struct {
    int x, y, width, height;
} ShapeRect;

NSString *colorName(ShapeColor colorName)
{
    switch (colorName) {
        case kRedColor:
            return @"red";
            break;
        case kGreenColor:
            return @"green";
            break;
        case kBlueColor:
            return @"blue";
            break;
        default:
            break;
    }
    return @"no clue";
}

@interface Shape : NSObject
{
    ShapeColor fillColor;
    ShapeRect bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;

- (void) setBounds: (ShapeRect) bounds;

- (void) draw;

@end //Shape

@implementation Shape

- (void) setFillColor: (ShapeColor) c
{
    fillColor = c;
} //setFileColor

- (void) setBounds:(ShapeRect) b
{
    bounds = b;
} //setBounds

- (void) draw
{
    NSLog(@"drawing a shape at (%d %d %d %d) in %@",
          bounds.x, bounds.y,
          bounds.width, bounds.height,
          colorName(fillColor));
} //draw

@end

void drawShapes(__strong id shapes[], int count) // what does __strong mean?
{
    int i;
    
    for (i = 0; i < count; i++) {
        id shape = shapes[i];
        [shape draw];
    }
} // drawShapes

@interface Circle : Shape

@end //Circle

@implementation Circle

- (void) draw
{
    NSLog(@"drawing a circle at (%d %d %d %d) in %@",
          bounds.x, bounds.y,
          bounds.width, bounds.height,
          colorName(fillColor));
} //draw

@end

@interface Rectangle : Shape

@end //Rectangle

@implementation Rectangle

- (void) draw
{
    NSLog(@"drawing a rect at (%d %d %d %d) in %@",
          bounds.x, bounds.y,
          bounds.width, bounds.height,
          colorName(fillColor));
} //draw

@end

@interface Egg : Shape

@end //Egg

@implementation Egg

- (void) draw
{
    NSLog(@"drawing a egg at (%d %d %d %d) in %@",
          bounds.x, bounds.y,
          bounds.width, bounds.height,
          colorName(fillColor));
} //draw

@end

int main(int argc, const char * argv[]) {
    id shapes[3];
    
    ShapeRect rect0 = {0,0,10,30};
    shapes[0] = [Circle new];
    [shapes[0] setBounds:rect0];
    [shapes[0] setFillColor:kRedColor];
    
    ShapeRect rect1 = {30,40,50,60};
    shapes[1] = [Rectangle new];
    [shapes[1] setBounds:rect1];
    [shapes[1] setFillColor:kGreenColor];

    ShapeRect rect2 = {15,19,37,29};
    shapes[2] = [Egg new];
    [shapes[2] setBounds:rect1];
    [shapes[2] setFillColor:kBlueColor];
    

    drawShapes(shapes, 3);
    
    return 0;
}
