//
//  PuzulView.h
//  testPuzule
//
//  Created by  on 2012/4/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

@protocol MYPuzulProtocol <NSObject>

-(void)animationEnd;

@end




#import <UIKit/UIKit.h>
#import "MYRect.h"
#import <QuartzCore/QuartzCore.h>
@interface PuzulView : UIButton{
    int tapCount;
    CGPoint toPoint;
    float toDegree;
    
}
@property(assign,nonatomic) CGPoint toPoint;
@property(assign,nonatomic) float toDegree;
- (id)initWithFrame:(CGRect)frame image:(UIImage *)_image point:(CGPoint)_point degree:(float)_degree;

-(void)play;
-(void)animateEnd;
@end
