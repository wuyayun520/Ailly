
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_postText:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#333333" :*/
fileprivate let str_dataValue:String = "#filefilefilefilefile"
fileprivate let str_sizeValue:String = "3"

/*: "My photos" :*/
fileprivate let str_roomData:String = "user screen let cellMy p"
fileprivate let str_labData:String = "filltos"

/*: "#999999" :*/
fileprivate let str_addTitle:[Character] = ["#"]
fileprivate let str_kitValue:[Character] = ["9","9","9","9","9","9"]

/*: "Click to change or delete photo." :*/
fileprivate let str_equalName:[UInt8] = [0xc3,0xec,0xe9,0xe3,0xeb,0xa0,0xf4,0xef,0xa0,0xe3,0xe8,0xe1,0xee,0xe7,0xe5,0xa0,0xef,0xf2,0xa0,0xe4,0xe5,0xec,0xe5,0xf4,0xe5,0xa0,0xf0,0xe8,0xef,0xf4,0xef,0xae]

private func progressGreen(television num: UInt8) -> UInt8 {
    return num ^ 128
}

/*: "btn_me_edit_photo_add_nor" :*/
fileprivate let str_upText:String = "height add let adjustmentbtn_me"
fileprivate let str_textValue:String = "window equalt_pho"
fileprivate let str_equalLabelTitle:[Character] = ["t"]
fileprivate let str_fileData:String = "social video model builder hiddeno_add"

/*: "btn_me_edit_photo_add_pre" :*/
fileprivate let str_toFillData:[Character] = ["b","t","n","_","m","e","_","e","d","i","t","_","p","h","o","t","o","_","a","d","d","_","p"]
fileprivate let str_tapValue:String = "rshared"

/*: "btn_me_edit_photo_delete" :*/
fileprivate let str_resultUserTitle:String = "btn_meadd add content"
fileprivate let str_itemCellText:String = "photo_out user manager"
fileprivate let str_modelText:[Character] = ["e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PointOfDepartureViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/30.
//

//: import UIKit
import UIKit

//: public protocol EditPhotoDelegate: NSObject {
public protocol PhotoReactiveCompatible: NSObject {
    /// 图片add
    //: func addPhoto(_ icon: [UIImage])
    func framePhoto(_ icon: [UIImage])
    /// 图片本地delete
    //: func deletePhoto(_ icon: UIImage)
    func world(_ icon: UIImage)
    /// 图片后台delete
    //: func deletePhotoWithUid(_ iconUid: String)
    func dataConverterGift(_ iconUid: String)
}

//: class TalkingEditPhotoCell: UITableViewCell {
class PointOfDepartureViewCell: UITableViewCell {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var count = 0
    var count = 0
    //: open weak var delegate: EditPhotoDelegate?
    open weak var delegate: PhotoReactiveCompatible?
    //: var allPhoto = Array<Any>()
    var allPhoto = [Any]()
    //: var backBottomOffer = -41
    var backBottomOffer = -41

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
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(titleBLB)
        backView.addSubview(titleBLB)
        //: self.addSubview(messageLB)
        self.addSubview(messageLB)
//        showMessageView()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_postText.reversed(), encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.top.equalTo(self)
            make.top.equalTo(self)
            //: make.bottom.equalTo(self.snp.bottom).offset(backBottomOffer)
            make.bottom.equalTo(self.snp.bottom).offset(backBottomOffer)
        }
        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.top.equalTo(backView).offset(12)
            make.top.equalTo(backView).offset(12)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(backView.snp.bottom).offset(6)
            make.top.equalTo(backView.snp.bottom).offset(6)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.layer.cornerRadius  = 8
        view.layer.cornerRadius = 8
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleBLB: UILabel = {
    lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lb.font = UIFont.pingfang(type: .Medium, fontSize: 17)
        //: lb.textColor = UIColor.init(hex: "#333333")
        lb.textColor = UIColor(hex: (str_dataValue.replacingOccurrences(of: "file", with: "3") + str_sizeValue.capitalized))
        //: lb.text = "My photos".localized
        lb.text = (String(str_roomData.suffix(4)) + str_labData.replacingOccurrences(of: "fill", with: "ho")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 12)
        lb.font = UIFont.pingfang(type: .Regular, fontSize: 12)
        //: lb.textColor = UIColor.init(hex: "#999999")
        lb.textColor = UIColor(hex: (String(str_addTitle) + String(str_kitValue)))
        //: lb.text = "Click to change or delete photo.".localized
        lb.text = String(bytes: str_equalName.map{progressGreen(television: $0)}, encoding: .utf8)!.localized
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingEditPhotoCell {
extension PointOfDepartureViewCell {
    //: func showMessageView () {
    func talk() {
        //: let sizewh = Int((ScreenWidth-30-12*2-9*2)/3)
        let sizewh = Int((kLet_cameraValue - 30 - 12 * 2 - 9 * 2) / 3)

        //: let xa = 12
        let xa = 12 // x 初始值
        //: let ya = 46
        let ya = 46 // y 初始值
        //: let xz = 9
        let xz = 9 // 横向间隔
        //: let yz = 9
        let yz = 9 // 纵向间隔

        //: for  i in 0..<9 {
        for i in 0 ..< 9 {
            //: let X = xa+(xz + sizewh)*(i%3)
            let X = xa + (xz + sizewh) * (i % 3)
            //: let Y = ya+(yz + sizewh)*(i/3)
            let Y = ya + (yz + sizewh) * (i / 3)
            //: let frame = CGRect.init(x: X, y: Y, width: sizewh, height: sizewh)
            let frame = CGRect(x: X, y: Y, width: sizewh, height: sizewh)

            //: let colorBtn = UIButton.init(frame: frame)
            let colorBtn = UIButton(frame: frame)
            //: colorBtn.setBackgroundImage(.eponymUp(name: "btn_me_edit_photo_add_nor"), for: .normal)
            colorBtn.setBackgroundImage(.eponymUp(name: (String(str_upText.suffix(6)) + "_edi" + String(str_textValue.suffix(5)) + String(str_equalLabelTitle) + String(str_fileData.suffix(5)) + "_nor")), for: .normal)
            //: colorBtn.setBackgroundImage(.eponymUp(name: "btn_me_edit_photo_add_pre"), for: .highlighted)
            colorBtn.setBackgroundImage(.eponymUp(name: (String(str_toFillData) + str_tapValue.replacingOccurrences(of: "shared", with: "e"))), for: .highlighted)
            //: colorBtn.imageView?.contentMode = .scaleAspectFill
            colorBtn.imageView?.contentMode = .scaleAspectFill
            //: colorBtn.layer.cornerRadius = 4
            colorBtn.layer.cornerRadius = 4
            //: colorBtn.clipsToBounds = true
            colorBtn.clipsToBounds = true
            //: backView.addSubview(colorBtn)
            backView.addSubview(colorBtn)
            //: allPhoto.append(colorBtn)
            allPhoto.append(colorBtn)
            //: colorBtn.rx.tap.subscribe(onNext: { [weak self] in
            colorBtn.rx.tap.subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.seleteBtnClick(sender: colorBtn)
                self.sharedSender(sender: colorBtn)
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

            //: let deleteBtn = UIButton.init(frame: CGRect.init(x: colorBtn.frame.size.width-24, y: 0, width: 24, height: 24))
            let deleteBtn = UIButton(frame: CGRect(x: colorBtn.frame.size.width - 24, y: 0, width: 24, height: 24))
            //: deleteBtn.isHidden = true
            deleteBtn.isHidden = true
            //: deleteBtn.setBackgroundImage(.eponymUp(name: "btn_me_edit_photo_delete"), for: .normal)
            deleteBtn.setBackgroundImage(.eponymUp(name: (String(str_resultUserTitle.prefix(6)) + "_edit_" + String(str_itemCellText.prefix(6)) + "delet" + String(str_modelText))), for: .normal)
            //: colorBtn.addSubview(deleteBtn)
            colorBtn.addSubview(deleteBtn)
            //: deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
            deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.deleteBtnClick(sender: deleteBtn)
                self.observerCell(sender: deleteBtn)
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
        }
    }

    //: @objc func seleteBtnClick(sender: UIButton) {
    @objc func sharedSender(sender: UIButton) {
        //: if !EqualThen.share.loginUserMode.isNaUser,
        if !EqualThen.share.loginUserMode.isNaUser,
           //: EqualThen.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           EqualThen.share.loginUserMode.isTPAuth != SkinComparable.isSuccessed.rawValue,
           //: EqualThen.share.loginUserMode.sex == Gender.female.rawValue,
           EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue,
           //: EqualThen.share.appStatus == AppSkinStatus.normal.rawValue {
           EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            PlayerWindowManager.shared.visageMakeUpwardChangeFormWindow()
            //: return
            return
        }
        //: var isReturn = false
        var isReturn = false
        //: _ = sender.subviews.map { view in
        _ = sender.subviews.map { view in
            //: if (view is UIButton) {
            if view is UIButton {
                //: if view.isHidden == false {
                if view.isHidden == false {
                    //: isReturn = true
                    isReturn = true
                }
            }
        }
        //: if isReturn {
        if isReturn {
            //: return
            return
        }

        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) {  (isOpen: Bool) in
        RubricThen.onError(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc =  TalkingImagePickTool.initImagePickerVc(maxCount: 9-self.count, allowPhoto: true, allowVideo: false)
                let vc = GestureDataReactiveCompatible.extra(maxCount: 9 - self.count, allowPhoto: true, allowVideo: false)
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
                            //: if self.count<self.allPhoto.count {
                            if self.count < self.allPhoto.count {
                                //: for j in 0..<photos!.count {
                                for j in 0 ..< photos!.count {
                                    //: let Btn: UIButton = self.allPhoto[self.count] as! UIButton
                                    let Btn: UIButton = self.allPhoto[self.count] as! UIButton
                                    //: Btn .setImage(photos?[j], for: .normal)
                                    Btn.setImage(photos?[j], for: .normal)
                                    //: Btn .setImage(photos?[j], for: .highlighted)
                                    Btn.setImage(photos?[j], for: .highlighted)
                                    //: _ = Btn.subviews.map { view in
                                    _ = Btn.subviews.map { view in
                                        //: if (view is UIButton) {
                                        if view is UIButton {
                                            //: view.isHidden = false
                                            view.isHidden = false
                                        }
                                    }
                                    //: self.count+=1
                                    self.count += 1
                                }
                            }
                            //: self.delegate?.addPhoto(photos!)
                            self.delegate?.framePhoto(photos!)
                        }
                        //: return
                }
            }
        }
    }

    //: @objc func deleteBtnClick(sender: UIButton) {
    @objc func observerCell(sender: UIButton) {
        //: if !EqualThen.share.loginUserMode.isNaUser,
        if !EqualThen.share.loginUserMode.isNaUser,
           //: EqualThen.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           EqualThen.share.loginUserMode.isTPAuth != SkinComparable.isSuccessed.rawValue,
           //: EqualThen.share.loginUserMode.sex == Gender.female.rawValue,
           EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue,
           //: EqualThen.share.appStatus == AppSkinStatus.normal.rawValue {
           EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            PlayerWindowManager.shared.visageMakeUpwardChangeFormWindow()
            //: return
            return
        }
        //: let superBtn: UIButton = sender.superview as! UIButton
        let superBtn: UIButton = sender.superview as! UIButton

        //: self.delegate?.deletePhoto(superBtn.imageView?.image ?? UIImage.init())
        self.delegate?.world(superBtn.imageView?.image ?? UIImage())

        //: self.delegate?.deletePhotoWithUid(String(superBtn.tag))
        self.delegate?.dataConverterGift(String(superBtn.tag))

        //: superBtn.setImage(UIImage.init(), for: .normal)
        superBtn.setImage(UIImage(), for: .normal)
        //: superBtn.setImage(UIImage.init(), for: .highlighted)
        superBtn.setImage(UIImage(), for: .highlighted)
        //: sender.isHidden = true
        sender.isHidden = true
    }

    //: func setPhoto(selete: Array<TalkingUserInfoGalleryModel>) {
    func photomosaicMore(selete: [TargetTitleHandyJSON]) {
        //: _ = backView.subviews.map { view in
        _ = backView.subviews.map { view in
            //: if (view is UIButton) {
            if view is UIButton {
                //: view.removeFromSuperview()
                view.removeFromSuperview()
            }
        }
        //: allPhoto.removeAll()
        allPhoto.removeAll()
        //: showMessageView()
        talk()

        //: count = selete.count
        count = selete.count
        //: for i in 0..<selete.count {
        for i in 0 ..< selete.count {
            //: if i<allPhoto.count {
            if i < allPhoto.count {
                //: let Btn: UIButton = allPhoto[i] as! UIButton
                let Btn: UIButton = allPhoto[i] as! UIButton
                //: Btn.tag = Int(selete[i].uid) ?? 0
                Btn.tag = Int(selete[i].uid) ?? 0
                //: if selete[i].isLocal {
                if selete[i].isLocal {
                    //: Btn.setImage(selete[i].imagePic, for: .normal)
                    Btn.setImage(selete[i].imagePic, for: .normal)
                    //: } else {
                } else {
                    //: Btn.setUrlImage(urlStr: selete[i].url)
                    Btn.dataBack(urlStr: selete[i].url)
                }
                //: _ = Btn.subviews.map { view in
                _ = Btn.subviews.map { view in
                    //: if (view is UIButton) {
                    if view is UIButton {
                        //: view.isHidden = false
                        view.isHidden = false
                    }
                }
            }
        }
    }

    //: func setTips(str: String) {
    func perchLimited(str: String) {
        //: titleBLB.text = str
        titleBLB.text = str
        //: messageLB.isHidden = true
        messageLB.isHidden = true
    }

    //: func resetPhoto() {
    func makeTo() {
        //: count = 0
        count = 0
        //: allPhoto.removeAll()
        allPhoto.removeAll()
        //: showMessageView()
        talk()
    }
}
