
//: Declare String Begin

/*: "cmd" :*/
fileprivate let str_subName:[UInt8] = [0xb2,0xbc,0xb3]

fileprivate func withChange(dimension num: UInt8) -> UInt8 {
    let value = Int(num) - 79
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "cancelCall" :*/
fileprivate let str_bottomTitle:String = "clab"
fileprivate let str_modelName:String = "ncelCallbackground hide"

/*: "data" :*/
fileprivate let str_captureTitle:[UInt8] = [0x61,0x74,0x61,0x64]

/*: "logId" :*/
fileprivate let str_addData:String = "video user managerlogId"

/*: "#322870" :*/
fileprivate let str_tempData:String = "#322870"

/*: "Tap to start video chatting" :*/
fileprivate let str_managerValue:String = "Tap status index"
fileprivate let str_viewValue:String = "tart vdata manager"
fileprivate let str_acceptData:[Character] = [" ","c","h","a","t","t","i","n","g"]

/*: "icon_close_nor" :*/
fileprivate let str_blockTitle:[Character] = ["i","c","o","n","_","c","l","o","s","e","_"]
fileprivate let str_searchData:[Character] = ["n","o","r"]

/*: "icon_views_number" :*/
fileprivate let str_headContentSourceText:String = "input text for container picicon_"
fileprivate let str_ofTitle:String = "to pull manager select makes_number"

/*: "%@ chatting" :*/
fileprivate let str_succeedAppValue:[Character] = ["%","@"," ","c","h","a","t","t","i"]
fileprivate let str_videoData:String = "NG"

/*: "icon_lounge" :*/
fileprivate let str_styleGiftContent:[Character] = ["i","c","o","n","_","l","o","u"]
fileprivate let str_userValue:[Character] = ["n","g","e"]

/*: "icon_rank_coin" :*/
fileprivate let str_cardValue:String = "icon_video label title let equal"
fileprivate let str_makeFemaleValue:String = "coimenu"

/*: "vip_btn_top" :*/
fileprivate let str_sharedData:String = "color comment bottom equal bottomvip_bt"

/*: "btn_nearby_settings_nor" :*/
fileprivate let str_atGiftWithValue:String = "at at resultbtn_n"
fileprivate let str_toolName:String = "ttinhidden"

/*: "%@ Coins/min" :*/
fileprivate let str_gestureName:[Character] = ["%","@"," ","C","o","i","n","s","/","m","i","n"]

/*: "get json error" :*/
fileprivate let str_equalText:String = "down let below toget "
fileprivate let str_collectionText:String = "rrtopr"

/*: "matchId" :*/
fileprivate let str_putText:String = "matchIdload to for"

/*: "errno" :*/
fileprivate let str_pastValue:[UInt8] = [0xc6,0xd3,0xd3,0xcf,0xd0]

fileprivate func attributeSelf(background num: UInt8) -> UInt8 {
    let value = Int(num) + 159
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "VIPFee" :*/
fileprivate let str_quoteValue:String = "VIPFeeview data map cancel"

/*: "Matching now" :*/
fileprivate let str_deviceToManagerData:String = "false viewMatchi"

/*: "userTouch" :*/
fileprivate let str_cellContent:String = "userTomake image"
fileprivate let str_actionValue:String = "UCH"

/*: "mf/freeCall/getVideoInfo" :*/
fileprivate let str_firstValue:[Character] = ["m","f","/","f","r","e","e","C","a","l","l","/","g","e","t","V","i","d","e","o","I","n","f"]
fileprivate let str_tipContent:String = "head"

/*: "fromType" :*/
fileprivate let str_listWhiteData:[UInt8] = [0x7e,0x6a,0x77,0x75,0x4c,0x61,0x68,0x7d]

private func cornerVoice(model num: UInt8) -> UInt8 {
    return num ^ 24
}

/*: "You've been barred from receiving calls" :*/
fileprivate let str_colorData:[UInt8] = [0xa3,0x95,0x8f,0xdd,0x8c,0x9f,0xda,0x98,0x9f,0x9f,0x94,0xda,0x98,0x9b,0x88,0x88,0x9f,0x9e,0xda,0x9c,0x88,0x95,0x97,0xda,0x88,0x9f,0x99,0x9f,0x93,0x8c,0x93,0x94,0x9d,0xda,0x99,0x9b,0x96,0x96,0x89]

/*: "source" :*/
fileprivate let str_viewName:[UInt8] = [0x9c,0x80,0x9a,0x9d,0x8c,0x8a]

private func signImage(m num: UInt8) -> UInt8 {
    return num ^ 239
}

/*: "type" :*/
fileprivate let str_indexName:[UInt8] = [0x65,0x70,0x79,0x74]

/*: "uid" :*/
fileprivate let str_errorValue:[UInt8] = [0x6b,0x5f,0x5a]

fileprivate func voiceStyle(data num: UInt8) -> UInt8 {
    let value = Int(num) - 246
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "fromFreeCall" :*/
fileprivate let str_indexPopContent:[Character] = ["f","r","o","m","F","r","e","e","C","a","l","l"]

/*: "requestCall" :*/
fileprivate let str_ageData:[Character] = ["r","e","q","u","e","s","t","C"]
fileprivate let str_atStackAttributeName:String = "ainfo"

/*: "onVideoMatch" :*/
fileprivate let str_makeHiddenTopName:String = "onVideoMinput task model let"
fileprivate let str_giftTitle:[Character] = ["a","t","c","h"]

/*: "[Automatic video] Receive video call incoming" :*/
fileprivate let str_keyValue:[UInt8] = [0xec,0xf6,0xc2,0xc3,0xd8,0xda,0xd6,0xc3,0xde,0xd4,0x97,0xc1,0xde,0xd3,0xd2,0xd8,0xea,0x97,0xe5,0xd2,0xd4,0xd2,0xde,0xc1,0xd2,0x97,0xc1,0xde,0xd3,0xd2,0xd8,0x97,0xd4,0xd6,0xdb,0xdb,0x97,0xde,0xd9,0xd4,0xd8,0xda,0xde,0xd9,0xd0]

private func buttonSex(along num: UInt8) -> UInt8 {
    return num ^ 183
}

/*: "refuseCall" :*/
fileprivate let str_textValue:[Character] = ["r","e","f","u","s","e","C","a","l","l"]

/*: "onCancelCall" :*/
fileprivate let str_toText:String = "onCanif data self content route"
fileprivate let str_reinValue:String = "cancel gift addresscelCall"

/*: "retryAfter" :*/
fileprivate let str_nameValue:String = "if lineretryAf"
fileprivate let str_viewIndexName:[Character] = ["t","e","r"]

/*: "onRequestCall" :*/
fileprivate let str_backBottomElseContent:String = "screenn"
fileprivate let str_normalLabName:String = "Requereturn return index"

/*: "failType" :*/
fileprivate let str_modelValue:String = "direction any called resultfailType"

/*: "callWaitingTime" :*/
fileprivate let str_tableData:String = "open bringcallWait"
fileprivate let str_greetObjectTitle:String = "ingTimegreet if"

/*: "toUid" :*/
fileprivate let str_replyValue:[Character] = ["t","o","U","i","d"]

/*: "Free 1 min" :*/
fileprivate let str_currentValue:[Character] = ["F","r","e","e"," ","1"," ","m","i","n"]

/*: "%@/min" :*/
fileprivate let str_viewValueName:String = "%@/mito user"
fileprivate let str_messageToViewData:String = "menu"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualCaptureReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/8/22.
//

//: import UIKit
import UIKit

//: class TalkingRandomVideoViewController: TalkingBaseViewController {
class EqualCaptureReactiveCompatible: SeamViewController {
    //: var fee = 0
    var fee = 0 // 原价
    //: var vipFee = 0
    var vipFee = 0 // VIP价格
    //: var chattingNum = 0
    var chattingNum = 0 // 当前匹配人数
    //: private var matchId: Int = 0
    private var matchId: Int = 0 // 速配批次Id
    //: private var waitingTimer: Timer?
    private var waitingTimer: Timer? // 呼叫等待定时（等待15s）
    //: private var retryAfterTimer: Timer?
    private var retryAfterTimer: Timer? // 匹配失败重试定时器
    //: private var logId = 0
    private var logId = 0 // 通话id
    //: private var isShowFreeVideo = false
    private var isShowFreeVideo = false // 是否已展示免费视频挽留弹窗
    //: var beginTime: TimeInterval?
    var beginTime: TimeInterval?
    //: private var dispatchWorkItem: DispatchWorkItem?
    private var dispatchWorkItem: DispatchWorkItem?
    //: private var closeBtnWorkItem: DispatchWorkItem?
    private var closeBtnWorkItem: DispatchWorkItem?
    //: var isFirstRandow = true
    var isFirstRandow = true
    //: var isBeginRand = false
    var isBeginRand = false

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
            //: if !self.isFirstRandow {
            if !self.isFirstRandow {
                //: self.refreshVideoCallPrice()
                self.sinceName()
            }
        }
        //: self.resetCamera()
        self.afterTo()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        addStatus()
        //: setupSubViewsConstraint()
        backgroundEffect()
        //: bindInteraction()
        viewCellWith()
        //: videoManager.startPreview(isMatch: true)
        videoManager.stochasticProcessMatch(isMatch: true)
        //: setPlayer(isRandon: false)
        dwarfish(isRandon: false)
        //: if isBeginRand {
        if isBeginRand {
            //: start_randomVideo()
            goShow()
        }
    }

    //: deinit {
    deinit {
        //: if waitingTimer != nil {
        if waitingTimer != nil {
            //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "cancelCall", "data": ["logId": logId]])
            DeviceSocketDelegate.shared.noCurrent(info: [String(bytes: str_subName.map{withChange(dimension: $0)}, encoding: .utf8)!: (str_bottomTitle.replacingOccurrences(of: "lab", with: "a") + String(str_modelName.prefix(8))), String(bytes: str_captureTitle.reversed(), encoding: .utf8)!: [(String(str_addData.suffix(5))): logId]])
        }
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: destroyWaitingTimer()
        mic()
        //: if TalkingSocketManager.shared.isTalking == false {
        if DeviceSocketDelegate.shared.isTalking == false {
            //: TalkingSocketManager.shared.videoMatchDelegate = nil
            DeviceSocketDelegate.shared.videoMatchDelegate = nil
            //: TalkingSocketManager.shared.callerDelegate = nil
            DeviceSocketDelegate.shared.callerDelegate = nil
            //: TalkingSocketManager.shared.calledPartyDelegate = nil
            DeviceSocketDelegate.shared.calledPartyDelegate = nil
            //: TalkingSocketManager.shared.errorDelegate = nil
            DeviceSocketDelegate.shared.errorDelegate = nil
        }
    }

    // MARK: - Lazy Load

    //: private lazy var videoManager: TalkingVideoChatManager = {
    private lazy var videoManager: ShowCloudDelegate = {
        //: let m = TalkingVideoChatManager()
        let m = ShowCloudDelegate()
        //: let info = TalkingVideoChatModel()
        let info = ViewChatModel()
        //: info.videoStage = .Calling
        info.videoStage = .Calling
        //: info.renderPostion = .selfOnBg
        info.renderPostion = .selfOnBg
        //: m.infoModel = info
        m.infoModel = info
        // 视图传递给manager
        //: m.bgVideoView = self.renderView
        m.bgVideoView = self.renderView
        //: return m
        return m
        //: }()
    }()

    // 视频画面渲染视图
    //: private lazy var renderView: UIView = {
    private lazy var renderView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .appTitleColor()
        v.backgroundColor = .executeTo()
        //: return v
        return v
        //: }()
    }()

    //: private lazy var gradientBtn: UIButton = {
    private lazy var gradientBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(start_randomVideo), for: .touchUpInside)
        btn.addTarget(self, action: #selector(goShow), for: .touchUpInside)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        // 渐变
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth+1, height: ScreenHeight+1)
        layer.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue + 1, height: kLet_clickData + 1)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [UIColor(white: 0, alpha: 0.15).cgColor, UIColor(hex: "#322870")!.cgColor]
        layer.colors = [UIColor(white: 0, alpha: 0.15).cgColor, UIColor(hex: (str_tempData.capitalized))!.cgColor]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: btn.layer.addSublayer(layer)
        btn.layer.addSublayer(layer)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill

        //: return player
        return player
        //: }()
    }()

    //: private lazy var tipsLab: UILabel = {
    private lazy var tipsLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.boldSystemFont(ofSize: 20)
        lab.font = UIFont.boldSystemFont(ofSize: 20)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Tap to start video chatting".localized
        lab.text = (String(str_managerValue.prefix(4)) + "to s" + String(str_viewValue.prefix(6)) + "ideo" + String(str_acceptData)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "icon_close_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_blockTitle) + String(str_searchData))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(verbalizeQuantity), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chattingNumBtn: TalkingButton = {
    private lazy var chattingNumBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton()
        let btn = ProgressTalkingButton()
        //: btn.setImage(UIImage.eponymUp(name: "icon_views_number"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_headContentSourceText.suffix(5)) + "view" + String(str_ofTitle.suffix(8)))), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "icon_views_number"), for: .disabled)
        btn.setImage(UIImage.eponymUp(name: (String(str_headContentSourceText.suffix(5)) + "view" + String(str_ofTitle.suffix(8)))), for: .disabled)
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        btn.titleLabel?.font = UIFont.pingfang(type: .Regular, fontSize: 15)
        //: btn.setTitle("%@ chatting".localizedArguments(chattingNum), for: .normal)
        btn.setTitle((String(str_succeedAppValue) + str_videoData.lowercased()).localizedArguments(chattingNum), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var priceStackView: UIStackView = {
    private lazy var priceStackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.spacing = 4
        v.spacing = 4
        //: v.isUserInteractionEnabled = false
        v.isUserInteractionEnabled = false
        //: return v
        return v
        //: }()
    }()

    //: private lazy var vipIcon: UIImageView = {
    private lazy var vipIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.eponymUp(name: "icon_lounge")
        img.image = UIImage.eponymUp(name: (String(str_styleGiftContent) + String(str_userValue)))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var goldCoinIcon: UIImageView = {
    private lazy var goldCoinIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.eponymUp(name: "icon_rank_coin")
        img.image = UIImage.eponymUp(name: (String(str_cardValue.prefix(5)) + "rank_" + str_makeFemaleValue.replacingOccurrences(of: "menu", with: "n")))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var priceLab: UILabel = {
    private lazy var priceLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lab.font = UIFont.pingfang(type: .Regular, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var vipTopImgView: UIImageView = {
    private lazy var vipTopImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.isHidden = true
        imgV.isHidden = true
        //: imgV.image  = UIImage.eponymUp(name: "vip_btn_top")
        imgV.image = UIImage.eponymUp(name: (String(str_sharedData.suffix(6)) + "n_top"))
        //: return imgV
        return imgV
        //: }()
    }()

    // 会员折扣价
    //: private lazy var vipPriceBtn: TalkingButton = {
    private lazy var vipPriceBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton()
        let btn = ProgressTalkingButton()
        //: btn.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        btn.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        //: btn.layer.cornerRadius = actualWidth(w: 27)
        btn.layer.cornerRadius = actualWidth(w: 27)
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(maleVipPriceButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(stateEqual), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "btn_nearby_settings_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_atGiftWithValue.suffix(5)) + "earby_se" + str_toolName.replacingOccurrences(of: "hidden", with: "g") + "s_nor")), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var vipPriceImg: UIImageView = {
    private lazy var vipPriceImg: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image  = UIImage.eponymUp(name: "icon_rank_coin")
        imgV.image = UIImage.eponymUp(name: (String(str_cardValue.prefix(5)) + "rank_" + str_makeFemaleValue.replacingOccurrences(of: "menu", with: "n")))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var vipPriceLab: UILabel = {
    private lazy var vipPriceLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .userVipColor()
        lab.textColor = .active()
        //: lab.text = "%@ Coins/min".localizedArguments(vipFee)
        lab.text = (String(str_gestureName)).localizedArguments(vipFee)
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        lab.font = UIFont.pingfang(type: .Medium, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var norPriceLab: UILabel = {
    private lazy var norPriceLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: return lab
        return lab
        //: }()
    }()

    // 免费视频挽留弹窗
    //: private lazy var freeVideoAlert: TalkingLiveAlertView = {
    private lazy var freeVideoAlert: RudeView = //: return RudeView(frame: .zero, type: .freeVideo)
        .init(frame: .zero, type: .freeVideo)
    //: }()
}

// MARK: - Request & 数据处理

//: extension TalkingRandomVideoViewController {
extension EqualCaptureReactiveCompatible {
    //: private func setPlayer(isRandon: Bool) {
    private func dwarfish(isRandon: Bool) {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: isRandon ? .Random_video_bg : .Random_video_bg_nor )
        let url = ToEffectTool.default.alongError(type: isRandon ? .Random_video_bg : .Random_video_bg_nor)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: svgaPlayer.videoItem = videoItem
                svgaPlayer.videoItem = videoItem
                //: svgaPlayer.startAnimation()
                svgaPlayer.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_equalText.suffix(4)) + "json e" + str_collectionText.replacingOccurrences(of: "top", with: "o")))
        }
    }

    /// 开始随机视频（男）
    /// - Parameters:
    ///   - cmd: 事件名
    ///   - errno: cmd的错误码
    //: private func req_randomVideoToMatch(cmd: String, errno: String) {
    private func upLive(cmd: String, errno: String) {
        //: beginTime = Date().timeIntervalSince1970
        beginTime = Date().timeIntervalSince1970
        //: let params = ["matchId": self.matchId,
        let params = [(String(str_putText.prefix(7))): self.matchId,
                      //: "cmd": cmd,
                      String(bytes: str_subName.map{withChange(dimension: $0)}, encoding: .utf8)!: cmd,
                      //: "errno": errno] as [String: Any]
                      String(bytes: str_pastValue.map{attributeSelf(background: $0)}, encoding: .utf8)!: errno] as [String: Any]
        //: TalkingQuickVideoManager.req_randomVideoToMatch(params: params) { succeed, result, errorModel in
        TitleReactiveCompatible.localIndex(params: params) { succeed, result, _ in
            //: guard succeed == true else {
            guard succeed == true else {
                //: self.stop_randomVideo()
                self.arrayTheme()
                //: return
                return
            }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.matchId = json["matchId"].intValue
            self.matchId = json[(String(str_putText.prefix(7)))].intValue
        }
    }

    /// 更新VIP价格
    //: @objc private func req_updateVIPFee() {
    @objc private func engagementFee() {
        //: TalkingQuickVideoManager.req_videoMatchCheck() { succeed, result, errorModel in
        TitleReactiveCompatible.resumeCompletion { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.vipFee = json["VIPFee"].intValue
            self.vipFee = json[(String(str_quoteValue.prefix(6)))].intValue
            //: self.refreshVideoCallPrice()
            self.sinceName()
        }
    }
}

// MARK: - Event

//: extension TalkingRandomVideoViewController {
extension EqualCaptureReactiveCompatible {
    /// 男性侧vip价格按钮点击事件
    //: @objc private func maleVipPriceButtonClick() {
    @objc private func stateEqual() {
        //: EditTextThen.share.func__pushToSubscribeAlert()
        EditTextThen.share.addShowParams()
    }

    /// 关闭按钮点击事件
    //: @objc func closeButtonClick() {
    @objc func verbalizeQuantity() {
        //: dispatchWorkItem?.cancel()
        dispatchWorkItem?.cancel()
        //: showCloseBtn()
        equivalent()
        //: uploadRecord.uploadRecordEvent(eventID: ClickRandomvideoCancelNoP)
        kLet_textData.historicalPaper(eventID: kLet_recordTitle)

        //: if EqualThen.share.appConfigMode.displayMatchV4PopUp, EqualThen.share.loginUserMode.freeCallTimes > 0,
        if EqualThen.share.appConfigMode.displayMatchV4PopUp, EqualThen.share.loginUserMode.freeCallTimes > 0,
           //: isShowFreeVideo == false {
           isShowFreeVideo == false
        {
            //: self.freeVideoAlert.show()
            self.freeVideoAlert.subjectMatterSchedule()
            //: isShowFreeVideo = true
            isShowFreeVideo = true
            //: return
            return
        }
        //: currentViewController()?.navigationController?.popViewController(animated: true)
        infoController()?.navigationController?.popViewController(animated: true)
    }

    /// 开始随机视频
    //: @objc private func start_randomVideo() {
    @objc private func goShow() {
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard DeviceSocketDelegate.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.oversight(showMsg: kLet_replaceTitle)
            //: return
            return
        }
        //: guard gradientBtn.isEnabled == true else { return }
        guard gradientBtn.isEnabled == true else { return }
        //: afterShowClose()
        afterView()
        //: self.matchId = 0
        self.matchId = 0 // 重置匹配池
        //: gradientBtn.isEnabled = false
        gradientBtn.isEnabled = false
        //: tipsLab.text = "Matching now".localized
        tipsLab.text = (String(str_deviceToManagerData.suffix(6)) + "ng now").localized
        //: setPlayer(isRandon: true)
        dwarfish(isRandon: true)
        //: priceStackView.isHidden = true
        priceStackView.isHidden = true
        //: vipPriceBtn.isHidden = true
        vipPriceBtn.isHidden = true
        //: vipTopImgView.isHidden = true
        vipTopImgView.isHidden = true
        //: if EqualThen.share.loginUserMode.randomVideoType == 2 {
        if EqualThen.share.loginUserMode.randomVideoType == 2 {
            //: uploadRecord.uploadRecordEvent(eventID: ClickRobotRandomButton)
            kLet_textData.historicalPaper(eventID: kLet_likeValue)
            //: req_getVideoInfo()
            imageTake()
            //: } else {
        } else {
            //: uploadRecord.uploadRecordEvent(eventID: ClickRandomvideoCallNoP)
            kLet_textData.historicalPaper(eventID: kLet_halfData)

            //: TalkingSocketManager.shared.videoMatchDelegate = self
            DeviceSocketDelegate.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.callerDelegate = self
            DeviceSocketDelegate.shared.callerDelegate = self
            //: TalkingSocketManager.shared.calledPartyDelegate = self
            DeviceSocketDelegate.shared.calledPartyDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            DeviceSocketDelegate.shared.errorDelegate = self
            //: restart_randomVideo()
            system()
        }
    }

    /// 重新开始视频速配
    /// - Parameters:
    ///   - cmd: 事件名（默认用户主动点击）
    ///   - errno: cmd的错误码
    //: private func restart_randomVideo(cmd: String = "userTouch", errno: String = "0") {
    private func system(cmd: String = (String(str_cellContent.prefix(6)) + str_actionValue.lowercased()), errno: String = "0") {
        // 停止定时器
        //: destroyWaitingTimer()
        mic()
        //: req_randomVideoToMatch(cmd: cmd, errno: errno)
        upLive(cmd: cmd, errno: errno)
    }

    /// 停止随机视频
    //: private func stop_randomVideo() {
    private func arrayTheme() {
        // 停止定时器
        //: destroyWaitingTimer()
        mic()
        //: showCloseBtn()
        equivalent()

        //: gradientBtn.isEnabled = true
        gradientBtn.isEnabled = true
        //: tipsLab.text = "Tap to start video chatting".localized
        tipsLab.text = (String(str_managerValue.prefix(4)) + "to s" + String(str_viewValue.prefix(6)) + "ideo" + String(str_acceptData)).localized
        //: setPlayer(isRandon: false)
        dwarfish(isRandon: false)
        //: self.isFirstRandow = false
        self.isFirstRandow = false
        //: if TalkingSocketManager.shared.isTalking == false {
        if DeviceSocketDelegate.shared.isTalking == false {
            //: TalkingSocketManager.shared.videoMatchDelegate = nil
            DeviceSocketDelegate.shared.videoMatchDelegate = nil
            //: TalkingSocketManager.shared.callerDelegate = nil
            DeviceSocketDelegate.shared.callerDelegate = nil
            //: TalkingSocketManager.shared.calledPartyDelegate = nil
            DeviceSocketDelegate.shared.calledPartyDelegate = nil
            //: TalkingSocketManager.shared.errorDelegate = nil
            DeviceSocketDelegate.shared.errorDelegate = nil
        }
        //: refreshVideoCallPrice()
        sinceName()
    }

    /// 销毁定时器
    //: private func destroyWaitingTimer() {
    private func mic() {
        //: if self.waitingTimer != nil {
        if self.waitingTimer != nil {
            //: self.waitingTimer?.invalidate()
            self.waitingTimer?.invalidate()
            //: self.waitingTimer = nil
            self.waitingTimer = nil
        }

        //: if self.retryAfterTimer != nil {
        if self.retryAfterTimer != nil {
            //: self.retryAfterTimer?.invalidate()
            self.retryAfterTimer?.invalidate()
            //: self.retryAfterTimer = nil
            self.retryAfterTimer = nil
        }
    }

    /// 获取用户主动拨打视频信息
    //: @objc private func req_getVideoInfo() {
    @objc private func imageTake() {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/freeCall/getVideoInfo"
        reqModel.requestPath = (String(str_firstValue) + str_tipContent.replacingOccurrences(of: "head", with: "o"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["fromType": "1"]
        reqModel.params = [String(bytes: str_listWhiteData.map{cornerVoice(model: $0)}, encoding: .utf8)!: "1"]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in

            //: guard succeed == true else {
            guard succeed == true else {
                //: self.stop_randomVideo()
                self.arrayTheme()
                //: if errorModel?.errorCode ?? 1 > 0 {
                if errorModel?.errorCode ?? 1 > 0 {
                    //: EqualThen.share.loginUserMode.randomVideoType = 1
                    EqualThen.share.loginUserMode.randomVideoType = 1
                    //: self.start_randomVideo()
                    self.goShow()
                    //: return
                    return
                }
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel?.errorMsg ?? "")
                self.oversight(showMsg: errorModel?.errorMsg ?? "")
                //: return
                return
            }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: if let model = TalkingVideoInitivCallModel.deserialize(from: result as? Dictionary) {
            if let model = DataModelType.deserialize(from: result as? Dictionary) {
                /// 预加载
                //: let  player = TalkingVideoPlayerManager.init()
                let player = SendPlayListener()
                //: player.setMute(bEnable: true)
                player.wreak(bEnable: true)
                //: player.playerWithUrlAndVideoView(url: model.winVideoUrl, view: UIView.init())
                player.requestView(url: model.winVideoUrl, view: UIView())

                //: TalkingVideoInitivCallManager.shared.videoCallModel = model
                PlayerCallManager.shared.videoCallModel = model

                //: TalkingPermissionTool.checkCameraAndMicrophone { [weak self] isOpen in
                RubricThen.andThen { [weak self] isOpen in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: guard isOpen == true else { return }
                    guard isOpen == true else { return }

                    //: self.putThrough()
                    self.throughPigeonhole()
                }
            }
        }
    }

    /// 接通电话
    //: private func putThrough() {
    private func throughPigeonhole() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoAcceptButton)
        kLet_textData.historicalPaper(eventID: kLet_inputErrName)
        /// 视频通话被禁用
        //: guard TalkingVideoInitivCallManager.shared.videoCallModel.isBan == 0 else {
        guard PlayerCallManager.shared.videoCallModel.isBan == 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You've been barred from receiving calls".localized)
            self.oversight(showMsg: String(bytes: str_colorData.map{$0^250}, encoding: .utf8)!.localized)
            //: return
            return
        }
        //: self.dispatchWorkItem = DispatchWorkItem {
        self.dispatchWorkItem = DispatchWorkItem {
            //: TalkingVideoInitivCallManager.shared.req_userOperation(type: 1) { succeed, result, errorModel in
            PlayerCallManager.shared.fileBy(type: 1) { succeed, _, _ in
                //: guard succeed == true else {
                guard succeed == true else {
                    //: return
                    return
                }
                //: guard succeed == true else {
                guard succeed == true else {
                    //: self.stop_randomVideo()
                    self.arrayTheme()
                    //: return
                    return
                }
                //: let vc = TalkingVideoInitivCallVC()
                let vc = BulgeOutViewController()
                //: vc.isRandomVCPush = true
                vc.isRandomVCPush = true
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.infoController()?.navigationController?.pushViewController(vc, animated: true)
                //: self.stop_randomVideo()
                self.arrayTheme()
            }
        }
        // 添加延时任务
        //: DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: self.dispatchWorkItem!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: self.dispatchWorkItem!)
    }

    /// 匹配时x秒显示关闭按钮
    //: private func afterShowClose() {
    private func afterView() {
        //: if EqualThen.share.appUserConfigMode.matchCancelBtnDelayTime > 0 {
        if EqualThen.share.appUserConfigMode.matchCancelBtnDelayTime > 0 {
            //: self.closeBtn.isHidden = true
            self.closeBtn.isHidden = true
            //: closeBtnWorkItem = DispatchWorkItem { [weak self] in
            closeBtnWorkItem = DispatchWorkItem { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.closeBtn.isHidden = false
                self.closeBtn.isHidden = false
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now() + Double(EqualThen.share.appUserConfigMode.matchCancelBtnDelayTime), execute: closeBtnWorkItem!)
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(EqualThen.share.appUserConfigMode.matchCancelBtnDelayTime), execute: closeBtnWorkItem!)
        }
    }

    //: private func showCloseBtn() {
    private func equivalent() {
        //: closeBtnWorkItem?.cancel()
        closeBtnWorkItem?.cancel()
        //: self.closeBtn.isHidden = false
        self.closeBtn.isHidden = false
    }

    //: private func resetCamera() {
    private func afterTo() {
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) {
            //: self.videoManager.infoModel?.videoStage = .Waiting
            self.videoManager.infoModel?.videoStage = .Waiting
            //: self.videoManager.config.openCamera = true
            self.videoManager.config.openCamera = true
            //: self.videoManager.isOpenTRTCPreview = false
            self.videoManager.isOpenTRTCPreview = false
            //: self.videoManager.startPreview()
            self.videoManager.stochasticProcessMatch()
        }
    }
}

// MARK: - ModelObjectProtocol

//: extension TalkingRandomVideoViewController: SocketManagerVideoMatchDelegate {
extension EqualCaptureReactiveCompatible: ModelObjectProtocol {
    /// 视频速配成功
    //: func socket_match_onVideoMatch(data: [String: Any]) {
    func finishData(data: [String: Any]) {
        // 拨打视频通话
        //: guard let model = TalkingMatchResultModel.deserialize(from: data) else { return }
        guard let model = IntervalerpretHandyJSON.deserialize(from: data) else { return }
        //: self.matchId = model.matchId
        self.matchId = model.matchId
        //: var callData: [String: Any] = ["matchId": model.matchId,
        var callData: [String: Any] = [(String(str_putText.prefix(7))): model.matchId,
                                       //: "source": model.source,
                                       String(bytes: str_viewName.map{signImage(m: $0)}, encoding: .utf8)!: model.source,
                                       //: "type": model.type,
                                       String(bytes: str_indexName.reversed(), encoding: .utf8)!: model.type,
                                       //: "uid": model.uid]
                                       String(bytes: str_errorValue.map{voiceStyle(data: $0)}, encoding: .utf8)!: model.uid]
        //: let index = EnableFreeCallType.randow
        let index = GestureSignedMagnitude.randow
        //: if EqualThen.share.loginUserMode.freeCallTimes > 0 && EqualThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if EqualThen.share.loginUserMode.freeCallTimes > 0 && EqualThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: callData.updateValue(1, forKey: "fromFreeCall")
            callData.updateValue(1, forKey: (String(str_indexPopContent)))
            //: TalkingSocketManager.shared.isFreeCall = true
            DeviceSocketDelegate.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": callData]
        let info: [String: Any] = [String(bytes: str_subName.map{withChange(dimension: $0)}, encoding: .utf8)!: (String(str_ageData) + str_atStackAttributeName.replacingOccurrences(of: "info", with: "ll")), String(bytes: str_captureTitle.reversed(), encoding: .utf8)!: callData]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        DeviceSocketDelegate.shared.noCurrent(info: info)
        // 15s未接听主动挂断
        //: waitingTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(15), block: { [weak self] timer in
        waitingTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(15), block: { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "cancelCall", "data": ["logId": self.logId]])
            DeviceSocketDelegate.shared.noCurrent(info: [String(bytes: str_subName.map{withChange(dimension: $0)}, encoding: .utf8)!: (str_bottomTitle.replacingOccurrences(of: "lab", with: "a") + String(str_modelName.prefix(8))), String(bytes: str_captureTitle.reversed(), encoding: .utf8)!: [(String(str_addData.suffix(5))): self.logId]])
            //: self.restart_randomVideo(cmd: "onVideoMatch")
            self.system(cmd: (String(str_makeHiddenTopName.prefix(8)) + String(str_giftTitle)))
            //: }, repeats: false)
        }, repeats: false)
    }

    //: func socket_match_onRequestCall(data: [String: Any]) {
    func makeList(data: [String: Any]) {
        //: let json = JSON(data)
        let json = JSON(data)
        //: self.logId = json["logId"].intValue
        self.logId = json[(String(str_addData.suffix(5)))].intValue
    }
}

// MARK: - GrantCallerDelegate【视频拨打方处理】

//: extension TalkingRandomVideoViewController: SocketManagerVideoChatCallerDelegate {
extension EqualCaptureReactiveCompatible: GrantCallerDelegate {
    /// 拨打方拒绝了通话，接收方收到该指令（未通话）
    //: func socket_videoChat_cancelCall(data: [String: Any]) {}
    func loungeTouch(data _: [String: Any]) {}

    /// 对方结束了通话（通话中）
    //: func socket_videoChat_stopCall(data: [String: Any]) {}
    func centerData(data _: [String: Any]) {}

    /// 余额不足提醒
    //: func socket_videoChat_onMissCoin(msg: String, data: [String: Any]) {}
    func signature(msg _: String, data _: [String: Any]) {}

    /// 对方接受了来电，建立视频通话
    //: func socket_videoChat_acceptCall(data: [String: Any]) {
    func leadIn(data: [String: Any]) {
        // 应用在后台，先提醒用户
        //: if UIApplication.shared.applicationState == .background {
        if UIApplication.shared.applicationState == .background {
            //: AppDelegateHelper.pushLocalNotification(body: "[Automatic video] Receive video call incoming".localized)
            MakeDelegateHelper.magnitudeeractionUrl(body: String(bytes: str_keyValue.map{buttonSex(along: $0)}, encoding: .utf8)!.localized)
        }
        //: let model = TalkingMatchResultModel.deserialize(from: data)
        let model = IntervalerpretHandyJSON.deserialize(from: data)
        //: if let uid = model?.uid {
        if let uid = model?.uid {
            //: uploadSuccessTime(toUid: String(uid))
            biteQuery(toUid: String(uid))
        }
        //: stop_randomVideo()
        arrayTheme()
        //: EqualThen.share.start1v1TalkCall(info: data, situation: .Calling)
        EqualThen.share.situationClick(info: data, situation: .Calling)
    }
}

// MARK: - HeadingPartyDelegate【接收到回执代理】

//: extension TalkingRandomVideoViewController: SocketManagerVideoChatCalledPartyDelegate {
extension EqualCaptureReactiveCompatible: HeadingPartyDelegate {
    /// 接收方拒绝了通话，拨打方收到该指令（未通话）
    //: func socket_videoChat_refuseCall(data: [String: Any]) {
    func sectionSocket(data _: [String: Any]) {
        //: restart_randomVideo(cmd: "refuseCall")
        system(cmd: (String(str_textValue)))
    }

    /// 接收方接受了通话，改变状态为通话中，acceptCall回执
    //: func socket_videoChat_onAcceptCall(data: [String: Any]) {}
    func outsideSize(data _: [String: Any]) {}
}

// MARK: - FileCurrentErrorDelegate

//: extension TalkingRandomVideoViewController: TalkingSocketManagerErrorDelegate {
extension EqualCaptureReactiveCompatible: FileCurrentErrorDelegate {
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func constraintInsert(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
        //: if cmd == "onCancelCall" {  // 取消通话异常
        if cmd == (String(str_toText.prefix(5)) + String(str_reinValue.suffix(7))) { // 取消通话异常
            //: stop_randomVideo()
            arrayTheme()
            //: return
            return
        }
        //: if cmd == "onVideoMatch", errorNo == 404 { // 匹配池用完
        if cmd == (String(str_makeHiddenTopName.prefix(8)) + String(str_giftTitle)), errorNo == 404 { // 匹配池用完
            //: stop_randomVideo()
            arrayTheme()
            //: let json = JSON(data)
            let json = JSON(data)
            //: self.matchId = json["matchId"].intValue
            self.matchId = json[(String(str_putText.prefix(7)))].intValue
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.oversight(showMsg: msg)
            //: uploadFailTime(type: 2)
            lipogram(type: 2)
            //: return
            return
        }
        //: if cmd == "onVideoMatch", errorNo == 449 { // 匹配池用完，延时重试
        if cmd == (String(str_makeHiddenTopName.prefix(8)) + String(str_giftTitle)), errorNo == 449 { // 匹配池用完，延时重试
            //: let json = JSON(data)
            let json = JSON(data)
            //: retryAfterTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(json["retryAfter"].intValue), block: { [weak self] timer in
            retryAfterTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(json[(String(str_nameValue.suffix(7)) + String(str_viewIndexName))].intValue), block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.matchId = json["matchId"].intValue
                self.matchId = json[(String(str_putText.prefix(7)))].intValue
                //: self.restart_randomVideo(cmd: cmd, errno: String(errorNo))
                self.system(cmd: cmd, errno: String(errorNo))
                //: }, repeats: false)
            }, repeats: false)
            //: return
            return
        }
        //: if cmd == "onRequestCall", errorNo == VideoChatErrorCode.MoneyLack.rawValue { // 余额不足
        if cmd == (str_backBottomElseContent.replacingOccurrences(of: "screen", with: "o") + String(str_normalLabName.prefix(5)) + "stCall"), errorNo == MakePriorityTarget.MoneyLack.rawValue { // 余额不足
            //: stop_randomVideo()
            arrayTheme()
            //: guard EqualThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
            guard EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue else { return }
            //: EditTextThen.share.func__jumpToWebRecharge(clickEvent: clickRandomvideoButton, sufficient: false)
            EditTextThen.share.activityParams(clickEvent: kLet_versionData, sufficient: false)
            //: uploadFailTime(type: 1)
            lipogram(type: 1)
            //: return
            return
        }

        //: restart_randomVideo(cmd: cmd, errno: String(errorNo))
        system(cmd: cmd, errno: String(errorNo))
    }
}

// MARK: - 埋点

//: extension TalkingRandomVideoViewController {
extension EqualCaptureReactiveCompatible {
    //: func uploadFailTime(type: Int) {
    func lipogram(type: Int) {
        //: let nowtime = Date().timeIntervalSince1970
        let nowtime = Date().timeIntervalSince1970
        //: let time = Int(nowtime - (beginTime ?? Date().timeIntervalSince1970))
        let time = Int(nowtime - (beginTime ?? Date().timeIntervalSince1970))
        //: var parm = Dictionary<String, Any>()
        var parm = [String: Any]()
        //: parm["failType"] = type
        parm[(String(str_modelValue.suffix(8)))] = type
        //: parm["callWaitingTime"] = time
        parm[(String(str_tableData.suffix(8)) + String(str_greetObjectTitle.prefix(7)))] = time
        //: uploadRecord.uploadRecordEvent(eventID: RandomvideoFailwaitTime, parameterStr: parm)
        kLet_textData.pictureOf(eventID: kLet_limitName, parameterStr: parm)
    }

    //: func uploadSuccessTime(toUid: String) {
    func biteQuery(toUid: String) {
        //: let nowtime = Date().timeIntervalSince1970
        let nowtime = Date().timeIntervalSince1970
        //: let time = Int(nowtime - (beginTime ?? Date().timeIntervalSince1970))
        let time = Int(nowtime - (beginTime ?? Date().timeIntervalSince1970))
        //: var parm = Dictionary<String, Any>()
        var parm = [String: Any]()
        //: parm["callWaitingTime"] = time
        parm[(String(str_tableData.suffix(8)) + String(str_greetObjectTitle.prefix(7)))] = time
        //: parm["toUid"] = toUid
        parm[(String(str_replyValue))] = toUid
        //: uploadRecord.uploadRecordEvent(eventID: RandomvideowaitTime, parameterStr: parm)
        kLet_textData.pictureOf(eventID: kLet_gameData, parameterStr: parm)
    }
}

// MARK: - Layout

//: extension TalkingRandomVideoViewController {
extension EqualCaptureReactiveCompatible {
    /// 刷新视频通话价格
    //: @objc private func refreshVideoCallPrice() {
    @objc private func sinceName() {
        //: guard EqualThen.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue else {
            //: priceStackView.isHidden = true
            priceStackView.isHidden = true
            //: vipPriceBtn.isHidden = true
            vipPriceBtn.isHidden = true
            //: vipTopImgView.isHidden = true
            vipTopImgView.isHidden = true
            //: return
            return
        }

        //: vipIcon.isHidden = !EqualThen.share.loginUserMode.loungePlus
        vipIcon.isHidden = !EqualThen.share.loginUserMode.loungePlus
        //: priceStackView.isHidden = false
        priceStackView.isHidden = false
        //: let indexType = EnableFreeCallType.randow
        let indexType = GestureSignedMagnitude.randow
        //: if EqualThen.share.loginUserMode.freeCallTimes > 0 && EqualThen.share.appUserConfigMode.enableFreeCallType & indexType.rawValue == indexType.rawValue {
        if EqualThen.share.loginUserMode.freeCallTimes > 0, EqualThen.share.appUserConfigMode.enableFreeCallType & indexType.rawValue == indexType.rawValue { // 有免费次数
            //: if EqualThen.share.appUserConfigMode.callBtnStyle == 1 {
            if EqualThen.share.appUserConfigMode.callBtnStyle == 1 {
                //: priceLab.text = "Free 1 min".localized
                priceLab.text = (String(str_currentValue)).localized
                //: } else {
            } else {
                //: priceStackView.isHidden = true
                priceStackView.isHidden = true
            }
            //: vipPriceBtn.isHidden = true
            vipPriceBtn.isHidden = true
            //: vipTopImgView.isHidden = true
            vipTopImgView.isHidden = true

            //: } else {
        } else { // 无免费次数, 展示价格
            //: let price = EqualThen.share.loginUserMode.loungePlus ? vipFee:fee
            let price = EqualThen.share.loginUserMode.loungePlus ? vipFee : fee
            //: priceLab.text = "%@/min".localizedArguments(price)
            priceLab.text = (String(str_viewValueName.prefix(5)) + str_messageToViewData.replacingOccurrences(of: "menu", with: "n")).localizedArguments(price)

            //: let attr = NSMutableAttributedString(string: "%@/min".localizedArguments(price), attributes: [.strikethroughStyle : NSUnderlineStyle.single.rawValue, .foregroundColor: UIColor.white.withAlphaComponent(0.5), .font: UIFont.pingfangWithDiameter(fontSize: 10)])
            let attr = NSMutableAttributedString(string: (String(str_viewValueName.prefix(5)) + str_messageToViewData.replacingOccurrences(of: "menu", with: "n")).localizedArguments(price), attributes: [.strikethroughStyle: NSUnderlineStyle.single.rawValue, .foregroundColor: UIColor.white.withAlphaComponent(0.5), .font: UIFont.pingfangWithDiameter(fontSize: 10)])
            //: norPriceLab.attributedText = attr
            norPriceLab.attributedText = attr
            //: vipPriceBtn.isHidden = EqualThen.share.loginUserMode.loungePlus
            vipPriceBtn.isHidden = EqualThen.share.loginUserMode.loungePlus
            //: vipTopImgView.isHidden = EqualThen.share.loginUserMode.loungePlus
            vipTopImgView.isHidden = EqualThen.share.loginUserMode.loungePlus

            //: priceStackView.isHidden = !EqualThen.share.loginUserMode.loungePlus
            priceStackView.isHidden = !EqualThen.share.loginUserMode.loungePlus
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func addStatus() {
        //: view.addSubview(renderView)
        view.addSubview(renderView)
        //: view.addSubview(gradientBtn)
        view.addSubview(gradientBtn)
        //: view.addSubview(svgaPlayer)
        view.addSubview(svgaPlayer)
        //: view.addSubview(tipsLab)
        view.addSubview(tipsLab)
        //: view.addSubview(chattingNumBtn)
        view.addSubview(chattingNumBtn)
        //: view.addSubview(priceStackView)
        view.addSubview(priceStackView)
        //: priceStackView.addArrangedSubview(vipIcon)
        priceStackView.addArrangedSubview(vipIcon)
        //: priceStackView.addArrangedSubview(goldCoinIcon)
        priceStackView.addArrangedSubview(goldCoinIcon)
        //: priceStackView.addArrangedSubview(priceLab)
        priceStackView.addArrangedSubview(priceLab)
        //: view.addSubview(vipPriceBtn)
        view.addSubview(vipPriceBtn)
        //: view.addSubview(vipTopImgView)
        view.addSubview(vipTopImgView)
        //: vipPriceBtn.addSubview(vipPriceImg)
        vipPriceBtn.addSubview(vipPriceImg)
        //: vipPriceBtn.addSubview(vipPriceLab)
        vipPriceBtn.addSubview(vipPriceLab)
        //: vipPriceBtn.addSubview(norPriceLab)
        vipPriceBtn.addSubview(norPriceLab)

        //: view.addSubview(closeBtn)
        view.addSubview(closeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func backgroundEffect() {
        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: gradientBtn.snp.makeConstraints { make in
        gradientBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(-8)
            make.leading.equalTo(-8)
            //: make.trailing.equalTo(8)
            make.trailing.equalTo(8)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 395))
            make.height.equalTo(actualWidth(w: 395))
        }
        //: tipsLab.snp.makeConstraints { make in
        tipsLab.snp.makeConstraints { make in
            //: make.bottom.equalTo(svgaPlayer.snp.bottom).offset(-40)
            make.bottom.equalTo(svgaPlayer.snp.bottom).offset(-40)
            //: make.width.centerX.equalToSuperview()
            make.width.centerX.equalToSuperview()
        }
        //: chattingNumBtn.snp.makeConstraints { make in
        chattingNumBtn.snp.makeConstraints { make in
            //: make.top.equalTo(tipsLab.snp.bottom).offset(35)
            make.top.equalTo(tipsLab.snp.bottom).offset(35)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: priceStackView.snp.makeConstraints { make in
        priceStackView.snp.makeConstraints { make in
            //: make.top.equalTo(chattingNumBtn.snp.bottom).offset(8)
            make.top.equalTo(chattingNumBtn.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(31)
            make.height.equalTo(31)
            //: make.trailing.lessThanOrEqualToSuperview()
            make.trailing.lessThanOrEqualToSuperview()
        }
        //: vipIcon.snp.makeConstraints { make in
        vipIcon.snp.makeConstraints { make in
            //: make.width.height.equalTo(15)
            make.width.height.equalTo(15)
        }
        //: goldCoinIcon.snp.makeConstraints { make in
        goldCoinIcon.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 15))
            make.width.height.equalTo(actualWidth(w: 15))
        }
        //: priceLab.snp.makeConstraints { make in
        priceLab.snp.makeConstraints { make in
            //: make.height.equalToSuperview()
            make.height.equalToSuperview()
        }

        //: vipPriceBtn.snp.makeConstraints { make in
        vipPriceBtn.snp.makeConstraints { make in
            //: make.top.equalTo(priceStackView.snp.bottom).offset(16)
            make.top.equalTo(priceStackView.snp.bottom).offset(16)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 240), height: actualWidth(w: 54)))
            make.size.equalTo(CGSize(width: actualWidth(w: 240), height: actualWidth(w: 54)))
        }
        //: vipTopImgView.snp.makeConstraints { make in
        vipTopImgView.snp.makeConstraints { make in
            //: make.top.equalTo(vipPriceBtn.snp.top).offset(-12)
            make.top.equalTo(vipPriceBtn.snp.top).offset(-12)
            //: make.leading.equalTo(vipPriceBtn.snp.leading)
            make.leading.equalTo(vipPriceBtn.snp.leading)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 32), height: actualWidth(w: 24)))
            make.size.equalTo(CGSize(width: actualWidth(w: 32), height: actualWidth(w: 24)))
        }

        //: vipPriceImg.snp.makeConstraints { make in
        vipPriceImg.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(actualWidth(w: 12))
            make.top.equalToSuperview().offset(actualWidth(w: 12))
            //: make.width.height.equalTo(15)
            make.width.height.equalTo(15)
            //: make.trailing.equalTo(vipPriceLab.snp.leading).offset(-2)
            make.trailing.equalTo(vipPriceLab.snp.leading).offset(-2)
        }

        //: vipPriceLab.snp.makeConstraints { make in
        vipPriceLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(vipPriceImg)
            make.centerY.equalTo(vipPriceImg)
            //: make.centerX.equalToSuperview().offset(8)
            make.centerX.equalToSuperview().offset(8)
        }
        //: norPriceLab.snp.makeConstraints { make in
        norPriceLab.snp.makeConstraints { make in
            //: make.top.equalTo(vipPriceImg.snp.bottom).offset(5)
            make.top.equalTo(vipPriceImg.snp.bottom).offset(5)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+6)
            make.top.equalTo(kLet_timeSenseValue + 6)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 44))
            make.width.height.equalTo(actualWidth(w: 44))
        }
    }

    /// 绑定事件
    //: private func bindInteraction() {
    private func viewCellWith() {
        // index/getconfig接口回调刷新UI
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(refreshVideoCallPrice),
                                               selector: #selector(sinceName),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: kLet_turnName,
                                               //: object: nil)
                                               object: nil)
        // 个人信息更新成功刷新UI
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(req_updateVIPFee),
                                               selector: #selector(engagementFee),
                                               //: name: USER_GETMYINFO_SUCCEED_NOTIFICATION,
                                               name: kLet_viewValue,
                                               //: object: nil)
                                               object: nil)
    }
}
