//
//  LiveActivityLiveActivity.swift
//  LiveActivity
//
//  Created by dexiong on 2023/1/10.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct LiveActivityLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: LiveActivityAttributes.self) { context in
            // Lock screen/banner UI goes here
            HStack {
                VStack {
                    Text(context.attributes.name)
                        .foregroundColor(.red)
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    Text(context.attributes.price)
                        .foregroundColor(.orange)
                        .font(.title3)
                        .fontWeight(.regular)
                }.lineSpacing(50)
                Spacer()
                VStack {
                    Image(systemName: context.attributes.image)
                        .resizable()
                        .frame(width: 44, alignment: .trailing)// 只设置frame无效，需先设置resizable
                        .foregroundColor(.black)
                    Spacer()
                    Link("立即购买", destination: URL(string: "https://www.baidu.com")!).foregroundColor(.blue).fontWeight(.medium).fontWidth(.expanded)
                }
            }
            .padding(.init(top: 20, leading: 32, bottom: 20, trailing: 32))
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)
            
        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Image(systemName: context.attributes.image)
                        .resizable()
                        .frame(width: 32, height: 32, alignment: .leading)
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text(context.attributes.name)
                    Spacer()
                    Text(context.attributes.price).foregroundColor(.red)
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Link("立即购买", destination: URL(string: "https://www.baidu.com")!).foregroundColor(.orange).backgroundStyle(.blue.gradient)
                    // more content
                }
            } compactLeading: {
                Image(systemName: context.attributes.image).resizable().frame(width: 18)
            } compactTrailing: {
                Text(context.attributes.name)
            } minimal: {
                Image(systemName: context.attributes.image)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}
