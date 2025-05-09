
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_memberTitle:[UInt8] = [0xd6,0xdb,0xd6,0xe1,0x95,0xd0,0xdc,0xd1,0xd2,0xdf,0xa7,0x96,0x8d,0xd5,0xce,0xe0,0x8d,0xdb,0xdc,0xe1,0x8d,0xcf,0xd2,0xd2,0xdb,0x8d,0xd6,0xda,0xdd,0xd9,0xd2,0xda,0xd2,0xdb,0xe1,0xd2,0xd1]

fileprivate func mName(normal num: UInt8) -> UInt8 {
    let value = Int(num) - 109
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "#222222" :*/
fileprivate let str_timeData:String = "head"
fileprivate let str_indexValue:String = "222222"

/*: "#EAE8FE" :*/
fileprivate let str_recordTitle:String = "type model type#EAE8F"
fileprivate let str_viewRegularByName:[Character] = ["E"]

/*: "#D0D0D0" :*/
fileprivate let str_directionValue:String = "let push lab content#D0D0D0"

/*: "btn_me_edit_option_delete" :*/
fileprivate let str_titleContent:[Character] = ["b","t","n","_","m","e","_","e","d","i","t","_","o","p","t","i","o","n","_","d","e","l","e","t","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingTagCell: UICollectionViewCell {
class TitleViewCell: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: TagBtn.frame = self.bounds
        TagBtn.frame = self.bounds
        //: self.addSubview(TagBtn)
        self.addSubview(TagBtn)
        //: TagBtn.snp.makeConstraints { make in
        TagBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_memberTitle.map{mName(normal: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var TagBtn: UIButton = {
    private lazy var TagBtn: UIButton = {
        //: let temp = UIButton()
        let temp = UIButton()
        //: temp.setTitle("", for: .normal)
        temp.setTitle("", for: .normal)
        //: temp.isUserInteractionEnabled = false
        temp.isUserInteractionEnabled = false
        //: temp.setTitleColor(UIColor.init(hex: "#222222"), for: .normal)
        temp.setTitleColor(UIColor(hex: (str_timeData.replacingOccurrences(of: "head", with: "#") + str_indexValue.capitalized)), for: .normal)
        //: temp.setTitleColor(UIColor.appThemeColor(), for: .selected)
        temp.setTitleColor(UIColor.plaster(), for: .selected)
        //: temp.titleLabel?.font  = .pingfangFont(type: .Regular, fontSize: 15)
        temp.titleLabel?.font = .pingfang(type: .Regular, fontSize: 15)
        //: temp.setBackgroundColor(color: UIColor.white, forState: .normal)
        temp.likeness(color: UIColor.white, forState: .normal)
        //: temp.setBackgroundColor(color: UIColor.init(hex: "#EAE8FE")!, forState: .selected)
        temp.likeness(color: UIColor(hex: (String(str_recordTitle.suffix(6)) + String(str_viewRegularByName)))!, forState: .selected)
        //: temp.layer.masksToBounds = true
        temp.layer.masksToBounds = true
        //: temp.layer.cornerRadius = 15
        temp.layer.cornerRadius = 15
        //: temp.clipsToBounds  = true
        temp.clipsToBounds = true
        //: temp.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
        temp.layer.borderColor = UIColor(hex: (String(str_directionValue.suffix(7))))?.cgColor
        //: temp.layer.borderWidth = 1
        temp.layer.borderWidth = 1

        //: return temp
        return temp
        //: }()
    }()

    //: private lazy var DeleteImag: UIImageView = {
    private lazy var DeleteImag: UIImageView = {
        //: let temp = UIImageView()
        let temp = UIImageView()
        //: temp.isHidden = true
        temp.isHidden = true
        //: temp.image = UIImage.eponymUp(name: "btn_me_edit_option_delete")
        temp.image = UIImage.eponymUp(name: (String(str_titleContent)))
        //: return temp
        return temp
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTagCell {
extension TitleViewCell {
    //: func fill(title: String)  {
    func changeTitle(title: String) {
        //: self.TagBtn.setTitle(title, for: .normal)
        self.TagBtn.setTitle(title, for: .normal)
    }

    //: func tagBtnClick(isSelete: Bool) {
    func tableSelete(isSelete: Bool) {
        //: TagBtn.isSelected = isSelete
        TagBtn.isSelected = isSelete
        //: changeTagBtnLayer(btn: TagBtn)
        stem(btn: TagBtn)
    }

    //: func tagBtnClick() {
    func deal() {
        //: TagBtn.isSelected = !TagBtn.isSelected
        TagBtn.isSelected = !TagBtn.isSelected
        //: changeTagBtnLayer(btn: TagBtn)
        stem(btn: TagBtn)
    }

    //: func tagBtnselete() {
    func notTicket() {
        //: TagBtn.isSelected = true
        TagBtn.isSelected = true
        //: changeTagBtnLayer(btn: TagBtn)
        stem(btn: TagBtn)
    }

    //: func changeTagBtnLayer(btn: UIButton) {
    func stem(btn: UIButton) {
        //: if btn.isSelected {
        if btn.isSelected {
            //: btn.layer.borderColor = UIColor.clear.cgColor
            btn.layer.borderColor = UIColor.clear.cgColor
            //: } else {
        } else {
            //: btn.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
            btn.layer.borderColor = UIColor(hex: (String(str_directionValue.suffix(7))))?.cgColor
        }
    }

    //: func DeleteBtnSelete() {
    func imageDraw() {
        //: DeleteImag.isHidden = false
        DeleteImag.isHidden = false
        //: TagBtn.layer.borderColor = UIColor.white.cgColor
        TagBtn.layer.borderColor = UIColor.white.cgColor
        //: DeleteImag.isUserInteractionEnabled = false
        DeleteImag.isUserInteractionEnabled = false
    }
}
