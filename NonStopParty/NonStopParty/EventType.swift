//
//  EventType.swift
//  NonStopParty
//
//  Created by Jonathan Velazquez on 28/02/16.
//  Copyright © 2016 Keyblic. All rights reserved.
//

import Foundation
class EventType {
    
    var banner:UIImage?
    var imageName:String? {
        didSet{
            banner = UIImage(named: imageName!)
        }
    }
    
    var title: String?
    
    init(imageName:String,title:String){
        self.imageName = imageName
        self.title = title
    }
    
}