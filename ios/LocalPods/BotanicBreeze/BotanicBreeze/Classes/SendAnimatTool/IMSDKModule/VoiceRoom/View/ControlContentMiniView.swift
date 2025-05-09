
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_priceName:[UInt8] = [0xa1,0xa6,0xa1,0xac,0x60,0x9b,0xa7,0x9c,0x9d,0xaa,0x72,0x61,0x58,0xa0,0x99,0xab,0x58,0xa6,0xa7,0xac,0x58,0x9a,0x9d,0x9d,0xa6,0x58,0xa1,0xa5,0xa8,0xa4,0x9d,0xa5,0x9d,0xa6,0xac,0x9d,0x9c]

fileprivate func addShowSub(video num: UInt8) -> UInt8 {
    let value = Int(num) - 56
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "party_mini_close" :*/
fileprivate let str_collectionData:[Character] = ["p","a","r","t","y","_","m","i","n","i"]
fileprivate let str_mediumManagerTitle:String = "_closeimage white title add"

/*: "party_mini_bg_left" :*/
fileprivate let str_objectValue:[UInt8] = [0x3a,0x2b,0x38,0x3e,0x33,0x15,0x27,0x23,0x24,0x23,0x15,0x28,0x2d,0x15,0x26,0x2f,0x2c,0x3e]

private func effectModel(cell num: UInt8) -> UInt8 {
    return num ^ 74
}

/*: "party_mini_bg_right" :*/
fileprivate let str_sexText:String = "parcolory"
fileprivate let str_rootData:String = "bg_riguser picture title any"
fileprivate let str_tableGiftName:[Character] = ["h","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ControlContentMiniView.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomMiniView: TalkingBaseMiniView {
class ControlContentMiniView: GildTheLilyView {
    /// 悬浮窗是否在左侧
    //: private var isLeft = (LanguageManager.shared.direction == .rightToLeft)
    private var isLeft = (FileReactiveCompatible.shared.direction == .rightToLeft)
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubViewsConstraint()
        fetalAge()
        //: addTapAndPanGestures()
        viewGift()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_priceName.map{addShowSub(video: $0)}, encoding: .utf8)!)
    }

    /// 重写父类拖拽响应事件
    //: override func panGestureEvent(sender: UIPanGestureRecognizer) {
    override func inform(sender: UIPanGestureRecognizer) {
        //: super.panGestureEvent(sender: sender)
        super.inform(sender: sender)
        //: bgImgView.isHidden = true
        bgImgView.isHidden = true
        //: closeBtn.isHidden = true
        closeBtn.isHidden = true
        //: guard sender.state == .ended else { return }
        guard sender.state == .ended else { return }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
            //: self.isLeft = (self.center.x <= ScreenWidth * 0.5)
            self.isLeft = (self.center.x <= kLet_cameraValue * 0.5)
            //: self.setupSubViewsConstraint()
            self.fetalAge()
        }
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: self.addSubview(img)
        self.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = 20
        v.layer.cornerRadius = 20
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.layer.borderColor = UIColor.white.cgColor
        v.layer.borderColor = UIColor.white.cgColor
        //: v.layer.borderWidth = 1
        v.layer.borderWidth = 1
        //: self.addSubview(v)
        self.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "party_mini_close"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_collectionData) + String(str_mediumManagerTitle.prefix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(ambient), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomMiniView {
extension ControlContentMiniView {
    /// 构建视频小窗口
    //: static func buildLiveMiniView() -> TalkingVoiceRoomMiniView {
    static func militaryPost() -> ControlContentMiniView {
        //: let view = TalkingVoiceRoomMiniView(frame: .zero)
        let view = ControlContentMiniView(frame: .zero)
        //: let position = TalkingSocketManager.shared.partyMiniPosition
        let position = DeviceSocketDelegate.shared.partyMiniPosition
        //: let x = (position.x == 0) ? position.x : position.x-view.bounds.size.width
        let x = (position.x == 0) ? position.x : position.x - view.bounds.size.width
        //: var y = position.y
        var y = position.y
        //: y = max(0, y)
        y = max(0, y)
        //: y = min(ScreenHeight-view.bounds.size.height, y)
        y = min(kLet_clickData - view.bounds.size.height, y)
        //: view.frame = CGRect(x: x, y: y, width: view.width, height: view.height)
        view.frame = CGRect(x: x, y: y, width: view.width, height: view.height)
        //: TalkingSocketManager.shared.containerView?.addSubview(view)
        DeviceSocketDelegate.shared.containerView?.addSubview(view)
        //: return view
        return view
    }

    /// 刷新直播小窗口
    //: func refreshMiniView() {
    func afterFor() {
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 20))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 20))]
        //: icon.setUrlImage(urlStr: TalkingVoiceRoomManager.shared().partyModel.streamerInfo.headPic, options: optionsInfo)
        icon.lineBorder(urlStr: ViewRoomManager.astatine().partyModel.streamerInfo.headPic, options: optionsInfo)
    }

    /// 关闭按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func ambient() {
        //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
        ViewRoomManager.astatine().fastening()
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomMiniView {
extension ControlContentMiniView {
    //: private func setupSubViewsConstraint() {
    private func fetalAge() {
        //: bounds = CGRect(x: 0, y: 0, width: 55, height: 70)
        bounds = CGRect(x: 0, y: 0, width: 55, height: 70)

        //: let imageStr = isLeft ? "party_mini_bg_left" : "party_mini_bg_right"
        let imageStr = isLeft ? String(bytes: str_objectValue.map{effectModel(cell: $0)}, encoding: .utf8)! : (str_sexText.replacingOccurrences(of: "color", with: "t") + "_mini_" + String(str_rootData.prefix(6)) + String(str_tableGiftName))
        //: bgImgView.image = UIImage.eponymUp(name: imageStr)
        bgImgView.image = UIImage.eponymUp(name: imageStr)
        //: bgImgView.isHidden = false
        bgImgView.isHidden = false
        //: bgImgView.snp.remakeConstraints { make in
        bgImgView.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: icon.snp.remakeConstraints { make in
        icon.snp.remakeConstraints { make in
            //: if isLeft {
            if isLeft {
                //: make.right.equalTo(-3)
                make.right.equalTo(-3)
                //: } else {
            } else {
                //: make.left.equalTo(3)
                make.left.equalTo(3)
            }
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }

        //: closeBtn.isHidden = false
        closeBtn.isHidden = false
        //: closeBtn.snp.remakeConstraints { make in
        closeBtn.snp.remakeConstraints { make in
            //: if isLeft {
            if isLeft {
                //: make.left.equalTo(icon).offset(-3)
                make.left.equalTo(icon).offset(-3)
                //: } else {
            } else {
                //: make.right.equalTo(icon).offset(3)
                make.right.equalTo(icon).offset(3)
            }
            //: make.top.equalTo(icon).offset(-3)
            make.top.equalTo(icon).offset(-3)
            //: make.width.height.equalTo(16)
            make.width.height.equalTo(16)
        }
    }
}
