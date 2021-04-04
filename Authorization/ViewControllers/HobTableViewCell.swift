//
//  HobTableViewCell.swift
//  Authorization
//
//  Created by Artem Bazhanov on 04.04.2021.
//

import UIKit

class HobTableViewCell: UITableViewCell {
    @IBOutlet weak var titleCell: UILabel!
    @IBOutlet weak var subtitleCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
