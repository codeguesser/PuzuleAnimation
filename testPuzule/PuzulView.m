//
//  PuzulView.m
//  testPuzule
//
//  Created by  on 2012/4/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "PuzulView.h"

@implementation PuzulView
@synthesize toPoint,toDegree;
- (id)initWithFrame:(CGRect)frame image:(UIImage *)_image point:(CGPoint)_point degree:(float)_degree
{
    self = [super initWithFrame:frame];
    if (self) {
        tapCount = 0;
        toPoint = CGPointZero;
        toDegree = 0;
        CALayer *imageLayer = [[CALayer alloc]init];
        [imageLayer setContents:(id)_image.CGImage];
        [imageLayer setBounds:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        [imageLayer setPosition:CGPointMake(frame.size.width/2, frame.size.height/2)];
        CGAffineTransform transform = CGAffineTransformTranslate(self.transform, _point.x, _point.y);
        transform = CGAffineTransformRotate(transform, _degree);
        [self setTransform:transform];
        [self.layer addSublayer:imageLayer];
        
        
        [self addTarget:self action:@selector(play) forControlEvents:UIControlEventTouchUpInside];
        [self setBackgroundColor:[UIColor blueColor]];
    }
    return self;
}

-(void)play{
    if (tapCount==0) {
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationDuration:1];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDidStopSelector:@selector(animateEnd)];
        //The turn must to be upside down ,the coordinate has changed,when it rotate
        CGAffineTransform transform =  CGAffineTransformRotate(self.transform, toDegree);
        transform = CGAffineTransformTranslate(transform, toPoint.x, toPoint.y);
        [self setTransform:transform];
        [UIView commitAnimations];
    }
    
}

-(void)animateEnd{
    tapCount++;
}
@end
