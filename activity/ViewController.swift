//
//  ViewController.swift
//  activity
//
//  Created by dexiong on 2023/1/10.
//

import UIKit
import WidgetKit
import ActivityKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let state = LiveActivityAttributes.ContentState(value: 1)
        
        let attributes = LiveActivityAttributes(name: "苹果", image: "iphone.homebutton", price: "1001.1")
        
        do {
            let req = try Activity.request(attributes: attributes, contentState: state)
            UserDefaults.standard.set(req.id, forKey: "activity_key")
            UserDefaults.standard.synchronize()
        } catch {
            print(error)
        }
    }

}

