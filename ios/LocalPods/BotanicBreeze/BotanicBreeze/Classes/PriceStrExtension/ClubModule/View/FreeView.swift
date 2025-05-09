
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeValue:[UInt8] = [0x4d,0x4a,0x4d,0x50,0xc,0x47,0x4b,0x40,0x41,0x56,0x1e,0xd,0x4,0x4c,0x45,0x57,0x4,0x4a,0x4b,0x50,0x4,0x46,0x41,0x41,0x4a,0x4,0x4d,0x49,0x54,0x48,0x41,0x49,0x41,0x4a,0x50,0x41,0x40]

private func bottomFull(voice num: UInt8) -> UInt8 {
    return num ^ 36
}

/*: "icon_cover_toast" :*/
fileprivate let str_freeTitle:String = "icontent"
fileprivate let str_onlineRowColorContent:String = "icon background style to titleon_co"

/*: "Free video time is over, you can continue to call her if you are interested" :*/
fileprivate let str_errorCheckedData:[UInt8] = [0xe7,0xd3,0xc4,0xc4,0x81,0xd7,0xc8,0xc5,0xc4,0xce,0x81,0xd5,0xc8,0xcc,0xc4,0x81,0xc8,0xd2,0x81,0xce,0xd7,0xc4,0xd3,0x8d,0x81,0xd8,0xce,0xd4,0x81,0xc2,0xc0,0xcf,0x81,0xc2,0xce,0xcf,0xd5,0xc8,0xcf,0xd4,0xc4,0x81,0xd5,0xce,0x81,0xc2,0xc0,0xcd,0xcd,0x81,0xc9,0xc4,0xd3,0x81,0xc8,0xc7,0x81,0xd8,0xce,0xd4,0x81,0xc0,0xd3,0xc4,0x81,0xc8,0xcf,0xd5,0xc4,0xd3,0xc4,0xd2,0xd5,0xc4,0xc5]

private func fileTarget(label num: UInt8) -> UInt8 {
    return num ^ 161
}

/*: "#34C759" :*/
fileprivate let str_observeData:String = "current self let#34C759"

/*: "icon_match_stopcall_pop" :*/
fileprivate let str_cellContent:String = "icon_in main"
fileprivate let str_withData:[Character] = ["m","a","t","c","h","_","s","t","o","p","c","a","l"]
fileprivate let str_addData:String = "fill labell_pop"

/*: "icon_lounge_big" :*/
fileprivate let str_recordPlayName:String = "make max you insideicon_loun"
fileprivate let str_mediumValue:String = "ge_bigequal title"

/*: "#AB57F6" :*/
fileprivate let str_currentData:[Character] = ["#","A","B","5","7","F","6"]

/*: "#FC57B7" :*/
fileprivate let str_whenValue:[Character] = ["#","F","C","5","7","B","7"]

/*: "#FE9074" :*/
fileprivate let str_makeSearchValue:[Character] = ["#","F","E","9","0","7","4"]

/*: "Maybe next time" :*/
fileprivate let str_pathContent:[Character] = ["M","a","y","b","e"," ","n","e","x","t"," ","t","i","m"]
fileprivate let str_collectionName:String = "direction"

/*: "type" :*/
fileprivate let str_programTitle:[UInt8] = [0x71,0x7c,0x75,0x60]

/*: "toUid" :*/
fileprivate let str_colorName:[Character] = ["t","o","U","i","d"]

/*: "uid" :*/
fileprivate let str_cameraValue:[UInt8] = [0x8e,0x92,0x9f]

private func stickingPoint(model num: UInt8) -> UInt8 {
    return num ^ 251
}

/*: "fromFreeCall" :*/
fileprivate let str_areaContent:String = "sub height textfromFr"
fileprivate let str_bindText:String = "resume"

/*: "cmd" :*/
fileprivate let str_roomTitle:[UInt8] = [0x66,0x68,0x61]

private func ambagesVideo(gift num: UInt8) -> UInt8 {
    return num ^ 5
}

/*: "requestCall" :*/
fileprivate let str_tapValue:[Character] = ["r","e","q","u","e","s","t","C","a","l","l"]

/*: "data" :*/
fileprivate let str_collectionData:[UInt8] = [0x56,0x53,0x46,0x53]

private func logTitle(index num: UInt8) -> UInt8 {
    return num ^ 50
}

/*: "originalFee" :*/
fileprivate let str_viewValue:String = "addrigi"
fileprivate let str_brideScaleTitle:String = "nalFeewith size model up"

/*: "VIPFee" :*/
fileprivate let str_upName:String = "VIPFeetop image page afterward intimate"

/*: "freeCallTimes" :*/
fileprivate let str_genderData:String = "FRE"
fileprivate let str_valueName:[Character] = ["e","C","a","l","l","T","i","m","e","s"]

/*: "onRequestCall" :*/
fileprivate let str_toolAddData:[Character] = ["o","n","R","e","q","u","e","s","t","C"]
fileprivate let str_sizeValue:String = "aimage"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FreeView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/15.
//

//: import UIKit
import UIKit

//: class TalkingFreeStopCallPopUpView: UIView {
class FreeView: UIView {
    //: var popView: TalkingPopView?
    var popView: NameThen?
    //: var data = [String: Any]()
    var data = [String: Any]()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        mediumPush()
        //: setupSubViewsConstraint()
        infoButton()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeValue.map{bottomFull(voice: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.errorDelegate = nil
        DeviceSocketDelegate.shared.errorDelegate = nil
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: lazy var topIcon: UIImageView = {
    lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.eponymUp(name: "icon_cover_toast")
        iamg.image = UIImage.eponymUp(name: (str_freeTitle.replacingOccurrences(of: "content", with: "c") + String(str_onlineRowColorContent.suffix(5)) + "ver_toast"))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var inputTView: UITextView = {
    lazy var inputTView: UITextView = {
        //: let textView = UITextView()
        let textView = UITextView()
        //: textView.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        textView.font = UIFont.pingfang(type: .Regular, fontSize: 16)
        //: textView.textColor = UIColor.appTitleColor()
        textView.textColor = UIColor.executeTo()
        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textAlignment = .center
        textView.textAlignment = .center
        //: textView.backgroundColor = .clear
        textView.backgroundColor = .clear
        //: textView.isEditable = false
        textView.isEditable = false
        //: textView.text = "Free video time is over, you can continue to call her if you are interested".localized
        textView.text = String(bytes: str_errorCheckedData.map{fileTarget(label: $0)}, encoding: .utf8)!.localized
        //: return textView
        return textView
        //: }()
    }()

    // 原价按钮
    //: private lazy var originalFeeBtn: TalkingButton = {
    private lazy var originalFeeBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton()
        let btn = ProgressTalkingButton()
        //: btn.setBackgroundColor(color: UIColor(hex: "#34C759")!, forState: .normal)
        btn.likeness(color: UIColor(hex: (String(str_observeData.suffix(7))))!, forState: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "icon_match_stopcall_pop"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_cellContent.prefix(5)) + String(str_withData) + String(str_addData.suffix(5)))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.pingfang(type: .Regular, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(originalFeeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(feeButtonClickOriginal), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // VIP价格
    //: private lazy var vipFeeBtn: TalkingButton = {
    private lazy var vipFeeBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton()
        let btn = ProgressTalkingButton()
        //: btn.setImage(UIImage.eponymUp(name: "icon_lounge_big"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_recordPlayName.suffix(9)) + String(str_mediumValue.prefix(6)))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.verticalAlignImageAndTitleWith(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        btn.outsideDrunk(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: let colors = [UIColor(hex: "#AB57F6")!.cgColor, UIColor(hex: "#FC57B7")!.cgColor, UIColor(hex: "#FE9074")!.cgColor]
        let colors = [UIColor(hex: (String(str_currentData)))!.cgColor, UIColor(hex: (String(str_whenValue)))!.cgColor, UIColor(hex: (String(str_makeSearchValue)))!.cgColor]
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: colors, size: CGSize(width: actualWidth(w: 257), height: actualWidth(w: 54))), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: colors, size: CGSize(width: actualWidth(w: 257), height: actualWidth(w: 54))), for: .normal)
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(maleVipPriceButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(startClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let attributes = [.foregroundColor: UIColor.publishView(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.publishView(), .font: UIFont.pingfang(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Maybe next time".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(str_pathContent) + str_collectionName.replacingOccurrences(of: "direction", with: "e")).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clubClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFreeStopCallPopUpView {
extension FreeView {
    /// 原价按钮拨打事件
    //: @objc func originalFeeButtonClick() {
    @objc func feeButtonClickOriginal() {
        //: let type = self.data["type"] as? Int ?? -1
        let type = self.data[String(bytes: str_programTitle.map{$0^5}, encoding: .utf8)!] as? Int ?? -1
        //: let toUid = self.data["toUid"] as? String ?? ""
        let toUid = self.data[(String(str_colorName))] as? String ?? ""

        //: var data: [String: Any] = ["type": type,
        var data: [String: Any] = [String(bytes: str_programTitle.map{$0^5}, encoding: .utf8)!: type,
                                   //: "uid": toUid]
                                   String(bytes: str_cameraValue.map{stickingPoint(model: $0)}, encoding: .utf8)!: toUid]
        //: if EqualThen.share.loginUserMode.freeCallTimes > 0, EqualThen.share.loginUserMode.sex == Gender.male.rawValue {
        if EqualThen.share.loginUserMode.freeCallTimes > 0, EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(str_areaContent.suffix(6)) + "eeCa" + str_bindText.replacingOccurrences(of: "resume", with: "ll")))
            //: TalkingSocketManager.shared.isFreeCall = true
            DeviceSocketDelegate.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: str_roomTitle.map{ambagesVideo(gift: $0)}, encoding: .utf8)!: (String(str_tapValue)), String(bytes: str_collectionData.map{logTitle(index: $0)}, encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        DeviceSocketDelegate.shared.noCurrent(info: info)
        //: TalkingSocketManager.shared.errorDelegate = self
        DeviceSocketDelegate.shared.errorDelegate = self
        //: dismiss()
        masthead()
    }

    /// 关闭按钮点击事件
    //: @objc func closeBtnClick() {
    @objc func clubClick() {
        //: dismiss()
        masthead()
    }

    /// 展示
    //: func show() {
    func eachValue() {
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = NameThen(frame: UIScreen.main.bounds)
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData)
        //: popView?.initWithView(view: self)
        popView?.observe(view: self)
        //: popView?.showInView(view: MacroDefine.getWindow())
        popView?.shackUp(view: UserMacroDefine.toUp())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func masthead() {
        //: popView?.dismissView()
        popView?.big()
        //: popView = nil
        popView = nil
    }

    /// 更新数据
    //: func setShowData(data: [String: Any]) {
    func currentData(data: [String: Any]) {
        //: self.data = data
        self.data = data
        //: let originalFee = data["originalFee"] as? Int ?? 0
        let originalFee = data[(str_viewValue.replacingOccurrences(of: "add", with: "o") + String(str_brideScaleTitle.prefix(6)))] as? Int ?? 0
        //: let vipFee = data["VIPFee"] as? Int ?? 0
        let vipFee = data[(String(str_upName.prefix(6)))] as? Int ?? 0
        //: let freeCallTimes = data["freeCallTimes"] as? Int
        let freeCallTimes = data[(str_genderData.lowercased() + String(str_valueName))] as? Int
        //: EqualThen.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        EqualThen.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        //: originalFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee), for: .normal)
        originalFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee), for: .normal)
        //: vipFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee, vipFee: vipFee), for: .normal)
        vipFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee, vipFee: vipFee), for: .normal)
        //: updateSubViewsConstraint()
        equalWindow()
    }

    /// 男性侧vip价格按钮点击事件
    //: @objc private func maleVipPriceButtonClick() {
    @objc private func startClick() {
        //: guard EqualThen.share.loginUserMode.loungePlus else {
        guard EqualThen.share.loginUserMode.loungePlus else {
            // 非会员 && 默认模式
            //: if EqualThen.share.appStatus == AppSkinStatus.normal.rawValue {
            if EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue {
                //: EditTextThen.share.func__pushToSubscribeAlert()
                EditTextThen.share.addShowParams()
            }
            //: dismiss()
            masthead()
            //: return
            return
        }

        //: originalFeeButtonClick()
        feeButtonClickOriginal()
    }
}

// MARK: - FileCurrentErrorDelegate

//: extension TalkingFreeStopCallPopUpView: TalkingSocketManagerErrorDelegate {
extension FreeView: FileCurrentErrorDelegate {
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func constraintInsert(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(str_toolAddData) + str_sizeValue.replacingOccurrences(of: "image", with: "ll")) {
            //: func__showStatusBarErrorMsg(showMsg: msg)
            oversight(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == MakePriorityTarget.MoneyLack.rawValue {
                //: guard EqualThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue else { return }
                //: EditTextThen.share.func__jumpToWebRecharge(clickEvent: clickFreepopupButton, sufficient: false)
                EditTextThen.share.activityParams(clickEvent: kLet_statusLicenseSafeName, sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingFreeStopCallPopUpView {
extension FreeView {
    /// 更新约束
    //: private func updateSubViewsConstraint() {
    private func equalWindow() {
        //: if EqualThen.share.loginUserMode.loungePlus {
        if EqualThen.share.loginUserMode.loungePlus {
            //: originalFeeBtn.isHidden = true
            originalFeeBtn.isHidden = true
            //: contentView.snp.updateConstraints { make in
            contentView.snp.updateConstraints { make in
                //: make.height.equalTo(actualWidth(w: 255))
                make.height.equalTo(actualWidth(w: 255))
            }
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func mediumPush() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(inputTView)
        contentView.addSubview(inputTView)
        //: contentView.addSubview(originalFeeBtn)
        contentView.addSubview(originalFeeBtn)
        //: contentView.addSubview(vipFeeBtn)
        contentView.addSubview(vipFeeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func infoButton() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(actualWidth(w: 297))
            make.width.equalTo(actualWidth(w: 297))
            //: make.height.equalTo(actualWidth(w: 329))
            make.height.equalTo(actualWidth(w: 329))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(actualWidth(w: -43))
            make.top.equalTo(actualWidth(w: -43))
            //: make.width.height.equalTo(actualWidth(w: 101))
            make.width.height.equalTo(actualWidth(w: 101))
        }

        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom)
            make.top.equalTo(topIcon.snp.bottom)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.height.equalTo(actualWidth(w: 103))
            make.height.equalTo(actualWidth(w: 103))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(actualWidth(w: -20))
            make.bottom.equalTo(actualWidth(w: -20))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: vipFeeBtn.snp.makeConstraints { make in
        vipFeeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(closeBtn.snp.top).offset(actualWidth(w: -15))
            make.bottom.equalTo(closeBtn.snp.top).offset(actualWidth(w: -15))
            //: make.width.equalTo(actualWidth(w: 257))
            make.width.equalTo(actualWidth(w: 257))
            //: make.height.equalTo(actualWidth(w: 54))
            make.height.equalTo(actualWidth(w: 54))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: originalFeeBtn.snp.makeConstraints { make in
        originalFeeBtn.snp.makeConstraints { make in
            //: make.centerX.width.height.equalTo(vipFeeBtn)
            make.centerX.width.height.equalTo(vipFeeBtn)
            //: make.bottom.equalTo(vipFeeBtn.snp.top).offset(actualWidth(w: -20))
            make.bottom.equalTo(vipFeeBtn.snp.top).offset(actualWidth(w: -20))
        }
    }
}
