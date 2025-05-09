
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_interactionData:[UInt8] = [0xa9,0xae,0xa9,0xb4,0x68,0xa3,0xaf,0xa4,0xa5,0xb2,0x7a,0x69,0x60,0xa8,0xa1,0xb3,0x60,0xae,0xaf,0xb4,0x60,0xa2,0xa5,0xa5,0xae,0x60,0xa9,0xad,0xb0,0xac,0xa5,0xad,0xa5,0xae,0xb4,0xa5,0xa4]

fileprivate func cellModel(item num: UInt8) -> UInt8 {
    let value = Int(num) - 64
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Followers" :*/
fileprivate let str_labelData:String = "size safe view touchFoll"

/*: "Following" :*/
fileprivate let str_equalTitle:String = "view model rightFollow"
fileprivate let str_screenValue:[Character] = ["i","n","g"]

/*: "#E6E6E6" :*/
fileprivate let str_cameraName:String = "row title#E"
fileprivate let str_defineText:[Character] = ["6","E","6","E","6"]

/*: "btn_message_more" :*/
fileprivate let str_itemValue:String = "let modelbtn_m"
fileprivate let str_serviceToData:String = "e_moreclear text self label"

/*: "UID:  :*/
fileprivate let str_frameResultName:String = "return self mic end userUID: "

/*: "level_ :*/
fileprivate let str_pushContent:[Character] = ["l","e","v","e","l","_"]

/*: "Follow" :*/
fileprivate let str_equalHeadValue:[Character] = ["F","o","l","l","o","w"]

/*: "Chat" :*/
fileprivate let str_textName:String = "empty for push title colorChat"

/*: "attentionUid" :*/
fileprivate let str_titleName:[Character] = ["a","t","t","e","n","t"]
fileprivate let str_qualityTitle:String = "ionUidself send"

/*: "source" :*/
fileprivate let str_personalValue:String = "souimagee"

/*: "Report" :*/
fileprivate let str_commonTitle:String = "value"
fileprivate let str_roomRemoveTitle:[Character] = ["e","p","o","r","t"]

/*: "Block" :*/
fileprivate let str_backgroundValue:[Character] = ["B","l","o","c","k"]

/*: "Muted" :*/
fileprivate let str_iconTitle:[Character] = ["M","u","t","e","d"]

/*: "Mute" :*/
fileprivate let str_tapData:[Character] = ["M","u","t","e"]

/*: "#F6F6F6" :*/
fileprivate let str_appData:[Character] = ["#","F","6","F","6"]
fileprivate let str_topData:String = "next"

/*: "Cancel" :*/
fileprivate let str_ofValue:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let str_adData:String = "Odata"

/*: "Kicked out of the live room" :*/
fileprivate let str_locationData:[Character] = ["K","i","c","k","e","d"," ","o","u","t"," ","o","f"," ","t","h","e"," ","l","i","v","e"," "]
fileprivate let str_tableTitle:String = "rfirstfirstm"

/*: "uid" :*/
fileprivate let str_withValue:[UInt8] = [0xd8,0xc4,0xc9]

private func textHandle(profile num: UInt8) -> UInt8 {
    return num ^ 173
}

/*: "Shielding Success" :*/
fileprivate let str_upName:String = "model make value inShield"
fileprivate let str_tableData:String = "path tableing Su"

/*: "Are you sure you want to cancel the mute?" :*/
fileprivate let str_videoContent:[UInt8] = [0xcd,0xfe,0xf1,0xac,0x5,0xfb,0x1,0xac,0xff,0x1,0xfe,0xf1,0xac,0x5,0xfb,0x1,0xac,0x3,0xed,0xfa,0x0,0xac,0x0,0xfb,0xac,0xef,0xed,0xfa,0xef,0xf1,0xf8,0xac,0x0,0xf4,0xf1,0xac,0xf9,0x1,0x0,0xf1,0xcb]

fileprivate func inputView(to num: UInt8) -> UInt8 {
    let value = Int(num) + 116
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Confirm" :*/
fileprivate let str_requestData:String = "self extension self videoConfirm"

/*: "The mute has been lifted~" :*/
fileprivate let str_giftContent:[Character] = ["T","h","e"," ","m","u","t","e"," ","h","a","s"," ","b","e","e","n"," ","l","i"]
fileprivate let str_cameraData:[Character] = ["f","t","e","d","~"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleCardView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/12.
//

//: import UIKit
import UIKit

//: enum LiveUserCardType: Int {
enum PlayingCardOfMagnitude: Int {
    //: case user_me = 0
    case user_me = 0 // 当前用户

    //: case user_other
    case user_other // 别人
}

//: @objc protocol TalkingLiveUserCardViewDelegate: NSObjectProtocol {
@objc protocol AggregationViewDelegate: NSObjectProtocol {
    // @
    //: func func__atUserClick(uid: String, nickname: String)
    func appGroup(uid: String, nickname: String)
}

//: class TalkingLiveUserCardView: UIView {
class TitleCardView: UIView {
    //: var popView: TalkingPopView?
    var popView: NameThen?
    //: var data =  [String: Any]()
    var data = [String: Any]()
    //: var type: LiveUserCardType?
    var type: PlayingCardOfMagnitude?
    //: var uid = ""
    var uid = ""
    //: var liveUserId = String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid)
    var liveUserId = String(UserPushListener.sexApp().liveRoomModel.streamerInfo.uid) // 主播ID
    //: var liveRoomDanmuID = TalkingLiveManager.shared().liveRoomModel.chatGroupId
    var liveRoomDanmuID = UserPushListener.sexApp().liveRoomModel.chatGroupId
    //: var userModel = TalkingUserInfoModel.init()
    var userModel = OccurrentInfoModel()

    //: open weak var delegate: TalkingLiveUserCardViewDelegate?
    open weak var delegate: AggregationViewDelegate?

    //: init(frame: CGRect, uid: String) {
    init(frame: CGRect, uid: String) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: if uid == EqualThen.share.loginUserMode.userID {
        if uid == EqualThen.share.loginUserMode.userID {
            //: self.type = .user_me
            self.type = .user_me
            //: } else {
        } else {
            //: self.type = .user_other
            self.type = .user_other
        }
        //: self.uid = uid
        self.uid = uid
        //: setupSubviews()
        section()
        //: setupSubViewsConstraint()
        fileApp()
        //: reqUserCardInfo()
        application()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_interactionData.map{cellModel(item: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: return view
        return view
        //: }()
    }()

    //: lazy var uidLb: UILabel = {
    lazy var uidLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 12)
        label.font = .pingfang(type: .Regular, fontSize: 12)
        //: label.textColor = UIColor.publishView()
        label.textColor = UIColor.publishView()
        //: return label
        return label
        //: }()
    }()

    //: lazy var topIcon: UIButton = {
    lazy var topIcon: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(iconBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(addEqual), for: .touchUpInside)
        //: btn.layer.cornerRadius = 40
        btn.layer.cornerRadius = 40
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.layer.borderWidth = 2
        btn.layer.borderWidth = 2
        //: btn.layer.borderColor = UIColor.white.cgColor
        btn.layer.borderColor = UIColor.white.cgColor
        //: return btn
        return btn

        //: }()
    }()

    //: lazy var nameLb: UILabel = {
    lazy var nameLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 15)
        label.font = .pingfang(type: .Semibold, fontSize: 15)
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.executeTo()
        //: return label
        return label
        //: }()
    }()

    //: lazy var levelIcon: UIImageView = {
    lazy var levelIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var signLb: UILabel = {
    lazy var signLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 13)
        label.font = .pingfang(type: .Regular, fontSize: 13)
        //: label.textColor = UIColor.publishView()
        label.textColor = UIColor.publishView()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 2
        label.numberOfLines = 2
        //: return label
        return label
        //: }()
    }()

    //: private lazy var followersLab: UILabel = {
    private lazy var followersLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .publishView()
        lab.textColor = .publishView()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Followers".localized
        lab.text = (String(str_labelData.suffix(4)) + "owers").localized
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 12)
        lab.font = UIFont.pingfang(type: .Semibold, fontSize: 12)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followersNum: UILabel = {
    private lazy var followersNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .executeTo()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 15)
        lab.font = UIFont.pingfang(type: .Semibold, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingLab: UILabel = {
    private lazy var followingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .publishView()
        lab.textColor = .publishView()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Following".localized
        lab.text = (String(str_equalTitle.suffix(6)) + String(str_screenValue)).localized
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 12)
        lab.font = UIFont.pingfang(type: .Semibold, fontSize: 12)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingNum: UILabel = {
    private lazy var followingNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .executeTo()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 15)
        lab.font = UIFont.pingfang(type: .Semibold, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var lineView: UIView = {
    private lazy var lineView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.init(hex: "#E6E6E6")
        view.backgroundColor = UIColor(hex: (String(str_cameraName.suffix(2)) + String(str_defineText)))
        //: return view
        return view
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .fill
        v.alignment = .fill
        //: v.distribution = .fillEqually
        v.distribution = .fillEqually
        //: return v
        return v
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.setImage(UIImage.eponymUp(name: "btn_message_more"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_itemValue.suffix(5)) + "essag" + String(str_serviceToData.prefix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(selectedWith), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var muteView: TalkingLiveRoomMuteView = {
    private lazy var muteView: UserThen = {
        //: let v = TalkingLiveRoomMuteView()
        let v = UserThen()
        //: v.viewType  = .live
        v.viewType = .live
        //: return v
        return v
        //: }()
    }()
}

//: extension TalkingLiveUserCardView {
extension TitleCardView {
    //: func reqUserCardInfo() {
    func application() {
        //: TalkingLiveManager.req__userCardInfo(uid: self.uid, streamerUid: liveUserId) { succeed, result, errorModel in
        UserPushListener.viewStack(uid: self.uid, streamerUid: liveUserId) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }

            //: if let userModel = JSONDeserializer<TalkingUserInfoModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
            if let userModel = JSONDeserializer<OccurrentInfoModel>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                //: self.userModel = userModel
                self.userModel = userModel
                //: self.setUserCardData()
                self.share()
            }
        }
    }

    //: func setUserCardData() {
    func share() {
        //: uidLb.text = "UID: \(self.userModel.uid)"
        uidLb.text = (String(str_frameResultName.suffix(5))) + "\(self.userModel.uid)"
        //: topIcon.setUrlImage(urlStr: self.userModel.headPic)
        topIcon.dataBack(urlStr: self.userModel.headPic)
        //: nameLb.text = self.userModel.nickname
        nameLb.text = self.userModel.nickname
        //: levelIcon.image = UIImage.eponymUp(name: "level_\(self.userModel.level)")
        levelIcon.image = UIImage.eponymUp(name: (String(str_pushContent)) + "\(self.userModel.level)")
        //: signLb.text = self.userModel.signature
        signLb.text = self.userModel.signature
        //: followersNum.text = self.userModel.attentionNum
        followersNum.text = self.userModel.attentionNum
        //: followingNum.text = self.userModel.fansNum
        followingNum.text = self.userModel.fansNum

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: setBottomView(sex: self.userModel.sex)
            viewSex(sex: self.userModel.sex)
        }
    }

    //: func setBottomView(sex: String) {
    func viewSex(sex: String) {
        //: var dataSource = Array<String>()
        var dataSource = [String]()
        //: if EqualThen.share.loginUserMode.sex == sex {
        if EqualThen.share.loginUserMode.sex == sex {
            //: dataSource = ["@"]
            dataSource = ["@"]
            //: } else {
        } else {
            //: dataSource = ["Follow", "@", "Chat"]
            dataSource = [(String(str_equalHeadValue)), "@", (String(str_textName.suffix(4)))]
            //: if self.userModel.isAttention {
            if self.userModel.isAttention {
                //: dataSource.remove(at: 0)
                dataSource.remove(at: 0)
            }
        }

        //: for i in 0 ..< dataSource.count {
        for i in 0 ..< dataSource.count {
            //: let btn = UIButton()
            let btn = UIButton()
            //: btn.tag = 200 + i
            btn.tag = 200 + i
            //: btn.setTitleColor(UIColor.appThemeColor(), for: UIControl.State.normal)
            btn.setTitleColor(UIColor.plaster(), for: UIControl.State.normal)
            //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 15)
            btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 15)
            //: btn.setTitle(dataSource[i].localized, for: UIControl.State.normal)
            btn.setTitle(dataSource[i].localized, for: UIControl.State.normal)
            //: btn.addTarget(self, action: #selector(itemTouch(sender:)), for: UIControl.Event.touchUpInside)
            btn.addTarget(self, action: #selector(bindItem(sender:)), for: UIControl.Event.touchUpInside)
            //: self.stackView.addArrangedSubview(btn)
            self.stackView.addArrangedSubview(btn)

            //: if i != 0 {
            if i != 0 {
                //: let lineView = UIView.init()
                let lineView = UIView()
                //: lineView.backgroundColor = UIColor.init(hex: "#E6E6E6")
                lineView.backgroundColor = UIColor(hex: (String(str_cameraName.suffix(2)) + String(str_defineText)))
                //: btn.addSubview(lineView)
                btn.addSubview(lineView)
                //: lineView.snp.makeConstraints { make in
                lineView.snp.makeConstraints { make in
                    //: make.top.equalTo(10)
                    make.top.equalTo(10)
                    //: make.leading.equalToSuperview()
                    make.leading.equalToSuperview()
                    //: make.width.equalTo(1)
                    make.width.equalTo(1)
                    //: make.height.equalTo(24)
                    make.height.equalTo(24)
                }
            }
        }
    }

    //: @objc func itemTouch(sender: UIButton) {
    @objc func bindItem(sender: UIButton) {
        //: let tag = sender.tag - 200
        let tag = sender.tag - 200
        //: if EqualThen.share.loginUserMode.sex == self.userModel.sex {
        if EqualThen.share.loginUserMode.sex == self.userModel.sex {
            //: switch tag {
            switch tag {
            //: case 0:
            case 0:
                //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                self.delegate?.appGroup(uid: self.userModel.uid, nickname: self.userModel.nickname)
                //: self.dismiss()
                self.belowTotaleraction()
            //: break
            //: default:
            default:
                //: break
                break
            }
            //: } else {
        } else {
            //: if self.userModel.isAttention {
            if self.userModel.isAttention {
                //: switch tag {
                switch tag {
                //: case 0:
                case 0:
                    //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    self.delegate?.appGroup(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    //: self.dismiss()
                    self.belowTotaleraction()
                //: break
                //: case 1:
                case 1:
                    //: EditTextThen.share.func__pushToPriveteChatVC(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    EditTextThen.share.fullMoon(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    //: self.dismiss()
                    self.belowTotaleraction()
                //: break
                //: default:
                default:
                    //: break
                    break
                }
                //: } else {
            } else {
                //: switch tag {
                switch tag {
                //: case 0:
                case 0:
                    //: freshfollowUser(sender: sender)
                    design(sender: sender)
                //: break
                //: case 1:
                case 1:
                    //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    self.delegate?.appGroup(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    //: self.dismiss()
                    self.belowTotaleraction()
                //: break
                //: case 2:
                case 2:
                    //: EditTextThen.share.func__pushToPriveteChatVC(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    EditTextThen.share.fullMoon(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    //: self.dismiss()
                    self.belowTotaleraction()
                //: break
                //: default:
                default:
                    //: break
                    break
                }
            }
        }
    }

    //: func freshfollowUser(sender: UIButton) {
    func design(sender: UIButton) {
        //: req_followUser(uid: self.userModel.uid) { succeed in
        soulCompletion(uid: self.userModel.uid) { succeed in
            //: if succeed {
            if succeed {
                //: self.followingNum.text = "\((Int(self.userModel.fansNum ) ?? 0) + 1)"
                self.followingNum.text = "\((Int(self.userModel.fansNum) ?? 0) + 1)"
                //: self.stackView.removeArrangedSubview(sender)
                self.stackView.removeArrangedSubview(sender)
                //: sender.isHidden = true
                sender.isHidden = true
            }
        }
    }

    //: func req_followUser(uid: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    func soulCompletion(uid: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["attentionUid"] = uid
        dict[(String(str_titleName) + String(str_qualityTitle.prefix(6)))] = uid
        //: dict["source"] = "1"
        dict[(str_personalValue.replacingOccurrences(of: "image", with: "rc"))] = "1"
        //: PostulationReactiveCompatible.req_atationTool(isAttention: true, params: dict) { succeed, result, errorModel in
        PostulationReactiveCompatible.addParams(isAttention: true, params: dict) { succeed, _, _ in
            //: completion?(succeed)
            completion?(succeed)
        }
    }

    //: @objc private func iconBtnClick() {
    @objc private func addEqual() {
        //: EditTextThen.share.func__pushToUserDetailVC(uid: self.userModel.uid)
        EditTextThen.share.soulAge(uid: self.userModel.uid)
        //: self.dismiss()
        self.belowTotaleraction()
    }
}

//: extension TalkingLiveUserCardView {
extension TitleCardView {
    //: @objc func moreBtnClick() {
    @objc func selectedWith() {
        //: var titleArray = ["Report".localized, "Block".localized]
        var titleArray = [(str_commonTitle.replacingOccurrences(of: "value", with: "R") + String(str_roomRemoveTitle)).localized, (String(str_backgroundValue)).localized]
        /// 主播
        //: if liveUserId == EqualThen.share.loginUserMode.userID {
        if liveUserId == EqualThen.share.loginUserMode.userID {
            //: if self.userModel.isMute {
            if self.userModel.isMute {
                //: titleArray.append("Muted".localized)
                titleArray.append((String(str_iconTitle)).localized)
                //: }else {
            } else {
                //: titleArray.append("Mute".localized)
                titleArray.append((String(str_tapData)).localized)
            }
        }
        //: if self.userModel.inMyBlackList {
        if self.userModel.inMyBlackList {
            //: titleArray.remove(at: 1)
            titleArray.remove(at: 1)
        }
        //: Config.MenuCellConfig.menuCellHeight = 26
        Config.CustomFile.menuCellHeight = 26
        //: let dropMenu = DropDownMenuView.pullDropDrownMenu(anchorView: moreBtn, titleArray: titleArray, imageArray: [])
        let dropMenu = BeautyReactiveCompatible.spellAdd(anchorView: moreBtn, titleArray: titleArray, imageArray: [])
        //: dropMenu.menuBgColor = UIColor.init(hex: "#F6F6F6")!
        dropMenu.menuBgColor = UIColor(hex: (String(str_appData) + str_topData.replacingOccurrences(of: "next", with: "F6")))!
        //: dropMenu.menuDelegate = self
        dropMenu.menuDelegate = self
        //: dropMenu.menuStyle = .MenuCustStyle
        dropMenu.menuStyle = .MenuCustStyle
    }

    //: func show() {
    func party() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = NameThen(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData)
        //: popView?.initWithView(view: self)
        popView?.observe(view: self)
        //: popView?.showInView(view: self.currentViewController()?.view ?? MacroDefine.getWindow())
        popView?.shackUp(view: self.infoController()?.view ?? UserMacroDefine.toUp())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func belowTotaleraction() {
        //: popView?.dismissView()
        popView?.big()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingLiveUserCardView: DropDownMenuViewDelegate {
extension TitleCardView: TitleViewDelegate {
    //: func didClickSelectedRow(index: Int, title: String) {
    func appText(index: Int, title: String) {
        /// 举报
        //: if index == 0 {
        if index == 0 {
            //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: self.userModel.uid)
            let reportView = WithSkinViewDelegate(frame: UIScreen.main.bounds, type: .reportUserType, rId: self.userModel.uid)
            //: reportView.showReportViewIn(view: nil)
            reportView.withPair(view: nil)

            /// 拉黑
            //: } else if index == 1 {
        } else if index == 1 {
            //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
            MotilityThen.viewConfig(title: nil, message: kLet_viewNetValue, leftBtnTitle: (String(str_ofValue)).localized, rightBtnTitle: "OK".localized) {
                //: TalkingAlertShow.hideAlert()
                MotilityThen.afterward()
                //: } rightBlock: {
            } rightBlock: {
                //: TalkingAlertShow.hideAlert()
                MotilityThen.afterward()
                //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userModel.uid, isBlack: true) { succeed, result, errorModel in
                TitleEqualRequestManager.betweenValue(uid: self.userModel.uid, isBlack: true) { succeed, _, _ in
                    //: if succeed == true {
                    if succeed == true {
                        //: if self.liveUserId == EqualThen.share.loginUserMode.userID {
                        if self.liveUserId == EqualThen.share.loginUserMode.userID {
                            //: let toastStr = "Kicked out of the live room".localized
                            let toastStr = (String(str_locationData) + str_tableTitle.replacingOccurrences(of: "first", with: "o")).localized
                            //: ProgressHUD.toast(toastStr)
                            ModelReactiveCompatible.doMake(toastStr)

                            //: NotificationCenter.default.post(name: LIVE_BLOCK_USER_NOTIFICATION,
                            NotificationCenter.default.post(name: kLet_giftRecordText,
                                                            //: object: nil,
                                                            object: nil,
                                                            //: userInfo: ["uid": self.userModel.uid])
                                                            userInfo: [String(bytes: str_withValue.map{textHandle(profile: $0)}, encoding: .utf8)!: self.userModel.uid])

                            //: }else {
                        } else {
                            //: let toastStr = "Shielding Success".localized
                            let toastStr = (String(str_upName.suffix(6)) + String(str_tableData.suffix(6)) + "ccess").localized
                            //: ProgressHUD.toast(toastStr)
                            ModelReactiveCompatible.doMake(toastStr)
                        }
                        //: self.dismiss()
                        self.belowTotaleraction()
                    }
                }
            }
            //: } else if index == 2 {
        } else if index == 2 {
            //: if self.userModel.isMute {
            if self.userModel.isMute {
                //: TalkingAlertShow.alert(title: nil, message: "Are you sure you want to cancel the mute?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Confirm".localized) {
                MotilityThen.viewConfig(title: nil, message: String(bytes: str_videoContent.map{BotanicBreeze.inputView(to: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_ofValue)).localized, rightBtnTitle: (String(str_requestData.suffix(7))).localized) {
                    //: TalkingAlertShow.hideAlert()
                    MotilityThen.afterward()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    MotilityThen.afterward()
                    //: ProgressHUD.show()
                    ModelReactiveCompatible.fromTarget()
                    //: TalkingAudienceManager().req_liveRoomUnmute(targetUid: self.userModel.uid, completion: { succeed, result, errorModel in
                    ExecutiveAudienceManager().nameCompletion(targetUid: self.userModel.uid, completion: { succeed, _, _ in
                        //: ProgressHUD.dismiss()
                        ModelReactiveCompatible.dataConverterCan()
                        //: if succeed {
                        if succeed {
                            //: self.func__showStatusBarSuccessMsg(showMsg: "The mute has been lifted~".localized)
                            self.fileFirst(showMsg: (String(str_giftContent) + String(str_cameraData)).localized)
                        }
                        //: self.dismiss()
                        self.belowTotaleraction()
                        //: })
                    })
                }
                //: } else {
            } else {
                //: muteView.showView()
                muteView.largess()
                //: muteView.targetUid = self.userModel.uid
                muteView.targetUid = self.userModel.uid
                //: self.dismiss()
                self.belowTotaleraction()
            }
        }
    }
}

//: extension TalkingLiveUserCardView {
extension TitleCardView {
    // 添加视图
    //: private func setupSubviews() {
    private func section() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(uidLb)
        contentView.addSubview(uidLb)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(nameLb)
        contentView.addSubview(nameLb)
        //: contentView.addSubview(levelIcon)
        contentView.addSubview(levelIcon)
        //: contentView.addSubview(signLb)
        contentView.addSubview(signLb)
        //: contentView.addSubview(followersLab)
        contentView.addSubview(followersLab)
        //: contentView.addSubview(followersNum)
        contentView.addSubview(followersNum)
        //: contentView.addSubview(followingLab)
        contentView.addSubview(followingLab)
        //: contentView.addSubview(followingNum)
        contentView.addSubview(followingNum)

        //: contentView.layoutIfNeeded()
        contentView.layoutIfNeeded()

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: contentView.addSubview(lineView)
            contentView.addSubview(lineView)
            //: contentView.addSubview(stackView)
            contentView.addSubview(stackView)
            //: contentView.addSubview(moreBtn)
            contentView.addSubview(moreBtn)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func fileApp() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-44)
            make.bottom.equalToSuperview().offset(-44)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: if self.type == .user_me {
            if self.type == .user_me {
                //: make.height.equalTo(192)
                make.height.equalTo(192)
                //: }else {
            } else {
                //: make.height.equalTo(233)
                make.height.equalTo(233)
            }
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(-33)
            make.top.equalTo(-33)
            //: make.width.height.equalTo(80)
            make.width.height.equalTo(80)
        }
        //: uidLb.snp.makeConstraints { make in
        uidLb.snp.makeConstraints { make in
            //: make.leading.top.equalTo(12)
            make.leading.top.equalTo(12)
            //: make.trailing.equalTo(topIcon.snp.leading).offset(-10)
            make.trailing.equalTo(topIcon.snp.leading).offset(-10)
        }
        //: nameLb.snp.makeConstraints { make in
        nameLb.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(12)
            make.top.equalTo(topIcon.snp.bottom).offset(12)
            //: make.centerX.equalToSuperview().offset(-12)
            make.centerX.equalToSuperview().offset(-12)
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(kLet_cameraValue / 2)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: levelIcon.snp.makeConstraints { make in
        levelIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLb.snp.trailing).offset(5)
            make.leading.equalTo(nameLb.snp.trailing).offset(5)
            //: make.centerY.equalTo(nameLb)
            make.centerY.equalTo(nameLb)
            //: make.size.equalTo(CGSize(width: 32, height: 14))
            make.size.equalTo(CGSize(width: 32, height: 14))
        }
        //: signLb.snp.makeConstraints { make in
        signLb.snp.makeConstraints { make in
            //: make.top.equalTo(nameLb.snp.bottom).offset(12)
            make.top.equalTo(nameLb.snp.bottom).offset(12)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(38)
            make.height.equalTo(38)
        }
        //: followersNum.snp.makeConstraints { make in
        followersNum.snp.makeConstraints { make in
            //: make.top.equalTo(signLb.snp.bottom).offset(12)
            make.top.equalTo(signLb.snp.bottom).offset(12)
            //: make.centerX.equalTo(contentView).offset(-ScreenWidth/4+10)
            make.centerX.equalTo(contentView).offset(-kLet_cameraValue / 4 + 10)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: followingNum.snp.makeConstraints { make in
        followingNum.snp.makeConstraints { make in
            //: make.top.equalTo(signLb.snp.bottom).offset(12)
            make.top.equalTo(signLb.snp.bottom).offset(12)
            //: make.centerX.equalTo(contentView).offset(ScreenWidth/4-10)
            make.centerX.equalTo(contentView).offset(kLet_cameraValue / 4 - 10)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: followersLab.snp.makeConstraints { make in
        followersLab.snp.makeConstraints { make in
            //: make.top.equalTo(followersNum.snp.bottom).offset(5)
            make.top.equalTo(followersNum.snp.bottom).offset(5)
            //: make.centerX.equalTo(followersNum)
            make.centerX.equalTo(followersNum)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }
        //: followingLab.snp.makeConstraints { make in
        followingLab.snp.makeConstraints { make in
            //: make.top.equalTo(followingNum.snp.bottom).offset(5)
            make.top.equalTo(followingNum.snp.bottom).offset(5)
            //: make.centerX.equalTo(followingNum)
            make.centerX.equalTo(followingNum)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: lineView.snp.makeConstraints { make in
            lineView.snp.makeConstraints { make in
                //: make.top.equalTo(followersLab.snp.bottom).offset(12)
                make.top.equalTo(followersLab.snp.bottom).offset(12)
                //: make.leading.equalTo(7)
                make.leading.equalTo(7)
                //: make.trailing.equalTo(-7)
                make.trailing.equalTo(-7)
                //: make.height.equalTo(1)
                make.height.equalTo(1)
            }
            //: stackView.snp.makeConstraints { make in
            stackView.snp.makeConstraints { make in
                //: make.top.equalTo(lineView)
                make.top.equalTo(lineView)
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.height.equalTo(44)
                make.height.equalTo(44)
            }
            //: moreBtn.snp.makeConstraints { make in
            moreBtn.snp.makeConstraints { make in
                //: make.trailing.equalToSuperview()
                make.trailing.equalToSuperview()
                //: make.top.equalTo(12)
                make.top.equalTo(12)
                //: make.size.equalTo(CGSize(width: 44, height: 20))
                make.size.equalTo(CGSize(width: 44, height: 20))
            }
        }
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: let touch = touches.first!
        let touch = touches.first!
        //: var point = touch.location(in: self.currentViewController()?.view)
        var point = touch.location(in: self.infoController()?.view)
        //: point = contentView.layer.convert(point, from: self.currentViewController()?.view.layer)
        point = contentView.layer.convert(point, from: self.infoController()?.view.layer)
        //: if !contentView.layer.contains(point) {
        if !contentView.layer.contains(point) {
            //: self.dismiss()
            self.belowTotaleraction()
        }
    }
}
