//
//  StudyViewController.swift
//  WyhiOSStudy
//
//  Created by 王乙涵 on 2019/10/8.
//  Copyright © 2019 王乙涵. All rights reserved.
//

import UIKit

class StudyViewController: UIViewController {
    var listTable = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), style: .plain)
    var cellArr : [iOSTreeType] = [.UI, .Runtime, .ObjectivC, .Swift, .Memory, .Block, .Multithreading, .Runloop, .Net, .Design, .Framework, .Algorithm, .Libraries]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listTable.delegate = self
        listTable.dataSource = self
        listTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(listTable)
       
        // Do any additional setup after loading the view.
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

extension StudyViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = cellArr[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       
        cell.textLabel?.text = "\(indexPath.row + 1)、" + model.title()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DispatchQueue.main.async {
            let model = self.cellArr[indexPath.row]
            WyhiOSStudyViewController.default.home.load(pathName: model.treePng(), type: .png)
            let vc = ListViewController()
            switch model {
            case .UI:
                vc.cellArr = [iOSTreeType.UIListType.table, iOSTreeType.UIListType.event, iOSTreeType.UIListType.display, iOSTreeType.UIListType.caton, iOSTreeType.UIListType.draw, iOSTreeType.UIListType.offscreen]
            case .Runtime:
                vc.cellArr = [iOSTreeType.RuntimListType.dataStructure, iOSTreeType.RuntimListType.classObject, iOSTreeType.RuntimListType.methodCache, iOSTreeType.RuntimListType.forward, iOSTreeType.RuntimListType.methodSwizzling, iOSTreeType.RuntimListType.dynamicAddMethod, iOSTreeType.RuntimListType.dynamicMethodAnalysis]
            case .ObjectivC:
                vc.cellArr = [iOSTreeType.ObjectiveCListType.classification, iOSTreeType.ObjectiveCListType.associations, iOSTreeType.ObjectiveCListType.extensions, iOSTreeType.ObjectiveCListType.agent, iOSTreeType.ObjectiveCListType.notice, iOSTreeType.ObjectiveCListType.kvo, iOSTreeType.ObjectiveCListType.kvc, iOSTreeType.ObjectiveCListType.attributeKeyword]
            case .Memory:
                vc.cellArr = [iOSTreeType.MemoryListType.memoryLayout, iOSTreeType.MemoryListType.memoryManagementSolution, iOSTreeType.MemoryListType.dataStructure, iOSTreeType.MemoryListType.arc, iOSTreeType.MemoryListType.referenceCounting, iOSTreeType.MemoryListType.weakReference, iOSTreeType.MemoryListType.autoReleasePool, iOSTreeType.MemoryListType.circularReference]
            case .Block:
                vc.cellArr = [iOSTreeType.BlockListType.blockMemoryManagement, iOSTreeType.BlockListType.blockCircularReference, iOSTreeType.BlockListType.blockIntroduce, iOSTreeType.BlockListType.interceptVar, iOSTreeType.BlockListType.blockModifier]
            case .Multithreading:
                vc.cellArr = [iOSTreeType.MultithreadingListType.nsthread, iOSTreeType.MultithreadingListType.multithreadingAndLocking, iOSTreeType.MultithreadingListType.gcd, iOSTreeType.MultithreadingListType.nsoperation]
            case .Runloop:
                vc.cellArr = [iOSTreeType.RunloopListType.eventLoopMechanism, iOSTreeType.RunloopListType.runloopAndNSTimer, iOSTreeType.RunloopListType.runloopAndMultithreading, iOSTreeType.RunloopListType.concept, iOSTreeType.RunloopListType.dataSturcture]
            case .Net:
                vc.cellArr = [iOSTreeType.NetListType.tcp, iOSTreeType.NetListType.dns, iOSTreeType.NetListType.Session, iOSTreeType.NetListType.http, iOSTreeType.NetListType.https]
            case .Design:
                vc.cellArr = [iOSTreeType.DesignListType.sixDesignPrinciles, iOSTreeType.DesignListType.chainOfResponsibility, iOSTreeType.DesignListType.bridge, iOSTreeType.DesignListType.adapter, iOSTreeType.DesignListType.singleton, iOSTreeType.DesignListType.command]
            case .Framework:
                vc.cellArr = [iOSTreeType.FrameworkListType.imageCache, iOSTreeType.FrameworkListType.readingTimeStatistics, iOSTreeType.FrameworkListType.complexPageArchitecture, iOSTreeType.FrameworkListType.overallClientArchitecture]
            case .Algorithm:
                vc.cellArr = [iOSTreeType.AlgorithmListType.orderedArrayMerge, iOSTreeType.AlgorithmListType.hash, iOSTreeType.AlgorithmListType.find, iOSTreeType.AlgorithmListType.stringReversal, iOSTreeType.AlgorithmListType.listInversion, iOSTreeType.AlgorithmListType.median]
            case .Libraries:
                vc.cellArr = [iOSTreeType.LibrariesListType.af, iOSTreeType.LibrariesListType.sdweb, iOSTreeType.LibrariesListType.reactive, iOSTreeType.LibrariesListType.async]
            default:
                print("")
            }
            vc.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
}
