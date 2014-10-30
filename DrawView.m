//
//  DrawView.m
//  TouchLatencyMeter2
//
//  Created by Elena Last on 10/5/14.
//  Copyright (c) 2014 Elena Last. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView

- (void)drawRect:(CGRect)rect {
    
    CGContextRef c = UIGraphicsGetCurrentContext();
    
    CGFloat white[4] = {1.0f, 1.0f, 1.0f, 1.0f}; // RGB color: red, green, blue, alpha - from 0.0 to 1.0
    CGContextSetStrokeColor(c, white);
    CGContextSetLineWidth(c, 1);
    CGContextBeginPath(c);
    float centerX = rect.size.width/2;
    //float centerY = rect.size.height/2;

    CGContextBeginPath(c);
    CGContextMoveToPoint(c, centerX, 5);
    CGContextAddLineToPoint(c, centerX, rect.size.height - 5);
    CGContextStrokePath(c);

}



@end
