//
//  TableViewCell.swift
//  Warren
//
//  Created by MacBook Pro on 4/8/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var titleLabelOutlet: UILabel!
    
    @IBOutlet weak var countLabelOutlet: UILabel!
    
    @IBOutlet weak var viewOutlet: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
