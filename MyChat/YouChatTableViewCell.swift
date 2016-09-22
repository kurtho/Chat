//
//  YouChatTableViewCell.swift
//  MyChat
//
//  Created by KurtHo on 2016/9/21.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit

class YouChatTableViewCell: UITableViewCell {

    @IBOutlet weak var uUserIcon: UIImageView!
    @IBOutlet weak var uChatView: UIView!
    @IBOutlet weak var uName: UILabel!
    @IBOutlet weak var uContent: UILabel!

    

    

    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
