
//: Declare String Begin

/*: "content" :*/
fileprivate let str_appData:[Character] = ["c","o","n","t","e","n","t"]

/*: "jumpKey" :*/
fileprivate let str_leadingModelValue:String = "J"
fileprivate let str_makeText:[Character] = ["u","m","p","K","e","y"]

/*: "uploadUserHeaderPic" :*/
fileprivate let str_toData:[Character] = ["u","p","l","o","a"]
fileprivate let str_popularData:String = "dUseadd equal"
fileprivate let str_collectionData:String = "rPicfill self voice corner view"

/*: "truePersonAuth" :*/
fileprivate let str_cellUserLetData:String = "truePby make"
fileprivate let str_followValue:String = "make view errorersonAuth"

/*: "yyyy-MM-dd" :*/
fileprivate let str_priceButtonInName:String = "clearclear"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PlayerWindowManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/17.
//

//: import UIKit
import UIKit

//: enum PopupWindowType: CaseIterable {
enum GrantWindowType: CaseIterable {
    //: case sign_in
    case sign_in // 签到
    //: case video_Cover
    case video_Cover // 上传视频封面提醒弹窗
    //: case startLive_Tips
    case startLive_Tips // 开播提醒弹窗
    //: case video_Call
    case video_Call // 主动拨打弹窗
    //: case face_Verification
    case face_Verification // 需要真人认证弹窗
    //: case Web_Subscribe
    case Web_Subscribe // 会员订阅弹窗
    //: case Attestation_Refuse
    case Attestation_Refuse // 真人认证，头像上传，被拒绝时提示弹窗
    //: case New_Guidance
    case New_Guidance // 主播引导弹窗（女性首次注册，未完成全部新人任务）
}

//: class TalkingPopupWindowManager: NSObject {
class PlayerWindowManager: NSObject {
    //: var dataSource = Array<PopupWindowType>()
    var dataSource = [GrantWindowType]()
    //: var alertQueue: PublishSubject<PopupWindowType> = PublishSubject<PopupWindowType>()
    var alertQueue: PublishSubject<GrantWindowType> = .init()
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: private var isShowLiveTipsView = false
    private var isShowLiveTipsView = false
    /// 通话中，结束后再显示审核拒绝提示弹窗
    //: private var isLateronRefuseView = false
    private var isLateronRefuseView = false

    //: var refuseViewData = [String: String]()
    var refuseViewData = [String: String]()

    //: static let shared = TalkingPopupWindowManager()
    static let shared = PlayerWindowManager()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: setObserver()
        setColor()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingPopupWindowManager {
extension PlayerWindowManager {
    //: func setObserver() {
    func setColor() {
        //: alertQueue.asObservable().subscribe(onNext: { [weak self]  type in
        alertQueue.asObservable().subscribe(onNext: { [weak self] type in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dataSource.append(type)
            self.dataSource.append(type)
            //: self.showAlert()
            self.paintTheLily()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: NotificationCenter.default.addObserver(self, selector: #selector(showRefuseView), name: VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(noFreezeOn), name: kLet_postValue, object: nil)
    }

    //: func setHomePopUpWindow() {
    func firstText() {
        // 默认模式, 男性, 未订阅
        //: if EqualThen.share.loginUserMode.jumpType == 0,
        if EqualThen.share.loginUserMode.jumpType == 0,
           //: EqualThen.share.appUserConfigMode.payWinType == 2,
           EqualThen.share.appUserConfigMode.payWinType == 2,
           //: EqualThen.share.appStatus == AppSkinStatus.normal.rawValue,
           EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue,
           //: EqualThen.share.loginUserMode.sex == Gender.male.rawValue,
           EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue,
           //: EqualThen.share.loginUserMode.loungePlus == false {
           EqualThen.share.loginUserMode.loungePlus == false
        {
            //: self.alertQueue.onNext(PopupWindowType.Web_Subscribe)
            self.alertQueue.onNext(GrantWindowType.Web_Subscribe)
        }

        //: if  EqualThen.share.loginUserMode.showSignInPage && EqualThen.share.loginUserMode.sex == Gender.male.rawValue && EqualThen.share.appStatus != AppSkinStatus.special.rawValue {
        if EqualThen.share.loginUserMode.showSignInPage, EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue, EqualThen.share.appStatus != PhaseOfTheMoonPropertyProtocol.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.sign_in)
            self.alertQueue.onNext(GrantWindowType.sign_in)
        }

        //: if EqualThen.share.loginUserMode.isNaUser == false,
        if EqualThen.share.loginUserMode.isNaUser == false,
           //: EqualThen.share.appUserConfigMode.videoCover.count > 0,
           EqualThen.share.appUserConfigMode.videoCover.count > 0,
           //: EqualThen.share.loginUserMode.sex == Gender.female.rawValue,
           EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue,
           //: EqualThen.share.appStatus != AppSkinStatus.special.rawValue {
           EqualThen.share.appStatus != PhaseOfTheMoonPropertyProtocol.special.rawValue
        {
            //: self.alertQueue.onNext(PopupWindowType.video_Cover)
            self.alertQueue.onNext(GrantWindowType.video_Cover)
        }

        //: if EqualThen.share.appUserConfigMode.showNewGuidance, EqualThen.share.loginUserMode.sex == Gender.female.rawValue && EqualThen.share.appStatus != AppSkinStatus.special.rawValue {
        if EqualThen.share.appUserConfigMode.showNewGuidance, EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue, EqualThen.share.appStatus != PhaseOfTheMoonPropertyProtocol.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.New_Guidance)
            self.alertQueue.onNext(GrantWindowType.New_Guidance)
        }

        //: if EqualThen.share.appUserConfigMode.headPicRejectNotice.count > 0 && EqualThen.share.loginUserMode.sex == Gender.female.rawValue && EqualThen.share.appStatus != AppSkinStatus.special.rawValue {
        if EqualThen.share.appUserConfigMode.headPicRejectNotice.count > 0, EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue, EqualThen.share.appStatus != PhaseOfTheMoonPropertyProtocol.special.rawValue {
            //: refuseViewData["content"] = EqualThen.share.appUserConfigMode.headPicRejectNotice
            refuseViewData[(String(str_appData))] = EqualThen.share.appUserConfigMode.headPicRejectNotice
            //: refuseViewData["jumpKey"] = "uploadUserHeaderPic"
            refuseViewData[(str_leadingModelValue.lowercased() + String(str_makeText))] = (String(str_toData) + String(str_popularData.prefix(4)) + "rHeade" + String(str_collectionData.prefix(4)))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(GrantWindowType.Attestation_Refuse)
        }

        //: if EqualThen.share.appUserConfigMode.realPicRejectNotice.count > 0 && EqualThen.share.loginUserMode.sex == Gender.female.rawValue && EqualThen.share.appStatus != AppSkinStatus.special.rawValue {
        if EqualThen.share.appUserConfigMode.realPicRejectNotice.count > 0, EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue, EqualThen.share.appStatus != PhaseOfTheMoonPropertyProtocol.special.rawValue {
            //: refuseViewData["content"] = EqualThen.share.appUserConfigMode.realPicRejectNotice
            refuseViewData[(String(str_appData))] = EqualThen.share.appUserConfigMode.realPicRejectNotice
            //: refuseViewData["jumpKey"] = "truePersonAuth"
            refuseViewData[(str_leadingModelValue.lowercased() + String(str_makeText))] = (String(str_cellUserLetData.prefix(5)) + String(str_followValue.suffix(9)))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(GrantWindowType.Attestation_Refuse)
        }
    }

    //: func startLivePopUpWindow() {
    func upHouse() {
        //: self.alertQueue.onNext(PopupWindowType.startLive_Tips)
        self.alertQueue.onNext(GrantWindowType.startLive_Tips)
    }

    /// 主动拨打弹窗
    //: func videoCallPopUpWindow() {
    func beforeUp() {
        //: self.alertQueue.onNext(PopupWindowType.video_Call)
        self.alertQueue.onNext(GrantWindowType.video_Call)
    }

    /// 需要真人认证弹窗
    //: func faceVerificationPopUpWindow() {
    func visageMakeUpwardChangeFormWindow() {
        //: self.alertQueue.onNext(PopupWindowType.face_Verification)
        self.alertQueue.onNext(GrantWindowType.face_Verification)
    }

    /// 真人认证，头像上传，被拒绝时提示弹窗
    //: func attestationRefusePopUpWindow(dic: [String: Any]) {
    func noPop(dic: [String: Any]) {
        //: refuseViewData["content"] = dic["content"] as? String
        refuseViewData[(String(str_appData))] = dic[(String(str_appData))] as? String
        //: refuseViewData["jumpKey"] = dic["jumpKey"] as? String
        refuseViewData[(str_leadingModelValue.lowercased() + String(str_makeText))] = dic[(str_leadingModelValue.lowercased() + String(str_makeText))] as? String
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard DeviceSocketDelegate.shared.isTalking == false else {
            //: isLateronRefuseView = true
            isLateronRefuseView = true
            //: return
            return
        }
        //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
        self.alertQueue.onNext(GrantWindowType.Attestation_Refuse)
    }

    /// 通话结束后
    //: @objc private func showRefuseView() {
    @objc private func noFreezeOn() {
        //: if isLateronRefuseView {
        if isLateronRefuseView {
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(GrantWindowType.Attestation_Refuse)
        }
    }

    //: func showAlert() {
    func paintTheLily() {
        //: guard self.dataSource.count > 0 else { return }
        guard self.dataSource.count > 0 else { return }
        //: self.actionForTask(type: self.dataSource.first!)
        self.nearPoliteness(type: self.dataSource.first!)
    }

    //: func actionForTask(type: PopupWindowType) {
    func nearPoliteness(type: GrantWindowType) {
        //: switch type {
        switch type {
        //: case .sign_in:
        case .sign_in:
            //: if let index = self.dataSource.firstIndex(of: .sign_in) {
            if let index = self.dataSource.firstIndex(of: .sign_in) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: EditTextThen.share.func__pushToWebVC(webViewType: .SiginPopup)
            EditTextThen.share.hailType(webViewType: .SiginPopup)

        //: case .video_Cover:
        case .video_Cover:
            //: if let index = self.dataSource.firstIndex(of: .video_Cover) {
            if let index = self.dataSource.firstIndex(of: .video_Cover) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCoverPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = VideoUpView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData))
            //: view.show()
            view.extendedEnd()

        //: case .startLive_Tips:
        case .startLive_Tips:
            //: if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
            if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: if isShowLiveTipsView {
            if isShowLiveTipsView {
                //: return
                return
            }
            //: let view = TalkingLiveTipsPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = FileGiftView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData))
            //: view.show()
            view.pointDown()
            //: isShowLiveTipsView = true
            isShowLiveTipsView = true
            //: view.endBlock = { [weak self] in
            view.endBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.isShowLiveTipsView = false
                self.isShowLiveTipsView = false
            }

        //: case.video_Call:
        case .video_Call:
            //: if let index = self.dataSource.firstIndex(of: .video_Call) {
            if let index = self.dataSource.firstIndex(of: .video_Call) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCallPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = NameFreeView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData))
            //: view.show()
            view.voiceFor()

        //: case.face_Verification:
        case .face_Verification:
            //: if let index = self.dataSource.firstIndex(of: .face_Verification) {
            if let index = self.dataSource.firstIndex(of: .face_Verification) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingFaceVerificationPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = BottomView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData))
            //: view.show()
            view.capacityByOf()

        //: case .Web_Subscribe:
        case .Web_Subscribe:
            //: if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
            if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let date = Defaults.object(forKey: TalkingMaleUnsubscribedAlertIsShow)
            let date = kLet_turnPartyValue.object(forKey: kLet_statusName)
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.comeOut(date: Date(), dateFormat: (str_priceButtonInName.replacingOccurrences(of: "clear", with: "yy") + "-MM-dd"))
            //: if date == nil || (date as! String) != today {
            if date == nil || (date as! String) != today {
                //: Defaults.set(today, forKey: TalkingMaleUnsubscribedAlertIsShow)
                kLet_turnPartyValue.set(today, forKey: kLet_statusName)
                //: EditTextThen.share.func__pushToSubscribeAlert()
                EditTextThen.share.addShowParams()
            }

        //: case.Attestation_Refuse:
        case .Attestation_Refuse:
            //: if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
            if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingAttestationRefusePopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = ColumnThen(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData))
            //: view.setViewData(dit: refuseViewData)
            view.titleList(dit: refuseViewData)
            //: view.show()
            view.large()

        //: case .New_Guidance:
        case .New_Guidance:
            //: if let index = self.dataSource.firstIndex(of: .New_Guidance) {
            if let index = self.dataSource.firstIndex(of: .New_Guidance) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingNewGuidancePopUpView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = GiftIndexReactiveCompatible(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData))
            //: view.show()
            view.noSub()
        }
    }
}
