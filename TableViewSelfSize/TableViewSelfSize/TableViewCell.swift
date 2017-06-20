//
//  TableViewCell.swift
//  TableViewSelfSize
//
//  Created by Qi Cui on 6/19/17.
//  Copyright © 2017 Qi Cui. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var titleLb: UILabel!
    @IBOutlet weak var descLb: UILabel!
    
    func bindData(movieInfo: MovieInfo?) {
        titleLb.text = movieInfo?.title
        descLb.text = movieInfo?.description
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
