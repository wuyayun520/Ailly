
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modeData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "pic" :*/
fileprivate let str_makeKitValue:[Character] = ["p","i","c"]

/*: "url" :*/
fileprivate let str_toShowData:String = "cornerl"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SocietalHeaderView.swift
//  BotanicBreeze
//
//  Created by Charlotte on 2024/4/7.
//

//: import UIKit
import UIKit

//: class SocialHeaderView: UICollectionReusableView {
class SocietalHeaderView: UICollectionReusableView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = CGRectMake(0, 0, ScreenWidth, SocialHeaderView.getSelfHeight())
        self.frame = CGRectMake(0, 0, kLet_cameraValue, SocietalHeaderView.themeReceive())
        //: basicUI()
        targetRecord()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modeData.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var hostBtn: UIButton = {
    private lazy var hostBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = EqualThen.share.appConfigMode.homeOpAds.first
        let dic = EqualThen.share.appConfigMode.homeOpAds.first
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.dataBack(urlStr: dic?[(String(str_makeKitValue))] ?? "")
        //: btn.addTarget(self, action: #selector(hostBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(exaggerateClick), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var centerBtn: UIButton = {
    private lazy var centerBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = EqualThen.share.appConfigMode.homeOpAds.last
        let dic = EqualThen.share.appConfigMode.homeOpAds.last
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.dataBack(urlStr: dic?[(String(str_makeKitValue))] ?? "")
        //: btn.addTarget(self, action: #selector(centerBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(contentUser), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension SocialHeaderView {
extension SocietalHeaderView {
    //: @objc private func hostBtnClick() {
    @objc private func exaggerateClick() {
        //: let dic = EqualThen.share.appConfigMode.homeOpAds.first
        let dic = EqualThen.share.appConfigMode.homeOpAds.first
        //: EditTextThen.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        EditTextThen.share.bileOf(urlStr: dic?[(str_toShowData.replacingOccurrences(of: "corner", with: "ur"))] ?? "")
    }

    //: @objc private func centerBtnClick() {
    @objc private func contentUser() {
        //: let dic = EqualThen.share.appConfigMode.homeOpAds.last
        let dic = EqualThen.share.appConfigMode.homeOpAds.last
        //: EditTextThen.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        EditTextThen.share.bileOf(urlStr: dic?[(str_toShowData.replacingOccurrences(of: "corner", with: "ur"))] ?? "")
    }
}

// MARK: - Layout

//: extension SocialHeaderView {
extension SocietalHeaderView {
    //: class func getSelfHeight() -> CGFloat {
    class func themeReceive() -> CGFloat {
        //: var sheight = 0.0
        var sheight = 0.0
        //: if EqualThen.share.loginUserMode.sex == Gender.female.rawValue && EqualThen.share.appConfigMode.homeOpAds.count > 1 {
        if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue && EqualThen.share.appConfigMode.homeOpAds.count > 1 {
            //: sheight += 76.0
            sheight += 76.0
        }
        //: return sheight
        return sheight
    }

    //: private func basicUI() {
    private func targetRecord() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: if EqualThen.share.loginUserMode.sex == Gender.female.rawValue, EqualThen.share.appConfigMode.homeOpAds.count > 0 {
        if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue, EqualThen.share.appConfigMode.homeOpAds.count > 0 {
            //: self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width-26-8)/2, height: 64)
            self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
            //: self.centerBtn.frame = CGRect(x: self.width/2 + 4, y: 12, width: (self.width-26-8)/2, height: 64)
            self.centerBtn.frame = CGRect(x: self.width / 2 + 4, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
        }
    }
}
