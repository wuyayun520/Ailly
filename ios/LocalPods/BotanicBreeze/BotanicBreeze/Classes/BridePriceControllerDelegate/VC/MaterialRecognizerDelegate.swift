
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let str_toolName:[Character] = ["P","e","r","s","o","n","a","l"," ","i","n","f","o","r","m"]
fileprivate let str_bindData:[Character] = ["a","t","i","o","n"]

/*: _ :*/
fileprivate let str_moreValue:String = "_"

/*: "male" :*/
fileprivate let str_equalName:[UInt8] = [0x8a,0x7e,0x89,0x82]

fileprivate func makeName(user num: UInt8) -> UInt8 {
    let value = Int(num) - 29
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "female" :*/
fileprivate let str_eventText:String = "FEMALE"

/*: "sex" :*/
fileprivate let str_showColorData:String = "SEX"

/*: "nickname" :*/
fileprivate let str_timeData:String = "nicton"
fileprivate let str_userName:String = "anore"

/*: "birthday" :*/
fileprivate let str_leadingTitle:String = "birthtext"
fileprivate let str_succeedProgressValue:[Character] = ["a","y"]

/*: "%.2d" :*/
fileprivate let str_imageRawTitle:String = "%.2dlet make make"

/*: - :*/
fileprivate let str_cornerName:String = "-"

/*: "User :*/
fileprivate let str_blackTitle:String = "Userequal next"

/*: "invite_code" :*/
fileprivate let str_viewData:[UInt8] = [0x79,0x7e,0x66,0x79,0x64,0x75,0x4f,0x73,0x7f,0x74,0x75]

private func letHidden(lab num: UInt8) -> UInt8 {
    return num ^ 16
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MaterialRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditInfoVC: TalkingBaseViewController {
class MaterialRecognizerDelegate: SeamViewController {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        snapFrom(isOpen: false)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 返回到此页面时，重新赋值
        //: if editInfoView.nameInputView.text?.count ?? 0 > 0 {
        if editInfoView.nameInputView.text?.count ?? 0 > 0 {
            //: EqualThen.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
            EqualThen.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
        }
        //: if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
        if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
            //: EqualThen.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
            EqualThen.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "Personal information".localized
        title = (String(str_toolName) + String(str_bindData)).localized
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: setupSubviews()
        dismissSubviews()
        //: setupSubViewsConstraint()
        all()
        //: bindInteraction()
        addOn()
        //: addTapGestureRecognizer()
        compound()
    }

    // MARK: - Lazy Load

    //: private lazy var editInfoView: TalkingLoginEditInfoView = {
    private lazy var editInfoView: RawView = {
        //: let infoView = TalkingLoginEditInfoView()
        let infoView = RawView()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditInfoVC {
extension MaterialRecognizerDelegate {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func white() {
        //: super.naviPopback()
        super.white()
        // 埋点
        //: let eventID = "\(click_registration_information1_backBTN)_\(EqualThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_pointValue)_\(EqualThen.share.userFillInfoMode.sex == RunReplaceableCollection.male.rawValue ? String(bytes: str_equalName.map{makeName(user: $0)}, encoding: .utf8)! : (str_eventText.lowercased()))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_textData.historicalPaper(eventID: eventID)
    }

    /// next事件
    //: private func commitControlAction() {
    private func picComponent() {
        //: if EqualThen.share.userFillInfoMode.nickName.count <= 0 {
        if EqualThen.share.userFillInfoMode.nickName.count <= 0 {
            //: getRandomNickname()
            duringGift()
        }
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: params["sex"] = EqualThen.share.userFillInfoMode.sex
        params[(str_showColorData.lowercased())] = EqualThen.share.userFillInfoMode.sex
        //: params["nickname"] = EqualThen.share.userFillInfoMode.nickName
        params[(str_timeData.replacingOccurrences(of: "to", with: "k") + str_userName.replacingOccurrences(of: "nor", with: "m"))] = EqualThen.share.userFillInfoMode.nickName
        //: params["birthday"] = "\(String(format: "%.2d", EqualThen.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", EqualThen.share.userFillInfoMode.birthDay))-\(EqualThen.share.userFillInfoMode.birthYear)"
        params[(str_leadingTitle.replacingOccurrences(of: "text", with: "d") + String(str_succeedProgressValue))] = "\(String(format: "%.2d", EqualThen.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", EqualThen.share.userFillInfoMode.birthDay))-\(EqualThen.share.userFillInfoMode.birthYear)"
        //: let VC = TalkingLoginEditPhotoVC()
        let VC = StereoscopicPhotographThen()
        //: VC.params = params
        VC.params = params
        //: currentViewController()?.navigationController?.pushViewController(VC, animated: true)
        infoController()?.navigationController?.pushViewController(VC, animated: true)
    }

    /// skip事件
    //: private func func__skipBtnAction() {
    private func smart() {
        //: getRandomNickname()
        duringGift()
        //: EqualThen.share.userFillInfoMode.setBirth()
        EqualThen.share.userFillInfoMode.groupCamera()
        //: EqualThen.share.userFillInfoMode.inviteCode = ""
        EqualThen.share.userFillInfoMode.inviteCode = ""
        //: commitControlAction()
        picComponent()
    }

    /// 获取随机昵称
    //: private func getRandomNickname() {
    private func duringGift() {
        //: let randCode = Int(arc4random_uniform(899999) + 100000)
        let randCode = Int(arc4random_uniform(899_999) + 100_000)
        //: EqualThen.share.userFillInfoMode.nickName = "User\(randCode)"
        EqualThen.share.userFillInfoMode.nickName = (String(str_blackTitle.prefix(4))) + "\(randCode)"
    }
}

// MARK: - Layout

//: extension TalkingLoginEditInfoVC {
extension MaterialRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func dismissSubviews() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func all() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func addOn() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) in
        editInfoView.btnBlock = { [weak self] (_ type: ContentInfoType) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic: break
            case .HeadPic: break
            //: case .NickName: break
            case .NickName: break
            //: case .Birth: break
            case .Birth: break
            //: case .Finish:
            case .Finish:
                // 埋点
                //: let eventID = "\(click_registration_information1_nextBTN)_\(EqualThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(kLet_homeContent)_\(EqualThen.share.userFillInfoMode.sex == RunReplaceableCollection.male.rawValue ? String(bytes: str_equalName.map{makeName(user: $0)}, encoding: .utf8)! : (str_eventText.lowercased()))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                kLet_textData.historicalPaper(eventID: eventID)

                // 校验验证码
                //: if EqualThen.share.userFillInfoMode.inviteCode.count > 0 {
                if EqualThen.share.userFillInfoMode.inviteCode.count > 0 {
                    //: let params = ["invite_code": EqualThen.share.userFillInfoMode.inviteCode]
                    let params = [String(bytes: str_viewData.map{letHidden(lab: $0)}, encoding: .utf8)!: EqualThen.share.userFillInfoMode.inviteCode]
                    //: TalkingLoginRequestTool.req_CheckCodeData(params: params) { succeed, _, _ in
                    LoginRequestTool.naturalEvent(params: params) { succeed, _, _ in
                        //: guard succeed else { return }
                        guard succeed else { return }
                        //: self.commitControlAction()
                        self.picComponent()
                    }

                    //: } else {
                } else {
                    //: self.commitControlAction()
                    self.picComponent()
                }

            //: case .Skip:
            case .Skip:
                // 埋点
                //: let eventID = "\(click_registration_information1_skipBTN)_\(EqualThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(kLet_name)_\(EqualThen.share.userFillInfoMode.sex == RunReplaceableCollection.male.rawValue ? String(bytes: str_equalName.map{makeName(user: $0)}, encoding: .utf8)! : (str_eventText.lowercased()))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                kLet_textData.historicalPaper(eventID: eventID)
                //: self.func__skipBtnAction()
                self.smart()
            }
        }
    }
}
