
//: Declare String Begin

/*: "#201E50" :*/
fileprivate let str_valueSpaceData:String = "#201E50manager app mode"

/*: "#1F1624" :*/
fileprivate let str_toGestureValue:[Character] = ["#"]
fileprivate let str_indexText:String = "1F1624finish manager user"

/*: "quick_video_topview" :*/
fileprivate let str_dataOpenTitle:String = "frameuic"
fileprivate let str_viewValue:String = "self for buttondeo_to"
fileprivate let str_totalData:String = "pvtoew"

/*: "nav_back_black_nor" :*/
fileprivate let str_equalShowName:String = "nav_bself self var"
fileprivate let str_giftName:String = "view any main topack_no"
fileprivate let str_fromContent:String = "color"

/*: "Random Video" :*/
fileprivate let str_modeContent:String = "Randequal size"

/*: "quick_video_explain" :*/
fileprivate let str_frameData:String = "log modelquick_"
fileprivate let str_adjustName:[Character] = ["v","i","d","e","o"]
fileprivate let str_addData:String = "name leading count please_exp"

/*: "get json error" :*/
fileprivate let str_lineModelTitle:String = "image below succeedget j"
fileprivate let str_textName:[Character] = ["e","r","r","o","r"]

/*: "Searching for perfect matches. please be patient." :*/
fileprivate let str_cellData:[UInt8] = [0x88,0xbe,0xba,0xa9,0xb8,0xb3,0xb2,0xb5,0xbc,0xfb,0xbd,0xb4,0xa9,0xfb,0xab,0xbe,0xa9,0xbd,0xbe,0xb8,0xaf,0xfb,0xb6,0xba,0xaf,0xb8,0xb3,0xbe,0xa8,0xf5,0xfb,0xab,0xb7,0xbe,0xba,0xa8,0xbe,0xfb,0xb9,0xbe,0xfb,0xab,0xba,0xaf,0xb2,0xbe,0xb5,0xaf,0xf5]

/*: "Matching..." :*/
fileprivate let str_rangeText:[Character] = ["M","a"]
fileprivate let str_countAddName:String = "TCHIN"

/*: "matchId" :*/
fileprivate let str_normalModelApplicationContent:String = "matchIdview fatal size"

/*: "Random Video helps locating your matches online quickly. Random Videos are priced at 40 gold coins per minute and are paid for by the party calling the video." :*/
fileprivate let str_titleValue:[UInt8] = [0x2d,0x3c,0x49,0x3f,0x4a,0x48,0xfb,0x31,0x44,0x3f,0x40,0x4a,0xfb,0x43,0x40,0x47,0x4b,0x4e,0xfb,0x47,0x4a,0x3e,0x3c,0x4f,0x44,0x49,0x42,0xfb,0x54,0x4a,0x50,0x4d,0xfb,0x48,0x3c,0x4f,0x3e,0x43,0x40,0x4e,0xfb,0x4a,0x49,0x47,0x44,0x49,0x40,0xfb,0x4c,0x50,0x44,0x3e,0x46,0x47,0x54,0x9,0xfb,0x2d,0x3c,0x49,0x3f,0x4a,0x48,0xfb,0x31,0x44,0x3f,0x40,0x4a,0x4e,0xfb,0x3c,0x4d,0x40,0xfb,0x4b,0x4d,0x44,0x3e,0x40,0x3f,0xfb,0x3c,0x4f,0xfb,0xf,0xb,0xfb,0x42,0x4a,0x47,0x3f,0xfb,0x3e,0x4a,0x44,0x49,0x4e,0xfb,0x4b,0x40,0x4d,0xfb,0x48,0x44,0x49,0x50,0x4f,0x40,0xfb,0x3c,0x49,0x3f,0xfb,0x3c,0x4d,0x40,0xfb,0x4b,0x3c,0x44,0x3f,0xfb,0x41,0x4a,0x4d,0xfb,0x3d,0x54,0xfb,0x4f,0x43,0x40,0xfb,0x4b,0x3c,0x4d,0x4f,0x54,0xfb,0x3e,0x3c,0x47,0x47,0x44,0x49,0x42,0xfb,0x4f,0x43,0x40,0xfb,0x51,0x44,0x3f,0x40,0x4a,0x9]

fileprivate func theoreticalAccount(transform num: UInt8) -> UInt8 {
    let value = Int(num) + 37
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "OK" :*/
fileprivate let str_collectionText:[Character] = ["O","K"]

/*: "onVideoMatch" :*/
fileprivate let str_mainTitle:[Character] = ["o","n","V","i","d","e"]
fileprivate let str_resultText:String = "var medium table coloroMatch"

/*: "retryAfter" :*/
fileprivate let str_instanceName:String = "rblocktry"
fileprivate let str_shadowName:String = "Aftermake size make true"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomObjectProtocol.swift
//  AbroadTalking
//
//  Created by young on 2022/11/4.
//

//: import UIKit
import UIKit

//: class TalkingQuickVideoMatchViewController: TalkingBaseViewController {
class CustomObjectProtocol: SeamViewController {
    //: private var headTimer: Timer?
    private var headTimer: Timer? // 头像展示定时器
    //: private var retryAfterTimer: Timer?
    private var retryAfterTimer: Timer? // 匹配失败重试定时器
    //: private var matchId: Int = 0
    private var matchId: Int = 0 // 速配批次Id

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: req_videoMatchHeadPics()
        resumeFor()
        //: startVideoMatch()
        atWith()
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: stopVideoMatch()
        resembleStopVisualCommunication()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        matchSubviews()
        //: setupSubViewsConstraint()
        noEnter()
    }

    //: deinit {
    deinit {
        //: stopVideoMatch()
        resembleStopVisualCommunication()
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.imageGradientTopToBottonColor(colors: [UIColor.init(hex: "#201E50")!.cgColor, UIColor.init(hex: "#1F1624")!.cgColor], size: CGSize(width: ScreenWidth, height: ScreenHeight))
        view.image = UIImage.pathOfSize(colors: [UIColor(hex: (String(str_valueSpaceData.prefix(7))))!.cgColor, UIColor(hex: (String(str_toGestureValue) + String(str_indexText.prefix(6))))!.cgColor], size: CGSize(width: kLet_cameraValue, height: kLet_clickData))
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true

        //: let topView = UIImageView.init()
        let topView = UIImageView()
        //: topView.image = UIImage.eponymUp(name: "quick_video_topview")
        topView.image = UIImage.eponymUp(name: (str_dataOpenTitle.replacingOccurrences(of: "frame", with: "q") + "k_vi" + String(str_viewValue.suffix(6)) + str_totalData.replacingOccurrences(of: "to", with: "i")))
        //: topView.isUserInteractionEnabled = true
        topView.isUserInteractionEnabled = true
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.width.height.equalTo(actualWidth(w: 218))
            make.width.height.equalTo(actualWidth(w: 218))
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var navView: UIView = {
    private lazy var navView: UIView = {
        //: let nav = UIView()
        let nav = UIView()
        //: nav.backgroundColor = .clear
        nav.backgroundColor = .clear
        // 返回
        //: let backBtn = UIButton(type: .custom)
        let backBtn = UIButton(type: .custom)
        //: let backBImg = UIImage.eponymUp(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let backBImg = UIImage.eponymUp(name: (String(str_equalShowName.prefix(5)) + "ack_bl" + String(str_giftName.suffix(6)) + str_fromContent.replacingOccurrences(of: "color", with: "r"))).withRenderingMode(.alwaysTemplate)
        //: backBtn.setImage(backBImg, for: .normal)
        backBtn.setImage(backBImg, for: .normal)
        //: backBtn.tintColor = .white
        backBtn.tintColor = .white
        //: backBtn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(carryingSumoActionContent), for: .touchUpInside)
        //: nav.addSubview(backBtn)
        nav.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLet_deviceRecordValue)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_timeSenseValue)
        }
        // 标题
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.pingfangWithDiameter(fontSize: 17)
        titleLab.font = UIFont.pingfangWithDiameter(fontSize: 17)
        //: titleLab.textColor = .white
        titleLab.textColor = .white
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.text = "Random Video".localized
        titleLab.text = (String(str_modeContent.prefix(4)) + "om Video").localized
        //: nav.addSubview(titleLab)
        nav.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        // 提示（审核模式隐藏）
        //: if EqualThen.share.appStatus == AppSkinStatus.normal.rawValue {
        if EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue {
            //: let matchTipsBtn = UIButton(type: .custom)
            let matchTipsBtn = UIButton(type: .custom)
            //: let matchTipsImg = UIImage.eponymUp(name: "quick_video_explain").withRenderingMode(.alwaysTemplate)
            let matchTipsImg = UIImage.eponymUp(name: (String(str_frameData.suffix(6)) + String(str_adjustName) + String(str_addData.suffix(4)) + "lain")).withRenderingMode(.alwaysTemplate)
            //: matchTipsBtn.setImage(matchTipsImg, for: .normal)
            matchTipsBtn.setImage(matchTipsImg, for: .normal)
            //: matchTipsBtn.tintColor = .white
            matchTipsBtn.tintColor = .white
            //: matchTipsBtn.addTarget(self, action: #selector(matchTipsButtonClick), for: .touchUpInside)
            matchTipsBtn.addTarget(self, action: #selector(outLoadClick), for: .touchUpInside)
            //: nav.addSubview(matchTipsBtn)
            nav.addSubview(matchTipsBtn)
            //: matchTipsBtn.snp.makeConstraints { make in
            matchTipsBtn.snp.makeConstraints { make in
                //: make.trailing.equalTo(0)
                make.trailing.equalTo(0)
                //: make.centerY.equalTo(backBtn)
                make.centerY.equalTo(backBtn)
                //: make.size.equalTo(CGSize(width: 45, height: NavigationBarHeight))
                make.size.equalTo(CGSize(width: 45, height: kLet_deviceRecordValue))
            }
        }

        //: return nav
        return nav
        //: }()
    }()

    //: lazy var svgaPlayer: SVGAPlayer = {
    lazy var svgaPlayer: SVGAPlayer = {
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

        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Quick_Video_BG)
        let url = ToEffectTool.default.alongError(type: .Quick_Video_BG)
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
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_lineModelTitle.suffix(5)) + "son " + String(str_textName)))
        }

        //: return player
        return player
        //: }()
    }()

    //: private lazy var tipsLab: UILabel = {
    private lazy var tipsLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.outsideAllSize(fontSize: 15)
        lab.font = UIFont.outsideAllSize(fontSize: 15)
        //: lab.textColor = UIColor.init(white: 1, alpha: 0.7)
        lab.textColor = UIColor(white: 1, alpha: 0.7)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Searching for perfect matches. please be patient.".localized
        lab.text = String(bytes: str_cellData.map{$0^219}, encoding: .utf8)!.localized
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var matchingLab: UILabel = {
    private lazy var matchingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 18)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 18)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Matching...".localized
        lab.text = (String(str_rangeText) + str_countAddName.lowercased() + "g...").localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var headImgView: UIImageView = {
    private lazy var headImgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.layer.cornerRadius = actualWidth(w: 90)/2
        img.layer.cornerRadius = actualWidth(w: 90) / 2
        //: img.image = UIImage.placeHolderImage(sex: Gender.female.rawValue)
        img.image = UIImage.bindData(sex: RunReplaceableCollection.female.rawValue)
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var dataArr: [String] = {
    private lazy var dataArr: [String] = //: return Array<String>()
        .init()
    //: }()

    //: private lazy var resultDataArr: [TalkingMatchResultModel] = {
    private lazy var resultDataArr: [IntervalerpretHandyJSON] = //: return Array<IntervalerpretHandyJSON>()
        .init()
    //: }()
}

// MARK: - Request & 数据处理

//: extension TalkingQuickVideoMatchViewController {
extension CustomObjectProtocol {
    /// 速配头像列表（男）
    //: private func req_videoMatchHeadPics() {
    private func resumeFor() {
        //: TalkingQuickVideoManager.req_videoMatchHeadPics { [weak self] succeed, result, errorModel in
        TitleReactiveCompatible.targetTelevision { [weak self] succeed, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: self.dataArr.removeAll()
            self.dataArr.removeAll()
            //: self.dataArr = result as! [String]
            self.dataArr = result as! [String]

            //: var index = 0
            var index = 0
            //: self.headTimer = Timer.scheduledTimer(withTimeInterval: 5, block: { timer in
            self.headTimer = Timer.scheduledTimer(withTimeInterval: 5, block: { _ in
                // 实现无限循环
                //: if index >= self.dataArr.count { index = 0 }
                if index >= self.dataArr.count { index = 0 }
                // 网络加载图片，实现高斯模糊效果
                //: self.headImgView.setUrlImage(urlStr: self.dataArr[index]) { isSucceed in
                self.headImgView.direct(urlStr: self.dataArr[index]) { _ in
                    //: guard let image = self.headImgView.image else { return }
                    guard let image = self.headImgView.image else { return }
                    //: self.headImgView.image = UIImage.blur(theImage: image, blurValue: 17)
                    self.headImgView.image = UIImage.slipUpValue(theImage: image, blurValue: 17)
                }
                //: index += 1
                index += 1
                //: }, repeats: true)
            }, repeats: true)
            //: self.headTimer?.fire()
            self.headTimer?.fire()
        }
    }

    /// 开始视频速配（男）
    //: private func req_videoMatchToMatch() {
    private func equalMatch() {
        //: TalkingQuickVideoManager.req_videoMatchToMatch(matchId: self.matchId) { succeed, result, errorModel in
        TitleReactiveCompatible.pointBlankFrame(matchId: self.matchId) { succeed, result, _ in
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.matchId = json["matchId"].intValue
            self.matchId = json[(String(str_normalModelApplicationContent.prefix(7)))].intValue
        }
    }
}

// MARK: - Event

//: extension TalkingQuickVideoMatchViewController {
extension CustomObjectProtocol {
    /// 停止视频速配
    //: private func stopVideoMatch() {
    private func resembleStopVisualCommunication() {
        // 销毁定时器
        //: if self.headTimer != nil {
        if self.headTimer != nil {
            //: self.headTimer?.invalidate()
            self.headTimer?.invalidate()
            //: self.headTimer = nil
            self.headTimer = nil
        }

        //: if self.retryAfterTimer != nil {
        if self.retryAfterTimer != nil {
            //: self.retryAfterTimer?.invalidate()
            self.retryAfterTimer?.invalidate()
            //: self.retryAfterTimer = nil
            self.retryAfterTimer = nil
        }

        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        DeviceSocketDelegate.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        DeviceSocketDelegate.shared.errorDelegate = nil
    }

    /// 开始视频速配
    //: private func startVideoMatch() {
    private func atWith() {
        //: TalkingSocketManager.shared.videoMatchDelegate = self
        DeviceSocketDelegate.shared.videoMatchDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        DeviceSocketDelegate.shared.errorDelegate = self
        //: req_videoMatchToMatch()
        equalMatch()
    }

    /// 返回按钮
    //: @objc private func clickBackButtonAction() {
    @objc private func carryingSumoActionContent() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 打开视频速配说明
    //: @objc private func matchTipsButtonClick() {
    @objc private func outLoadClick() {
        //: let message = "Random Video helps locating your matches online quickly. Random Videos are priced at 40 gold coins per minute and are paid for by the party calling the video.".localized
        let message = String(bytes: str_titleValue.map{theoreticalAccount(transform: $0)}, encoding: .utf8)!.localized
        //: TalkingAlertShow.alert(title: nil, message: message, rightBtnTitle: "OK".localized)
        MotilityThen.viewConfig(title: nil, message: message, rightBtnTitle: "OK".localized)
    }
}

// MARK: - TalkingSocketManagerDelegate

//: extension TalkingQuickVideoMatchViewController: SocketManagerVideoMatchDelegate {
extension CustomObjectProtocol: ModelObjectProtocol {
    /// 视频速配成功
    //: func socket_match_onVideoMatch(data: [String: Any]) {
    func finishData(data: [String: Any]) {
        // 停止速配，跳转速配结果界面
        //: stopVideoMatch()
        resembleStopVisualCommunication()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            //: guard let topVC = self.navigationController?.topViewController else { return }
            guard let topVC = self.navigationController?.topViewController else { return }
            //: guard !topVC.isKind(of: TalkingMatchResultViewController.self) else { return }
            guard !topVC.isKind(of: GiftMatchDelegate.self) else { return }
            //: guard let model = TalkingMatchResultModel.deserialize(from: data) else { return }
            guard let model = IntervalerpretHandyJSON.deserialize(from: data) else { return }

            // v1.0.6 订阅用户 当前视频速配成功的次数大于等于2，则在其匹配中页面额外展示回放按钮
            //: if EqualThen.share.loginUserMode.loungePlus == true || EqualThen.share.loginUserMode.videoPlayback == true {
            if EqualThen.share.loginUserMode.loungePlus == true || EqualThen.share.loginUserMode.videoPlayback == true {
                //: if self.resultDataArr.count >= 2 {
                if self.resultDataArr.count >= 2 {
                    //: self.resultDataArr.removeFirst()
                    self.resultDataArr.removeFirst()
                }
                //: self.resultDataArr.append(model)
                self.resultDataArr.append(model)

                //: } else {
            } else { // 非订阅用户只展示一条
                //: self.resultDataArr.removeAll()
                self.resultDataArr.removeAll()
                //: self.resultDataArr.append(model)
                self.resultDataArr.append(model)
            }

            //: let vc = TalkingMatchResultViewController()
            let vc = GiftMatchDelegate()
            //: vc.showLastArr = self.resultDataArr
            vc.showLastArr = self.resultDataArr
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: func socket_match_onRequestCall(data: [String: Any]) {}
    func makeList(data _: [String: Any]) {}
}

// MARK: - FileCurrentErrorDelegate

//: extension TalkingQuickVideoMatchViewController: TalkingSocketManagerErrorDelegate {
extension CustomObjectProtocol: FileCurrentErrorDelegate {
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func constraintInsert(errorNo: Int, cmd: String, msg _: String, data: [String: Any]) {
        //: if cmd == "onVideoMatch" && errorNo == 449 { // 匹配池用完，延时重试
        if cmd == (String(str_mainTitle) + String(str_resultText.suffix(6))) && errorNo == 449 { // 匹配池用完，延时重试
            //: let json = JSON(data)
            let json = JSON(data)
            //: retryAfterTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(json["retryAfter"].intValue), block: { [weak self] timer in
            retryAfterTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(json[(str_instanceName.replacingOccurrences(of: "block", with: "e") + String(str_shadowName.prefix(5)))].intValue), block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }

                //: self.matchId = json["matchId"].intValue
                self.matchId = json[(String(str_normalModelApplicationContent.prefix(7)))].intValue
                //: self.startVideoMatch()
                self.atWith()
                //: }, repeats: false)
            }, repeats: false)
        }
    }
}

// MARK: - Layout

//: extension TalkingQuickVideoMatchViewController {
extension CustomObjectProtocol {
    /// 添加视图
    //: private func setupSubviews() {
    private func matchSubviews() {
        //: self.view.addSubview(bgImgView)
        self.view.addSubview(bgImgView)
        //: self.view.addSubview(navView)
        self.view.addSubview(navView)
        //: self.view.addSubview(svgaPlayer)
        self.view.addSubview(svgaPlayer)
        //: self.view.addSubview(tipsLab)
        self.view.addSubview(tipsLab)
        //: self.view.addSubview(matchingLab)
        self.view.addSubview(matchingLab)
        //: self.view.addSubview(headImgView)
        self.view.addSubview(headImgView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func noEnter() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: navView.snp.makeConstraints { make in
        navView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(StatusBarNavigationBarHeight)
            make.height.equalTo(kLet_detailNameText)
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 50))
            make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 50))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: ScreenWidth, height: ScreenWidth))
            make.size.equalTo(CGSize(width: kLet_cameraValue, height: kLet_cameraValue))
        }
        //: tipsLab.snp.makeConstraints { make in
        tipsLab.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.bottom.equalToSuperview().offset(-88-kDeviceSafeBottomHeight)
            make.bottom.equalToSuperview().offset(-88 - kLet_nextData)
        }
        //: matchingLab.snp.makeConstraints { make in
        matchingLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(tipsLab.snp.top).offset(-20)
            make.bottom.equalTo(tipsLab.snp.top).offset(-20)
        }
        //: headImgView.snp.makeConstraints { make in
        headImgView.snp.makeConstraints { make in
            //: make.center.equalTo(svgaPlayer)
            make.center.equalTo(svgaPlayer)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 90), height: actualWidth(w: 90)))
            make.size.equalTo(CGSize(width: actualWidth(w: 90), height: actualWidth(w: 90)))
        }
    }
}
