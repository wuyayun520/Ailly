
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_countName:[UInt8] = [0x95,0x92,0x95,0x88,0xd4,0x9f,0x93,0x98,0x99,0x8e,0xc6,0xd5,0xdc,0x94,0x9d,0x8f,0xdc,0x92,0x93,0x88,0xdc,0x9e,0x99,0x99,0x92,0xdc,0x95,0x91,0x8c,0x90,0x99,0x91,0x99,0x92,0x88,0x99,0x98]

private func renderAccept(manager num: UInt8) -> UInt8 {
    return num ^ 252
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LengthView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

//: protocol GiftAnimatItemViewDelegate: NSObject {
protocol UpViewDelegate: NSObject {
    // 资源下载成功，开始播放动效
    //: func giftEffectItemView(effectItemView: TalkingGiftAnimatItemView, success: Bool)
    func futurism(effectItemView: LengthView, success: Bool)

    // 资源下载失败 或 播放完成
    //: func didFinishAnimationOfGift(effectItemView: TalkingGiftAnimatItemView)
    func thanGesture(effectItemView: LengthView)
}

/// 礼物动画效果的加载类，基类，定义了基础的开始，停止，清除的方法；具体动效根据effectMsgModel信息加载对应子类
//: class TalkingGiftAnimatItemView: UIView {
class LengthView: UIView {
    //: var effectMsgModel: TalkingAnimatMsgModel?
    var effectMsgModel: CellModelHandyJSON?
    //: var giftEffectModel: TalkingGiftAnimatModel?
    var giftEffectModel: UpToTransformable?
    //: open weak var delegate: GiftAnimatItemViewDelegate?
    open weak var delegate: UpViewDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_countName.map{renderAccept(manager: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: func startAnimating() {
    func hold() {}

    //: func stopAnimating() {
    func imageAnimating() {}

    //: func cleanAnimating() {
    func languageUnit() {}

    //: func pauseAnimation() {
    func dismissAt() {}

    //: func resumeAnimation() ->Bool {
    func tapRow() -> Bool {
        //: return false
        return false
    }

    //: func func__filePathOfName(fileName: String) ->String {
    func getToTitle(fileName: String) -> String {
        //: return TalkingGiftAnimatTool.shared.filePathOfNameWithAnimatMsgModel(fileName: fileName, model: self.effectMsgModel!)
        return WithShadowAnimatTool.shared.fileVideo(fileName: fileName, model: self.effectMsgModel!)
    }
}
