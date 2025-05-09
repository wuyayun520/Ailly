
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_shareMaxValue:[UInt8] = [0x74,0x73,0x74,0x69,0x35,0x7e,0x72,0x79,0x78,0x6f,0x27,0x34,0x3d,0x75,0x7c,0x6e,0x3d,0x73,0x72,0x69,0x3d,0x7f,0x78,0x78,0x73,0x3d,0x74,0x70,0x6d,0x71,0x78,0x70,0x78,0x73,0x69,0x78,0x79]

private func safetyMargin(table num: UInt8) -> UInt8 {
    return num ^ 29
}

/*: "img_match_shadow" :*/
fileprivate let str_intimateDeviceValue:String = "img_malet let make model for"
fileprivate let str_colorTitle:String = "playadow"

/*: "icon_home_v" :*/
fileprivate let str_userValue:String = "closedcon"
fileprivate let str_equalName:String = "text"

/*: "icon_home_position" :*/
fileprivate let str_labName:String = "ICON"
fileprivate let str_userData:String = "equal any active_position"

/*: ",  :*/
fileprivate let str_emptyTitle:String = ",follow"

/*: "#2DF2FF" :*/
fileprivate let str_screenText:String = "#2DF2FFmanager close image user after"

/*: "Live" :*/
fileprivate let str_pageValue:String = "data toLive"

/*: "#48FF1E" :*/
fileprivate let str_sharedData:[Character] = ["#","4","8","F","F","1","E"]

/*: "Online" :*/
fileprivate let str_randomData:[Character] = ["O","n","l","i","n","e"]

/*: "miles" :*/
fileprivate let str_keyText:String = "milmakes"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BottomAgendaItemReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/18.
//

//: import UIKit
import UIKit

//: class TalkingClubCardItemCell: TalkingClubCardViewCell {
class BottomAgendaItemReactiveCompatible: ClubThen {
    //: var selePhotoIndex = 0
    var selePhotoIndex = 0

    //: required override init(reuseIdentifier: String) {
    override required init(reuseIdentifier: String) {
        //: super.init(reuseIdentifier: reuseIdentifier)
        super.init(reuseIdentifier: reuseIdentifier)
        //: self.reuseIdentifier = reuseIdentifier
        self.reuseIdentifier = reuseIdentifier
        //: setItemView()
        parallelize()
        //: setItemViewFrame()
        bit()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_shareMaxValue.map{safetyMargin(table: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var containerView: UIView = {
    private lazy var containerView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius =  12
        view.layer.cornerRadius = 12
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var gradientShadowImageView: UIImageView = {
    private lazy var gradientShadowImageView: UIImageView = {
        //: let imageView = UIImageView.init()
        let imageView = UIImageView()
        //: imageView.image = UIImage.eponymUp(name: "img_match_shadow")
        imageView.image = UIImage.eponymUp(name: (String(str_intimateDeviceValue.prefix(6)) + "tch_s" + str_colorTitle.replacingOccurrences(of: "play", with: "h")))
        //: imageView.isUserInteractionEnabled = true
        imageView.isUserInteractionEnabled = true
        //: return imageView
        return imageView
        //: }()
    }()

    //: private lazy var userImageBtn: UIImageView = {
    private lazy var userImageBtn: UIImageView = {
        //: let btn = UIImageView()
        let btn = UIImageView()
        //: btn.contentMode = .scaleAspectFill
        btn.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = true
        btn.isUserInteractionEnabled = true
        //: let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(userImageBtnClick))
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ignore))
        //: btn.addGestureRecognizer(tapGestureRecognizer)
        btn.addGestureRecognizer(tapGestureRecognizer)

        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var statusImgV: TalkingButton = {
    private lazy var statusImgV: ProgressTalkingButton = {
        //: let img = TalkingButton()
        let img = ProgressTalkingButton()
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: img.spaceBetweenTitleAndImage = 2
        img.spaceBetweenTitleAndImage = 2
        //: img.setBackgroundImage(UIImage.imageFillColor(color: UIColor.init(red: 9/255.0 , green: 9/255.0 , blue: 9/255.0 , alpha: 0.3)), for: .normal)
        img.setBackgroundImage(UIImage.noMain(color: UIColor(red: 9 / 255.0, green: 9 / 255.0, blue: 9 / 255.0, alpha: 0.3)), for: .normal)
        //: img.layer.cornerRadius = 8
        img.layer.cornerRadius = 8
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.setTitleColor(.white, for: .normal)
        img.setTitleColor(.white, for: .normal)
        //: img.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 12)
        img.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 12)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 20)
        lab.font = UIFont.pingfang(type: .Medium, fontSize: 20)
        //: lab.textColor = .white
        lab.textColor = .white
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: lab.textAlignment = .right
            lab.textAlignment = .right
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var ageLab: UILabel = {
    private lazy var ageLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 20)
        lab.font = UIFont.pingfang(type: .Medium, fontSize: 20)
        //: lab.textColor = .white
        lab.textColor = .white
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: lab.textAlignment = .right
            lab.textAlignment = .right
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var attestationImgV: UIImageView = {
    private lazy var attestationImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.eponymUp(name: "icon_home_v")
        img.image = UIImage.eponymUp(name: (str_userValue.replacingOccurrences(of: "closed", with: "i") + "_home_" + str_equalName.replacingOccurrences(of: "text", with: "v")))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var locationBtn: TalkingButton = {
    private lazy var locationBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton()
        let btn = ProgressTalkingButton()
        //: btn.spaceBetweenTitleAndImage = 2
        btn.spaceBetweenTitleAndImage = 2
        //: btn.setImage(UIImage.eponymUp(name: "icon_home_position"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (str_labName.lowercased() + "_home" + String(str_userData.suffix(9)))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 15)
        btn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 15)
        //: btn.contentHorizontalAlignment = LanguageManager.shared.direction == .rightToLeft ? .right:.left
        btn.contentHorizontalAlignment = FileReactiveCompatible.shared.direction == .rightToLeft ? .right : .left
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingClubCardItemCell {
extension BottomAgendaItemReactiveCompatible {
    //: func setCellData(model: SocialUserListModel) {
    func everyName(model: ControlWithModelType) {
        //: self.model = model
        self.model = model
        //: let photosModel = model.photos.first
        let photosModel = model.photos.first
        //: userImageBtn.setUrlImage(urlStr: photosModel?.url ?? "", placeImg: UIImage.placeImgSquare())
        userImageBtn.lineBorder(urlStr: photosModel?.url ?? "", placeImg: UIImage.becomeSection())
        //: nameLab.text = model.nickname
        nameLab.text = model.nickname
        //: ageLab.text = ", \(model.age)"
        ageLab.text = ", \(model.age)"
        //: attestationImgV.isHidden = !model.isTPAuth
        attestationImgV.isHidden = !model.isTPAuth

        //: if model.liveStatus {
        if model.liveStatus {
            //: statusImgV.isHidden = false
            statusImgV.isHidden = false
            //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#2DF2FF")!, size: CGSize.init(width: 8, height: 8))
            let image = UIImage.impressionDataSize(color: UIColor(hex: (String(str_screenText.prefix(7))))!, size: CGSize(width: 8, height: 8))
            //: statusImgV.setImage(image.circle(), for: .normal)
            statusImgV.setImage(image.circleWithoutImagination(), for: .normal)
            //: statusImgV.setTitle("Live".localized, for: .normal)
            statusImgV.setTitle((String(str_pageValue.suffix(4))).localized, for: .normal)
            //: } else {
        } else {
            //: statusImgV.isHidden = !(model.status == 1)
            statusImgV.isHidden = !(model.status == 1)
            //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#48FF1E")!, size: CGSize.init(width: 8, height: 8))
            let image = UIImage.impressionDataSize(color: UIColor(hex: (String(str_sharedData)))!, size: CGSize(width: 8, height: 8))
            //: statusImgV.setImage(image.circle(), for: .normal)
            statusImgV.setImage(image.circleWithoutImagination(), for: .normal)
            //: statusImgV.setTitle("Online".localized, for: .normal)
            statusImgV.setTitle((String(str_randomData)).localized, for: .normal)
        }
        //: let text: NSString = statusImgV.titleLabel?.text as? NSString ?? ""
        let text: NSString = statusImgV.titleLabel?.text as? NSString ?? ""
        //: let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.pingfangWithDiameter(fontSize: 12)], context: nil)
        let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.pingfangWithDiameter(fontSize: 12)], context: nil)
        //: let textlef = statusImgV.isHidden ? 0:20.0
        let textlef = statusImgV.isHidden ? 0 : 20.0
        //: statusImgV.snp.remakeConstraints { make in
        statusImgV.snp.remakeConstraints { make in
            //: make.leading.equalTo(14)
            make.leading.equalTo(14)
            //: make.bottom.equalTo(nameLab.snp.top).offset(-10)
            make.bottom.equalTo(nameLab.snp.top).offset(-10)
            //: make.width.equalTo(rect.width + textlef)
            make.width.equalTo(rect.width + textlef)
        }
        //: if statusImgV.isHidden {
        if statusImgV.isHidden {
            //: locationBtn.snp.remakeConstraints { make in
            locationBtn.snp.remakeConstraints { make in
                //: make.leading.equalTo(14)
                make.leading.equalTo(14)
                //: make.centerY.equalTo(statusImgV)
                make.centerY.equalTo(statusImgV)
                //: make.height.equalTo(14)
                make.height.equalTo(14)
            }
            //: }else {
        } else {
            //: locationBtn.snp.remakeConstraints { make in
            locationBtn.snp.remakeConstraints { make in
                //: make.leading.equalTo(statusImgV.snp.trailing).offset(6)
                make.leading.equalTo(statusImgV.snp.trailing).offset(6)
                //: make.centerY.equalTo(statusImgV)
                make.centerY.equalTo(statusImgV)
                //: make.height.equalTo(14)
                make.height.equalTo(14)
            }
        }
        //: locationBtn.isHidden = model.distance.count <= 0
        locationBtn.isHidden = model.distance.count <= 0
        //: locationBtn.setTitle("\(model.distance)" + "miles".localized, for: .normal)
        locationBtn.setTitle("\(model.distance)" + (str_keyText.replacingOccurrences(of: "make", with: "e")).localized, for: .normal)
    }

    //: @objc private func userImageBtnClick() {
    @objc private func ignore() {
        // 埋点
        //: let uid = self.model?.uid ?? 0
        let uid = self.model?.uid ?? 0
        //: uploadRecord.uploadRecordEvent(eventID: click_home_Cover, toUid: "\(uid)")
        kLet_textData.historicalPaper(eventID: kLet_bottomData, toUid: "\(uid)")
        //: guard self.model?.photos.count ?? 0 > 1 else {
        guard self.model?.photos.count ?? 0 > 1 else {
            //: return
            return
        }
        //: selePhotoIndex += 1
        selePhotoIndex += 1
        //: if selePhotoIndex >= self.model?.photos.count ?? 0 {
        if selePhotoIndex >= self.model?.photos.count ?? 0 {
            //: selePhotoIndex = 0
            selePhotoIndex = 0
        }
        //: let photosmodel = self.model?.photos[selePhotoIndex]
        let photosmodel = self.model?.photos[selePhotoIndex]
        //: userImageBtn.setUrlImage(urlStr: photosmodel?.url ?? "", placeImg: UIImage.placeImgSquare())
        userImageBtn.lineBorder(urlStr: photosmodel?.url ?? "", placeImg: UIImage.becomeSection())
        //: updateCurrentPageIndicator(index: selePhotoIndex)
        polaroidCamera(index: selePhotoIndex)
    }
}

//: extension TalkingClubCardItemCell {
extension BottomAgendaItemReactiveCompatible {
    //: func setItemView() {
    func parallelize() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(containerView)
        self.addSubview(containerView)
        //: containerView.addSubview(userImageBtn)
        containerView.addSubview(userImageBtn)
        //: containerView.addSubview(gradientShadowImageView)
        containerView.addSubview(gradientShadowImageView)

        //: gradientShadowImageView.addSubview(statusImgV)
        gradientShadowImageView.addSubview(statusImgV)
        //: gradientShadowImageView.addSubview(nameLab)
        gradientShadowImageView.addSubview(nameLab)
        //: gradientShadowImageView.addSubview(ageLab)
        gradientShadowImageView.addSubview(ageLab)
        //: gradientShadowImageView.addSubview(attestationImgV)
        gradientShadowImageView.addSubview(attestationImgV)
        //: gradientShadowImageView.addSubview(locationBtn)
        gradientShadowImageView.addSubview(locationBtn)
    }

    //: func setItemViewFrame() {
    func bit() {
        //: containerView.snp.makeConstraints { make in
        containerView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: gradientShadowImageView.snp.makeConstraints { make in
        gradientShadowImageView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(79)
            make.height.equalTo(79)
        }

        //: userImageBtn.snp.makeConstraints { make in
        userImageBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.leading.equalTo(14)
            make.leading.equalTo(14)
            //: make.bottom.equalTo(-14)
            make.bottom.equalTo(-14)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
            //: make.width.lessThanOrEqualTo(100)
            make.width.lessThanOrEqualTo(100)
        }
        //: ageLab.snp.makeConstraints { make in
        ageLab.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLab.snp.trailing).offset(2)
            make.leading.equalTo(nameLab.snp.trailing).offset(2)
            //: make.top.height.equalTo(nameLab)
            make.top.height.equalTo(nameLab)
            //: make.width.lessThanOrEqualTo(50)
            make.width.lessThanOrEqualTo(50)
        }

        //: statusImgV.snp.makeConstraints { make in
        statusImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(14)
            make.leading.equalTo(14)
            //: make.bottom.equalTo(nameLab.snp.top).offset(-10)
            make.bottom.equalTo(nameLab.snp.top).offset(-10)
        }

        //: locationBtn.snp.makeConstraints { make in
        locationBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(statusImgV.snp.trailing).offset(6)
            make.leading.equalTo(statusImgV.snp.trailing).offset(6)
            //: make.centerY.equalTo(statusImgV)
            make.centerY.equalTo(statusImgV)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }
        //: attestationImgV.snp.makeConstraints { make in
        attestationImgV.snp.makeConstraints { make in
            //: make.centerY.equalTo(ageLab)
            make.centerY.equalTo(ageLab)
            //: make.leading.equalTo(ageLab.snp.trailing).offset(6)
            make.leading.equalTo(ageLab.snp.trailing).offset(6)
            //: make.size.equalTo(CGSize(width: 20, height: 20))
            make.size.equalTo(CGSize(width: 20, height: 20))
        }
    }
}
