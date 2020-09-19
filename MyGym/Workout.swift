//
//  Workout.swift
//  MyGym
//
//  Created by Lukas Kaibel on 19.09.20.
//

import Foundation


struct Workout {
    
    var name: String
    var exercises = [Exercise]()
    var location: String

    
    init(name: String) {
        self.name = name
        self.location = "Mallorca"
    }
    
    
    mutating func addExercise(with exercise: Exercise) {
        exercises.append(exercise)
    }
    
    
    mutating func deleteExercise(with exercise: Exercise) {
        exercises = exercises.filter { $0.name != exercise.name }
    }
    
    
    func getExercise(with name: String) -> Exercise {
        return (exercises.filter { $0.name == name })[0]
    }
    
}
