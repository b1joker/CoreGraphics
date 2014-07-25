//
//  ChessBoard.m
//  TMCoreGraphics
//
//  Created by Gin on 7/23/14.
//  Copyright (c) 2014 TechMaster. All rights reserved.
//

#import "ChessBoard.h"

@implementation ChessBoard

- (void)drawRect:(CGRect)rect
{
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGColorRef white = [UIColor whiteColor].CGColor;
    CGColorRef black = [UIColor blackColor].CGColor;
    
    CGContextSetFillColorWithColor(context, white); // tạo màu lấp đầy hình
    CGContextFillRect(context, rect); // vẽ nền trắng
    
    CGRect view = CGRectMake(40, 120, 240, 240); // tạo hình
    CGContextAddRect(context, view); // thêm vào trong view
    CGContextSetLineWidth(context, 3); // tạo độ rộng viền
    CGContextDrawPath(context, kCGPathStroke); // vẽ viền
    
    int x = 40;
    int y= 120;
    
    for(int i=1;i<=8;i++)
    {
        for(int j=1;j<=8;j++)
        {
            if((i+j) % 2 == 0)
            {
                CGRect square = CGRectMake(x, y, 30, 30); // tạo hình
                CGContextAddRect(context, square); // thêm vào trong view
                CGContextSetFillColorWithColor(context, white); // tạo màu lấp đầy hình
            }
            else
            {
                CGRect square = CGRectMake(x, y, 30, 30); // tạo hình
                CGContextAddRect(context, square); // thêm vào trong view
                CGContextSetFillColorWithColor(context, black); // tạo màu lấp đầy hình
                
            }
            CGContextDrawPath(context, kCGPathFill);  // tô màu (cho lên hình trong view)
            
            x+=30;
        }
        x = 40;
        y+=30;
    }
    
    
    
    
}


@end
