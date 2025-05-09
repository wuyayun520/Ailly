
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_videoPhoneInfoValue:[UInt8] = [0x52,0x57,0x52,0x5d,0x11,0x4c,0x58,0x4d,0x4e,0x5b,0x23,0x12,0x9,0x51,0x4a,0x5c,0x9,0x57,0x58,0x5d,0x9,0x4b,0x4e,0x4e,0x57,0x9,0x52,0x56,0x59,0x55,0x4e,0x56,0x4e,0x57,0x5d,0x4e,0x4d]

fileprivate func managerExecute(red num: UInt8) -> UInt8 {
    let value = Int(num) + 23
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "female_bg_random" :*/
fileprivate let str_rowName:[Character] = ["f","e","m","a","l","e","_","b","g","_","r"]
fileprivate let str_viewLabText:[Character] = ["a","n","d","o","m"]

/*: "Random" :*/
fileprivate let str_firstName:String = "Randowith view"
fileprivate let str_toData:String = "M"

/*: "get json error" :*/
fileprivate let str_viewText:[Character] = ["g","e","t"," ","j","s","o","n"," ","e","r","r","o"]
fileprivate let str_frontData:String = "length"

/*: "btn_female_randomvideo_nor" :*/
fileprivate let str_toName:[Character] = ["b","t","n","_","f","e","m","a","l","e","_","r","a","n","d","o","m","v","i","d","e"]
fileprivate let str_blockCallText:String = "o_norview manager play equal case"

/*: "All" :*/
fileprivate let str_partyText:[Character] = ["A","l","l"]

/*: "Intimate" :*/
fileprivate let str_imageValue:String = "else title guardIntimate"

/*: "randomVideo" :*/
fileprivate let str_viewTurnData:String = "requald"

/*: "#777777" :*/
fileprivate let str_indexValue:String = "#777777"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OfTargetThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/2.
//

//: import UIKit
import UIKit

//: @objc enum ChatListTopItemType: Int {
@objc enum PositionViewTopTypeListDefaultsSerializable: Int {
    //: case All = 0
    case All = 0
    //: case intimate
    case intimate
}

//: @objc protocol TalkingChatListTopItemViewDelegate: NSObjectProtocol {
@objc protocol DeepObjectProtocol: NSObjectProtocol {
    ///
    //: @objc func changeTopItem(type: ChatListTopItemType)
    @objc func acceleration(type: PositionViewTopTypeListDefaultsSerializable)
}

//: class TalkingChatListTopItemView: UIView {
class OfTargetThen: UIView {
    //: var selectButton = UIButton()
    var selectButton = UIButton()
    //: var resetButton = UIButton()
    var resetButton = UIButton()
    //: weak var delegate: TalkingChatListTopItemViewDelegate?
    weak var delegate: DeepObjectProtocol?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_videoPhoneInfoValue.map{managerExecute(red: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        customRoom()
        //: bindInteraction()
        willCurrent()
        //: addNotification()
        viewMessage()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var sliderView: UIView = {
    private lazy var sliderView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.frame = CGRect(x: 0, y: 37, width: 12, height: 4)
        view.frame = CGRect(x: 0, y: 37, width: 12, height: 4)
        //: view.backgroundColor = .black
        view.backgroundColor = .black
        //: view.layer.cornerRadius = 2
        view.layer.cornerRadius = 2
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var femaleRandomBtn: UIImageView = {
    private lazy var femaleRandomBtn: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: addSubview(img)
        addSubview(img)
        //: let image = UIImage.eponymUp(name: "female_bg_random")
        let image = UIImage.eponymUp(name: (String(str_rowName) + String(str_viewLabText)))
        //: let edgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 64)
        let edgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 64)
        //: let resizableImage = image.resizableImage(withCapInsets: edgeInsets, resizingMode: .stretch)
        let resizableImage = image.resizableImage(withCapInsets: edgeInsets, resizingMode: .stretch)
        //: img.image = image
        img.image = image
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(femaleRandomButtonClick))
        let tap = UITapGestureRecognizer(target: self, action: #selector(alongNumbereraction))
        //: img.addGestureRecognizer(tap)
        img.addGestureRecognizer(tap)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var randomLab: UILabel = {
    private lazy var randomLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Random".localized
        lab.text = (String(str_firstName.prefix(5)) + str_toData.lowercased()).localized
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 14)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 14)
        //: femaleRandomBtn.addSubview(lab)
        femaleRandomBtn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Female_Randomvideo_Enter)
        let url = ToEffectTool.default.alongError(type: .Female_Randomvideo_Enter)
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
                //: if EqualThen.share.appUserConfigMode.randomVideo == "1" {
                if EqualThen.share.appUserConfigMode.randomVideo == "1" {
                    //: player.startAnimation()
                    player.startAnimation()
                }
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_viewText) + str_frontData.replacingOccurrences(of: "length", with: "r")))
        }
        //: femaleRandomBtn.addSubview(player)
        femaleRandomBtn.addSubview(player)
        //: player.snp.makeConstraints { make in
        player.snp.makeConstraints { make in
            //: make.trailing.equalTo(randomLab.snp.leading).offset(-5)
            make.trailing.equalTo(randomLab.snp.leading).offset(-5)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.equalTo(55)
            make.width.equalTo(55)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
        //: return player
        return player
        //: }()
    }()

    //: private lazy var stopRandomImgV: UIImageView = {
    private lazy var stopRandomImgV: UIImageView = {
        //: let img = UIImageView(image: UIImage.eponymUp(name: "btn_female_randomvideo_nor"))
        let img = UIImageView(image: UIImage.eponymUp(name: (String(str_toName) + String(str_blockCallText.prefix(5)))))
        //: femaleRandomBtn.addSubview(img)
        femaleRandomBtn.addSubview(img)
        //: img.snp.makeConstraints { make in
        img.snp.makeConstraints { make in
            //: make.trailing.equalTo(randomLab.snp.leading).offset(-6)
            make.trailing.equalTo(randomLab.snp.leading).offset(-6)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(20)
            make.width.height.equalTo(20)
        }
        //: return img
        return img
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatListTopItemView {
extension OfTargetThen {
    /// 进入随机视频页按钮事件
    //: @objc private func femaleRandomButtonClick() {
    @objc private func alongNumbereraction() {
        //: let vc = TalkingFemaleStaticRandomVideoVC()
        let vc = TextViewController()
        //: getNavigationController()?.pushViewController(vc, animated: true)
        getApp()?.pushViewController(vc, animated: true)
    }

    //: func resetToSeleteAll() {
    func effectAll() {
        //: buttonItemChange(sender: resetButton)
        twinkleFile(sender: resetButton)
    }

    //: @objc private func buttonItemChange(sender: UIButton) {
    @objc private func twinkleFile(sender: UIButton) {
        //: if sender.isSelected {
        if sender.isSelected {
            //: return
            return
        }
        //: selectButton.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        selectButton.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: selectButton.isSelected = false
        selectButton.isSelected = false
        //: sender.isSelected = true
        sender.isSelected = true
        //: sender.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        sender.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 15)
        //: selectButton = sender
        selectButton = sender
        //: updateSliderViewFrame(btn: sender)
        sizeBottom(btn: sender)
        //: delegate?.changeTopItem(type: ChatListTopItemType(rawValue: sender.tag)!)
        delegate?.acceleration(type: PositionViewTopTypeListDefaultsSerializable(rawValue: sender.tag)!)
    }
}

// MARK: - Layout

//: extension TalkingChatListTopItemView {
extension OfTargetThen {
    /// 创建视图
    //: private func setupSubviews() {
    private func customRoom() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: let items = ["All".localized, "Intimate".localized]
        let items = [(String(str_partyText)).localized, (String(str_imageValue.suffix(8))).localized]
        //: var tag = ChatListTopItemType.All.rawValue
        var tag = PositionViewTopTypeListDefaultsSerializable.All.rawValue
        //: let buttonW = 70.0
        let buttonW = 70.0
        //: var buttonX: CGFloat = LanguageManager.shared.direction == .leftToRight ? -5:20
        var buttonX: CGFloat = FileReactiveCompatible.shared.direction == .leftToRight ? -5 : 20
        //: for (i, item) in items.enumerated() {
        for (i, item) in items.enumerated() {
            //: let itemButton = creatButton(item: item, type: tag)
            let itemButton = themeEqual(item: item, type: tag)
            //: addSubview(itemButton)
            addSubview(itemButton)
            //: let x = LanguageManager.shared.direction == .leftToRight ? buttonX:(MacroDefine.getScreenWidth()-buttonX-buttonW)
            let x = FileReactiveCompatible.shared.direction == .leftToRight ? buttonX : (UserMacroDefine.loadColor() - buttonX - buttonW)
            //: itemButton.frame = CGRect(x: x, y: 10, width: buttonW, height: 24)
            itemButton.frame = CGRect(x: x, y: 10, width: buttonW, height: 24)
            //: buttonX = buttonW + buttonX
            buttonX = buttonW + buttonX
            //: tag += 1
            tag += 1
            //: if i == 0 {
            if i == 0 {
                //: resetButton = itemButton
                resetButton = itemButton
                //: buttonItemChange(sender: itemButton)
                twinkleFile(sender: itemButton)
            }
        }
        //: addSubview(sliderView)
        addSubview(sliderView)
        //: updateSliderViewFrame(btn: resetButton)
        sizeBottom(btn: resetButton)

        // 随机视频入口
        //: if EqualThen.share.loginUserMode.sex == Gender.female.rawValue {
        if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue {
            //: femaleRandomBtn.isHidden = false
            femaleRandomBtn.isHidden = false
            //: } else {
        } else {
            //: femaleRandomBtn.isHidden = true
            femaleRandomBtn.isHidden = true
        }
    }

    /// 添加事件
    //: @objc private func bindInteraction() {
    @objc private func willCurrent() {
        //: guard EqualThen.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue else { return }
        //: EqualThen.share.appUserConfigMode.rx
        EqualThen.share.appUserConfigMode.rx
            //: .observeWeakly(String.self, "randomVideo")
            .observeWeakly(String.self, (str_viewTurnData.replacingOccurrences(of: "equal", with: "an") + "omVideo"))
            //: .subscribe(onNext: { [weak self] value in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if value == "1" { // 开启随机视频
                if value == "1" { // 开启随机视频
                    //: svgaPlayer.isHidden = false
                    svgaPlayer.isHidden = false
                    //: svgaPlayer.startAnimation()
                    svgaPlayer.startAnimation()
                    //: stopRandomImgV.isHidden = true
                    stopRandomImgV.isHidden = true
                    //: femaleRandomBtn.snp.remakeConstraints { make in
                    femaleRandomBtn.snp.remakeConstraints { make in
                        //: make.leading.equalTo(self.svgaPlayer.snp.leading).offset(-5)
                        make.leading.equalTo(self.svgaPlayer.snp.leading).offset(-5)
                        //: make.trailing.centerY.equalToSuperview()
                        make.trailing.centerY.equalToSuperview()
                        //: make.height.equalTo(32)
                        make.height.equalTo(32)
                    }
                    //: } else {
                } else {
                    //: svgaPlayer.isHidden = true
                    svgaPlayer.isHidden = true
                    //: svgaPlayer.stopAnimation()
                    svgaPlayer.stopAnimation()
                    //: stopRandomImgV.isHidden = false
                    stopRandomImgV.isHidden = false
                    //: femaleRandomBtn.snp.remakeConstraints { make in
                    femaleRandomBtn.snp.remakeConstraints { make in
                        //: make.leading.equalTo(self.stopRandomImgV.snp.leading).offset(-10)
                        make.leading.equalTo(self.stopRandomImgV.snp.leading).offset(-10)
                        //: make.trailing.centerY.equalToSuperview()
                        make.trailing.centerY.equalToSuperview()
                        //: make.height.equalTo(32)
                        make.height.equalTo(32)
                    }
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    /// 添加通知
    //: private func addNotification() {
    private func viewMessage() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(bindInteraction),
                                               selector: #selector(willCurrent),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: kLet_turnName,
                                               //: object: nil)
                                               object: nil)
    }

    //: private func creatButton(item: String, type: Int) -> UIButton {
    private func themeEqual(item: String, type: Int) -> UIButton {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle(item, for: .normal)
        btn.setTitle(item, for: .normal)
        //: btn.setTitleColor(UIColor(hex: "#777777"), for: .normal)
        btn.setTitleColor(UIColor(hex: (str_indexValue.capitalized)), for: .normal)
        //: btn.setTitleColor(UIColor.appTitleColor(), for: .selected)
        btn.setTitleColor(UIColor.executeTo(), for: .selected)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: btn.tag = type
        btn.tag = type
        //: btn.addTarget(self, action: #selector(buttonItemChange(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(twinkleFile(sender:)), for: .touchUpInside)
        //: return btn
        return btn
    }

    //: private func updateSliderViewFrame(btn: UIButton) {
    private func sizeBottom(btn: UIButton) {
        //: if sliderView.superview != nil {
        if sliderView.superview != nil {
            //: let transFormX = btn.frame.origin.x + (btn.frame.width-sliderView.frame.width) / 2
            let transFormX = btn.frame.origin.x + (btn.frame.width - sliderView.frame.width) / 2
            //: UIView.animate(withDuration: 0.25) {
            UIView.animate(withDuration: 0.25) {
                //: self.sliderView.transform = CGAffineTransformMakeTranslation(CGFloat(transFormX), 0)
                self.sliderView.transform = CGAffineTransformMakeTranslation(CGFloat(transFormX), 0)
            }
        }
    }
}
