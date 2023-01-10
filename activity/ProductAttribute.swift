//
//  ProductAttribute.swift
//  activity
//
//  Created by dexiong on 2023/1/10.
//

import Foundation
import ActivityKit

struct LiveActivityAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var value: Int
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
    var image: String
    var price: String
}
