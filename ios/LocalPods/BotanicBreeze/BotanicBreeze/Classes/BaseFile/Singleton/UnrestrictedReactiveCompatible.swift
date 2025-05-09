
//: Declare String Begin

/*: "launchFromApns" :*/
fileprivate let str_toTitle:String = "lactualnc"
fileprivate let str_selectedName:[Character] = ["n","s"]

/*: "type" :*/
fileprivate let str_mobileTitle:String = "tylive"

/*: "fromUid" :*/
fileprivate let str_currentData:String = "fromUiflow result true send"
fileprivate let str_imageValue:[Character] = ["d"]

/*: "roomId" :*/
fileprivate let str_indexTitle:String = "extension lite birth valueroomId"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UnrestrictedReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/26.
//

//: import UIKit
import UIKit

// 推送跳转
//: enum ANPSPushType: String {
enum SpringScalarLiteral: String {
    //: case IM = "6"           // 私聊页
    case IM = "6" // 私聊页
    //: case Chat_Room = "7"    // 聊天室
    case Chat_Room = "7" // 聊天室
    //: case Calling = "11"     // 音视频通话
    case Calling = "11" // 音视频通话
    //: case User_Info = "12"   // 用户详情
    case User_Info = "12" // 用户详情
}

//: class TalkingAPNSManager: NSObject {
class UnrestrictedReactiveCompatible: NSObject {
    //: var APNSUserInfoStr = ""
    var APNSUserInfoStr = ""
    //: @objc dynamic var launchFromApns = false
    @objc dynamic var launchFromApns = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: @objc static let share = TalkingAPNSManager()
    @objc static let share = UnrestrictedReactiveCompatible()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func func__listenAPNSInit() {
    func halfError() {
        //: self.rx.observeWeakly(Bool.self, "launchFromApns")
        self.rx.observeWeakly(Bool.self, (str_toTitle.replacingOccurrences(of: "actual", with: "au") + "hFromAp" + String(str_selectedName)))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: self.func__actionWithPushInfo()
                    self.trip()
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: func func__actionWithPushInfo() {
    func trip() {
        //: if !APNSUserInfoStr.isEmptyString {
        if !APNSUserInfoStr.isEmptyString {
            //: let json = JSON(parseJSON: APNSUserInfoStr)
            let json = JSON(parseJSON: APNSUserInfoStr)
            //: let type = json["type"].stringValue
            let type = json[(str_mobileTitle.replacingOccurrences(of: "live", with: "pe"))].stringValue
            //: let apnsType = ANPSPushType(rawValue: type)
            let apnsType = SpringScalarLiteral(rawValue: type)
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: switch(apnsType) {
                switch apnsType {
                //: case .IM:
                case .IM:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json[(String(str_currentData.prefix(6)) + String(str_imageValue))].stringValue
                    //: EditTextThen.share.func__pushToPriveteChatVC(chatID: fromUid)
                    EditTextThen.share.fullMoon(chatID: fromUid)

                //: case .Chat_Room:
                case .Chat_Room:
                    //: let roomId = json["roomId"].stringValue
                    let roomId = json[(String(str_indexTitle.suffix(6)))].stringValue
                    //: EditTextThen.share.func__pushToGroupChat(groupId: roomId)
                    EditTextThen.share.turn(groupId: roomId)

                //: case .Calling:
                case .Calling:
                    //: break
                    break

                //: case .User_Info:
                case .User_Info:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json[(String(str_currentData.prefix(6)) + String(str_imageValue))].stringValue
                    //: EditTextThen.share.func__pushToUserDetailVC(uid: fromUid)
                    EditTextThen.share.soulAge(uid: fromUid)

                //: case .none:
                case .none:
                    //: break
                    break
                }

                // 跳转后还原数据
                //: TalkingAPNSManager.share.APNSUserInfoStr = ""
                UnrestrictedReactiveCompatible.share.APNSUserInfoStr = ""
                //: TalkingAPNSManager.share.launchFromApns = false
                UnrestrictedReactiveCompatible.share.launchFromApns = false
            }
        }
    }
}
