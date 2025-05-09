
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewMediumValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Video Cover" :*/
fileprivate let str_postTitle:[Character] = ["V","i","d","e","o"," "]
fileprivate let str_modelName:String = "Coveredge shape translation make message"

/*: "Adding a video cover to show the charm can get more good feelings." :*/
fileprivate let str_labValue:[UInt8] = [0xbf,0x9a,0x9a,0x97,0x90,0x99,0xde,0x9f,0xde,0x88,0x97,0x9a,0x9b,0x91,0xde,0x9d,0x91,0x88,0x9b,0x8c,0xde,0x8a,0x91,0xde,0x8d,0x96,0x91,0x89,0xde,0x8a,0x96,0x9b,0xde,0x9d,0x96,0x9f,0x8c,0x93,0xde,0x9d,0x9f,0x90,0xde,0x99,0x9b,0x8a,0xde,0x93,0x91,0x8c,0x9b,0xde,0x99,0x91,0x91,0x9a,0xde,0x98,0x9b,0x9b,0x92,0x97,0x90,0x99,0x8d,0xd0]

private func thoughtImage(make num: UInt8) -> UInt8 {
    return num ^ 254
}

/*: "img_me_edit_video_default" :*/
fileprivate let str_infoTitle:String = "img_mevar lab user file gesture"
fileprivate let str_fromData:String = "_edit_vmenu player"
fileprivate let str_cellValue:[Character] = ["i","d","e","o","_","d","e","f","a","u","l","t"]

/*: "btn_me_edit_photo_change" :*/
fileprivate let str_buttonText:String = "btn_number situation any manager user"
fileprivate let str_dataTitle:String = "image infoit_p"
fileprivate let str_titleData:String = "_changemode guard title return value"

/*: "btn_dynamic_stop_nor" :*/
fileprivate let str_leadingText:String = "btn_dynammake add"
fileprivate let str_nameData:String = "color replyic_st"
fileprivate let str_userName:String = "center videoop_nor"

/*: "#FF506D" :*/
fileprivate let str_hiddenValue:[Character] = ["#","F","F","5","0","6","D"]

/*: "Reviewing" :*/
fileprivate let str_replyText:[Character] = ["R","e","v"]
fileprivate let str_listName:[Character] = ["i","e","w","i","n","g"]

/*: "Shoot video at least 5 seconds" :*/
fileprivate let str_nameTextContent:String = "conversation image let succeedShoo"
fileprivate let str_labelAddData:String = "deo execute i back self m"
fileprivate let str_pushValue:String = "none manager forat le"
fileprivate let str_userCellTitle:String = "view document image make seconds"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EventWithVideoCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/28.
//

//: import UIKit
import UIKit

//: import Photos
import Photos

//: typealias EditSeleteVideoBlock = (_ coverPath: String, _ videoPath: String) -> Void
typealias EditSeleteVideoBlock = (_ coverPath: String, _ videoPath: String) -> Void
//: typealias DeleteVideoBlock = () -> Void
typealias DeleteVideoBlock = () -> Void

//: class TalkingEditVideoCell: UITableViewCell {
class EventWithVideoCell: UITableViewCell {
    //: var seleteBlock: EditSeleteVideoBlock!
    var seleteBlock: EditSeleteVideoBlock!
    //: var deleteBlock: DeleteVideoBlock!
    var deleteBlock: DeleteVideoBlock!

    //: var coverPath = ""
    var coverPath = ""
    //: var videoPath = ""
    var videoPath = ""
    //: var videoPlayPath = ""
    var videoPlayPath = ""
    //: var videoStatus = -3
    var videoStatus = -3

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: setupSubviews()
        getCracking()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewMediumValue.reversed(), encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: setupSubViewsConstraint()
        equalImage()
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var tipsLB: UILabel = {
    lazy var tipsLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lb.font = UIFont.pingfang(type: .Medium, fontSize: 17)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.executeTo()
        //: lb.text = "Video Cover".localized
        lb.text = (String(str_postTitle) + String(str_modelName.prefix(5))).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lb.font = UIFont.pingfang(type: .Regular, fontSize: 14)
        //: lb.textColor = UIColor.publishView()
        lb.textColor = UIColor.publishView()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.text = "Adding a video cover to show the charm can get more good feelings.".localized
        lb.text = String(bytes: str_labValue.map{thoughtImage(make: $0)}, encoding: .utf8)!.localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var iconBtn: UIButton = {
    lazy var iconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 4
        btn.layer.cornerRadius = 4
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setImage(UIImage.eponymUp(name: "img_me_edit_video_default"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_infoTitle.prefix(6)) + String(str_fromData.prefix(7)) + String(str_cellValue))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.addTarget(self, action: #selector(iconbtnclick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(addIconbtnclick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var changeBtn: UIButton = {
    lazy var changeBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_me_edit_photo_change"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_buttonText.prefix(4)) + "me_ed" + String(str_dataTitle.suffix(4)) + "hoto" + String(str_titleData.prefix(7)))), for: .normal)
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.addTarget(self, action: #selector(changeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(theory), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var playBtn: UIImageView = {
    lazy var playBtn: UIImageView = {
        //: let icon = UIImageView.init()
        let icon = UIImageView()
        //: icon.image = UIImage.eponymUp(name: "btn_dynamic_stop_nor")
        icon.image = UIImage.eponymUp(name: (String(str_leadingText.prefix(9)) + String(str_nameData.suffix(5)) + String(str_userName.suffix(6))))
        //: icon.isHidden = true
        icon.isHidden = true
        //: icon.isUserInteractionEnabled = false
        icon.isUserInteractionEnabled = false
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var statusLB: UILabel = {
    private lazy var statusLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 12)
        lb.font = UIFont.pingfang(type: .Medium, fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: (String(str_hiddenValue)))
        //: lb.text = "Reviewing".localized
        lb.text = (String(str_replyText) + String(str_listName)).localized
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

// MARK: - Setting

//: extension TalkingEditVideoCell {
extension EventWithVideoCell {
    //: func upDateCellView(videoPlayPath: String) {
    func look(videoPlayPath: String) {
        //: self.videoPlayPath = videoPlayPath
        self.videoPlayPath = videoPlayPath
        //: playBtn.isHidden = false
        playBtn.isHidden = false
    }

    //: func setCellView(iconPath: String) {
    func toPath(iconPath: String) {
        //: iconBtn.setUrlImage(urlStr: iconPath)
        iconBtn.dataBack(urlStr: iconPath)
    }

    //: func setVideoStatusLB(status: Int) {
    func componentAcross(status: Int) {
        //: self.videoStatus = status
        self.videoStatus = status
        // 待审核
        //: statusLB.isHidden = status != 0
        statusLB.isHidden = status != 0
        //: changeBtn.isHidden = status != 1
        changeBtn.isHidden = status != 1
    }
}

// MARK: - Event

//: extension TalkingEditVideoCell {
extension EventWithVideoCell {
    //: @objc private func changeBtnClick() {
    @objc private func theory() {
        //: if !EqualThen.share.loginUserMode.isNaUser,
        if !EqualThen.share.loginUserMode.isNaUser,
           //: EqualThen.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           EqualThen.share.loginUserMode.isTPAuth != SkinComparable.isSuccessed.rawValue,
           //: EqualThen.share.appStatus == AppSkinStatus.normal.rawValue {
           EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            PlayerWindowManager.shared.visageMakeUpwardChangeFormWindow()
            //: return
            return
        }
        //: seleteVideoTool()
        holder()
    }

    //: @objc private func iconbtnclick() {
    @objc private func addIconbtnclick() {
        //: if !EqualThen.share.loginUserMode.isNaUser,
        if !EqualThen.share.loginUserMode.isNaUser,
           //: EqualThen.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           EqualThen.share.loginUserMode.isTPAuth != SkinComparable.isSuccessed.rawValue,
           //: EqualThen.share.appStatus == AppSkinStatus.normal.rawValue {
           EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            PlayerWindowManager.shared.visageMakeUpwardChangeFormWindow()
            //: return
            return
        }

        //: if self.videoStatus == -3 && self.videoPlayPath.isEmptyString {
        if self.videoStatus == -3, self.videoPlayPath.isEmptyString {
            //: seleteVideoTool()
            holder()
            //: } else {
        } else {
            //: let vc = TalkingMomentVideoVC.init(videoPath: self.videoPlayPath)
            let vc = AtViewController(videoPath: self.videoPlayPath)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.infoController()?.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: private func  seleteVideoTool() {
    private func holder() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        RubricThen.onError(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(maxCount: 1, allowPhoto: false, allowVideo: true)
                let vc = GestureDataReactiveCompatible.extra(maxCount: 1, allowPhoto: false, allowVideo: true)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.infoController()?.present(vc, animated: true)
                //: vc.didFinishPickingVideoHandle = { [weak self] ( coverImage: UIImage?,
                vc.didFinishPickingVideoHandle = { [weak self] (_: UIImage?,
                                                                //: assets: PHAsset?)  in
                                                                assets: PHAsset?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: TalkingImagePickTool.getVideoPath(asset: assets) { filePath in
                        GestureDataReactiveCompatible.completionEqual(asset: assets) { filePath in

                            //: guard filePath != nil else { return }
                            guard filePath != nil else { return }
                            //: let asset = AVURLAsset.init(url: filePath!)
                            let asset = AVURLAsset(url: filePath!)
                            //: let time = asset.duration
                            let time = asset.duration
                            //: let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                            let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                            //: if seconds>=5 {
                            if seconds >= 5 {
                                //: self.CompressedVideo(url: filePath!)
                                self.television(url: filePath!)

                                //: } else {
                            } else {
                                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) { // 视频压缩取消
                                    self.oversight(showMsg: "Shoot video at least 5 seconds".localized)
                                }
                            }
                        }
                }
            }
        }
    }

    /// 视频压缩
    //: private func CompressedVideo(url: URL) {
    private func television(url: URL) {
        //: let videoVC = TalkingVideoEditorController(maxDuration: 30.0, videoURL: url) { [weak self] videoInfo in
        let videoVC = EditVisualCommunicationViewController(maxDuration: 30.0, videoURL: url) { [weak self] videoInfo in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: guard let videoInfo = videoInfo else { return }
            guard let videoInfo = videoInfo else { return }
            //: self.videoPath = videoInfo.videoPath
            self.videoPath = videoInfo.videoPath
            //: self.coverPath = videoInfo.coverPath
            self.coverPath = videoInfo.coverPath
            // 压缩成功
            //: let img = UIImage(contentsOfFile: self.coverPath) ?? UIImage()
            let img = UIImage(contentsOfFile: self.coverPath) ?? UIImage()
            //: self.iconBtn.setImage(img, for: .normal)
            self.iconBtn.setImage(img, for: .normal)
            //: self.videoPlayPath = self.videoPath
            self.videoPlayPath = self.videoPath
            //: if self.seleteBlock != nil {
            if self.seleteBlock != nil {
                //: self.seleteBlock(self.coverPath, self.videoPath)
                self.seleteBlock(self.coverPath, self.videoPath)
            }
        }

        //: ProgressHUD.dismiss()
        ModelReactiveCompatible.dataConverterCan()
        //: self.currentViewController()?.navigationController?.pushViewController(videoVC, animated: true)
        self.infoController()?.navigationController?.pushViewController(videoVC, animated: true)
    }

    //: private func deleteFile() {
    private func overInput() {
        //: if FileManager.default.fileExists(atPath: self.videoPath) {
        if FileManager.default.fileExists(atPath: self.videoPath) {
            //: try? FileManager.default.removeItem(atPath: self.videoPath)
            try? FileManager.default.removeItem(atPath: self.videoPath)
        }
    }
}

// MARK: - Layout

//: extension TalkingEditVideoCell {
extension EventWithVideoCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func getCracking() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(tipsLB)
        backView.addSubview(tipsLB)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: backView.addSubview(iconBtn)
        backView.addSubview(iconBtn)
        //: iconBtn.addSubview(changeBtn)
        iconBtn.addSubview(changeBtn)
        //: iconBtn.addSubview(playBtn)
        iconBtn.addSubview(playBtn)
        //: backView.addSubview(statusLB)
        backView.addSubview(statusLB)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func equalImage() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.bottom.equalTo(-15)
            make.trailing.bottom.equalTo(-15)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
        }
        //: tipsLB.snp.makeConstraints { make in
        tipsLB.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.top.equalTo(18)
            make.top.equalTo(18)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(tipsLB)
            make.leading.equalTo(tipsLB)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.top.equalTo(tipsLB.snp.bottom).offset(8)
            make.top.equalTo(tipsLB.snp.bottom).offset(8)
        }
        //: iconBtn.snp.makeConstraints { make in
        iconBtn.snp.makeConstraints { make in
            //: make.top.equalTo(messageLB.snp.bottom).offset(18)
            make.top.equalTo(messageLB.snp.bottom).offset(18)
            //: make.width.height.equalTo(101)
            make.width.height.equalTo(101)
            //: make.centerX.equalTo(backView)
            make.centerX.equalTo(backView)
        }
        //: changeBtn.snp.makeConstraints { make in
        changeBtn.snp.makeConstraints { make in
            //: make.top.trailing.equalTo(iconBtn)
            make.top.trailing.equalTo(iconBtn)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
        //: playBtn.snp.makeConstraints { make in
        playBtn.snp.makeConstraints { make in
            //: make.center.equalTo(iconBtn)
            make.center.equalTo(iconBtn)
            //: make.size.equalTo(CGSize(width: 39, height: 39))
            make.size.equalTo(CGSize(width: 39, height: 39))
        }

        //: statusLB.snp.makeConstraints { make in
        statusLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconBtn.snp.leading).offset(-10)
            make.leading.equalTo(iconBtn.snp.leading).offset(-10)
            //: make.top.equalTo(iconBtn.snp.top).offset(-9)
            make.top.equalTo(iconBtn.snp.top).offset(-9)
            //: make.size.equalTo(CGSize(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }
    }
}
