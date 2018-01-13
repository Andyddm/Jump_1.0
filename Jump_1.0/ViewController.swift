//
//  ViewController.swift
//  Jump_1.0
//
//  Created by 丁冬鸣 on 2018/1/8.
//  Copyright © 2018年 丁冬鸣. All rights reserved.
//

import UIKit
import Foundation
//import boxView

class ViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.readyToJump()
        
        UIDevice.current.beginGeneratingDeviceOrientationNotifications()
        
        // 检测设备方向
        NotificationCenter.default.addObserver(self, selector: #selector(deviceOrientationChange), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    func readyToJump() {
        // 类方法初始化
        let box_1 = boxView.newBox_class(frame: CGRect(x: self.view.frame.size.width/5, y: self.view.frame.size.height - 80, width: 80 , height: 80), color: UIColor.red)
        self.view.addSubview(box_1)

        let chess = chessView.newChessView(frame: CGRect.init(x: box_1.frame.origin.x + 30, y: box_1.frame.origin.y - 40, width: 20, height: 40), color: UIColor.green)
        self.view.addSubview(chess)
    }
    
  
    /// 设备方向改变
    @objc fileprivate func deviceOrientationChange() {
        // 获取当前设备方向
        let orientation = UIDevice.current.orientation
        print(orientation.rawValue)
        // 如果手机硬件屏幕朝上或者屏幕朝下或者未知
        if orientation == UIDeviceOrientation.faceUp || orientation == UIDeviceOrientation.faceDown || orientation == UIDeviceOrientation.unknown {
            return
        }

    }

}


