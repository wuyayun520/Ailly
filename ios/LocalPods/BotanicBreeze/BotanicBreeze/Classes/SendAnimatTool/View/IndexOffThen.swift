
//: Declare String Begin

/*: "Need a gift to unlock" :*/
fileprivate let str_toData:[Character] = ["N","e","e","d"," ","a"," "]
fileprivate let str_tempValue:String = "giaction"
fileprivate let str_beanModeData:String = "arrayock"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_myData:[UInt8] = [0xc,0xb,0xc,0x11,0x4d,0x6,0xa,0x1,0x0,0x17,0x5f,0x4c,0x45,0xd,0x4,0x16,0x45,0xb,0xa,0x11,0x45,0x7,0x0,0x0,0xb,0x45,0xc,0x8,0x15,0x9,0x0,0x8,0x0,0xb,0x11,0x0,0x1]

private func titleRecord(dismiss num: UInt8) -> UInt8 {
    return num ^ 101
}

/*: "intimatephoto_btn_no" :*/
fileprivate let str_viewValue:String = "inuseri"
fileprivate let str_inviteValue:String = "self draftoto_btn"
fileprivate let str_yearSizeValue:[Character] = ["_","n","o"]

/*: "Burn After Reading" :*/
fileprivate let str_labData:[Character] = ["B","u","r","n"," ","A","f","t"]
fileprivate let str_backRoomData:[Character] = ["e","r"," ","R","e","a","d","i","n","g"]

/*: "Use Photo" :*/
fileprivate let str_managerData:String = "table row ifUse P"
fileprivate let str_blockValue:String = "HOTO"

/*: "Use Video" :*/
fileprivate let str_viewName:String = "normal let name titleUse Video"

/*: "intimatephoto_btn_chose" :*/
fileprivate let str_labName:[Character] = ["i","n","t","i","m"]
fileprivate let str_keyGiftTitle:String = "acosep"
fileprivate let str_sharedValue:[Character] = ["_","c","h","o","s","e"]

/*: "%@ (%@x1  %@ Gold coins)" :*/
fileprivate let str_liveValue:String = "%max (%max"
fileprivate let str_errorName:String = "@ Gopic lab"
fileprivate let str_showWithTitle:String = "detail message titleins)"

/*: "#7E6AFF" :*/
fileprivate let str_clearValue:[Character] = ["#","7","E","6","A","F","F"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexOffThen.swift
//  AbroadTalking
//
//  Created by young on 2022/12/28.
//

//: import UIKit
import UIKit

// 私密类型
//: enum IntimateInfoViewType {
enum SkinViewType {
    //: case intimatePhoto
    case intimatePhoto // 私密照片
    //: case intimateVideo
    case intimateVideo // 私密视频
}

// 当前视图高度
//: let INTIMATEINFOVIEW_H = (176+kDeviceSafeBottomHeight)
let kLet_playName = (176 + kLet_nextData)

//: typealias UseBlock = (_ isBurn: String, _ giftId: String) -> Void
typealias UseBlock = (_ isBurn: String, _ giftId: String) -> Void

//: class TalkingSendIntimateInfoView: UIView {
class IndexOffThen: UIView {
    //: var block: UseBlock?
    var block: UseBlock?
    //: private let normalGiftText = "Need a gift to unlock".localized
    private let normalGiftText = (String(str_toData) + str_tempValue.replacingOccurrences(of: "action", with: "ft") + " to un" + str_beanModeData.replacingOccurrences(of: "array", with: "l")).localized
    //: private var giftId = "0"  // 解锁礼物Id
    private var giftId = "0" // 解锁礼物Id
    //: private var type = IntimateInfoViewType.intimatePhoto
    private var type = SkinViewType.intimatePhoto // 私密类型

    //: init(frame: CGRect, type: IntimateInfoViewType) {
    init(frame: CGRect, type: SkinViewType) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = CGRect(x: 0, y: ScreenHeight-INTIMATEINFOVIEW_H, width: ScreenWidth, height: INTIMATEINFOVIEW_H)
        self.frame = CGRect(x: 0, y: kLet_clickData - kLet_playName, width: kLet_cameraValue, height: kLet_playName)
        //: self.type = type
        self.type = type

        //: setupSubviews()
        technique()
        //: setupSubViewsConstraint()
        constraintWith()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_myData.map{titleRecord(dismiss: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    // 白色背景
    //: private lazy var whiteBgV: UIView = {
    private lazy var whiteBgV: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.frame = self.bounds
        v.frame = self.bounds
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        // 剪切圆角
        //: let path = UIBezierPath(roundedRect: v.bounds, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 15, height: 15))
        let path = UIBezierPath(roundedRect: v.bounds, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 15, height: 15))
        //: let maskLayer = CAShapeLayer.init()
        let maskLayer = CAShapeLayer()
        //: maskLayer.frame = v.bounds
        maskLayer.frame = v.bounds
        //: maskLayer.path = path.cgPath
        maskLayer.path = path.cgPath
        //: v.layer.mask = maskLayer
        v.layer.mask = maskLayer
        //: return v
        return v
        //: }()
    }()

    // 阅后即焚
    //: private lazy var burnAfterReadingImgV: UIImageView = {
    private lazy var burnAfterReadingImgV: UIImageView = {
        //: let img = UIImageView(image: UIImage.eponymUp(name: "intimatephoto_btn_no"))
        let img = UIImageView(image: UIImage.eponymUp(name: (str_viewValue.replacingOccurrences(of: "user", with: "t") + "mateph" + String(str_inviteValue.suffix(7)) + String(str_yearSizeValue))))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var burnAfterReadingLab: UILabel = {
    private lazy var burnAfterReadingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.executeTo()
        //: lab.font = UIFont.outsideAllSize(fontSize: 16)
        lab.font = UIFont.outsideAllSize(fontSize: 16)
        //: lab.text = "Burn After Reading".localized
        lab.text = (String(str_labData) + String(str_backRoomData)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var burnAfterReadingBtn: UIButton = {
    private lazy var burnAfterReadingBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(burnAfterReadingButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(readingEmpty), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 私密照片
    //: private lazy var needGiftImgeV: UIImageView = {
    private lazy var needGiftImgeV: UIImageView = {
        //: let img = UIImageView(image: UIImage.eponymUp(name: "intimatephoto_btn_no"))
        let img = UIImageView(image: UIImage.eponymUp(name: (str_viewValue.replacingOccurrences(of: "user", with: "t") + "mateph" + String(str_inviteValue.suffix(7)) + String(str_yearSizeValue))))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var needGiftLab: UILabel = {
    private lazy var needGiftLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.executeTo()
        //: lab.font = UIFont.outsideAllSize(fontSize: 16)
        lab.font = UIFont.outsideAllSize(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = normalGiftText
        lab.text = normalGiftText
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var needGiftBtn: UIButton = {
    private lazy var needGiftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(needGiftButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(needPop), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 发送图片/视频
    //: private lazy var useBtn: UIButton = {
    private lazy var useBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: btn.setTitle((self.type == .intimatePhoto ? "Use Photo".localized:"Use Video".localized), for: .normal)
        btn.setTitle(self.type == .intimatePhoto ? (String(str_managerData.suffix(5)) + str_blockValue.lowercased()).localized : (String(str_viewName.suffix(9))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 220, height: 44)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: 220, height: 44)), for: .normal)
        //: btn.layer.cornerRadius = 22
        btn.layer.cornerRadius = 22
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(useButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(implement), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var giftView: TalkingChatGiftView = {
    lazy var giftView: CustomTitleGiftView = {
        //: let giftV = TalkingChatGiftView(style: .intimatePhoto, titlesArr: [.Hot])
        let giftV = CustomTitleGiftView(style: .intimatePhoto, titlesArr: [.Hot])
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData)
        //: return giftV
        return giftV
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSendIntimateInfoView {
extension IndexOffThen {
    /// 使用照片按钮点击事件
    //: @objc private func useButtonClick() {
    @objc private func implement() {
        //: guard let block = block else { return }
        guard let block = block else { return }
        //: let isBurn = burnAfterReadingBtn.isSelected ? "1":"0"
        let isBurn = burnAfterReadingBtn.isSelected ? "1" : "0"
        //: block(isBurn, giftId)
        block(isBurn, giftId)
    }

    /// 阅后即焚按钮点击事件
    //: @objc private func burnAfterReadingButtonClick() {
    @objc private func readingEmpty() {
        //: burnAfterReadingBtn.isSelected = !burnAfterReadingBtn.isSelected
        burnAfterReadingBtn.isSelected = !burnAfterReadingBtn.isSelected
        //: let imageName = burnAfterReadingBtn.isSelected ? "intimatephoto_btn_chose":"intimatephoto_btn_no"
        let imageName = burnAfterReadingBtn.isSelected ? (String(str_labName) + str_keyGiftTitle.replacingOccurrences(of: "cos", with: "t") + "hoto_btn" + String(str_sharedValue)) : (str_viewValue.replacingOccurrences(of: "user", with: "t") + "mateph" + String(str_inviteValue.suffix(7)) + String(str_yearSizeValue))
        //: burnAfterReadingImgV.image = UIImage.eponymUp(name: imageName)
        burnAfterReadingImgV.image = UIImage.eponymUp(name: imageName)
    }
}

// MARK: - 礼物

//: extension TalkingSendIntimateInfoView {
extension IndexOffThen {
    /// 需要礼物按钮点击事件
    //: @objc private func needGiftButtonClick() {
    @objc private func needPop() {
        //: guard needGiftBtn.isSelected == false else {
        guard needGiftBtn.isSelected == false else { // 还原状态
            //: needGiftImgeV.image = UIImage.eponymUp(name: "intimatephoto_btn_no")
            needGiftImgeV.image = UIImage.eponymUp(name: (str_viewValue.replacingOccurrences(of: "user", with: "t") + "mateph" + String(str_inviteValue.suffix(7)) + String(str_yearSizeValue)))
            //: needGiftBtn.isSelected = false
            needGiftBtn.isSelected = false
            //: needGiftLab.text = normalGiftText
            needGiftLab.text = normalGiftText
            //: giftId = "0"
            giftId = "0"
            //: return
            return
        }

        //: let type = (self.type == .intimatePhoto ? GiftViewStyle.intimatePhoto:GiftViewStyle.intimateVideo)
        let type = (self.type == .intimatePhoto ? AtomicTotal85Equatable.intimatePhoto : AtomicTotal85Equatable.intimateVideo)
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: type) {
        AstatineThen.share.viewSend(type: type) {
            //: self.func__showGiftChoiceView()
            self.pathByView()
        }
    }

    /// 展示礼物视图
    //: private func func__showGiftChoiceView() {
    private func pathByView() {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: EqualThen.share.loginUserMode.mf_coin)
        giftView.refresh(needReload: true, mf_coin: EqualThen.share.loginUserMode.mf_coin)
        //: self.window?.addSubview(giftView)
        self.window?.addSubview(giftView)
        //: giftView.showView()
        giftView.pointSource()
        //: giftView.okActionBlock = { [weak self] giftModel in
        giftView.okActionBlock = { [weak self] giftModel in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.needGiftBtn.isSelected = true
            self.needGiftBtn.isSelected = true
            //: self.needGiftImgeV.image = UIImage.eponymUp(name: "intimatephoto_btn_chose")
            self.needGiftImgeV.image = UIImage.eponymUp(name: (String(str_labName) + str_keyGiftTitle.replacingOccurrences(of: "cos", with: "t") + "hoto_btn" + String(str_sharedValue)))
            //: self.giftId = giftModel.gid ?? "0"
            self.giftId = giftModel.gid ?? "0"

            // 设置富文本展示
            //: let giftAttrStr = NSMutableAttributedString(string: "%@ (%@x1  %@ Gold coins)".localizedArguments(self.normalGiftText, giftModel.name, giftModel.price))
            let giftAttrStr = NSMutableAttributedString(string: (str_liveValue.replacingOccurrences(of: "max", with: "@") + "x1  %" + String(str_errorName.prefix(4)) + "ld co" + String(str_showWithTitle.suffix(4))).localizedArguments(self.normalGiftText, giftModel.name, giftModel.price))
            //: let attributes = [.foregroundColor: UIColor(hex: "#7E6AFF")!, .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor(hex: (String(str_clearValue)))!, .font: UIFont.pingfang(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            //: let range = NSRange(location: self.normalGiftText.count, length: giftAttrStr.length-self.normalGiftText.count)
            let range = NSRange(location: self.normalGiftText.count, length: giftAttrStr.length - self.normalGiftText.count)
            //: giftAttrStr.addAttributes(attributes, range: range)
            giftAttrStr.addAttributes(attributes, range: range)
            //: self.needGiftLab.attributedText = giftAttrStr
            self.needGiftLab.attributedText = giftAttrStr
        }
    }
}

// MARK: - Layout

//: extension TalkingSendIntimateInfoView {
extension IndexOffThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func technique() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear

        //: self.addSubview(whiteBgV)
        self.addSubview(whiteBgV)
        //: whiteBgV.addSubview(burnAfterReadingImgV)
        whiteBgV.addSubview(burnAfterReadingImgV)
        //: whiteBgV.addSubview(burnAfterReadingLab)
        whiteBgV.addSubview(burnAfterReadingLab)
        //: whiteBgV.addSubview(burnAfterReadingBtn)
        whiteBgV.addSubview(burnAfterReadingBtn)
        //: if EqualThen.share.loginUserMode.status != 1 &&
        if EqualThen.share.loginUserMode.status != 1,
           //: EqualThen.share.loginUserMode.sex == Gender.female.rawValue {
           EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue
        { // 非审核账号 && 只有女性用户侧才能索要礼物
            //: whiteBgV.addSubview(needGiftImgeV)
            whiteBgV.addSubview(needGiftImgeV)
            //: whiteBgV.addSubview(needGiftLab)
            whiteBgV.addSubview(needGiftLab)
            //: whiteBgV.addSubview(needGiftBtn)
            whiteBgV.addSubview(needGiftBtn)
        }
        //: whiteBgV.addSubview(useBtn)
        whiteBgV.addSubview(useBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func constraintWith() {
        //: burnAfterReadingImgV.snp.makeConstraints { make in
        burnAfterReadingImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(28)
            make.top.equalTo(28)
            //: make.size.equalTo(CGSize(width: 20, height: 20))
            make.size.equalTo(CGSize(width: 20, height: 20))
        }
        //: burnAfterReadingLab.snp.makeConstraints { make in
        burnAfterReadingLab.snp.makeConstraints { make in
            //: make.leading.equalTo(burnAfterReadingImgV.snp.trailing).offset(8)
            make.leading.equalTo(burnAfterReadingImgV.snp.trailing).offset(8)
            //: make.top.height.equalTo(burnAfterReadingImgV)
            make.top.height.equalTo(burnAfterReadingImgV)
            //: make.trailing.equalToSuperview().offset(-5)
            make.trailing.equalToSuperview().offset(-5)
        }
        //: burnAfterReadingBtn.snp.makeConstraints { make in
        burnAfterReadingBtn.snp.makeConstraints { make in
            //: make.leading.top.equalTo(burnAfterReadingImgV)
            make.leading.top.equalTo(burnAfterReadingImgV)
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
            //: make.height.equalTo(40)
            make.height.equalTo(40)
        }

        //: if EqualThen.share.loginUserMode.status != 1 &&
        if EqualThen.share.loginUserMode.status != 1,
           //: EqualThen.share.loginUserMode.sex == Gender.female.rawValue {
           EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue
        { // 非审核账号 && 只有女性用户侧才能索要礼物
            //: needGiftImgeV.snp.makeConstraints { make in
            needGiftImgeV.snp.makeConstraints { make in
                //: make.top.equalTo(burnAfterReadingImgV.snp.bottom).offset(20)
                make.top.equalTo(burnAfterReadingImgV.snp.bottom).offset(20)
                //: make.leading.size.equalTo(burnAfterReadingImgV)
                make.leading.size.equalTo(burnAfterReadingImgV)
            }
            //: needGiftLab.snp.makeConstraints { make in
            needGiftLab.snp.makeConstraints { make in
                //: make.leading.trailing.equalTo(burnAfterReadingLab)
                make.leading.trailing.equalTo(burnAfterReadingLab)
                //: make.top.equalTo(needGiftBtn).offset(-2)
                make.top.equalTo(needGiftBtn).offset(-2)
            }
            //: needGiftBtn.snp.makeConstraints { make in
            needGiftBtn.snp.makeConstraints { make in
                //: make.leading.top.equalTo(needGiftImgeV)
                make.leading.top.equalTo(needGiftImgeV)
                //: make.trailing.height.equalTo(burnAfterReadingBtn)
                make.trailing.height.equalTo(burnAfterReadingBtn)
            }
        }

        //: useBtn.snp.makeConstraints { make in
        useBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-20-kDeviceSafeBottomHeight)
            make.bottom.equalToSuperview().offset(-20 - kLet_nextData)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 220, height: 44))
            make.size.equalTo(CGSize(width: 220, height: 44))
        }
    }
}
