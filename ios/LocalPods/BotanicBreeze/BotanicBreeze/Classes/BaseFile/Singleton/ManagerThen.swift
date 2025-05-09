
//: Declare String Begin

/*: "action" :*/
fileprivate let str_topValue:[UInt8] = [0xcd,0xcf,0xd8,0xc5,0xc3,0xc2]

private func errorManager(outside num: UInt8) -> UInt8 {
    return num ^ 172
}

/*: "category" :*/
fileprivate let str_imageStyleData:[UInt8] = [0xfc,0xfe,0xeb,0xfa,0xf8,0xf0,0xed,0xe6]

private func heightClassPath(with num: UInt8) -> UInt8 {
    return num ^ 159
}

/*: "label" :*/
fileprivate let str_normalName:String = "labtipl"

/*: "user_action" :*/
fileprivate let str_cameraValue:String = "comment add manager any leveluser_ac"
fileprivate let str_userDataTimeTitle:String = "tbackgroundon"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerThen.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2025/4/1.
//

//: import FirebaseAnalytics
import FirebaseAnalytics

//: import UIKit
import UIKit

//: class FirebaseAnalyticsManager: NSObject {
class ManagerThen: NSObject {
    //: static let share = FirebaseAnalyticsManager()
    static let share = ManagerThen()
    //: private override init() {}
    override private init() {}

    // MARK: - 用户属性

    //: func setUserProperty(name: String, value: String) {
    func individualBlock(name: String, value: String) {
        //: Analytics.setUserProperty(value, forName: name)
        Analytics.setUserProperty(value, forName: name)
    }

    // MARK: - 用户行为追踪

    //: func trackUserAction(action: String, category: String, label: String? = nil) {
    func addQuit(action: String, category: String, label: String? = nil) {
        //: var parameters: [String: Any] = [
        var parameters: [String: Any] = [
            //: "action": action,
            String(bytes: str_topValue.map{errorManager(outside: $0)}, encoding: .utf8)!: action,
            //: "category": category,
            String(bytes: str_imageStyleData.map{heightClassPath(with: $0)}, encoding: .utf8)!: category,
        ]

        //: if let label = label {
        if let label = label {
            //: parameters["label"] = label
            parameters[(str_normalName.replacingOccurrences(of: "tip", with: "e"))] = label
        }

        //: logEvent(name: "user_action", parameters: parameters)
        migration(name: (String(str_cameraValue.suffix(7)) + str_userDataTimeTitle.replacingOccurrences(of: "background", with: "i")), parameters: parameters)
    }

    // MARK: - 页面访问追踪

    //: func trackScreenView(screenName: String, screenClass: String) {
    func pathOf(screenName: String, screenClass: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventScreenView,
            AnalyticsEventScreenView,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterScreenName: screenName,
                AnalyticsParameterScreenName: screenName,
                //: AnalyticsParameterScreenClass: screenClass,
                AnalyticsParameterScreenClass: screenClass,
                //: ])
            ]
        )
    }

    // MARK: - 事件追踪

    //: func logEvent(name: String, parameters: [String: Any]? = nil) {
    func migration(name: String, parameters: [String: Any]? = nil) {
        //: Analytics.logEvent(name, parameters: parameters)
        Analytics.logEvent(name, parameters: parameters)
    }

    // MARK: - 内购事件追踪

    //: func trackPurchase(payType: String, price: Double, currency: String) {
    func toInstance(payType: String, price: Double, currency: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventPurchase,
            AnalyticsEventPurchase,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterPaymentType: payType,
                AnalyticsParameterPaymentType: payType,
                //: AnalyticsParameterPrice: price,
                AnalyticsParameterPrice: price,
                //: AnalyticsParameterCurrency: currency,
                AnalyticsParameterCurrency: currency,
                //: ])
            ]
        )
    }
}
