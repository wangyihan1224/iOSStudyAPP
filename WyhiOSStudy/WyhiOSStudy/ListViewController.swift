//
//  ListViewController.swift
//  WyhiOSStudy
//
//  Created by 王乙涵 on 2019/10/8.
//  Copyright © 2019 王乙涵. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    var list = UITableView(frame: .init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), style: .plain)
    var cellArr : [Any] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        list.delegate = self
        list.dataSource = self
        list.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(list)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ListViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = cellArr[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var cacheStr = ""
        switch model {
        case is iOSTreeType.UIListType:
            
            cacheStr = (model as? iOSTreeType.UIListType)?.title() ?? ""
        case is iOSTreeType.RuntimListType:
            cacheStr = (model as? iOSTreeType.RuntimListType)?.title() ?? ""
        case is iOSTreeType.ObjectiveCListType:
            cacheStr = (model as? iOSTreeType.ObjectiveCListType)?.title() ?? ""
        case is iOSTreeType.MemoryListType:
            cacheStr = (model as? iOSTreeType.MemoryListType)?.title() ?? ""
        case is iOSTreeType.BlockListType:
            cacheStr = (model as? iOSTreeType.BlockListType)?.title() ?? ""
        default:
            print("")
        }
        cell.textLabel?.text = "\(indexPath.row + 1)、" + cacheStr
        return cell
    }
    
}
