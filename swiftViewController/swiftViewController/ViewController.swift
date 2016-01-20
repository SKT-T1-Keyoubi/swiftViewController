//
//  ViewController.swift
//  swiftViewController
//
//  Created by LoveQiuYi on 16/1/20.
//  Copyright © 2016年 LoveQiuYi. All rights reserved.
//

import UIKit
let width = UIScreen.mainScreen().bounds.size.width - 20
let height = UIScreen.mainScreen().bounds.size.height - 40
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //创建一个UIView对象
        let myView = UIView(frame: CGRectMake(10, 20, width, height))
        //设置对象的背景颜色
        myView.backgroundColor = UIColor.purpleColor()
        self.view.addSubview(myView)
        //创建一个UIButton对象
        let button = UIButton(frame: CGRectMake(0, 0, 100, 40))
        button.setTitle("button", forState: UIControlState.Normal)
        button.backgroundColor = UIColor .redColor()
        button.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        myView.addSubview(button)
        //创建一个UIlabel对象
        let label = UILabel(frame: CGRectMake(100, 0, width-100, 40))
        label.backgroundColor = UIColor .blackColor()
        label.textColor = UIColor.whiteColor()
        label.text = "zhangxin"
        label.textAlignment = NSTextAlignment.Center//文本对齐方式
        myView.addSubview(label)
        let textField = UITextField(frame: CGRectMake(0, 40, width, 100))
        textField.backgroundColor = UIColor .yellowColor()
        textField.textColor = UIColor.redColor()
        textField.textAlignment = NSTextAlignment.Center
        textField.placeholder = "please input words"
        textField.borderStyle = UITextBorderStyle.RoundedRect
        //textField.becomeFirstResponder()//文本框成为事件的第一响应者
        myView.addSubview(textField)
        let imageView = UIImageView(frame: CGRectMake(0, 140, width, 200))
        imageView.backgroundColor = UIColor.blackColor()
        imageView.image = UIImage(named: "1212.jpg")
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        myView.addSubview(imageView)
        //button事件
        button.addTarget(self, action: Selector("move"), forControlEvents: UIControlEvents.TouchUpInside)
        

        
    }
    func move(){
        print("dsdsd")
    }

}


