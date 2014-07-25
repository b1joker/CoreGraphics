//
//  Square.m
//  TMCoreGraphics
//
//  Created by Gin on 7/23/14.
//  Copyright (c) 2014 TechMaster. All rights reserved.
//

#import "Square.h"

@implementation Square


- (void)drawRect:(CGRect)rect
{
    //CGAffineTransform transform =
   // CGAffineTransformMakeRotation((45.0f * M_PI) / 180.0f);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGColorRef white = [UIColor whiteColor].CGColor;
    CGColorRef gray = [UIColor grayColor].CGColor;
    CGColorRef green = [UIColor greenColor].CGColor;

    CGContextSetFillColorWithColor(context, white); // tạo màu lấp đầy hình
    CGContextFillRect(context, rect); // vẽ nền trắng
    
    CGContextBeginPath(context);  // khởi tạo đường vẽ
    CGContextMoveToPoint(context, 215, 165); // điểm bắt đầu
    CGContextAddLineToPoint(context, 280, 230); // điểm tiếp, vẽ tiếp thì thêm…
    CGContextAddLineToPoint(context, 215, 295); // điểm tiếp, vẽ tiếp thì thêm…
    CGContextAddLineToPoint(context, 150, 230); // điểm tiếp, vẽ tiếp thì thêm…
    CGContextAddLineToPoint(context, 215, 165); // điểm tiếp, vẽ tiếp thì thêm…
    CGContextClosePath(context); // hoàn thành đoạn vẽ
    CGContextSetFillColorWithColor(context, gray); // quẩy màu như bt :))
    CGContextDrawPath(context, kCGPathFill);  // tô màu (cho lên hình trong view)*/
    
    CGContextBeginPath(context);  // khởi tạo đường vẽ

    int x = 40; int y = 230;
    int x1 = 40; int y1 = 165;
    BOOL up = NO;
    
    for(int i=1;i<=8;i++)
    {
        CGContextMoveToPoint(context, x, y); // điểm bắt đầu

        x+=10;
        
        if(up == NO)// down
            y-=65;
        
        else
            y+=65;
        
        if(y==165)
            up = YES;
        if(y==295)
            up = NO;
        CGContextAddQuadCurveToPoint(context,x1,y1,x,y);
        CGContextSetStrokeColorWithColor(context, green);
        CGContextSetLineWidth(context, 5); // tạo độ rộng viền
        CGContextStrokePath(context);
        CGContextClosePath(context); // hoàn thành đoạn vẽ

        
        if(i%2 ==1)
            x1+=20;
        else
        {
            if(y1 == 165)
                y1 = 295;
            else
                y1 = 165;
        }
    }

    

}

@end
