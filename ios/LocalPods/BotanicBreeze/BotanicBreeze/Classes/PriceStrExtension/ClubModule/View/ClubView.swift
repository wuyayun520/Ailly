
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_attributeBackData:[UInt8] = [0x35,0x3a,0x35,0x40,0xf4,0x2f,0x3b,0x30,0x31,0x3e,0x6,0xf5,0xec,0x34,0x2d,0x3f,0xec,0x3a,0x3b,0x40,0xec,0x2e,0x31,0x31,0x3a,0xec,0x35,0x39,0x3c,0x38,0x31,0x39,0x31,0x3a,0x40,0x31,0x30]

fileprivate func equalContemporary(path num: UInt8) -> UInt8 {
    let value = Int(num) + 52
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "#F3E6FF" :*/
fileprivate let str_selectModeValue:String = "var clear#F3E6FF"

/*: "#D9E7FF" :*/
fileprivate let str_hiddenName:String = "#D9E7FFview app with make title"

/*: "Please wait. The distance is being expanded to filter the right users for you" :*/
fileprivate let str_videoValue:[UInt8] = [0x4,0x38,0x31,0x35,0x27,0x31,0x74,0x23,0x35,0x3d,0x20,0x7a,0x74,0x0,0x3c,0x31,0x74,0x30,0x3d,0x27,0x20,0x35,0x3a,0x37,0x31,0x74,0x3d,0x27,0x74,0x36,0x31,0x3d,0x3a,0x33,0x74,0x31,0x2c,0x24,0x35,0x3a,0x30,0x31,0x30,0x74,0x20,0x3b,0x74,0x32,0x3d,0x38,0x20,0x31,0x26,0x74,0x20,0x3c,0x31,0x74,0x26,0x3d,0x33,0x3c,0x20,0x74,0x21,0x27,0x31,0x26,0x27,0x74,0x32,0x3b,0x26,0x74,0x2d,0x3b,0x21]

private func letIn(star num: UInt8) -> UInt8 {
    return num ^ 84
}

/*: "icon_await" :*/
fileprivate let str_postValue:String = "icon_aself center language bottom aspect"

/*: "Get Premium" :*/
fileprivate let str_countSexText:String = "make explain content room dataGet Pr"
fileprivate let str_managerData:String = "equalmium"

/*: "Become a member now, skip the wait and discover more users instantly." :*/
fileprivate let str_cellName:[UInt8] = [0xc9,0xee,0xe8,0xe4,0xe6,0xee,0xab,0xea,0xab,0xe6,0xee,0xe6,0xe9,0xee,0xf9,0xab,0xe5,0xe4,0xfc,0xa7,0xab,0xf8,0xe0,0xe2,0xfb,0xab,0xff,0xe3,0xee,0xab,0xfc,0xea,0xe2,0xff,0xab,0xea,0xe5,0xef,0xab,0xef,0xe2,0xf8,0xe8,0xe4,0xfd,0xee,0xf9,0xab,0xe6,0xe4,0xf9,0xee,0xab,0xfe,0xf8,0xee,0xf9,0xf8,0xab,0xe2,0xe5,0xf8,0xff,0xea,0xe5,0xff,0xe7,0xf2,0xa5]

/*: "icon_hourglass" :*/
fileprivate let str_viewData:String = "status her guardicon_hou"
fileprivate let str_selectedTopTitle:[Character] = ["r","g","l","a","s","s"]

/*: "All Cards Swiped for Today!" :*/
fileprivate let str_indexDataFillText:[Character] = ["A","l","l"," ","C","a","r","d","s"," "]
fileprivate let str_numberName:String = "error with femaleSwiped"
fileprivate let str_fileText:String = "up view layer categoryoday!"

/*: "We recommend  :*/
fileprivate let str_hiddenTitle:[Character] = ["W","e"," ","r","e","c","o","m","m","e","n"]
fileprivate let str_dateText:[Character] = ["d"," "]

/*:  new friends for you daily." :*/
fileprivate let str_buttonValue:String = "return real size new"
fileprivate let str_firstValue:String = "nds fostop succeed new to succeed"
fileprivate let str_viewName:String = "false to top center varaily."

/*: "&type=0" :*/
fileprivate let str_tagName:[Character] = ["&","t","y","p","e"]
fileprivate let str_cameraData:String = "=after"

/*: "%02d" :*/
fileprivate let str_insideValue:String = "%02dcollection row name model true"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClubView.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2025/3/24.
//

//: import UIKit
import UIKit

//: class TalkingClubCardSwipedFinishView: UIView {
class ClubView: UIView {
    //: var countdownBlock: (() -> Void)?
    var countdownBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        setupLive()
        //: setupSubViewsConstraint()
        setupThroughQuantification()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_attributeBackData.map{equalContemporary(path: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bglayer: CAGradientLayer = {
    private lazy var bglayer: CAGradientLayer = {
        // 渐变色
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight)
        layer.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData - kLet_viewDepthText)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0.5)
        layer.startPoint = CGPoint(x: 0.5, y: 0.5)
        //: layer.endPoint = CGPoint(x: 1, y: 1)
        layer.endPoint = CGPoint(x: 1, y: 1)
        //: layer.colors = [UIColor(hex: "#F3E6FF")!.cgColor, UIColor(hex: "#D9E7FF")!.cgColor]
        layer.colors = [UIColor(hex: (String(str_selectModeValue.suffix(7))))!.cgColor, UIColor(hex: (String(str_hiddenName.prefix(7))))!.cgColor]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var vipContentLab: UILabel = {
    private lazy var vipContentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Please wait. The distance is being expanded to filter the right users for you"
        lab.text = String(bytes: str_videoValue.map{letIn(star: $0)}, encoding: .utf8)!
        //: lab.textColor = .appTitleColor()
        lab.textColor = .executeTo()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 20)
        lab.font = UIFont.pingfang(type: .Medium, fontSize: 20)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.isHidden = true
        lab.isHidden = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var vipImageV: UIImageView = {
    private lazy var vipImageV: UIImageView = {
        //: let v = UIImageView(image: UIImage.eponymUp(name: "icon_await"))
        let v = UIImageView(image: UIImage.eponymUp(name: (String(str_postValue.prefix(6)) + "wait")))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var premiumBtn: UIButton = {
    private lazy var premiumBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Get Premium".localized, for: .normal)
        btn.setTitle((String(str_countSexText.suffix(6)) + str_managerData.replacingOccurrences(of: "equal", with: "e")).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-50, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: kLet_cameraValue - 50, height: 50)), for: .normal)
        //: btn.addTarget(self, action: #selector(getPremiumBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(loadImage), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var normalContentLab: UILabel = {
    private lazy var normalContentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Become a member now, skip the wait and discover more users instantly."
        lab.text = String(bytes: str_cellName.map{$0^139}, encoding: .utf8)!
        //: lab.textColor = .appTitleColor()
        lab.textColor = .executeTo()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 20)
        lab.font = UIFont.pingfang(type: .Medium, fontSize: 20)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.isHidden = true
        lab.isHidden = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var normalImageV: UIImageView = {
    private lazy var normalImageV: UIImageView = {
        //: let v = UIImageView(image: UIImage.eponymUp(name: "icon_hourglass"))
        let v = UIImageView(image: UIImage.eponymUp(name: (String(str_viewData.suffix(8)) + String(str_selectedTopTitle))))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "All Cards Swiped for Today!"
        lab.text = (String(str_indexDataFillText) + String(str_numberName.suffix(6)) + " for T" + String(str_fileText.suffix(5)))
        //: lab.textColor = .appTitleColor()
        lab.textColor = .executeTo()
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 20)
        lab.font = UIFont.pingfang(type: .Semibold, fontSize: 20)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.isHidden = true
        lab.isHidden = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var subTitleLab: UILabel = {
    private lazy var subTitleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .executeTo()
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lab.font = UIFont.pingfang(type: .Regular, fontSize: 14)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.isHidden = true
        lab.isHidden = true
        //: return lab
        return lab
        //: }()
    }()

    // MARK: - 倒计时

    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer?
    //: private var remainingSeconds: Int = 0
    private var remainingSeconds: Int = 0 // 剩余秒数

    //: private lazy var countdownContainer: UIStackView = {
    private lazy var countdownContainer: UIStackView = {
        //: let stack = UIStackView()
        let stack = UIStackView()
        //: stack.axis = .horizontal
        stack.axis = .horizontal
        //: stack.spacing = 4
        stack.spacing = 4
        //: stack.alignment = .center
        stack.alignment = .center
        //: stack.distribution = .fill
        stack.distribution = .fill
        //: stack.isHidden = true
        stack.isHidden = true
        //: return stack
        return stack
        //: }()
    }()

    //: private func createNumberLabel() -> UILabel {
    private func scrapeValueCallLabel() -> UILabel {
        //: let label = UILabel()
        let label = UILabel()
        //: label.textColor = .appTitleColor()
        label.textColor = .executeTo()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 20)
        label.font = .pingfang(type: .Medium, fontSize: 20)
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.backgroundColor = .white
        label.backgroundColor = .white
        //: label.layer.cornerRadius = 5
        label.layer.cornerRadius = 5
        //: label.layer.borderColor = UIColor.appThemeColor().cgColor
        label.layer.borderColor = UIColor.plaster().cgColor
        //: label.layer.borderWidth = 1
        label.layer.borderWidth = 1
        //: label.clipsToBounds = true
        label.clipsToBounds = true
        //: label.widthAnchor.constraint(equalToConstant: 38).isActive = true
        label.widthAnchor.constraint(equalToConstant: 38).isActive = true
        //: label.heightAnchor.constraint(equalToConstant: 42).isActive = true
        label.heightAnchor.constraint(equalToConstant: 42).isActive = true
        //: return label
        return label
    }

    //: private func createColonLabel() -> UILabel {
    private func rowLabel() -> UILabel {
        //: let label = UILabel()
        let label = UILabel()
        //: label.textColor = .appTitleColor()
        label.textColor = .executeTo()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 20)
        label.font = .pingfang(type: .Medium, fontSize: 20)
        //: label.text = ":"
        label.text = ":"
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
    }

    //: private lazy var timeLabels: [UILabel] = {
    private lazy var timeLabels: [UILabel] = {
        //: var labels: [UILabel] = []
        var labels: [UILabel] = []
        // Hours
        //: labels.append(createNumberLabel())
        labels.append(scrapeValueCallLabel())
        //: labels.append(createNumberLabel())
        labels.append(scrapeValueCallLabel())
        // Colon
        //: labels.append(createColonLabel())
        labels.append(rowLabel())
        // Minutes
        //: labels.append(createNumberLabel())
        labels.append(scrapeValueCallLabel())
        //: labels.append(createNumberLabel())
        labels.append(scrapeValueCallLabel())
        // Colon
        //: labels.append(createColonLabel())
        labels.append(rowLabel())
        // Seconds
        //: labels.append(createNumberLabel())
        labels.append(scrapeValueCallLabel())
        //: labels.append(createNumberLabel())
        labels.append(scrapeValueCallLabel())
        //: return labels
        return labels
        //: }()
    }()

    //: deinit {
    deinit {
        //: countdownTimer?.invalidate()
        countdownTimer?.invalidate()
        //: countdownTimer = nil
        countdownTimer = nil
    }
}

// MARK: - Event

//: extension TalkingClubCardSwipedFinishView {
extension ClubView {
    /// 刷新用户滑完卡片的视图
    /// - Parameters:
    ///   - limitNum: 新卡片数量
    ///   - expire: 等待时间
    //: func show(limitNum: Int?, expire: Int?) {
    func anyLimitExpire(limitNum: Int?, expire: Int?) {
        //: self.isHidden = false
        self.isHidden = false
        //: if EqualThen.share.loginUserMode.loungePlus {
        if EqualThen.share.loginUserMode.loungePlus { // 会员
            //: vipImageV.isHidden = false
            vipImageV.isHidden = false
            //: vipContentLab.isHidden = false
            vipContentLab.isHidden = false

            //: } else {
        } else { // 非会员
            //: premiumBtn.isHidden = false
            premiumBtn.isHidden = false
            //: normalContentLab.isHidden = false
            normalContentLab.isHidden = false
            //: normalImageV.isHidden = false
            normalImageV.isHidden = false
            //: if let num = limitNum {
            if let num = limitNum {
                //: titleLab.isHidden = false
                titleLab.isHidden = false
                //: subTitleLab.isHidden = false
                subTitleLab.isHidden = false
                //: subTitleLab.text = "We recommend \(num) new friends for you daily."
                subTitleLab.text = (String(str_hiddenTitle) + String(str_dateText)) + "\(num)" + (String(str_buttonValue.suffix(4)) + " frie" + String(str_firstValue.prefix(6)) + "r you d" + String(str_viewName.suffix(5)))
            }

            //: if let expire = expire {
            if let expire = expire {
                //: remainingSeconds = expire
                remainingSeconds = expire
                //: countdownContainer.isHidden = false
                countdownContainer.isHidden = false
                //: addSubview(countdownContainer)
                addSubview(countdownContainer)
                //: timeLabels.forEach { label in
                for label in timeLabels {
                    //: countdownContainer.addArrangedSubview(label)
                    countdownContainer.addArrangedSubview(label)
                }
                //: countdownContainer.snp.makeConstraints { make in
                countdownContainer.snp.makeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.top.equalTo(subTitleLab.snp.bottom).offset(27)
                    make.top.equalTo(subTitleLab.snp.bottom).offset(27)
                }

                //: startCountdown()
                beforeData()
            }
        }
    }

    /// 隐藏当前视图
    //: func dismiss() {
    func reasonOff() {
        //: self.isHidden = true
        self.isHidden = true
    }

    /// 订阅按钮点击事件
    //: @objc func getPremiumBtnClick() {
    @objc func loadImage() {
        //: EditTextThen.share.func__pushToSubscribeAlert(appendParams: "&type=0")
        EditTextThen.share.addShowParams(appendParams: (String(str_tagName) + str_cameraData.replacingOccurrences(of: "after", with: "0")))
    }

    /// 开始倒计时
    //: private func startCountdown() {
    private func beforeData() {
        //: updateTimeLabel()
        textBy()
        //: countdownTimer?.invalidate()
        countdownTimer?.invalidate()
        //: countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
        countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
            //: self?.updateTimeLabel()
            self?.textBy()
        }
    }

    /// 更新时间
    //: private func updateTimeLabel() {
    private func textBy() {
        //: if remainingSeconds <= 0 {
        if remainingSeconds <= 0 {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
            //: countdownContainer.isHidden = true
            countdownContainer.isHidden = true
            //: self.dismiss()
            self.reasonOff()
            //: self.countdownBlock?()
            self.countdownBlock?()
            //: return
            return
        }

        //: let hours = remainingSeconds / 3600
        let hours = remainingSeconds / 3600
        //: let minutes = (remainingSeconds % 3600) / 60
        let minutes = (remainingSeconds % 3600) / 60
        //: let seconds = remainingSeconds % 60
        let seconds = remainingSeconds % 60

        //: let timeComponents = [
        let timeComponents = [
            //: String(format: "%02d", hours),
            String(format: "%02d", hours),
            //: String(format: "%02d", minutes),
            String(format: "%02d", minutes),
            //: String(format: "%02d", seconds)
            String(format: "%02d", seconds),
        ]

        //: var digitIndex = 0
        var digitIndex = 0
        //: for (_, label) in timeLabels.enumerated() {
        for (_, label) in timeLabels.enumerated() {
            //: if label.text != ":" {
            if label.text != ":" {
                //: let timeComponent = timeComponents[digitIndex / 2]
                let timeComponent = timeComponents[digitIndex / 2]
                //: let digit = String(timeComponent[timeComponent.index(timeComponent.startIndex, offsetBy: digitIndex % 2)])
                let digit = String(timeComponent[timeComponent.index(timeComponent.startIndex, offsetBy: digitIndex % 2)])
                //: label.text = digit
                label.text = digit
                //: digitIndex += 1
                digitIndex += 1
            }
        }
        //: remainingSeconds -= 1
        remainingSeconds -= 1
    }
}

// MARK: - Layout

//: extension TalkingClubCardSwipedFinishView {
extension ClubView {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupLive() {
        //: self.layer.addSublayer(bglayer)
        self.layer.addSublayer(bglayer)
        //: self.addSubview(vipContentLab)
        self.addSubview(vipContentLab)
        //: self.addSubview(vipImageV)
        self.addSubview(vipImageV)
        //: self.addSubview(premiumBtn)
        self.addSubview(premiumBtn)
        //: addSubview(normalContentLab)
        addSubview(normalContentLab)
        //: addSubview(normalImageV)
        addSubview(normalImageV)
        //: addSubview(titleLab)
        addSubview(titleLab)
        //: addSubview(subTitleLab)
        addSubview(subTitleLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func setupThroughQuantification() {
        //: vipContentLab.snp.makeConstraints { make in
        vipContentLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(self.snp.centerY)
            make.top.equalTo(self.snp.centerY)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
        }

        //: vipImageV.snp.makeConstraints { make in
        vipImageV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(vipContentLab.snp.top)
            make.bottom.equalTo(vipContentLab.snp.top)
            //: make.width.equalTo(146)
            make.width.equalTo(146)
            //: make.height.equalTo(152)
            make.height.equalTo(152)
        }

        //: premiumBtn.snp.makeConstraints { make in
        premiumBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-50)
            make.bottom.equalToSuperview().offset(-50)
            //: make.leading.equalTo(25)
            make.leading.equalTo(25)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: normalContentLab.snp.makeConstraints { make in
        normalContentLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(premiumBtn.snp.top).offset(-30)
            make.bottom.equalTo(premiumBtn.snp.top).offset(-30)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
        }

        //: normalImageV.snp.makeConstraints { make in
        normalImageV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(normalContentLab.snp.top).offset(-40)
            make.bottom.equalTo(normalContentLab.snp.top).offset(-40)
            //: make.width.equalTo(185)
            make.width.equalTo(185)
            //: make.height.equalTo(221)
            make.height.equalTo(221)
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+60)
            make.top.equalTo(kLet_timeSenseValue + 60)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: subTitleLab.snp.makeConstraints { make in
        subTitleLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(12)
            make.top.equalTo(titleLab.snp.bottom).offset(12)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
