# NNTextView
封装了 UITextView 类，可自定义占位文本，可自动调节高度，也可限制文本行数等。

### 效果图


- 无高度限制，即可输入无数行

![无高度限制，即可以无数行](https://github.com/liuzhongning/NNTextView/blob/master/pictures/无高度限制.gif)


- 只允许输入有限行数

![只允许输入有限行数](https://github.com/liuzhongning/NNTextView/blob/master/pictures/只允许输入5行.gif)


### 用法简介

- 添加到视图所需要的类中

```
_textView = [[NNTextView alloc] initWithFrame:CGRectMake(10, 150, NNSCREENWIDTH - 20, 100)];
    [self.view addSubview:_textView];
```

- 自定义占位文本

```
_textView.placeholderText = @"不用继续往下读了这个只是拿来测试的占位文本当然如果你一直读到这里的话那我谢谢你祝你开心愉快哈";
```
- 限制行数，默认是无限行

```
_textView.maxNumberOfLines = 5;
```
- 回调的block，是用来更新高度的

```
[_textView textValueDidChanged:^(CGFloat textViewHeight) {
        CGRect frame = _textView.frame;
        frame.size.height = textViewHeight;
        _textView.frame = frame;
    }];
```
当然你也可以设置文本框的圆角，设置占位文本的颜色......具体请看项目中的代码。
