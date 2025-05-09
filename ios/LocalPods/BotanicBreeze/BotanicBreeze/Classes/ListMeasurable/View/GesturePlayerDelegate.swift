
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_willData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_dongtai_dianzan_nor" :*/
fileprivate let str_resultData:String = "make definebtn_"
fileprivate let str_colorText:String = "let to returni_di"
fileprivate let str_imageBubbleRangeContent:[Character] = ["_","n","o","r"]

/*: "btn_dongtai_dianzan_nor1" :*/
fileprivate let str_viewContent:String = "voice textbtn_do"
fileprivate let str_pullOfManagerContent:String = "backgroundianza"

/*: "btn_dongtai_pinglun_nor" :*/
fileprivate let str_customValue:[Character] = ["b","t","n","_","d","o","n","g","t","a","i","_","p","i"]
fileprivate let str_recordName:String = "viewgluview"

/*: "btn_dynamic_chat_nor" :*/
fileprivate let str_voiceData:String = "string languagebtn_"
fileprivate let str_toolName:String = "ic_chnormal index effect false model"
fileprivate let str_timeName:[Character] = ["a","t","_","n","o","r"]

/*: "icon_dynamic_heart_default" :*/
fileprivate let str_bottomData:String = "icon_let succeed"
fileprivate let str_viewText:[Character] = ["d","y","n","a","m"]
fileprivate let str_makePicText:String = "ic_heasize else var"
fileprivate let str_modelValue:String = "EFAULT"

/*: "Chat" :*/
fileprivate let str_blockContent:String = "Chattop after self manager make"

/*: "#752FE9" :*/
fileprivate let str_emptyColorTitle:String = "as var make status cell#752FE9"

/*: "99+" :*/
fileprivate let str_screenTextTitle:[UInt8] = [0x3a,0x3a,0x28]

private func levelSucceed(equal num: UInt8) -> UInt8 {
    return num ^ 3
}

/*: "%d" :*/
fileprivate let str_rangeValue:[Character] = ["%","d"]

/*: "Comment" :*/
fileprivate let str_nowTopName:[Character] = ["C","o","m","m","e","n"]
fileprivate let str_userData:String = "source"

/*: "momentId" :*/
fileprivate let str_valuePopName:String = "MOMENT"
fileprivate let str_frameData:[Character] = ["I","d"]

/*: "type" :*/
fileprivate let str_partyName:[Character] = ["t","y","p","e"]

/*: "like" :*/
fileprivate let str_becomeData:String = "lirecorde"

/*: "model" :*/
fileprivate let str_renderValue:[UInt8] = [0xff,0xfd,0xf6,0xf7,0xfe]

private func locationView(array num: UInt8) -> UInt8 {
    return num ^ 146
}

/*: "get json error" :*/
fileprivate let str_blockValue:String = "disabled room giftget j"
fileprivate let str_equalStreamWithData:String = "eviewviewoview"

/*: "comment" :*/
fileprivate let str_startBackName:String = "cframeme"
fileprivate let str_positionTitle:[Character] = ["n","t"]

/*: "number" :*/
fileprivate let str_currentText:String = "numbcell"
fileprivate let str_dataTitle:String = "observer"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GesturePlayerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMomentItemBottomView: UIView {
class GesturePlayerDelegate: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var cunrrenModel = TalkingMomentModel()
    var cunrrenModel = WithMomentModel()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        setupBy()
        //: setupSubViewsConstraint()
        cardOf()
        //: bindInteraction()
        putDoing()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_willData.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var infoLB: UILabel = {
    lazy var infoLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 14)
        label.font = .pingfang(type: .Regular, fontSize: 14)
        //: label.textColor = .publishView()
        label.textColor = .publishView()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var likePlayer: SVGAPlayer = {
    lazy var likePlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.delegate = self
        player.delegate = self
        //: self.addSubview(player)
        self.addSubview(player)
        //: return player
        return player
        //: }()
    }()

    //: lazy var likeBtn: UIButton = {
    lazy var likeBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_dongtai_dianzan_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_resultData.suffix(4)) + "dongta" + String(str_colorText.suffix(4)) + "anzan" + String(str_imageBubbleRangeContent))), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "btn_dongtai_dianzan_nor1"), for: .selected)
        btn.setImage(UIImage.eponymUp(name: (String(str_viewContent.suffix(6)) + "ngtai_" + str_pullOfManagerContent.replacingOccurrences(of: "background", with: "d") + "n_nor1")), for: .selected)
        //: btn.adjustsImageWhenHighlighted = false
        btn.adjustsImageWhenHighlighted = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var likeNumberLB: UILabel = {
    lazy var likeNumberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .pingfang(type: .Regular, fontSize: 16)
        //: label.textColor = .publishView()
        label.textColor = .publishView()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var commentBtn: UIButton = {
    lazy var commentBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_dongtai_pinglun_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_customValue) + str_recordName.replacingOccurrences(of: "view", with: "n") + "_nor")), for: .normal)
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var commentNumberLB: UILabel = {
    lazy var commentNumberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .pingfang(type: .Regular, fontSize: 16)
        //: label.textColor = .publishView()
        label.textColor = .publishView()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var greetBtn: TalkingButton = {
    lazy var greetBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton.init()
        let btn = ProgressTalkingButton()
        //: let bubbleInsets = UIEdgeInsets(top: 4, left: 11, bottom: 4, right: 11)
        let bubbleInsets = UIEdgeInsets(top: 4, left: 11, bottom: 4, right: 11)
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "btn_dynamic_chat_nor").resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch), for: .normal)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_voiceData.suffix(4)) + "dynam" + String(str_toolName.prefix(5)) + String(str_timeName))).resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "icon_dynamic_heart_default"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_bottomData.prefix(5)) + String(str_viewText) + String(str_makePicText.prefix(6)) + "rt_d" + str_modelValue.lowercased())), for: .normal)
        //: btn.setTitle("Chat".localized, for: .normal)
        btn.setTitle((String(str_blockContent.prefix(4))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 14)
        btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 14)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMomentItemBottomView {
extension GesturePlayerDelegate {
    //: func configModel(model: TalkingMomentModel) {
    func tv(model: WithMomentModel) {
        //: cunrrenModel = model
        cunrrenModel = model
        //: likeBtn.isHidden = false
        likeBtn.isHidden = false
        //: likeNumberLB.isHidden = false
        likeNumberLB.isHidden = false
        //: commentBtn.isHidden = false
        commentBtn.isHidden = false
        //: commentNumberLB.isHidden = false
        commentNumberLB.isHidden = false
        //: greetBtn.isHidden = EqualThen.share.loginUserMode.sex == model.sex ||  EqualThen.share.loginUserMode.userID == model.uid
        greetBtn.isHidden = EqualThen.share.loginUserMode.sex == model.sex || EqualThen.share.loginUserMode.userID == model.uid

        //: infoLB.text = model.addTime
        infoLB.text = model.addTime
        //: likeBtn.isSelected = model.isLike!
        likeBtn.isSelected = model.isLike!
        //: likeNumberLB.textColor = model.isLike! ? UIColor.init(hex: "#752FE9") :.publishView()
        likeNumberLB.textColor = model.isLike! ? UIColor(hex: (String(str_emptyColorTitle.suffix(7)))) : .publishView()
        //: likeNumberLB.text = model.likeNum! > 99 ? "99+" : String(format: "%d", model.likeNum! )
        likeNumberLB.text = model.likeNum! > 99 ? "99+" : String(format: "%d", model.likeNum!)
        //: commentNumberLB.text = model.replyNum! > 99 ? "99+" :  model.replyNum! > 0 ? String(format: "%d", model.replyNum!) : "Comment".localized
        commentNumberLB.text = model.replyNum! > 99 ? "99+" : model.replyNum! > 0 ? String(format: "%d", model.replyNum!) : (String(str_nowTopName) + str_userData.replacingOccurrences(of: "source", with: "t")).localized
    }

    //: func likeBtnClik() {
    func firstShow() {
        //: if !likeBtn.isSelected {
        if !likeBtn.isSelected {
            //: self.req_MomentLike(type: 1)
            self.beginRequestDeadline(type: 1)
            //: self.likeplayer()
            self.everyData()
            //: }else {
        } else {
            //: req_MomentLike(type: 2)
            beginRequestDeadline(type: 2)
        }
    }

    //: func req_MomentLike(type: Int) {
    func beginRequestDeadline(type: Int) {
        //: likeBtn.isUserInteractionEnabled = false
        likeBtn.isUserInteractionEnabled = false
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = cunrrenModel.mid
        dict[(str_valuePopName.lowercased() + String(str_frameData))] = cunrrenModel.mid
        //: dict["type"] = type
        dict[(String(str_partyName))] = type

        //: TalkingMomentRequestTool.req_MomentLike(params: dict) { succeed, result, errorModel in
        StreetSmartReactiveCompatible.prod(params: dict) { succeed, _, errorModel in
            //: self.likeBtn.isUserInteractionEnabled = true
            self.likeBtn.isUserInteractionEnabled = true
            //: if succeed {
            if succeed {
                //: let isLike  =  type==1 ? true:false
                let isLike = type == 1 ? true : false
                //: var number = isLike ?  self.cunrrenModel.likeNum!+1 : self.cunrrenModel.likeNum!-1
                var number = isLike ? self.cunrrenModel.likeNum! + 1 : self.cunrrenModel.likeNum! - 1
                //: if number < 0 {
                if number < 0 {
                    //: number = 0
                    number = 0
                }
                //: self.likeBtn.isSelected = isLike
                self.likeBtn.isSelected = isLike
                //: self.cunrrenModel.isLike = isLike
                self.cunrrenModel.isLike = isLike
                //: self.cunrrenModel.likeNum = number
                self.cunrrenModel.likeNum = number
                //: self.likeNumberLB.text = String(format: "%d", number)
                self.likeNumberLB.text = String(format: "%d", number)
                //: self.likeNumberLB.textColor = isLike ? UIColor.init(hex: "#752FE9") :.publishView()
                self.likeNumberLB.textColor = isLike ? UIColor(hex: (String(str_emptyColorTitle.suffix(7)))) : .publishView()
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: NotificationCenter.default.post(name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: self, userInfo: ["type": "like", "model": self.cunrrenModel])
                    NotificationCenter.default.post(name: kLet_formalShowData, object: self, userInfo: [(String(str_partyName)): (str_becomeData.replacingOccurrences(of: "record", with: "k")), String(bytes: str_renderValue.map{locationView(array: $0)}, encoding: .utf8)!: self.cunrrenModel])
                }
                //: }else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.oversight(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func greetBtnClick() {
    func greetWithClick() {
        //: EditTextThen.share.func__pushToPriveteChatVC(chatID: cunrrenModel.uid ?? "")
        EditTextThen.share.fullMoon(chatID: cunrrenModel.uid ?? "")
    }

    //: func likeplayer() {
    func everyData() {
        //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Moment_like)
        var url = ToEffectTool.default.alongError(type: .Moment_like)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: url = SVGAEffectTool.default.getZipEffectPath(type: .Moment_likeRight)
            url = ToEffectTool.default.alongError(type: .Moment_likeRight)
        }
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
                //: self.likePlayer.videoItem = videoItem
                self.likePlayer.videoItem = videoItem
                //: self.likePlayer.startAnimation()
                self.likePlayer.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_blockValue.suffix(5)) + "son " + str_equalStreamWithData.replacingOccurrences(of: "view", with: "r")))
        }
    }

    //: @objc func updateCommentNumber(notification: NSNotification) -> Void {
    @objc func uncolouredCenter(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]

        //: if userinfo["momentId"] as? Int != self.cunrrenModel.mid {
        if userinfo[(str_valuePopName.lowercased() + String(str_frameData))] as? Int != self.cunrrenModel.mid {
            //: return
            return
                //: } else if userinfo["type"] as! String == "comment".localized {
        } else if userinfo[(String(str_partyName))] as! String == (str_startBackName.replacingOccurrences(of: "frame", with: "om") + String(str_positionTitle)).localized {
            //: self.cunrrenModel.replyNum = userinfo["number"] as? Int
            self.cunrrenModel.replyNum = userinfo[(str_currentText.replacingOccurrences(of: "cell", with: "e") + str_dataTitle.replacingOccurrences(of: "observer", with: "r"))] as? Int
            //: commentNumberLB.text = String(format: "%d", self.cunrrenModel.replyNum!)
            commentNumberLB.text = String(format: "%d", self.cunrrenModel.replyNum!)
        }
    }
}

//: extension TalkingMomentItemBottomView: SVGAPlayerDelegate {
extension GesturePlayerDelegate: SVGAPlayerDelegate {
    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {}
}

// MARK: - LayoutUI

//: extension TalkingMomentItemBottomView {
extension GesturePlayerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func setupBy() {
        //: backgroundColor = .clear
        backgroundColor = .clear
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func cardOf() {
        //: infoLB.snp.makeConstraints { make in
        infoLB.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
        }

        //: likeBtn.snp.makeConstraints { make in
        likeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(infoLB.snp.bottom).offset(16)
            make.top.equalTo(infoLB.snp.bottom).offset(16)
            //: make.size.equalTo(CGSize.init(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: likePlayer.snp.makeConstraints { make in
        likePlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(-5)
            make.leading.equalTo(-5)
            //: make.bottom.equalTo(likeBtn.snp.bottom).offset(2)
            make.bottom.equalTo(likeBtn.snp.bottom).offset(2)
            //: make.size.equalTo(CGSize.init(width: 40, height: 60))
            make.size.equalTo(CGSize(width: 40, height: 60))
        }

        //: likeNumberLB.snp.makeConstraints { make in
        likeNumberLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(likeBtn.snp.trailing).offset(10)
            make.leading.equalTo(likeBtn.snp.trailing).offset(10)
            //: make.size.equalTo(CGSize.init(width: 52, height: 22))
            make.size.equalTo(CGSize(width: 52, height: 22))
        }

        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(likeNumberLB.snp.trailing)
            make.leading.equalTo(likeNumberLB.snp.trailing)
            //: make.size.equalTo(CGSize.init(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: commentNumberLB.snp.makeConstraints { make in
        commentNumberLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(commentBtn.snp.trailing).offset(10)
            make.leading.equalTo(commentBtn.snp.trailing).offset(10)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: let str = greetBtn.titleLabel?.text ?? ""
        let str = greetBtn.titleLabel?.text ?? ""
        //: let size = (str as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: UIFont.pingfangWithDiameter(fontSize: 14)], context: nil)
        let size = (str as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: UIFont.pingfangWithDiameter(fontSize: 14)], context: nil)

        //: greetBtn.snp.makeConstraints { make in
        greetBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.bottom.equalTo(-15)
            make.bottom.equalTo(-15)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
            //: make.width.equalTo(size.width+40)
            make.width.equalTo(size.width + 40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func putDoing() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateCommentNumber(notification:)), name: UPDATE_COMMENTNUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(uncolouredCenter(notification:)), name: kLet_infoRecordValue, object: nil)
        //: likeBtn.rx.tap.subscribe(onNext: { [weak self] in
        likeBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.likeBtnClik()
            self.firstShow()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: commentBtn.rx.tap.subscribe(onNext: {
        commentBtn.rx.tap.subscribe(onNext: {
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: greetBtn.rx.tap.subscribe(onNext: { [weak self] in
        greetBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.greetBtnClick()
            self.greetWithClick()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
