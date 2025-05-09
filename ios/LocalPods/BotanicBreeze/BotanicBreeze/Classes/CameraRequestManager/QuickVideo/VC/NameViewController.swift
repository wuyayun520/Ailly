
//: Declare String Begin

/*: "#33005B" :*/
fileprivate let str_jumpName:String = "#picture"
fileprivate let str_attributeText:String = "3005Btype combine section text"

/*: "#322870" :*/
fileprivate let str_eachCloudVarData:[Character] = ["#","3","2","2","8","7","0"]

/*: "Tap to start video chatting" :*/
fileprivate let str_refuseInfoData:String = "equal video awakeTap t"
fileprivate let str_userValue:String = "show ok if inart v"
fileprivate let str_midInviteValue:String = "chalabellabeli"
fileprivate let str_endText:String = "pushg"

/*: "icon_views_number" :*/
fileprivate let str_viewTitle:[Character] = ["i","c","o","n","_","v","i","e","w"]
fileprivate let str_specialValue:String = "view apps_number"

/*: "icon_lounge" :*/
fileprivate let str_popData:[Character] = ["i","c","o","n","_","l","o","u","n"]
fileprivate let str_pointIndexValue:String = "gequal"

/*: "icon_rank_coin" :*/
fileprivate let str_frameValue:String = "free to height withicon_"
fileprivate let str_messageTitle:String = "to"

/*: "vip_btn_top" :*/
fileprivate let str_errData:[Character] = ["v","i","p","_","b","t","n","_","t","o","p"]

/*: "btn_nearby_settings_nor" :*/
fileprivate let str_centerValue:String = "button ibtn_"
fileprivate let str_closeDataValue:String = "end make bottomby_s"
fileprivate let str_timeAppValue:String = "nmoder"

/*: "#F0F0F2" :*/
fileprivate let str_addLayerData:String = "#F0F0F2deadline content yes"

/*: "icon_coin_pre" :*/
fileprivate let str_studyTitle:[Character] = ["i","c","o","n","_","c","o","i","n","_"]
fileprivate let str_equalText:String = "PRE"

/*: "fee" :*/
fileprivate let str_colorValue:[Character] = ["f","e","e"]

/*: "VIPFee" :*/
fileprivate let str_giftLabData:String = "file self name collection makeVIPFee"

/*: "chattingNum" :*/
fileprivate let str_goldContent:[Character] = ["c","h","a","t","t","i","n"]
fileprivate let str_fromTitle:String = "gNumphoto self let lab manager"

/*: "get json error" :*/
fileprivate let str_dataContent:[Character] = ["g","e","t"," ","j","s","o"]
fileprivate let str_scaleData:String = "n errorapplication number conversation gift"

/*: "Free 1 min" :*/
fileprivate let str_countName:String = "Free 1as self"
fileprivate let str_normalData:[Character] = [" ","m","i","n"]

/*: "%@/min" :*/
fileprivate let str_attentionValue:String = "app voice%@/min"

/*: "%@ chatting" :*/
fileprivate let str_tableTitle:[Character] = ["%","@"," ","c","h","a","t"]
fileprivate let str_formatValue:String = "tresultng"

/*: "%@ Coins/min" :*/
fileprivate let str_addName:[Character] = ["%","@"," ","C","o","i","n","s","/"]
fileprivate let str_remainingName:String = "MIN"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameViewController.swift
//  BotanicBreeze
//
//  Created by Charlotte on 2024/4/8.
//

//: import UIKit
import UIKit

//: class TalkingMaleStaticRandomVideoVC: TalkingBaseViewController {
class NameViewController: SeamViewController {
    //: var fee = 0
    var fee = 0 // 原价
    //: var vipFee = 0
    var vipFee = 0 // VIP价格
    //: var chattingNum = 0
    var chattingNum = 0 // 当前匹配人数

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: req_updateVIPFee()
        restoreInfo()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        fromSubviews()
        //: setupSubViewsConstraint()
        errorSize()
        //: reqvideoMatchCheck()
        deathly()
        //: bindInteraction()
        performOf()
        //: setPlayer()
        toSave()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    // 视频画面渲染视图
    //: private lazy var renderView: UIView = {
    private lazy var renderView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#33005B")
        v.backgroundColor = UIColor(hex: (str_jumpName.replacingOccurrences(of: "picture", with: "3") + String(str_attributeText.prefix(5))))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var gradientBtn: UIButton = {
    private lazy var gradientBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(start_randomVideo), for: .touchUpInside)
        btn.addTarget(self, action: #selector(chart), for: .touchUpInside)
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
        layer.colors = [UIColor(white: 0, alpha: 0.15).cgColor, UIColor(hex: (String(str_eachCloudVarData)))!.cgColor]
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
        lab.text = (String(str_refuseInfoData.suffix(5)) + "o st" + String(str_userValue.suffix(5)) + "ideo " + str_midInviteValue.replacingOccurrences(of: "label", with: "t") + str_endText.replacingOccurrences(of: "push", with: "n")).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var chattingNumBtn: TalkingButton = {
    private lazy var chattingNumBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton()
        let btn = ProgressTalkingButton()
        //: btn.setImage(UIImage.eponymUp(name: "icon_views_number"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_viewTitle) + String(str_specialValue.suffix(8)))), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "icon_views_number"), for: .disabled)
        btn.setImage(UIImage.eponymUp(name: (String(str_viewTitle) + String(str_specialValue.suffix(8)))), for: .disabled)
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        btn.titleLabel?.font = UIFont.pingfang(type: .Regular, fontSize: 15)
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
        img.image = UIImage.eponymUp(name: (String(str_popData) + str_pointIndexValue.replacingOccurrences(of: "equal", with: "e")))
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
        img.image = UIImage.eponymUp(name: (String(str_frameValue.suffix(5)) + "rank_coi" + str_messageTitle.replacingOccurrences(of: "to", with: "n")))
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
        imgV.image = UIImage.eponymUp(name: (String(str_errData)))
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
        btn.addTarget(self, action: #selector(pushPlayer), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "btn_nearby_settings_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_centerValue.suffix(4)) + "near" + String(str_closeDataValue.suffix(4)) + "ettings_" + str_timeAppValue.replacingOccurrences(of: "mode", with: "o"))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var vipPriceImg: UIImageView = {
    private lazy var vipPriceImg: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image  = UIImage.eponymUp(name: "icon_rank_coin")
        imgV.image = UIImage.eponymUp(name: (String(str_frameValue.suffix(5)) + "rank_coi" + str_messageTitle.replacingOccurrences(of: "to", with: "n")))
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

    /// 余额
    //: private lazy var balanceBtn: TalkingButton = {
    private lazy var balanceBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton()
        let btn = ProgressTalkingButton()
        //: btn.backgroundColor = UIColor.init(hex: "#F0F0F2")
        btn.backgroundColor = UIColor(hex: (String(str_addLayerData.prefix(7))))
        //: btn.layer.cornerRadius = 12
        btn.layer.cornerRadius = 12
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(balanceBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sizeLoad), for: .touchUpInside)
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.eponymUp(name: "icon_coin_pre")
        img.image = UIImage.eponymUp(name: (String(str_studyTitle) + str_equalText.lowercased()))
        //: img.isUserInteractionEnabled = false
        img.isUserInteractionEnabled = false
        //: btn.addSubview(img)
        btn.addSubview(img)
        //: img.snp.makeConstraints { make in
        img.snp.makeConstraints { make in
            //: make.leading.top.bottom.equalToSuperview()
            make.leading.top.bottom.equalToSuperview()
            //: make.width.equalTo(24)
            make.width.equalTo(24)
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var balanceLB: UILabel = {
    private lazy var balanceLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.executeTo()
        //: lb.font = UIFont.boldSystemFont(ofSize: 16)
        lb.font = UIFont.boldSystemFont(ofSize: 16)
        //: lb.isUserInteractionEnabled = false
        lb.isUserInteractionEnabled = false
        //: balanceBtn.addSubview(lb)
        balanceBtn.addSubview(lb)
        //: lb.snp.makeConstraints { make in
        lb.snp.makeConstraints { make in
            //: make.trailing.equalTo(-7)
            make.trailing.equalTo(-7)
            //: make.top.equalTo(4)
            make.top.equalTo(4)
            //: make.bottom.equalTo(-4)
            make.bottom.equalTo(-4)
            //: make.leading.equalTo(29)
            make.leading.equalTo(29)
        }
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingMaleStaticRandomVideoVC {
extension NameViewController {
    //: @objc private func reqvideoMatchCheck() {
    @objc private func deathly() {
        //: TalkingQuickVideoManager.req_videoMatchCheck(enterType: 1) { succeed, result, errorModel in
        TitleReactiveCompatible.resumeCompletion(enterType: 1) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.fee = json["fee"].intValue
            self.fee = json[(String(str_colorValue))].intValue
            //: self.vipFee = json["VIPFee"].intValue
            self.vipFee = json[(String(str_giftLabData.suffix(6)))].intValue
            //: self.chattingNum = json["chattingNum"].intValue
            self.chattingNum = json[(String(str_goldContent) + String(str_fromTitle.prefix(4)))].intValue
            //: self.refreshVideoCallPrice()
            self.refreshEqualPrice()
        }
    }

    //: private func setPlayer() {
    private func toSave() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Random_video_bg_nor )
        let url = ToEffectTool.default.alongError(type: .Random_video_bg_nor)
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
            printLog(message: (String(str_dataContent) + String(str_scaleData.prefix(7))))
        }
    }

    /// 更新VIP价格
    //: @objc private func req_updateVIPFee() {
    @objc private func restoreInfo() {
        //: TalkingQuickVideoManager.req_videoMatchCheck() { succeed, result, errorModel in
        TitleReactiveCompatible.resumeCompletion { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.vipFee = json["VIPFee"].intValue
            self.vipFee = json[(String(str_giftLabData.suffix(6)))].intValue
            //: self.refreshVideoCallPrice()
            self.refreshEqualPrice()
        }
    }
}

// MARK: - Event

//: extension TalkingMaleStaticRandomVideoVC {
extension NameViewController {
    /// 余额点击事件
    //: @objc private func balanceBtnClick() {
    @objc private func sizeLoad() {
//        EditTextThen.share.func__pushToWebVC(webViewType: .RechargeFullPage)
    }

    /// 男性侧vip价格按钮点击事件
    //: @objc private func maleVipPriceButtonClick() {
    @objc private func pushPlayer() {
        //: EditTextThen.share.func__pushToSubscribeAlert()
        EditTextThen.share.addShowParams()
    }

    /// 开始随机视频
    //: @objc private func start_randomVideo() {
    @objc private func chart() {
        //: gradientBtn.isUserInteractionEnabled = false
        gradientBtn.isUserInteractionEnabled = false
        //: EditTextThen.share.func__pushToRandomVideoVC(isBeginRand: true)
        EditTextThen.share.equalLine(isBeginRand: true)
        //: DispatchQueue.main.asyncAfter(deadline: .now()+1.0) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            //: self.gradientBtn.isUserInteractionEnabled = true
            self.gradientBtn.isUserInteractionEnabled = true
        }
    }
}

// MARK: - Layout

//: extension TalkingMaleStaticRandomVideoVC {
extension NameViewController {
    /// 刷新视频通话价格
    //: @objc private func refreshVideoCallPrice() {
    @objc private func refreshEqualPrice() {
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
                priceLab.text = (String(str_countName.prefix(6)) + String(str_normalData)).localized
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
            priceLab.text = (String(str_attentionValue.suffix(6))).localizedArguments(price)

            //: let attr = NSMutableAttributedString(string: "%@/min".localizedArguments(price), attributes: [.strikethroughStyle : NSUnderlineStyle.single.rawValue, .foregroundColor: UIColor.white.withAlphaComponent(0.5), .font: UIFont.pingfangWithDiameter(fontSize: 10)])
            let attr = NSMutableAttributedString(string: (String(str_attentionValue.suffix(6))).localizedArguments(price), attributes: [.strikethroughStyle: NSUnderlineStyle.single.rawValue, .foregroundColor: UIColor.white.withAlphaComponent(0.5), .font: UIFont.pingfangWithDiameter(fontSize: 10)])
            //: norPriceLab.attributedText = attr
            norPriceLab.attributedText = attr

            //: vipPriceBtn.isHidden = EqualThen.share.loginUserMode.loungePlus
            vipPriceBtn.isHidden = EqualThen.share.loginUserMode.loungePlus
            //: vipTopImgView.isHidden = EqualThen.share.loginUserMode.loungePlus
            vipTopImgView.isHidden = EqualThen.share.loginUserMode.loungePlus
            //: priceStackView.isHidden = !EqualThen.share.loginUserMode.loungePlus
            priceStackView.isHidden = !EqualThen.share.loginUserMode.loungePlus
        }
        //: chattingNumBtn.setTitle("%@ chatting".localizedArguments(chattingNum), for: .normal)
        chattingNumBtn.setTitle((String(str_tableTitle) + str_formatValue.replacingOccurrences(of: "result", with: "i")).localizedArguments(chattingNum), for: .normal)
        //: vipPriceLab.text = "%@ Coins/min".localizedArguments(vipFee)
        vipPriceLab.text = (String(str_addName) + str_remainingName.lowercased()).localizedArguments(vipFee)

        //: let index = Int(Double(EqualThen.share.loginUserMode.mf_coin) ?? 0)
        let index = Int(Double(EqualThen.share.loginUserMode.mf_coin) ?? 0)
        //: balanceLB.text = "\(index)"
        balanceLB.text = "\(index)"
        //: let size = balanceLB.text?.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: balanceLB.font!], context: nil)
        let size = balanceLB.text?.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: balanceLB.font!], context: nil)
        //: balanceBtn.snp.updateConstraints { make in
        balanceBtn.snp.updateConstraints { make in
            //: make.width.equalTo(40+(size?.width ?? 10))
            make.width.equalTo(40 + (size?.width ?? 10))
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func fromSubviews() {
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

        //: view.addSubview(balanceBtn)
        view.addSubview(balanceBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func errorSize() {
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

        //: balanceBtn.snp.makeConstraints { make in
        balanceBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+8)
            make.top.equalTo(kLet_timeSenseValue + 8)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.width.equalTo(60)
            make.width.equalTo(60)
            //: make.height.equalTo(actualWidth(w: 24))
            make.height.equalTo(actualWidth(w: 24))
        }
    }

    /// 绑定事件
    //: private func bindInteraction() {
    private func performOf() {
        // index/getconfig接口回调刷新UI
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(refreshVideoCallPrice),
                                               selector: #selector(refreshEqualPrice),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: kLet_turnName,
                                               //: object: nil)
                                               object: nil)
    }
}
