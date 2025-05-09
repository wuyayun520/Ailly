
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewNameShowValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "group_someoneatme" :*/
fileprivate let str_modeData:String = "group_quit remove pop height hidden"
fileprivate let str_allData:String = "oneacolorme"

/*: "Someone@ me" :*/
fileprivate let str_strikeValue:String = "Someone@gift input if"
fileprivate let str_errorContent:String = "make view nor self me"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CounteractionThen.swift
//  AbroadTalking
//
//  Created by young on 2023/4/11.
//

//: import UIKit
import UIKit

//: class TalkingSomeoneAtMeView: UIView {
class CounteractionThen: UIView {
    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        counteractionPosition()
        //: setupSubViewsConstraint()
        swaddlingClothes()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewNameShowValue.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var mentionBtn: UIButton = {
    lazy var mentionBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 15)
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "group_someoneatme"), for: .normal)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_modeData.prefix(6)) + "some" + str_allData.replacingOccurrences(of: "color", with: "t"))), for: .normal)
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "group_someoneatme"), for: .highlighted)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_modeData.prefix(6)) + "some" + str_allData.replacingOccurrences(of: "color", with: "t"))), for: .highlighted)
        //: btn.setTitle("Someone@ me".localized, for: .normal)
        btn.setTitle((String(str_strikeValue.prefix(8)) + String(str_errorContent.suffix(3))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.msgTipsColor(), for: .normal)
        btn.setTitleColor(UIColor.trim(), for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingSomeoneAtMeView {
extension CounteractionThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func counteractionPosition() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(mentionBtn)
        self.addSubview(mentionBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func swaddlingClothes() {
        //: mentionBtn.snp.makeConstraints { make in
        mentionBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
