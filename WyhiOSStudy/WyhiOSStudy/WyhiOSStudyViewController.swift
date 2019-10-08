//
//  WyhiOSStudyViewController.swift
//  WyhiOSStudy
//
//  Created by 王乙涵 on 2019/10/8.
//  Copyright © 2019 王乙涵. All rights reserved.
//

import UIKit
enum iOSTreeType {
    case UI
    case Runtime
    case ObjectivC
    case Swift
    case Memory
    case Block
    case Multithreading
    case Runloop
    case Net
    case Design
    case Framework
    case Algorithm
    case Libraries
    
    func title() -> String {
        switch self {
        case .UI:
            return "UI视图相关"
        case .Runtime:
            return "Runtime"
        case .ObjectivC:
            return "Objectiv-C语言特性"
        case .Swift:
            return "Swift语言特性"
        case .Memory:
            return "内存管理"
        case .Block:
            return "Block"
        case .Multithreading:
            return "多线程"
        case .Runloop:
            return "Runloop"
        case .Net:
            return "网络相关"
        case .Design:
            return "设计模式"
        case .Framework:
            return "架构-框架"
        case .Algorithm:
            return "算法"
        case .Libraries:
            return "第三方库"
        }
    }
    func treePng() -> String {
        switch self {
        case .UI:
            return "UIStree"
        case .Runtime:
            return "RuntimeStree"
        case .ObjectivC:
            return "ObjectivCStree"
        case .Swift:
            return "SwiftStree"
        case .Memory:
            return "MemoryStree"
        case .Block:
            return "BlockStree"
        case .Multithreading:
            return "MultithreadingStree"
        case .Runloop:
            return "RunloopStree"
        case .Net:
            return "NetStree"
        case .Design:
            return "DesignStree"
        case .Framework:
            return "FrameworkStree"
        case .Algorithm:
            return "AlgorithmStree"
        case .Libraries:
            return "LibrariesStree"
        }
    }
    
    enum UIListType {
        case table
        case event
        case display
        case caton
        case draw
        case offscreen
        func title() -> String {
            switch self {
            case .table:
                return "UITableView相关"
            case .event:
                return "事件传递&事件响应"
            case .display:
                return "图像显示原理"
            case .caton:
                return "卡顿&掉帧"
            case .draw:
                return "绘制原理&异步绘制"
            case .offscreen:
                return "离屏渲染"
            }
        }
    }
    
    enum RuntimListType {
        case dataStructure
        case classObject
        case methodCache
        case forward
        case methodSwizzling
        case dynamicAddMethod
        case dynamicMethodAnalysis
        func title() -> String {
            switch self {
            case .dataStructure:
                return "数据结构"
            case .classObject:
                return "类对象与元类对象"
            case .methodCache:
                return "方法缓存"
            case .forward:
                return "消息转发"
            case .methodSwizzling:
                return "Method-Swizzling"
            case .dynamicAddMethod:
                return "动态添加方法"
            case .dynamicMethodAnalysis:
                return "动态方法解析"
            }
        }
    }
    
    enum ObjectiveCListType {
        case classification
        case associations
        case extensions
        case agent
        case notice
        case kvo
        case kvc
        case attributeKeyword
        func title() -> String {
            switch self {
            case .classification:
                return "分类"
            case .associations:
                return "关联对象"
            case .extensions:
                return "扩展"
            case .agent:
                return "代理"
            case .notice:
                return "通知"
            case .kvo:
                return "KVO"
            case .kvc:
                return "KVC"
            case .attributeKeyword:
                return "属性关键字"
            }
        }
    }
    
    enum SwiftListType {
        
    }
    enum MemoryListType {
        case memoryLayout
        case memoryManagementSolution
        case dataStructure
        case arc
        case referenceCounting
        case weakReference
        case autoReleasePool
        case circularReference
        func title() -> String {
            switch self {
            case .memoryLayout:
                return "内存布局"
            case .memoryManagementSolution:
                return "内存管理方案"
            case .dataStructure:
                return "数据结构"
            case .arc:
                return "ARC&MRC"
            case .referenceCounting:
                return "引用计数"
            case .weakReference:
                return "弱引用"
            case .autoReleasePool:
                return "自动释放池"
            case .circularReference:
                return "循环引用"
            }
        }
    }
    
    enum BlockListType {
        case blockMemoryManagement
        case blockCircularReference
        case blockIntroduce
        case interceptVar
        case blockModifier
        func title() -> String {
            switch self {
            case .blockMemoryManagement:
                return "Block的内存管理"
            case .blockCircularReference:
                return "Block的循环引用"
            case .blockIntroduce:
                return "Block介绍"
            case .interceptVar:
                return "截获变量"
            case .blockModifier:
                return "__block修饰符"
            }
        }
    }
    
    enum MultithreadingListType {
        case nsthread
        case multithreadingAndLocking
        case gcd
        case nsoperation
        func title() -> String {
            switch self {
            case .nsthread:
                return "NSThread"
            case .multithreadingAndLocking:
                return "多线程和锁"
            case .gcd:
                return "GCD"
            case .nsoperation:
                return "NSOperation"
            }
        }
    }
    
    enum RunloopListType {
        case eventLoopMechanism
        case runloopAndNSTimer
        case runloopAndMultithreading
        case concept
        case dataSturcture
        func title() -> String {
            switch self {
            case .eventLoopMechanism:
                return "事件循环机制"
            case .runloopAndNSTimer:
                return "RunLoop与NSTimer"
            case .runloopAndMultithreading:
                return "RunLoop与多线程"
            case .concept:
                return "概念"
            case .dataSturcture:
                return "数据结构"
            }
        }
    }
    
    enum NetListType {
        case tcp
        case dns
        case Session
        case http
        case https
        func title() -> String {
            switch self {
            case .tcp:
                return "传输层协议 TCP/UDP"
            case .dns:
                return "DNS解析"
            case .Session:
                return "Session/Cookie"
            case .http:
                return "HTTP协议 概念 超文本传输协议"
            case .https:
                return "HTTPS与网络安全"
            }
        }
    }
    
    enum DesignListType {
        case sixDesignPrinciles
        case chainOfResponsibility
        case bridge
        case adapter
        case singleton
        case command
        func title() -> String {
            switch self {
            case .sixDesignPrinciles:
                return "六大设计原则"
            case .chainOfResponsibility:
                return "责任链"
            case .bridge:
                return "桥接"
            case .adapter:
                return "适配器"
            case .singleton:
                return "单例"
            case .command:
                return "命令"
            }
        }
    }
    
    enum FrameworkListType {
        case imageCache
        case readingTimeStatistics
        case complexPageArchitecture
        case overallClientArchitecture
        func title() -> String {
            switch self {
            case .imageCache:
                return "图片缓存"
            case .readingTimeStatistics:
                return "阅读时长统计"
            case .complexPageArchitecture:
                return "复杂页面架构"
            case .overallClientArchitecture:
                return "客户端整体架构"
            }
        }
    }
    
    enum AlgorithmListType {
        case orderedArrayMerge
        case hash
        case find
        case stringReversal
        case listInversion
        case median
        func title() -> String {
            switch self {
            case .orderedArrayMerge:
                return "有序数组合并"
            case .hash:
                return "Hash算法"
            case .find:
                return "查找两个子视图的共同父视图"
            case .stringReversal:
                return "字符串反转"
            case .listInversion:
                return "链表反转"
            case .median:
                return "求无序数组当中的中位数"
            }
        }
    }
    
    enum LibrariesListType {
        case af
        case sdweb
        case reactive
        case async
        func title() -> String {
            switch self {
            case .af:
                return "AFNetworking"
            case .sdweb:
                return "SDWebImage"
            case .reactive:
                return "ReactiveCocoa"
            case .async:
                return "AsyncDisplayKit"
            }
        }
    }
}

class WyhiOSStudyViewController: UITabBarController {
    var indexFlag = 0 //记录上一次点击tabbar， 初始化 = 0
    static let `default` = WyhiOSStudyViewController()
    var home : HomeViewController!
    var study : StudyViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        home = HomeViewController()
        home.title = "首页"
        home.tabBarItem.image = UIImage(named: "normalbar")?.withRenderingMode(.alwaysOriginal)
        home.tabBarItem.selectedImage = UIImage(named: "homebar")?.withRenderingMode(.alwaysOriginal)
        home.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor(displayP3Red: 186 / 255, green: 186 / 255, blue: 194 / 255, alpha: 1)], for: .normal)
        home.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor(displayP3Red: 235 / 255, green: 65 / 255, blue: 146 / 255, alpha: 1)], for: .selected)
        let homeNav = UINavigationController(rootViewController: home)
        
        study = StudyViewController()
        study.title = "学习"
        study.tabBarItem.image = UIImage(named: "normalbar")?.withRenderingMode(.alwaysOriginal)
        study.tabBarItem.selectedImage = UIImage(named: "studybar")?.withRenderingMode(.alwaysOriginal)
        study.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor(displayP3Red: 186 / 255, green: 186 / 255, blue: 194 / 255, alpha: 1)], for: .normal)
        study.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor(displayP3Red: 80 / 255, green: 192 / 255, blue: 213 / 255, alpha: 1)], for: .selected)
        let studyNav = UINavigationController(rootViewController: study)
        
       
        self.view.backgroundColor = .white
        self.viewControllers = [homeNav, studyNav]
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
