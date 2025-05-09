
//: Declare String Begin

/*: "Video calls will all use the current Beautify Settings" :*/
fileprivate let str_actualContent:[UInt8] = [0x6b,0x54,0x59,0x58,0x52,0x1d,0x5e,0x5c,0x51,0x51,0x4e,0x1d,0x4a,0x54,0x51,0x51,0x1d,0x5c,0x51,0x51,0x1d,0x48,0x4e,0x58,0x1d,0x49,0x55,0x58,0x1d,0x5e,0x48,0x4f,0x4f,0x58,0x53,0x49,0x1d,0x7f,0x58,0x5c,0x48,0x49,0x54,0x5b,0x44,0x1d,0x6e,0x58,0x49,0x49,0x54,0x53,0x5a,0x4e]

/*: "Cancel" :*/
fileprivate let str_modelValue:String = "rank title with equalCancel"

/*: "OK" :*/
fileprivate let str_iconValue:[Character] = ["O","K"]

/*: "Done" :*/
fileprivate let str_toValue:String = "Doneequal extension system any at"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SendViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/30.
//

//: import UIKit
import UIKit

//: class TalkingMyBeautyVC: TalkingBaseViewController {
class SendViewController: SeamViewController {
    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: if self.beautyView.stCamera != nil {
        if self.beautyView.stCamera != nil {
            //: self.beautyView.stCamera.startRunning()
            self.beautyView.stCamera.startRunning()
        }
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: if self.beautyView.stCamera != nil {
        if self.beautyView.stCamera != nil {
            //: self.beautyView.stCamera.stopRunning()
            self.beautyView.stCamera.stopRunning()
        }
        //: popGesture(isOpen: true)
        snapFrom(isOpen: true)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true
        //: popGesture(isOpen: false)
        snapFrom(isOpen: false)
        //: setupSubviews()
        cell()
    }

    // MARK: - Lazy Load

    //: lazy var beautyView: STFilterView = {
    lazy var beautyView: STFilterView = {
        //: let v = STFilterView(wihtVideoConversation: "\(AVCaptureSession.Preset.hd1280x720.rawValue)")
        let v = STFilterView(wihtVideoConversation: "\(AVCaptureSession.Preset.hd1280x720.rawValue)")
        //: v?.frame = self.view.bounds
        v?.frame = self.view.bounds
        //: return v!
        return v!
        //: }()
    }()

    //: private lazy var justView: STBeautyAdjustView = {
    private lazy var justView: STBeautyAdjustView = {
        //: let view = STBeautyAdjustView.init(frame: CGRect.init(x: 0, y: ScreenHeight-(258+kDeviceSafeBottomHeight+50), width: ScreenWidth, height: 258+kDeviceSafeBottomHeight+50))
        let view = STBeautyAdjustView(frame: CGRect(x: 0, y: kLet_clickData - (258 + kLet_nextData + 50), width: kLet_cameraValue, height: 258 + kLet_nextData + 50))
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingMyBeautyVC {
extension SendViewController {
    //: @objc func backClick() {
    @objc func changeError() {
        //: let config = ShowAlertConfig()
        let config = AtAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: config.textFont = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        config.textFont = UIFont.pingfang(type: .Medium, fontSize: 18)
        //: TalkingAlertShow.customAlert(message: "Video calls will all use the current Beautify Settings".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        MotilityThen.customLabel(message: String(bytes: str_actualContent.map{$0^61}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_modelValue.suffix(6))).localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            MotilityThen.afterward()
            //: }, rightBlock: { [weak self] in
        }, rightBlock: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: TalkingAlertShow.hideAlert()
            MotilityThen.afterward()
            //: STFilterCacheCost.share.store()
            STFilterCacheCost.share.store()
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
            //: }, config: config)
        }, config: config)
    }
}

//: extension TalkingMyBeautyVC {
extension SendViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func cell() {
        //: self.view.backgroundColor = .black
        self.view.backgroundColor = .black

        //: let backBtn = UIButton.init()
        let backBtn = UIButton()
        //: backBtn.setTitle("Done".localized, for: .normal)
        backBtn.setTitle((String(str_toValue.prefix(4))).localized, for: .normal)
        //: backBtn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        backBtn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: backBtn.addTarget(self, action: #selector(backClick), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(changeError), for: .touchUpInside)
        //: self.view.addSubview(backBtn)
        self.view.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_timeSenseValue)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(50)
            make.width.equalTo(50)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: self.view.insertSubview(beautyView, at: 0)
        self.view.insertSubview(beautyView, at: 0)
        //: beautyView.snp.makeConstraints { make in
        beautyView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }

        //: self.view.addSubview(justView)
        self.view.addSubview(justView)
    }
}
