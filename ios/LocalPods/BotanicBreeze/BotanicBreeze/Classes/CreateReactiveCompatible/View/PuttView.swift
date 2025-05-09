
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_appTitle:[UInt8] = [0xdb,0xdc,0xdb,0xc6,0x9a,0xd1,0xdd,0xd6,0xd7,0xc0,0x88,0x9b,0x92,0xda,0xd3,0xc1,0x92,0xdc,0xdd,0xc6,0x92,0xd0,0xd7,0xd7,0xdc,0x92,0xdb,0xdf,0xc2,0xde,0xd7,0xdf,0xd7,0xdc,0xc6,0xd7,0xd6]

private func cellError(tar num: UInt8) -> UInt8 {
    return num ^ 178
}

/*: "icon_me_video" :*/
fileprivate let str_roomTitle:[Character] = ["i","c","o","n","_","m","e","_","v","i","d"]
fileprivate let str_labelValue:[Character] = ["e","o"]

/*: "Receive video calls" :*/
fileprivate let str_withMediumText:[Character] = ["R","e","c","e","i","v","e"," ","v","i","d","e","o"," ","c","a","l"]
fileprivate let str_atVideoPhotoValue:String = "ledit"

/*: "icon_me_voice" :*/
fileprivate let str_cameraSucceedData:String = "let use videoicon_"
fileprivate let str_keyName:String = "OICE"

/*: "Receive voice calls" :*/
fileprivate let str_aName:String = "to colorRecei"
fileprivate let str_statusTitle:String = "oice calheight list"
fileprivate let str_viewSectionValue:String = "lto"

/*: "icon_me_randomvideo" :*/
fileprivate let str_labText:String = "icomake"
fileprivate let str_equalData:String = "nframe"
fileprivate let str_photoText:String = "mvibeforeo"

/*: "Random Video" :*/
fileprivate let str_colorName:String = "size info var cell varRando"
fileprivate let str_managerName:String = "m Videofill at reference edge view"

/*: "-1" :*/
fileprivate let str_withName:[Character] = ["-","1"]

/*: "value" :*/
fileprivate let str_makeBalanceValue:[Character] = ["v","a","l","u","e"]

/*: "type" :*/
fileprivate let str_sizeViewValue:String = "tycontente"

/*: "videoAuth" :*/
fileprivate let str_toPriceLetData:String = "vofdeo"
fileprivate let str_errorValue:String = "Authmake content"

/*: "voiceAuth" :*/
fileprivate let str_makeData:[Character] = ["v","o","i"]
fileprivate let str_valueTitle:String = "ceAuthself string path add"

/*: "randomVideo" :*/
fileprivate let str_commentValue:String = "rcoinnd"
fileprivate let str_stopHandleTitle:String = "omVideoself equal"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PuttView.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/24.
//

//: import UIKit
import UIKit

//: enum SettingReceiveVideoType {
enum AlongVideoType {
    //: case video
    case video
    //: case voice
    case voice
    //: case randomVideo
    case randomVideo
}

//: class TalkingSettingReceiveVideoCell: UITableViewCell {
class PuttView: UITableViewCell {
    //: private var currType: SettingReceiveVideoType = .video
    private var currType: AlongVideoType = .video
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
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_appTitle.map{cellError(tar: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(icon.snp.trailing).offset(7)
            make.leading.equalTo(icon.snp.trailing).offset(7)
            //: make.centerY.equalTo(icon)
            make.centerY.equalTo(icon)
        }

        //: switchView.snp.makeConstraints { make in
        switchView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(51)
            make.width.equalTo(51)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
    }

    // MARK: - Lazy load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: contentView.addSubview(view)
        contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: backView.addSubview(img)
        backView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleBLB: UILabel = {
    private lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.executeTo()
        //: backView.addSubview(lb)
        backView.addSubview(lb)
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var switchView: UISwitch = {
    private lazy var switchView: UISwitch = {
        //: let swit = UISwitch.init()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.appThemeColor()
        swit.onTintColor = UIColor.plaster()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(naturalEventImage), for: .valueChanged)
        //: backView.addSubview(swit)
        backView.addSubview(swit)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSettingReceiveVideoCell {
extension PuttView {
    /// 刷新cell
    //: func refreshCell(type: SettingReceiveVideoType) {
    func distance(type: AlongVideoType) {
        //: self.currType = type
        self.currType = type
        //: switch type {
        switch type {
        //: case .video:
        case .video:
            //: icon.image = UIImage.eponymUp(name: "icon_me_video")
            icon.image = UIImage.eponymUp(name: (String(str_roomTitle) + String(str_labelValue)))
            //: titleBLB.text = "Receive video calls".localized
            titleBLB.text = (String(str_withMediumText) + str_atVideoPhotoValue.replacingOccurrences(of: "edit", with: "s")).localized
            //: switchView.isOn = (EqualThen.share.loginUserMode.videoAuth == "1")
            switchView.isOn = (EqualThen.share.loginUserMode.videoAuth == "1")

        //: case .voice:
        case .voice:
            //: icon.image = UIImage.eponymUp(name: "icon_me_voice")
            icon.image = UIImage.eponymUp(name: (String(str_cameraSucceedData.suffix(5)) + "me_v" + str_keyName.lowercased()))
            //: titleBLB.text = "Receive voice calls".localized
            titleBLB.text = (String(str_aName.suffix(5)) + "ve v" + String(str_statusTitle.prefix(8)) + str_viewSectionValue.replacingOccurrences(of: "to", with: "s")).localized
            //: switchView.isOn = (EqualThen.share.loginUserMode.voiceAuth == "1")
            switchView.isOn = (EqualThen.share.loginUserMode.voiceAuth == "1")

        //: case .randomVideo:
        case .randomVideo:
            //: icon.image = UIImage.eponymUp(name: "icon_me_randomvideo")
            icon.image = UIImage.eponymUp(name: (str_labText.replacingOccurrences(of: "make", with: "n") + "_me_ra" + str_equalData.replacingOccurrences(of: "frame", with: "do") + str_photoText.replacingOccurrences(of: "before", with: "de")))
            //: titleBLB.text = "Random Video".localized
            titleBLB.text = (String(str_colorName.suffix(5)) + String(str_managerName.prefix(7))).localized
            //: switchView.isOn = (EqualThen.share.appUserConfigMode.randomVideo == "1")
            switchView.isOn = (EqualThen.share.appUserConfigMode.randomVideo == "1")
        }
    }

    /// 按钮开关
    //: @objc func switchDidChange() {
    @objc func naturalEventImage() {
        //: self.switchView.isEnabled = false
        self.switchView.isEnabled = false
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: let value = self.switchView.isOn ? "1":"-1"
        let value = self.switchView.isOn ? "1" : "-1"
        //: params["value"] = value
        params[(String(str_makeBalanceValue))] = value
        //: switch currType {
        switch currType {
        //: case .video:
        case .video:
            //: params["type"] = "videoAuth"
            params[(str_sizeViewValue.replacingOccurrences(of: "content", with: "p"))] = (str_toPriceLetData.replacingOccurrences(of: "of", with: "i") + String(str_errorValue.prefix(4)))
        //: case .voice:
        case .voice:
            //: params["type"] = "voiceAuth"
            params[(str_sizeViewValue.replacingOccurrences(of: "content", with: "p"))] = (String(str_makeData) + String(str_valueTitle.prefix(6)))
        //: case .randomVideo:
        case .randomVideo:
            //: params["type"] = "randomVideo"
            params[(str_sizeViewValue.replacingOccurrences(of: "content", with: "p"))] = (str_commentValue.replacingOccurrences(of: "coin", with: "a") + String(str_stopHandleTitle.prefix(7)))
        }
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, result, errorModel in
        CameraThen.appClick(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: self.switchView.isEnabled = true
            self.switchView.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchView.isOn = !self.switchView.isOn
                self.switchView.isOn = !self.switchView.isOn
                //: return
                return
            }
            //: switch self.currType {
            switch self.currType {
            //: case .video:
            case .video:
                //: EqualThen.share.loginUserMode.videoAuth = value
                EqualThen.share.loginUserMode.videoAuth = value
            //: case .voice:
            case .voice:
                //: EqualThen.share.loginUserMode.voiceAuth = value
                EqualThen.share.loginUserMode.voiceAuth = value
            //: case .randomVideo:
            case .randomVideo:
                //: EqualThen.share.appUserConfigMode.randomVideo = value
                EqualThen.share.appUserConfigMode.randomVideo = value
            }
            // 上报女性用户busy状态
            //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
            (CellTalkingApplication.shared as! CellTalkingApplication).femaleAfterDescribe()
        }
    }
}
