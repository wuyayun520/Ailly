
//: Declare String Begin

/*: "99+" :*/
fileprivate let str_noName:String = "99+"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modelBottomValue:[UInt8] = [0xcc,0xd1,0xcc,0xd7,0x8b,0xc6,0xd2,0xc7,0xc8,0xd5,0x9d,0x8c,0x83,0xcb,0xc4,0xd6,0x83,0xd1,0xd2,0xd7,0x83,0xc5,0xc8,0xc8,0xd1,0x83,0xcc,0xd0,0xd3,0xcf,0xc8,0xd0,0xc8,0xd1,0xd7,0xc8,0xc7]

fileprivate func redLive(color num: UInt8) -> UInt8 {
    let value = Int(num) - 99
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "#2DF2FF" :*/
fileprivate let str_inputData:[Character] = ["#","2"]
fileprivate let str_iconMagnitudeValue:String = "DscaleFF"

/*: "Live" :*/
fileprivate let str_limitTitle:[Character] = ["L","i","v","e"]

/*: "img_home_shadow_icon" :*/
fileprivate let str_frameTitle:String = "home self true var ofimg_home"
fileprivate let str_errorData:[Character] = ["_","s","h","a","d","o","w","_","i","c","o","n"]

/*: "get json error" :*/
fileprivate let str_videoValue:String = "data else gold tapget "
fileprivate let str_equalName:String = "transformror"

/*: "#FF2348" :*/
fileprivate let str_addName:String = "#FF2348let case if guard"

/*: "#35C759" :*/
fileprivate let str_drownAvailableTitle:[Character] = ["#","3","5","C","7","5"]
fileprivate let str_atLayerUserValue:String = "content"

/*: "mfBean" :*/
fileprivate let str_appModelName:String = "mfBeanpath view leading as equal"

/*: "%.1f" :*/
fileprivate let str_indexContent:String = "%.1finfo name"

/*: "points\n≈ $" :*/
fileprivate let str_makeContent:String = "poilabt"

/*:   :*/
fileprivate let str_postData:String = "gift"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LiveThen.swift
//  AbroadTalking
//
//  Created by young on 2023/6/15.
//

//: import UIKit
import UIKit

// 连续未检测出人脸最大时间
//: public var MAX_NOFACETIME: Int {
public var kLet_limitTitle: Int {
    //: return EqualThen.share.appConfigMode.countdown1 + EqualThen.share.appConfigMode.countdown2
    return EqualThen.share.appConfigMode.countdown1 + EqualThen.share.appConfigMode.countdown2
}

//: class TalkingLiveMiniView: TalkingBaseMiniView {
class LiveThen: GildTheLilyView {
    // 未检测出人脸时长（间隔1秒）
    //: var noFaceTime: Int = 0 {
    var noFaceTime: Int = 0 {
        //: didSet {
        didSet {
            //: if noFaceTime >= EqualThen.share.appConfigMode.countdown1 {
            if noFaceTime >= EqualThen.share.appConfigMode.countdown1 { // 展示倒计时
                //: liveStatusImgV.isHidden = true
                liveStatusImgV.isHidden = true
                // svga
                //: svgaPlayer.isHidden = false
                svgaPlayer.isHidden = false
                //: svgaNumLab.isHidden = false
                svgaNumLab.isHidden = false
                //: svgaNumLab.text = "\(MAX_NOFACETIME-noFaceTime)"
                svgaNumLab.text = "\(kLet_limitTitle - noFaceTime)"
                //: } else {
            } else {
                //: refreshMiniView()
                futurismOffEqual()
            }
        }
    }

    // 消息未读数
    //: var msgCount: Int = 0 {
    var msgCount: Int = 0 {
        //: didSet {
        didSet {
            //: msgCountLab.isHidden = (msgCount == 0)
            msgCountLab.isHidden = (msgCount == 0)
            //: guard msgCount > 0 else { return }
            guard msgCount > 0 else { return }

            //: var lab_width = 16
            var lab_width = 16
            //: if msgCount > 99 {
            if msgCount > 99 {
                //: lab_width = 28
                lab_width = 28
                //: msgCountLab.text = "99+"
                msgCountLab.text = "99+"
                //: } else {
            } else {
                //: msgCountLab.text = "\(msgCount)"
                msgCountLab.text = "\(msgCount)"
            }
            //: msgCountLab.snp.updateConstraints { make in
            msgCountLab.snp.updateConstraints { make in
                //: make.width.equalTo(lab_width)
                make.width.equalTo(lab_width)
            }
        }
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubViewsConstraint()
        magnitudeeraction()
        //: addTapAndPanGestures()
        viewGift()
        //: addNotification()
        mix()

        //: if Double(EqualThen.share.loginUserMode.mf_bean) > 0 {
        if Double(EqualThen.share.loginUserMode.mf_bean) > 0 {
            //: setPointText(mfBean: 0.0)
            beanPlace(mfBean: 0.0)
        }
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modelBottomValue.map{redLive(color: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var shadowView: UIView = {
    private lazy var shadowView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: view.layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 76, height: 115), cornerRadius: 10).cgPath
        view.layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 76, height: 115), cornerRadius: 10).cgPath
        //: view.layer.shadowColor = UIColor(red: 0.74, green: 0.74, blue: 0.74, alpha: 0.5).cgColor
        view.layer.shadowColor = UIColor(red: 0.74, green: 0.74, blue: 0.74, alpha: 0.5).cgColor
        //: view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        //: view.layer.shadowOpacity = 1
        view.layer.shadowOpacity = 1
        //: view.layer.shadowRadius = 8
        view.layer.shadowRadius = 8
        //: self.addSubview(view)
        self.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: self.addSubview(view)
        self.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: lazy var renderView: UIView = {
    lazy var renderView: UIView = { // 视频渲染视图
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.isUserInteractionEnabled = false
        view.isUserInteractionEnabled = false
        //: self.addSubview(view)
        self.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var liveStatusImgV: TalkingButton = {
    private lazy var liveStatusImgV: ProgressTalkingButton = {
        //: let img = TalkingButton()
        let img = ProgressTalkingButton()
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: img.spaceBetweenTitleAndImage = 2
        img.spaceBetweenTitleAndImage = 2
        //: img.setBackgroundImage(UIImage.imageFillColor(color: UIColor(red: 9/255.0, green: 9/255.0, blue: 9/255.0, alpha: 0.3)), for: .normal)
        img.setBackgroundImage(UIImage.noMain(color: UIColor(red: 9 / 255.0, green: 9 / 255.0, blue: 9 / 255.0, alpha: 0.3)), for: .normal)
        //: img.layer.cornerRadius = 8
        img.layer.cornerRadius = 8
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.setTitleColor(.white, for: .normal)
        img.setTitleColor(.white, for: .normal)
        //: img.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 12)
        img.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 12)
        //: let image = UIImage.imageFillColor(color: UIColor(hex: "#2DF2FF")!, size: CGSize(width: 8, height: 8))
        let image = UIImage.impressionDataSize(color: UIColor(hex: (String(str_inputData) + str_iconMagnitudeValue.replacingOccurrences(of: "scale", with: "F2")))!, size: CGSize(width: 8, height: 8))
        //: img.setImage(image.circle(), for: .normal)
        img.setImage(image.circleWithoutImagination(), for: .normal)
        //: img.setTitle("Live".localized, for: .normal)
        img.setTitle((String(str_limitTitle)).localized, for: .normal)
        //: img.isHidden = true
        img.isHidden = true
        //: self.addSubview(img)
        self.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var shadowImg: UIImageView = {
    private lazy var shadowImg: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.eponymUp(name: "img_home_shadow_icon")
        img.image = UIImage.eponymUp(name: (String(str_frameTitle.suffix(8)) + String(str_errorData)))
        //: img.layer.cornerRadius = 8
        img.layer.cornerRadius = 8
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: img.isHidden = true
        img.isHidden = true
        //: self.addSubview(img)
        self.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var mfBeanLB: UILabel = {
    private lazy var mfBeanLB: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 12)
        label.font = .pingfang(type: .Medium, fontSize: 12)
        //: label.textColor = .white
        label.textColor = .white
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.isHidden = true
        player.isHidden = true
        //: self.addSubview(player)
        self.addSubview(player)
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Live_countdown_bg)
        let url = ToEffectTool.default.alongError(type: .Live_countdown_bg)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_videoValue.suffix(4)) + "json " + str_equalName.replacingOccurrences(of: "transform", with: "er")))
        }
        //: return player
        return player
        //: }()
    }()

    //: private lazy var svgaNumLab: UILabel = {
    private lazy var svgaNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 20)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 20)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.textColor = UIColor(hex: "#FF2348")
        lab.textColor = UIColor(hex: (String(str_addName.prefix(7))))
        //: self.addSubview(lab)
        self.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var msgCountLab: UILabel = {
    private lazy var msgCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#35C759")
        lab.backgroundColor = UIColor(hex: (String(str_drownAvailableTitle) + str_atLayerUserValue.replacingOccurrences(of: "content", with: "9")))
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 11)
        lab.font = UIFont.pingfang(type: .Medium, fontSize: 11)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.layer.cornerRadius = 8
        lab.layer.cornerRadius = 8
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.addSubview(lab)
        self.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(renderView).offset(4)
            make.top.equalTo(renderView).offset(4)
            //: make.trailing.equalTo(renderView).offset(-4)
            make.trailing.equalTo(renderView).offset(-4)
            //: make.height.width.equalTo(16)
            make.height.width.equalTo(16)
        }
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLiveMiniView {
extension LiveThen {
    /// 构建视频小窗口
    //: static func buildLiveMiniView() -> TalkingLiveMiniView {
    static func generateView() -> LiveThen {
        //: let view = TalkingLiveMiniView(frame: .zero)
        let view = LiveThen(frame: .zero)
        //: let position = TalkingSocketManager.shared.liveMiniPosition
        let position = DeviceSocketDelegate.shared.liveMiniPosition
        //: let x = (position.x == 0) ? position.x : position.x-view.bounds.size.width
        let x = (position.x == 0) ? position.x : position.x - view.bounds.size.width
        //: var y = position.y
        var y = position.y
        //: y = max(0, y)
        y = max(0, y)
        //: y = min(ScreenHeight-view.bounds.size.height, y)
        y = min(kLet_clickData - view.bounds.size.height, y)
        //: view.frame = CGRect(x: x, y: y, width: view.width, height: view.height)
        view.frame = CGRect(x: x, y: y, width: view.width, height: view.height)
        //: TalkingSocketManager.shared.containerView?.addSubview(view)
        DeviceSocketDelegate.shared.containerView?.addSubview(view)
        //: return view
        return view
    }

    /// 刷新直播小窗口
    //: func refreshMiniView() {
    func futurismOffEqual() {
        //: liveStatusImgV.isHidden = !TalkingLiveManager.shared().isLive
        liveStatusImgV.isHidden = !UserPushListener.sexApp().isLive
        //: svgaPlayer.isHidden = !liveStatusImgV.isHidden
        svgaPlayer.isHidden = !liveStatusImgV.isHidden
        //: svgaNumLab.isHidden = !liveStatusImgV.isHidden
        svgaNumLab.isHidden = !liveStatusImgV.isHidden
    }
}

// MARK: - 通知事件

//: extension TalkingLiveMiniView {
extension LiveThen {
    //: private func addNotification() {
    private func mix() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(pointchange(notification:)),
                                               selector: #selector(me(notification:)),
                                               //: name: LIVE_USER_POINT_CHANGE,
                                               name: kLet_statusText,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc private func pointchange(notification: NSNotification) {
    @objc private func me(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: guard let mfBean = userinfo["mfBean"] as? Double else { return }
        guard let mfBean = userinfo[(String(str_appModelName.prefix(6)))] as? Double else { return }
        //: setPointText(mfBean: mfBean)
        beanPlace(mfBean: mfBean)
    }

    //: func setPointText(mfBean: Double) {
    func beanPlace(mfBean: Double) {
        //: let nowBean = EqualThen.share.loginUserMode.mf_bean + mfBean
        let nowBean = EqualThen.share.loginUserMode.mf_bean + mfBean
        //: EqualThen.share.loginUserMode.mf_bean = nowBean
        EqualThen.share.loginUserMode.mf_bean = nowBean
        //: let dol = nowBean/20 + 0.1
        let dol = nowBean / 20 + 0.1
        //: let dod = Double(floor(pow(10.0, Double(1)) * dol)/pow(10.0, Double(1)))
        let dod = Double(floor(pow(10.0, Double(1)) * dol) / pow(10.0, Double(1)))
        //: let divisor = String(format: "%.1f", dod)
        let divisor = String(format: "%.1f", dod)
        //: mfBeanLB.text = "\(Int(nowBean))\("points\n≈ $".localized) \(divisor)"
        mfBeanLB.text = "\(Int(nowBean))\((str_makeContent.replacingOccurrences(of: "lab", with: "n") + "s\n\u{2248} $").localized) \(divisor)"
        //: shadowImg.isHidden = false
        shadowImg.isHidden = false
    }
}

// MARK: - Layout

//: extension TalkingLiveMiniView {
extension LiveThen {
    //: private func setupSubViewsConstraint() {
    private func magnitudeeraction() {
        //: bounds = CGRect(x: 0, y: 0, width: 88, height: 127)
        bounds = CGRect(x: 0, y: 0, width: 88, height: 127)

        //: shadowView.snp.makeConstraints { make in
        shadowView.snp.makeConstraints { make in
            //: make.edges.equalTo(UIEdgeInsets(top: 6, left: 6, bottom: 6, right: 6))
            make.edges.equalTo(UIEdgeInsets(top: 6, left: 6, bottom: 6, right: 6))
        }

        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.edges.equalTo(shadowView)
            make.edges.equalTo(shadowView)
        }

        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
            //: make.edges.equalTo(shadowView)
            make.edges.equalTo(shadowView)
        }

        //: let text: NSString = liveStatusImgV.titleLabel?.text as? NSString ?? ""
        let text: NSString = liveStatusImgV.titleLabel?.text as? NSString ?? ""
        //: let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.pingfangWithDiameter(fontSize: 12)], context: nil)
        let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.pingfangWithDiameter(fontSize: 12)], context: nil)

        //: liveStatusImgV.snp.makeConstraints { make in
        liveStatusImgV.snp.makeConstraints { make in
            //: make.leading.top.equalTo(renderView).offset(3)
            make.leading.top.equalTo(renderView).offset(3)
            //: make.width.equalTo(rect.width + 20)
            make.width.equalTo(rect.width + 20)
        }

        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }
        //: svgaNumLab.snp.makeConstraints { make in
        svgaNumLab.snp.makeConstraints { make in
            //: make.center.width.height.equalTo(svgaPlayer)
            make.center.width.height.equalTo(svgaPlayer)
        }

        //: shadowImg.snp.makeConstraints { make in
        shadowImg.snp.makeConstraints { make in
            //: make.leading.trailing.equalTo(shadowView)
            make.leading.trailing.equalTo(shadowView)
            //: make.height.equalTo(33)
            make.height.equalTo(33)
            //: make.bottom.equalTo(-6)
            make.bottom.equalTo(-6)
        }
        //: mfBeanLB.snp.makeConstraints { make in
        mfBeanLB.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.bottom.equalTo(-6)
            make.bottom.equalTo(-6)
        }
    }
}
