//
//  ViewController.swift
//  YouTubeVidAppSplash
//
//  Created by Maximilian Huprich on 9/13/20.
//  Copyright © 2020 teamhupma. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet var ytWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        getVideo(videoCode: "C0Z6tJdeQ_E")
        
    }

    func getVideo(videoCode:String) {
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        ytWebView.load(URLRequest(url: url!))
        
        if url == nil {
            print("Video not Found")
        }
        
    }
    
}

