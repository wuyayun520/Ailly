
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_managerContent:[UInt8] = [0xa3,0xa4,0xa3,0xbe,0xe2,0xa9,0xa5,0xae,0xaf,0xb8,0xf0,0xe3,0xea,0xa2,0xab,0xb9,0xea,0xa4,0xa5,0xbe,0xea,0xa8,0xaf,0xaf,0xa4,0xea,0xa3,0xa7,0xba,0xa6,0xaf,0xa7,0xaf,0xa4,0xbe,0xaf,0xae]

private func privateModel(record num: UInt8) -> UInt8 {
    return num ^ 202
}

/*: "icon_translation_go" :*/
fileprivate let str_intimateName:String = "icon_scale pin self let self"
fileprivate let str_actionData:String = "ation_govalue selected"

/*: "#EAE8FE" :*/
fileprivate let str_indexData:String = "#Eto import layer bag"
fileprivate let str_fillText:[Character] = ["A","E","8","F","E"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UpReactiveCompatible.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2024/11/21.
//

//: import UIKit
import UIKit

//: class PrivateChatNotesTopView: UIView {
class UpReactiveCompatible: UIView {
    //: var tapBlock: (() -> Void)?
    var tapBlock: (() -> Void)?
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        electSubviews()
        //: setupSubViewsConstraint()
        viewsPush()
        //: bindInteraction()
        reciprocationNumbereraction()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_managerContent.map{privateModel(record: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appThemeColor()
        lab.textColor = UIColor.plaster()
        //: lab.font = UIFont.outsideAllSize(fontSize: 16)
        lab.font = UIFont.outsideAllSize(fontSize: 16)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgV: UIImageView = {
    private lazy var imgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.eponymUp(name: "icon_translation_go").withTintColor(.appThemeColor())
        img.image = UIImage.eponymUp(name: (String(str_intimateName.prefix(5)) + "transl" + String(str_actionData.prefix(8)))).withTintColor(.plaster())
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()
}

// MARK: - Event

//: extension PrivateChatNotesTopView {
extension UpReactiveCompatible {
    /// 刷新视图
    //: func refresh(_ model: SoulCacheModel) {
    func beginRestore(_ model: SoulCacheModel) {
        //: self.isHidden = (model.top != 1)
        self.isHidden = (model.top != 1)
        //: contentLab.text = model.content
        contentLab.text = model.content
    }

    /// 点击事件
    //: @objc private func tapGestureRecognizer(_ tap: UITapGestureRecognizer) {
    @objc private func afterStop(_: UITapGestureRecognizer) {
        //: tapBlock?()
        tapBlock?()
    }
}

// MARK: - Layout

//: extension PrivateChatNotesTopView {
extension UpReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func electSubviews() {
        //: backgroundColor = UIColor(hex: "#EAE8FE")
        backgroundColor = UIColor(hex: (String(str_indexData.prefix(2)) + String(str_fillText)))
        //: layer.borderWidth = 1
        layer.borderWidth = 1
        //: layer.borderColor = UIColor.appThemeColor().cgColor
        layer.borderColor = UIColor.plaster().cgColor
        //: layer.cornerRadius = 8
        layer.cornerRadius = 8
        //: layer.masksToBounds = true
        layer.masksToBounds = true

        //: addSubview(contentLab)
        addSubview(contentLab)
        //: addSubview(imgV)
        addSubview(imgV)
    }

    /// 设置约束
    //: private func setupSubViewsConstraint() {
    private func viewsPush() {
        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.width.equalTo(10)
            make.height.width.equalTo(10)
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func reciprocationNumbereraction() {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureRecognizer))
        let tap = UITapGestureRecognizer(target: self, action: #selector(afterStop))
        //: addGestureRecognizer(tap)
        addGestureRecognizer(tap)
    }
}
