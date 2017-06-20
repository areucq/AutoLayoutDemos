//
//  ViewController.swift
//  TableViewSelfSize
//
//  Created by Qi Cui on 6/19/17.
//  Copyright © 2017 Qi Cui. All rights reserved.
//

import UIKit

class MovieInfo {
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
    
    let title: String
    let description: String
}

class ViewController: UIViewController {

    @IBOutlet weak var tbView: UITableView!
    
    let movieInfos = [MovieInfo(title: "The Shawshank Redemption", description: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts "),
                      MovieInfo(title: "The Godfather", description: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son."),
                      MovieInfo(title: "The Dark Knight", description: "When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham, the Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice."),
                      MovieInfo(title: "12 Angry Men", description: "A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence."),
                      MovieInfo(title: "Schindler's List ", description: "In German-occupied Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazi Germans."),
                      ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tbView.rowHeight = UITableViewAutomaticDimension
        tbView.estimatedRowHeight = 60
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.bindData(movieInfo: movieInfos[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieInfos.count
    }
}

