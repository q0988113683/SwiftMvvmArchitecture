//
//  ViewController.swift
//  RedditQuestion
//
//  Created by Jhuo Yu cheng on 2019/11/28.
//  Copyright © 2019 Jhuo Yu cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let reuseIdentifier = "HotBannerCellIdentifier"
    @IBOutlet weak var tableview: UITableView!
    private var hotListVM: HotListViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setData()
        setUI()
    }
    func setData() {
        hotListVM = HotListViewModel(webService: WebServices())
        hotListVM.reloadTableViewClosure = { [weak self] () in
            DispatchQueue.main.async {
                self?.tableview.reloadData()
            }
        }
        hotListVM.fetchData(after: "", before: "")
    }
    func setUI() {
        self.tableview.delegate = self
        self.tableview.dataSource = self
        self.tableview.rowHeight = 130
        tableview.register(UINib(nibName: "HotContentTableViewCell", bundle: nil), forCellReuseIdentifier: "HotContentCellIdentifier")
        tableview.register(UINib(nibName: "LoadingTableViewCell", bundle: nil), forCellReuseIdentifier: "LoadingCellIdentifier")
        tableview.register(HotBannerTableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
    }
}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.hotListVM.numberOfSections()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return 1
        }
        return self.hotListVM.hotData?.children.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 最後一個cell 顯示loading cell
        if indexPath.section == 1 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "LoadingCellIdentifier", for: indexPath) as? LoadingTableViewCell {
                cell.activityIndicator.startAnimating()
                cell.selectionStyle = .none
                return cell
            }
        }
        
        //每10的倍數顯示banner cell
        guard let childData = self.hotListVM.hotDataAtIndex(indexPath.row) else {
            fatalError("childData not found")
        }
        if indexPath.row % 10 != 0, let cell = tableView.dequeueReusableCell(withIdentifier: "HotContentCellIdentifier", for: indexPath) as? HotContentTableViewCell {
            cell.setData(childData)
            cell.selectionStyle = .none
            return cell
        } else if let cell = tableView.dequeueReusableCell(withIdentifier: "HotBannerCellIdentifier", for: indexPath) as? HotBannerTableViewCell {
            cell.setData(childData)
            cell.selectionStyle = .none
            return cell
        } else {
            fatalError("Unhandled")
        }
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        guard self.hotListVM.hotData?.after != nil else {
            return
        }
        //處理滾動底部時 讀取更多資料
        let offsetY = scrollView.contentOffset.y
        let contentHeight = scrollView.contentSize.height
        if (offsetY > contentHeight - scrollView.frame.height) && !hotListVM.isLoading {
            if let hotData = hotListVM.hotData {
                hotListVM.fetchData(after: hotData.after ?? "", before: hotData.before ?? "")
            }
        }
    }
}
