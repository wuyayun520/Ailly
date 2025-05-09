
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_greetText:[UInt8] = [0xa,0xf,0xa,0x15,0xc9,0x4,0x10,0x5,0x6,0x13,0xdb,0xca,0xc1,0x9,0x2,0x14,0xc1,0xf,0x10,0x15,0xc1,0x3,0x6,0x6,0xf,0xc1,0xa,0xe,0x11,0xd,0x6,0xe,0x6,0xf,0x15,0x6,0x5]

fileprivate func chromaticColor(user num: UInt8) -> UInt8 {
    let value = Int(num) - 161
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "bg_others_shadow_up" :*/
fileprivate let str_eventNoValue:String = "bg_othview else lab if var"
fileprivate let str_targetContent:String = "let game blind data makeers_s"
fileprivate let str_contentPlayerFileData:String = "hadow_upmessage corner bar center"

/*: "nav_back_black_nor" :*/
fileprivate let str_infoCustomData:[Character] = ["n","a","v","_","b","a","c","k","_","b","l","a","c","k","_","n"]
fileprivate let str_willTitle:[Character] = ["o","r"]

/*: "btn_detail_more" :*/
fileprivate let str_quickData:[Character] = ["b","t","n","_","d","e","t","a","i","l","_","m"]
fileprivate let str_indexViaLabelTitle:String = "obottom"

/*: "Shielding Success" :*/
fileprivate let str_statusValue:String = "return manager index container rawShield"
fileprivate let str_playerClearSharedName:String = "viewess"

/*: "Unmasking Succeeded" :*/
fileprivate let str_managerName:[Character] = ["U","n","m","a","s","k","i","n","g"," ","S","u","c"]
fileprivate let str_pathValue:String = "ceecurd"

/*: "Report" :*/
fileprivate let str_toValue:[Character] = ["R"]
fileprivate let str_nextValue:[Character] = ["e","p","o","r","t"]

/*: "Remvoe Block" :*/
fileprivate let str_colorValue:[Character] = ["R","e","m","v","o","e"," "]
fileprivate let str_equalName:[Character] = ["B","l","o","c","k"]

/*: "Block" :*/
fileprivate let str_reportValue:String = "if safe superBlock"

/*: "Cancel" :*/
fileprivate let str_resultName:String = "frame lay giftCancel"

/*: "OK" :*/
fileprivate let str_audienceData:String = "view"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/9.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailNaviBarView: UIView {
class WithThen: UIView {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var isBlack = false
    private var isBlack = false // 是否已拉黑
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = OccurrentInfoModel() // 用户资料

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: setupSubviews()
        remindSubviews()
        //: setupSubViewsConstraint()
        componentConstraint()
        //: bindInteraction()
        cleaveStartReciprocation()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_greetText.map{chromaticColor(user: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.eponymUp(name: "bg_others_shadow_up")
        imgV.image = UIImage.eponymUp(name: (String(str_eventNoValue.prefix(6)) + String(str_targetContent.suffix(5)) + String(str_contentPlayerFileData.prefix(8))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: lazy var whiteBgView: UIView = {
    lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.alpha = 0
        v.alpha = 0
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lab.font = UIFont.pingfang(type: .Medium, fontSize: 17)
        //: lab.textColor = .appTitleColor()
        lab.textColor = .executeTo()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var backButton: UIButton = {
    lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.eponymUp(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.eponymUp(name: (String(str_infoCustomData) + String(str_willTitle))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(isButton), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var moreButton: UIButton = {
    lazy var moreButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.eponymUp(name: "btn_detail_more").withRenderingMode(.alwaysTemplate)
        let img = UIImage.eponymUp(name: (String(str_quickData) + str_indexViaLabelTitle.replacingOccurrences(of: "bottom", with: "re"))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingUserDetailNaviBarView {
extension WithThen {
    /// 拉黑和取消拉黑
    //: private func req_pullBlackRequest() {
    private func petitionRequest() {
        //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, result, errorModel in
        TitleEqualRequestManager.betweenValue(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isBlack = !self.isBlack
                self.isBlack = !self.isBlack
                //: let toastStr = self.isBlack == true ? "Shielding Success".localized : "Unmasking Succeeded".localized
                let toastStr = self.isBlack == true ? (String(str_statusValue.suffix(6)) + "ing Su" + str_playerClearSharedName.replacingOccurrences(of: "view", with: "cc")).localized : (String(str_managerName) + str_pathValue.replacingOccurrences(of: "cur", with: "de")).localized
                //: ProgressHUD.toast(toastStr)
                ModelReactiveCompatible.doMake(toastStr)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingUserDetailNaviBarView {
extension WithThen {
    //: @objc private func clickBackButtonAction() {
    @objc private func isButton() {
        //: EditTextThen.share.func__getCurrentActivityVC()?.navigationController?.popViewController(animated: true)
        EditTextThen.share.addGet()?.navigationController?.popViewController(animated: true)
    }

    //: @objc private func registerMoreButtonAction() {
    @objc private func app() {
        //: let vc = TalkingMunuPopView.init(frame: UIScreen.main.bounds)
        let vc = OnViewDelegate(frame: UIScreen.main.bounds)
        //: var titleArr = ["Report".localized]
        var titleArr = [(String(str_toValue) + String(str_nextValue)).localized]
        //: let uid = Int(userInfoModel.uid) ?? 0
        let uid = Int(userInfoModel.uid) ?? 0

        //: titleArr.append(self.isBlack ? "Remvoe Block".localized : "Block".localized)
        titleArr.append(self.isBlack ? (String(str_colorValue) + String(str_equalName)).localized : (String(str_reportValue.suffix(5))).localized)

        //: vc.initwithList(cellTitleList: titleArr)
        vc.videoList(cellTitleList: titleArr)
        //: vc.munuBlock = { index, str in
        vc.munuBlock = { index, _ in
            //: if index==0 {
            if index == 0 {
                //: self.reportAction()
                self.crucifixionAction()
                //: } else if index==1 {
            } else if index == 1 {
                //: self.pullBlackAction()
                self.controlPullIn()
            }
        }
    }

    /// 举报用户
    //: private func reportAction() {
    private func crucifixionAction() {
        //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        let reportView = WithSkinViewDelegate(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        //: reportView.showReportViewIn(view: nil)
        reportView.withPair(view: nil)
    }

    /// 拉黑用户
    //: private func pullBlackAction() {
    private func controlPullIn() {
        //: guard self.isBlack == false else {
        guard self.isBlack == false else {
            //: req_pullBlackRequest()
            petitionRequest()
            //: return
            return
        }

        //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
        MotilityThen.viewConfig(title: nil, message: kLet_viewNetValue, leftBtnTitle: (String(str_resultName.suffix(6))).localized, rightBtnTitle: "OK".localized) {
            //: TalkingAlertShow.hideAlert()
            MotilityThen.afterward()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            MotilityThen.afterward()
            //: self.req_pullBlackRequest()
            self.petitionRequest()
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailNaviBarView {
extension WithThen {
    /// 刷新
    //: func refreshView(_ userModel: TalkingUserInfoModel) {
    func withTheme(_ userModel: OccurrentInfoModel) {
        //: self.userInfoModel = userModel
        self.userInfoModel = userModel
        //: self.isBlack = userModel.inMyBlackList
        self.isBlack = userModel.inMyBlackList
        //: self.moreButton.isHidden = (userModel.uid == EqualThen.share.loginUid)
        self.moreButton.isHidden = (userModel.uid == EqualThen.share.loginUid)
        //: titleLab.text = userModel.nickname
        titleLab.text = userModel.nickname
    }

    //: private func setupSubviews() {
    private func remindSubviews() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(bgImgView)
        addSubview(bgImgView)
        //: addSubview(whiteBgView)
        addSubview(whiteBgView)
        //: whiteBgView.addSubview(titleLab)
        whiteBgView.addSubview(titleLab)
        //: addSubview(backButton)
        addSubview(backButton)
        //: addSubview(moreButton)
        addSubview(moreButton)
    }

    //: private func setupSubViewsConstraint() {
    private func componentConstraint() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_timeSenseValue)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLet_deviceRecordValue)
            //: make.width.equalTo(200)
            make.width.equalTo(200)
        }

        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLet_deviceRecordValue)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_timeSenseValue)
        }

        //: moreButton.snp.makeConstraints { make in
        moreButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(backButton.snp.centerY)
            make.centerY.equalTo(backButton.snp.centerY)
            //: make.size.equalTo(CGSize(width: 45, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 45, height: kLet_deviceRecordValue))
        }
    }

    //: private func bindInteraction() {
    private func cleaveStartReciprocation() {
        //: moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
        moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.registerMoreButtonAction()
            self.app()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
