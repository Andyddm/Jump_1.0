//
//  chessView.swift
//  Jump_1.0
//
//  Created by 丁冬鸣 on 2018/1/8.
//  Copyright © 2018年 丁冬鸣. All rights reserved.
//

import UIKit

class chessView: UIView {

    class func newChessView(frame:CGRect,color:UIColor) -> chessView {
        let chess = chessView()
        chess.frame = frame;
        chess.backgroundColor = color
        return chess
    }

}
