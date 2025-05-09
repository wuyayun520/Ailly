
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_toValue:[UInt8] = [0x78,0x7f,0x78,0x65,0x39,0x72,0x7e,0x75,0x74,0x63,0x2b,0x38,0x31,0x79,0x70,0x62,0x31,0x7f,0x7e,0x65,0x31,0x73,0x74,0x74,0x7f,0x31,0x78,0x7c,0x61,0x7d,0x74,0x7c,0x74,0x7f,0x65,0x74,0x75]

private func titleEqual(info num: UInt8) -> UInt8 {
    return num ^ 17
}

/*: "bg_message_top" :*/
fileprivate let str_minName:[Character] = ["b","g","_","m","e","s","s","a"]
fileprivate let str_screenTitle:[Character] = ["g","e","_","t","o","p"]

/*: "img_me_edit_photo_default" :*/
fileprivate let str_toName:[Character] = ["i","m","g","_","m","e","_","e","d","i","t","_","p"]
fileprivate let str_promptFoundationValue:String = "hfront"
fileprivate let str_makeData:String = "to_devalue make"

/*: "icon_lounge" :*/
fileprivate let str_buttonValue:[Character] = ["i","c","o","n","_","l","o"]
fileprivate let str_topText:String = "ungmessage"

/*: "#777777" :*/
fileprivate let str_upData:[Character] = ["#","7","7","7","7","7","7"]

/*: "#FF506D" :*/
fileprivate let str_searchValue:[Character] = ["#","F","F","5","0","6","D"]

/*: "Reviewing" :*/
fileprivate let str_textManagerData:String = "Reviewinbirthday top size else"
fileprivate let str_backgroundIndexViewText:String = "hidden"

/*: "headPic" :*/
fileprivate let str_equalData:[Character] = ["h","e","a","d","P","i","c"]

/*: "Modify the success" :*/
fileprivate let str_listTitle:[Character] = ["M","o","d","i","f","y"," ","t"]
fileprivate let str_conversationPhotoText:[Character] = ["h","e"," "]
fileprivate let str_partyName:String = "sutoptopess"

/*: "UID:" :*/
fileprivate let str_shareName:String = "make down session nameUID:"

/*: "UID Copied" :*/
fileprivate let str_actionValue:[Character] = ["U","I","D"," ","C","o","p","i","e","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingUserReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTopCell: UITableViewCell {
class TalkingUserReactiveCompatible: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        researchLaboratory()
        //: setupSubViewsConstraint()
        sumerchangeConstraint()
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_toValue.map{titleEqual(info: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.eponymUp(name: "bg_message_top"))
        let imag = UIImageView(image: UIImage.eponymUp(name: (String(str_minName) + String(str_screenTitle))))
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var iconImag: UIButton = {
    private lazy var iconImag: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "img_me_edit_photo_default"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_toName) + str_promptFoundationValue.replacingOccurrences(of: "front", with: "o") + String(str_makeData.prefix(5)) + "fault")), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.layer.cornerRadius = 89/2
        btn.layer.cornerRadius = 89 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(updatePhotoButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(factor), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var nameLB: UILabel = {
    private lazy var nameLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lb.font = UIFont.pingfang(type: .Medium, fontSize: 18)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.executeTo()
        //: lb.text = ""
        lb.text = ""
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.eponymUp(name: "icon_lounge")
        img.image = UIImage.eponymUp(name: (String(str_buttonValue) + str_topText.replacingOccurrences(of: "message", with: "e")))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var idBtn: TalkingButton = {
    private lazy var idBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton.init()
        let btn = ProgressTalkingButton()
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
//        btn.spaceBetweenTitleAndImage = 4
        //: btn.setTitleColor(UIColor.init(hex: "#777777"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(str_upData))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.pingfang(type: .Regular, fontSize: 14)
//        btn.setImage(UIImage.eponymUp(name: "btn_me_copy"), for: .normal)
//        btn.addTarget(self, action: #selector(copyBtnClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

//    private lazy var editImag: UIImageView = {
//        let imag = UIImageView.init(image: UIImage.eponymUp(name: "btn_me_new_edit"))
//        return imag
//    }()
//    private lazy var editPushBtn: UIButton = {
//        let btn = UIButton.init()
//        btn.addTarget(self, action: #selector(editBtnClick), for: .touchUpInside)
//        return btn
//    }()
    //: private lazy var statusLB: UILabel = {
    private lazy var statusLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 12)
        lb.font = UIFont.pingfang(type: .Medium, fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: (String(str_searchValue)))
        //: lb.text = "Reviewing".localized
        lb.text = (String(str_textManagerData.prefix(8)) + str_backgroundIndexViewText.replacingOccurrences(of: "hidden", with: "g")).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.layer.cornerRadius = 8
        lb.layer.cornerRadius = 8
        //: lb.layer.masksToBounds = true
        lb.layer.masksToBounds = true
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMeTopCell {
extension TalkingUserReactiveCompatible {
    /// 更新个人资料
    //: private func req_updateInfo(img: UIImage) {
    private func infoChange(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.key()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(str_equalData)): resultData]
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        CameraThen.underbelly(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: guard succeed else {
            guard succeed else {
                //: if errorModel?.errorCode != 100 {
                if errorModel?.errorCode != 100 {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                    self.oversight(showMsg: errorModel!.errorMsg)
                }
                //: return
                return
            }

            //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
            self.fileFirst(showMsg: (String(str_listTitle) + String(str_conversationPhotoText) + str_partyName.replacingOccurrences(of: "top", with: "c")).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: EqualThen.share.loginUserMode.headPic = data["headPic"] as? String
            EqualThen.share.loginUserMode.headPic = data[(String(str_equalData))] as? String
            //: statusLB.isHidden = false
            statusLB.isHidden = false
            //: EqualThen.share.loginUserMode.headPicStatus = 0
            EqualThen.share.loginUserMode.headPicStatus = 0
            //: self.iconImag.setUrlImage(urlStr: EqualThen.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
            self.iconImag.dataBack(urlStr: EqualThen.share.loginUserMode.headPic ?? (String(str_toName) + str_promptFoundationValue.replacingOccurrences(of: "front", with: "o") + String(str_makeData.prefix(5)) + "fault"))
        }
    }
}

// MARK: - Event

//: extension TalkingMeTopCell {
extension TalkingUserReactiveCompatible {
    /// 更新数据
    //: func setViewData() {
    func step() {
        //: iconImag.setUrlImage(urlStr: EqualThen.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
        iconImag.dataBack(urlStr: EqualThen.share.loginUserMode.headPic ?? (String(str_toName) + str_promptFoundationValue.replacingOccurrences(of: "front", with: "o") + String(str_makeData.prefix(5)) + "fault"))
        //: nameLB.textColor = EqualThen.share.loginUserMode.loungePlus ? .userVipColor():.appTitleColor()
        nameLB.textColor = EqualThen.share.loginUserMode.loungePlus ? .active() : .executeTo()
        //: nameLB.text = EqualThen.share.loginUserMode.nickname
        nameLB.text = EqualThen.share.loginUserMode.nickname
        //: loungeImgV.isHidden = !EqualThen.share.loginUserMode.loungePlus
        loungeImgV.isHidden = !EqualThen.share.loginUserMode.loungePlus
        //: idBtn.setTitle("UID:" + EqualThen.share.loginUserMode.userID, for: .normal)
        idBtn.setTitle((String(str_shareName.suffix(4))) + EqualThen.share.loginUserMode.userID, for: .normal)
        //: statusLB.isHidden = (EqualThen.share.loginUserMode.headPicStatus != HeadePicStatus.isOnGoing.rawValue)
        statusLB.isHidden = (EqualThen.share.loginUserMode.headPicStatus != SourceCurrentCountLiteral.isOnGoing.rawValue)
    }

    /// copy Id
    //: @objc private func copyBtnClick() {
    @objc private func viewClick() {
        //: let paste = UIPasteboard.general
        let paste = UIPasteboard.general
        //: paste.string = EqualThen.share.loginUserMode.userID
        paste.string = EqualThen.share.loginUserMode.userID
        //: self.func__showStatusBarSuccessMsg(showMsg: "UID Copied".localized)
        self.fileFirst(showMsg: (String(str_actionValue)).localized)
    }

    /// 更新photo
    //: @objc private func updatePhotoButtonClick() {
    @objc private func factor() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        RubricThen.onError(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, needCircleCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = GestureDataReactiveCompatible.extra(allowImgCrop: true, needCircleCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.infoController()?.present(vc, animated: true)
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
                            //: let image: UIImage = photos?[0] ?? UIImage()
                            let image: UIImage = photos?[0] ?? UIImage()
                            // 上传头像
                            //: self.req_updateInfo(img: image)
                            self.infoChange(img: image)
                        }
                        //: return
                }
            }
        }
    }

    /// 真人认证
    //: @objc private func verifyBtnClick() {
    @objc private func showClick() {
        // 先判断上传的头像是否通过，再判断真人认证状态
//        if EqualThen.share.loginUserMode.headPicStatus == SourceCurrentCountLiteral.unknown.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Please finish uploading your avatar first")
//        } else if EqualThen.share.loginUserMode.headPicStatus == SourceCurrentCountLiteral.isOnGoing.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Avatar is under reviewing")
//        } else {
//            isTPAuthTool()
//        }
        //: isTPAuthTool()
        surroundingTool()
    }

    //: private func isTPAuthTool() {
    private func surroundingTool() {
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

    /// 编辑个人资料
    //: @objc private func editBtnClick() {
    @objc private func militaryPolice() {
        //: EditTextThen.share.func__pushToUserDetailVC(uid: EqualThen.share.loginUid)
        EditTextThen.share.soulAge(uid: EqualThen.share.loginUid)
    }
}

// MARK: - Layout

//: extension TalkingMeTopCell {
extension TalkingUserReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func researchLaboratory() {
        //: self.contentView.addSubview(bgImgView)
        self.contentView.addSubview(bgImgView)
        //: bgImgView.addSubview(iconImag)
        bgImgView.addSubview(iconImag)
        //: bgImgView.addSubview(nameLB)
        bgImgView.addSubview(nameLB)
        //: bgImgView.addSubview(loungeImgV)
        bgImgView.addSubview(loungeImgV)
        //: bgImgView.addSubview(idBtn)
        bgImgView.addSubview(idBtn)
//        bgImgView.addSubview(editImag)
//        bgImgView.addSubview(editPushBtn)
        //: bgImgView.addSubview(statusLB)
        bgImgView.addSubview(statusLB)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func sumerchangeConstraint() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
            //: make.height.equalTo(StatusBarHeight+228)
            make.height.equalTo(kLet_timeSenseValue + 228)
        }

        //: iconImag.snp.makeConstraints { make in
        iconImag.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+50)
            make.top.equalTo(kLet_timeSenseValue + 50)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(89)
            make.width.height.equalTo(89)
        }

        //: statusLB.snp.makeConstraints { make in
        statusLB.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.top).offset(-7)
            make.top.equalTo(iconImag.snp.top).offset(-7)
            //: make.centerX.equalTo(iconImag)
            make.centerX.equalTo(iconImag)
            //: make.size.equalTo(CGSize.init(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }

        //: nameLB.snp.makeConstraints { make in
        nameLB.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.bottom).offset(10)
            make.top.equalTo(iconImag.snp.bottom).offset(10)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(21)
            make.height.equalTo(21)
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(kLet_cameraValue / 2)
        }

        //: loungeImgV.snp.makeConstraints { make in
        loungeImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB.snp.trailing).offset(4)
            make.leading.equalTo(nameLB.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLB)
            make.centerY.equalTo(nameLB)
            //: make.size.equalTo(CGSize(width: 20, height: 20))
            make.size.equalTo(CGSize(width: 20, height: 20))
        }

        //: idBtn.snp.makeConstraints { make in
        idBtn.snp.makeConstraints { make in
            //: make.top.equalTo(nameLB.snp.bottom).offset(8)
            make.top.equalTo(nameLB.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(17)
            make.height.equalTo(17)
        }

//        editImag.snp.makeConstraints { make in
//            make.centerY.equalTo(iconImag)
//            make.trailing.equalToSuperview().offset(-16)
//            make.width.equalTo(6)
//            make.height.equalTo(11)
//        }
//        editPushBtn.snp.makeConstraints { make in
//            make.centerY.equalTo(editImag)
//            make.trailing.equalToSuperview().offset(-10)
//            make.width.height.equalTo(60)
//        }
    }
}
