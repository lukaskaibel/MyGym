//
//  WorkoutDiagrammView.swift
//  MyGym
//
//  Created by Lukas Kaibel on 19.09.20.
//

import UIKit

class WorkoutDiagrammView: UIView {


    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(roundedRect: bounds, cornerRadius: 16.0)
        UIColor.green.setFill()
        path.fill()
    }


}
