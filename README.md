learnAutoLayout
===============


autolayout就是为了适配。利用的是view与view之间的各方向、位置上的约束，这些样多个view连接起来，只要有一个view的某个约束发生变化，其它view都会按照事先设定好的约束走。

### 演示
演示下面两个例子，不仅能展示出autolayout的主要功能，还能非常明显的看出编码效率上的提高

例子1：view 1与view 2大小一样，高度一样，间距固定。view 3在view 2下方10位置处，底部距superView 20。这个例子可以用来演示屏幕大小相关的适配和view与view之间的关联

例子2：Label高、宽自适应。这个例子可以体会 layout priority 的妙用。比如label右边有一个view，label显示不同数量的字时，希望label以最优化大小显示，并且view可以自动调节位置

### 如何使用

1. 详解auto layout
2. 详解size class
3. 简单介绍 VFL，按照这个文章里的内容说一下就行：http://www.cocoachina.com/industry/20131108/7322.html
4. 提一下Masonry，因为我们以后使用这个库来替代apple的autolayout语法。主要就是介绍一下其使用方法
5. 动画

```
	viewLeftConstraint.constant = 10;
	[UIView animateWithDuration:0.3 animations:^{
        [superView layoutIfNeeded];
    }];

```

必须是view的superView或者更低层级的superView来调用layoutIfNeeded
6. 

#
## 一些需要知道的技巧

1. IB中的constraint是可以拖出来的，所以可以改变其值
1. `[superView addSubview:view]` 之前 `view.translatesAutoresizingMaskIntoConstraints = NO;`
2. constraint 是在`[superView addSubview:view]`之后再设置
3. 如果 constraint的toItem涉及其它view或者是superView，那么这个constraint一定要被add到superView。`[superView addConstraint:someConstraint];`
4. 如果 constraint的toItem是nil，那么这个constraint是要add到view。`[view addConstraint:someConstraint];`
5. constraint animation(做好例子)
6. 如何在 AutoLayout 中使用 UIScrollView




### 参考：

* [Autolayout及VFL经验分享](http://www.cocoachina.com/industry/20131108/7322.html)
* [10 Things You Need To Know About Cocoa Auto Layout](http://oleb.net/blog/2013/03/things-you-need-to-know-about-cocoa-autolayout/)
* [Auto Layout Guide](https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/AutolayoutPG/Introduction/Introduction.html#//apple_ref/doc/uid/TP40010853-CH13-SW1)
* [先进的自动布局工具箱](http://answerhuang.duapp.com/index.php/2013/10/11/advanced-auto-layout-toolbox/) 这篇文章可了解到很多基础知识
* [iOS: 在代码中使用Autolayout (1) – 按比例缩放和优先级](http://www.mgenware.com/blog/?p=490)
* [iOS: 在代码中使用Autolayout (2) – 按比例缩放和优先级](http://www.mgenware.com/blog/?p=491)
     