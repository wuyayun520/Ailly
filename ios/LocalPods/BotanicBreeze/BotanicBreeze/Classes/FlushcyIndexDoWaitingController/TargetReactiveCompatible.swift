
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modeName:[UInt8] = [0x81,0x86,0x81,0x8c,0x40,0x7b,0x87,0x7c,0x7d,0x8a,0x52,0x41,0x38,0x80,0x79,0x8b,0x38,0x86,0x87,0x8c,0x38,0x7a,0x7d,0x7d,0x86,0x38,0x81,0x85,0x88,0x84,0x7d,0x85,0x7d,0x86,0x8c,0x7d,0x7c]

fileprivate func targetControl(need num: UInt8) -> UInt8 {
    let value = Int(num) - 24
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_live_toast_bg" :*/
fileprivate let str_keyValue:String = "btn_lcollection name model"
fileprivate let str_toCancelContent:String = "imageve"
fileprivate let str_removeTitle:[Character] = ["_","t","o","a","s","t","_","b","g"]

/*: "btn_live_toast_arrow" :*/
fileprivate let str_languageValue:[Character] = ["b","t","n","_","l","i","v","e","_","t","o","a","s","t","_","a"]
fileprivate let str_barData:String = "rromatch"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TargetReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/6/15.
//

//: import UIKit
import UIKit

/// （内存保存）记录此次运行是否展示过女性直播提示
//: var LIVETABTOASTISSHOW = false
var kLet_listClickName = false

//: class TalkingLiveTabToast: UIView {
class TargetReactiveCompatible: UIView {
    // 气泡间距
    //: private let bubbleInsets = UIEdgeInsets(top: 6, left: 11, bottom: 6, right: 11)
    private let bubbleInsets = UIEdgeInsets(top: 6, left: 11, bottom: 6, right: 11)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        brushAside()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modeName.map{targetControl(need: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bubbleImgView: UIImageView = {
    private lazy var bubbleImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: var img = UIImage.eponymUp(name: "btn_live_toast_bg").resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch)
        var img = UIImage.eponymUp(name: (String(str_keyValue.prefix(5)) + str_toCancelContent.replacingOccurrences(of: "image", with: "i") + String(str_removeTitle))).resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch)
        //: imgV.image = img
        imgV.image = img
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var arrowImgView: UIImageView = {
    private lazy var arrowImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.eponymUp(name: "btn_live_toast_arrow")
        imgV.image = UIImage.eponymUp(name: (String(str_languageValue) + str_barData.replacingOccurrences(of: "match", with: "w")))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var textLab: UILabel = {
    private lazy var textLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 15)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 15)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveTabToast {
extension TargetReactiveCompatible {
    /// 展示视图，5s后自动移除
    //: func show(superView: UIView) {
    func panorama(superView: UIView) {
        //: guard LIVETABTOASTISSHOW == false else { return }
        guard kLet_listClickName == false else { return }
        //: guard EqualThen.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue else { return }
        //: guard EqualThen.share.appUserConfigMode.liveTabTips.count > 0 else { return }
        guard EqualThen.share.appUserConfigMode.liveTabTips.count > 0 else { return }
        //: LIVETABTOASTISSHOW = true
        kLet_listClickName = true

        //: textLab.text = EqualThen.share.appUserConfigMode.liveTabTips
        textLab.text = EqualThen.share.appUserConfigMode.liveTabTips
        //: let maxWidth = ScreenWidth - 48
        let maxWidth = kLet_cameraValue - 48
        //: let maxSize = CGSize(width: maxWidth, height: CGFloat.greatestFiniteMagnitude)
        let maxSize = CGSize(width: maxWidth, height: CGFloat.greatestFiniteMagnitude)
        //: let contentSize = textLab.sizeThatFits(maxSize)
        let contentSize = textLab.sizeThatFits(maxSize)
        //: let bubble_w = max(contentSize.width+bubbleInsets.left+bubbleInsets.right, 67)
        let bubble_w = max(contentSize.width + bubbleInsets.left + bubbleInsets.right, 67)
        //: let bubble_h = max(contentSize.height+bubbleInsets.top+bubbleInsets.bottom, 35)
        let bubble_h = max(contentSize.height + bubbleInsets.top + bubbleInsets.bottom, 35)
        //: let bubbleSize = CGSize(width: bubble_w, height: bubble_h)
        let bubbleSize = CGSize(width: bubble_w, height: bubble_h)

        //: superView.addSubview(self)
        superView.addSubview(self)
        //: self.snp.remakeConstraints { make in
        self.snp.remakeConstraints { make in
            //: make.bottom.equalTo(superView.snp.top).offset(-14)
            make.bottom.equalTo(superView.snp.top).offset(-14)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(bubbleSize.width)
            make.width.equalTo(bubbleSize.width)
            //: make.height.equalTo(bubbleSize.height+5)
            make.height.equalTo(bubbleSize.height + 5)
        }
        //: self.arrowImgView.snp.remakeConstraints { make in
        self.arrowImgView.snp.remakeConstraints { make in
            //: make.bottom.centerX.equalToSuperview()
            make.bottom.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 11, height: 5))
            make.size.equalTo(CGSize(width: 11, height: 5))
        }
        //: self.bubbleImgView.snp.remakeConstraints { make in
        self.bubbleImgView.snp.remakeConstraints { make in
            //: make.bottom.equalTo(arrowImgView.snp.top)
            make.bottom.equalTo(arrowImgView.snp.top)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(bubbleSize)
            make.size.equalTo(bubbleSize)
        }
        //: self.textLab.snp.remakeConstraints { make in
        self.textLab.snp.remakeConstraints { make in
            //: make.leading.equalTo(bubbleInsets.left)
            make.leading.equalTo(bubbleInsets.left)
            //: make.top.equalTo(bubbleInsets.top)
            make.top.equalTo(bubbleInsets.top)
            //: make.size.equalTo(contentSize)
            make.size.equalTo(contentSize)
        }

        // 5s后自动移除
        //: DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            //: self.isHidden = true
            self.isHidden = true
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveTabToast {
extension TargetReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func brushAside() {
        //: self.addSubview(bubbleImgView)
        self.addSubview(bubbleImgView)
        //: self.addSubview(arrowImgView)
        self.addSubview(arrowImgView)
        //: bubbleImgView.addSubview(textLab)
        bubbleImgView.addSubview(textLab)
    }
}
