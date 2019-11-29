//
//  IWebServicesInterface.swift
//  RedditQuestion
//
//  Created by Jhuo Yu cheng on 2019/11/28.
//  Copyright © 2019 Jhuo Yu cheng. All rights reserved.
//

import UIKit

protocol IWebServicesInterface {
    func getHotData(after: String, before: String, completion: @escaping (Result<HotData?, ErrorResult>) -> Void)
}
