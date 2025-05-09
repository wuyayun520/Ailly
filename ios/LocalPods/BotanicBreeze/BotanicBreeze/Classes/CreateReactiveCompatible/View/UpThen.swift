
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_recording" :*/
fileprivate let str_rowText:[Character] = ["b","t","n"]
fileprivate let str_indexValue:String = "lab normal from type data_rec"

/*: "btn_marching" :*/
fileprivate let str_remainingModeTitle:String = "btn_marcselect top title at"
fileprivate let str_appCellName:String = "HING"

/*: "btn_upload" :*/
fileprivate let str_makeText:String = "error viewbtn_"
fileprivate let str_tableBackData:[Character] = ["u","p","l","o","a","d"]

/*: "btn_audition" :*/
fileprivate let str_dataValue:String = "view borderbtn_a"
fileprivate let str_imageTopValue:[Character] = ["u"]
fileprivate let str_contentData:String = "dequaltequalon"

/*: "Click to listen" :*/
fileprivate let str_textName:String = "Click level in"
fileprivate let str_indicatorTitle:[Character] = ["t","o"," ","l","i","s","t","e","n"]

/*: "Click to start recording" :*/
fileprivate let str_kindLeadingName:String = "let collection heightClic"
fileprivate let str_toShowValue:String = "tvaluert"
fileprivate let str_itemName:String = "rdimomentg"

/*: "00:00" :*/
fileprivate let str_targetRankText:String = "00:00"

/*: "brn_cycle" :*/
fileprivate let str_rawTitle:[Character] = ["b","r","n","_"]
fileprivate let str_appearText:String = "ceventle"

/*: "Come back" :*/
fileprivate let str_moreContent:String = "in request selected modelCom"
fileprivate let str_resultText:[Character] = ["e"," ","b","a","c","k"]

/*: "btn_submit" :*/
fileprivate let str_onData:String = "button true error kind backgroundbtn_sub"
fileprivate let str_emptyValue:[Character] = ["m","i","t"]

/*: "Submit" :*/
fileprivate let str_colorChangeText:String = "air viewSubmit"

/*: "Click to finish recording" :*/
fileprivate let str_infoValue:[Character] = ["C","l","i","c","k"," ","t","o"," ","f"]
fileprivate let str_managerName:String = "ikey"
fileprivate let str_fromName:String = "ish info path push"
fileprivate let str_lastFrameContent:String = "ditextg"

/*: "Under time" :*/
fileprivate let str_sectionData:[Character] = ["U","n","d","e","r"," ","t","i"]
fileprivate let str_colorValue:[Character] = ["m","e"]

/*: "Click to pause" :*/
fileprivate let str_managerData:String = "frame equalClick "
fileprivate let str_addName:[Character] = ["t","o"," ","p","a","u","s","e"]

/*: "Click to play" :*/
fileprivate let str_fileValue:String = "model height value to forCli"
fileprivate let str_fillData:String = "string sharedck t"

/*: "filePath" :*/
fileprivate let str_tagText:[UInt8] = [0x68,0x74,0x61,0x50,0x65,0x6c,0x69,0x66]

/*: "time" :*/
fileprivate let str_nextName:[UInt8] = [0xe6,0xfb,0xff,0xf7]

private func bottomTo(succeed num: UInt8) -> UInt8 {
    return num ^ 146
}

/*: "Recording cancelled" :*/
fileprivate let str_reportAddText:[Character] = ["R","e","c","o","r"]
fileprivate let str_mainTitle:String = "control image var selfding "
fileprivate let str_toData:String = "ELLED"

/*: "get json error" :*/
fileprivate let str_removeName:[Character] = ["g","e","t"," ","j","s"]
fileprivate let str_labData:String = "on eself cell"

/*: "%02d:%02d" :*/
fileprivate let str_modelFlushData:String = "%02d:%add let"
fileprivate let str_leadingContent:[Character] = ["0","2","d"]

/*: "btn_delete" :*/
fileprivate let str_drownPlusData:String = "btn_dclick gift class content view"
fileprivate let str_modelData:String = "eleblock"

/*: "Add voice message" :*/
fileprivate let str_removeData:String = "Add view layer a manager"
fileprivate let str_byTitle:String = "voice else to return back self"

/*: "Record a voice for 3-10s" :*/
fileprivate let str_sendTitle:String = "Recofor height"
fileprivate let str_languageName:String = "ocontentce"
fileprivate let str_effectValue:String = " 3-10stime any"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UpThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/13.
//

//: import UIKit
import UIKit

//: enum RecordSoundStatus: Int {
enum IndexSoundSendable: Int {
    //: case Record = 100
    case Record = 100
    //: case Listen
    case Listen
    //: case Reset
    case Reset
    //: case Finish
    case Finish
}

//: enum RecordState: Int {
enum RubricTermConvertible: Int {
    //: case ReadyToRecord = 0
    case ReadyToRecord = 0 /// 准备录音
    //: case Recording
    case Recording /// 录音中
    //: case RecordComplete
    case RecordComplete /// 录音完成
    //: case RecordWaitReply
    case RecordWaitReply /// 录音审核中
    //: case RecordPassed
    case RecordPassed /// 录音审核通过
}

//: typealias AudioFileUpload = (_ info: Dictionary<String, Any>) -> Void
typealias AudioFileUpload = (_ info: [String: Any]) -> Void

//: class TalkingGreetRecordAudioView: UIView {
class UpThen: UIView {
    //: var state: RecordState? = .ReadyToRecord
    var state: RubricTermConvertible? = .ReadyToRecord
    //: var didEnterBack = false
    var didEnterBack = false
    //: var tempTime = 0
    var tempTime = 0 /// 录音时长
    //: var filePath = ""
    var filePath = ""
    //: var audioFileUpload: AudioFileUpload?
    var audioFileUpload: AudioFileUpload?
    //: var popView: TalkingPopView?
    var popView: NameThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.script()
        //: self.setupSubViewsConstraint()
        self.subConstraint()
        //: self.bindInteraction()
        self.doCounteraction()
        //: NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBack), name: UIApplication.didEnterBackgroundNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(appAdd), name: UIApplication.didEnterBackgroundNotification, object: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewData.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var soundButton: UIButton = {
    lazy var soundButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_recording"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_rowText) + String(str_indexValue.suffix(4)) + "ording")), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "btn_recording"), for: .highlighted)
        btn.setImage(UIImage.eponymUp(name: (String(str_rowText) + String(str_indexValue.suffix(4)) + "ording")), for: .highlighted)
        //: btn.setImage(UIImage.eponymUp(name: "btn_marching"), for: .selected)
        btn.setImage(UIImage.eponymUp(name: (String(str_remainingModeTitle.prefix(8)) + str_appCellName.lowercased())), for: .selected)
        //: btn.tag = RecordSoundStatus.Record.rawValue
        btn.tag = IndexSoundSendable.Record.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(doingThan(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenButton: UIButton = {
    lazy var listenButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_upload"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_makeText.suffix(4)) + String(str_tableBackData))), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "btn_audition"), for: .selected)
        btn.setImage(UIImage.eponymUp(name: (String(str_dataValue.suffix(5)) + String(str_imageTopValue) + str_contentData.replacingOccurrences(of: "equal", with: "i"))), for: .selected)
        //: btn.tag = RecordSoundStatus.Listen.rawValue
        btn.tag = IndexSoundSendable.Listen.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(doingThan(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenLabel: UILabel = {
    lazy var listenLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.pingfang(type: .Regular, fontSize: 15)
        //: lb.textColor = .publishView()
        lb.textColor = .publishView()
        //: lb.text = "Click to listen".localized
        lb.text = (String(str_textName.prefix(6)) + String(str_indicatorTitle)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var soundLabel: UILabel = {
    lazy var soundLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 17)
        lb.font = UIFont.pingfang(type: .Regular, fontSize: 17)
        //: lb.textColor = .publishView()
        lb.textColor = .publishView()
        //: lb.text = "Click to start recording".localized
        lb.text = (String(str_kindLeadingName.suffix(4)) + "k to s" + str_toShowValue.replacingOccurrences(of: "value", with: "a") + " reco" + str_itemName.replacingOccurrences(of: "moment", with: "n")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var timeLabel: UILabel = {
    lazy var timeLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 20)
        lb.font = UIFont.pingfang(type: .Medium, fontSize: 20)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .executeTo()
        //: lb.text = "00:00"
        lb.text = (str_targetRankText.capitalized)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var resetButton: UIButton = {
    lazy var resetButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "brn_cycle"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_rawTitle) + str_appearText.replacingOccurrences(of: "event", with: "yc"))), for: .normal)
        //: btn.tag = RecordSoundStatus.Reset.rawValue
        btn.tag = IndexSoundSendable.Reset.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(doingThan(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var resetLabel: UILabel = {
    lazy var resetLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.pingfang(type: .Regular, fontSize: 15)
        //: lb.textColor = .publishView()
        lb.textColor = .publishView()
        //: lb.text = "Come back".localized
        lb.text = (String(str_moreContent.suffix(3)) + String(str_resultText)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var finishButton: UIButton = {
    lazy var finishButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_submit"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_onData.suffix(7)) + String(str_emptyValue))), for: .normal)
        //: btn.tag = RecordSoundStatus.Finish.rawValue
        btn.tag = IndexSoundSendable.Finish.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(doingThan(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishLabel: UILabel = {
    lazy var finishLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.pingfang(type: .Regular, fontSize: 15)
        //: lb.textColor = .publishView()
        lb.textColor = .publishView()
        //: lb.text = "Submit".localized
        lb.text = (String(str_colorChangeText.suffix(6))).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var listenPlayer: SVGAPlayer = {
    lazy var listenPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var leftRecordPlayer: SVGAPlayer = {
    lazy var leftRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var rightRecordPlayer: SVGAPlayer = {
    lazy var rightRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var audioTool: TalkingAudioTool? = {
    lazy var audioTool: DeviceAudioTool? = {
        //: let audioT = TalkingAudioTool.shared
        let audioT = DeviceAudioTool.shared
        //: audioT.delegate = self
        audioT.delegate = self
        //: return audioT
        return audioT
        //: }()
    }()
}

//: extension TalkingGreetRecordAudioView {
extension UpThen {
    //: func showUIViaState() {
    func panoramicView() {
        //: switch self.state {
        switch self.state {
        //: case .ReadyToRecord:
        case .ReadyToRecord:
            //: self.listenButton.isHidden = true
            self.listenButton.isHidden = true
            //: self.listenLabel.isHidden = true
            self.listenLabel.isHidden = true
            //: self.resetButton.isHidden = true
            self.resetButton.isHidden = true
            //: self.resetLabel.isHidden = true
            self.resetLabel.isHidden = true
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = false
            self.soundButton.isHidden = false
            //: self.soundLabel.isHidden = false
            self.soundLabel.isHidden = false

        //: break
        //: case .Recording:
        case .Recording:
            //: break
            break
        //: case .RecordComplete:
        case .RecordComplete:
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = false
            self.finishButton.isHidden = false
            //: self.finishLabel.isHidden = false
            self.finishLabel.isHidden = false
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
        //: break
        //: case .RecordWaitReply, .RecordPassed:
        case .RecordWaitReply, .RecordPassed:
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
        //: break
        //: default: break
        default: break
        }
    }

    //: func releaseSoundView() {
    func tab() {
        //: self.audioTool?.delegate = nil
        self.audioTool?.delegate = nil
        //: self.audioTool?.stopRecord()
        self.audioTool?.viewWith()
        //: stopPlay()
        current()
        //: self.audioTool?.destroy()
        self.audioTool?.routeDestroy()
        //: self.audioTool = nil
        self.audioTool = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func record() {
    func my() {
        //: leftRecordSVGAParser()
        portParser()
        //: rightRecordSVGAParser()
        admissionToParser()
        //: self.audioTool?.BeginRecord()
        self.audioTool?.generate()
        //: stopPlay()
        current()
        //: self.soundLabel.text = "Click to finish recording".localized
        self.soundLabel.text = (String(str_infoValue) + str_managerName.replacingOccurrences(of: "key", with: "n") + String(str_fromName.prefix(4)) + "recor" + str_lastFrameContent.replacingOccurrences(of: "text", with: "n")).localized
        //: self.state = .Recording
        self.state = .Recording
    }

    //: func stopRecord() {
    func makeSelectEnter() {
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.viewWith()

        //: if self.tempTime >= 3 {
        if self.tempTime >= 3 {
            //: self.state = .RecordComplete
            self.state = .RecordComplete
            //: showUIViaState()
            panoramicView()
            //: self.listenLabel.text = "Click to listen".localized
            self.listenLabel.text = (String(str_textName.prefix(6)) + String(str_indicatorTitle)).localized
            //: }else {
        } else {
            //: self.soundLabel.text = "Click to start recording".localized
            self.soundLabel.text = (String(str_kindLeadingName.suffix(4)) + "k to s" + str_toShowValue.replacingOccurrences(of: "value", with: "a") + " reco" + str_itemName.replacingOccurrences(of: "moment", with: "n")).localized
            //: self.timeLabel.text = "00:00"
            self.timeLabel.text = (str_targetRankText.capitalized)
            //: self.state = .ReadyToRecord
            self.state = .ReadyToRecord
            //: self.func__showStatusBarErrorMsg(showMsg: "Under time".localized)
            self.oversight(showMsg: (String(str_sectionData) + String(str_colorValue)).localized)
        }
    }

    //: func play() {
    func by() {
        //: if filePath.count>1 {
        if filePath.count > 1 {
            //: self.audioTool?.play()
            self.audioTool?.currentnessState()
            //: self.listenLabel.text = "Click to pause".localized
            self.listenLabel.text = (String(str_managerData.suffix(6)) + String(str_addName)).localized
            //: listenSVGAParser()
            dataParser()
            //: }else {
        } else {
            //: tryToPlayRemoteAudio()
            row()
        }
    }

    //: func stopPlay() {
    func current() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.overComplete()
        //: var text = "Click to play".localized
        var text = (String(str_fileValue.suffix(3)) + String(str_fillData.suffix(4)) + "o play").localized
        //: if self.state == .RecordComplete {
        if self.state == .RecordComplete {
            //: text = "Click to listen".localized
            text = (String(str_textName.prefix(6)) + String(str_indicatorTitle)).localized
        }
        //: self.listenLabel.text = text
        self.listenLabel.text = text
    }

    //: func reset() {
    func color() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.audioTool?.stopPlay()
        self.audioTool?.overComplete()
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(str_kindLeadingName.suffix(4)) + "k to s" + str_toShowValue.replacingOccurrences(of: "value", with: "a") + " reco" + str_itemName.replacingOccurrences(of: "moment", with: "n")).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = (str_targetRankText.capitalized)

        //: showUIViaState()
        panoramicView()
    }

    //: func finish() {
    func donation() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.overComplete()
        //: self.listenLabel.text = "Click to listen".localized
        self.listenLabel.text = (String(str_textName.prefix(6)) + String(str_indicatorTitle)).localized
        //: if self.audioFileUpload != nil {
        if self.audioFileUpload != nil {
            //: let dict = ["filePath": self.filePath, "time": (self.tempTime).description]
            let dict = [String(bytes: str_tagText.reversed(), encoding: .utf8)!: self.filePath, String(bytes: str_nextName.map{bottomTo(succeed: $0)}, encoding: .utf8)!: (self.tempTime).description]
            //: self.audioFileUpload!(dict)
            self.audioFileUpload!(dict)
        }
    }

    //: func tryToPlayRemoteAudio() {
    func row() {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            oversight(showMsg: kLet_errorData)
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: return
            return
        }
        //: self.listenLabel.text = "Click to pause".localized
        self.listenLabel.text = (String(str_managerData.suffix(6)) + String(str_addName)).localized
        //: listenSVGAParser()
        dataParser()
    }

    //: @objc func soundButtonAction(sender: UIButton) {
    @objc func doingThan(sender: UIButton) {
        //: switch (sender.tag) {
        switch sender.tag {
        //: case RecordSoundStatus.Record.rawValue:
        case IndexSoundSendable.Record.rawValue:

            //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
            RubricThen.valueClose(true) { isOpen in
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                    self.oversight(showMsg: kLet_likeCancelData)
                    //: return
                    return
                }
                //: sender.isSelected = !sender.isSelected
                sender.isSelected = !sender.isSelected
                //: if (sender.isSelected) {
                if sender.isSelected {
                    //: guard !TalkingSocketManager.shared.isTalking else {
                    guard !DeviceSocketDelegate.shared.isTalking else {
                        //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                        self.oversight(showMsg: kLet_replaceTitle)
                        //: sender.isSelected = false
                        sender.isSelected = false
                        //: return
                        return
                    }
                    //: self.record()
                    self.my()
                    //: }else {
                } else {
                    //: self.stopRecord()
                    self.makeSelectEnter()
                }
            }
            //: break

        //: case RecordSoundStatus.Listen.rawValue:
        case IndexSoundSendable.Listen.rawValue:
            //: sender.isSelected = !sender.isSelected
            sender.isSelected = !sender.isSelected
            //: if sender.isSelected {
            if sender.isSelected {
                //: self.play()
                self.by()
                //: }else {
            } else {
                //: self.stopPlay()
                self.current()
            }
                //: break

        //: case RecordSoundStatus.Reset.rawValue:
        case IndexSoundSendable.Reset.rawValue:
            //: reset()
            color()
                //: break

        //: case RecordSoundStatus.Finish.rawValue:
        case IndexSoundSendable.Finish.rawValue:
            //: finish()
            donation()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: @objc func closeButtonAction() {
    @objc func array() {
        //: stopPlay()
        current()
        //: dismiss()
        photoTable()
    }

    //: @objc func appDidEnterBack() {
    @objc func appAdd() {
        //: if self.state != .Recording {
        if self.state != .Recording {
            //: return
            return
        }
        //: self.func__showStatusBarErrorMsg(showMsg: "Recording cancelled")
        self.oversight(showMsg: (String(str_reportAddText) + String(str_mainTitle.suffix(5)) + "canc" + str_toData.lowercased()))
        //: self.didEnterBack = true
        self.didEnterBack = true
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.viewWith()

        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(str_kindLeadingName.suffix(4)) + "k to s" + str_toShowValue.replacingOccurrences(of: "value", with: "a") + " reco" + str_itemName.replacingOccurrences(of: "moment", with: "n")).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = (str_targetRankText.capitalized)
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: showUIViaState()
        panoramicView()
    }

    //: func show() {
    func changeIn() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = NameThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.observe(view: self)
        //: popView?.showInView(view: MacroDefine.getWindow())
        popView?.shackUp(view: UserMacroDefine.toUp())
    }

    //: func dismiss() {
    func photoTable() {
        //: releaseSoundView()
        tab()
        //: popView?.dismissView()
        popView?.big()
        //: popView = nil
        popView = nil
    }

    /// 试听动效
    //: func listenSVGAParser() {
    func dataParser() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Yellow)
            let url = ToEffectTool.default.alongError(type: .Greet_Corrugated_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.listenPlayer.videoItem = videoItem
                self.listenPlayer.videoItem = videoItem
                //: self.listenPlayer.startAnimation()
                self.listenPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_removeName) + String(str_labData.prefix(4)) + "rror"))
        }
    }

    /// 录音动效
    //: func leftRecordSVGAParser() {
    func portParser() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = ToEffectTool.default.alongError(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.leftRecordPlayer.videoItem = videoItem
                self.leftRecordPlayer.videoItem = videoItem
                //: self.leftRecordPlayer.startAnimation()
                self.leftRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_removeName) + String(str_labData.prefix(4)) + "rror"))
        }
    }

    ///
    //: func rightRecordSVGAParser() {
    func admissionToParser() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = ToEffectTool.default.alongError(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.rightRecordPlayer.videoItem = videoItem
                self.rightRecordPlayer.videoItem = videoItem
                //: self.rightRecordPlayer.startAnimation()
                self.rightRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_removeName) + String(str_labData.prefix(4)) + "rror"))
        }
    }
}

//: extension TalkingGreetRecordAudioView: TalkingAudioToolDelegate {
extension UpThen: RadiusToolDelegate {
    /// 录音时间
    //: func func__recordTime(currentTime: Double) {
    func removeFinish(currentTime: Double) {
        //: if currentTime > 10 {
        if currentTime > 10 {
            //: stopRecord()
            makeSelectEnter()
        }
        //: self.tempTime = Int(round(currentTime)) % 60
        self.tempTime = Int(round(currentTime)) % 60
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: if self.tempTime > 10 {
        if self.tempTime > 10 {
            //: return
            return
        }
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 播放时间
    //: func func__playTime(currentTime: Double) {
    func globalLiveTime(currentTime: Double) {
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 录音完毕的回调
    //: func func__recordFinishWithFile(filePath: String) {
    func looker(filePath: String) {
        //: if self.didEnterBack {
        if self.didEnterBack {
            //: self.didEnterBack = false
            self.didEnterBack = false
            //: return
            return
        }
        //: self.filePath = filePath
        self.filePath = filePath
        //: stopRecord()
        makeSelectEnter()
    }

    /// 播放完毕的回调
    //: func playerStatusChange(status: AudioPlayerStatus) {
    func player(status: PlayerPropertyProtocol) {
        //: self.timeLabel.text = ""
        self.timeLabel.text = ""
        //: if status == .PlayerFinish {
        if status == .PlayerFinish {
            //: self.audioTool?.finishPlay()
            self.audioTool?.componentLabel()
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: self.listenPlayer.stopAnimation()
            self.listenPlayer.stopAnimation()
            //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
            self.listenLabel.text = self.state == .RecordComplete ? (String(str_textName.prefix(6)) + String(str_indicatorTitle)).localized : (String(str_fileValue.suffix(3)) + String(str_fillData.suffix(4)) + "o play").localized
            //: }else if status == .PlayerInterruption {
        } else if status == .PlayerInterruption {
            //: if self.filePath.count > 1 {
            if self.filePath.count > 1 {
                //: self.listenButton.isSelected = false
                self.listenButton.isSelected = false
                //: self.listenPlayer.stopAnimation()
                self.listenPlayer.stopAnimation()
                //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
                self.listenLabel.text = self.state == .RecordComplete ? (String(str_textName.prefix(6)) + String(str_indicatorTitle)).localized : (String(str_fileValue.suffix(3)) + String(str_fillData.suffix(4)) + "o play").localized
            }
        }
    }
}

//: extension TalkingGreetRecordAudioView {
extension UpThen {
    // 添加视图
    //: private func setupSubviews() {
    private func script() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(soundButton)
        contentView.addSubview(soundButton)
        //: contentView.addSubview(listenButton)
        contentView.addSubview(listenButton)
        //: contentView.addSubview(soundLabel)
        contentView.addSubview(soundLabel)
        //: contentView.addSubview(listenLabel)
        contentView.addSubview(listenLabel)
        //: contentView.addSubview(timeLabel)
        contentView.addSubview(timeLabel)
        //: contentView.addSubview(resetButton)
        contentView.addSubview(resetButton)
        //: contentView.addSubview(resetLabel)
        contentView.addSubview(resetLabel)
        //: contentView.addSubview(finishButton)
        contentView.addSubview(finishButton)
        //: contentView.addSubview(finishLabel)
        contentView.addSubview(finishLabel)
        //: contentView.addSubview(listenPlayer)
        contentView.addSubview(listenPlayer)
        //: contentView.addSubview(leftRecordPlayer)
        contentView.addSubview(leftRecordPlayer)
        //: contentView.addSubview(rightRecordPlayer)
        contentView.addSubview(rightRecordPlayer)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func subConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 275), height: actualWidth(w: 313)))
            make.size.equalTo(CGSize(width: actualWidth(w: 275), height: actualWidth(w: 313)))
        }
        //: let closeBtn = UIButton.init()
        let closeBtn = UIButton()
        //: closeBtn.setImage(UIImage.eponymUp(name: "btn_delete"), for: .normal)
        closeBtn.setImage(UIImage.eponymUp(name: (String(str_drownPlusData.prefix(5)) + str_modelData.replacingOccurrences(of: "block", with: "te"))), for: .normal)
        //: closeBtn.addTarget(self, action: #selector(closeButtonAction), for: .touchUpInside)
        closeBtn.addTarget(self, action: #selector(array), for: .touchUpInside)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.trailing.equalTo(-11)
            make.trailing.equalTo(-11)
            //: make.size.equalTo(CGSize.init(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }

        //: let titleLb = UILabel.init()
        let titleLb = UILabel()
        //: titleLb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 20)
        titleLb.font = UIFont.pingfang(type: .Semibold, fontSize: 20)
        //: titleLb.textColor = .appTitleColor()
        titleLb.textColor = .executeTo()
        //: titleLb.text = "Add voice message".localized
        titleLb.text = (String(str_removeData.prefix(4)) + String(str_byTitle.prefix(6)) + "message").localized
        //: contentView.addSubview(titleLb)
        contentView.addSubview(titleLb)
        //: titleLb.snp.makeConstraints { make in
        titleLb.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: let explainLb = UILabel.init()
        let explainLb = UILabel()
        //: explainLb.font = UIFont.pingfangFont(type: .Regular, fontSize: 17)
        explainLb.font = UIFont.pingfang(type: .Regular, fontSize: 17)
        //: explainLb.textColor = .publishView()
        explainLb.textColor = .publishView()
        //: explainLb.text = "Record a voice for 3-10s".localized
        explainLb.text = (String(str_sendTitle.prefix(4)) + "rd a v" + str_languageName.replacingOccurrences(of: "content", with: "i") + " for" + String(str_effectValue.prefix(6))).localized
        //: contentView.addSubview(explainLb)
        contentView.addSubview(explainLb)
        //: explainLb.snp.makeConstraints { make in
        explainLb.snp.makeConstraints { make in
            //: make.top.equalTo(titleLb.snp.bottom).offset(9)
            make.top.equalTo(titleLb.snp.bottom).offset(9)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: soundButton.snp.makeConstraints { make in
        soundButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-actualWidth(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(actualWidth(w: 87))
        }
        //: listenButton.snp.makeConstraints { make in
        listenButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-actualWidth(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(actualWidth(w: 87))
        }
        //: soundLabel.snp.makeConstraints { make in
        soundLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-actualWidth(w: 24))
        }
        //: listenLabel.snp.makeConstraints { make in
        listenLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-actualWidth(w: 24))
        }
        //: timeLabel.snp.makeConstraints { make in
        timeLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(explainLb.snp.bottom).offset(36)
            make.top.equalTo(explainLb.snp.bottom).offset(36)
        }
        //: resetButton.snp.makeConstraints { make in
        resetButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(actualWidth(w: 49))
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-27)
            make.trailing.equalTo(soundButton.snp.leading).offset(-27)
        }
        //: resetLabel.snp.makeConstraints { make in
        resetLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(resetButton)
            make.centerX.equalTo(resetButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: finishButton.snp.makeConstraints { make in
        finishButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(actualWidth(w: 49))
            //: make.leading.equalTo(soundButton.snp.trailing).offset(27)
            make.leading.equalTo(soundButton.snp.trailing).offset(27)
        }
        //: finishLabel.snp.makeConstraints { make in
        finishLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(finishButton)
            make.centerX.equalTo(finishButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: listenPlayer.snp.makeConstraints { make in
        listenPlayer.snp.makeConstraints { make in
            //: make.center.equalTo(soundButton)
            make.center.equalTo(soundButton)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 123), height: actualWidth(w: 123)))
            make.size.equalTo(CGSize(width: actualWidth(w: 123), height: actualWidth(w: 123)))
        }
        //: leftRecordPlayer.snp.makeConstraints { make in
        leftRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: actualWidth(w: 66), height: actualWidth(w: 26)))
        }
        //: rightRecordPlayer.snp.makeConstraints { make in
        rightRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.leading.equalTo(soundButton.snp.trailing).offset(12)
            make.leading.equalTo(soundButton.snp.trailing).offset(12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: actualWidth(w: 66), height: actualWidth(w: 26)))
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func doCounteraction() {
        //: showUIViaState()
        panoramicView()
    }
}
