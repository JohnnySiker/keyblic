//
//  EventTypeCell.swift
//  NonStopParty
//
//  Created by Jonathan Velazquez on 28/02/16.
//  Copyright © 2016 Keyblic. All rights reserved.
//

import UIKit


class EventTypeCell: UITableViewCell {
    
    @IBOutlet weak var iv_banner: UIImageView!
    
    @IBOutlet weak var lbl_title: UILabel!
    
    
    override func awakeFromNib() {
        
    }
    
    func setCell(image:UIImage,title:String){
        iv_banner.image = image
        lbl_title.text = title
    }
    
    
}
