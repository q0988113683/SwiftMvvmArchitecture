//
//  Extension_ImageView.swift
//  RedditQuestion
//
//  Created by Jhuo Yu cheng on 2019/11/28.
//  Copyright © 2019 Jhuo Yu cheng. All rights reserved.
//

import UIKit

var imageCache = NSCache<AnyObject, AnyObject>()

extension UIImageView {
    func loadImage(urlString: String) {
        if let cacheImage = imageCache.object(forKey: urlString as AnyObject) as? UIImage {
            self.image = cacheImage
            return
        }
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                print("Couldn't download image: ", error)
                DispatchQueue.main.async {
                    self.image = UIImage(named: "placeholder.jpg")
                }
                return
            }
            guard let data = data else { return }
            guard let image = UIImage(data: data) else { return }
            imageCache.setObject(image, forKey: urlString as AnyObject)
            DispatchQueue.main.async {
                self.image = image
            }
            }.resume()
    }
}
