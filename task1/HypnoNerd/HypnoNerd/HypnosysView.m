//
//  HypnosysView.m
//  Hypnosister
//
//  Created by Yuriy T on 29.10.15.
//  Copyright © 2015 Yuriy T. All rights reserved.
//

#import "HypnosysView.h"

@implementation HypnosysView

- (void)drawRect:(CGRect)rect {
        CGRect bounds = self.bounds;
        
        CGPoint center;
        center.x = bounds.origin.x + bounds.size.width / 2.0;
        center.y = bounds.origin.y + bounds.size.height / 2.0;
        float radius = (MIN(bounds.size.width, bounds.size.height) / 2.0);
    
        UIBezierPath *path = [[UIBezierPath alloc] init];
        [path addArcWithCenter:center radius:radius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    path.lineWidth =10;
    [path stroke];
}

@end
