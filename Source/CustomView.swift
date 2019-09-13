//
//  CustomView.swift
//  CircularPageControll
//
//  Created by Vaibhav Sharma on 12/09/19.
//

import UIKit

class CustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        changeColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        changeColor()
    }
    
    func changeColor() {
        self.backgroundColor = UIColor.blue
    }
}
