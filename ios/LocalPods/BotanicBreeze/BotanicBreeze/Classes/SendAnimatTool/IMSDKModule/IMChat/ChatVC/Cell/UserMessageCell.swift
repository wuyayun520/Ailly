
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_maximumName:[UInt8] = [0xf3,0xf8,0xf3,0xfe,0xb2,0xed,0xf9,0xee,0xef,0xfc,0xc4,0xb3,0xaa,0xf2,0xeb,0xfd,0xaa,0xf8,0xf9,0xfe,0xaa,0xec,0xef,0xef,0xf8,0xaa,0xf3,0xf7,0xfa,0xf6,0xef,0xf7,0xef,0xf8,0xfe,0xef,0xee]

fileprivate func constraintSize(room num: UInt8) -> UInt8 {
    let value = Int(num) - 138
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "extra" :*/
fileprivate let str_loadData:String = "EXTRA"

/*: "msgInfo" :*/
fileprivate let str_fileLastTitle:[Character] = ["m","s","g","I","n"]
fileprivate let str_viewContent:String = "gifto"

/*: "icon_talk_left_voive_3" :*/
fileprivate let str_sizeContent:String = "icon_model image value"
fileprivate let str_addValue:String = "_leftsource share view"
fileprivate let str_editData:String = "_voive_3the label party like"

/*: "icon_talk_right_voive_3" :*/
fileprivate let str_shareToData:String = "useron"
fileprivate let str_colorName:[Character] = ["k","_","r","i","g","h","t","_","v","o","i","v","e","_","3"]

/*: "%ld″" :*/
fileprivate let str_viewSucceedValue:String = "shadow let%ld″"

/*: "audioLength" :*/
fileprivate let str_statusData:String = "audioLmaximum call self category gift"

/*: "isPlayingStatus" :*/
fileprivate let str_elementData:[Character] = ["i","s","P","l","a","y","i","n","g","S","t","a","t"]
fileprivate let str_modelData:String = "sizes"

/*: "activityShowStatus" :*/
fileprivate let str_viewLastTitle:String = "tablectiv"
fileprivate let str_imageData:String = "share"
fileprivate let str_dataUserValue:String = "fromtus"

/*: "0″" :*/
fileprivate let str_labelValue:String = "female″"

/*: "FF506D" :*/
fileprivate let str_iconArrayName:[Character] = ["F","F","5","0","6","D"]

/*: "icon_talk_left_voive_1" :*/
fileprivate let str_popName:String = "minimum pickicon_t"
fileprivate let str_infoVideoLengthName:[Character] = ["_","v","o","i","v","e","_","1"]

/*: "icon_talk_left_voive_2" :*/
fileprivate let str_ofScaleName:[Character] = ["i","c","o","n","_","t","a","l","k","_","l","e","f","t","_","v"]
fileprivate let str_verticalContentData:[Character] = ["o","i","v","e","_","2"]

/*: "icon_talk_right_voive_1" :*/
fileprivate let str_positionData:String = "icon_tuser let right response"
fileprivate let str_titleData:String = "message in elseright_v"
fileprivate let str_targetColorText:[Character] = ["o","i","v","e","_","1"]

/*: "icon_talk_right_voive_2" :*/
fileprivate let str_toData:[Character] = ["i","c","o","n","_","t","a","l","k","_","r","i","g","h","t","_","v","o","i","v","e","_","2"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UserMessageCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/28.
//

//: import UIKit
import UIKit

//: class TalkingChatAudioMsgCell: TalkingChatBaseMsgCell {
class UserMessageCell: IndexViewCell {
    //: var audioData: AtHeadCellData?
    var audioData: AtHeadCellData?

    //: fileprivate lazy var disposeBag = DisposeBag()
    fileprivate lazy var disposeBag = DisposeBag()

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

        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: designCellView()
        pastBackground()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_maximumName.map{constraintSize(room: $0)}, encoding: .utf8)!)
    }

    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: audioData = data as? AtHeadCellData
        audioData = data as? AtHeadCellData
        //: guard let newData = audioData else { return }
        guard let newData = audioData else { return }
        //: if let extra = String(data: newData.innerMessage.customElem.data, encoding: .utf8) {
        if let extra = String(data: newData.innerMessage.customElem.data, encoding: .utf8) {
            //: let extraDic = JSON(parseJSON: extra)
            let extraDic = JSON(parseJSON: extra)
            //: let conentDic = extraDic["extra"]
            let conentDic = extraDic[(str_loadData.lowercased())]
            //: let msgInfo = conentDic["msgInfo"]
            let msgInfo = conentDic[(String(str_fileLastTitle) + str_viewContent.replacingOccurrences(of: "gift", with: "f"))]
            //: let voiceModel = newData.voiceModel
            let voiceModel = newData.voiceModel

            //: let isVoiceStyle = TUIMsgChatManager.checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)
            let isVoiceStyle = TUIMsgChatManager.checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)

            //: if newData.direction == .MsgDirectionIncoming {
            if newData.direction == .MsgDirectionIncoming {
                //: self.lenLB.textColor = UIColor.appTitleColor()
                self.lenLB.textColor = UIColor.executeTo()
                //: self.voiceImageV.image = UIImage.eponymUp(name: "icon_talk_left_voive_3")
                self.voiceImageV.image = UIImage.eponymUp(name: (String(str_sizeContent.prefix(5)) + "talk" + String(str_addValue.prefix(5)) + String(str_editData.prefix(8))))
                //: self.voiceImageV.animationImages = leftVoiceAnimImagToCoverColor()
                self.voiceImageV.animationImages = exhibit()
                //: } else {
            } else {
                //: self.lenLB.textColor = .white
                self.lenLB.textColor = .white
                //: self.voiceImageV.image = UIImage.eponymUp(name: "icon_talk_right_voive_3")
                self.voiceImageV.image = UIImage.eponymUp(name: (str_shareToData.replacingOccurrences(of: "user", with: "ic") + "_tal" + String(str_colorName)))
                //: self.voiceImageV.animationImages = rightVoiceAnimImagToCoverColor()
                self.voiceImageV.animationImages = light()
            }
            //: if isVoiceStyle {
            if isVoiceStyle {
                //: self.lenLB.text = String.init(format: "%ld″", msgInfo["audioLength"].intValue)
                self.lenLB.text = String(format: "%ld″", msgInfo[(String(str_statusData.prefix(6)) + "ength")].intValue)
                //: newData.voiceModel.audioLength = msgInfo["audioLength"].intValue
                newData.voiceModel.audioLength = msgInfo[(String(str_statusData.prefix(6)) + "ength")].intValue

                //: voiceModel.rx.observeWeakly(Int.self, "isPlayingStatus").subscribe(onNext: { [weak self] (value) in
                voiceModel.rx.observeWeakly(Int.self, (String(str_elementData) + str_modelData.replacingOccurrences(of: "size", with: "u"))).subscribe(onNext: { [weak self] value in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: if value == 1 {
                        if value == 1 {
                            //: self.voiceShowView.stopAnimating()
                            self.voiceShowView.stopAnimating()
                            //: self.voiceImageV.startAnimating()
                            self.voiceImageV.startAnimating()
                            //: self.voiceTrackPoint.isHidden = true
                            self.voiceTrackPoint.isHidden = true
                            //: } else {
                        } else {
                            //: self.voiceImageV.stopAnimating()
                            self.voiceImageV.stopAnimating()
                        }
                    }
                    //: }).disposed(by: disposeBag)
                }).disposed(by: disposeBag)

                //: voiceModel.rx.observeWeakly(Int.self, "activityShowStatus").subscribe(onNext: { [weak self] (value) in
                voiceModel.rx.observeWeakly(Int.self, (str_viewLastTitle.replacingOccurrences(of: "table", with: "a") + "ityShow" + str_imageData.replacingOccurrences(of: "share", with: "S") + str_dataUserValue.replacingOccurrences(of: "from", with: "ta"))).subscribe(onNext: { [weak self] value in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: if value == 1 {
                        if value == 1 {
                            //: self.voiceTrackPoint.isHidden = true
                            self.voiceTrackPoint.isHidden = true
                            //: self.voiceShowView.startAnimating()
                            self.voiceShowView.startAnimating()
                            //: } else {
                        } else {
                            //: self.voiceShowView.stopAnimating()
                            self.voiceShowView.stopAnimating()
                        }
                    }
                    //: }).disposed(by: disposeBag)
                }).disposed(by: disposeBag)

                //: } else {
            } else {
                //: newData.voiceModel.audioLength = -1
                newData.voiceModel.audioLength = -1
                //: self.voiceShowView.stopAnimating()
                self.voiceShowView.stopAnimating()
                //: self.voiceTrackPoint.isHidden = true
                self.voiceTrackPoint.isHidden = true
            }

            //: self.voiceImageV.isHidden = !isVoiceStyle
            self.voiceImageV.isHidden = !isVoiceStyle
        }
    }

    // MARK: - Lazy load

    //: lazy var voiceBackView: UIView = {
    lazy var voiceBackView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: return view
        return view
        //: }()
    }()

    // 时长
    //: lazy var lenLB: UILabel = {
    lazy var lenLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.executeTo()
        //: label.font = UIFont.outsideAllSize(fontSize: 17)
        label.font = UIFont.outsideAllSize(fontSize: 17)
        //: label.text = "0″"
        label.text = "0″"
        //: return label
        return label
        //: }()
    }()

    // 声波动画
    //: lazy var voiceImageV: UIImageView = {
    lazy var voiceImageV: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: imag.animationDuration = 1
        imag.animationDuration = 1
        //: return imag
        return imag
        //: }()
    }()

    // 未读红点
    //: lazy var voiceTrackPoint: UIImageView = {
    lazy var voiceTrackPoint: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.backgroundColor = UIColor.init(hex: "FF506D")
        imag.backgroundColor = UIColor(hex: (String(str_iconArrayName)))
        //: imag.isHidden = true
        imag.isHidden = true
        //: imag.layer.cornerRadius = 9/2
        imag.layer.cornerRadius = 9 / 2
        //: imag.layer.masksToBounds = true
        imag.layer.masksToBounds = true
        //: return imag
        return imag
        //: }()
    }()

    // 转圈
    //: lazy var voiceShowView: UIActivityIndicatorView = {
    lazy var voiceShowView: UIActivityIndicatorView = {
        //: let view = UIActivityIndicatorView.init()
        let view = UIActivityIndicatorView()
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: view.style = .medium
            view.style = .medium
            //: }else {
        } else {
            //: view.style = .gray
            view.style = .gray
        }
        //: view.hidesWhenStopped = true
        view.hidesWhenStopped = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatAudioMsgCell {
extension UserMessageCell {
    //: func leftVoiceAnimImagToCoverColor() -> [UIImage] {
    func exhibit() -> [UIImage] {
        //: return [UIImage.eponymUp(name: "icon_talk_left_voive_1"), UIImage.eponymUp(name: "icon_talk_left_voive_2"), UIImage.eponymUp(name: "icon_talk_left_voive_3")]
        return [UIImage.eponymUp(name: (String(str_popName.suffix(6)) + "alk_left" + String(str_infoVideoLengthName))), UIImage.eponymUp(name: (String(str_ofScaleName) + String(str_verticalContentData))), UIImage.eponymUp(name: (String(str_sizeContent.prefix(5)) + "talk" + String(str_addValue.prefix(5)) + String(str_editData.prefix(8))))]
    }

    //: func rightVoiceAnimImagToCoverColor() -> [UIImage] {
    func light() -> [UIImage] {
        //: return [UIImage.eponymUp(name: "icon_talk_right_voive_1"), UIImage.eponymUp(name: "icon_talk_right_voive_2"), UIImage.eponymUp(name: "icon_talk_right_voive_3")]
        return [UIImage.eponymUp(name: (String(str_positionData.prefix(6)) + "alk_" + String(str_titleData.suffix(7)) + String(str_targetColorText))), UIImage.eponymUp(name: (String(str_toData))), UIImage.eponymUp(name: (str_shareToData.replacingOccurrences(of: "user", with: "ic") + "_tal" + String(str_colorName)))]
    }
}

// MARK: - UI

//: extension TalkingChatAudioMsgCell {
extension UserMessageCell {
    //: func designCellView() {
    func pastBackground() {
        //: self.container.addSubview(voiceBackView)
        self.container.addSubview(voiceBackView)
        //: voiceBackView.addSubview(lenLB)
        voiceBackView.addSubview(lenLB)
        // 语音模块
        //: voiceBackView.addSubview(voiceImageV)
        voiceBackView.addSubview(voiceImageV)
        //: voiceBackView.addSubview(voiceTrackPoint)
        voiceBackView.addSubview(voiceTrackPoint)
        //: voiceBackView.addSubview(voiceShowView)
        voiceBackView.addSubview(voiceShowView)
        //: voiceBackView.gestureRecognizers?.forEach(voiceBackView.removeGestureRecognizer(_:))
        voiceBackView.gestureRecognizers?.forEach(voiceBackView.removeGestureRecognizer(_:))
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: guard let newData = self.audioData else { return }
        guard let newData = self.audioData else { return }
        //: let voiceModel = newData.voiceModel
        let voiceModel = newData.voiceModel
        //: let audioWidth = Double(voiceModel.audioLength) * 2.4 + 90
        let audioWidth = Double(voiceModel.audioLength) * 2.4 + 90

        //: voiceBackView.snp.remakeConstraints { (make) in
        voiceBackView.snp.remakeConstraints { make in
            //: make.leading.top.height.equalToSuperview()
            make.leading.top.height.equalToSuperview()
            //: make.width.equalTo(audioWidth)
            make.width.equalTo(audioWidth)
        }

        //: if newData.direction == .MsgDirectionIncoming {
        if newData.direction == .MsgDirectionIncoming {
            //: voiceImageV.snp.remakeConstraints { (make) in
            voiceImageV.snp.remakeConstraints { make in
                //: make.leading.equalTo(16)
                make.leading.equalTo(16)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.equalTo(13)
                make.width.equalTo(13)
                //: make.height.equalTo(19)
                make.height.equalTo(19)
            }

            //: voiceTrackPoint.snp.remakeConstraints { (make) in
            voiceTrackPoint.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(9)
                make.width.height.equalTo(9)
            }

            //: voiceShowView.snp.remakeConstraints { (make) in
            voiceShowView.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(15)
                make.width.height.equalTo(15)
            }

            //: lenLB.snp.remakeConstraints { (make) in
            lenLB.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceImageV.snp.trailing).offset(12)
                make.leading.equalTo(voiceImageV.snp.trailing).offset(12)
                //: make.top.height.equalToSuperview()
                make.top.height.equalToSuperview()
                //: make.width.equalTo(30)
                make.width.equalTo(30)
            }

            //: voiceTrackPoint.isHidden = newData.voiceModel.db_voiceCacheWrap.db_isRead == "1"
            voiceTrackPoint.isHidden = newData.voiceModel.db_voiceCacheWrap.db_isRead == "1"
            //: if newData.voiceModel.activityShowStatus != 1 {
            if newData.voiceModel.activityShowStatus != 1 {
                //: voiceShowView.stopAnimating()
                voiceShowView.stopAnimating()
            }

            //: } else {
        } else {
            //: voiceImageV.snp.remakeConstraints { (make) in
            voiceImageV.snp.remakeConstraints { make in
                //: make.trailing.equalTo(-16)
                make.trailing.equalTo(-16)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.equalTo(13)
                make.width.equalTo(13)
                //: make.height.equalTo(19)
                make.height.equalTo(19)
            }

            //: lenLB.textAlignment = LanguageManager.shared.direction == .rightToLeft ? .left:.right
            lenLB.textAlignment = FileReactiveCompatible.shared.direction == .rightToLeft ? .left : .right
            //: lenLB.snp.remakeConstraints { (make) in
            lenLB.snp.remakeConstraints { make in
                //: make.trailing.equalTo(voiceImageV.snp.leading).offset(-12)
                make.trailing.equalTo(voiceImageV.snp.leading).offset(-12)
                //: make.top.height.equalToSuperview()
                make.top.height.equalToSuperview()
                //: make.width.equalTo(30)
                make.width.equalTo(30)
            }

            //: voiceShowView.snp.remakeConstraints { (make) in
            voiceShowView.snp.remakeConstraints { make in
                //: make.trailing.equalTo(voiceBackView.snp.leading).offset(-30)
                make.trailing.equalTo(voiceBackView.snp.leading).offset(-30)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(15)
                make.width.height.equalTo(15)
            }

            //: if newData.voiceModel.activityShowStatus != 1 {
            if newData.voiceModel.activityShowStatus != 1 {
                //: voiceShowView.stopAnimating()
                voiceShowView.stopAnimating()
            }
            //: voiceTrackPoint.isHidden = true
            voiceTrackPoint.isHidden = true
        }
    }
}
