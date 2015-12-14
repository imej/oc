//
//  main.m
//  Shape-Object
//
//  Created by Richard Cao on 2015-12-12.
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



@interface Circle : NSObject
{
    ShapeColor fillColor;
    ShapeRect bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;

- (void) setBounds: (ShapeRect) bounds;

- (void) draw;

@end //Circle

@implementation Circle

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
    NSLog(@"drawing a circle at (%d %d %d %d) in %@",
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

int main(int argc, const char * argv[])
{
    id shapes[0];
    
    ShapeRect rect0 = {0, 0, 10, 30};
    shapes[0] = [Circle new];
    [shapes[0] setBounds: rect0];
    [shapes[0] setFillColor: kRedColor];
    
    drawShapes(shapes, 1);
    
    return 0;
}
