
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_toTitle:[UInt8] = [0xba,0xbf,0xba,0xc5,0x79,0xb4,0xc0,0xb5,0xb6,0xc3,0x8b,0x7a,0x71,0xb9,0xb2,0xc4,0x71,0xbf,0xc0,0xc5,0x71,0xb3,0xb6,0xb6,0xbf,0x71,0xba,0xbe,0xc1,0xbd,0xb6,0xbe,0xb6,0xbf,0xc5,0xb6,0xb5]

fileprivate func scaleOfMeasurement(button num: UInt8) -> UInt8 {
    let value = Int(num) + 175
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Sun" :*/
fileprivate let str_messageTitle:String = "view image dataSun"

/*: "Mon" :*/
fileprivate let str_clickValue:String = "limit level of view tempMon"

/*: "Tue" :*/
fileprivate let str_whiteSuccessValue:[Character] = ["T","u","e"]

/*: "Wed" :*/
fileprivate let str_hiddenName:String = "Wedto s make path temp"

/*: "Thu" :*/
fileprivate let str_clearNextData:String = "Thuwhite content equal type let"

/*: "Fri" :*/
fileprivate let str_streamText:String = "effect let picture caseFri"

/*: "Sat" :*/
fileprivate let str_imageData:String = "Satwith bottom to image extension"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: let TalkingDailyHeaderView_H = actualWidth(w: 96)
let kLet_listName = actualWidth(w: 96)

//: class TalkingDailyHeaderView: UICollectionReusableView {
class ContentReactiveCompatible: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_toTitle.map{scaleOfMeasurement(button: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.message()
        //: self.setupSubViewsConstraint()
        self.textAdd()
    }

    // MARK: - Lazy Laod

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 18)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 18)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.executeTo()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var weekArr: [String] = {
    private lazy var weekArr: [String] = //: return ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
        [(String(str_messageTitle.suffix(3))), (String(str_clickValue.suffix(3))), (String(str_whiteSuccessValue)), (String(str_hiddenName.prefix(3))), (String(str_clearNextData.prefix(3))), (String(str_streamText.suffix(3))), (String(str_imageData.prefix(3)))]
    //: }()
}

// MARK: - Layout

//: extension TalkingDailyHeaderView {
extension ContentReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func message() {
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.Corner(width: ScreenWidth, height: TalkingDailyHeaderView_H, corners: [.topLeft, .topRight], cornerRadii: .init(width: 16, height: 16))
        self.showEqual(width: kLet_cameraValue, height: kLet_listName, corners: [.topLeft, .topRight], cornerRadii: .init(width: 16, height: 16))

        //: self.addSubview(titleLab)
        self.addSubview(titleLab)

        //: var lastLab: UILabel?
        var lastLab: UILabel?
        //: for (index, title) in weekArr.enumerated() {
        for (index, title) in weekArr.enumerated() {
            //: let lab = UILabel()
            let lab = UILabel()
            //: lab.text = title.localized
            lab.text = title.localized
            //: lab.textColor = UIColor.appTitleColor()
            lab.textColor = UIColor.executeTo()
            //: lab.textAlignment = .center
            lab.textAlignment = .center
            //: lab.font = UIFont.outsideAllSize(fontSize: 16)
            lab.font = UIFont.outsideAllSize(fontSize: 16)
            //: self.addSubview(lab)
            self.addSubview(lab)

            //: let width = ScreenWidth/CGFloat(weekArr.count)
            let width = kLet_cameraValue / CGFloat(weekArr.count)
            //: if index == 0 {
            if index == 0 { // 首个
                //: lab.snp.makeConstraints { make in
                lab.snp.makeConstraints { make in
                    //: make.leading.equalTo(0)
                    make.leading.equalTo(0)
                    //: make.top.equalTo(actualWidth(w: 66))
                    make.top.equalTo(actualWidth(w: 66))
                    //: make.width.equalTo(width)
                    make.width.equalTo(width)
                    //: make.bottom.equalToSuperview()
                    make.bottom.equalToSuperview()
                }
                //: } else {
            } else {
                //: lab.snp.makeConstraints { make in
                lab.snp.makeConstraints { make in
                    //: make.leading.equalTo(lastLab!.snp.trailing)
                    make.leading.equalTo(lastLab!.snp.trailing)
                    //: make.top.width.bottom.equalTo(lastLab!)
                    make.top.width.bottom.equalTo(lastLab!)
                }
            }
            //: lastLab = lab
            lastLab = lab
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func textAdd() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 16))
            make.top.equalTo(actualWidth(w: 16))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
