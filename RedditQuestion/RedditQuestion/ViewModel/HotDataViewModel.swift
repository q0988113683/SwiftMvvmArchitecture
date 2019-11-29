//
//  HotDataViewModel.swift
//  RedditQuestion
//
//  Created by Jhuo Yu cheng on 2019/11/28.
//  Copyright © 2019 Jhuo Yu cheng. All rights reserved.
//

import UIKit

class HotListViewModel {
    fileprivate let webService: IWebServicesInterface
    var reloadTableViewClosure: (() -> Void)? = {}
    var updateLoadingStatus: (() -> Void)? = {}
    var hotData: HotData? {
        didSet {
            self.reloadTableViewClosure?()
        }
    }
    var isLoading: Bool = false {
        didSet {
            self.updateLoadingStatus?()
        }
    }
    init( webService: IWebServicesInterface = WebServices()) {
        self.webService = webService
    }
    func fetchData(after: String, before: String) {
        if !isLoading {
            isLoading = true
            webService.getHotData(after: after, before: before) { [weak self]  (result) in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let hotData) :
                        if after.isEmpty {
                            self?.hotData = hotData
                        } else {
                            self?.hotData?.after = hotData?.after
                            self?.hotData?.before = hotData?.before
                            self?.hotData?.children.append(contentsOf: hotData?.children ?? [])
                        }
                    case .failure(let error) :
                        print("Parser error \(error)")
                    }
                    self?.isLoading = false
                }
            }
        }
    }
}
extension HotListViewModel {
    func numberOfSections() -> Int {
        if self.hotData == nil {
            return 2
        }
        return self.hotData?.after != nil ? 2 : 1
    }
    func hotDataAtIndex(_ index: Int) -> ChildData? {
        return self.hotData?.children[index].data
    }
}
