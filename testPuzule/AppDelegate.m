//
//  AppDelegate.m
//  testPuzule
//
//  Created by  on 2012/4/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "MYRect.h"
#import "PuzulView.h"
static CGFloat DegreesToRadians(CGFloat degrees)  {return degrees * M_PI / 180;};
@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];

    
    
    
    
    CGPoint pointWillChangeLeft = CGPointMake(-150, -200);   //这里写你想要偏移的位置
    float degreewillChangeLeft = 3.14/7;                    //这里写你想要偏移的角度
    
    UIImage *partImageLeft = [UIImage imageNamed:@"Beans pt1.png"] ;
    CGRect imageRectLeft = CGRectZero;
    imageRectLeft.size = partImageLeft.size;
    
    
    //前面的200和200则是默认，动画转换后的坐标，当然这里的角度也可以换，为了方便起见，默认就是0
    PuzulView *puzulLeft = [[PuzulView alloc]initWithFrame:imageRectLeft image:partImageLeft point:CGPointMake(200+pointWillChangeLeft.x, 200+pointWillChangeLeft.y) degree:degreewillChangeLeft];
    [puzulLeft setToPoint:CGPointMake(-pointWillChangeLeft.x, -pointWillChangeLeft.y)];
    [puzulLeft setToDegree:-degreewillChangeLeft];
    [self.window addSubview:puzulLeft];
    [puzulLeft release];
    
    
    
    
    
    CGPoint pointWillChangeRight = CGPointMake(150, 200);    
    float degreewillChangeRight = -3.14/7;
    
    UIImage *partImageRight = [UIImage imageNamed:@"Beans pt2.png"] ;
    CGRect imageRectRight = CGRectZero;
    imageRectRight.size = partImageRight.size;
    
    PuzulView *puzulRight = [[PuzulView alloc]initWithFrame:imageRectRight image:partImageRight point:CGPointMake(339+pointWillChangeRight.x, 200+pointWillChangeRight.y) degree:degreewillChangeRight];
    [puzulRight setToPoint:CGPointMake(-pointWillChangeRight.x,-pointWillChangeRight.y )];
    [puzulRight setToDegree:-degreewillChangeRight];
    [self.window addSubview:puzulRight];
    [puzulRight release];
    
    
    
    
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
