
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_cameraValue:[UInt8] = [0x5b,0x5c,0x5b,0x46,0x1a,0x51,0x5d,0x56,0x57,0x40,0x8,0x1b,0x12,0x5a,0x53,0x41,0x12,0x5c,0x5d,0x46,0x12,0x50,0x57,0x57,0x5c,0x12,0x5b,0x5f,0x42,0x5e,0x57,0x5f,0x57,0x5c,0x46,0x57,0x56]

private func stormSashExample(equal num: UInt8) -> UInt8 {
    return num ^ 50
}

/*: "Personal information" :*/
fileprivate let str_addData:[Character] = ["P","e","r","s","o"]
fileprivate let str_fromValue:String = "model addnal info"
fileprivate let str_equalValue:String = "rmcolorion"

/*: _ :*/
fileprivate let str_attributeEventLetValue:[Character] = ["_"]

/*: "male" :*/
fileprivate let str_clickName:[UInt8] = [0x65,0x6c,0x61,0x6d]

/*: "female" :*/
fileprivate let str_okData:String = "dismiss"
fileprivate let str_textName:String = "bottommalbottom"

/*: "newHeadPic" :*/
fileprivate let str_atLabData:[Character] = ["n","e","w","H","e","a","d","P","i","c"]

/*: "invite_code" :*/
fileprivate let str_equalTotalText:[Character] = ["i","n","v","i"]
fileprivate let str_countData:[Character] = ["t","e","_","c","o","d","e"]

/*: "codeFillType" :*/
fileprivate let str_backData:String = "inside image index classcodeFi"

/*: "RegisterSuccess" :*/
fileprivate let str_makeValue:String = "Registmy make to data"
fileprivate let str_bindViewTitle:String = "cceend"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StereoscopicPhotographThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoVC: TalkingBaseViewController {
class StereoscopicPhotographThen: SeamViewController {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()
    //: var params = [String: Any]()
    var params = [String: Any]()
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_cameraValue.map{stormSashExample(equal: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        snapFrom(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(str_addData) + String(str_fromValue.suffix(8)) + str_equalValue.replacingOccurrences(of: "color", with: "at")).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.tradeTitle()
        //: self.setupSubViewsConstraint()
        self.asset()
        //: self.bindInteraction()
        self.action()
        //: addTapGestureRecognizer()
        compound()

        //: func__checkFinishBtnState()
        effectView()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var editInfoView: TalkingLoginEditPhotoView = {
    lazy var editInfoView: EquationPhotoView = {
        //: let infoView = TalkingLoginEditPhotoView.init()
        let infoView = EquationPhotoView()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditPhotoVC {
extension StereoscopicPhotographThen {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func white() {
        //: super.naviPopback()
        super.white()
        // 埋点
        //: let eventID = "\(click_registration_information2_backBTN)_\(EqualThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_failTabData)_\(EqualThen.share.userFillInfoMode.sex == RunReplaceableCollection.male.rawValue ? String(bytes: str_clickName.reversed(), encoding: .utf8)! : (str_okData.replacingOccurrences(of: "dismiss", with: "f") + str_textName.replacingOccurrences(of: "bottom", with: "e")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_textData.historicalPaper(eventID: eventID)
    }

    /// next事件
    //: func commitControlAction() {
    func arrayTime() {
        // 埋点
        //: let eventID = "\(click_registration_information2_nextBTN)_\(EqualThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_netTitleValue)_\(EqualThen.share.userFillInfoMode.sex == RunReplaceableCollection.male.rawValue ? String(bytes: str_clickName.reversed(), encoding: .utf8)! : (str_okData.replacingOccurrences(of: "dismiss", with: "f") + str_textName.replacingOccurrences(of: "bottom", with: "e")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_textData.historicalPaper(eventID: eventID)

        //: if EqualThen.share.userFillInfoMode.headImage != nil {
        if EqualThen.share.userFillInfoMode.headImage != nil {
            //: let image = EqualThen.share.userFillInfoMode.headImage!
            let image = EqualThen.share.userFillInfoMode.headImage!
            //: params["newHeadPic"] = image.jpegData(compressionQuality: 1)
            params[(String(str_atLabData))] = image.jpegData(compressionQuality: 1)
        }
        //: if EqualThen.share.userFillInfoMode.inviteCode.count > 0 {
        if EqualThen.share.userFillInfoMode.inviteCode.count > 0 {
            //: params["invite_code"] = EqualThen.share.userFillInfoMode.inviteCode
            params[(String(str_equalTotalText) + String(str_countData))] = EqualThen.share.userFillInfoMode.inviteCode

            //: } else {
        } else {
            //: let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey)
            let inviteCode = UserDefaults.standard.string(forKey: kLet_tabData)
            //: if inviteCode?.count ?? 0 > 1 {
            if inviteCode?.count ?? 0 > 1 {
                //: params["invite_code"] = inviteCode
                params[(String(str_equalTotalText) + String(str_countData))] = inviteCode
                //: params["codeFillType"] = 1
                params[(String(str_backData.suffix(6)) + "llType")] = 1
            }
        }

        //: if EqualThen.share.userFillInfoMode.sex == "1" {
        if EqualThen.share.userFillInfoMode.sex == "1" {
            //: view.endEditing(true)
            view.endEditing(true)
            //: ProgressHUD.show()
            ModelReactiveCompatible.fromTarget()
            //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
            LoginRequestTool.user(params: params) { succeed, result, _ in
                //: ProgressHUD.dismiss()
                ModelReactiveCompatible.dataConverterCan()
                //: if succeed {
                if succeed {
                    // 发送通知
                    //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                    NotificationCenter.default.post(name: kLet_popText, object: nil, userInfo: result as! [String: Any])
                    // 注册成功埋点
                    //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                    AdministratorThen.share.duringAdd(key: (String(str_makeValue.prefix(6)) + "erSu" + str_bindViewTitle.replacingOccurrences(of: "end", with: "ss")))
                    //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                    ManagerThen.share.migration(name: (String(str_makeValue.prefix(6)) + "erSu" + str_bindViewTitle.replacingOccurrences(of: "end", with: "ss")))

                    //: if EqualThen.share.loginUserMode.remindBindEmail == true {
                    if EqualThen.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                        //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            //: EditTextThen.share.func__pushToLockUserEmailVC(isShowBack: false)
                            EditTextThen.share.actionTo(isShowBack: false)
                        }
                    }
                }
            }
            //: } else {
        } else {
            //: let VC = TalkingLoginEditAuthAndVideoVC.init()
            let VC = GrantRecognizerDelegate()
            //: VC.params = params
            VC.params = params
            //: self.currentViewController()?.navigationController?.pushViewController(VC, animated: true)
            self.infoController()?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    //: func func__checkFinishBtnState() {
    func effectView() {
        //: let headImg = EqualThen.share.userFillInfoMode.headImage ?? nil
        let headImg = EqualThen.share.userFillInfoMode.headImage ?? nil
        //: editInfoView.commitButton.isEnabled = headImg != nil
        editInfoView.commitButton.isEnabled = headImg != nil
    }
}

// MARK: - Delegate

//: extension TalkingLoginEditPhotoVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
extension StereoscopicPhotographThen: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //: private func func__choicePhotos() {
    private func actionPhotos() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) {  (isOpen: Bool) in
        RubricThen.onError(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = GestureDataReactiveCompatible.extra(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: EditTextThen.share.func__getCurrentActivityVC()?.present(vc, animated: true)
                EditTextThen.share.addGet()?.present(vc, animated: true)
                //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
                vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                                 //: assets: Array<Any>?,
                                                                 _: [Any]?,
                                                                 //: isSelectOriginalPhoto: Bool?)  in
                                                                 _: Bool?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: if photos!.count > 0 {
                        if photos!.count > 0 {
                            //: EqualThen.share.userFillInfoMode.headImage = photos![0]
                            EqualThen.share.userFillInfoMode.headImage = photos![0]
                            //: self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            //: self.func__checkFinishBtnState()
                            self.effectView()
                        }
                }
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoVC {
extension StereoscopicPhotographThen {
    // 添加视图
    //: private func setupSubviews() {
    private func tradeTitle() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func asset() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func action() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) -> Void in
        editInfoView.btnBlock = { [weak self] (_ type: ContentInfoType) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic:
            case .HeadPic:
                //: func__choicePhotos()
                actionPhotos()
            //: break
            //: case .NickName, .Birth, .Skip: break
            case .NickName, .Birth, .Skip: break
            //: case .Finish:
            case .Finish:
                //: self.commitControlAction()
                self.arrayTime()
                //: break
            }

            //: return
        }
    }
}
