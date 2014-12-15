//
//  deallocUILable.m
//  createUIButtonByCode
//
//  Created by Mac on 14/11/20.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

#import "deallocUILable.h"

@implementation UILabel (deallocUILable)
- (void)dealloc
{
    [super dealloc];
    NSLog(@" UILable 被释放了 ");
}
@end
