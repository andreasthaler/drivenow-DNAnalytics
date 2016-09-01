//
//  ViewController.swift
//  DNAnalytics
//
//  Created by Andreas Thaler on 22/08/16.
//  Copyright © 2016 Andreas Thaler. All rights reserved.
//

import Cocoa
import WebKit

class ThirdViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        load()
        var Timer=NSTimer.scheduledTimerWithTimeInterval(120.0, target: self, selector: Selector("load"), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
    }
    
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    
    @IBOutlet weak var webView: WebView!
    
    
    
    func load() {
        let urlString = "https://analytics.google.com/analytics/web/#realtime/rt-event/a75279701w113642802p118718202/%3Ffilter.list%3D40%3D%3DdnWsError%3B/"
        self.webView.mainFrame.loadRequest(NSURLRequest(URL: NSURL(string: urlString)!))
        
    }
}
