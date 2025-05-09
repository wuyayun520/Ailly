
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_normalValue:[UInt8] = [0xfa,0xfd,0xfa,0xe7,0xbb,0xf0,0xfc,0xf7,0xf6,0xe1,0xa9,0xba,0xb3,0xfb,0xf2,0xe0,0xb3,0xfd,0xfc,0xe7,0xb3,0xf1,0xf6,0xf6,0xfd,0xb3,0xfa,0xfe,0xe3,0xff,0xf6,0xfe,0xf6,0xfd,0xe7,0xf6,0xf7]

private func colorPushBlock(cloud num: UInt8) -> UInt8 {
    return num ^ 147
}

/*: "#DCDCD" :*/
fileprivate let str_logData:[Character] = ["#","D","C","D","C","D"]

/*: "Reply" :*/
fileprivate let str_rawData:String = "path beyond picReply"

/*: "btn_delete" :*/
fileprivate let str_labText:[Character] = ["b","t","n","_","d"]
fileprivate let str_actualTitle:[Character] = ["e","l","e","t","e"]

/*: "text" :*/
fileprivate let str_winValue:String = "allexall"

/*: "gift" :*/
fileprivate let str_withData:[Character] = ["g","i","f","t"]

/*: "Sent " :*/
fileprivate let str_okValue:String = "Sent white self"

/*: " x :*/
fileprivate let str_playerContent:[Character] = [" ","x"]

/*: "audio" :*/
fileprivate let str_checkText:String = "AUDIO"

/*: "[Audio]" :*/
fileprivate let str_approvalName:String = "[Audio]model case"

/*: "img" :*/
fileprivate let str_equallyName:String = "mainmg"

/*: "[Image]" :*/
fileprivate let str_timeData:[Character] = ["[","I","m","a","g","e"]
fileprivate let str_tableContent:[Character] = ["]"]

/*: "video" :*/
fileprivate let str_valueContent:String = "vmaineo"

/*: ": [" :*/
fileprivate let str_priceText:String = ": ["

/*: "Video" :*/
fileprivate let str_borderData:String = "Videocoin false path out"

/*: "map" :*/
fileprivate let str_toContent:[Character] = ["m","a","p"]

/*: "[Location]" :*/
fileprivate let str_textTitle:[Character] = ["[","L","o"]
fileprivate let str_tableData:String = "cation]user let self"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SignalingHeadControl.swift
//  BotanicBreeze
//
//  Created by Hemming on 2024/7/29.
//

//: import UIKit
import UIKit

//: class InputQuoteView: UIButton {
class SignalingHeadControl: UIButton {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var closeBtnBlock: (() -> Void)?
    var closeBtnBlock: (() -> Void)?

    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        sommelier()
        //: setupSubViewsConstraint()
        number()
        //: bindInteraction()
        collectionMake()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_normalValue.map{colorPushBlock(cloud: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: lazy var lineView: UIView = {
    lazy var lineView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "#DCDCD")
        view.backgroundColor = UIColor(hex: (String(str_logData)))
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.outsideAllSize(fontSize: 14)
        lab.font = UIFont.outsideAllSize(fontSize: 14)
        //: lab.textColor = .appValueColor()
        lab.textColor = .addColor()
        //: lab.text = "Reply".localized
        lab.text = (String(str_rawData.suffix(5))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var contentLab: UILabel = {
    lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.outsideAllSize(fontSize: 14)
        lab.font = UIFont.outsideAllSize(fontSize: 14)
        //: lab.textColor = .publishView()
        lab.textColor = .publishView()
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var closeBtn: UIButton = {
    lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.eponymUp(name: "btn_delete"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_labText) + String(str_actualTitle))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: var quoteModel: AbTalkingChatMsgQuoteModel? {
    var quoteModel: StorageMediumModel? {
        //: didSet {
        didSet {
            //: guard let quoteModel = quoteModel else { return }
            guard let quoteModel = quoteModel else { return }
            //: if quoteModel.renderType == "text" {
            if quoteModel.renderType == (str_winValue.replacingOccurrences(of: "all", with: "t")) {
                //: self.contentLab.text = quoteModel.sendName + ":" + quoteModel.renderData.content
                self.contentLab.text = quoteModel.sendName + ":" + quoteModel.renderData.content
                //: } else if quoteModel.renderType == "gift" {
            } else if quoteModel.renderType == (String(str_withData)) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "Sent ".localized + quoteModel.renderData.giftNameLocal() + " x\(quoteModel.renderData.giftNum)"
                self.contentLab.text = quoteModel.sendName + ":" + (String(str_okValue.prefix(5))).localized + quoteModel.renderData.coriolisEffectLocal() + " x\(quoteModel.renderData.giftNum)"
                //: } else if quoteModel.renderType == "audio" {
            } else if quoteModel.renderType == (str_checkText.lowercased()) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "[Audio]".localized
                self.contentLab.text = quoteModel.sendName + ":" + (String(str_approvalName.prefix(7))).localized
                //: } else if quoteModel.renderType == "img" {
            } else if quoteModel.renderType == (str_equallyName.replacingOccurrences(of: "main", with: "i")) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "[Image]".localized
                self.contentLab.text = quoteModel.sendName + ":" + (String(str_timeData) + String(str_tableContent)).localized
                //: } else if quoteModel.renderType == "video" {
            } else if quoteModel.renderType == (str_valueContent.replacingOccurrences(of: "main", with: "id")) {
                //: self.contentLab.text = quoteModel.sendName + ": [" + "Video".localized + "]"
                self.contentLab.text = quoteModel.sendName + ": [" + (String(str_borderData.prefix(5))).localized + "]"
                //: }else if quoteModel.renderType == "map" {
            } else if quoteModel.renderType == (String(str_toContent)) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "[Location]".localized
                self.contentLab.text = quoteModel.sendName + ":" + (String(str_textTitle) + String(str_tableData.prefix(7))).localized
            }
        }
    }
}

// MARK: - Layout

//: extension InputQuoteView {
extension SignalingHeadControl {
    /// 添加视图
    //: private func setupSubviews() {
    private func sommelier() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(titleLab)
        self.addSubview(titleLab)
        //: self.addSubview(contentLab)
        self.addSubview(contentLab)
        //: self.addSubview(lineView)
        self.addSubview(lineView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func number() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.trailing).offset(6)
            make.leading.equalTo(titleLab.snp.trailing).offset(6)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.lessThanOrEqualTo(-42)
            make.trailing.lessThanOrEqualTo(-42)
        }
        //: lineView.snp.makeConstraints { make in
        lineView.snp.makeConstraints { make in
            //: make.trailing.equalToSuperview().offset(-32)
            make.trailing.equalToSuperview().offset(-32)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.width.equalTo(1)
            make.width.equalTo(1)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(lineView.snp.trailing)
            make.leading.equalTo(lineView.snp.trailing)
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func collectionMake() {
        //: closeBtn.rx.controlEvent(.touchUpInside)
        closeBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.closeBtnBlock?()
                self.closeBtnBlock?()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
