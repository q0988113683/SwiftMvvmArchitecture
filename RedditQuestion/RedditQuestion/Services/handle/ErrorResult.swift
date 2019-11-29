//
//  ErrorResult.swift
//  RedditQuestion
//
//  Created by Jhuo Yu cheng on 2019/11/29.
//  Copyright © 2019 Jhuo Yu cheng. All rights reserved.
//

import Foundation

enum ErrorResult: Error {
    case network(string: String)
    case parser(string: String)
    case data(string: String)
}
