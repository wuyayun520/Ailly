
//: Declare String Begin

/*: ".wav" :*/
fileprivate let str_tagAddData:[Character] = [".","w","a","v"]

/*: "Documents/User/voice/" :*/
fileprivate let str_coverValue:String = "Documetrue size center view"
fileprivate let str_withTitle:String = "N"
fileprivate let str_colorData:[Character] = ["t","s","/","U","s","e","r","/","v","o","i","c","e","/"]

/*: "Documents/User/record/" :*/
fileprivate let str_fieldImageHiddenValue:String = "equal post file selfDocum"
fileprivate let str_postName:[Character] = ["e","n","t","s","/","U","s"]
fileprivate let str_shareValue:String = "action list genderer/re"

/*: "voice dataTaskDownloadFinish" :*/
fileprivate let str_availableTitle:[Character] = ["v","o","i","c","e"," ","d","a","t","a"]
fileprivate let str_viewTitle:String = "response in mapTask"
fileprivate let str_addValue:String = "LOAD"
fileprivate let str_sizeData:[Character] = ["F","i","n","i","s","h"]

/*: "voice dataTaskDownloadCancel" :*/
fileprivate let str_blockLayerValue:String = "voice daself lab height"
fileprivate let str_emptyContent:[Character] = ["t","a","T","a"]
fileprivate let str_wrapData:String = "skDowmodel title make"
fileprivate let str_videoCenterValue:String = "ancesection"

/*: "voice dataTaskDownloadExpired" :*/
fileprivate let str_addGreetValue:String = "make gift varvoice d"
fileprivate let str_tableData:[Character] = ["a","t","a","T","a","s","k","D","o","w","n","l","o"]
fileprivate let str_toTitle:[Character] = ["a","d","E","x","p","i","r","e","d"]

/*: "voice dataTaskDownloadErro" :*/
fileprivate let str_colorName:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a"]
fileprivate let str_imageTitle:[Character] = ["s","k","D","o","w","n","l","o","a","d","E","r","r","o"]

/*: "Play Error,File does not exist" :*/
fileprivate let str_sizeValue:String = "image photoPlay E"
fileprivate let str_labValue:String = "make make let equal frame,File "
fileprivate let str_momentName:String = " not end new cell"
fileprivate let str_userFollowValue:[Character] = ["e","x","i","s","t"]

/*: "Play Error,File expired" :*/
fileprivate let str_imageCellValue:[Character] = ["P"]
fileprivate let str_viewData:[Character] = ["l","a","y"," ","E","r","r","o","r",",","F","i","l","e"," ","e","x","p","i","r","e","d"]

/*: "Play Error，Net error" :*/
fileprivate let str_oldText:String = "self error toPlay"
fileprivate let str_withName:String = "r\u{ff0c}Net"

/*: "Currently in mute mode" :*/
fileprivate let str_messageText:String = "view value to data ofCurr"
fileprivate let str_versionValue:String = "min return sizen mu"
fileprivate let str_frameData:[Character] = ["t","e"," ","m","o","d","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ControlRawManagerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/10.
//

//: import UIKit
import UIKit

/// 播放器状态
//: enum AudioMsgPlayStatus {
enum BeautyPlayStatus {
    //: case Unknown
    case Unknown // 未开始
    //: case Waiting
    case Waiting // 等待中
    //: case Playing
    case Playing // 播放中
}

//: enum AudioPlayingErrorStatus: Int {
enum MakeConstantTarget: Int {
    //: case AudioPlayerNil = 0
    case AudioPlayerNil = 0 // audioPlayer初始化失败，多半是路径下文件的问题
    //: case FileExpired = 1
    case FileExpired = 1 // 文件过期
    //: case TaskError = 2
    case TaskError = 2 // 下载报错
    //: case NotFileAtPath = 3
    case NotFileAtPath = 3 // 路径下文件不存在
    //: case FirstMuteTip = 100
    case FirstMuteTip = 100 // 静音提醒
}

//: class TalkingVoiceMsgPlayManager: NSObject {
class ControlRawManagerDelegate: NSObject {
    //: static let shared = TalkingVoiceMsgPlayManager()
    static let shared = ControlRawManagerDelegate()

    //: var  voiceDataList: [TalkingVoiceMsgPlayModel] = []
    var voiceDataList: [ContentTransformable] = []

    //: var playItemDic: Dictionary<String, TalkingVoiceMsgPlayModel> = [:]
    var playItemDic: [String: ContentTransformable] = [:]

    //: var audioPlayer: AVAudioPlayer?
    var audioPlayer: AVAudioPlayer?
    //: var playStatus: AudioMsgPlayStatus = .Unknown
    var playStatus: BeautyPlayStatus = .Unknown
    //: var playIndex = 0
    var playIndex = 0 // 当前播放的下标
    //: var waitPlayID = ""   // 将要播放的主键id
    var waitPlayID = "" // 将要播放的主键id
    //: var clickCellId = ""   // 记录点击的
    var clickCellId = "" // 记录点击的
    //: var isMute = false
    var isMute = false // 是否静音，默认否

    //: private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()
    private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: initialization()
        willIndexBlock()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func initialization() {
    func willIndexBlock() {
        //: self.voiceDataList.removeAll()
        self.voiceDataList.removeAll()
        //: self.playItemDic.removeAll()
        self.playItemDic.removeAll()
        //: self.playIndex = 0
        self.playIndex = 0
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension ControlRawManagerDelegate {
    //: func stopAudioPlayer() {
    func viewPlayer() {
        //: if playStatus != .Unknown {
        if playStatus != .Unknown {
            //: for  model in voiceDataList {
            for model in voiceDataList {
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
            }
        }
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
    }

    /// 播放引用消息
    //: func starPlayReplyMsg(playModel: TalkingVoiceMsgPlayModel) {
    func visible(playModel: ContentTransformable) {
        //: stopAudioPlayer()
        viewPlayer()
        //: initialization()
        willIndexBlock()
        //: voiceDataList.append(playModel)
        voiceDataList.append(playModel)
        //: let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        //: waitPlayID = playModel.db_voiceCacheWrap.msgId
        waitPlayID = playModel.db_voiceCacheWrap.msgId
        //: self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        //: let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        //: if status == DownloadTaskStatus.finish.rawValue ||
        if status == ControlFreeWidthNumber.finish.rawValue ||
            //: !dbFilePath.isEmpty && dbFilePath.hasSuffix(".wav")  {
            !dbFilePath.isEmpty && dbFilePath.hasSuffix((String(str_tagAddData)))
        {
            //: starPlayVoiceMsg(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            enablee(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            //: } else {
        } else {
            //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(playModel.db_voiceCacheWrap)
            let taskModel = RawTaskModel.everyModel(playModel.db_voiceCacheWrap)
            //: VoiceDownloadTaskManager.shared.addDownloadTasks([taskModel])
            HeadWithDataDelegate.shared.createApp([taskModel])
        }
    }

    //: func starPlayMsg(msgArr: [TalkingVoiceMsgPlayModel]) {
    func lineItem(msgArr: [ContentTransformable]) {
        //: if msgArr.count == 0 {
        if msgArr.count == 0 {
            //: return
            return
        }
        //: stopAudioPlayer()
        viewPlayer()
        //: initialization()
        willIndexBlock()
        //: voiceDataList += msgArr
        voiceDataList += msgArr
        //: var index = 0
        var index = 0
        //: var tempArray: [VoiceDownloadTaskModel] = []
        var tempArray: [RawTaskModel] = []
        //: var firstModel: TalkingVoiceMsgPlayModel?
        var firstModel: ContentTransformable?
        //: for model in msgArr {
        for model in msgArr {
            //: let bindWrap = VoxReactiveCompatible.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let bindWrap = VoxReactiveCompatible.destroy(with: model.db_voiceCacheWrap.msgId)
            //: if bindWrap != nil {
            if bindWrap != nil {
                //: model.db_voiceCacheWrap = bindWrap!
                model.db_voiceCacheWrap = bindWrap!
            }
            //: let isMySend = (model.db_voiceCacheWrap.db_senduid == EqualThen.share.loginUserMode.userID)
            let isMySend = (model.db_voiceCacheWrap.db_senduid == EqualThen.share.loginUserMode.userID)
            //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if index == 0 {
            if index == 0 {
                //: waitPlayID = model.db_voiceCacheWrap.msgId
                waitPlayID = model.db_voiceCacheWrap.msgId
                //: if status == DownloadTaskStatus.finish.rawValue || isMySend {
                if status == ControlFreeWidthNumber.finish.rawValue || isMySend {
                    //: firstModel = model
                    firstModel = model
                }
                //: if (status != DownloadTaskStatus.finish.rawValue) {
                if status != ControlFreeWidthNumber.finish.rawValue {
                    //: if playStatus != .Unknown {
                    if playStatus != .Unknown {
                        //: model.activityShowStatus = 1
                        model.activityShowStatus = 1
                    }
                }
            }
            //: if status != DownloadTaskStatus.finish.rawValue && !isMySend {
            if status != ControlFreeWidthNumber.finish.rawValue, !isMySend {
                //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(model.db_voiceCacheWrap)
                let taskModel = RawTaskModel.everyModel(model.db_voiceCacheWrap)
                //: tempArray.append(taskModel)
                tempArray.append(taskModel)
            }
            //: index += 1
            index += 1
        }

        //: if firstModel != nil {
        if firstModel != nil {
            //: firstModel?.isPlayingStatus = 1
            firstModel?.isPlayingStatus = 1
            //: starPlayVoiceMsg(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
            enablee(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
        }
        //: VoiceDownloadTaskManager.shared.addDownloadTasks(tempArray)
        HeadWithDataDelegate.shared.createApp(tempArray)
    }

    //: func starPlayVoiceMsg(filePath: String, msgID: String) {
    func enablee(filePath: String, msgID: String) {
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
        //: let model = self.playItemDic[msgID]
        let model = self.playItemDic[msgID]
        //: if model == nil {
        if model == nil {
            //: return
            return
        }
        //: var temfilePath = filePath
        var temfilePath = filePath
        //: let theFileName = (temfilePath as NSString).lastPathComponent
        let theFileName = (temfilePath as NSString).lastPathComponent

        // 重编译，相对路径会变
        //: if filePath.contains("Documents/User/voice/") {
        if filePath.contains((String(str_coverValue.prefix(6)) + str_withTitle.lowercased() + String(str_colorData))) {
            //: temfilePath = Talking_Chat_voice_SandboxPath + theFileName
            temfilePath = kLet_nextName + theFileName
        }
        //: if filePath.contains("Documents/User/record/") {
        if filePath.contains((String(str_fieldImageHiddenValue.suffix(5)) + String(str_postName) + String(str_shareValue.suffix(5)) + "cord/")) {
            //: temfilePath = Talking_Chat_record_SandboxPath + theFileName
            temfilePath = kLet_selectContent + theFileName
        }
        //: if !FileManager.fileManager.fileExists(atPath: temfilePath) {
        if !FileManager.fileManager.fileExists(atPath: temfilePath) {
            //: model?.isPlayingStatus = 2
            model?.isPlayingStatus = 2
            //: showToast(status: .NotFileAtPath)
            cellStatus(status: .NotFileAtPath)
            //: return
            return
        }
        //: model?.db_voiceCacheWrap.db_isRead = "1"
        model?.db_voiceCacheWrap.db_isRead = "1"
        //: VoxReactiveCompatible.db_updateVoiceMsg(model!.db_voiceCacheWrap)
        VoxReactiveCompatible.pastTarget(model!.db_voiceCacheWrap)
        //: let session = AVAudioSession.sharedInstance()
        let session = AVAudioSession.sharedInstance()
        //: do {
        do {
            //: try session.setCategory(AVAudioSession.Category.ambient)
            try session.setCategory(AVAudioSession.Category.ambient)
            //: } catch {
        } catch {}
        //: let url = URL.init(fileURLWithPath: temfilePath)
        let url = URL(fileURLWithPath: temfilePath)
        //: do {
        do {
            //: try audioPlayer = AVAudioPlayer.init(contentsOf: url)
            try audioPlayer = AVAudioPlayer(contentsOf: url)
            //: } catch {
        } catch {}
        //: audioPlayer?.delegate = self
        audioPlayer?.delegate = self
        //: audioPlayer?.prepareToPlay()
        audioPlayer?.prepareToPlay()
        //: audioPlayer?.play()
        audioPlayer?.play()
        //: self.playStatus = .Playing
        self.playStatus = .Playing
        //: setMutedDetection()
        seedFace()
    }

    //: func addDaskManagerDelegate() {
    func parameter() {
        //: stopAudioPlayer()
        viewPlayer()
        //: VoiceDownloadTaskManager.shared.delegate = self
        HeadWithDataDelegate.shared.delegate = self
    }

    //: func removeDaskManagerDelegate() {
    func listApp() {
        //: stopAudioPlayer()
        viewPlayer()
        //: VoiceDownloadTaskManager.shared.delegate = nil
        HeadWithDataDelegate.shared.delegate = nil
    }
}

//: extension TalkingVoiceMsgPlayManager: AVAudioPlayerDelegate {
extension ControlRawManagerDelegate: AVAudioPlayerDelegate {
    //: func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
    func audioPlayerDidFinishPlaying(_: AVAudioPlayer, successfully flag: Bool) {
        //: let lastModel = voiceDataList[playIndex]
        let lastModel = voiceDataList[playIndex]
        //: lastModel.isPlayingStatus = 2
        lastModel.isPlayingStatus = 2
        //: if flag {
        if flag {
            //: if playIndex < voiceDataList.count - 1 {
            if playIndex < voiceDataList.count - 1 {
                //: playIndex += 1
                playIndex += 1
                //: let model = voiceDataList[playIndex]
                let model = voiceDataList[playIndex]
                //: let bindWrap = VoxReactiveCompatible.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
                let bindWrap = VoxReactiveCompatible.destroy(with: model.db_voiceCacheWrap.msgId)
                //: if bindWrap != nil {
                if bindWrap != nil {
                    //: model.db_voiceCacheWrap = bindWrap!
                    model.db_voiceCacheWrap = bindWrap!
                    //: self.waitPlayID = bindWrap!.msgId
                    self.waitPlayID = bindWrap!.msgId
                }
                //: voiceDataList[playIndex] = model
                voiceDataList[playIndex] = model
                //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
                self.playItemDic[model.db_voiceCacheWrap.msgId] = model

                //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
                let status = Int(model.db_voiceCacheWrap.downloadStatus)
                //: if status == DownloadTaskStatus.finish.rawValue {
                if status == ControlFreeWidthNumber.finish.rawValue {
                    //: model.isPlayingStatus = 1
                    model.isPlayingStatus = 1
                    //: starPlayVoiceMsg(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    enablee(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    //: playStatus = .Waiting
                    playStatus = .Waiting
                    //: } else if (status == DownloadTaskStatus.error.rawValue) {
                } else if status == ControlFreeWidthNumber.error.rawValue {
                    //: self.showToast(status: .TaskError)
                    self.cellStatus(status: .TaskError)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.expired.rawValue) {
                } else if status == ControlFreeWidthNumber.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.cellStatus(status: .FileExpired)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.cancel.rawValue) {
                } else if status == ControlFreeWidthNumber.cancel.rawValue {
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                }

                //: } else {
            } else {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: stopAudioPlayer()
                viewPlayer()
            }
        }
    }

    //: func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
    func audioPlayerDecodeErrorDidOccur(_: AVAudioPlayer, error: Error?) {
        //: printLog(message: error)
        printLog(message: error)
    }
}

// MARK: - CellManagerDelegate

//: extension TalkingVoiceMsgPlayManager: VoiceDownloadTaskManagerDelegate {
extension ControlRawManagerDelegate: CellManagerDelegate {
    //: func voiceDownloadFinish(model: VoiceDownloadTaskModel) {
    func isTab(model: RawTaskModel) {
        //: printLog(message: "voice dataTaskDownloadFinish")
        printLog(message: (String(str_availableTitle) + String(str_viewTitle.suffix(4)) + "Down" + str_addValue.lowercased() + String(str_sizeData)))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        wellhead(taskModel: model)
    }

    //: func voiceDownloadCancel(model: VoiceDownloadTaskModel) {
    func voiceShow(model: RawTaskModel) {
        //: printLog(message: "voice dataTaskDownloadCancel")
        printLog(message: (String(str_blockLayerValue.prefix(8)) + String(str_emptyContent) + String(str_wrapData.prefix(5)) + "nloadC" + str_videoCenterValue.replacingOccurrences(of: "section", with: "l")))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        wellhead(taskModel: model)
    }

    //: func voiceDownloadExpired(model: VoiceDownloadTaskModel) {
    func blockBy(model: RawTaskModel) {
        //: printLog(message: "voice dataTaskDownloadExpired")
        printLog(message: (String(str_addGreetValue.suffix(7)) + String(str_tableData) + String(str_toTitle)))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        wellhead(taskModel: model)
    }

    //: func voiceDownloading(model: VoiceDownloadTaskModel) {
    func phonation(model _: RawTaskModel) {}

    //: func voiceDownloadError(model: VoiceDownloadTaskModel) {
    func voiceInsideComputerSimulation(model: RawTaskModel) {
        //: printLog(message: "voice dataTaskDownloadErro")
        printLog(message: (String(str_colorName) + String(str_imageTitle)))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        wellhead(taskModel: model)
    }

    //: func handleDataTaskDownloadDelegate(taskModel: VoiceDownloadTaskModel) {
    func wellhead(taskModel: RawTaskModel) {
        //: if voiceDataList.count  == 0 {
        if voiceDataList.count == 0 {
            //: return
            return
        }

        //: if self.waitPlayID == taskModel.taskId {
        if self.waitPlayID == taskModel.taskId {
            //: let model = self.voiceDataList[playIndex]
            let model = self.voiceDataList[playIndex]
            //: let warp = VoxReactiveCompatible.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let warp = VoxReactiveCompatible.destroy(with: model.db_voiceCacheWrap.msgId)
            //: if warp != nil {
            if warp != nil {
                //: model.db_voiceCacheWrap = warp!
                model.db_voiceCacheWrap = warp!
            }
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if status == DownloadTaskStatus.finish.rawValue {
            if status == ControlFreeWidthNumber.finish.rawValue {
                //: model.isPlayingStatus = 1
                model.isPlayingStatus = 1
                //: starPlayVoiceMsg(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)
                enablee(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)

                //: } else if status == DownloadTaskStatus.error.rawValue ||
            } else if status == ControlFreeWidthNumber.error.rawValue ||
                //: status == DownloadTaskStatus.expired.rawValue ||
                status == ControlFreeWidthNumber.expired.rawValue ||
                //: status == DownloadTaskStatus.cancel.rawValue {
                status == ControlFreeWidthNumber.cancel.rawValue
            {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
                //: if status == DownloadTaskStatus.expired.rawValue {
                if status == ControlFreeWidthNumber.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.cellStatus(status: .FileExpired)
                    //: } else {
                } else {
                    //: self.showToast(status: .TaskError)
                    self.cellStatus(status: .TaskError)
                }
            }
            //: } else {
        } else {
            //: let warp = VoxReactiveCompatible.db_getVoiceMsg(with: taskModel.taskId)
            let warp = VoxReactiveCompatible.destroy(with: taskModel.taskId)
            //: let model = self.playItemDic[taskModel.taskId]
            let model = self.playItemDic[taskModel.taskId]
            //: if warp != nil {
            if warp != nil {
                //: model?.db_voiceCacheWrap = warp!
                model?.db_voiceCacheWrap = warp!
            }
        }
    }

    //: func showToast(status: AudioPlayingErrorStatus) {
    func cellStatus(status: MakeConstantTarget) {
        //: var toastStr = ""
        var toastStr = ""
        //: switch status {
        switch status {
        //: case .NotFileAtPath, .AudioPlayerNil:
        case .NotFileAtPath, .AudioPlayerNil:
            //: toastStr = "Play Error,File does not exist".localized
            toastStr = (String(str_sizeValue.suffix(6)) + "rror" + String(str_labValue.suffix(6)) + "does" + String(str_momentName.prefix(5)) + String(str_userFollowValue)).localized
        //: break
        //: case .FileExpired:
        case .FileExpired:
            //: toastStr = "Play Error,File expired".localized
            toastStr = (String(str_imageCellValue) + String(str_viewData)).localized
        //: break
        //: case .TaskError:
        case .TaskError:
            //: toastStr = "Play Error，Net error".localized
            toastStr = (String(str_oldText.suffix(4)) + " Erro" + str_withName + " error").localized
        //: break
        //: case .FirstMuteTip:
        case .FirstMuteTip:
            //: toastStr = "Currently in mute mode".localized
            toastStr = (String(str_messageText.suffix(4)) + "ently i" + String(str_versionValue.suffix(4)) + String(str_frameData)).localized
            //: break
        }

        //: if toastStr.isEmptyString == false {
        if toastStr.isEmptyString == false {
            //: self.func__showStatusBarErrorMsg(showMsg: toastStr)
            self.oversight(showMsg: toastStr)
        }
        //: if status.rawValue < 100 {
        if status.rawValue < 100 {
            //: stopAudioPlayer()
            viewPlayer()
        }
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension ControlRawManagerDelegate {
    //: func setMutedDetection() {
    func seedFace() {
        //: RBDMuteSwitch.shared.detectMuteSwitch()
        PopThen.shared.supercedeMake()
        //: RBDMuteSwitch.shared.isMutedBlock = { [weak self] mute in
        PopThen.shared.isMutedBlock = { [weak self] mute in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isMute = mute
            self.isMute = mute
            //: if self.isMute {
            if self.isMute {
                //: self.showToast(status: .FirstMuteTip)
                self.cellStatus(status: .FirstMuteTip)
            }
        }
    }
}
