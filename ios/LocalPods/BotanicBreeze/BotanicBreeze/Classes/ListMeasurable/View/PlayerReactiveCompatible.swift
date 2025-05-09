
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_selectedData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_dynamic_stop_nor" :*/
fileprivate let str_partyValue:String = "btn_dyclass view"
fileprivate let str_sexTitle:String = "_sdata color height request green"
fileprivate let str_atTitle:[Character] = ["t","o","p","_","n","o","r"]

/*: "icon_Topping_bg" :*/
fileprivate let str_publishIndexValue:String = "recording title image coloricon_"
fileprivate let str_makeValue:[Character] = ["T","o","p","p","i","n","g","_","b","g"]

/*: "#F5F5F5" :*/
fileprivate let str_iconValue:[Character] = ["#","F","5","F","5","F","5"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PlayerReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/4.
//

//: import UIKit
import UIKit

//: import SwiftUI
import SwiftUI

//: class TalkingMomentVideoCell: UIView {
class PlayerReactiveCompatible: UIView {
    //: var isPlaying = false
    var isPlaying = false
    //: var videoUrl = ""
    var videoUrl = ""
    //: var isListTableCell = true
    var isListTableCell = true
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.circle()
        //: self.setupSubViewsConstraint()
        self.modelMagnitude()
        //: self.bindInteraction()
        self.borderData()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_selectedData.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: lazy var player: TalkingVideoPlayerManager = {
    lazy var player: SendPlayListener = {
        //: var  player: TalkingVideoPlayerManager
        var player: SendPlayListener
        //: if isListTableCell {
        if isListTableCell {
            //: player = TalkingVideoPlayerManager.shared
            player = SendPlayListener.shared
            //: }else {
        } else {
            //: player = TalkingVideoPlayerManager.init()
            player = SendPlayListener()
        }
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: true)
        player.wreak(bEnable: true)
        //: return player
        return player
        //: }()
    }()

    //: lazy var coverView: UIImageView = {
    lazy var coverView: UIImageView = {
        //: let  imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.backgroundColor = .black
        imag.backgroundColor = .black
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: self.addSubview(imag)
        self.addSubview(imag)
        //: imag.snp.remakeConstraints { make in
        imag.snp.remakeConstraints { make in
            //: make.edges.equalTo(0)
            make.edges.equalTo(0)
        }
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var playimageView: UIImageView = {
    lazy var playimageView: UIImageView = {
        //: let  imag = UIImageView.init(image: UIImage.eponymUp(name: "btn_dynamic_stop_nor"))
        let imag = UIImageView(image: UIImage.eponymUp(name: (String(str_partyValue.prefix(6)) + "namic" + String(str_sexTitle.prefix(2)) + String(str_atTitle))))
        //: coverView.addSubview(imag)
        coverView.addSubview(imag)
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var topImage: UIImageView = {
    lazy var topImage: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.eponymUp(name: "icon_Topping_bg")
        img.image = UIImage.eponymUp(name: (String(str_publishIndexValue.suffix(5)) + String(str_makeValue)))
        //: coverView.addSubview(img)
        coverView.addSubview(img)
        //: return img
        return img
        //: }()
    }()
}

//: extension TalkingMomentVideoCell {
extension PlayerReactiveCompatible {
    //: @objc func enterBackgroundNotification() {
    @objc func finishNotification() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.showLock()
        }
    }

    //: @objc func enterForegroundNotification() {
    @objc func first() {
        //: if self.currentViewController()!.isKind(of: TalkingMomentViewController.self) {
        if self.infoController()!.isKind(of: BottomViewController.self) {
            //: self.player.resume()
            self.player.backAddStarResume()
        }
    }

    //: func configModel(model: TalkingMomentVideoModel, isTop: Bool = false) {
    func electronicNetwork(model: GestureHandyJSON, isTop: Bool = false) {
        //: videoUrl = model.videoUrl
        videoUrl = model.videoUrl
        //: self.coverView.backgroundColor = .white
        self.coverView.backgroundColor = .white
        //: self.coverView.setUrlImage(urlStr: model.imgUrl, placeImg: nil)
        self.coverView.direct(urlStr: model.imgUrl, placeImg: nil)
        //: topImage.isHidden = !isTop
        topImage.isHidden = !isTop
    }

    //: func setupPlayer() {
    func icon() {
        //: self.coverView.isHidden = true
        self.coverView.isHidden = true
        //: self.player.playerWithUrlAndVideoView(url: videoUrl, view: self)
        self.player.requestView(url: videoUrl, view: self)
        //: self.player.setMute(bEnable: true)
        self.player.wreak(bEnable: true)
        //: self.isPlaying = true
        self.isPlaying = true
        //: self.player.delegate = self
        self.player.delegate = self
        //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
        self.player.giftMode(renderMode: .FILL_SCREEN)
    }

    //: func stopPlay() {
    func emptyUp() {
        //: self.coverView.isHidden = false
        self.coverView.isHidden = false
        //: self.player.stopPlay()
        self.player.viewMake()
        //: self.isPlaying = false
        self.isPlaying = false
        //: self.playimageView.isHidden = false
        self.playimageView.isHidden = false
        //: self.player.setMute(bEnable: true)
        self.player.wreak(bEnable: true)
    }

    //: func pausePlay() {
    func pastAce() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.showLock()
        }
    }

    //: func resume() {
    func dataAcross() {
        //: self.coverView.isHidden = true
        self.coverView.isHidden = true
        // 进入详情会改变播放模式会有声音
        //: self.player.setMute(bEnable: true)
        self.player.wreak(bEnable: true)
        //: self.player.resume()
        self.player.backAddStarResume()
    }
}

//: extension TalkingMomentVideoCell: TalkingVideoPlayerDelegate {
extension PlayerReactiveCompatible: CameraReactiveCompatible {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func titleCell(player _: SendPlayListener, status: TitleerPlayerStatus) {
        //: if (status == .Playing) {
        if status == .Playing {
            //: if self.player.isMute == false {
            if self.player.isMute == false {
                //: self.player.setMute(bEnable: true)
                self.player.wreak(bEnable: true)
            }
            //: self.playimageView.isHidden = true
            self.playimageView.isHidden = true
            //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
            self.player.giftMode(renderMode: .FILL_SCREEN)
            //: }else if (status == .Pausing) {
        } else if status == .Pausing {
            //: self.playimageView.isHidden = false
            self.playimageView.isHidden = false
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func playTable(player _: SendPlayListener, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func dataScript(player _: SendPlayListener, progress _: CGFloat) {}
}

//: extension TalkingMomentVideoCell {
extension PlayerReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func circle() {
        //: self.backgroundColor = UIColor.init(hex: "#F5F5F5" )
        self.backgroundColor = UIColor(hex: (String(str_iconValue)))
        //: self.layer.cornerRadius = 4
        self.layer.cornerRadius = 4
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func modelMagnitude() {
        //: playimageView.snp.remakeConstraints { make in
        playimageView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: topImage.snp.remakeConstraints { make in
        topImage.snp.remakeConstraints { make in
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.size.equalTo(CGSize.init(width: 50, height: 20))
            make.size.equalTo(CGSize(width: 50, height: 20))
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func borderData() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(enterBackgroundNotification), name: UIApplication.willResignActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(finishNotification), name: UIApplication.willResignActiveNotification, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(enterForegroundNotification), name: UIApplication.didBecomeActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(first), name: UIApplication.didBecomeActiveNotification, object: nil)
    }
}
