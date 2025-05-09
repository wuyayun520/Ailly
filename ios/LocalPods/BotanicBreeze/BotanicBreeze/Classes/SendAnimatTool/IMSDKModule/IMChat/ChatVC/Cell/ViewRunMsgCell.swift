
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_userValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#EDEDED" :*/
fileprivate let str_cloudText:[Character] = ["#","E","D","E","D","E","D"]

/*: "Click for details" :*/
fileprivate let str_explainName:[Character] = ["C","l","i","c","k"," ","f","o","r"," ","d","e"]
fileprivate let str_makeName:String = "tailonline"

/*: "#128CFF" :*/
fileprivate let str_imageData:[Character] = ["#","1","2","8","C","F","F"]

/*: "system_notif_click_go" :*/
fileprivate let str_textName:String = "system_age make live error text"
fileprivate let str_addName:[Character] = ["n","o","t","i","f","_","c","l","i","c","k","_","g","o"]

/*: "img" :*/
fileprivate let str_keyModeValue:String = "IMG"

/*: "jumpKey" :*/
fileprivate let str_interactionStuffTitle:String = "index manager not task imagejumpKey"

/*: "url" :*/
fileprivate let str_modelData:String = "voicel"

/*: "mfChat" :*/
fileprivate let str_regionNameText:[UInt8] = [0x83,0x88,0xad,0x86,0x8f,0x9a]

private func correlationTableFile(lab num: UInt8) -> UInt8 {
    return num ^ 238
}

/*: "jumpUid" :*/
fileprivate let str_sizeTitle:String = "listen self actualjumpUid"

/*: "mfChatGift" :*/
fileprivate let str_yearTextData:[UInt8] = [0xda,0xd3,0xb0,0xd5,0xce,0xe1,0xb4,0xd6,0xd3,0xe1]

fileprivate func extensionClear(photo num: UInt8) -> UInt8 {
    let value = Int(num) + 147
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "user" :*/
fileprivate let str_toolFlushDeviceValue:[UInt8] = [0xc0,0xbe,0xb0,0xbd]

fileprivate func appPlayerOutside(fail num: UInt8) -> UInt8 {
    let value = Int(num) + 181
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "outerUrl" :*/
fileprivate let str_thanValue:[UInt8] = [0xee,0xf4,0xf3,0xe4,0xf1,0xd4,0xf1,0xeb]

fileprivate func pushLab(data num: UInt8) -> UInt8 {
    let value = Int(num) - 127
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "系统通知跳转失败：不支持  :*/
fileprivate let str_labelName:String = "系\u{7edf}通"
fileprivate let str_applicationValue:[Character] = ["知","跳","转","\u{5931}","败","：","不","支","持"," "]

/*:  跳转类型。" :*/
fileprivate let str_listName:String = "room"
fileprivate let str_withoutValue:[Character] = ["\u{8df3}","转","类","型","。"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewRunMsgCell.swift
//  AbroadTalking
//
//  Created by young on 2023/11/8.
//

//: import UIKit
import UIKit

//: class TalkingChatSystemNotifJumpMsgCell: TalkingChatBaseMsgCell {
class ViewRunMsgCell: IndexViewCell {
    //: var textData: LengthSolarThermalSystemThen?
    var textData: LengthSolarThermalSystemThen?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupSubviews()
        expected()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_userValue.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bannerImgV: UIImageView = {
    private lazy var bannerImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.isHidden = true
        img.isHidden = true
        //: self.bubbleImgView.addSubview(img)
        self.bubbleImgView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleLab: YYLabel = {
    private lazy var titleLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: YYLabel = {
    private lazy var contentLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var jumpBtn: UIButton = {
    private lazy var jumpBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(jumpToDetailsButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(available), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: self.bubbleImgView.addSubview(btn)
        self.bubbleImgView.addSubview(btn)
        //: let line = UIView()
        let line = UIView()
        //: line.backgroundColor = UIColor(hex: "#EDEDED")
        line.backgroundColor = UIColor(hex: (String(str_cloudText)))
        //: btn.addSubview(line)
        btn.addSubview(line)
        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(0.5)
            make.height.equalTo(0.5)
        }
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Click for details".localized
        lab.text = (String(str_explainName) + str_makeName.replacingOccurrences(of: "online", with: "s")).localized
        //: lab.textColor = UIColor(hex: "#128CFF")
        lab.textColor = UIColor(hex: (String(str_imageData)))
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lab.font = UIFont.pingfang(type: .Regular, fontSize: 14)
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.eponymUp(name: "system_notif_click_go")
        imgV.image = UIImage.eponymUp(name: (String(str_textName.prefix(7)) + String(str_addName)))
        //: btn.addSubview(imgV)
        btn.addSubview(imgV)
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 6, height: 11))
            make.size.equalTo(CGSize(width: 6, height: 11))
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatSystemNotifJumpMsgCell {
extension ViewRunMsgCell {
    /// 刷新视图
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: bannerImgV.isHidden = true
        bannerImgV.isHidden = true
        //: titleLab.isHidden = true
        titleLab.isHidden = true
        //: contentLab.isHidden = true
        contentLab.isHidden = true
        //: jumpBtn.isHidden = true
        jumpBtn.isHidden = true
        //: textData = data as? LengthSolarThermalSystemThen
        textData = data as? LengthSolarThermalSystemThen
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: if textData.hasBanner {
        if textData.hasBanner {
            //: bannerImgV.setUrlImage(urlStr: textData.extraJson["img"].stringValue)
            bannerImgV.direct(urlStr: textData.extraJson[(str_keyModeValue.lowercased())].stringValue)
            //: bannerImgV.isHidden = false
            bannerImgV.isHidden = false
            //: bannerImgV.Corner(width: textData.bannerSize.width,
            bannerImgV.showEqual(width: textData.bannerSize.width,
                                 //: height: textData.bannerSize.height,
                                 height: textData.bannerSize.height,
                                 //: corners: [ .topRight],
                                 corners: [.topRight],
                                 //: cornerRadii: CGSize(width: 12, height: 12))
                                 cornerRadii: CGSize(width: 12, height: 12))
        }
        //: if textData.titleHeight > 0 {
        if textData.titleHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            //: titleLab.textLayout = yyLayout
            titleLab.textLayout = yyLayout
            //: titleLab.isHidden = false
            titleLab.isHidden = false
        }
        //: if textData.contentHeight > 0 {
        if textData.contentHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            //: contentLab.textLayout = yyLayout
            contentLab.textLayout = yyLayout
            //: contentLab.isHidden = false
            contentLab.isHidden = false
        }

        //: jumpBtn.isHidden = (textData.jumpHeight == 0)
        jumpBtn.isHidden = (textData.jumpHeight == 0)
    }

    /// 跳转事件
    //: @objc private func jumpToDetailsButtonEvent() {
    @objc private func available() {
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: guard textData.jumpHeight > 0 else { return }
        guard textData.jumpHeight > 0 else { return }
        //: let jumpKey = textData.extraJson["jumpKey"].stringValue
        let jumpKey = textData.extraJson[(String(str_interactionStuffTitle.suffix(7)))].stringValue
        //: switch (jumpKey) {
        switch jumpKey {
        //: case "url": // 网页
        case (str_modelData.replacingOccurrences(of: "voice", with: "ur")): // 网页
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson[(str_modelData.replacingOccurrences(of: "voice", with: "ur"))].stringValue
            //: EditTextThen.share.func__pushToWebVC(urlStr: url)
            EditTextThen.share.bileOf(urlStr: url)

        //: case "mfChat":  // 私聊
        case String(bytes: str_regionNameText.map{correlationTableFile(lab: $0)}, encoding: .utf8)!: // 私聊
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(str_sizeTitle.suffix(7)))].stringValue
            //: EditTextThen.share.func__pushToPriveteChatVC(chatID: jumpUid)
            EditTextThen.share.fullMoon(chatID: jumpUid)

        //: case "mfChatGift":  // 私聊打开礼物面板
        case String(bytes: str_yearTextData.map{extensionClear(photo: $0)}, encoding: .utf8)!: // 私聊打开礼物面板
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(str_sizeTitle.suffix(7)))].stringValue
            //: EditTextThen.share.func__pushToPriveteChatVC(chatID: jumpUid) { vc in
            EditTextThen.share.fullMoon(chatID: jumpUid) { vc in
                //: vc.msgInputView.clickgiftBtn()
                vc.msgInputView.roundAreaLoad()
            }
        //: case "user": // 用户详情
        case String(bytes: str_toolFlushDeviceValue.map{appPlayerOutside(fail: $0)}, encoding: .utf8)!: // 用户详情
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(str_sizeTitle.suffix(7)))].stringValue
            //: EditTextThen.share.func__pushToUserDetailVC(uid: jumpUid)
            EditTextThen.share.soulAge(uid: jumpUid)

        //: case "outerUrl": // 外链
        case String(bytes: str_thanValue.map{pushLab(data: $0)}, encoding: .utf8)!: // 外链
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson[(str_modelData.replacingOccurrences(of: "voice", with: "ur"))].stringValue
            //: if let url = URL(string: url) {
            if let url = URL(string: url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }

        //: default:
        default:
            //: printLog(message: "系统通知跳转失败：不支持 \(jumpKey) 跳转类型。")
            printLog(message: (str_labelName + String(str_applicationValue)) + "\(jumpKey)" + (str_listName.replacingOccurrences(of: "room", with: " ") + String(str_withoutValue)))
        }
    }
}

// MARK: - Layout

//: extension TalkingChatSystemNotifJumpMsgCell {
extension ViewRunMsgCell {
    /// 初始化视图
    //: private func setupSubviews() {
    private func expected() {
        //: self.bubbleImgView.layer.cornerRadius = 2
        self.bubbleImgView.layer.cornerRadius = 2
        //: self.bubbleImgView.layer.masksToBounds = true
        self.bubbleImgView.layer.masksToBounds = true
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.isUserInteractionEnabled = true
        self.bubbleImgView.isUserInteractionEnabled = true
    }

    /// 自动更新布局
    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: let bannerH = textData.hasBanner ? textData.bannerSize.height:0
        let bannerH = textData.hasBanner ? textData.bannerSize.height : 0
        //: self.bannerImgV.snp.makeConstraints { make in
        self.bannerImgV.snp.makeConstraints { make in
            //: make.top.leading.equalToSuperview()
            make.top.leading.equalToSuperview()
            //: make.width.equalTo(textData.bannerSize.width)
            make.width.equalTo(textData.bannerSize.width)
            //: make.height.equalTo(bannerH)
            make.height.equalTo(bannerH)
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(textData.titleHeight)
            make.height.equalTo(textData.titleHeight)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(4)
            make.top.equalTo(titleLab.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab)
            make.leading.trailing.equalTo(titleLab)
            //: make.height.equalTo(textData.contentHeight)
            make.height.equalTo(textData.contentHeight)
        }

        //: jumpBtn.snp.makeConstraints { make in
        jumpBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentLab.snp.bottom).offset(10)
            make.top.equalTo(contentLab.snp.bottom).offset(10)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.width.equalTo(bannerImgV)
            make.width.equalTo(bannerImgV)
            //: make.height.equalTo(textData.jumpHeight)
            make.height.equalTo(textData.jumpHeight)
        }
    }
}
