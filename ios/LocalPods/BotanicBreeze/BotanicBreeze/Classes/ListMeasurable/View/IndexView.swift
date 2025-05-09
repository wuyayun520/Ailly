
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_lineName:[UInt8] = [0xfa,0xfd,0xfa,0xe7,0xbb,0xf0,0xfc,0xf7,0xf6,0xe1,0xa9,0xba,0xb3,0xfb,0xf2,0xe0,0xb3,0xfd,0xfc,0xe7,0xb3,0xf1,0xf6,0xf6,0xfd,0xb3,0xfa,0xfe,0xe3,0xff,0xf6,0xfe,0xf6,0xfd,0xe7,0xf6,0xf7]

/*: "#F0F0F0" :*/
fileprivate let str_closedValue:[Character] = ["#","F","0","F","0","F","0"]

/*: "icon_fbmoments_notice" :*/
fileprivate let str_becomeVideoTitle:String = "iccapn"
fileprivate let str_moreData:String = "MENT"
fileprivate let str_beanData:String = "guard index items_no"

/*: "Don’t post content that induces others to send gifts or other money-related cintent." :*/
fileprivate let str_modelTitle:[UInt8] = [0xa8,0xd3,0xd2,0x46,0xe4,0xfd,0xd8,0x84,0xd4,0xd3,0xd7,0xd8,0x84,0xc7,0xd3,0xd2,0xd8,0xc9,0xd2,0xd8,0x84,0xd8,0xcc,0xc5,0xd8,0x84,0xcd,0xd2,0xc8,0xd9,0xc7,0xc9,0xd7,0x84,0xd3,0xd8,0xcc,0xc9,0xd6,0xd7,0x84,0xd8,0xd3,0x84,0xd7,0xc9,0xd2,0xc8,0x84,0xcb,0xcd,0xca,0xd8,0xd7,0x84,0xd3,0xd6,0x84,0xd3,0xd8,0xcc,0xc9,0xd6,0x84,0xd1,0xd3,0xd2,0xc9,0xdd,0x91,0xd6,0xc9,0xd0,0xc5,0xd8,0xc9,0xc8,0x84,0xc7,0xcd,0xd2,0xd8,0xc9,0xd2,0xd8,0x92]

fileprivate func boxData(pic num: UInt8) -> UInt8 {
    let value = Int(num) + 156
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: class FreeCollectionFooterView: UICollectionReusableView {
class IndexView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_lineName.map{$0^147}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        picInfo()
        //: setupSubViewsConstraint()
        colorConstraint()
    }

    // MARK: - Lazy load

    //: private lazy var noticeView: UIView = {
    private lazy var noticeView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#F0F0F0")
        v.backgroundColor = UIColor(hex: (String(str_closedValue)))
        //: v.layer.cornerRadius = 6
        v.layer.cornerRadius = 6
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var iconImgView: UIImageView = {
    private lazy var iconImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.eponymUp(name: "icon_fbmoments_notice"))
        let imgV = UIImageView(image: UIImage.eponymUp(name: (str_becomeVideoTitle.replacingOccurrences(of: "cap", with: "o") + "_fbmo" + str_moreData.lowercased() + String(str_beanData.suffix(4)) + "tice")))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var tipLabel: UILabel = {
    private lazy var tipLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Don’t post content that induces others to send gifts or other money-related cintent.".localized
        lab.text = String(bytes: str_modelTitle.map{boxData(pic: $0)}, encoding: .utf8)!.localized
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 13)
        lab.font = UIFont.pingfang(type: .Regular, fontSize: 13)
        //: lab.textColor = UIColor.appValueColor()
        lab.textColor = UIColor.addColor()
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - LayoutUI

//: extension FreeCollectionFooterView {
extension IndexView {
    // 添加视图
    //: private func setupSubviews() {
    private func picInfo() {
        //: self.addSubview(noticeView)
        self.addSubview(noticeView)
        //: noticeView.addSubview(iconImgView)
        noticeView.addSubview(iconImgView)
        //: noticeView.addSubview(tipLabel)
        noticeView.addSubview(tipLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func colorConstraint() {
        //: noticeView.snp.makeConstraints { make in
        noticeView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue ||
            if SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.es.rawValue ||
                //: TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.pt.rawValue
            {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 56))
                make.size.equalTo(CGSize(width: kLet_cameraValue - 30, height: 56))
                //: } else {
            } else {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 46))
                make.size.equalTo(CGSize(width: kLet_cameraValue - 30, height: 46))
            }
        }
        //: iconImgView.snp.makeConstraints { make in
        iconImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.size.equalTo(CGSize(width: 15, height: 15))
            make.size.equalTo(CGSize(width: 15, height: 15))
        }
        //: tipLabel.snp.makeConstraints { make in
        tipLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
