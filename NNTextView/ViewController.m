//
//  ViewController.m
//  NNTextView
//
//  Created by 刘朋坤 on 17/3/23.
//  Copyright © 2017年 刘朋坤. All rights reserved.
//

#import "ViewController.h"
#import "NNTextView.h"
#define NNSCREENWIDTH self.view.frame.size.width

@interface ViewController ()

@property (nonatomic,strong) NNTextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _textView = [[NNTextView alloc] initWithFrame:CGRectMake(10, 150, NNSCREENWIDTH - 20, 100)];
    [self.view addSubview:_textView];
    
    _textView.cornerRadius = 5;
    _textView.maxNumberOfLines = 5;
    _textView.font = [UIFont systemFontOfSize:18];
    _textView.placeholderText = @"不用继续往下读了这个只是拿来测试的占位文本当然如果你一直读到这里的话那我谢谢你祝你开心愉快哈";
    
    [_textView textValueDidChanged:^(CGFloat textViewHeight) {
        CGRect frame = _textView.frame;
        frame.size.height = textViewHeight;
        _textView.frame = frame;
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}


@end
