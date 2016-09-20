//
//  ChatTableViewCell.swift
//  MyChat
//
//  Created by KurtHo on 2016/9/16.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {

    @IBOutlet weak var userIcon: UIImageView!
    @IBOutlet weak var chatview: UIView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var content: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
