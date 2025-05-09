
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_sizeValue:[UInt8] = [0x94,0x99,0x94,0x9f,0x53,0x8e,0x9a,0x8f,0x90,0x9d,0x65,0x54,0x4b,0x93,0x8c,0x9e,0x4b,0x99,0x9a,0x9f,0x4b,0x8d,0x90,0x90,0x99,0x4b,0x94,0x98,0x9b,0x97,0x90,0x98,0x90,0x99,0x9f,0x90,0x8f]

fileprivate func centerRequest(room num: UInt8) -> UInt8 {
    let value = Int(num) + 213
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_live_nor" :*/
fileprivate let str_firstName:[Character] = ["b","t","n","_","l","i","v","e","_","n","o","r"]

/*: "Live" :*/
fileprivate let str_rangeOfIconValue:String = "equal button socialLive"

/*: "btn_party_nor" :*/
fileprivate let str_centerName:[Character] = ["b","t","n","_","p","a","r","t"]
fileprivate let str_cellData:[Character] = ["y","_","n","o","r"]

/*: "Party" :*/
fileprivate let str_editName:[Character] = ["P","a","r","t","y"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InhabitReactiveCompatible.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2024/9/20.
//

//: import UIKit
import UIKit

//: class TalkingTabLiveView: UIView {
class InhabitReactiveCompatible: UIView {
    //: private var popView: TalkingPopView?
    private var popView: NameThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        succeed()
        //: setupSubViewsConstraint()
        dataNeed()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_sizeValue.map{centerRequest(room: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.layer.cornerRadius = 24
        view.layer.cornerRadius = 24
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var liveBtn: UIButton = {
    private lazy var liveBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_live_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_firstName))), for: .normal)
        //: btn.addTarget(self, action: #selector(liveButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(jumpStart), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveLab: UILabel = {
    private lazy var liveLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.executeTo()
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 17)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 17)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Live".localized
        lab.text = (String(str_rangeOfIconValue.suffix(4))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var partyBtn: UIButton = {
    private lazy var partyBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_party_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_centerName) + String(str_cellData))), for: .normal)
        //: btn.addTarget(self, action: #selector(partyButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(viewBroadcast), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var partyLab: UILabel = {
    private lazy var partyLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.executeTo()
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 17)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 17)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Party".localized
        lab.text = (String(str_editName)).localized
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTabLiveView {
extension InhabitReactiveCompatible {
    /// 展示视图
    //: func show() {
    func equalShow() {
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData)
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = NameThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.observe(view: self)
        //: popView?.showInView(view: MacroDefine.getWindow())
        popView?.shackUp(view: UserMacroDefine.toUp())
    }

    /// 隐藏视图
    //: func dismiss() {
    func notMake() {
        //: popView?.dismissView()
        popView?.big()
        //: popView = nil
        popView = nil
    }

    /// 直播按钮事件
    //: @objc private func liveButtonAction() {
    @objc private func jumpStart() {
        //: dismiss()
        notMake()
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_messageValue, object: nil)
    }

    /// 语聊房按钮事件
    //: @objc private func partyButtonAction() {
    @objc private func viewBroadcast() {
        //: dismiss()
        notMake()
        //: EditTextThen.share.func_pushToVoiceRoomVC()
        EditTextThen.share.loadId()
    }
}

// MARK: - Layout

//: extension TalkingTabLiveView {
extension InhabitReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func succeed() {
        //: addSubview(backView)
        addSubview(backView)
        //: backView.addSubview(liveBtn)
        backView.addSubview(liveBtn)
        //: backView.addSubview(liveLab)
        backView.addSubview(liveLab)
        //: backView.addSubview(partyBtn)
        backView.addSubview(partyBtn)
        //: backView.addSubview(partyLab)
        backView.addSubview(partyLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func dataNeed() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(163 + kDeviceSafeBottomHeight)
            make.height.equalTo(163 + kLet_nextData)
        }

        //: liveBtn.snp.makeConstraints { make in
        liveBtn.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 32))
            make.top.equalTo(actualWidth(w: 32))
            //: make.leading.equalTo(actualWidth(w: 63))
            make.leading.equalTo(actualWidth(w: 63))
            //: make.width.height.equalTo(actualWidth(w: 75))
            make.width.height.equalTo(actualWidth(w: 75))
        }
        //: liveLab.snp.makeConstraints { make in
        liveLab.snp.makeConstraints { make in
            //: make.top.equalTo(liveBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(liveBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalTo(liveBtn)
            make.centerX.equalTo(liveBtn)
            //: make.width.equalTo(ScreenWidth/2)
            make.width.equalTo(kLet_cameraValue / 2)
        }

        //: partyBtn.snp.makeConstraints { make in
        partyBtn.snp.makeConstraints { make in
            //: make.top.width.height.equalTo(liveBtn)
            make.top.width.height.equalTo(liveBtn)
            //: make.trailing.equalTo(-actualWidth(w: 63))
            make.trailing.equalTo(-actualWidth(w: 63))
        }
        //: partyLab.snp.makeConstraints { make in
        partyLab.snp.makeConstraints { make in
            //: make.top.equalTo(partyBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(partyBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalTo(partyBtn)
            make.centerX.equalTo(partyBtn)
            //: make.width.equalTo(ScreenWidth/2)
            make.width.equalTo(kLet_cameraValue / 2)
        }
    }
}
