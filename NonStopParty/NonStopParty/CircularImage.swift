//
//  CircularImage.swift
//  NonStopParty
//
//  Created by Jonathan Velazquez on 28/02/16.
//  Copyright © 2016 Keyblic. All rights reserved.
//

import Foundation
@IBDesignable
class CircularImage:UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup();
    }
    
    
    func setup(){
        self.layer.cornerRadius = self.frame.width/2
    }
}