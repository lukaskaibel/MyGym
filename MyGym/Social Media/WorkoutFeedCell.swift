//
//  WorkoutFeedCell.swift
//  MyGym
//
//  Created by Lukas Kaibel on 19.09.20.
//

import UIKit

class WorkoutFeedCell: UITableViewCell {

    
    @IBOutlet weak var userImage: UIImageView!
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var workoutDiagrammView: WorkoutDiagrammView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
