//
//  ViewController.swift
//  web-request-test
//
//  Created by Ross Russell on 8/29/16.
//  Copyright © 2016 com.orangemelt. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
  
  var webView: WKWebView!
  
  @IBOutlet weak var loadGossip: UIButton!
  
  
  @IBAction func loadSteak(sender: AnyObject) {
    loadRequest("https://en.wikipedia.org/wiki/Steak")
  }
  
  
  @IBAction func loadGos(sender: AnyObject) {
    loadRequest("http://radaronline.com/")
  }
  
  
  @IBAction func loadSwift(sender: AnyObject) {
    loadRequest("https://developer.apple.com/swift/blog/")
  }
  
  
  func loadRequest( urlStr: String ){
    
    let url = NSURL(string: urlStr)
    let request = NSURLRequest(URL: url!)
    webView.loadRequest(request)
  }
  
  
  @IBOutlet weak var container: UIView!
  
  //called before constraints are applied?@!#
  override func viewDidLoad() {
    super.viewDidLoad()
    webView = WKWebView()
    container.addSubview(webView)
}
  
  override func viewDidAppear(animated: Bool) {
    let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
    webView.frame = frame
    let urlStr = "https://developer.apple.com/swift/blog/"
    let url = NSURL(string: urlStr)
    let request = NSURLRequest(URL: url!)
    webView.loadRequest(request)
  }

}

