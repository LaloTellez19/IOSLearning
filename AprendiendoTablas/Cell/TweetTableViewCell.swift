//
//  TweetTableViewCell.swift
//  AprendiendoTablas
//
//  Created by Miguel Eduardo  Valdez Tellez  on 21/07/20.
//  Copyright © 2020 Miguel Eduardo  Valdez Tellez . All rights reserved.
//

import UIKit

class TweetTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var userImageView: UIView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //Hacer que imagen no salga del ancho
        userImageView.clipsToBounds = true
        //Sacar el radio
        userImageView.layer.cornerRadius = userImageView.frame.width / 2
    }
    
    
    func setupCell(username: String, message: String)
    {
        userNameLabel.text = username
        messageLabel.text = message
        
    }
    
}
