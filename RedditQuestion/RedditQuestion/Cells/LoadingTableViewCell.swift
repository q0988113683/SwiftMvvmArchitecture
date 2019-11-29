//
//  LoadingTableViewCell.swift
//  RedditQuestion
//
//  Created by Jhuo Yu cheng on 2019/11/29.
//  Copyright © 2019 Jhuo Yu cheng. All rights reserved.
//

import UIKit

class LoadingTableViewCell: UITableViewCell {
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
