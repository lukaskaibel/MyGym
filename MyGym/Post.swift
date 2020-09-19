//
//  Post.swift
//  MyGym
//
//  Created by Lukas Kaibel on 19.09.20.
//

import Foundation


struct Post {
    
    var user: User
    var workout: Workout?
    
    init(user: User) {
        self.user = user
    }
    
}
