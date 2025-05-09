
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modeName:[UInt8] = [0x5b,0x60,0x5b,0x66,0x1a,0x55,0x61,0x56,0x57,0x64,0x2c,0x1b,0x12,0x5a,0x53,0x65,0x12,0x60,0x61,0x66,0x12,0x54,0x57,0x57,0x60,0x12,0x5b,0x5f,0x62,0x5e,0x57,0x5f,0x57,0x60,0x66,0x57,0x56]

fileprivate func homeBlack(wrap num: UInt8) -> UInt8 {
    let value = Int(num) + 14
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "img_home_shadow_icon" :*/
fileprivate let str_sectionData:String = "label status colorimg_h"
fileprivate let str_tagText:[Character] = ["h","a"]
fileprivate let str_keepData:[Character] = ["d","o","w","_","i","c","o","n"]

/*: "icon_lounge" :*/
fileprivate let str_frameValue:[Character] = ["i","c","o","n","_","l","o","u","n"]
fileprivate let str_infoName:[Character] = ["g","e"]

/*: "icon_home_v" :*/
fileprivate let str_targetData:String = "icon_hoshare actual timing"
fileprivate let str_addTableValue:String = "me_vmode var case user model"

/*: "icon_home_position" :*/
fileprivate let str_roomTitle:[Character] = ["i","c","o","n","_","h","o","m"]
fileprivate let str_selectedTitle:String = "data conversatione_posi"

/*: "btn_dynamic_stop_nor" :*/
fileprivate let str_startIntervaleractionData:String = "btn_color text"
fileprivate let str_viewData:[Character] = ["i","c","_","s","t","o","p","_","n","o","r"]

/*: "Block" :*/
fileprivate let str_femaleValue:String = "Blockinput gift float"

/*: "btn_friends_block" :*/
fileprivate let str_useValue:String = "number playbtn_f"
fileprivate let str_equalName:[Character] = ["r","i","e","n","d","s"]
fileprivate let str_connectionText:String = "_blockmore title equal index"

/*: "Cancel" :*/
fileprivate let str_sexValue:[Character] = ["C","a","n","c","e","l"]

/*: "btn_friends_block_cancel" :*/
fileprivate let str_modelValue:[Character] = ["b","t","n","_","f","r","i","e"]
fileprivate let str_thinData:String = "nds_bloheight method frame"
fileprivate let str_appContent:String = "if addck_c"

/*: "iv_home_game" :*/
fileprivate let str_managerMainData:String = "iv_hoapp content free daily"

/*: "transform.scale" :*/
fileprivate let str_modeMakeTitle:String = "tvoicean"
fileprivate let str_tabValue:String = ".scaleitem lab name"

/*: "zoom&shake" :*/
fileprivate let str_closeToValue:String = "zaddadd"
fileprivate let str_actionTitle:[Character] = ["m","&","s","h","a","k","e"]

/*: "OK" :*/
fileprivate let str_extraData:[Character] = ["O","K"]

/*: "get json error" :*/
fileprivate let str_pathData:[Character] = ["g","e","t"," ","j","s","o"]
fileprivate let str_sharedContent:String = "n errorview extension array main"

/*: "icon_popularhome_chat" :*/
fileprivate let str_collectionName:String = "icon_pname point"
fileprivate let str_labName:String = "home_gift view"

/*: "#2DF2FF" :*/
fileprivate let str_closeTitle:[Character] = ["#","2","D","F","2","F","F"]

/*: "Live" :*/
fileprivate let str_willEmptyValue:String = "Liveview shared frame accept"

/*: "#48FF1E" :*/
fileprivate let str_managerData:String = "#48FF1Efalse gift range"

/*: "Online" :*/
fileprivate let str_digitName:[Character] = ["O","n","l","i","n","e"]

/*: "#FF4B7F" :*/
fileprivate let str_thenModelName:[Character] = ["#","F","F","4","B"]
fileprivate let str_labTextData:String = "7Fmodel gesture path lab if"

/*: "busy" :*/
fileprivate let str_incomeLiveName:String = "bgiftsy"

/*: "  :*/
fileprivate let str_effectValue:String = " "

/*:  " :*/
fileprivate let str_afterwardText:[Character] = [" "]

/*: "icon_popularhome_hi" :*/
fileprivate let str_centerName:String = "icon_let any image for float"
fileprivate let str_userMmValue:String = "lmovehom"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TargetListCell.swift
//  AbroadTalking
//
//  Created by young on 2022/8/29.
//

//: import UIKit
import UIKit

//: protocol SocialPopularListCellDelegate: NSObject {
protocol ShowReactiveCompatible: NSObject {
    //: func cellPlayerEnd()
    func goAway()
    //: func seleteShowBlock(model: SocialUserListModel)
    func above(model: ControlWithModelType)
    //: func seleteHideBlock()
    func beamBlock()
    //: func seleteBlockTool(model: SocialUserListModel)
    func recordSection(model: ControlWithModelType)
    /// 去私聊
    //: func chtToUser(model: SocialUserListModel)
    func dataModel(model: ControlWithModelType)

    /// 快速打招呼
    //: func greetToUser(uid: String)
    func pushUid(uid: String)
}

//: class SocialPopularListCell: UICollectionViewCell {
class TargetListCell: UICollectionViewCell {
    //: var currentModel: SocialUserListModel?
    var currentModel: ControlWithModelType? // 记录当前模型
    //: open weak var delegate: SocialPopularListCellDelegate?
    open weak var delegate: ShowReactiveCompatible?

    //: var isPlaying = false
    var isPlaying = false
    //: var videoUrl = ""
    var videoUrl = ""
    //: var isListTableCell = true
    var isListTableCell = true

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modeName.map{homeBlack(wrap: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.layer.cornerRadius = 5
        self.layer.cornerRadius = 5
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: self.setupSubviews()
        self.pushOut()
        //: self.setupSubViewsConstraint()
        self.examineed()
    }

    // MARK: - Lazy load

    //: private lazy var headPicImgV: UIImageView = {
    private lazy var headPicImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: img.addGestureRecognizer(self.longGesture)
        img.addGestureRecognizer(self.longGesture)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var statusImgV: TalkingButton = {
    private lazy var statusImgV: ProgressTalkingButton = {
        //: let img = TalkingButton()
        let img = ProgressTalkingButton()
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: img.spaceBetweenTitleAndImage = 2
        img.spaceBetweenTitleAndImage = 2
        //: img.setBackgroundImage(UIImage.imageFillColor(color: UIColor.init(red: 9/255.0 , green: 9/255.0 , blue: 9/255.0 , alpha: 0.3)), for: .normal)
        img.setBackgroundImage(UIImage.noMain(color: UIColor(red: 9 / 255.0, green: 9 / 255.0, blue: 9 / 255.0, alpha: 0.3)), for: .normal)
        //: img.layer.cornerRadius = 8
        img.layer.cornerRadius = 8
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.setTitleColor(.white, for: .normal)
        img.setTitleColor(.white, for: .normal)
        //: img.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 12)
        img.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 12)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var shadowImg: UIImageView = {
    private lazy var shadowImg: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.eponymUp(name: "img_home_shadow_icon")
        img.image = UIImage.eponymUp(name: (String(str_sectionData.suffix(5)) + "ome_s" + String(str_tagText) + String(str_keepData)))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lab.font = UIFont.pingfang(type: .Medium, fontSize: 17)
        //: lab.textColor = .white
        lab.textColor = .white
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: lab.textAlignment = .right
            lab.textAlignment = .right
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.eponymUp(name: "icon_lounge")
        img.image = UIImage.eponymUp(name: (String(str_frameValue) + String(str_infoName)))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var attestationImgV: UIImageView = {
    private lazy var attestationImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.eponymUp(name: "icon_home_v")
        img.image = UIImage.eponymUp(name: (String(str_targetData.prefix(7)) + String(str_addTableValue.prefix(4))))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var locationBtn: TalkingButton = {
    private lazy var locationBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton()
        let btn = ProgressTalkingButton()
        //: btn.spaceBetweenTitleAndImage = 2
        btn.spaceBetweenTitleAndImage = 2
        //: btn.setImage(UIImage.eponymUp(name: "icon_home_position"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_roomTitle) + String(str_selectedTitle.suffix(6)) + "tion")), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 12)
        btn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 12)
        //: btn.contentHorizontalAlignment = LanguageManager.shared.direction == .rightToLeft ? .right:.left
        btn.contentHorizontalAlignment = FileReactiveCompatible.shared.direction == .rightToLeft ? .right : .left
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var player: TalkingVideoPlayerManager = {
    private lazy var player: SendPlayListener = {
        //: var  player: TalkingVideoPlayerManager
        var player: SendPlayListener
        //: player = TalkingVideoPlayerManager.init()
        player = SendPlayListener()
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: true)
        player.wreak(bEnable: true)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var playimageView: UIImageView = {
    private lazy var playimageView: UIImageView = {
        //: let  imag = UIImageView.init(image: UIImage.eponymUp(name: "btn_dynamic_stop_nor"))
        let imag = UIImageView(image: UIImage.eponymUp(name: (String(str_startIntervaleractionData.prefix(4)) + "dynam" + String(str_viewData))))
        //: imag.isHidden = true
        imag.isHidden = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var longGesture: UILongPressGestureRecognizer = {
    private lazy var longGesture: UILongPressGestureRecognizer = {
        //: let long = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress(_:)))
        let long = UILongPressGestureRecognizer(target: self, action: #selector(nightlong(_:)))
        //: return long
        return long
        //: }()
    }()

    //: lazy var blockBackView: UIView = {
    lazy var blockBackView: UIView = {
        //: let  view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.init(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.6)
        view.backgroundColor = UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.6)
        //: view.isHidden = true
        view.isHidden = true
        //: let blockBtn = TalkingButton.init()
        let blockBtn = ProgressTalkingButton()
        //: blockBtn.setTitle("Block".localized, for: .normal)
        blockBtn.setTitle((String(str_femaleValue.prefix(5))).localized, for: .normal)
        //: blockBtn.setTitleColor(UIColor.white, for: .normal)
        blockBtn.setTitleColor(UIColor.white, for: .normal)
        //: blockBtn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 17)
        blockBtn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 17)
        //: blockBtn.setImage(UIImage.eponymUp(name: "btn_friends_block"), for: .normal)
        blockBtn.setImage(UIImage.eponymUp(name: (String(str_useValue.suffix(5)) + String(str_equalName) + String(str_connectionText.prefix(6)))), for: .normal)
        //: blockBtn.spaceBetweenTitleAndImage = 4
        blockBtn.spaceBetweenTitleAndImage = 4
        //: blockBtn.addTarget(self, action: #selector(blockBtnClick), for: .touchUpInside)
        blockBtn.addTarget(self, action: #selector(briquet), for: .touchUpInside)
        //: view.addSubview(blockBtn)
        view.addSubview(blockBtn)
        //: blockBtn.snp.remakeConstraints { make in
        blockBtn.snp.remakeConstraints { make in
            //: make.top.equalTo(view).offset(50)
            make.top.equalTo(view).offset(50)
            //: make.leading.equalTo(43)
            make.leading.equalTo(43)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: let cancelBtn = TalkingButton.init()
        let cancelBtn = ProgressTalkingButton()
        //: cancelBtn.setTitle("Cancel".localized, for: .normal)
        cancelBtn.setTitle((String(str_sexValue)).localized, for: .normal)
        //: cancelBtn.setTitleColor(UIColor.white, for: .normal)
        cancelBtn.setTitleColor(UIColor.white, for: .normal)
        //: cancelBtn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 17)
        cancelBtn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 17)
        //: cancelBtn.setImage(UIImage.eponymUp(name: "btn_friends_block_cancel"), for: .normal)
        cancelBtn.setImage(UIImage.eponymUp(name: (String(str_modelValue) + String(str_thinData.prefix(7)) + String(str_appContent.suffix(4)) + "ancel")), for: .normal)
        //: cancelBtn.spaceBetweenTitleAndImage = 4
        cancelBtn.spaceBetweenTitleAndImage = 4
        //: cancelBtn.addTarget(self, action: #selector(cancelBtnClick), for: .touchUpInside)
        cancelBtn.addTarget(self, action: #selector(scrub), for: .touchUpInside)
        //: view.addSubview(cancelBtn)
        view.addSubview(cancelBtn)
        //: cancelBtn.snp.remakeConstraints { make in
        cancelBtn.snp.remakeConstraints { make in
            //: make.top.equalTo(blockBtn.snp.bottom).offset(28)
            make.top.equalTo(blockBtn.snp.bottom).offset(28)
            //: make.leading.equalTo(43)
            make.leading.equalTo(43)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var gameImgV: UIImageView = {
    private lazy var gameImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.eponymUp(name: "iv_home_game")
        img.image = UIImage.eponymUp(name: (String(str_managerMainData.prefix(5)) + "me_game"))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var callBtn: UIButton = {
    private lazy var callBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(callBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(asAttention), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var svgaPlayer: SVGAPlayer = {
    lazy var svgaPlayer: SVGAPlayer = {
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
        //: player.isHidden = true
        player.isHidden = true
        //: player.delegate = self
        player.delegate = self

        //: return player
        return player
        //: }()
    }()
}

// tages
//: extension SocialPopularListCell {
extension TargetListCell {
    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //: super.touchesBegan(touches, with: event)
        super.touchesBegan(touches, with: event)

        //: let zoom = CAKeyframeAnimation.init(keyPath: "transform.scale")
        let zoom = CAKeyframeAnimation(keyPath: (str_modeMakeTitle.replacingOccurrences(of: "voice", with: "r") + "sform" + String(str_tabValue.prefix(6))))
        //: zoom.keyTimes = [(1.0)]
        zoom.keyTimes = [1.0]
        //: let groupAnnimation = CAAnimationGroup.init()
        let groupAnnimation = CAAnimationGroup()
        //: groupAnnimation.autoreverses = false
        groupAnnimation.autoreverses = false
        //: groupAnnimation.animations = [ zoom]
        groupAnnimation.animations = [zoom]
        //: groupAnnimation.duration = 0.1
        groupAnnimation.duration = 0.1
        //: groupAnnimation.repeatCount = 1
        groupAnnimation.repeatCount = 1
        //: groupAnnimation.isRemovedOnCompletion = false
        groupAnnimation.isRemovedOnCompletion = false
        //: groupAnnimation.fillMode = .forwards
        groupAnnimation.fillMode = .forwards
        //: zoom.values = [1.05]
        zoom.values = [1.05]
        //: self.layer.add(groupAnnimation, forKey: "zoom&shake")
        self.layer.add(groupAnnimation, forKey: (str_closeToValue.replacingOccurrences(of: "add", with: "o") + String(str_actionTitle)))
    }

    //: override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        //: super.touchesCancelled(touches, with: event)
        super.touchesCancelled(touches, with: event)
        //: endAnimation()
        atEqual()
    }

    //: override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //: super.touchesEnded(touches, with: event)
        super.touchesEnded(touches, with: event)
        //: endAnimation()
        atEqual()
    }

    //: func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
    func callObserverWith(_: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith _: UIGestureRecognizer) -> Bool {
        //: return true
        return true
    }

    //: private func endAnimation() {
    private func atEqual() {
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
            //: let zoom = CAKeyframeAnimation.init(keyPath: "transform.scale")
            let zoom = CAKeyframeAnimation(keyPath: (str_modeMakeTitle.replacingOccurrences(of: "voice", with: "r") + "sform" + String(str_tabValue.prefix(6))))
            //: zoom.keyTimes = [(1.0)]
            zoom.keyTimes = [1.0]
            //: let groupAnnimation = CAAnimationGroup.init()
            let groupAnnimation = CAAnimationGroup()
            //: groupAnnimation.autoreverses = false
            groupAnnimation.autoreverses = false
            //: groupAnnimation.animations = [ zoom]
            groupAnnimation.animations = [zoom]
            //: groupAnnimation.duration = 0.1
            groupAnnimation.duration = 0.1
            //: groupAnnimation.repeatCount = 1
            groupAnnimation.repeatCount = 1
            //: groupAnnimation.isRemovedOnCompletion = false
            groupAnnimation.isRemovedOnCompletion = false
            //: groupAnnimation.fillMode = .forwards
            groupAnnimation.fillMode = .forwards
            //: zoom.values = [(1.0)]
            zoom.values = [1.0]
            //: self.layer.add(groupAnnimation, forKey: "zoom&shake")
            self.layer.add(groupAnnimation, forKey: (str_closeToValue.replacingOccurrences(of: "add", with: "o") + String(str_actionTitle)))
        }
    }

    /// 长按手势相应事件
    //: @objc private func handleLongPress(_ gesture: UILongPressGestureRecognizer) {
    @objc private func nightlong(_ gesture: UILongPressGestureRecognizer) {
        //: switch gesture.state {
        switch gesture.state {
        //: case .began:
        case .began:
            //: blockBackView.isHidden = false
            blockBackView.isHidden = false
            //: if currentModel != nil {
            if currentModel != nil {
                //: self.delegate?.seleteShowBlock(model: currentModel!)
                self.delegate?.above(model: currentModel!)
            }
        //: break
        //: case.ended:
        case .ended:
            //: endAnimation()
            atEqual()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: @objc private func blockBtnClick() {
    @objc private func briquet() {
        //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
        MotilityThen.viewConfig(title: nil, message: kLet_viewNetValue, leftBtnTitle: (String(str_sexValue)).localized, rightBtnTitle: "OK".localized) {
            //: TalkingAlertShow.hideAlert()
            MotilityThen.afterward()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            MotilityThen.afterward()
            //: if self.currentModel != nil {
            if self.currentModel != nil {
                //: self.delegate?.seleteBlockTool(model: self.currentModel!)
                self.delegate?.recordSection(model: self.currentModel!)
            }
        }
    }

    //: @objc private func cancelBtnClick() {
    @objc private func scrub() {
        //: blockBackView.isHidden = true
        blockBackView.isHidden = true
        //: endAnimation()
        atEqual()
        //: self.delegate?.seleteHideBlock()
        self.delegate?.beamBlock()
    }

    //: @objc private func callBtnClick() {
    @objc private func asAttention() {
        //: if let mdoel = self.currentModel {
        if let mdoel = self.currentModel {
            //: if mdoel.sendQuickMsg == 0 {
            if mdoel.sendQuickMsg == 0 {
                //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Home_Chat_hi)
                let url = ToEffectTool.default.alongError(type: .Home_Chat_hi)
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
                        //: self.callBtn.isHidden = true
                        self.callBtn.isHidden = true
                        //: self.svgaPlayer.isHidden = false
                        self.svgaPlayer.isHidden = false
                        //: self.svgaPlayer.videoItem = videoItem
                        self.svgaPlayer.videoItem = videoItem
                        //: self.svgaPlayer.startAnimation()
                        self.svgaPlayer.startAnimation()
                    }
                    //: } catch {
                } catch {
                    //: printLog(message: "get json error")
                    printLog(message: (String(str_pathData) + String(str_sharedContent.prefix(7))))
                }

                //: } else {
            } else {
                //: self.delegate?.chtToUser(model: mdoel)
                self.delegate?.dataModel(model: mdoel)
            }
        }
    }
}

//: extension SocialPopularListCell: SVGAPlayerDelegate {
extension TargetListCell: SVGAPlayerDelegate {
    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {
        //: if let mdoel = self.currentModel {
        if let mdoel = self.currentModel {
            //: self.callBtn.isHidden = false
            self.callBtn.isHidden = false
            //: self.callBtn.setImage(UIImage.eponymUp(name: "icon_popularhome_chat"), for: .normal)
            self.callBtn.setImage(UIImage.eponymUp(name: (String(str_collectionName.prefix(6)) + "opular" + String(str_labName.prefix(5)) + "chat")), for: .normal)
            //: self.delegate?.greetToUser(uid: "\(mdoel.uid)")
            self.delegate?.pushUid(uid: "\(mdoel.uid)")
        }
    }
}

// MARK: - Event

//: extension SocialPopularListCell {
extension TargetListCell {
    // MARK: - Refresh

    //: func refreshCell(_ model: SocialUserListModel?) {
    func checkOut(_ model: ControlWithModelType?) {
        //: guard let model = model else { return }
        guard let model = model else { return }
        //: currentModel = model
        currentModel = model
        //: headPicImgV.setUrlImage(urlStr: model.headPic, placeImg: UIImage.placeImgSquare())
        headPicImgV.lineBorder(urlStr: model.headPic, placeImg: UIImage.becomeSection())
        //: nameLab.text = model.nickname
        nameLab.text = model.nickname
        //: loungeImgV.isHidden = !model.loungePlus
        loungeImgV.isHidden = !model.loungePlus
        //: attestationImgV.isHidden = !model.isTPAuth
        attestationImgV.isHidden = !model.isTPAuth
        //: var right_offset = loungeImgV.isHidden == true ? -46 : -71
        var right_offset = loungeImgV.isHidden == true ? -46 : -71
        //: right_offset = attestationImgV.isHidden == true ? right_offset:right_offset-24
        right_offset = attestationImgV.isHidden == true ? right_offset : right_offset - 24
        //: nameLab.snp.updateConstraints { make in
        nameLab.snp.updateConstraints { make in
            //: make.trailing.lessThanOrEqualToSuperview().offset(right_offset)
            make.trailing.lessThanOrEqualToSuperview().offset(right_offset)
        }
        //: if loungeImgV.isHidden {
        if loungeImgV.isHidden {
            //: attestationImgV.snp.remakeConstraints { make in
            attestationImgV.snp.remakeConstraints { make in
                //: make.centerY.equalTo(nameLab)
                make.centerY.equalTo(nameLab)
                //: make.leading.equalTo(nameLab.snp.trailing).offset(4)
                make.leading.equalTo(nameLab.snp.trailing).offset(4)
                //: make.size.equalTo(CGSize(width: 16, height: 16))
                make.size.equalTo(CGSize(width: 16, height: 16))
            }
            //: } else {
        } else {
            //: attestationImgV.snp.remakeConstraints { make in
            attestationImgV.snp.remakeConstraints { make in
                //: make.centerY.equalTo(nameLab)
                make.centerY.equalTo(nameLab)
                //: make.leading.equalTo(loungeImgV.snp.trailing).offset(4)
                make.leading.equalTo(loungeImgV.snp.trailing).offset(4)
                //: make.size.equalTo(CGSize(width: 16, height: 16))
                make.size.equalTo(CGSize(width: 16, height: 16))
            }
        }
        //: gameImgV.isHidden = !(model.game && EqualThen.share.loginUserMode.sex == Gender.male.rawValue && EqualThen.share.appStatus == AppSkinStatus.normal.rawValue)
        gameImgV.isHidden = !(model.game && EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue && EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue)
        //: if model.liveStatus {
        if model.liveStatus {
            //: statusImgV.isHidden = false
            statusImgV.isHidden = false
            //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#2DF2FF")!, size: CGSize.init(width: 8, height: 8))
            let image = UIImage.impressionDataSize(color: UIColor(hex: (String(str_closeTitle)))!, size: CGSize(width: 8, height: 8))
            //: statusImgV.setImage(image.circle(), for: .normal)
            statusImgV.setImage(image.circleWithoutImagination(), for: .normal)
            //: statusImgV.setTitle("Live".localized, for: .normal)
            statusImgV.setTitle((String(str_willEmptyValue.prefix(4))).localized, for: .normal)
            //: } else {
        } else {
            //: statusImgV.isHidden = (model.status == 1 || model.status == 2) ? false : true
            statusImgV.isHidden = (model.status == 1 || model.status == 2) ? false : true
            //: if model.status == 1 {
            if model.status == 1 { // 在线
                //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#48FF1E")!, size: CGSize.init(width: 8, height: 8))
                let image = UIImage.impressionDataSize(color: UIColor(hex: (String(str_managerData.prefix(7))))!, size: CGSize(width: 8, height: 8))
                //: statusImgV.setImage(image.circle(), for: .normal)
                statusImgV.setImage(image.circleWithoutImagination(), for: .normal)
                //: statusImgV.setTitle("Online".localized, for: .normal)
                statusImgV.setTitle((String(str_digitName)).localized, for: .normal)
                //: } else if model.status == 2 {
            } else if model.status == 2 { // busy
                //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#FF4B7F")!, size: CGSize.init(width: 8, height: 8))
                let image = UIImage.impressionDataSize(color: UIColor(hex: (String(str_thenModelName) + String(str_labTextData.prefix(2))))!, size: CGSize(width: 8, height: 8))
                //: statusImgV.setImage(image.circle(), for: .normal)
                statusImgV.setImage(image.circleWithoutImagination(), for: .normal)
                //: statusImgV.setTitle("busy".localized, for: .normal)
                statusImgV.setTitle((str_incomeLiveName.replacingOccurrences(of: "gift", with: "u")).localized, for: .normal)
            }
        }
        //: let text: NSString = statusImgV.titleLabel?.text as? NSString ?? ""
        let text: NSString = statusImgV.titleLabel?.text as? NSString ?? ""
        //: let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.pingfangWithDiameter(fontSize: 12)], context: nil)
        let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.pingfangWithDiameter(fontSize: 12)], context: nil)
        //: statusImgV.snp.remakeConstraints { make in
        statusImgV.snp.remakeConstraints { make in
            //: make.leading.top.equalTo(6)
            make.leading.top.equalTo(6)
            //: make.width.equalTo(rect.width + 20)
            make.width.equalTo(rect.width + 20)
        }
        //: locationBtn.isHidden = model.location.count <= 0
        locationBtn.isHidden = model.location.count <= 0
        //: locationBtn.setTitle(" \(model.location) ", for: .normal)
        locationBtn.setTitle(" \(model.location) ", for: .normal)
        //: callBtn.isHidden = false
        callBtn.isHidden = false
        //: if model.sendQuickMsg == 0 {
        if model.sendQuickMsg == 0 {
            //: callBtn.setImage(UIImage.eponymUp(name: "icon_popularhome_hi"), for: .normal)
            callBtn.setImage(UIImage.eponymUp(name: (String(str_centerName.prefix(5)) + "popu" + str_userMmValue.replacingOccurrences(of: "move", with: "ar") + "e_hi")), for: .normal)
            //: } else {
        } else {
            //: callBtn.setImage(UIImage.eponymUp(name: "icon_popularhome_chat"), for: .normal)
            callBtn.setImage(UIImage.eponymUp(name: (String(str_collectionName.prefix(6)) + "opular" + String(str_labName.prefix(5)) + "chat")), for: .normal)
        }
    }
}

//: extension SocialPopularListCell {
extension TargetListCell {
    //: @objc private func enterBackgroundNotification() {
    @objc private func enterTimeLimited() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.showLock()
        }
    }

    //: @objc private func enterForegroundNotification() {
    @objc private func viewNotification() {
        //: if self.currentViewController()!.isKind(of: TalkingMomentViewController.self) {
        if self.infoController()!.isKind(of: BottomViewController.self) {
            //: self.player.resume()
            self.player.backAddStarResume()
        }
    }

    //: func configModel(videoUrl: String, imgUrl: String ) {
    func writeStart(videoUrl: String, imgUrl _: String) {
        //: self.videoUrl = videoUrl
        self.videoUrl = videoUrl
//        self.headPicImgV.setUrlImage(urlStr: imgUrl)
    }

    //: func setupPlayer() {
    func film() {
        //: self.contentView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8)
        self.contentView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8)
        //: UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations: {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations: {
            //: self.headPicImgV.alpha = 0.2
            self.headPicImgV.alpha = 0.2
            //: }) { _ in
        }) { _ in
            //: self.headPicImgV.alpha = 1.0
            self.headPicImgV.alpha = 1.0
            //: self.contentView.backgroundColor = .white
            self.contentView.backgroundColor = .white
            //: self.player.playerWithUrlAndVideoView(url: self.videoUrl, view: self.headPicImgV)
            self.player.requestView(url: self.videoUrl, view: self.headPicImgV)
            //: self.player.setMute(bEnable: true)
            self.player.wreak(bEnable: true)
            //: self.isPlaying = true
            self.isPlaying = true
            //: self.player.delegate = self
            self.player.delegate = self
            //: if self.player.width() > self.player.height() {
            if self.player.exceptPosition() > self.player.off() {
                //: self.player.setRenderMode(renderMode: .FILL_EDGE)
                self.player.giftMode(renderMode: .FILL_EDGE)
                //: } else {
            } else {
                //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
                self.player.giftMode(renderMode: .FILL_SCREEN)
            }
        }
    }

    //: func stopPlay() {
    func errorPlay() {
        //: self.player.stopPlay()
        self.player.viewMake()
        //: self.isPlaying = false
        self.isPlaying = false
        //: self.playimageView.isHidden = true
        self.playimageView.isHidden = true
        //: self.player.setMute(bEnable: true)
        self.player.wreak(bEnable: true)
    }

    //: func pausePlay() {
    func addApp() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.showLock()
        }
    }

    //: func resume() {
    func saveByResume() {
        // 进入详情会改变播放模式会有声音
        //: self.player.setMute(bEnable: true)
        self.player.wreak(bEnable: true)
        //: self.player.resume()
        self.player.backAddStarResume()
    }
}

//: extension SocialPopularListCell: TalkingVideoPlayerDelegate {
extension TargetListCell: CameraReactiveCompatible {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func titleCell(player _: SendPlayListener, status: TitleerPlayerStatus) {
        //: if (status == .Playing) {
        if status == .Playing {
            //: if self.player.isMute == false {
            if self.player.isMute == false {
                //: self.player.setMute(bEnable: true)
                self.player.wreak(bEnable: true)
            }
            //: self.playimageView.isHidden = true
            self.playimageView.isHidden = true
            //: if self.player.width() > self.player.height() {
            if self.player.exceptPosition() > self.player.off() {
                //: self.player.setRenderMode(renderMode: .FILL_EDGE)
                self.player.giftMode(renderMode: .FILL_EDGE)
                //: } else {
            } else {
                //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
                self.player.giftMode(renderMode: .FILL_SCREEN)
            }

            //: } else if (status == .Pausing) {
        } else if status == .Pausing {
            //: self.playimageView.isHidden = false
            self.playimageView.isHidden = false
            //: } else if (status == .Finished) {
        } else if status == .Finished {
//            headPicImgV.setUrlImage(urlStr: self.currentModel!.headPic, placeImg: UIImage.placeImgSquare())
            //: self.delegate?.cellPlayerEnd()
            self.delegate?.goAway()
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func playTable(player _: SendPlayListener, duration _: Int, currentTime: Int) {
        //: if currentTime > 5 {
        if currentTime > 5 {
            //: self.playimageView.isHidden = true
            self.playimageView.isHidden = true
            //: self.stopPlay()
            self.errorPlay()
//            headPicImgV.setUrlImage(urlStr: self.currentModel!.headPic, placeImg: UIImage.placeImgSquare())
            //: self.delegate?.cellPlayerEnd()
            self.delegate?.goAway()
        }
    }

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func dataScript(player _: SendPlayListener, progress _: CGFloat) {}
}

// MARK: - Layout

//: extension SocialPopularListCell {
extension TargetListCell {
    // 添加视图
    //: private func setupSubviews() {
    private func pushOut() {
        //: self.contentView .addSubview(headPicImgV)
        self.contentView.addSubview(headPicImgV)
        //: self.contentView.addSubview(statusImgV)
        self.contentView.addSubview(statusImgV)
        //: self.contentView.addSubview(shadowImg)
        self.contentView.addSubview(shadowImg)
        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
        //: self.contentView.addSubview(loungeImgV)
        self.contentView.addSubview(loungeImgV)
        //: self.contentView.addSubview(attestationImgV)
        self.contentView.addSubview(attestationImgV)
        //: self.contentView.addSubview(gameImgV)
        self.contentView.addSubview(gameImgV)
        //: self.contentView.addSubview(callBtn)
        self.contentView.addSubview(callBtn)
        //: self.contentView.addSubview(locationBtn)
        self.contentView.addSubview(locationBtn)
        //: headPicImgV.addSubview(playimageView)
        headPicImgV.addSubview(playimageView)
        //: self.contentView.addSubview(blockBackView)
        self.contentView.addSubview(blockBackView)
        //: self.contentView.addSubview(svgaPlayer)
        self.contentView.addSubview(svgaPlayer)

        //: NotificationCenter.default.addObserver(self, selector: #selector(enterBackgroundNotification), name: UIApplication.willResignActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(enterTimeLimited), name: UIApplication.willResignActiveNotification, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(enterForegroundNotification), name: UIApplication.didBecomeActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(viewNotification), name: UIApplication.didBecomeActiveNotification, object: nil)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func examineed() {
        //: headPicImgV.snp.makeConstraints { make in
        headPicImgV.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: statusImgV.snp.makeConstraints { make in
        statusImgV.snp.makeConstraints { make in
            //: make.leading.top.equalTo(6)
            make.leading.top.equalTo(6)
        }
        //: shadowImg.snp.makeConstraints { make in
        shadowImg.snp.makeConstraints { make in
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.bottom.equalTo(headPicImgV.snp.bottom).offset(0)
            make.bottom.equalTo(headPicImgV.snp.bottom).offset(0)
            //: make.height.equalTo(46)
            make.height.equalTo(46)
        }
        //: locationBtn.snp.makeConstraints { make in
        locationBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.trailing.equalTo(callBtn.snp.leading).offset(-4)
            make.trailing.equalTo(callBtn.snp.leading).offset(-4)
            //: make.bottom.equalToSuperview().offset(-8)
            make.bottom.equalToSuperview().offset(-8)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.bottom.equalTo(locationBtn.snp.top).offset(-6)
            make.bottom.equalTo(locationBtn.snp.top).offset(-6)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.trailing.lessThanOrEqualToSuperview().offset(-70)
            make.trailing.lessThanOrEqualToSuperview().offset(-70)
        }
        //: loungeImgV.snp.makeConstraints { make in
        loungeImgV.snp.makeConstraints { make in
            //: make.centerY.equalTo(nameLab)
            make.centerY.equalTo(nameLab)
            //: make.leading.equalTo(nameLab.snp.trailing).offset(3)
            make.leading.equalTo(nameLab.snp.trailing).offset(3)
            //: make.size.equalTo(CGSize(width: 16, height: 16))
            make.size.equalTo(CGSize(width: 16, height: 16))
        }
        //: attestationImgV.snp.makeConstraints { make in
        attestationImgV.snp.makeConstraints { make in
            //: make.centerY.equalTo(nameLab)
            make.centerY.equalTo(nameLab)
            //: make.leading.equalTo(loungeImgV.snp.trailing).offset(3)
            make.leading.equalTo(loungeImgV.snp.trailing).offset(3)
            //: make.size.equalTo(CGSize(width: 16, height: 16))
            make.size.equalTo(CGSize(width: 16, height: 16))
        }
        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.trailing.bottom.equalTo(-6)
            make.trailing.bottom.equalTo(-6)
            //: make.size.equalTo(38)
            make.size.equalTo(38)
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.edges.equalTo(callBtn)
            make.edges.equalTo(callBtn)
        }
        //: gameImgV.snp.makeConstraints { make in
        gameImgV.snp.makeConstraints { make in
            //: make.top.equalTo(5)
            make.top.equalTo(5)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: playimageView.snp.remakeConstraints { make in
        playimageView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 39, height: 39))
            make.size.equalTo(CGSize(width: 39, height: 39))
        }
        //: blockBackView.snp.remakeConstraints { make in
        blockBackView.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
