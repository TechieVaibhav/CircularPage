//
//  NewCustomView.swift
//  CircularPageControll
//
//  Created by Vaibhav Sharma on 13/09/19.
//

import UIKit

class NewCustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        changeColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        changeColor()
    }
    
    func changeColor() {
        self.backgroundColor = UIColor.yellow
    }
}
