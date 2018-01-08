//
//  boxView.swift
//  Jump_1.0
//
//  Created by 丁冬鸣 on 2018/1/8.
//  Copyright © 2018年 丁冬鸣. All rights reserved.
//

import UIKit

class boxView: UIView {
    
    class func newBox_class(frame:CGRect,color:UIColor) -> boxView {
        let box = boxView()
        box.frame = frame;
        box.backgroundColor = color;
        return box
    }

    func newBox(box:boxView, frame:CGRect,color:UIColor){
        box.frame = frame;
        box.backgroundColor = color;
    }
    

}
