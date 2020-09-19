//
//  SelectWorkoutTableViewCell.swift
//  MyGym
//
//  Created by Lukas Kaibel on 19.09.20.
//

import UIKit

class SelectWorkoutTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(roundedRect: rect, cornerRadius: 8.0)
        UIColor.green.setFill()
        path.fill()
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
