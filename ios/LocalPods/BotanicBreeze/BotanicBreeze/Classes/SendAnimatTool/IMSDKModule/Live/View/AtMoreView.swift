
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_disappearTitle:[UInt8] = [0xf0,0xf7,0xf0,0xed,0xb1,0xfa,0xf6,0xfd,0xfc,0xeb,0xa3,0xb0,0xb9,0xf1,0xf8,0xea,0xb9,0xf7,0xf6,0xed,0xb9,0xfb,0xfc,0xfc,0xf7,0xb9,0xf0,0xf4,0xe9,0xf5,0xfc,0xf4,0xfc,0xf7,0xed,0xfc,0xfd]

/*: "btn_live_more_beauty_nor" :*/
fileprivate let str_clothesText:[Character] = ["b","t","n","_","l","i","v","e"]
fileprivate let str_currentData:[Character] = ["_","m","o","r","e","_","b","e","a","u","t","y","_","n","o","r"]

/*: "Beautify" :*/
fileprivate let str_playerData:[Character] = ["B","e","a","u","t","i","f"]
fileprivate let str_toText:[Character] = ["y"]

/*: "btn_live_more_switch_nor" :*/
fileprivate let str_mSizeName:[Character] = ["b","t","n","_","l"]
fileprivate let str_customEngineTitle:String = "ive_mself gift to after add"
fileprivate let str_indicatorTitle:String = "wcountc"
fileprivate let str_groupBackLetValue:[Character] = ["h","_","n","o","r"]

/*: "Switch" :*/
fileprivate let str_logContent:[Character] = ["S","w","i","t","c","h"]

/*: "btn_live_more_stop_nor" :*/
fileprivate let str_managerText:[Character] = ["b","t","n","_","l","i","v","e"]
fileprivate let str_equalValue:[Character] = ["_","m","o","r","e"]
fileprivate let str_behindText:String = "name let have call make_stop"

/*: "Stop Live" :*/
fileprivate let str_entitleContent:String = "Stop Livtext reply"
fileprivate let str_sizeName:String = "mode"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtMoreView.swift
//  AbroadTalking
//
//  Created by young on 2023/7/11.
//

//: import UIKit
import UIKit

//: class TalkingLiveRoomMoreView: UIView {
class AtMoreView: UIView {
    //: private let contentV_H = (104+kDeviceSafeBottomHeight)
    private let contentV_H = (104 + kLet_nextData)
    //: private let beautifySettingView_H = (258+kDeviceSafeBottomHeight+50)
    private let beautifySettingView_H = (258 + kLet_nextData + 50)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        setupWithoutQuitsSubviews()
        //: setupSubViewsConstraint()
        deadlineDown()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_disappearTitle.map{$0^153}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var dismissBtn: UIButton = {
    private lazy var dismissBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(bgDismissButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(brushAsideShirtButtonClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
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
        //: v.alignment = .leading
        v.alignment = .leading
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 0
        v.spacing = 0
        //: return v
        return v
        //: }()
    }()

    //: private lazy var beautifyBtn: TalkingButton = {
    private lazy var beautifyBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton()
        let btn = ProgressTalkingButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_live_more_beauty_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_clothesText) + String(str_currentData))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .pingfang(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.addColor(), for: .normal)
        //: btn.setTitle("Beautify".localized, for: .normal)
        btn.setTitle((String(str_playerData) + String(str_toText)).localized, for: .normal)
        //: btn.imageAlignment = .top
        btn.imageAlignment = .top
        //: btn.spaceBetweenTitleAndImage = 12
        btn.spaceBetweenTitleAndImage = 12
        //: btn.addTarget(self, action: #selector(beautifyButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(beautifyRemoveClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var switchBtn: TalkingButton = {
    private lazy var switchBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton()
        let btn = ProgressTalkingButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_live_more_switch_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_mSizeName) + String(str_customEngineTitle.prefix(5)) + "ore_s" + str_indicatorTitle.replacingOccurrences(of: "count", with: "it") + String(str_groupBackLetValue))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .pingfang(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.addColor(), for: .normal)
        //: btn.setTitle("Switch".localized, for: .normal)
        btn.setTitle((String(str_logContent)).localized, for: .normal)
        //: btn.imageAlignment = .top
        btn.imageAlignment = .top
        //: btn.spaceBetweenTitleAndImage = 12
        btn.spaceBetweenTitleAndImage = 12
        //: btn.addTarget(self, action: #selector(switchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(enableTarget), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var stopBtn: TalkingButton = {
    private lazy var stopBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton()
        let btn = ProgressTalkingButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_live_more_stop_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_managerText) + String(str_equalValue) + String(str_behindText.suffix(5)) + "_nor")), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .pingfang(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.addColor(), for: .normal)
        //: btn.setTitle("Stop Live".localized, for: .normal)
        btn.setTitle((String(str_entitleContent.prefix(8)) + str_sizeName.replacingOccurrences(of: "mode", with: "e")).localized, for: .normal)
        //: btn.imageAlignment = .top
        btn.imageAlignment = .top
        //: btn.spaceBetweenTitleAndImage = 12
        btn.spaceBetweenTitleAndImage = 12
        //: btn.addTarget(self, action: #selector(stopLiveButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(canvass), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 美颜视图
    //: private lazy var beautifyView: STBeautyAdjustView = {
    private lazy var beautifyView: STBeautyAdjustView = {
        //: let view = STBeautyAdjustView.init(frame: CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: beautifySettingView_H))
        let view = STBeautyAdjustView(frame: CGRect(x: 0, y: kLet_clickData, width: kLet_cameraValue, height: beautifySettingView_H))
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingLiveRoomMoreView {
extension AtMoreView {
    /// 停止直播
    //: private func req_stopLive() {
    private func module() {
        //: TalkingLiveManager.req_liveStop(type: 1) { succeed, result, errorModel in
        UserPushListener.variantSize(type: 1) { succeed, _, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            // 关播成功
            //: TalkingLiveManager.shared().live_releaseAllResource()
            UserPushListener.sexApp().viewLodge()
        }
    }
}

// MARK: - Event

//: extension TalkingLiveRoomMoreView {
extension AtMoreView {
    /// 消除视图按钮
    //: @objc private func bgDismissButtonClick() {
    @objc private func brushAsideShirtButtonClick() {
        //: dismiss()
        effectAgeChange()
    }

    /// 美颜按钮
    //: @objc private func beautifyButtonClick() {
    @objc private func beautifyRemoveClick() {
        //: self.contentView.isHidden = true
        self.contentView.isHidden = true
        //: self.beautifyView.isHidden = false
        self.beautifyView.isHidden = false
        //: self.beautifyView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: beautifySettingView_H)
        self.beautifyView.frame = CGRect(x: 0, y: kLet_clickData, width: kLet_cameraValue, height: beautifySettingView_H)
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.beautifyView.frame.origin.y -= self.beautifyView.height
            self.beautifyView.frame.origin.y -= self.beautifyView.height
        }
    }

    /// 切换摄像头按钮
    //: @objc private func switchButtonClick() {
    @objc private func enableTarget() {
        //: dismiss()
        effectAgeChange()
        //: self.contentView.isHidden = true
        self.contentView.isHidden = true
        //: TalkingLiveManager.shared().switchTRTCCamer(front: switchBtn.isSelected)
        UserPushListener.sexApp().requestFront(front: switchBtn.isSelected)
        //: switchBtn.isSelected = !switchBtn.isSelected
        switchBtn.isSelected = !switchBtn.isSelected
    }

    /// 停止直播按钮
    //: @objc private func stopLiveButtonClick() {
    @objc private func canvass() {
        //: dismiss()
        effectAgeChange()
        //: req_stopLive()
        module()
    }
}

// MARK: - 展示/隐藏视图

//: extension TalkingLiveRoomMoreView {
extension AtMoreView {
    /// 展示视图
    //: func showView() {
    func switchline() {
        //: currentViewController()?.view.addSubview(self)
        infoController()?.view.addSubview(self)
        //: self.contentView.isHidden = false
        self.contentView.isHidden = false
        //: self.contentView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: contentV_H)
        self.contentView.frame = CGRect(x: 0, y: kLet_clickData, width: kLet_cameraValue, height: contentV_H)
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame.origin.y -= self.contentView.height
            self.contentView.frame.origin.y -= self.contentView.height
        }
    }

    /// 隐藏视图
    //: func dismiss() {
    func effectAgeChange() {
        //: if self.beautifyView.isHidden == false {
        if self.beautifyView.isHidden == false {
            // 保存美颜设置
            //: STFilterCacheCost.share.store()
            STFilterCacheCost.share.store()

            //: UIView.animate(withDuration: 0.3) {
            UIView.animate(withDuration: 0.3) {
                //: self.beautifyView.frame.origin.y += self.beautifyView.height
                self.beautifyView.frame.origin.y += self.beautifyView.height
                //: } completion: { finish in
            } completion: { _ in
                //: self.beautifyView.isHidden = true
                self.beautifyView.isHidden = true
                //: self.removeFromSuperview()
                self.removeFromSuperview()
            }

            //: } else {
        } else {
            //: UIView.animate(withDuration: 0.3) {
            UIView.animate(withDuration: 0.3) {
                //: self.contentView.frame.origin.y += self.contentView.height
                self.contentView.frame.origin.y += self.contentView.height
                //: } completion: { finish in
            } completion: { _ in
                //: self.removeFromSuperview()
                self.removeFromSuperview()
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomMoreView {
extension AtMoreView {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupWithoutQuitsSubviews() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(dismissBtn)
        addSubview(dismissBtn)
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.addArrangedSubview(beautifyBtn)
        stackView.addArrangedSubview(beautifyBtn)
        //: stackView.addArrangedSubview(switchBtn)
        stackView.addArrangedSubview(switchBtn)
        //: stackView.addArrangedSubview(stopBtn)
        stackView.addArrangedSubview(stopBtn)
        //: addSubview(beautifyView)
        addSubview(beautifyView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func deadlineDown() {
        //: dismissBtn.snp.makeConstraints { make in
        dismissBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.top.leading.equalToSuperview()
            make.top.leading.equalToSuperview()
        }
        //: let width = ScreenWidth/4
        let width = kLet_cameraValue / 4
        //: beautifyBtn.snp.makeConstraints { make in
        beautifyBtn.snp.makeConstraints { make in
            //: make.width.equalTo(width)
            make.width.equalTo(width)
            //: make.height.equalTo(contentV_H-kDeviceSafeBottomHeight)
            make.height.equalTo(contentV_H - kLet_nextData)
        }
        //: switchBtn.snp.makeConstraints { make in
        switchBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(beautifyBtn)
            make.width.height.equalTo(beautifyBtn)
        }
        //: stopBtn.snp.makeConstraints { make in
        stopBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(beautifyBtn)
            make.width.height.equalTo(beautifyBtn)
        }
    }
}
