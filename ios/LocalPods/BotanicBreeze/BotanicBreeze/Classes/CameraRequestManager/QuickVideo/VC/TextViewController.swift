
//: Declare String Begin

/*: "#33005B" :*/
fileprivate let str_videoName:[Character] = ["#","3","3","0","0","5","B"]

/*: "get json error" :*/
fileprivate let str_normalText:[Character] = ["g","e","t"," ","j","s","o","n"," ","e","r","r","o","r"]

/*: "btn_live_mini_nor" :*/
fileprivate let str_coinData:String = "btn_ltarget icon view"
fileprivate let str_eventTitle:String = "ive_mmodel background model succeed vertical"

/*: "icon_views_number" :*/
fileprivate let str_backTitle:String = "iusern"
fileprivate let str_logData:String = "s_numeffect title make"
fileprivate let str_sexAppModelName:String = "bbeanr"

/*: "Random Video" :*/
fileprivate let str_maleValue:String = "on main let take classRandom"
fileprivate let str_modelTitle:String = " Videomessage text"

/*: "Accept Video Match Call" :*/
fileprivate let str_segmentData:[Character] = ["A","c","c","e","p","t"," ","V","i","d","e","o"," ","M","a","t","c","h"," "]
fileprivate let str_makeText:String = "touch trueCall"

/*: "%@ chatting" :*/
fileprivate let str_renderName:[Character] = ["%","@"," ","c","h","a","t","t","i","n","g"]

/*: "chattingNum" :*/
fileprivate let str_modelValue:[Character] = ["c","h"]
fileprivate let str_officialPlayData:String = "leadingtti"

/*: "type" :*/
fileprivate let str_kitValue:[UInt8] = [0xa,0xf,0x6,0xfb]

fileprivate func sendSelf(view num: UInt8) -> UInt8 {
    let value = Int(num) + 106
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "randomVideo" :*/
fileprivate let str_modelDownText:String = "radddo"
fileprivate let str_roundValue:[Character] = ["e","o"]

/*: "-1" :*/
fileprivate let str_clearValue:[Character] = ["-","1"]

/*: "value" :*/
fileprivate let str_resultStartName:String = "valmodele"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextViewController.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2024/8/16.
//

//: import UIKit
import UIKit

//: class TalkingFemaleStaticRandomVideoVC: TalkingBaseViewController {
class TextViewController: SeamViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true
        //: setupSubviews()
        phoneMessage()
        //: setupSubViewsConstraint()
        positionConstraint()
        //: req_videoMatchCheck()
        thickSkin()
    }

    // MARK: - Lazy Load

    //: private lazy var renderView: UIView = {
    private lazy var renderView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#33005B")
        v.backgroundColor = UIColor(hex: (String(str_videoName)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Female_Randomvideo_Bg)
        let url = ToEffectTool.default.alongError(type: .Female_Randomvideo_Bg)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                // 刷新放在此处目的：是为了进入页面时，保证加载完svga资源再刷新
                //: self.refreshUI()
                self.getWeaving()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_normalText)))
        }
        //: return player
        return player
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_live_mini_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_coinData.prefix(5)) + String(str_eventTitle.prefix(5)) + "ini_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(jumpSub), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chattingNumBtn: TalkingButton = {
    private lazy var chattingNumBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton()
        let btn = ProgressTalkingButton()
        //: btn.setImage(UIImage.eponymUp(name: "icon_views_number"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (str_backTitle.replacingOccurrences(of: "user", with: "co") + "_view" + String(str_logData.prefix(5)) + str_sexAppModelName.replacingOccurrences(of: "bean", with: "e"))), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "icon_views_number"), for: .disabled)
        btn.setImage(UIImage.eponymUp(name: (str_backTitle.replacingOccurrences(of: "user", with: "co") + "_view" + String(str_logData.prefix(5)) + str_sexAppModelName.replacingOccurrences(of: "bean", with: "e"))), for: .disabled)
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        btn.titleLabel?.font = UIFont.pingfang(type: .Regular, fontSize: 15)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var bottomView: UIView = {
    private lazy var bottomView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white.withAlphaComponent(0.15)
        v.backgroundColor = .white.withAlphaComponent(0.15)
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: let lab1 = UILabel()
        let lab1 = UILabel()
        //: lab1.text = "Random Video".localized
        lab1.text = (String(str_maleValue.suffix(6)) + String(str_modelTitle.prefix(6))).localized
        //: lab1.textColor = .white
        lab1.textColor = .white
        //: lab1.font = UIFont.pingfangWithDiameter(fontSize: 20)
        lab1.font = UIFont.pingfangWithDiameter(fontSize: 20)
        //: v.addSubview(lab1)
        v.addSubview(lab1)
        //: lab1.snp.makeConstraints { make in
        lab1.snp.makeConstraints { make in
            //: make.top.equalTo(17)
            make.top.equalTo(17)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
        }
        //: let lab2 = UILabel()
        let lab2 = UILabel()
        //: lab2.text = "Accept Video Match Call".localized
        lab2.text = (String(str_segmentData) + String(str_makeText.suffix(4))).localized
        //: lab2.textColor = .white
        lab2.textColor = .white
        //: lab2.numberOfLines = 0
        lab2.numberOfLines = 0
        //: lab2.font = UIFont.outsideAllSize(fontSize: 15)
        lab2.font = UIFont.outsideAllSize(fontSize: 15)
        //: v.addSubview(lab2)
        v.addSubview(lab2)
        //: lab2.snp.makeConstraints { make in
        lab2.snp.makeConstraints { make in
            //: make.top.equalTo(lab1.snp.bottom).offset(12)
            make.top.equalTo(lab1.snp.bottom).offset(12)
            //: make.leading.equalTo(lab1)
            make.leading.equalTo(lab1)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
            //: make.bottom.equalTo(-17)
            make.bottom.equalTo(-17)
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var switchBtn: UISwitch = {
    private lazy var switchBtn: UISwitch = {
        //: let swit = UISwitch()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.appThemeColor()
        swit.onTintColor = UIColor.plaster()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(enableOver), for: .valueChanged)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingFemaleStaticRandomVideoVC {
extension TextViewController {
    /// 获取匹配人数
    //: private func req_videoMatchCheck() {
    private func thickSkin() {
        //: TalkingQuickVideoManager.req_videoMatchCheck { succeed, result, _ in
        TitleReactiveCompatible.resumeCompletion { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.chattingNumBtn.setTitle("%@ chatting".localizedArguments(json["chattingNum"].intValue), for: .normal)
            self.chattingNumBtn.setTitle((String(str_renderName)).localizedArguments(json[(String(str_modelValue) + str_officialPlayData.replacingOccurrences(of: "leading", with: "a") + "ngNum")].intValue), for: .normal)
        }
    }

    /// 随机视频开关请求
    //: private func req_SettingChange() {
    private func upApp() {
        //: var params = ["type": "randomVideo"]
        var params = [String(bytes: str_kitValue.map{sendSelf(view: $0)}, encoding: .utf8)!: (str_modelDownText.replacingOccurrences(of: "add", with: "an") + "mVid" + String(str_roundValue))]
        //: let value = switchBtn.isOn ? "1" : "-1"
        let value = switchBtn.isOn ? "1" : "-1"
        //: params["value"] = value
        params[(str_resultStartName.replacingOccurrences(of: "model", with: "u"))] = value
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, _, _ in
        CameraThen.appClick(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: self.switchBtn.isEnabled = true
            self.switchBtn.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchBtn.isOn = !self.switchBtn.isOn
                self.switchBtn.isOn = !self.switchBtn.isOn
                //: return
                return
            }
            //: EqualThen.share.appUserConfigMode.randomVideo = value
            EqualThen.share.appUserConfigMode.randomVideo = value
            //: self.refreshUI()
            self.getWeaving()
        }
    }
}

// MARK: - Event

//: extension TalkingFemaleStaticRandomVideoVC {
extension TextViewController {
    /// 关闭页面按钮事件
    //: @objc private func closeButtonClick() {
    @objc private func jumpSub() {
        //: getNavigationController()?.popViewController(animated: false)
        getApp()?.popViewController(animated: false)
    }

    /// 随机视频开关事件
    //: @objc private func switchDidChange() {
    @objc private func enableOver() {
        //: switchBtn.isEnabled = false
        switchBtn.isEnabled = false
        //: req_SettingChange()
        upApp()
    }
}

// MARK: - Layout

//: extension TalkingFemaleStaticRandomVideoVC {
extension TextViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func phoneMessage() {
        //: view.addSubview(renderView)
        view.addSubview(renderView)
        //: view.addSubview(svgaPlayer)
        view.addSubview(svgaPlayer)
        //: view.addSubview(closeBtn)
        view.addSubview(closeBtn)
        //: view.addSubview(chattingNumBtn)
        view.addSubview(chattingNumBtn)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: bottomView.addSubview(switchBtn)
        bottomView.addSubview(switchBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func positionConstraint() {
        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 435))
            make.width.height.equalTo(actualWidth(w: 435))
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + 6)
            make.top.equalTo(kLet_timeSenseValue + 6)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }
        //: chattingNumBtn.snp.makeConstraints { make in
        chattingNumBtn.snp.makeConstraints { make in
            //: make.top.equalTo(svgaPlayer.snp.bottom).offset(-35)
            make.top.equalTo(svgaPlayer.snp.bottom).offset(-35)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.top.equalTo(chattingNumBtn.snp.bottom).offset(37)
            make.top.equalTo(chattingNumBtn.snp.bottom).offset(37)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
        //: switchBtn.snp.makeConstraints { make in
        switchBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(51)
            make.width.equalTo(51)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
    }

    /// 刷新UI
    //: private func refreshUI() {
    private func getWeaving() {
        //: if EqualThen.share.appUserConfigMode.randomVideo == "1" {
        if EqualThen.share.appUserConfigMode.randomVideo == "1" {
            //: svgaPlayer.startAnimation()
            svgaPlayer.startAnimation()
            //: } else {
        } else {
            //: svgaPlayer.pauseAnimation()
            svgaPlayer.pauseAnimation()
        }
        //: switchBtn.isOn = (EqualThen.share.appUserConfigMode.randomVideo == "1")
        switchBtn.isOn = (EqualThen.share.appUserConfigMode.randomVideo == "1")
    }
}
