//
//  ShareButton.swift
//  StackOverFlow-48554026
//
//  Created by Areeb Sabzposh on 1/31/18.
//  Copyright © 2018 Areeb Sabzposh. All rights reserved.
//

import UIKit

class ShareButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        // Set title, background color, etc.
        let imageView = UIImageView(frame: frame)
        let image = UIImage(named: "p.jpeg")
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        self.addSubview(imageView)
        self.addTarget(self, action: #selector(internalButtonPressed), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @objc func internalButtonPressed() {
        let url = NSURL.init(string: "http://www.probe-lab.com")
        let items:[Any] = [url!]
        let activityViewController = UIActivityViewController(activityItems: items, applicationActivities: nil)
        activityViewController.excludedActivityTypes = [.print,
                                                        .assignToContact,.saveToCameraRoll,.addToReadingList,.openInIBooks]
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController?.present(activityViewController, animated: true, completion: nil)
    }
}
