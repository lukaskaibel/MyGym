//
//  User.swift
//  MyGym
//
//  Created by Lukas Kaibel on 19.09.20.
//

import Foundation

var user = getTestUserList()[0]

struct User {
    
    var identifier: Int
    var name: String
    var workoutlist = getTestWorkoutList()
    
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    
    init(name: String) {
        self.name = name
        self.identifier = User.getUniqueIdentifier()
    }
    
    
}
