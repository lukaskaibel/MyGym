//
//  TestWorkouts.swift
//  MyGym
//
//  Created by Lukas Kaibel on 19.09.20.
//

import Foundation


func getTestWorkoutList() -> [Workout] {
    var workoutlist = [Workout]()
    for index1 in 0...5 {
        var workout = Workout(name: String(index1))
        for index2 in 0...5 {
            let exercise = Exercise(name: String(index2), time: index2)
            workout.addExercise(with: exercise)
        }
        workoutlist.append(workout)
    }
    return workoutlist
}


func getTestUserList() -> [User] {
    var userlist = [User]()
    var user = User(name: "Bernd")
    userlist.append(user)
    user = User(name: "Ulrike")
    userlist.append(user)
    user = User(name: "Lukas")
    userlist.append(user)
    user = User(name: "Thorsten")
    userlist.append(user)
    user = User(name: "Hans")
    userlist.append(user)
    user = User(name: "Heinz")
    userlist.append(user)
    return userlist
}


func getTestPosts() -> [Post] {
    let userlist = getTestUserList()
    var postlist = [Post]()
    for index in 0...5 {
        var post = Post(user: userlist[index])
        post.workout = userlist[index].workoutlist[0]
        postlist.append(post)
    }
    return postlist
}
