//
//  ViewController.swift
//  StackOverFlow-48554026
//
//  Created by Areeb Sabzposh on 1/31/18.
//  Copyright © 2018 Areeb Sabzposh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let item = UIBarButtonItem(title: "Share", style: .plain, target: self, action: #selector(buttonPressed))
        self.navigationItem.rightBarButtonItem = item
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func buttonPressed() {
        let url = NSURL.init(string: "http://www.probe-lab.com")
        let items:[Any] = [url!]
        let activityViewController = UIActivityViewController(activityItems: items, applicationActivities: nil)
        activityViewController.excludedActivityTypes = [.print,
                                                        .assignToContact,.saveToCameraRoll,.addToReadingList,.openInIBooks]
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController?.present(activityViewController, animated: true, completion: nil)
    }


}

