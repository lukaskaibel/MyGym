//
//  FeedViewController.swift
//  MyGym
//
//  Created by Lukas Kaibel on 19.09.20.
//

import UIKit

var posts = getTestPosts()

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddPost {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Feed Cell") as! WorkoutFeedCell
        
        cell.usernameLabel.text = posts[indexPath.row].user.name
        cell.locationLabel.text = posts[indexPath.row].workout?.location
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
    
    
    func addPostToPostlist(post: Post) {
        posts.append(post)
        tableView.reloadData()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


protocol AddPost {
    func addPostToPostlist(post: Post)
}
