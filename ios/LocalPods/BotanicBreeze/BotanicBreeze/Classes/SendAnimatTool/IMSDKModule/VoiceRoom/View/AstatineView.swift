
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_indexTitle:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#7166F9" :*/
fileprivate let str_modelName:String = "#7166F9true let"

/*: "party_seat_mike_close" :*/
fileprivate let str_errorName:String = "partlevel"
fileprivate let str_withName:String = "ike_closecontent room table"

/*: "party_seat_host" :*/
fileprivate let str_atName:[Character] = ["p","a","r"]
fileprivate let str_moreValue:String = "image stack sexty_se"

/*: "#FA9D33" :*/
fileprivate let str_tempValue:String = "#FA9D3to name block model"
fileprivate let str_labelText:String = "fit"

/*: "party_seat_heartvalue" :*/
fileprivate let str_cellName:[Character] = ["p","a","r","t","y","_","s","e","a","t","_","h","e","a","r","t"]
fileprivate let str_aTitle:String = "valmin"

/*: "party_seat_lock" :*/
fileprivate let str_labCenterTitle:[UInt8] = [0x38,0x29,0x3a,0x3c,0x31,0x17,0x3b,0x2d,0x29,0x3c,0x17,0x24,0x27,0x2b,0x23]

/*: "party_seat_empty" :*/
fileprivate let str_resourceSourceName:[Character] = ["p","a","r","t","y","_","s","e","a","t","_","e","m","p","t","y"]

/*: "99999+" :*/
fileprivate let str_labelEmptyText:[UInt8] = [0x70,0x70,0x70,0x70,0x70,0x62]

/*: "Unlock" :*/
fileprivate let str_imageValue:String = "array fail inUnlock"

/*: "The seat is locked, click on the empty seat to play" :*/
fileprivate let str_colorTitle:[UInt8] = [0xdf,0xe3,0xee,0xab,0xf8,0xee,0xea,0xff,0xab,0xe2,0xf8,0xab,0xe7,0xe4,0xe8,0xe0,0xee,0xef,0xa7,0xab,0xe8,0xe7,0xe2,0xe8,0xe0,0xab,0xe4,0xe5,0xab,0xff,0xe3,0xee,0xab,0xee,0xe6,0xfb,0xff,0xf2,0xab,0xf8,0xee,0xea,0xff,0xab,0xff,0xe4,0xab,0xfb,0xe7,0xea,0xf2]

private func keyBottom(gift num: UInt8) -> UInt8 {
    return num ^ 139
}

/*: "Under mic" :*/
fileprivate let str_enterName:[Character] = ["U","n","d","e","r"," ","m","i","c"]

/*: _ :*/
fileprivate let str_touchData:[Character] = ["_"]

/*: "male" :*/
fileprivate let str_dataContent:[UInt8] = [0xcc,0xc0,0xcb,0xc4]

fileprivate func numberFill(center num: UInt8) -> UInt8 {
    let value = Int(num) - 95
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "female" :*/
fileprivate let str_asideName:[Character] = ["f","e","m","a","l","e"]

/*: "On mic" :*/
fileprivate let str_managerName:[Character] = ["O","n"," ","m","i"]
fileprivate let str_appInventoryData:String = "C"

/*: "Lock" :*/
fileprivate let str_logData:String = "room live cellLock"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AstatineView.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2024/9/24.
//

//: import UIKit
import UIKit

/// 当前Item宽高
//: let MikePositionItemView_Size = CGSize(width: (ScreenWidth - 35) / 4, height: actualWidth(w: 102))
let kLet_errorTitle = CGSize(width: (kLet_cameraValue - 35) / 4, height: actualWidth(w: 102))

//: class TalkingMikePositionItemView: UIView {
class AstatineView: UIView {
    /// 用户资料卡block
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?
    /// 麦位
    //: private var position = 0
    private var position = 0
    /// 麦位模型
    //: private var itemModel = TalkingMikeListItemModel()
    private var itemModel = WithTransformable()
    /// 是否正在动画
    //: private var isAnimation = false
    private var isAnimation = false
    /// 1s内最大音浪值
    //: private var maxAmplitude = 0.0
    private var maxAmplitude = 0.0

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        objectEqualTarget()
        //: setupSubViewsConstraint()
        rowConstraint()
        //: bindInteraction()
        tipFill()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_indexTitle.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var animationV1: UIView = {
    private lazy var animationV1: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.15)
        v.backgroundColor = UIColor(hex: (String(str_modelName.prefix(7))))?.withAlphaComponent(0.15)
        //: v.layer.cornerRadius = 29
        v.layer.cornerRadius = 29
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var animationV2: UIView = {
    private lazy var animationV2: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.55)
        v.backgroundColor = UIColor(hex: (String(str_modelName.prefix(7))))?.withAlphaComponent(0.55)
        //: v.layer.cornerRadius = 25
        v.layer.cornerRadius = 25
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = 25
        v.layer.cornerRadius = 25
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var mikeCloseImgV: UIImageView = {
    private lazy var mikeCloseImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.eponymUp(name: "party_seat_mike_close")
        v.image = UIImage.eponymUp(name: (str_errorName.replacingOccurrences(of: "level", with: "y") + "_seat_m" + String(str_withName.prefix(9))))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.spacing = 2
        v.spacing = 2
        //: return v
        return v
        //: }()
    }()

    //: private lazy var houseImgV: UIImageView = {
    private lazy var houseImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.eponymUp(name: "party_seat_host")
        v.image = UIImage.eponymUp(name: (String(str_atName) + String(str_moreValue.suffix(5)) + "at_host"))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var seatNumLab: UILabel = {
    private lazy var seatNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FA9D33")
        lab.backgroundColor = UIColor(hex: (String(str_tempValue.prefix(6)) + str_labelText.replacingOccurrences(of: "fit", with: "3")))
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 9)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 9)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.layer.cornerRadius = actualWidth(w: 12) / 2
        lab.layer.cornerRadius = actualWidth(w: 12) / 2
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var nickNameLab: UILabel = {
    private lazy var nickNameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.outsideAllSize(fontSize: 12)
        lab.font = UIFont.outsideAllSize(fontSize: 12)
        //: lab.textColor = .white
        lab.textColor = .white
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var heartCoinBtn: TalkingButton = {
    private lazy var heartCoinBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton()
        let btn = ProgressTalkingButton()
        //: btn.setImage(UIImage.eponymUp(name: "party_seat_heartvalue"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_cellName) + str_aTitle.replacingOccurrences(of: "min", with: "ue"))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 8)
        btn.titleLabel?.font = .pingfang(type: .Regular, fontSize: 8)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("0", for: .normal)
        btn.setTitle("0", for: .normal)
        //: btn.spaceBetweenTitleAndImage = 2
        btn.spaceBetweenTitleAndImage = 2
        //: btn.backgroundColor = UIColor.white.withAlphaComponent(0.15)
        btn.backgroundColor = UIColor.white.withAlphaComponent(0.15)
        //: btn.layer.cornerRadius = actualWidth(w: 12) / 2
        btn.layer.cornerRadius = actualWidth(w: 12) / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMikePositionItemView {
extension AstatineView {
    /// 刷新视图
    /// - Parameters:
    ///   - seatNumber: 席位
    ///   - model: 模型
    //: func refreshMikeItemView(_ seatNumber: Int, model: TalkingMikeListItemModel) {
    func instanceModel(_ seatNumber: Int, model: WithTransformable) {
        //: position = seatNumber
        position = seatNumber
        //: itemModel = model
        itemModel = model
        //: seatNumLab.text = "\(seatNumber + 1)"
        seatNumLab.text = "\(seatNumber + 1)"

        //: guard model.posStatus == 0, model.uid > 0 else {
        guard model.posStatus == 0, model.uid > 0 else {
            //: let imgStr = (itemModel.posStatus == 1) ? "party_seat_lock" : "party_seat_empty"
            let imgStr = (itemModel.posStatus == 1) ? String(bytes: str_labCenterTitle.map{$0^72}, encoding: .utf8)! : (String(str_resourceSourceName))
            //: icon.image = UIImage.eponymUp(name: imgStr)
            icon.image = UIImage.eponymUp(name: imgStr)
            //: mikeCloseImgV.isHidden = true
            mikeCloseImgV.isHidden = true
            //: houseImgV.isHidden = true
            houseImgV.isHidden = true
            //: nickNameLab.isHidden = true
            nickNameLab.isHidden = true
            //: heartCoinBtn.isHidden = true
            heartCoinBtn.isHidden = true
            //: return
            return
        }

        // 麦位开启，麦上有人
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 25)))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 25)))]
        //: icon.setUrlImage(urlStr: model.headPic, options: optionsInfo)
        icon.lineBorder(urlStr: model.headPic, options: optionsInfo)
        //: mikeCloseImgV.isHidden = (model.mikeStatus == 2)
        mikeCloseImgV.isHidden = (model.mikeStatus == 2)
        // 是否是主播
        //: houseImgV.isHidden = !(model.uid == TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid)
        houseImgV.isHidden = !(model.uid == ViewRoomManager.astatine().partyModel.streamerInfo.uid)
        //: nickNameLab.text = model.nickname
        nickNameLab.text = model.nickname
        //: nickNameLab.isHidden = false
        nickNameLab.isHidden = false
        //: let heartValue = (model.coin > 99999) ? "99999+" : String(model.coin)
        let heartValue = (model.coin > 99999) ? String(bytes: str_labelEmptyText.map{$0^73}, encoding: .utf8)! : String(model.coin)
        //: heartCoinBtn.setTitle(heartValue, for: .normal)
        heartCoinBtn.setTitle(heartValue, for: .normal)
        //: heartCoinBtn.isHidden = false
        heartCoinBtn.isHidden = false
        //: let width = heartCoinBtn.titleLabel!.text!.size(withAttributes: [.font: heartCoinBtn.titleLabel!.font!]).width + actualWidth(w: 20)
        let width = heartCoinBtn.titleLabel!.text!.size(withAttributes: [.font: heartCoinBtn.titleLabel!.font!]).width + actualWidth(w: 20)
        //: heartCoinBtn.snp.updateConstraints { make in
        heartCoinBtn.snp.updateConstraints { make in
            //: make.width.equalTo(width)
            make.width.equalTo(width)
        }
    }

    /// 麦位点击事件
    //: @objc func tapGestureRecognizer(_ tap: UITapGestureRecognizer) {
    @objc func dateRecognizer(_: UITapGestureRecognizer) {
        // 是否房主
        //: let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == EqualThen.share.loginUid)
        let isAnchor = (String(ViewRoomManager.astatine().partyModel.streamerInfo.uid) == EqualThen.share.loginUid)
        //: guard itemModel.posStatus == 0 else {
        guard itemModel.posStatus == 0 else {
            //: if itemModel.posStatus == 1 {
            if itemModel.posStatus == 1 { // 麦位锁定
                //: if isAnchor {
                if isAnchor { // 房主
                    //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                    let vc = OnViewDelegate(frame: UIScreen.main.bounds)
                    //: vc.initwithList(cellTitleList: ["Unlock".localized])
                    vc.videoList(cellTitleList: [(String(str_imageValue.suffix(6))).localized])
                    //: vc.cancelColor = .appTitleColor()
                    vc.cancelColor = .executeTo()
                    //: vc.munuBlock = { [weak self] _, str in
                    vc.munuBlock = { [weak self] _, str in
                        //: guard let self = self else { return }
                        guard let self = self else { return }
                        //: if str == "Unlock".localized {
                        if str == (String(str_imageValue.suffix(6))).localized {
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: 0, type: 2, position: position)
                            ViewRoomManager.astatine().destroyAction(uid: 0, type: 2, position: position)
                        }
                    }

                    //: } else {
                } else {
                    //: func__showStatusBarErrorMsg(showMsg: "The seat is locked, click on the empty seat to play".localized)
                    oversight(showMsg: String(bytes: str_colorTitle.map{keyBottom(gift: $0)}, encoding: .utf8)!.localized)
                }
            }
            //: return
            return
        }

        // 麦位开启
        //: if itemModel.uid > 0 {
        if itemModel.uid > 0 { // 麦上有人
            //: if String(itemModel.uid) == EqualThen.share.loginUid {
            if String(itemModel.uid) == EqualThen.share.loginUid { // 点击自己麦位
                // 用户主动下麦
                //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                let vc = OnViewDelegate(frame: UIScreen.main.bounds)
                //: vc.initwithList(cellTitleList: ["Under mic".localized])
                vc.videoList(cellTitleList: [(String(str_enterName)).localized])
                //: vc.cancelColor = .appTitleColor()
                vc.cancelColor = .executeTo()
                //: vc.munuBlock = { [weak self] _, str in
                vc.munuBlock = { [weak self] _, str in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: if str == "Under mic".localized {
                    if str == (String(str_enterName)).localized {
                        //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 2, position: position)
                        ViewRoomManager.astatine().endPosition(type: 2, position: position)
                        //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_underMic)_\(EqualThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                        kLet_textData.historicalPaper(eventID: "\(kLet_halfValue)_\(EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue ? String(bytes: str_dataContent.map{numberFill(center: $0)}, encoding: .utf8)! : (String(str_asideName)))")
                    }
                }

                //: } else {
            } else { // 点击别人麦位, 查看资料卡
                //: showUserCardBlock?(itemModel.uid)
                showUserCardBlock?(itemModel.uid)
            }

            //: } else {
        } else { // 空位
            //: if isAnchor {
            if isAnchor { // 房主
                //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                let vc = OnViewDelegate(frame: UIScreen.main.bounds)
                //: vc.initwithList(cellTitleList: ["On mic".localized, "Lock".localized])
                vc.videoList(cellTitleList: [(String(str_managerName) + str_appInventoryData.lowercased()).localized, (String(str_logData.suffix(4))).localized])
                //: vc.cancelColor = .appTitleColor()
                vc.cancelColor = .executeTo()
                //: vc.munuBlock = { [weak self] _, str in
                vc.munuBlock = { [weak self] _, str in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: if str == "On mic".localized {
                    if str == (String(str_managerName) + str_appInventoryData.lowercased()).localized {
                        //: if TalkingVoiceRoomManager.shared().partyModel.position >= 0 {
                        if ViewRoomManager.astatine().partyModel.position >= 0 { // 在麦位上切麦
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 3,
                            ViewRoomManager.astatine().endPosition(type: 3,
                                                                           //: position: TalkingVoiceRoomManager.shared().partyModel.position,
                                                                           position: ViewRoomManager.astatine().partyModel.position,
                                                                           //: toPosition: position)
                                                                           toPosition: position)
                            //: } else {
                        } else {
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 1, position: position)
                            ViewRoomManager.astatine().endPosition(type: 1, position: position)
                            //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_onMic)_\(EqualThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                            kLet_textData.historicalPaper(eventID: "\(kLet_replaceData)_\(EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue ? String(bytes: str_dataContent.map{numberFill(center: $0)}, encoding: .utf8)! : (String(str_asideName)))")
                        }

                        //: } else if str == "Lock".localized {
                    } else if str == (String(str_logData.suffix(4))).localized {
                        //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: 0, type: 1, position: position)
                        ViewRoomManager.astatine().destroyAction(uid: 0, type: 1, position: position)
                    }
                }

                //: } else {
            } else { // 观众在麦位上切麦，否则上麦
                //: if TalkingVoiceRoomManager.shared().partyModel.position >= 0 {
                if ViewRoomManager.astatine().partyModel.position >= 0 {
                    //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 3,
                    ViewRoomManager.astatine().endPosition(type: 3,
                                                                   //: position: TalkingVoiceRoomManager.shared().partyModel.position,
                                                                   position: ViewRoomManager.astatine().partyModel.position,
                                                                   //: toPosition: position)
                                                                   toPosition: position)
                    //: } else {
                } else {
                    //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 1, position: position)
                    ViewRoomManager.astatine().endPosition(type: 1, position: position)
                    //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_onMic)_\(EqualThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                    kLet_textData.historicalPaper(eventID: "\(kLet_replaceData)_\(EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue ? String(bytes: str_dataContent.map{numberFill(center: $0)}, encoding: .utf8)! : (String(str_asideName)))")
                }
            }
        }
    }
}

// MARK: - 音浪动效

//: extension TalkingMikePositionItemView {
extension AstatineView {
    /// 播放音浪值动效
    /// - Parameter amplitude: 音浪值
    //: func animateCircle(withAmplitude amplitude: CGFloat) {
    func messageFor(withAmplitude amplitude: CGFloat) {
        //: maxAmplitude = max(maxAmplitude, amplitude)
        maxAmplitude = max(maxAmplitude, amplitude)
        //: guard isAnimation == false else { return }
        guard isAnimation == false else { return }
        //: isAnimation = true
        isAnimation = true

        //: animationV1.isHidden = false
        animationV1.isHidden = false
        //: animationV2.isHidden = false
        animationV2.isHidden = false
        //: let scale1 = (25 + (maxAmplitude / 100) * 7) / 25
        let scale1 = (25 + (maxAmplitude / 100) * 7) / 25
        //: let scale2 = (29 + (maxAmplitude / 100) * 8) / 29
        let scale2 = (29 + (maxAmplitude / 100) * 8) / 29
        //: maxAmplitude = 0.0
        maxAmplitude = 0.0
        //: UIView.animate(withDuration: 1, animations: {
        UIView.animate(withDuration: 1, animations: {
            //: self.animationV1.transform = CGAffineTransform(scaleX: scale1, y: scale1)
            self.animationV1.transform = CGAffineTransform(scaleX: scale1, y: scale1)
            //: self.animationV2.transform = CGAffineTransform(scaleX: scale2, y: scale2)
            self.animationV2.transform = CGAffineTransform(scaleX: scale2, y: scale2)
            //: }) { _ in
        }) { _ in
            //: self.animationV1.transform = .identity
            self.animationV1.transform = .identity
            //: self.animationV2.transform = .identity
            self.animationV2.transform = .identity
            //: self.animationV1.isHidden = true
            self.animationV1.isHidden = true
            //: self.animationV2.isHidden = true
            self.animationV2.isHidden = true
            //: self.isAnimation = false
            self.isAnimation = false
        }
    }
}

// MARK: - Layout

//: extension TalkingMikePositionItemView {
extension AstatineView {
    /// 添加视图
    //: private func setupSubviews() {
    private func objectEqualTarget() {
        //: addSubview(animationV1)
        addSubview(animationV1)
        //: addSubview(animationV2)
        addSubview(animationV2)
        //: addSubview(icon)
        addSubview(icon)
        //: addSubview(mikeCloseImgV)
        addSubview(mikeCloseImgV)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(houseImgV)
        stackView.addArrangedSubview(houseImgV)
        //: stackView.addArrangedSubview(seatNumLab)
        stackView.addArrangedSubview(seatNumLab)
        //: stackView.addArrangedSubview(nickNameLab)
        stackView.addArrangedSubview(nickNameLab)
        //: addSubview(heartCoinBtn)
        addSubview(heartCoinBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func rowConstraint() {
        //: animationV1.snp.makeConstraints { make in
        animationV1.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 8))
            make.top.equalTo(actualWidth(w: 8))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(58)
            make.width.height.equalTo(58)
        }

        //: animationV2.snp.makeConstraints { make in
        animationV2.snp.makeConstraints { make in
            //: make.center.equalTo(animationV1)
            make.center.equalTo(animationV1)
            //: make.width.height.equalTo(50)
            make.width.height.equalTo(50)
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.center.equalTo(animationV1)
            make.center.equalTo(animationV1)
            //: make.width.height.equalTo(50)
            make.width.height.equalTo(50)
        }

        //: mikeCloseImgV.snp.makeConstraints { make in
        mikeCloseImgV.snp.makeConstraints { make in
            //: make.trailing.bottom.equalTo(icon).offset(3)
            make.trailing.bottom.equalTo(icon).offset(3)
            //: make.width.height.equalTo(actualWidth(w: 18))
            make.width.height.equalTo(actualWidth(w: 18))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 6))
            make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 6))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.lessThanOrEqualToSuperview()
            make.width.lessThanOrEqualToSuperview()
        }
        //: houseImgV.snp.makeConstraints { make in
        houseImgV.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 12))
            make.width.height.equalTo(actualWidth(w: 12))
        }
        //: seatNumLab.snp.makeConstraints { make in
        seatNumLab.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 12))
            make.width.height.equalTo(actualWidth(w: 12))
        }

        //: heartCoinBtn.snp.makeConstraints { make in
        heartCoinBtn.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 24))
            make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 24))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 12))
            make.height.equalTo(actualWidth(w: 12))
            //: make.width.equalTo(actualWidth(w: 21))
            make.width.equalTo(actualWidth(w: 21))
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func tipFill() {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureRecognizer))
        let tap = UITapGestureRecognizer(target: self, action: #selector(dateRecognizer))
        //: addGestureRecognizer(tap)
        addGestureRecognizer(tap)
    }
}
