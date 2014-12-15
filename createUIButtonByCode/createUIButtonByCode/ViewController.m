//
//  ViewController.m
//  createUIButtonByCode
//
//  Created by Mac on 14/11/20.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

#import "ViewController.h"
#import "deallocUILable.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _flagOFLable=YES;
    
    _showImage=[[UIButton alloc] init];
    //这下面的这句和上面的这句的结果是一样的，表明默认生成的时UIButtonTypeCustom
    //_showImage =[UIButton buttonWithType:UIButtonTypeCustom];
    _showImage.frame=CGRectMake(100, 80, 100, 100);
    
    
    
    UIImage *normalImage=[UIImage imageNamed:@"btn_01.png"];
    [_showImage setBackgroundImage:normalImage forState:UIControlStateNormal];
    [_showImage setTitle:@"点我" forState:UIControlStateNormal];
    [_showImage setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    UIImage *highlightImage=[UIImage imageNamed:@"btn_02.png"];
    [_showImage setBackgroundImage:highlightImage forState:UIControlStateHighlighted];
    [_showImage setTitle:@"点毛啊" forState:UIControlStateHighlighted];
    [_showImage setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    [_showImage addTarget:self action:@selector(clickImage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_showImage];
    
    _showText=[[UILabel alloc] init];
    _showText.frame = CGRectMake( 0, 0, 100, 50);
    [_showText setText:@"abcdefghijflajfljaf"];
    [_showText setTextColor:[UIColor blackColor]];
    _showText.center = self.view.center;
    _showText.backgroundColor=[UIColor yellowColor];
    //参数值是字体大小，粗细是系统设置的。
    _showText.font = [UIFont boldSystemFontOfSize:30];
    //_showText.bounds=CGRectMake(0,0, 100, 30);
    [self.view addSubview:_showText];
    
}

//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    [_showText removeFromSuperview];
//    _showText = nil;
//}
-(void)clickImage
{
    //
    if (_flagOFLable==YES) {
        _showText.frame=CGRectMake(0, 0, 0, 0);
        _flagOFLable = NO;
    }
    else
    {
        _showText.frame=CGRectMake(0, 0, 100, 50);
        _showText.center=self.view.center;
        _flagOFLable = YES;
        //[_showText dealloc];
    }
    //_showText=nil;
    //NSLog(@"%@",_showText);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
