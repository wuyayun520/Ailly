
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_actualValue:[UInt8] = [0xd6,0xdb,0xd6,0xe1,0x95,0xd0,0xdc,0xd1,0xd2,0xdf,0xa7,0x96,0x8d,0xd5,0xce,0xe0,0x8d,0xdb,0xdc,0xe1,0x8d,0xcf,0xd2,0xd2,0xdb,0x8d,0xd6,0xda,0xdd,0xd9,0xd2,0xda,0xd2,0xdb,0xe1,0xd2,0xd1]

fileprivate func viewListen(wrap num: UInt8) -> UInt8 {
    let value = Int(num) + 147
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Move here to cancel" :*/
fileprivate let str_messageValue:String = "at tool player listenMove "
fileprivate let str_byText:String = "here tpost content target"
fileprivate let str_cameraText:[Character] = ["o"," ","c","a","n","c","e","l"]

/*: "btn_talk_voice_recording_nor" :*/
fileprivate let str_sharedText:[Character] = ["b","t","n","_","t","a","l","k","_","v","o","i","c"]
fileprivate let str_qualityName:String = "if sectione_re"
fileprivate let str_showValue:[Character] = ["n","g","_","n","o","r"]

/*: "Release to cancel" :*/
fileprivate let str_cameraData:String = "remove social re new returnReleas"
fileprivate let str_liveName:String = "catoc"
fileprivate let str_netTitle:String = "popl"

/*: "#FF506D" :*/
fileprivate let str_filterData:String = "image fill pic selected#FF506"
fileprivate let str_videoName:String = "gift"

/*: "btn_talk_voice_recording_warn_nor" :*/
fileprivate let str_keyPerformModelValue:[UInt8] = [0xe0,0xf6,0xec,0xdd,0xf6,0xe3,0xee,0xe9,0xdd,0xf4,0xed,0xeb,0xe1,0xe7,0xdd,0xf0,0xe7,0xe1,0xed,0xf0,0xe6,0xeb,0xec,0xe5,0xdd,0xf5,0xe3,0xf0,0xec,0xdd,0xec,0xed,0xf0]

/*: "The upper limit is reached" :*/
fileprivate let str_youData:[Character] = ["T","h","e"," ","u","p","p","e","r"," ","l","i","m","i","t"," ","i","s"," ","r","e","a"]
fileprivate let str_pathValue:String = "backed"

/*: "30″" :*/
fileprivate let str_customTitle:String = "30\u{2033}"

/*: "Under time" :*/
fileprivate let str_equalName:[Character] = ["U","n","d","e","r"," ","t","i","m"]
fileprivate let str_centerViewContentValue:[Character] = ["e"]

/*: "Talk too short" :*/
fileprivate let str_singleToHeightName:String = "Talk color name in"
fileprivate let str_reportFatalData:String = "viewort"

/*: "0″" :*/
fileprivate let str_actualName:[Character] = ["0","″"]

/*: "get json error" :*/
fileprivate let str_addName:String = "gcount"
fileprivate let str_tableData:String = "label color right json"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AddRecordView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/6.
//

//: import UIKit
import UIKit

//: enum RecordStatus: Int {
enum StatusStrideable: Int {
    //: case todefault = 0
    case todefault = 0 // 未开始
    //: case recording
    case recording // 正在录制
    //: case tooShoot
    case tooShoot // 录音时长过短
    //: case tooLong
    case tooLong // 录音时长过长
    //: case cancel
    case cancel // 录音取消
}

//: class TalkingChatRecordView: UIView {
class AddRecordView: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: customUI()
        along()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_actualValue.map{viewListen(wrap: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(252+kDeviceSafeBottomHeight)
            make.height.equalTo(252 + kLet_nextData)
        }

        //: topTipLabel.snp.makeConstraints { make in
        topTipLabel.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.top.equalToSuperview().offset(21)
            make.top.equalToSuperview().offset(21)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: durationLabel.snp.makeConstraints { make in
        durationLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(topTipLabel.snp.bottom).offset(18)
            make.top.equalTo(topTipLabel.snp.bottom).offset(18)
            //: make.height.equalTo(27)
            make.height.equalTo(27)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }

        //: leftPlayer.snp.makeConstraints { make in
        leftPlayer.snp.makeConstraints { make in
            //: make.trailing.equalTo(durationLabel.snp.leading).offset(-30)
            make.trailing.equalTo(durationLabel.snp.leading).offset(-30)
            //: make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            //: make.height.equalTo(27)
            make.height.equalTo(27)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }

        //: rightPlayer.snp.makeConstraints { make in
        rightPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(durationLabel.snp.trailing).offset(30)
            make.leading.equalTo(durationLabel.snp.trailing).offset(30)
            //: make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            //: make.height.equalTo(27)
            make.height.equalTo(27)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }
        //: micImageView.snp.makeConstraints { make in
        micImageView.snp.makeConstraints { make in
            //: make.centerX.equalTo(contentView)
            make.centerX.equalTo(contentView)
            //: make.top.equalTo(durationLabel.snp.bottom).offset(32)
            make.top.equalTo(durationLabel.snp.bottom).offset(32)
            //: make.width.height.equalTo(99)
            make.width.height.equalTo(99)
        }

        //: microphonePlayer.snp.makeConstraints { make in
        microphonePlayer.snp.makeConstraints { make in
            //: make.center.equalTo(micImageView)
            make.center.equalTo(micImageView)
            //: make.width.height.equalTo(150)
            make.width.height.equalTo(150)
        }
        //: microphoneRedPlayer.snp.makeConstraints { make in
        microphoneRedPlayer.snp.makeConstraints { make in
            //: make.center.equalTo(micImageView)
            make.center.equalTo(micImageView)
            //: make.width.height.equalTo(150)
            make.width.height.equalTo(150)
        }

        //: leftRedPlayer.snp.makeConstraints { make in
        leftRedPlayer.snp.makeConstraints { make in
            //: make.edges.equalTo(leftPlayer)
            make.edges.equalTo(leftPlayer)
        }
        //: rightRedPlayer.snp.makeConstraints { make in
        rightRedPlayer.snp.makeConstraints { make in
            //: make.edges.equalTo(rightPlayer)
            make.edges.equalTo(rightPlayer)
        }
    }

    //: public func customUI () {
    public func along() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topTipLabel)
        contentView.addSubview(topTipLabel)
        //: contentView.addSubview(durationLabel)
        contentView.addSubview(durationLabel)
        //: contentView.addSubview(leftPlayer)
        contentView.addSubview(leftPlayer)
        //: contentView.addSubview(rightPlayer)
        contentView.addSubview(rightPlayer)
        //: contentView.addSubview(micImageView)
        contentView.addSubview(micImageView)
        //: contentView.addSubview(microphonePlayer)
        contentView.addSubview(microphonePlayer)
        //: contentView.addSubview(microphoneRedPlayer)
        contentView.addSubview(microphoneRedPlayer)
        //: contentView.addSubview(leftRedPlayer)
        contentView.addSubview(leftRedPlayer)
        //: contentView.addSubview(rightRedPlayer)
        contentView.addSubview(rightRedPlayer)
    }

    //: public func setRecordStatus (status: RecordStatus) {
    public func detailNow(status: StatusStrideable) {
        //: leftRedPlayer.isHidden = status.rawValue <= 1
        leftRedPlayer.isHidden = status.rawValue <= 1
        //: rightRedPlayer.isHidden = status.rawValue <= 1
        rightRedPlayer.isHidden = status.rawValue <= 1
        //: microphoneRedPlayer.isHidden = status.rawValue <= 1
        microphoneRedPlayer.isHidden = status.rawValue <= 1
        //: microphonePlayer.isHidden = status.rawValue > 1
        microphonePlayer.isHidden = status.rawValue > 1

        //: switch status {
        switch status {
        //: case .recording:
        case .recording:
            //: topTipLabel.text = "Move here to cancel".localized
            topTipLabel.text = (String(str_messageValue.suffix(5)) + String(str_byText.prefix(6)) + String(str_cameraText)).localized
            //: durationLabel.textColor = UIColor.appTitleColor()
            durationLabel.textColor = UIColor.executeTo()
            //: micImageView.image = UIImage.eponymUp(name: "btn_talk_voice_recording_nor")
            micImageView.image = UIImage.eponymUp(name: (String(str_sharedText) + String(str_qualityName.suffix(4)) + "cordi" + String(str_showValue)))
        //: break
        //: case .cancel:
        case .cancel:
            //: topTipLabel.text = "Release to cancel".localized
            topTipLabel.text = (String(str_cameraData.suffix(6)) + "e to " + str_liveName.replacingOccurrences(of: "to", with: "n") + str_netTitle.replacingOccurrences(of: "pop", with: "e")).localized
            //: durationLabel.textColor = UIColor.init(hex: "#FF506D")
            durationLabel.textColor = UIColor(hex: (String(str_filterData.suffix(6)) + str_videoName.replacingOccurrences(of: "gift", with: "D")))
            //: micImageView.image = UIImage.eponymUp(name: "btn_talk_voice_recording_warn_nor")
            micImageView.image = UIImage.eponymUp(name: String(bytes: str_keyPerformModelValue.map{$0^130}, encoding: .utf8)!)
            //: break

        //: case .tooLong:
        case .tooLong:
            //: topTipLabel.text = "The upper limit is reached".localized
            topTipLabel.text = (String(str_youData) + str_pathValue.replacingOccurrences(of: "back", with: "ch")).localized
            //: durationLabel.text = "30″"
            durationLabel.text = "30″"
            //: durationLabel.textColor = UIColor.init(hex: "#FF506D")
            durationLabel.textColor = UIColor(hex: (String(str_filterData.suffix(6)) + str_videoName.replacingOccurrences(of: "gift", with: "D")))
            //: micImageView.image = UIImage.eponymUp(name: "btn_talk_voice_recording_warn_nor")
            micImageView.image = UIImage.eponymUp(name: String(bytes: str_keyPerformModelValue.map{$0^130}, encoding: .utf8)!)
            //: break

        //: case .tooShoot:
        case .tooShoot:
            //: func__showStatusBarErrorMsg(showMsg: "Under time".localized)
            oversight(showMsg: (String(str_equalName) + String(str_centerViewContentValue)).localized)
            //: topTipLabel.text = "Talk too short".localized
            topTipLabel.text = (String(str_singleToHeightName.prefix(5)) + "too s" + str_reportFatalData.replacingOccurrences(of: "view", with: "h")).localized
            //: durationLabel.text = "30″"
            durationLabel.text = "30″"
            //: durationLabel.textColor = UIColor.init(hex: "#FF506D")
            durationLabel.textColor = UIColor(hex: (String(str_filterData.suffix(6)) + str_videoName.replacingOccurrences(of: "gift", with: "D")))
            //: micImageView.image = UIImage.eponymUp(name: "btn_talk_voice_recording_warn_nor")
            micImageView.image = UIImage.eponymUp(name: String(bytes: str_keyPerformModelValue.map{$0^130}, encoding: .utf8)!)
            //: break

        //: default:
        default:
            //: topTipLabel.text = "Move here to cancel".localized
            topTipLabel.text = (String(str_messageValue.suffix(5)) + String(str_byText.prefix(6)) + String(str_cameraText)).localized
            //: durationLabel.text = "0″"
            durationLabel.text = "0″"
            //: durationLabel.textColor = UIColor.appTitleColor()
            durationLabel.textColor = UIColor.executeTo()
            //: micImageView.image = UIImage.eponymUp(name: "btn_talk_voice_recording_nor")
            micImageView.image = UIImage.eponymUp(name: (String(str_sharedText) + String(str_qualityName.suffix(4)) + "cordi" + String(str_showValue)))
            //: break
        }
    }

    //: public func showView () {
    public func finishAcross() {
        //: durationLabel.text = "0″"
        durationLabel.text = "0″"
        //: durationLabel.textColor = UIColor.appTitleColor()
        durationLabel.textColor = UIColor.executeTo()
    }

    //: public func hidenView () {
    public func finderMake() {
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }

    //: public func startAnimation () {
    public func root() {
        //: setRecordStatus(status: .todefault)
        detailNow(status: .todefault)
    }

    //: public func setPlayer (player: SVGAPlayer, status: RecordStatus) {
    public func groupHead(player: SVGAPlayer, status: StatusStrideable) {
        //: do {
        do {
            //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            var url = ToEffectTool.default.alongError(type: .Chat_Record_Yellow)
            //: if  status.rawValue > 1 {
            if status.rawValue > 1 {
                //: url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Red)
                url = ToEffectTool.default.alongError(type: .Chat_Record_Red)
            }
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (str_addName.replacingOccurrences(of: "count", with: "et") + String(str_tableData.suffix(5)) + " error"))
        }
    }

    //: public func setMicrophonePlayer (player: SVGAPlayer, status: RecordStatus) {
    public func toEqualStatus(player: SVGAPlayer, status: StatusStrideable) {
        //: do {
        do {
            //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Yellow)
            var url = ToEffectTool.default.alongError(type: .Greet_Corrugated_Yellow)
            //: if  status.rawValue > 1 {
            if status.rawValue > 1 {
                //: url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Red)
                url = ToEffectTool.default.alongError(type: .Greet_Corrugated_Red)
            }
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (str_addName.replacingOccurrences(of: "count", with: "et") + String(str_tableData.suffix(5)) + " error"))
        }
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let content = UIView.init()
        let content = UIView()
        //: content.backgroundColor = UIColor.init(red: 234/255.0, green: 234/255.0, blue: 234/255.0, alpha: 1.0)
        content.backgroundColor = UIColor(red: 234 / 255.0, green: 234 / 255.0, blue: 234 / 255.0, alpha: 1.0)
        //: return content
        return content
        //: }()
    }()

    //: lazy var topTipLabel: UILabel = {
    lazy var topTipLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.publishView()
        lb.textColor = UIColor.publishView()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.text = "Move here to cancel".localized
        lb.text = (String(str_messageValue.suffix(5)) + String(str_byText.prefix(6)) + String(str_cameraText)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var leftPlayer: SVGAPlayer = {
    lazy var leftPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .todefault)
        groupHead(player: player, status: .todefault)
        //: return player
        return player
        //: }()
    }()

    //: lazy var durationLabel: UILabel = {
    lazy var durationLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lb.font = UIFont.pingfang(type: .Medium, fontSize: 18)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.executeTo()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.text = "0″"
        lb.text = "0″"
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var rightPlayer: SVGAPlayer = {
    lazy var rightPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .todefault)
        groupHead(player: player, status: .todefault)
        //: return player
        return player
        //: }()
    }()

    //: lazy var microphonePlayer: SVGAPlayer = {
    lazy var microphonePlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setMicrophonePlayer(player: player, status: .todefault)
        toEqualStatus(player: player, status: .todefault)
        //: return player
        return player
        //: }()
    }()

    //: lazy var microphoneRedPlayer: SVGAPlayer = {
    lazy var microphoneRedPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setMicrophonePlayer(player: player, status: .tooLong)
        toEqualStatus(player: player, status: .tooLong)
        //: return player
        return player
        //: }()
    }()

    //: lazy var micImageView: UIImageView = {
    lazy var micImageView: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.eponymUp(name: "btn_talk_voice_recording_nor")
        img.image = UIImage.eponymUp(name: (String(str_sharedText) + String(str_qualityName.suffix(4)) + "cordi" + String(str_showValue)))
        //: return img
        return img
        //: }()
    }()

    //: lazy var leftRedPlayer: SVGAPlayer = {
    lazy var leftRedPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .tooLong)
        groupHead(player: player, status: .tooLong)
        //: return player
        return player
        //: }()
    }()

    //: lazy var rightRedPlayer: SVGAPlayer = {
    lazy var rightRedPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .tooLong)
        groupHead(player: player, status: .tooLong)
        //: return player
        return player
        //: }()
    }()
}
