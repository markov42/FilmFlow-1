//
//  MovieCell.swift
//  Flixster Pt. 1
//
//  Created by Jing Liu on 3/6/23.


//import UIKit
//import Nuke
//
//class MovieCell: UITableViewCell {
//
//    @IBOutlet weak var movieImageView1: UIImageView!
//
//    @IBOutlet weak var movieImageView2: UIImageView!
//
//    @IBOutlet weak var movieImageView3: UIImageView!
//
//    @IBOutlet weak var movieImageView4: UIImageView!
//
//    @IBOutlet weak var movieImageView5: UIImageView!
//
//    @IBOutlet weak var movieNameLabel1: UILabel!
//
//    @IBOutlet weak var movieNameLabel2: UILabel!
//
//    @IBOutlet weak var movieNameLabel3: UILabel!
//
//    @IBOutlet weak var movieNameLabel4: UILabel!
//
//    @IBOutlet weak var movieNameLabel5: UILabel!
//
//    @IBOutlet weak var discriptionLabel1: UITextView!
//
//    @IBOutlet weak var discriptionLabel2: UITextView!
//
//    @IBOutlet weak var discriptionLabel3: UITextView!
//
//    @IBOutlet weak var discriptionLabel4: UITextView!
//
//    @IBOutlet weak var discriptionLabel5: UITextView!
//
//    /// Configures the cell's UI for the given track.
//    func configure(with movie: Movie) {
//        movieNameLabel1.text = movie.original_title
//        movieNameLabel2.text = movie.original_title
//        movieNameLabel3.text = movie.original_title
//        movieNameLabel4.text = movie.original_title
//        movieNameLabel5.text = movie.original_title
//        discriptionLabel1.text = movie.overview
//        discriptionLabel2.text = movie.overview
//        discriptionLabel3.text = movie.overview
//        discriptionLabel4.text = movie.overview
//        discriptionLabel5.text = movie.overview
//
//        // Load image async via Nuke library image loading helper method
//        Nuke.loadImage(with: movie.backdrop_path, into: movieImageView1)
//        Nuke.loadImage(with: movie.backdrop_path, into: movieImageView2)
//        Nuke.loadImage(with: movie.backdrop_path, into: movieImageView3)
//        Nuke.loadImage(with: movie.backdrop_path, into: movieImageView4)
//        Nuke.loadImage(with: movie.backdrop_path, into: movieImageView5)
//        }
//
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
//
//}

import UIKit
import Nuke

class MovieCell: UITableViewCell {

    @IBOutlet var movieImageViews: [UIImageView]!
    @IBOutlet var movieNameLabels: [UILabel]!
    @IBOutlet var descriptionLabels: [UITextView]!

    /// Configures the cell's UI for the given movie.
    func configure(with movie: Movie) {
        for i in 0..<movieImageViews.count {
            let backdropPath = movie.backdrop_path.absoluteString
            Nuke.loadImage(with: backdropPath as! ImageRequestConvertible, into: movieImageViews[i])
            movieNameLabels[i].text = movie.original_title
            descriptionLabels[i].text = movie.overview
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
