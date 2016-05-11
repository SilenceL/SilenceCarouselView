//
//  ViewController.swift
//  SilenceCarouselView
//
//  Created by SilenceMac on 16/5/11.
//  Copyright © 2016年 Silence. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var silenceCarouselView:SilenceCarouselView?
    
    let imgArray = [
        "http://www.netbian.com/d/file/20150519/f2897426d8747f2704f3d1e4c2e33fc2.jpg",
        "http://www.netbian.com/d/file/20130502/701d50ab1c8ca5b5a7515b0098b7c3f3.jpg",
        NSURL(string: "http://www.netbian.com/d/file/20110418/48d30d13ae088fd80fde8b4f6f4e73f9.jpg")!,
        UIImage(named: "carouse_1")!,
        UIImage(named: "carouse_2")!,
        UIImage(named: "carouse_3")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.silenceCarouselView = SilenceCarouselView(frame: CGRectMake(0, 40, UIScreen.mainScreen().bounds.size.width, 200), imageArray: imgArray, silenceCarouselViewTapBlock: { (carouselView, index) in
            print("click\(index)")
        });
        
        self.view.addSubview(self.silenceCarouselView!)
        
        
        let reloadBtn = UIButton(frame: CGRectMake(200,300,80,44))
        reloadBtn.setTitle("reload", forState: .Normal)
        reloadBtn.backgroundColor = UIColor.redColor()
        reloadBtn.addTarget(self, action: #selector(ViewController.clickReload), forControlEvents: .TouchUpInside)
        self.view.addSubview(reloadBtn)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func clickReload() {
        self.silenceCarouselView?.imageArray = imgArray
        self.silenceCarouselView?.reload()
    }
}

