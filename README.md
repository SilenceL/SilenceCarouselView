# SilenceCarouselView
一行代码(两张图片)搞定简单轮播(Swift版)

![demo](https://github.com/SilenceL/SilenceCarouselView/blob/master/123.gif?raw=true)

>使用代码
[原理及项目介绍](http://www.jianshu.com/p/19a0019f8b5f)
```
 let imgArray = [
            "http://www.netbian.com/d/file/20150519/f2897426d8747f2704f3d1e4c2e33fc2.jpg",
            "http://www.netbian.com/d/file/20130502/701d50ab1c8ca5b5a7515b0098b7c3f3.jpg",
            NSURL(string: "http://www.netbian.com/d/file/20110418/48d30d13ae088fd80fde8b4f6f4e73f9.jpg")!,
            UIImage(named: "carouse_1")!,
            UIImage(named: "carouse_2")!,
            UIImage(named: "carouse_3")!
        ]
        self.silenceCarouselView = SilenceCarouselView(
            frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, 200), 
            imageArray: imgArray, 
            silenceCarouselViewTapBlock: { (carouselView, index) in
                      print(index)
        });
```
>本人推崇一切从简^_^  
