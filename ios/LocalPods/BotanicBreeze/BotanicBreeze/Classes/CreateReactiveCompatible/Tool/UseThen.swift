
//: Declare String Begin

/*: "Status changed, please exit and retry" :*/
fileprivate let str_fromTitle:[UInt8] = [0x4d,0x6a,0x7f,0x6a,0x6b,0x6d,0x3e,0x7d,0x76,0x7f,0x70,0x79,0x7b,0x7a,0x32,0x3e,0x6e,0x72,0x7b,0x7f,0x6d,0x7b,0x3e,0x7b,0x66,0x77,0x6a,0x3e,0x7f,0x70,0x7a,0x3e,0x6c,0x7b,0x6a,0x6c,0x67]

private func centerModel(orientation num: UInt8) -> UInt8 {
    return num ^ 30
}

/*: "GET" :*/
fileprivate let str_statusMakeText:String = "viewT"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UseThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/17.
//

//: import UIKit
import UIKit

//: typealias AudioCompletionblock = (_ urldata: NSData) -> Void
typealias AudioCompletionblock = (_ urldata: NSData) -> Void

//: protocol TalkingAudioPlayToolDelegate: NSObject {
protocol PlayerToolDelegate: NSObject {
    /// 播放完毕的回调
    //: func playerStatusChange(status: AudioPlayerStatus)
    func messageMakeStatus(status: PlayerPropertyProtocol)
}

//: class TalkingAudioPlayTool: NSObject {
class UseThen: NSObject {
    //: var player: AVAudioPlayer?
    var player: AVAudioPlayer?
    //: open weak var delegate: TalkingAudioPlayToolDelegate?
    open weak var delegate: PlayerToolDelegate?

    // singleton
    //: static let shared = TalkingAudioPlayTool()
    static let shared = UseThen()
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: NotificationCenter.default.addObserver(self, selector: #selector(interruptionChange(notification:)), name: AVAudioSession.interruptionNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(destroyStatus(notification:)), name: AVAudioSession.interruptionNotification, object: nil)
    }

    //: func play(urlStr: String) {
    func backTitle(urlStr: String) {
        //: if AVAudioSession.sharedInstance().category != .ambient {
        if AVAudioSession.sharedInstance().category != .ambient {
            //: let audioSession = AVAudioSession.sharedInstance()
            let audioSession = AVAudioSession.sharedInstance()
            //: do {
            do {
                //: try audioSession.setCategory(.ambient)
                try audioSession.setCategory(.ambient)
                //: } catch {
            } catch {}
        }

        //: downloadAudioWith(audioUrl: urlStr) { data in
        downloadOrName(audioUrl: urlStr) { data in
            //: do {
            do {
                //: try self.player = AVAudioPlayer.init(data: data as Data)
                try self.player = AVAudioPlayer(data: data as Data)
                //: self.player?.delegate = self
                self.player?.delegate = self
                //: NSLog("开始播放")
                // 开始播放
                //: if self.player?.prepareToPlay() == true {
                if self.player?.prepareToPlay() == true {
                    //: self.player?.play()
                    self.player?.play()
                }

                //: } catch let error {
            } catch {
                //: self.func__showStatusBarErrorMsg(showMsg: "Status changed, please exit and retry".localized)
                self.oversight(showMsg: String(bytes: str_fromTitle.map{centerModel(orientation: $0)}, encoding: .utf8)!.localized)
                //: self.delegate?.playerStatusChange(status: .PlayerFinish)
                self.delegate?.messageMakeStatus(status: .PlayerFinish)
                //: NSLog("Error crenting player: %@", error.localizedDescription)
            }
        }
    }

    //: func stopPlay() {
    func textPlay() {
        //: self.player?.pause()
        self.player?.pause()
    }

    //: func finishPlay() {
    func mentalRepresentation() {}

    //: func destroy() {
    func onUp() {
        //: if self.player != nil {
        if self.player != nil {
            //: self.player?.delegate = nil
            self.player?.delegate = nil
            //: self.player = nil
            self.player = nil
        }
    }
}

//: extension TalkingAudioPlayTool {
extension UseThen {
    //: func downloadAudioWith(audioUrl: String, completion: @escaping AudioCompletionblock) {
    func downloadOrName(audioUrl: String, completion: @escaping AudioCompletionblock) {
        //: var urlOk = true
        var urlOk = true
        //: var url = NSURL.init(string: "")
        var url = NSURL(string: "")

        //: if audioUrl.count == 0 {
        if audioUrl.count == 0 {
            //: urlOk = false
            urlOk = false

            //: } else {
        } else {
            //: url = NSURL.init(string: audioUrl as String)
            url = NSURL(string: audioUrl as String)
            //: if url == nil {
            if url == nil {
                //: urlOk = false
                urlOk = false
            }
        }

        //: if urlOk == false {
        if urlOk == false {
            //: return
            return
        }
        //: let request = NSMutableURLRequest.init(url: NSURL.init(string: audioUrl as String)! as URL)
        let request = NSMutableURLRequest(url: NSURL(string: audioUrl as String)! as URL)
        //: request.httpMethod      = "GET"
        request.httpMethod = (str_statusMakeText.replacingOccurrences(of: "view", with: "GE"))
        //: request.timeoutInterval = 15.0
        request.timeoutInterval = 15.0

        //: URLSession.shared.dataTask(with: request as URLRequest) { data, response, error in
        URLSession.shared.dataTask(with: request as URLRequest) { data, _, _ in
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: if data != nil {
                if data != nil {
                    //: completion(data! as NSData)
                    completion(data! as NSData)
                    //: }else {
                } else {
                    //: self.func__showStatusBarErrorMsg(showMsg: "Status changed, please exit and retry".localized)
                    self.oversight(showMsg: String(bytes: str_fromTitle.map{centerModel(orientation: $0)}, encoding: .utf8)!.localized)
                    //: self.delegate?.playerStatusChange(status: .PlayerFinish)
                    self.delegate?.messageMakeStatus(status: .PlayerFinish)
                }
            }
            //: }.resume()
        }.resume()
    }
}

//: extension TalkingAudioPlayTool: AVAudioPlayerDelegate {
extension UseThen: AVAudioPlayerDelegate {
    /// 播放过程中中断
    //: @objc func interruptionChange(notification: NSNotification) -> Void {
    @objc func destroyStatus(notification: NSNotification) {
        //: let dic = notification.userInfo as![String: AnyObject]
        let dic = notification.userInfo as! [String: AnyObject]

        //: let changeReason = dic[AVAudioSessionInterruptionTypeKey]
        let changeReason = dic[AVAudioSessionInterruptionTypeKey]
        //: if changeReason?.intValue ?? 0 == AVAudioSession.InterruptionType.began.rawValue {
        if changeReason?.intValue ?? 0 == AVAudioSession.InterruptionType.began.rawValue {
            //: self.delegate?.playerStatusChange(status: .PlayerInterruption)
            self.delegate?.messageMakeStatus(status: .PlayerInterruption)
        }
    }

    /// 播放完成
    //: func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
    func audioPlayerDidFinishPlaying(_: AVAudioPlayer, successfully flag: Bool) {
        //: if flag {
        if flag {
            //: self.delegate?.playerStatusChange(status: .PlayerFinish)
            self.delegate?.messageMakeStatus(status: .PlayerFinish)
        }
    }
}
