//
//  WebViewController.swift
//  WebViewAppSample
//
//  Created by しょうぽん on 2016/11/15.
//  Copyright © 2016年 Oishi. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate{
    @IBOutlet weak var webView: UIWebView!
    
    let initURL = NSURL(string: "https://github.com/shoponpon")

    /*画面表示時に最初に呼ばれる*/
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.webView.delegate = self
        
        let request = NSURLRequest(URL: initURL!)
        self.webView.loadRequest(request)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
