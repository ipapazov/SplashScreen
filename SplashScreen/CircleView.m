//
//  CircleView.m
//  SplashScreen
//
//  Created by Hristo Papazov on 10/17/11.
//  Copyright (c) 2011 University of Chicago. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
 - (id)initWithFrame:(CGRect)frame
 {
 self = [super initWithFrame:frame];
 if (self) {
 // Initialization code
 }
 return self;
 }
 */


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetRGBStrokeColor(ctx, 0,0,255,1);
    CGContextSetLineWidth(ctx,10);
    CGContextStrokeEllipseInRect(ctx, CGRectMake(10, 10, 150, 150));
}


@end
