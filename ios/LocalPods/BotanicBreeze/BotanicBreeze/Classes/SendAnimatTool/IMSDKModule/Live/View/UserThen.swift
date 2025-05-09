
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewLeadingTitle:[UInt8] = [0x2b,0x2c,0x2b,0x36,0x6a,0x21,0x2d,0x26,0x27,0x30,0x78,0x6b,0x62,0x2a,0x23,0x31,0x62,0x2c,0x2d,0x36,0x62,0x20,0x27,0x27,0x2c,0x62,0x2b,0x2f,0x32,0x2e,0x27,0x2f,0x27,0x2c,0x36,0x27,0x26]

/*: "Select mute duration" :*/
fileprivate let str_actionText:[Character] = ["S","e","l","e","c","t"]
fileprivate let str_serviceValue:String = " mutevalue back"
fileprivate let str_viewIndexData:String = "bar false handle content self dur"

/*: "Cirform" :*/
fileprivate let str_fatalData:String = "if let push letCirform"

/*: "Mute success" :*/
fileprivate let str_styleName:String = "Mute selected make"
fileprivate let str_infoHiddenReturnName:String = "smanagercess"

/*: "day" :*/
fileprivate let str_textViewToName:String = "dinteresty"

/*: "days" :*/
fileprivate let str_delayData:[Character] = ["d","a","y","s"]

/*:  " :*/
fileprivate let str_tapValue:[Character] = [" "]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UserThen.swift
//  BotanicBreeze
//
//  Created by Charlotte on 2024/8/15.
//

//: import UIKit
import UIKit

//: enum MuteViewType {
enum ModelViewType {
    //: case live
    case live
    //: case voiceRoom
    case voiceRoom
}

//: class TalkingLiveRoomMuteView: UIView {
class UserThen: UIView {
    //: private let contentV_Size = CGSize.init(width: 297, height: 223)
    private let contentV_Size = CGSize(width: 297, height: 223)
    //: private let titleStr = ["1","3","7"]
    private let titleStr = ["1", "3", "7"]
    //: private var lastBtn = UIButton()
    private var lastBtn = UIButton()
    //: var targetUid = ""
    var targetUid = ""
    //: var viewType: MuteViewType = .live
    var viewType: ModelViewType = .live

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        errorRequest()
        //: setupSubViewsConstraint()
        afterWith()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewLeadingTitle.map{$0^66}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var dismissBtn: UIButton = {
    private lazy var dismissBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(bgDismissButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(endue), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.layer.cornerRadius = 16
        v.layer.cornerRadius = 16
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: return v
        return v
        //: }()
    }()

    //: private lazy var tipsLb: UILabel = {
    private lazy var tipsLb: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangWithDiameter(fontSize: 18)
        lb.font = UIFont.pingfangWithDiameter(fontSize: 18)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.executeTo()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.text = "Select mute duration".localized
        lb.text = (String(str_actionText) + String(str_serviceValue.prefix(5)) + String(str_viewIndexData.suffix(4)) + "ation").localized
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var commitBtn: UIButton = {
    lazy var commitBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 18)
        //: btn.setTitle("Cirform".localized, for: .normal)
        btn.setTitle((String(str_fatalData.suffix(7))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 203, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: 203, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(commitButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(statusEqual), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 展示/隐藏视图

//: extension TalkingLiveRoomMuteView {
extension UserThen {
    /// 消除视图按钮
    //: @objc private func bgDismissButtonClick() {
    @objc private func endue() {
        //: dismiss()
        addDown()
    }

    /// 展示视图
    //: func showView() {
    func largess() {
        //: currentViewController()?.view.addSubview(self)
        infoController()?.view.addSubview(self)
        //: self.contentView.isHidden = false
        self.contentView.isHidden = false
        //: self.contentView.frame = CGRect(x: (ScreenWidth - contentV_Size.width)/2, y: ScreenHeight, width: contentV_Size.width, height: contentV_Size.height)
        self.contentView.frame = CGRect(x: (kLet_cameraValue - contentV_Size.width) / 2, y: kLet_clickData, width: contentV_Size.width, height: contentV_Size.height)

        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame.origin.y = (ScreenHeight-self.contentV_Size.height)/2
            self.contentView.frame.origin.y = (kLet_clickData - self.contentV_Size.height) / 2
        }
    }

    /// 隐藏视图
    //: func dismiss() {
    func addDown() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame.origin.y = ScreenHeight
            self.contentView.frame.origin.y = kLet_clickData
            //: } completion: { finish in
        } completion: { _ in
            //: self.removeFromSuperview()
            self.removeFromSuperview()
        }
    }
}

// MARK: - Event

//: extension TalkingLiveRoomMuteView {
extension UserThen {
    //: @objc private func muteBtnClick(btn: UIButton) {
    @objc private func aboveBindApp(btn: UIButton) {
        //: lastBtn.isSelected = false
        lastBtn.isSelected = false
        //: btn.isSelected = !btn.isSelected
        btn.isSelected = !btn.isSelected
        //: lastBtn = btn
        lastBtn = btn
        //: commitBtn.isEnabled = lastBtn.isSelected
        commitBtn.isEnabled = lastBtn.isSelected
    }

    //: @objc private func commitButtonClick() {
    @objc private func statusEqual() {
        //: let i = lastBtn.tag - 100
        let i = lastBtn.tag - 100
        //: guard i < titleStr.count  else { return }
        guard i < titleStr.count else { return }
        //: let index = titleStr[i]
        let index = titleStr[i]
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()

        //: if self.viewType == .live {
        if self.viewType == .live {
            //: TalkingAudienceManager().req_liveRoomMute(targetUid: targetUid, duration: index) { succeed, result, errorModel in
            ExecutiveAudienceManager().tabPhone(targetUid: targetUid, duration: index) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                ModelReactiveCompatible.dataConverterCan()
                //: if succeed {
                if succeed {
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Mute success".localized)
                    self.fileFirst(showMsg: (String(str_styleName.prefix(5)) + str_infoHiddenReturnName.replacingOccurrences(of: "manager", with: "uc")).localized)
                }
                //: self.dismiss()
                self.addDown()
            }
            //: }else{
        } else {
            //: TalkingVoiceRoomReqTool.req_VoiceRoomMute(targetUid: targetUid, roomID: TalkingVoiceRoomManager.shared().partyModel.roomId, duration: index) { succeed, result, errorModel in
            SurgeryReqTool.imageName(targetUid: targetUid, roomID: ViewRoomManager.astatine().partyModel.roomId, duration: index) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                ModelReactiveCompatible.dataConverterCan()
                //: if succeed {
                if succeed {
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Mute success".localized)
                    self.fileFirst(showMsg: (String(str_styleName.prefix(5)) + str_infoHiddenReturnName.replacingOccurrences(of: "manager", with: "uc")).localized)
                }
                //: self.dismiss()
                self.addDown()
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomMuteView {
extension UserThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func errorRequest() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(dismissBtn)
        addSubview(dismissBtn)
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(tipsLb)
        contentView.addSubview(tipsLb)
        //: contentView.addSubview(commitBtn)
        contentView.addSubview(commitBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func afterWith() {
        //: dismissBtn.snp.makeConstraints { make in
        dismissBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: tipsLb.snp.makeConstraints { make in
        tipsLb.snp.makeConstraints { make in
            //: make.top.equalTo(32)
            make.top.equalTo(32)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: commitBtn.snp.makeConstraints { make in
        commitBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 203, height: 50))
            make.size.equalTo(CGSize(width: 203, height: 50))
        }

        //: for i in 0..<3 {
        for i in 0 ..< 3 {
            //: let btn = UIButton()
            let btn = UIButton()
            //: btn.layer.borderWidth = 1
            btn.layer.borderWidth = 1
            //: btn.layer.borderColor = UIColor.publishView().cgColor
            btn.layer.borderColor = UIColor.publishView().cgColor
            //: btn.layer.cornerRadius = 10
            btn.layer.cornerRadius = 10
            //: btn.layer.masksToBounds = true
            btn.layer.masksToBounds = true
            //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
            btn.setTitleColor(UIColor.addColor(), for: .normal)
            //: btn.setTitleColor(.white, for: .selected)
            btn.setTitleColor(.white, for: .selected)
            //: btn.setBackgroundColor(color: .white, forState: .normal)
            btn.likeness(color: .white, forState: .normal)
            //: btn.setBackgroundColor(color: UIColor.appThemeColor(), forState: .selected)
            btn.likeness(color: UIColor.plaster(), forState: .selected)
            //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
            btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
            //: let title = titleStr[i]
            let title = titleStr[i]
            //: let dayStr = (title == "1") ? "day".localized:"days".localized
            let dayStr = (title == "1") ? (str_textViewToName.replacingOccurrences(of: "interest", with: "a")).localized : (String(str_delayData)).localized
            //: btn.setTitle("\(title) " + dayStr, for: .normal)
            btn.setTitle("\(title) " + dayStr, for: .normal)
            //: btn.tag = 100+i
            btn.tag = 100 + i
            //: btn.addTarget(self, action: #selector(muteBtnClick), for: .touchUpInside)
            btn.addTarget(self, action: #selector(aboveBindApp), for: .touchUpInside)
            //: contentView.addSubview(btn)
            contentView.addSubview(btn)
            //: let width = (Int(contentV_Size.width)-24*2-(titleStr.count-1)*14)/titleStr.count
            let width = (Int(contentV_Size.width) - 24 * 2 - (titleStr.count - 1) * 14) / titleStr.count
            //: let left = 24+(i*width+i*14)
            let left = 24 + (i * width + i * 14)
            //: btn.snp.makeConstraints { make in
            btn.snp.makeConstraints { make in
                //: make.top.equalTo(tipsLb.snp.bottom).offset(30)
                make.top.equalTo(tipsLb.snp.bottom).offset(30)
                //: make.size.equalTo(CGSize.init(width: width, height: 40))
                make.size.equalTo(CGSize(width: width, height: 40))
                //: make.leading.equalTo(left)
                make.leading.equalTo(left)
            }
        }
    }
}
