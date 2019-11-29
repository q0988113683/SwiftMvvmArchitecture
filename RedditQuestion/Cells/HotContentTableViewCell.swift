//
//  HotContentTableViewCell.swift
//  RedditQuestion
//
//  Created by Jhuo Yu cheng on 2019/11/28.
//  Copyright © 2019 Jhuo Yu cheng. All rights reserved.
//

import UIKit

class HotContentTableViewCell: UITableViewCell {
    @IBOutlet weak var labContent: UILabel!
    @IBOutlet weak var imgPhoto: UIImageView!
    @IBOutlet weak var imgConstraintWidth: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    func setData(_ item: ChildData) {
        self.labContent.text = item.title
        if item.thumbnail == "self" || item.thumbnail == "default"{
            self.imgPhoto.isHidden = true
            self.imgConstraintWidth.constant = 0
        } else {
            self.imgPhoto.isHidden = false
             self.imgConstraintWidth.constant = 114
            self.imgPhoto.image = nil
            self.imgPhoto.loadImage(urlString: item.thumbnail)
        }
    }
}
