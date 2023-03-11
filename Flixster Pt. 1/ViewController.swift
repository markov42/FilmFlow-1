//
//  ViewController.swift
//  Flixster Pt. 1
//
//  Created by Jing Liu on 3/6/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var movies: [Movie] = []
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        tableView.dataSource = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        movies = Movie.mockMovies
        print(movies)
        tableView.register(MovieCell.self, forCellReuseIdentifier: "MovieCell")


    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a cell with identifier, "MovieCell"
        // the `dequeueReusableCell(withIdentifier:)` method just returns a generic UITableViewCell so it's necessary to cast it to our specific custom cell.
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell

        // Get the movie that corresponds to the table view row
        let movie = movies[indexPath.row]

        // Configure the cell with it's associated movie
        cell.configure(with: movie)

        // return the cell for display in the table view
        return cell
    }
    


}

