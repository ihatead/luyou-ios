//
//  AboutViewController.m
//  路由管理
//
//  Created by zhaoyuan on 15/9/10.
//  Copyright (c) 2015年 赵远. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.hidesBottomBarWhenPushed = YES;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    [self initNav];
    [self initView];
    [self initData];
}

-(void)initNav{
    UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screen_width, 64)];
    backView.backgroundColor=navigationBarColor;
    [self.view addSubview:backView];
    //标题
    UILabel *navTitle=[[UILabel alloc] init];
    navTitle.frame=CGRectMake(screen_width/2-100, 30, 200, 25);
    navTitle.text=@"关于";
    navTitle.textAlignment=1;
    navTitle.textColor=[UIColor whiteColor];
    navTitle.font = [UIFont boldSystemFontOfSize:17.0f];
    [backView addSubview:navTitle];
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(0, 20, 54, 44);
    UIImageView  *img=[[UIImageView alloc] initWithFrame:CGRectMake(10,10,13,23)];
    [img setImage:[ UIImage imageNamed:@"icon_back"]];
    [backBtn addSubview:img];
    [backBtn addTarget:self action:@selector(backBtnTap:) forControlEvents:UIControlEventTouchUpInside];
    backBtn.adjustsImageWhenHighlighted = NO;
    [backView addSubview:backBtn];
    
    
}



- (void)initView{
    UITextView *textview=[[UITextView alloc] initWithFrame:CGRectMake(0, 74, screen_width, screen_height-64)];
    textview.text = @"        欢迎您访问并使用我们客户端，使用客户端时，请遵守相关的法律。\r\n\r\n        \r\n\r\n        我们保留该声明条款的最终解释权和不定时修改的权利。";
    [textview setEditable:NO];
    
    [self.view addSubview:textview];
}




- (void)initData{
    
}



//响应事件
-(void)backBtnTap:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
