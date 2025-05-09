
//: Declare String Begin

/*: "JDStatusBarStyleDefault" :*/
fileprivate let str_sampleValue:String = "JDStamodel for"
fileprivate let str_shouldData:String = "if view heightSt"
fileprivate let str_atName:String = "raw self return subject databaseyleD"

/*: "JDStatusBarStyleError" :*/
fileprivate let str_equalData:[Character] = ["J","D","S","t","a","t","u","s","B","a","r","S","t","y","l","e"]
fileprivate let str_progressName:String = "else medium adjustmentError"

/*: "JDStatusBarStyleSuccess" :*/
fileprivate let str_theValue:[Character] = ["J","D","S","t","a","t","u","s","B","a","r","S","t","y","l","e"]
fileprivate let str_requestValue:[Character] = ["S"]
fileprivate let str_picName:String = "UCCESS"

/*: "2AB572" :*/
fileprivate let str_clearText:[Character] = ["2","A","B","5","7","2"]

/*: "F05E5E" :*/
fileprivate let str_colorText:String = "Fcamera5E5E"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingTipExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: import JDStatusBarNotification
import JDStatusBarNotification

//: extension NSObject {
extension NSObject {
    //: @objc public func func__showStatusBarNormrlMsg(showMsg: String) {
    @objc public func constraintMsg(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleDefault")
        self.formationView(showMsg: showMsg, dismissTime: 1.5, styleName: (String(str_sampleValue.prefix(5)) + "tusBar" + String(str_shouldData.suffix(2)) + String(str_atName.suffix(4)) + "efault"))
    }

    //: @objc public func func__showStatusBarErrorMsg(showMsg: String) {
    @objc public func oversight(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleError")
        self.formationView(showMsg: showMsg, dismissTime: 1.5, styleName: (String(str_equalData) + String(str_progressName.suffix(5))))
    }

    //: func func__showStatusBarSuccessMsg(showMsg: String) {
    func fileFirst(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleSuccess")
        self.formationView(showMsg: showMsg, dismissTime: 1.5, styleName: (String(str_theValue) + String(str_requestValue) + str_picName.lowercased()))
    }

    //: func func__showStatusBarMsg(showMsg: String, dismissTime: TimeInterval, styleName: String) {
    func formationView(showMsg: String, dismissTime: TimeInterval, styleName: String) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: DispatchQueue.once(token: DispatchQueueToken_StatusBarInit, block: {
            DispatchQueue.addOnLocation(token: kLet_showData, block: {
                //: NotificationPresenter.shared().updateDefaultStyle { style in
                NotificationPresenter.shared().updateDefaultStyle { style in
                    //: style.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                    style.backgroundStyle.backgroundColor = UIColor(hex: (String(str_clearText)))!
                    //: style.textStyle.textColor = .white
                    style.textStyle.textColor = .white
                    //: style.textStyle.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
                    style.textStyle.font = UIFont.pingfang(type: .Regular, fontSize: 14)
                    //: return style
                    return style
                }
                //: NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                    //: if styleName == "JDStatusBarStyleError" {
                    if styleName == (String(str_equalData) + String(str_progressName.suffix(5))) {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "F05E5E")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (str_colorText.replacingOccurrences(of: "camera", with: "0")))!
                        //: }else {
                    } else {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (String(str_clearText)))!
                    }
                    //: return stype
                    return stype
                }
                //: })
            })

            //: if NotificationPresenter.shared().isVisible() {
            if NotificationPresenter.shared().isVisible() {
                //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                    NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                }
                //: }else {
            } else {
                //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
            }
        }
    }
}
