//
//  main.m
//  Shapes-Procedural
//
//  Created by Richard Cao on 2015-12-11.
//  Copyright © 2015 Richard Cao. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    kCircle,
    kRectangle,
    kOblateSpheroid
} ShapeType;

typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
} ShapeColor;

typedef struct {
    int x, y, width, height;
} ShapeRect;

typedef struct {
    ShapeType type;
    ShapeColor fillColor;
    ShapeRect bounds;
} Shape;

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

void drawCircle(ShapeRect bounds, ShapeColor fillColor)
{
    NSLog(@"drawing a circle at (%d %d %d %d) in %@",
          bounds.x, bounds.y,
          bounds.width, bounds.height,
          colorName(fillColor));
} //drawCircle

void drawRectangle(ShapeRect bounds, ShapeColor fillColor)
{
    NSLog(@"drawing a rectangle at (%d %d %d %d) in %@",
          bounds.x, bounds.y,
          bounds.width, bounds.height,
          colorName(fillColor));
} //drawRectangle

void drawEgg(ShapeRect bounds, ShapeColor fillColor)
{
    NSLog(@"drawing a egg at (%d %d %d %d) in %@",
          bounds.x, bounds.y,
          bounds.width, bounds.height,
          colorName(fillColor));
} //drawEgg

void drawShapes (Shape shapes[], int count)
{
    int i;
    
    for (i = 0; i < count; i++) {
        switch (shapes[i].type) {
            case kCircle:
                drawCircle(shapes[i].bounds,
                           shapes[i].fillColor);
                break;
            case kRectangle:
                drawRectangle(shapes[i].bounds,
                              shapes[i].fillColor);
                break;
            case kOblateSpheroid:
                drawEgg(shapes[i].bounds,
                        shapes[i].fillColor);
                break;
        }
    }
} //drawShapes

int main(int argc, const char * argv[])
{
    Shape shapes[3];
    
    ShapeRect rect0 = {0, 0, 10, 30};
    shapes[0].type = kCircle;
    shapes[0].fillColor = kRedColor;
    shapes[0].bounds = rect0;
    
    ShapeRect rect1 = {30, 40, 50, 60};
    shapes[1].type = kRectangle;
    shapes[1].fillColor = kGreenColor;
    shapes[1].bounds = rect1;
    
    ShapeRect rect2 = {15, 18, 37, 29};
    shapes[2].type = kOblateSpheroid;
    shapes[2].fillColor = kBlueColor;
    shapes[2].bounds = rect2;
    
    drawShapes(shapes, 3);
    
    return 0;
} //main
