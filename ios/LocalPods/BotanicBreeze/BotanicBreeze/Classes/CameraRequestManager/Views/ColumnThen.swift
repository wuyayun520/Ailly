
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_inputLeadingValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_livetc_warn" :*/
fileprivate let str_colorData:[Character] = ["i","c","o","n","_","l","i","v","e","t","c","_","w","a","r","n"]

/*: "System notification" :*/
fileprivate let str_textCornerElseTitle:String = "Systemsmall data var data"
fileprivate let str_messageData:String = " novideo size source mode"
fileprivate let str_appValue:[Character] = ["t","i","f","i","c","a","t","i","o","n"]

/*: "Upload Now" :*/
fileprivate let str_originData:String = "var window let let blockUploa"
fileprivate let str_identityName:String = "d Nowto make view bar after"

/*: "btn_me_program_photo_delete" :*/
fileprivate let str_elementData:[Character] = ["b","t","n","_","m","e","_","p","r","o","g","r","a","m","_","p","h"]
fileprivate let str_generateLayerImageName:String = "oview"
fileprivate let str_itemContent:String = "_deleteself record if"

/*: "content" :*/
fileprivate let str_managerTitle:String = "cocentertecentert"

/*: "jumpKey" :*/
fileprivate let str_walkMaxValue:String = "any extension style try requestjumpKey"

/*: "uploadUserHeaderPic" :*/
fileprivate let str_popActualVarText:[Character] = ["u","p","l","o","a","d","U","s","e","r","H","e","a","d","e","r","P"]
fileprivate let str_logText:[Character] = ["i","c"]

/*: "truePersonAuth" :*/
fileprivate let str_makeData:String = "truePevideo content mode window"
fileprivate let str_liveName:[Character] = ["r"]
fileprivate let str_coverText:String = "up title self if viewsonAuth"

/*: "headPic" :*/
fileprivate let str_meName:[Character] = ["h","e","a","d","P","i"]
fileprivate let str_buttonData:String = "player"

/*: "Modify the success" :*/
fileprivate let str_sendPrizeModelData:String = "Modifmake let image cell"
fileprivate let str_popData:String = "center observer print succes"
fileprivate let str_whenValue:String = "number"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColumnThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/23.
//

//: import UIKit
import UIKit

/// 真人认证被拒,头像审核提示弹窗

//: class TalkingAttestationRefusePopUpView: UIView {
class ColumnThen: UIView {
    //: var popView: TalkingPopView?
    var popView: NameThen?
    //: var pushType = ""
    var pushType = ""

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.watchful()
        //: self.setupSubViewsConstraint()
        self.result()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_inputLeadingValue.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.eponymUp(name: "icon_livetc_warn")
        imag.image = UIImage.eponymUp(name: (String(str_colorData)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var title: UILabel = {
    private lazy var title: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lb.font = UIFont.pingfang(type: .Medium, fontSize: 18)
        //: lb.text = "System notification".localized
        lb.text = (String(str_textCornerElseTitle.prefix(6)) + String(str_messageData.prefix(3)) + String(str_appValue)).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var mesageLB: UILabel = {
    private lazy var mesageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.pingfang(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Upload Now".localized, for: .normal)
        btn.setTitle((String(str_originData.suffix(5)) + String(str_identityName.prefix(5))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 18)
        btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 18)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(finishClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.eponymUp(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_elementData) + str_generateLayerImageName.replacingOccurrences(of: "view", with: "to") + String(str_itemContent.prefix(7)))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(flora), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingAttestationRefusePopUpView {
extension ColumnThen {
    //: func setViewData(dit: [String: String]) {
    func titleList(dit: [String: String]) {
        //: mesageLB.text = dit["content"]
        mesageLB.text = dit[(str_managerTitle.replacingOccurrences(of: "center", with: "n"))]
        //: pushType = dit["jumpKey"] ?? ""
        pushType = dit[(String(str_walkMaxValue.suffix(7)))] ?? ""
    }

    //: @objc private func finishBtnClick() {
    @objc private func finishClick() {
        //: if pushType == "uploadUserHeaderPic" {
        if pushType == (String(str_popActualVarText) + String(str_logText)) {
            //: updatePhotoButtonClick()
            accumulationClick()
            //: } else if pushType == "truePersonAuth" {
        } else if pushType == (String(str_makeData.prefix(6)) + String(str_liveName) + String(str_coverText.suffix(7))) {
            //: EqualThen.share.loginUserMode.isTPAuth = "3"
            EqualThen.share.loginUserMode.isTPAuth = "3"
            //: EditTextThen.share.func__pushUserVerifyController(toast: nil)
            EditTextThen.share.alongTarget(toast: nil)
            //: dismiss()
            pathLine()
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func flora() {
        //: dismiss()
        pathLine()
    }

    //: func show() {
    func large() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = NameThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.observe(view: self)
        //: popView?.showInView(view: MacroDefine.getWindow())
        popView?.shackUp(view: UserMacroDefine.toUp())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func pathLine() {
        //: popView?.dismissView()
        popView?.big()
        //: popView = nil
        popView = nil
    }

    /// 更新photo
    //: private func updatePhotoButtonClick() {
    private func accumulationClick() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        RubricThen.onError(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = GestureDataReactiveCompatible.extra(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
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
                            self.curriculum(img: image)
                        }
                        //: return
                }
                //: vc.imagePickerControllerDidCancelHandle = { [weak self] in
                vc.imagePickerControllerDidCancelHandle = { [weak self] in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: self.dismiss()
                    self.pathLine()
                }
                //: } else {
            } else {
                //: self.dismiss()
                self.pathLine()
            }
        }
    }

    //: private func req_updateInfo(img: UIImage) {
    private func curriculum(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.key()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(str_meName) + str_buttonData.replacingOccurrences(of: "player", with: "c")): resultData]
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        CameraThen.underbelly(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dismiss()
            self.pathLine()
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
            self.fileFirst(showMsg: (String(str_sendPrizeModelData.prefix(5)) + "y the" + String(str_popData.suffix(7)) + str_whenValue.replacingOccurrences(of: "number", with: "s")).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: EqualThen.share.loginUserMode.headPic = data["headPic"] as? String
            EqualThen.share.loginUserMode.headPic = data[(String(str_meName) + str_buttonData.replacingOccurrences(of: "player", with: "c"))] as? String
            //: EqualThen.share.loginUserMode.headPicStatus = 0
            EqualThen.share.loginUserMode.headPicStatus = 0
        }
    }
}

// MARK: - Layout

//: extension TalkingAttestationRefusePopUpView {
extension ColumnThen {
    // 添加视图
    //: private func setupSubviews() {
    private func watchful() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(title)
        contentView.addSubview(title)
        //: contentView.addSubview(mesageLB)
        contentView.addSubview(mesageLB)
        //: contentView.addSubview(finishBtn)
        contentView.addSubview(finishBtn)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func result() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 297), height: actualWidth(w: 350)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 350)))
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.size.equalTo(actualWidth(w: 93))
            make.size.equalTo(actualWidth(w: 93))
        }
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(topIcon.snp.bottom).offset(21)
            make.top.equalTo(topIcon.snp.bottom).offset(21)
        }
        //: mesageLB.snp.makeConstraints { make in
        mesageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(21)
            make.leading.equalTo(21)
            //: make.trailing.equalTo(-21)
            make.trailing.equalTo(-21)
            //: make.top.equalTo(title.snp.bottom).offset(10)
            make.top.equalTo(title.snp.bottom).offset(10)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
