
//: Declare String Begin

/*: "WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION" :*/
fileprivate let str_keyItemValue:[UInt8] = [0x63,0x71,0x76,0x62,0x7d,0x71,0x63,0x6b,0x60,0x7c,0x7d,0x66,0x70,0x6b,0x66,0x71,0x72,0x66,0x71,0x67,0x7c,0x77,0x7b,0x7d,0x7a,0x6b,0x7a,0x7b,0x60,0x7d,0x72,0x7d,0x77,0x75,0x60,0x7d,0x7b,0x7a]

private func sectionImage(day num: UInt8) -> UInt8 {
    return num ^ 52
}

/*: "goodsId" :*/
fileprivate let str_buttonProfileValue:String = "goodsIif share stream manager"
fileprivate let str_labData:String = "color"

/*: "source" :*/
fileprivate let str_makeWillName:String = "SOURCE"

/*: "type" :*/
fileprivate let str_stackUpReturnValue:String = "typinterval"

/*: "title" :*/
fileprivate let str_byValue:[Character] = ["t","i","t","l","e"]

/*: "url" :*/
fileprivate let str_tapName:String = "urinfo"

/*: "money" :*/
fileprivate let str_colorData:[Character] = ["m","o","n","e","y"]

/*: "Other" :*/
fileprivate let str_giftValue:[Character] = ["O","t","h","e","r"]

/*: "show" :*/
fileprivate let str_makeData:String = "SHOW"

/*: "target" :*/
fileprivate let str_addNameData:[Character] = ["t","a","r","g","e","t"]

/*: "eventName" :*/
fileprivate let str_leadingPathText:String = "frame in selfeventNam"
fileprivate let str_makeValue:[Character] = ["e"]

/*: "jsonString" :*/
fileprivate let str_managerContent:[Character] = ["j","s","o","n","S","t","r","i","n","g"]

/*: "coin" :*/
fileprivate let str_recordName:String = "coilab"

/*: "uid" :*/
fileprivate let str_showTouchViewTitle:[Character] = ["u","i","d"]

/*: "未实现的js事件： :*/
fileprivate let str_clearValue:[Character] = ["\u{672a}","实","现","\u{7684}","j","s","\u{4e8b}","件","："]

/*: "Retry After or Go to \"Feedback\" to contact us" :*/
fileprivate let str_labPathEqualValue:[UInt8] = [0x11,0x26,0x37,0x31,0x3a,0x63,0x2,0x25,0x37,0x26,0x31,0x63,0x2c,0x31,0x63,0x4,0x2c,0x63,0x37,0x2c,0x63,0x61,0x5,0x26,0x26,0x27,0x21,0x22,0x20,0x28,0x61,0x63,0x37,0x2c,0x63,0x20,0x2c,0x2d,0x37,0x22,0x20,0x37,0x63,0x36,0x30]

private func setupTemp(point num: UInt8) -> UInt8 {
    return num ^ 67
}

/*: "Apple" :*/
fileprivate let str_imageValue:[Character] = ["A","p","p","l","e"]

/*: " apple支付充值失败： :*/
fileprivate let str_makeText:String = " applemodel else device"
fileprivate let str_stateData:[Character] = ["\u{652f}","付","充","\u{503c}","失","败","\u{ff1a}"]

/*: "payResultCallback();" :*/
fileprivate let str_statusContent:[Character] = ["p","a","y","R","e","s","u","l","t","C","a"]
fileprivate let str_noValue:String = "llerror"
fileprivate let str_skinData:[Character] = ["a","c","k","(",")",";"]

/*: "USD" :*/
fileprivate let str_loadName:String = "usd"

/*: "amount" :*/
fileprivate let str_centerContent:[UInt8] = [0x37,0x43,0x45,0x4b,0x44,0x4a]

fileprivate func classFormat(scale num: UInt8) -> UInt8 {
    let value = Int(num) + 42
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "getSystemNotificationtStatus(true)" :*/
fileprivate let str_sizeText:[UInt8] = [0x31,0x33,0x22,0x5,0x2f,0x25,0x22,0x33,0x3b,0x18,0x39,0x22,0x3f,0x30,0x3f,0x35,0x37,0x22,0x3f,0x39,0x38,0x22,0x5,0x22,0x37,0x22,0x23,0x25,0x7e,0x22,0x24,0x23,0x33,0x7f]

private func clearFile(with num: UInt8) -> UInt8 {
    return num ^ 86
}

/*: "getSystemNotificationtStatus(false)" :*/
fileprivate let str_requestContent:[UInt8] = [0x8e,0x8c,0x9d,0xba,0x90,0x9a,0x9d,0x8c,0x84,0xa7,0x86,0x9d,0x80,0x8f,0x80,0x8a,0x88,0x9d,0x80,0x86,0x87,0x9d,0xba,0x9d,0x88,0x9d,0x9c,0x9a,0xc1,0x8f,0x88,0x85,0x9a,0x8c,0xc0]

private func makeCell(target num: UInt8) -> UInt8 {
    return num ^ 233
}

/*: "mfBean" :*/
fileprivate let str_errorRegularModelText:[UInt8] = [0x6e,0x61,0x65,0x42,0x66,0x6d]

/*: "%.2f" :*/
fileprivate let str_requestNameText:String = "self false publish position%.2f"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IgnitionKeyViewController+JSEvent.swift
//  AbroadTalking
//
//  Created by young on 2022/9/6.
//

//: import UIKit
import UIKit

//: import WebKit
import WebKit

// 通知三方H5刷新金币
//: public let WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION = NSNotification.Name(rawValue: "WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION")
public let kLet_messageClickPublicData = NSNotification.Name(rawValue: String(bytes: str_keyItemValue.map{sectionImage(day: $0)}, encoding: .utf8)!)

//: extension TalkingWebViewController {
extension IgnitionKeyViewController {
    /// 处理JS事件
    /// - Parameters:
    ///   - message: 消息
    //: func HandleScriptMessage(_ message: WKScriptMessage) {
    func panMessage(_ message: WKScriptMessage) {
        //: let type = WebMethodType(rawValue: message.name)
        let type = TypeTargetMirrorPath(rawValue: message.name)
        //: let json = JSON(message.body)
        let json = JSON(message.body)
        //: switch type {
        switch type {
        //: case .MethodType_Exit:
        case .MethodType_Exit:
            //: self.func__closeAction(sender: nil)
            self.envelop(sender: nil)

        //: case .MethodType_needLogin:
        case .MethodType_needLogin:
            //: needLogin()
            distinguish()

        //: case .MethodType_apPay:
        case .MethodType_apPay:
            //: applePay(productId: json["goodsId"].stringValue, source: json["source"].intValue, payType: .Pay)
            notData(productId: json[(String(str_buttonProfileValue.prefix(6)) + str_labData.replacingOccurrences(of: "color", with: "d"))].stringValue, source: json[(str_makeWillName.lowercased())].intValue, payType: .Pay)

        //: case .MethodType_apPay_subscribe:
        case .MethodType_apPay_subscribe:
            //: if json["type"].stringValue == "6" {
            if json[(str_stackUpReturnValue.replacingOccurrences(of: "interval", with: "e"))].stringValue == "6" {
                //: isVideoCallRechargeHalfPage = true
                isVideoCallRechargeHalfPage = true
                //: RECHARGE_CLICK_EVENT = subscribtionRecordButton
                kLet_keyData = kLet_clickText
                //: } else if json["type"].stringValue == "7" { // 点击订阅弹窗的订阅按钮
            } else if json[(str_stackUpReturnValue.replacingOccurrences(of: "interval", with: "e"))].stringValue == "7" { // 点击订阅弹窗的订阅按钮
                //: RECHARGE_CLICK_EVENT = subscribtionRecordButton
                kLet_keyData = kLet_clickText
            }
            //: applePay_subscribe(type: json["type"].stringValue, productId: json["goodsId"].stringValue, payType: .Subscribe)
            pathBottom(type: json[(str_stackUpReturnValue.replacingOccurrences(of: "interval", with: "e"))].stringValue, productId: json[(String(str_buttonProfileValue.prefix(6)) + str_labData.replacingOccurrences(of: "color", with: "d"))].stringValue, payType: .Subscribe)

        //: case .MethodType_changeMenuButton:
        case .MethodType_changeMenuButton:
            //: changeRightMenuButton(title: json["title"].stringValue, url: json["url"].stringValue)
            quitMenu(title: json[(String(str_byValue))].stringValue, url: json[(str_tapName.replacingOccurrences(of: "info", with: "l"))].stringValue)

        //: case .MethodType_refreshCoin:
        case .MethodType_refreshCoin:
            //: refreshCoin(price: Double(json["money"].stringValue) ?? 0, payType: "Other")
            animateBeingPresent(price: Double(json[(String(str_colorData))].stringValue) ?? 0, payType: (String(str_giftValue)))

        //: case .MethodType_appearsOnGiftBroadcast:
        case .MethodType_appearsOnGiftBroadcast:
            //: appearsOnGiftBroadcast(show: json["show"].boolValue)
            offShow(show: json[(str_makeData.lowercased())].boolValue)

        //: case.MethodType_ToUrl:
        case .MethodType_ToUrl:
            //: openTourl(url: json.rawString() ?? "")
            javelin(url: json.rawString() ?? "")

        //: case .MethodType_customerService:
        case .MethodType_customerService:
            //: EditTextThen.share.func__pushToPriveteChatVC(chatID: MacroDefine.getCustomerServiceID())
            EditTextThen.share.fullMoon(chatID: UserMacroDefine.addTap())

        //: case.setRightMenuButton:
        case .setRightMenuButton:
            //: break
            break

        //: case .MethodType_taskCenter:
        case .MethodType_taskCenter:
            //: let target = json["target"].intValue
            let target = json[(String(str_addNameData))].intValue
            //: self.reloadInputViews()
            self.reloadInputViews()
            //: switch target {
            switch target {
            //: case 1:
            case 1: /// 签到领金币页
                //: EditTextThen.share.func__pushToSubscribePageWebVC()
                EditTextThen.share.whole()

            //: case 2:
            case 2: /// 个人信息编辑页面
                //: let vc = TalkingEditProfilesVC.init()
                let vc = CurrentReactiveCompatible()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)

            //: case 3:
            case 3: /// 真人认证页面
                //: verifyBtnClick()
                rankLabel()
            //: case 4:
            case 4: /// 发布动态页面
                //: tabberSelete(type: TabBarItemType.Moment.rawValue)
                activityType(type: DeepEquatable.Moment)
                /// 防止动态首页广播还没创建
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: NotificationCenter.default.post(name: FREEBTN_UPLOAD_POST_NOTIFICATION,
                    NotificationCenter.default.post(name: kLet_formalTitle,
                                                    //: object: nil,
                                                    object: nil,
                                                    //: userInfo: nil)
                                                    userInfo: nil)
                }
            //: case 5:
            case 5: /// 我的页面
                //: tabberSelete(type: TabBarItemType.Account.rawValue)
                activityType(type: DeepEquatable.Account)
            //: case 6:
            case 6: /// 首页
                //: tabberSelete(type: TabBarItemType.Social.rawValue)
                activityType(type: DeepEquatable.Social)
            //: case 7:
            case 7: /// 消息列表页
                //: tabberSelete(type: TabBarItemType.Message.rawValue)
                activityType(type: DeepEquatable.Message)
            //: case 8:
            case 8: /// Greet setting页
                //: let vc = TalkingAutoGreetSettingVC()
                let vc = CustomViewDelegate()
                //: navigationController?.pushViewController(vc, animated: true)
                navigationController?.pushViewController(vc, animated: true)
            //: case 9:
            case 9: /// 动态列表页
                //: tabberSelete(type: TabBarItemType.Moment.rawValue)
                activityType(type: DeepEquatable.Moment)
            //: default:
            default:
                //: break
                break
            }
        //: case .MethodType_systemNotification:
        case .MethodType_systemNotification:
            //: let type = json["type"].intValue
            let type = json[(str_stackUpReturnValue.replacingOccurrences(of: "interval", with: "e"))].intValue
            //: changeNotifaStatus(type: type)
            objectType(type: type)

        //: case .MethodType_refreshPoint:
        case .MethodType_refreshPoint:
            //: refreshPoint()
            deleteData()

        //: case .MethodType_onEvent:
        case .MethodType_onEvent:
            //: reportEvent(eventName: json["eventName"].stringValue, jsonStr: json["jsonString"].stringValue)
            nudge(eventName: json[(String(str_leadingPathText.suffix(8)) + String(str_makeValue))].stringValue, jsonStr: json[(String(str_managerContent))].stringValue)

        //: case .MethodType_refreshCoinAll:
        case .MethodType_refreshCoinAll:
            //: req_refreshCoinAll(coin: json["coin"].stringValue)
            queryed(coin: json[(str_recordName.replacingOccurrences(of: "lab", with: "n"))].stringValue)

        //: case .MethodType_refreshPackage:
        case .MethodType_refreshPackage:
            //: req_refreshPackage()
            packageCollection()

        //: case .MethodType_vibrate:
        case .MethodType_vibrate:
            //: phoneVibrate()
            frenchTelephone()

        //: case .MethodType_goFreeVideo:
        case .MethodType_goFreeVideo:
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            GiftManagerRequest.makeEnable { _, _, _ in
                //: if EqualThen.share.loginUserMode.jumpType == 1 {
                if EqualThen.share.loginUserMode.jumpType == 1 {
                    //: self.func__closeAction(sender: nil)
                    self.envelop(sender: nil)
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                        //: EditTextThen.share.func__pushToRandomVideoVC(isBeginRand: false)
                        EditTextThen.share.equalLine(isBeginRand: false)
                    }
                }
            }

        //: case .MethodType_goMessageDetail:
        case .MethodType_goMessageDetail:
            //: EditTextThen.share.func__pushToPriveteChatVC(chatID: json["uid"].stringValue)
            EditTextThen.share.fullMoon(chatID: json[(String(str_showTouchViewTitle))].stringValue)

        //: case .MethodType_goPersonInfo:
        case .MethodType_goPersonInfo:
            //: EditTextThen.share.func__pushToUserDetailVC(uid: json["uid"].stringValue)
            EditTextThen.share.soulAge(uid: json[(String(str_showTouchViewTitle))].stringValue)

        //: case .MethodType_showRechargeDialog:
        case .MethodType_showRechargeDialog:
            //: EditTextThen.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
            EditTextThen.share.plumage(webViewType: .RechargeHalfPage)

        //: case .OpenRetainPopup:
        case .OpenRetainPopup:
            //: self.func__closeAction(sender: nil)
            self.envelop(sender: nil)
        //: case .openBrowserWithUrl:
        case .openBrowserWithUrl:
            //: openToOutUrl(url: json.rawString() ?? "")
            firstUrl(url: json.rawString() ?? "")
        //: case .none:
        case .none:
            //: printLog(message: "未实现的js事件：\(message.name)")
            printLog(message: (String(str_clearValue)) + "\(message.name)")
        }
    }

    // MARK: - Event

    /// 苹果支付订阅
    /// - Parameters:
    ///   - type: 订阅入口；1：首页banner，2：全屏充值页，3：半屏充值页，4：领取金币弹窗
    ///   - productId: 商品Id
    ///   - payType: 支付类型
    //: private func applePay_subscribe(type: String, productId: String, payType: ApplePayType) {
    private func pathBottom(type _: String, productId: String, payType: CreateType) {
        //: applePay(productId: productId, payType: payType)
        notData(productId: productId, payType: payType)
    }

    /// 苹果支付
    /// - Parameters:
    ///   - productId: productId: 商品Id
    ///   - source: 充值来源
    //: private func applePay(productId: String, source: Int = -1, payType: ApplePayType) {
    private func notData(productId: String, source: Int = -1, payType: CreateType) {
        //: if EqualThen.share.loginUid.isEmptyString {
        if EqualThen.share.loginUid.isEmptyString {
            //: return
            return
        }
        ManagerThen.share.migration(name: "PurchaseClick")

        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: var index = isVideoCallRechargeHalfPage ? 1: 0
        var index = isVideoCallRechargeHalfPage ? 1 : 0
        //: if source != -1 {
        if source != -1 {
            //: index = source
            index = source
        }
        //: AppleIAPManager.shared.iap_startPurchase(productId: productId, payType: payType, source: index) { type, reportMoney in
        AtThen.shared.snapPath(productId: productId, payType: payType, source: index) { type, reportMoney in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: DispatchQueue.main.async { [self] in
            DispatchQueue.main.async { [self] in
                //: switch type {
                switch type {
                //: case .verityFail:
                case .verityFail:
                    //: ProgressHUD.toast( "Retry After or Go to \"Feedback\" to contact us".localized)
                    ModelReactiveCompatible.doMake(String(bytes: str_labPathEqualValue.map{setupTemp(point: $0)}, encoding: .utf8)!.localized)
                //: case .veritySucceed:
                case .veritySucceed:
                    //: appleIAPVeritySucceed(price: reportMoney)
                    addSize(price: reportMoney)
                //: case .renewSucceed:
                case .renewSucceed:
                    //: refreshCoin(price: reportMoney, payType: "Apple")
                    animateBeingPresent(price: reportMoney, payType: (String(str_imageValue)))
                //: default:
                default:
                    //: printLog(message: " apple支付充值失败：\(type.rawValue)")
                    printLog(message: (String(str_makeText.prefix(7)) + String(str_stateData)) + "\(type.rawValue)")
                }
            }
        }
    }

    /// 设置导航右侧按钮
    /// - Parameters:
    ///   - title: 标题
    ///   - url: 地址
    //: private func changeRightMenuButton(title: String, url: String) {
    private func quitMenu(title: String, url: String) {
        //: let rightBtn = TalkingButton()
        let rightBtn = ProgressTalkingButton()
        //: rightBtn.titleLabel?.font = .systemFont(ofSize: 14)
        rightBtn.titleLabel?.font = .systemFont(ofSize: 14)
        //: rightBtn.setTitle(title, for: .normal)
        rightBtn.setTitle(title, for: .normal)
        //: rightBtn.setTitleColor(.RGBA(51, 51, 51, 1), for: .normal)
        rightBtn.setTitleColor(.showSub(51, 51, 51, 1), for: .normal)
        //: rightBtn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        rightBtn.addTarget(self, action: #selector(ditheredColour), for: .touchUpInside)
        //: rightBtn.sizeToFit()
        rightBtn.sizeToFit()
        //: rightBtn.userInfo = ["url": url]
        rightBtn.userInfo = [(str_tapName.replacingOccurrences(of: "info", with: "l")): url]
        //: self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
    }

    //: @objc func rightButtonClick(button: TalkingButton) {
    @objc func ditheredColour(button: ProgressTalkingButton) {
        //: guard let urlString = button.userInfo?["url"] as? String else {
        guard let urlString = button.userInfo?[(str_tapName.replacingOccurrences(of: "info", with: "l"))] as? String else {
            //: return
            return
        }

        //: self.urlStr = urlString
        self.urlStr = urlString
        //: func__startRequest()
        showRequest()
    }

    /// 退出登录
    //: private func needLogin() {
    private func distinguish() {
        //: guard Int(EqualThen.share.loginUid) ?? 0 > 0 else {
        guard Int(EqualThen.share.loginUid) ?? 0 > 0 else {
            //: self.webView.reload()
            self.webView.reload()
            //: return
            return
        }

        //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
        NotificationCenter.default.post(name: kLet_useName,
                                        //: object: nil,
                                        object: nil,
                                        //: userInfo: nil)
                                        userInfo: nil)
    }

    /// 苹果支付成功验证通过
    /// - Parameter price: 充值金额
    //: func appleIAPVeritySucceed(price: Double) {
    func addSize(price: Double) {
        //: self.webView.evaluateJavaScript("payResultCallback();") { data, error in
        self.webView.evaluateJavaScript((String(str_statusContent) + str_noValue.replacingOccurrences(of: "error", with: "b") + String(str_skinData))) { _, _ in
        }
        //: refreshCoin(price: price, payType: "Apple")
        animateBeingPresent(price: price, payType: (String(str_imageValue)))
    }

    /// 支付成功刷新个人信息【apple/paypal】
    /// - Parameters:
    ///   - price: 充值金额
    ///   - payType: 类型
    //: private func refreshCoin(price: Double, payType: String) {
    private func animateBeingPresent(price: Double, payType: String) {
        //: NotificationCenter.default.post(name: UPDATE_USER_GETMYINFO_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_postVersionScreenContent, object: nil)
        //: NotificationCenter.default.post(name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_freeValue, object: nil)
        //: NotificationCenter.default.post(name: REFRESH_INDEX_GETCONFIG_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_senseTitle, object: nil)
        //: NotificationCenter.default.post(name: USER_UPDATE_RESIDUALINFO_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION, object: nil)

        // 成功埋点
        //: TalkingAdjustManager.share.addPurchasedEvent(price: price, currency: "USD")
        AdministratorThen.share.chooseCurrency(price: price, currency: (str_loadName.uppercased()))
        //: FirebaseAnalyticsManager.share.trackPurchase(payType: payType, price: price, currency: "USD")
        ManagerThen.share.toInstance(payType: payType, price: price, currency: (str_loadName.uppercased()))

        // 半屏充值成功埋点
        //: if RECHARGE_CLICK_EVENT.count > 0 {
        if kLet_keyData.count > 0 {
            //: uploadRecord.uploadRecordEvent(eventID: RECHARGE_CLICK_EVENT, parameterStr: ["amount": price])
            kLet_textData.pictureOf(eventID: kLet_keyData, parameterStr: [String(bytes: str_centerContent.map{classFormat(scale: $0)}, encoding: .utf8)!: price])
        }

        // 支付成功发送通知，调用三方js事件
        //: NotificationCenter.default.post(name: WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_messageClickPublicData, object: nil)
    }

    /// 广播设置
    /// - Parameter show: 是否上广播
    //: private func appearsOnGiftBroadcast(show: Bool) {
    private func offShow(show _: Bool) {}

    //: private func verifyBtnClick() {
    private func rankLabel() {
        //: if EqualThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if EqualThen.share.loginUserMode.isTPAuth == SkinComparable.isSuccessed.rawValue {
            //: return
            return
                //: } else if EqualThen.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if EqualThen.share.loginUserMode.isTPAuth == SkinComparable.unknown.rawValue {
            //: EditTextThen.share.func__pushUserVerifyController(toast: nil)
            EditTextThen.share.alongTarget(toast: nil)
            //: } else if EqualThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if EqualThen.share.loginUserMode.isTPAuth == SkinComparable.isOnGoing.rawValue {
            //: let vc = TalkingFinalVerificationVC()
            let vc = StatusThen()
            //: EditTextThen.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            EditTextThen.share.addGet()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: EditTextThen.share.func__pushUserVerifyController(toast: nil)
            EditTextThen.share.alongTarget(toast: nil)
        }
    }

    /// 底部tabbar切换
    //: private func tabberSelete(type: Int) {
    private func activityType(type: DeepEquatable) {
        guard let rootVC = UserMacroDefine.toUp().rootViewController as? ViewListControllerDelegate else { return }
        let tabBarContentTypes = rootVC.dosage()
        for (index, item) in tabBarContentTypes.enumerated() {
            if let itemType = item as? DeepEquatable, itemType == type {
                let vc = self.tabBarController?.viewControllers?[index]
                self.tabBarController?.tabBar.isHidden = false
                self.tabBarController?.selectedIndex = index
                self.tabBarController?.selectedViewController = vc
                self.navigationController?.popViewController(animated: true)
                return
            }
        }
    }

    /// 获取系统通知状态
    //: private func changeNotifaStatus(type: Int) {
    private func objectType(type: Int) {
        //: if type == 0 {
        if type == 0 {
            //: if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
            if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
                //: if #available(iOS 10.0, *) {
                if #available(iOS 10.0, *) {
                    //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    //: } else {
                } else {
                    //: if UIApplication.shared.canOpenURL(url) {
                    if UIApplication.shared.canOpenURL(url) {
                        //: UIApplication.shared.openURL(url)
                        UIApplication.shared.openURL(url)
                    }
                }
            }
            //: } else if type == 1 {
        } else if type == 1 {
            //: AppManagerRequest.func__requestUserConfig { succeed, result, errorModel in }
            GiftManagerRequest.photoImage { _, _, _ in }
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in }
            GiftManagerRequest.makeEnable { _, _, _ in }
            //: TalkingPermissionTool.checkPushNotification { isShow in
            RubricThen.sectionOn { isShow in
                //: DispatchQueue.main.sync {
                DispatchQueue.main.sync {
                    //: let str = isShow ? "getSystemNotificationtStatus(true)" : "getSystemNotificationtStatus(false)"
                    let str = isShow ? String(bytes: str_sizeText.map{clearFile(with: $0)}, encoding: .utf8)! : String(bytes: str_requestContent.map{makeCell(target: $0)}, encoding: .utf8)!
                    //: self.webView.evaluateJavaScript(str) { data, error in
                    self.webView.evaluateJavaScript(str) { _, _ in
                    }
                }
            }
        }
    }

    //: private func refreshPoint() {
    private func deleteData() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        GiftManagerRequest.makeEnable { _, _, _ in
            //: if TalkingLiveManager.shared().isLive {
            if UserPushListener.sexApp().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: kLet_statusText, object: nil, userInfo: [String(bytes: str_errorRegularModelText.reversed(), encoding: .utf8)!: 0.0])
            }
        }
    }

    /// 刷新金币
    /// - Parameter coin: 传' ', 刷新接口；传其他，进行相加（含负数））
    //: private func req_refreshCoinAll(coin: String) {
    private func queryed(coin: String) {
        //: let value: Double = Double(coin) ?? 0
        let value = Double(coin) ?? 0
        //: if value == 0 {
        if value == 0 { // 刷新接口
            //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
            GiftManagerRequest.modelRow { _, _, _ in
            }
            //: } else {
        } else { // 加减
            //: let newCoin = Double(EqualThen.share.loginUserMode.mf_coin)! + value
            let newCoin = Double(EqualThen.share.loginUserMode.mf_coin)! + value
            //: EqualThen.share.loginUserMode.mf_coin = String(format: "%.2f", newCoin)
            EqualThen.share.loginUserMode.mf_coin = String(format: "%.2f", newCoin)
        }
    }

    /// 刷新礼物背包
    //: private func req_refreshPackage() {
    private func packageCollection() {
        //: NotificationCenter.default.post(name: GIFT_REFRESHPACKAGE_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_screenValue, object: nil)
    }

    /// 事件上报
    /// - Parameters:
    ///   - eventName: 事件名称
    ///   - jsonStr: 事件参数
    //: private func reportEvent(eventName: String, jsonStr: String) {
    private func nudge(eventName: String, jsonStr: String) {
        //: uploadRecord.uploadRecordEvent(eventID: eventName, toUid: "", jsonStr: jsonStr)
        kLet_textData.historicalPaper(eventID: eventName, toUid: "", jsonStr: jsonStr)
    }

    /// 手机震动
    //: private func phoneVibrate() {
    private func frenchTelephone() {
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
}
