//
//  HomeViewController.swift
//  WyhiOSStudy
//
//  Created by 王乙涵 on 2019/10/8.
//  Copyright © 2019 王乙涵. All rights reserved.
//

import UIKit
import WebKit
enum WebType {
    case doc
    case pdf
    case png
    case mp4
    func typestr() -> String {
        switch self {
        case .doc:
            return "docx"
        case .pdf:
            return "pdf"
        case .png:
            return "png"
        case .mp4:
            return "mp4"
        }
    }
}
class HomeViewController: UIViewController {
    var webview : WKWebView!
    var pngType : iOSTreeType = .UI
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let js = "var meta = document.createElement('meta'); meta.setAttribute('name', 'viewport'); meta.setAttribute('content', 'width=device-width'); document.getElementsByTagName('head')[0].appendChild(meta);"
        let script = WKUserScript(source: js, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
        let usercontentcontroller = WKUserContentController()
        usercontentcontroller.addUserScript(script)
        let config = WKWebViewConfiguration()
        config.userContentController = usercontentcontroller
        webview = WKWebView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), configuration: config)
        self.view.addSubview(webview)
        self.load(pathName: pngType.treePng(), type: .png)
    }
    
    func load(pathName:String, type:WebType) {
        if let path = Bundle.main.path(forResource: pathName, ofType: type.typestr()) {
            let url = URL(fileURLWithPath: path)
            webview.loadFileURL(url, allowingReadAccessTo: url)
        }
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
