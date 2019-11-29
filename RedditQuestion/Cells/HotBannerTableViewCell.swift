//
//  HotBannerTableViewCell.swift
//  RedditQuestion
//
//  Created by Jhuo Yu cheng on 2019/11/28.
//  Copyright © 2019 Jhuo Yu cheng. All rights reserved.
//

import UIKit

class HotBannerTableViewCell: UITableViewCell {
    let imgPhoto: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    let labTitle: UILabel = {
        let labTitle = UILabel()
        labTitle.text = ""
        labTitle.textColor = .white
        labTitle.backgroundColor = .lightGray
        labTitle.translatesAutoresizingMaskIntoConstraints = false
        return labTitle
    }()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setLayout()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setLayout() {
        let containerView = UIView()
        addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.leftAnchor.constraint(equalTo: leftAnchor),
            containerView.rightAnchor.constraint(equalTo: rightAnchor),
            containerView.heightAnchor.constraint(equalTo: heightAnchor)
        ])
        containerView.addSubview(imgPhoto)
        containerView.addSubview(labTitle)
        // fix the image at center of view.
        NSLayoutConstraint.activate([
            imgPhoto.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8),
            imgPhoto.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 8),
            imgPhoto.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -8),
            imgPhoto.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8)
        ])
        NSLayoutConstraint.activate([
            labTitle.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 8),
            labTitle.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0),
            labTitle.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -8)
        ])
    }
    func setData(_ item: ChildData) {
        self.labTitle.text = item.title
        self.imgPhoto.image = nil
        self.imgPhoto.loadImage(urlString: item.thumbnail)
    }
}
