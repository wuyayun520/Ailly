
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_listEqualLetValue:[UInt8] = [0xca,0xcf,0xca,0xd5,0x89,0xc4,0xd0,0xc5,0xc6,0xd3,0x9b,0x8a,0x81,0xc9,0xc2,0xd4,0x81,0xcf,0xd0,0xd5,0x81,0xc3,0xc6,0xc6,0xcf,0x81,0xca,0xce,0xd1,0xcd,0xc6,0xce,0xc6,0xcf,0xd5,0xc6,0xc5]

fileprivate func colorLive(from num: UInt8) -> UInt8 {
    let value = Int(num) + 159
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
//  NameTagToView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingTagHeaderView: UICollectionReusableView {
class NameTagToView: UICollectionReusableView {
    //: var label = UILabel()
    var label = UILabel()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.addSubview(label)
        self.addSubview(label)
        //: label.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        label.font = UIFont.pingfang(type: .Medium, fontSize: 18)
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.executeTo()
        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.height.equalTo(21)
            make.height.equalTo(21)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_listEqualLetValue.map{colorLive(from: $0)}, encoding: .utf8)!)
    }
}
