
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_fromText:[UInt8] = [0x4b,0x4c,0x4b,0x56,0xa,0x41,0x4d,0x46,0x47,0x50,0x18,0xb,0x2,0x4a,0x43,0x51,0x2,0x4c,0x4d,0x56,0x2,0x40,0x47,0x47,0x4c,0x2,0x4b,0x4f,0x52,0x4e,0x47,0x4f,0x47,0x4c,0x56,0x47,0x46]

private func spectralColour(remove num: UInt8) -> UInt8 {
    return num ^ 34
}

/*: "Game" :*/
fileprivate let str_cellMakeIfValue:String = "Gamemake player string bean let"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EditItemCell.swift
//  AbroadTalking
//
//  Created by young on 2023/7/12.
//

//: import UIKit
import UIKit

//: let GameItem_H = actualWidth(w: 113)
let kLet_buttonScreenText = actualWidth(w: 113)
//: class TalkingliveRoomGameItemCell: UICollectionViewCell {
class EditItemCell: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.stall()
        //: self.setupSubViewsConstraint()
        self.vow()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_fromText.map{spectralColour(remove: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var iconImgV: UIImageView = {
    private lazy var iconImgV: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.backgroundColor = .clear
        imgV.backgroundColor = .clear
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Game".localized
        lb.text = (String(str_cellMakeIfValue.prefix(4))).localized
        //: lb.font = UIFont.outsideAllSize(fontSize: 12)
        lb.font = UIFont.outsideAllSize(fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: Layout

//: extension TalkingliveRoomGameItemCell {
extension EditItemCell {
    /// 刷新cell
    /// - Parameters:
    ///   - model: 模型
    ///   - nameColor: 名称颜色
    //: func refreshView(model: TalkingGameListModel, nameColor: UIColor = .white) {
    func toColor(model: CustomSourceModelType, nameColor: UIColor = .white) {
        //: iconImgV.setUrlImage(urlStr: model.icon)
        iconImgV.direct(urlStr: model.icon)
        //: nameLab.text = model.name
        nameLab.text = model.name
        //: nameLab.textColor = nameColor
        nameLab.textColor = nameColor
    }

    //: private func setupSubviews() {
    private func stall() {
        //: addSubview(iconImgV)
        addSubview(iconImgV)
        //: addSubview(nameLab)
        addSubview(nameLab)
    }

    //: private func setupSubViewsConstraint() {
    private func vow() {
        //: iconImgV.snp.makeConstraints { make in
        iconImgV.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 66))
            make.width.height.equalTo(actualWidth(w: 66))

            //: nameLab.snp.makeConstraints { make in
            nameLab.snp.makeConstraints { make in
                //: make.top.equalTo(iconImgV.snp.bottom).offset(12)
                make.top.equalTo(iconImgV.snp.bottom).offset(12)
                //: make.width.equalToSuperview()
                make.width.equalToSuperview()
            }
        }
    }
}
