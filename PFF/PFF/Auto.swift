//
//  Auto.swift
//  PFF
//
//  Created by Marcel Bienia on 22.11.20.
//

import UIKit

class Auto: UITableViewCell {
    
    @IBOutlet var name: UILabel!
    @IBOutlet var bild: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
