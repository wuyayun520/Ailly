
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_messageValue:[UInt8] = [0x16,0x11,0x16,0xb,0x57,0x1c,0x10,0x1b,0x1a,0xd,0x45,0x56,0x5f,0x17,0x1e,0xc,0x5f,0x11,0x10,0xb,0x5f,0x1d,0x1a,0x1a,0x11,0x5f,0x16,0x12,0xf,0x13,0x1a,0x12,0x1a,0x11,0xb,0x1a,0x1b]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AddThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/16.
//

//: import UIKit
import UIKit

//: typealias ShowUserInfoViewBlock = (_ userID: Int) -> Void
typealias ShowUserInfoViewBlock = (_ userID: Int) -> Void

//: class TalkingGiftTrackView: UIView {
class AddThen: UIView {
    //: var giftSendItem = [TalkingGiftNumArrModel()]
    var giftSendItem = [SkinArrModel()]
    //: var  showUserInfoViewBlock: ShowUserInfoViewBlock!
    var showUserInfoViewBlock: ShowUserInfoViewBlock!

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.textSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_messageValue.map{$0^127}, encoding: .utf8)!)
    }

    //: init(frame: CGRect, giftMsgDic: Dictionary<String, Any?>) {
    init(frame: CGRect, giftMsgDic _: [String: Any?]) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
}

//: extension TalkingGiftTrackView {
extension AddThen {
    //: override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
    override func hitTest(_ point: CGPoint, with _: UIEvent?) -> UIView? {
        //: for  subview in self.subviews {
        for subview in self.subviews {
            //: let itemview: TalkingGiftTrackItemView = subview as! TalkingGiftTrackItemView
            let itemview: SumenanceReactiveCompatible = subview as! SumenanceReactiveCompatible
            //: let point = itemview.convert(point, from: self)
            let point = itemview.convert(point, from: self)
            //: if #available(iOS 11.0, *) {
            if #available(iOS 11.0, *) {
                //: if itemview.avatarImage.frame.contains(point) {
                if itemview.avatarImage.frame.contains(point) {
                    //: EditTextThen.share.func__pushToUserDetailVC(uid: "\(itemview.giftMsgModel.fromUid ?? 0)")
                    EditTextThen.share.soulAge(uid: "\(itemview.giftMsgModel.fromUid ?? 0)")
                    //: break
                    break
                }
                //: } else {
            } else {
                // Fallback on earlier versions
            }
        }

        //: return nil
        return nil
    }

    //: func func__didReceiveGiftMsgModel(model: TalkingGiftMsgAnimatModel) {
    func lineEffect(model: StatusMeasurable) {
        //  1.相同礼物时则连击
        //: for  subview in self.subviews {
        for subview in self.subviews {
            //: let itemview: TalkingGiftTrackItemView = subview as! TalkingGiftTrackItemView
            let itemview: SumenanceReactiveCompatible = subview as! SumenanceReactiveCompatible
            //: if isDoubleHitBetween(giftMsgModel: itemview.giftMsgModel, withGiftMsgModel: model) {
            if countForModel(giftMsgModel: itemview.giftMsgModel, withGiftMsgModel: model) {
                //: itemview.comboHitWith(giftMsgModel: model)
                itemview.tagVoice(giftMsgModel: model)
                //: itemview.setGiftMsgModel(model: model)
                itemview.pushFormat(model: model)
                //: return
                return
            }
        }

        // 2.添加新的礼物
        //: for index in 0...2 {
        for index in 0 ... 2 {
            //: let tag = 100+index
            let tag = 100 + index
            //: let subView: TalkingGiftTrackItemView? = self.viewWithTag(tag) as! TalkingGiftTrackItemView?
            let subView: SumenanceReactiveCompatible? = self.viewWithTag(tag) as! SumenanceReactiveCompatible?
            //: if subView == nil {
            if subView == nil {
                //: self.addNewGiftDanumWith(giftMsgModel: model, atIndex: index)
                self.flinders(giftMsgModel: model, atIndex: index)
                //: return
                return
            }
        }

        //  3.三个位置都有，
        //: for index in 0...2 {
        for index in 0 ... 2 {
            //: let tag = 100+index
            let tag = 100 + index
            //: let subView: TalkingGiftTrackItemView = self.viewWithTag(tag) as! TalkingGiftTrackItemView
            let subView: SumenanceReactiveCompatible = self.viewWithTag(tag) as! SumenanceReactiveCompatible
            //: if index == 0 {
            if index == 0 {
                //: subView.animateHide()
                subView.tickFor()
            }
            //: if index == 1 || index == 2 {
            if index == 1 || index == 2 {
                //: let i = index == 1 ? 0: 1
                let i = index == 1 ? 0 : 1
                //: let subView1: TalkingGiftTrackItemView = self.viewWithTag(tag) as! TalkingGiftTrackItemView
                let subView1: SumenanceReactiveCompatible = self.viewWithTag(tag) as! SumenanceReactiveCompatible
                //: var frame = subView.frame
                var frame = subView.frame
                //: frame.origin.y = CGFloat(i*60)
                frame.origin.y = CGFloat(i * 60)
                //: subView1.tag = 100 + i
                subView1.tag = 100 + i
                //: subView1.animationViewToTop(frame: frame)
                subView1.alongTable(frame: frame)

                //: if index == 2 {
                if index == 2 {
                    //: if subView.showAnimationDone {
                    if subView.showAnimationDone {
                        //: self.addNewGiftDanumWith(giftMsgModel: model, atIndex: index)
                        self.flinders(giftMsgModel: model, atIndex: index)
                    }
                }
            }
        }
    }

    //: func isDoubleHitBetween(giftMsgModel: TalkingGiftMsgAnimatModel, withGiftMsgModel: TalkingGiftMsgAnimatModel) -> (Bool) {
    func countForModel(giftMsgModel: StatusMeasurable, withGiftMsgModel: StatusMeasurable) -> (Bool) {
        //: if (giftMsgModel.pid==withGiftMsgModel.pid &&
        if giftMsgModel.pid == withGiftMsgModel.pid,
           //: giftMsgModel.fromUid == withGiftMsgModel.fromUid &&
           giftMsgModel.fromUid == withGiftMsgModel.fromUid,
           //: giftMsgModel.num == withGiftMsgModel.num) {
           giftMsgModel.num == withGiftMsgModel.num
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    //: func addNewGiftDanumWith(giftMsgModel: TalkingGiftMsgAnimatModel, atIndex: Int ) {
    func flinders(giftMsgModel: StatusMeasurable, atIndex: Int) {
        //: var startX = 0
        var startX = 0
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: startX = -Int(ScreenWidth)-15
            startX = -Int(kLet_cameraValue) - 15
        }
        //: let frame = CGRect.init(x: startX, y: atIndex * 60, width: Int(ScreenWidth), height: 60)
        let frame = CGRect(x: startX, y: atIndex * 60, width: Int(kLet_cameraValue), height: 60)
        //: let subView =  TalkingGiftTrackItemView.init(frame: frame)
        let subView = SumenanceReactiveCompatible(frame: frame)
        //: subView.tag                     = 100 + atIndex
        subView.tag = 100 + atIndex
//        subView.showUserInfoViewBlock   = self.showUserInfoViewBlock
        //: subView.giftSendItem            = self.giftSendItem
        subView.giftSendItem = self.giftSendItem
        //: subView.setGiftMsgModel(model: giftMsgModel)
        subView.pushFormat(model: giftMsgModel)
        //: self.addSubview(subView)
        self.addSubview(subView)

        //: subView.showGiftAnimate(model: giftMsgModel, animate: true)
        subView.doGap(model: giftMsgModel, animate: true)
    }
}

//: extension TalkingGiftTrackView {
extension AddThen {
    // 添加视图
    //: private func setupSubviews() {
    private func textSubviews() {}
}
