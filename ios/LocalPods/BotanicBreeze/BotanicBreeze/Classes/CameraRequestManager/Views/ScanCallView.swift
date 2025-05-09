
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_floorData:[UInt8] = [0xe0,0xe5,0xe0,0xeb,0x9f,0xda,0xe6,0xdb,0xdc,0xe9,0xb1,0xa0,0x97,0xdf,0xd8,0xea,0x97,0xe5,0xe6,0xeb,0x97,0xd9,0xdc,0xdc,0xe5,0x97,0xe0,0xe4,0xe7,0xe3,0xdc,0xe4,0xdc,0xe5,0xeb,0xdc,0xdb]

fileprivate func tweedledumAndTweedledee(read num: UInt8) -> UInt8 {
    let value = Int(num) - 119
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_video_minimize" :*/
fileprivate let str_makeData:String = "index"
fileprivate let str_blockName:String = "tn_viview back view with"
fileprivate let str_equalData:String = "nlabelize"

/*: "btn_video_drop_nor" :*/
fileprivate let str_kindSizeText:String = "if data indicatorbtn_v"
fileprivate let str_genderContent:[Character] = ["i","d","e","o","_","d","r","o"]
fileprivate let str_productData:[Character] = ["p","_","n","o","r"]

/*: "btn_video_turn_nor" :*/
fileprivate let str_userTextValue:String = "btn_app result"
fileprivate let str_coverData:String = "_turn_nvideo lab lab"
fileprivate let str_imageContent:String = "OR"

/*: "btn_video_turn_pre" :*/
fileprivate let str_viewValue:String = "btn_vcell path model label some"
fileprivate let str_soundData:[Character] = ["_","t","u","r","n","_","p","r","e"]

/*: "Switch" :*/
fileprivate let str_equalName:[Character] = ["S","w","i","t","c","h"]

/*: "btn_video_start_nor" :*/
fileprivate let str_styleValue:[Character] = ["b","t","n","_","v","i","d","e","o"]
fileprivate let str_modelData:String = "_sselected make false"
fileprivate let str_downValue:String = "layer intimate content var viewtart_nor"

/*: "btn_video_start_pre" :*/
fileprivate let str_rangeLogTitle:[Character] = ["b","t","n","_","v","i","d","e","o"]
fileprivate let str_mData:String = "path"
fileprivate let str_titleMinValue:String = "start_preshow error image else equal"

/*: "Camera On" :*/
fileprivate let str_cropText:String = "Camera Onstatus path let return height"

/*: "00:00" :*/
fileprivate let str_buttonNameText:String = "00:00"

/*: "Camera must be on" :*/
fileprivate let str_indexEqualText:String = "Cameralet video"
fileprivate let str_byName:String = "be onsex in model"

/*: "Camera Off" :*/
fileprivate let str_labData:[Character] = ["C","a","m","e","r"]
fileprivate let str_cardTitle:String = "top controla Off"

/*: "%02i:%02i" :*/
fileprivate let str_videoTitle:String = "%0"
fileprivate let str_whoTitle:[Character] = ["2","i",":","%","0","2","i"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ScanCallView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: class TalkingVideoInitivCallView: UIView {
class ScanCallView: UIView {
    //: weak var delegate: Talking1v1VideoInteractionViewDelegate?
    weak var delegate: StatusObjectProtocol?
    //: private var chatModel = TalkingVideoChatModel()
    private var chatModel = ViewChatModel() // 引用类型，整个视频通话共用同一个model
    //: var durationTime = 0.0
    var durationTime = 0.0 // 视频时长
    //: private var countTimer: Timer?
    private var countTimer: Timer? // 通话时间定时器

    //: init(frame: CGRect, chatModel: TalkingVideoChatModel?) {
    init(frame: CGRect, chatModel: ViewChatModel?) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        shouldSubviews()
        //: setupSubViewsConstraint()
        clickConstraint()
        //: if chatModel != nil {
        if chatModel != nil {
            //: self.chatModel = chatModel!
            self.chatModel = chatModel!
        }
        //: showViewsViaStage()
        global()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_floorData.map{tweedledumAndTweedledee(read: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: destroryTimer()
        timer()
        //: invalidateIdleTimer()
        viewHidden()
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    // 点击展示/隐藏交互按钮
    //: private lazy var touchHidenBtn: UIButton = {
    private lazy var touchHidenBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(changeInteractionShowState), for: .touchUpInside)
        btn.addTarget(self, action: #selector(groupAction), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 最小化按钮
    //: private lazy var minimizeBtn: UIButton = {
    private lazy var minimizeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_video_minimize"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (str_makeData.replacingOccurrences(of: "index", with: "b") + String(str_blockName.prefix(5)) + "deo_mi" + str_equalData.replacingOccurrences(of: "label", with: "im"))), for: .normal)
        //: btn.addTarget(self, action: #selector(minimizeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(furCoatShirtButton), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 挂断/取消 按钮
    //: private lazy var hangupBtn: UIButton = {
    private lazy var hangupBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_kindSizeText.suffix(5)) + String(str_genderContent) + String(str_productData))), for: .normal)
        //: btn.addTarget(self, action: #selector(hangupButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(personify), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 旋转摄像头按钮
    //: private lazy var rotateCameraBtn: UIButton = {
    private lazy var rotateCameraBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_video_turn_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_userTextValue.prefix(4)) + "video" + String(str_coverData.prefix(7)) + str_imageContent.lowercased())), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "btn_video_turn_pre"), for: .selected)
        btn.setImage(UIImage.eponymUp(name: (String(str_viewValue.prefix(5)) + "ideo" + String(str_soundData))), for: .selected)
        //: btn.addTarget(self, action: #selector(rotateCameraButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(countName), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rotateCameraDesLab: UILabel = {
    private lazy var rotateCameraDesLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.outsideAllSize(fontSize: 15)
        lab.font = UIFont.outsideAllSize(fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Switch".localized
        lab.text = (String(str_equalName)).localized
        //: return lab
        return lab
        //: }()
    }()

    // 开启/关闭摄像头按钮
    //: private lazy var openCameraBtn: UIButton = {
    private lazy var openCameraBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_video_start_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_styleValue) + String(str_modelData.prefix(2)) + String(str_downValue.suffix(8)))), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "btn_video_start_pre"), for: .selected)
        btn.setImage(UIImage.eponymUp(name: (String(str_rangeLogTitle) + str_mData.replacingOccurrences(of: "path", with: "_") + String(str_titleMinValue.prefix(9)))), for: .selected)
        //: btn.addTarget(self, action: #selector(openCameraButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(prizePlayer), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var openCameraDesLab: UILabel = {
    private lazy var openCameraDesLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.outsideAllSize(fontSize: 15)
        lab.font = UIFont.outsideAllSize(fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Camera On".localized
        lab.text = (String(str_cropText.prefix(9))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var timeLab: UILabel = {
    private lazy var timeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 18)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoInitivCallView {
extension ScanCallView {
    /// 展示视图状态
    //: private func showViewsViaStage() {
    private func global() {
        //: minimizeBtn.isHidden = false
        minimizeBtn.isHidden = false
        //: hangupBtn.isHidden = false
        hangupBtn.isHidden = false
        //: rotateCameraBtn.isHidden = false
        rotateCameraBtn.isHidden = false
        //: rotateCameraDesLab.isHidden = false
        rotateCameraDesLab.isHidden = false
        //: openCameraBtn.isHidden = false
        openCameraBtn.isHidden = false
        //: openCameraDesLab.isHidden = false
        openCameraDesLab.isHidden = false
        //: touchHidenBtn.isEnabled = true
        touchHidenBtn.isEnabled = true
        //: timeLab.isHidden = false
        timeLab.isHidden = false
        //: self.timeLab.text = "00:00"
        self.timeLab.text = (str_buttonNameText.capitalized)
        //: startTalkCount()
        toolThen()
        //: touchHiddenTimer()
        about()
        //: updateLayout()
        layoutModify()
    }

    /// 最小化按钮事件
    //: @objc private func minimizeButtonClick() {
    @objc private func furCoatShirtButton() {
        //: self.delegate?.interactionView_shouldDisplayMiniWindow()
        self.delegate?.miniMake()
    }

    /// 添加视频通话画面窗口
    /// - Parameter view: 视频画面窗口
    //: func addWindowView(view: UIView) {
    func imageStatus(view: UIView) {
        //: self.addSubview(view)
        self.addSubview(view)
    }

    /// 挂断按钮事件
    //: @objc private func hangupButtonClick() {
    @objc private func personify() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoCancelButton)
        kLet_textData.historicalPaper(eventID: kLet_systemValue)
        //: closeViewClick()
        track()
    }

    //: func closeViewClick() {
    func track() {
        //: self.destroryTimer()
        self.timer()
        //: self.delegate?.interactionView_shouldEndCall()
        self.delegate?.belowHalf()
    }

    /// 接听按钮事件
    //: @objc private func acceptButtonClick() {
    @objc private func replyClick() {
        //: self.delegate?.interactionView_shouldAcceptCall()
        self.delegate?.sizeCall()
    }

    /// 关闭摄像头接听视频通话事件
    //: @objc private func acceptTurnOffCameraButtonClick() {
    @objc private func judgeStatus() {
        //: acceptButtonClick()
        replyClick()
        //: self.openCameraBtn.isSelected = false
        self.openCameraBtn.isSelected = false
        //: openCameraButtonClick()
        prizePlayer()
    }

    /// 打开摄像头接听视频通话事件
    //: @objc private func acceptOpenCameraButtonClick() {
    @objc private func magnitudeeractionMedium() {
        //: acceptButtonClick()
        replyClick()
        //: self.openCameraBtn.isSelected = true
        self.openCameraBtn.isSelected = true
        //: openCameraButtonClick()
        prizePlayer()
    }

    /// 旋转摄像头事件
    //: @objc private func rotateCameraButtonClick() {
    @objc private func countName() {
        //: if SenseTime_Use == false, self.openCameraBtn.isSelected == true {
        if kLet_infoData == false, self.openCameraBtn.isSelected == true { // 腾讯美颜 && 摄像头关闭时
            //: self.func__showStatusBarErrorMsg(showMsg: "Camera must be on".localized)
            self.oversight(showMsg: (String(str_indexEqualText.prefix(6)) + " must " + String(str_byName.prefix(5))).localized)
            //: return
            return
        }
        //: self.rotateCameraBtn.isSelected = !self.rotateCameraBtn.isSelected
        self.rotateCameraBtn.isSelected = !self.rotateCameraBtn.isSelected
        //: self.delegate?.interactionView_shouldChangeCamera(isFront: !self.rotateCameraBtn.isSelected)
        self.delegate?.nameFront(isFront: !self.rotateCameraBtn.isSelected)
    }

    /// 是否禁用摄像头事件
    //: @objc private func openCameraButtonClick() {
    @objc private func prizePlayer() {
        //: self.openCameraBtn.isSelected = !self.openCameraBtn.isSelected
        self.openCameraBtn.isSelected = !self.openCameraBtn.isSelected
        //: self.openCameraDesLab.text = self.openCameraBtn.isSelected ? "Camera Off".localized:"Camera On".localized
        self.openCameraDesLab.text = self.openCameraBtn.isSelected ? (String(str_labData) + String(str_cardTitle.suffix(5))).localized : (String(str_cropText.prefix(9))).localized
        //: self.delegate?.interactionView_shouldForbiddenCamera(forbidden: self.openCameraBtn.isSelected)
        self.delegate?.marque(forbidden: self.openCameraBtn.isSelected)
    }

    /// 点击展示/隐藏通话中的按钮
    //: @objc private func changeInteractionShowState() {
    @objc private func groupAction() {
        //: let isHidden = !rotateCameraBtn.isHidden
        let isHidden = !rotateCameraBtn.isHidden
        //: minimizeBtn.isHidden = isHidden
        minimizeBtn.isHidden = isHidden
        //: rotateCameraBtn.isHidden = isHidden
        rotateCameraBtn.isHidden = isHidden
        //: rotateCameraDesLab.isHidden = isHidden
        rotateCameraDesLab.isHidden = isHidden
        //: openCameraBtn.isHidden = isHidden
        openCameraBtn.isHidden = isHidden
        //: openCameraDesLab.isHidden = isHidden
        openCameraDesLab.isHidden = isHidden

        //: hangupBtn.isHidden = isHidden
        hangupBtn.isHidden = isHidden
        //: timeLab.isHidden = isHidden
        timeLab.isHidden = isHidden

        //: if isHidden {
        if isHidden {
            //: invalidateIdleTimer()
            viewHidden()
            //: } else {
        } else {
            //: touchHiddenTimer()
            about()
        }
    }

    //: private func destroryTimer() {
    private func timer() {
        //: if countTimer != nil {
        if countTimer != nil {
            //: countTimer?.invalidate()
            countTimer?.invalidate()
            //: countTimer = nil
            countTimer = nil
        }
    }
}

// MARK: - 通话计时器

//: extension TalkingVideoInitivCallView {
extension ScanCallView {
    /// 开始通话计时
    //: private func startTalkCount() {
    private func toolThen() {
        //: guard self.countTimer == nil else { return }
        guard self.countTimer == nil else { return }

        //: self.countTimer = Timer.scheduledTimer(withTimeInterval: 1, block: {[weak self] timer in
        self.countTimer = Timer.scheduledTimer(withTimeInterval: 1, block: { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if self.durationTime <= 0 {
            if self.durationTime <= 0 {
                //: self.closeViewClick()
                self.track()
            }
            //: self.changeTalkTime()
            self.returnTime()
            //: }, repeats: true)
        }, repeats: true)
    }

    // 展示通话时间
    //: private func changeTalkTime() {
    private func returnTime() {
        //: let duration = self.durationTime
        let duration = self.durationTime
        //: let min = floor(duration / 60)
        let min = floor(duration / 60)
        //: let sec = floor(duration.truncatingRemainder(dividingBy: 60))
        let sec = floor(duration.truncatingRemainder(dividingBy: 60))
        //: timeLab.text = String(format: "%02i:%02i", Int(min), Int(sec))
        timeLab.text = String(format: "%02i:%02i", Int(min), Int(sec))
        //: self.durationTime -= 1
        self.durationTime -= 1
    }
}

// MARK: - 【通话中】触屏隐藏交互按钮逻辑

//: extension TalkingVideoInitivCallView {
extension ScanCallView {
    /// 触摸隐藏开启延时
    //: private func touchHiddenTimer() {
    private func about() {
        //: invalidateIdleTimer()
        viewHidden()
        //: self.perform(#selector(hideInteractionView), afterDelay: 10)
        self.perform(#selector(currentFor), afterDelay: 10)
    }

    /// 销毁延迟
    //: private func invalidateIdleTimer() {
    private func viewHidden() {
        //: NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(hideInteractionView), object: nil)
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(currentFor), object: nil)
    }

    /// 延时到时隐藏视图
    //: @objc private func hideInteractionView() {
    @objc private func currentFor() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.changeInteractionShowState()
            self.groupAction()
        }
    }
}

// MARK: - Layout

//: extension TalkingVideoInitivCallView {
extension ScanCallView {
    /// 添加视图
    //: private func setupSubviews() {
    private func shouldSubviews() {
        //: self.addSubview(touchHidenBtn)
        self.addSubview(touchHidenBtn)
        //: self.addSubview(minimizeBtn)
        self.addSubview(minimizeBtn)
        //: self.addSubview(hangupBtn)
        self.addSubview(hangupBtn)
        //: self.addSubview(rotateCameraBtn)
        self.addSubview(rotateCameraBtn)
        //: self.addSubview(rotateCameraDesLab)
        self.addSubview(rotateCameraDesLab)
        //: self.addSubview(openCameraBtn)
        self.addSubview(openCameraBtn)
        //: self.addSubview(openCameraDesLab)
        self.addSubview(openCameraDesLab)
        //: self.addSubview(timeLab)
        self.addSubview(timeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func clickConstraint() {
        //: touchHidenBtn.snp.makeConstraints { make in
        touchHidenBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: minimizeBtn.snp.makeConstraints { make in
        minimizeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+10)
            make.top.equalTo(kLet_timeSenseValue + 10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.width.height.equalTo(actualWidth(w: 42))
            make.width.height.equalTo(actualWidth(w: 42))
        }
        //: hangupBtn.snp.makeConstraints { make in
        hangupBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-kDeviceSafeBottomHeight-53)
            make.bottom.equalTo(-kLet_nextData - 53)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
            make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
        }
        //: rotateCameraBtn.snp.makeConstraints { make in
        rotateCameraBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(74)
            make.leading.equalTo(74)
            //: make.bottom.equalTo(hangupBtn.snp.top).offset(-73)
            make.bottom.equalTo(hangupBtn.snp.top).offset(-73)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 58), height: actualWidth(w: 58)))
            make.size.equalTo(CGSize(width: actualWidth(w: 58), height: actualWidth(w: 58)))
        }
        //: rotateCameraDesLab.snp.makeConstraints { make in
        rotateCameraDesLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(rotateCameraBtn)
            make.centerX.equalTo(rotateCameraBtn)
            //: make.top.equalTo(rotateCameraBtn.snp.bottom).offset(8)
            make.top.equalTo(rotateCameraBtn.snp.bottom).offset(8)
        }
        //: openCameraBtn.snp.makeConstraints { make in
        openCameraBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-74)
            make.trailing.equalTo(-74)
            //: make.bottom.size.equalTo(rotateCameraBtn)
            make.bottom.size.equalTo(rotateCameraBtn)
        }
        //: openCameraDesLab.snp.makeConstraints { make in
        openCameraDesLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(openCameraBtn)
            make.centerX.equalTo(openCameraBtn)
            //: make.top.equalTo(rotateCameraDesLab)
            make.top.equalTo(rotateCameraDesLab)
        }

        //: timeLab.snp.makeConstraints { make in
        timeLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(StatusBarHeight+20)
            make.top.equalTo(kLet_timeSenseValue + 20)
        }
    }

    /// 更新约束
    //: private func updateLayout() {
    private func layoutModify() {
        //: rotateCameraBtn.snp.updateConstraints { make in
        rotateCameraBtn.snp.updateConstraints { make in
            //: make.leading.equalTo(74)
            make.leading.equalTo(74)
        }
        //: openCameraBtn.snp.updateConstraints { make in
        openCameraBtn.snp.updateConstraints { make in
            //: make.trailing.equalTo(-74)
            make.trailing.equalTo(-74)
        }
        //: hangupBtn.snp.remakeConstraints { make in
        hangupBtn.snp.remakeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-kDeviceSafeBottomHeight-53)
            make.bottom.equalTo(-kLet_nextData - 53)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
            make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
        }
    }
}
