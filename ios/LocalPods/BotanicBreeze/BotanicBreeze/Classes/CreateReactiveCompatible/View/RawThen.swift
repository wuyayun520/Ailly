
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeData:[UInt8] = [0xc1,0xc6,0xc1,0xdc,0x80,0xcb,0xc7,0xcc,0xcd,0xda,0x92,0x81,0x88,0xc0,0xc9,0xdb,0x88,0xc6,0xc7,0xdc,0x88,0xca,0xcd,0xcd,0xc6,0x88,0xc1,0xc5,0xd8,0xc4,0xcd,0xc5,0xcd,0xc6,0xdc,0xcd,0xcc]

private func imageLabel(log num: UInt8) -> UInt8 {
    return num ^ 168
}

/*: "Gifts required for the photo" :*/
fileprivate let str_indexValue:[Character] = ["G","i","f","t","s"," ","r","e","q","u","i","r","e","d"," ","f","o","r"," "]
fileprivate let str_layerData:String = "the pdata case data app image"

/*: "Choose a gift" :*/
fileprivate let str_attentionValue:[Character] = ["C","h","o","o","s","e"," ","a"]
fileprivate let str_intervalValue:[Character] = [" ","g","i","f","t"]

/*: "#7189F7" :*/
fileprivate let str_inviteMatchContent:[Character] = ["#","7","1","8","9","F","7"]

/*: "giftName" :*/
fileprivate let str_emptyTitle:[Character] = ["g","i","f","t","N","a","m","e"]

/*: "giftPrice" :*/
fileprivate let str_modelName:[Character] = ["g","i","f","t"]
fileprivate let str_gestureTitle:String = "Priceframe content image share"

/*: "  %@(%@ Gold coins)" :*/
fileprivate let str_valueCurrentTitle:[Character] = [" "," ","%","@","(","%","@"," ","G","o"]
fileprivate let str_toTitle:[Character] = ["l","d"," ","c","o","i","n","s",")"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RawThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/27.
//

//: import UIKit
import UIKit

//: typealias SeleteGiftBlock = (_ giftId: String) -> Void
typealias SeleteGiftBlock = (_ giftId: String) -> Void

//: class TalkingGreetPhotoTableCell: UITableViewCell {
class RawThen: UITableViewCell {
    //: var seleteGiftBlock: SeleteGiftBlock?
    var seleteGiftBlock: SeleteGiftBlock?

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: setupSubviews()
        constraintScan()
        //: setupSubViewsConstraint()
        merriment()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeData.map{imageLabel(log: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var backGiftView: UIView = {
    lazy var backGiftView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: lazy var giftLaB: UILabel = {
    lazy var giftLaB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.appTitleColor()
        LB.textColor = UIColor.executeTo()
        //: LB.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        LB.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: LB.text = "Gifts required for the photo".localized
        LB.text = (String(str_indexValue) + String(str_layerData.prefix(5)) + "hoto").localized
        //: LB.numberOfLines = 0
        LB.numberOfLines = 0
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var giftMsgBtn: UIButton = {
    lazy var giftMsgBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(.appTitleColor(), for: .normal)
        btn.setTitleColor(.executeTo(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: btn.setBackgroundColor(color: UIColor.appBgColor(), forState: .normal)
        btn.likeness(color: UIColor.imageColor(), forState: .normal)
        //: btn.layer.cornerRadius = 4
        btn.layer.cornerRadius = 4
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(chooseGiftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(priceSub), for: .touchUpInside)
        //: btn.contentHorizontalAlignment = LanguageManager.shared.direction == .rightToLeft ? .right:.left
        btn.contentHorizontalAlignment = FileReactiveCompatible.shared.direction == .rightToLeft ? .right : .left
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chooseGiftBtn: UIButton = {
    private lazy var chooseGiftBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(chooseGiftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(priceSub), for: .touchUpInside)
        //: let str = "Choose a gift".localized
        let str = (String(str_attentionValue) + String(str_intervalValue)).localized
        //: let attributes = [.foregroundColor: UIColor(hex: "#7189F7")!, .font: UIFont.pingfangFont(type: .Regular, fontSize: 15), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor(hex: (String(str_inviteMatchContent)))!, .font: UIFont.pingfang(type: .Regular, fontSize: 15), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attrS = NSAttributedString(string: str, attributes: attributes)
        let attrS = NSAttributedString(string: str, attributes: attributes)
        //: btn.setAttributedTitle(attrS, for: .normal)
        btn.setAttributedTitle(attrS, for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: CustomTitleGiftView = {
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

//: extension TalkingGreetPhotoTableCell {
extension RawThen {
    //: @objc func chooseGiftBtnClick() {
    @objc func priceSub() {
        //: func__chooseGift()
        equalMake()
    }

    //: func setGiftMsgLab(dic: Dictionary<String, Any>) {
    func style(dic: [String: Any]) {
        //: let giftName = dic["giftName"] as? String ?? ""
        let giftName = dic[(String(str_emptyTitle))] as? String ?? ""
        //: let giftPrice = dic["giftPrice"] as? Int ?? 0
        let giftPrice = dic[(String(str_modelName) + String(str_gestureTitle.prefix(5)))] as? Int ?? 0
        //: self.giftMsgBtn.setTitle("  %@(%@ Gold coins)".localizedArguments(giftName, giftPrice), for: .normal)
        self.giftMsgBtn.setTitle((String(str_valueCurrentTitle) + String(str_toTitle)).localizedArguments(giftName, giftPrice), for: .normal)
    }
}

//: extension TalkingGreetPhotoTableCell {
extension RawThen {
    //: func func__chooseGift() {
    func equalMake() {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .intimatePhoto, completion: {
        AstatineThen.share.viewSend(type: .intimatePhoto, completion: {
            //: self.func__showGiftChoiceView()
            self.sizeView()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func sizeView() {
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
            //: self.giftMsgBtn.setTitle("  %@(%@ Gold coins)".localizedArguments(giftModel.name, giftModel.price), for: .normal)
            self.giftMsgBtn.setTitle((String(str_valueCurrentTitle) + String(str_toTitle)).localizedArguments(giftModel.name, giftModel.price), for: .normal)
            //: if self.seleteGiftBlock != nil {
            if self.seleteGiftBlock != nil {
                //: self.seleteGiftBlock!(giftModel.gid)
                self.seleteGiftBlock!(giftModel.gid)
            }
        }
    }
}

//: extension TalkingGreetPhotoTableCell {
extension RawThen {
    // 添加视图
    //: private func setupSubviews() {
    private func constraintScan() {
        //: self.contentView.addSubview(backGiftView)
        self.contentView.addSubview(backGiftView)
        //: backGiftView.addSubview(giftLaB)
        backGiftView.addSubview(giftLaB)
        //: backGiftView.addSubview(giftMsgBtn)
        backGiftView.addSubview(giftMsgBtn)
        //: backGiftView.addSubview(chooseGiftBtn)
        backGiftView.addSubview(chooseGiftBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func merriment() {
        //: backGiftView.snp.makeConstraints { make in
        backGiftView.snp.makeConstraints { make in
            //: make.top.bottom.equalToSuperview()
            make.top.bottom.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
        //: giftLaB.snp.makeConstraints { make in
        giftLaB.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
        }
        //: giftMsgBtn.snp.makeConstraints { make in
        giftMsgBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(giftLaB.snp.bottom).offset(15)
            make.top.equalTo(giftLaB.snp.bottom).offset(15)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
        }
        //: chooseGiftBtn.snp.makeConstraints { make in
        chooseGiftBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(giftMsgBtn.snp.bottom).offset(6)
            make.top.equalTo(giftMsgBtn.snp.bottom).offset(6)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
    }
}
