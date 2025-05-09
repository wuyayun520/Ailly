
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_statusContent:[UInt8] = [0xc8,0xcf,0xc8,0xd5,0x89,0xc2,0xce,0xc5,0xc4,0xd3,0x9b,0x88,0x81,0xc9,0xc0,0xd2,0x81,0xcf,0xce,0xd5,0x81,0xc3,0xc4,0xc4,0xcf,0x81,0xc8,0xcc,0xd1,0xcd,0xc4,0xcc,0xc4,0xcf,0xd5,0xc4,0xc5]

private func modelStyle(screen num: UInt8) -> UInt8 {
    return num ^ 161
}

/*: "icon_shouye_biaoshi_default" :*/
fileprivate let str_toData:String = "object pop usericon_s"
fileprivate let str_currentData:[Character] = ["_","b","i","a","o","s","h"]
fileprivate let str_taskName:String = "i_defreal self count"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GestureViewCell.swift
//  AbroadTalking
//
//  Created by young on 2022/9/9.
//

//: import UIKit
import UIKit

//: class PremiumStarListCell: UICollectionViewCell {
class GestureViewCell: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_statusContent.map{modelStyle(screen: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.levelGreet()
        //: self.setupSubViewsConstraint()
        self.countrepid()
    }

    // MARK: - Lazy load

    //: private lazy var headImgView: UIImageView = {
    private lazy var headImgView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.layer.cornerRadius = 35
        v.layer.cornerRadius = 35
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: return v
        return v
        //: }()
    }()

    //: private lazy var authImgV: UIImageView = {
    private lazy var authImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage(named: "icon_shouye_biaoshi_default")
        v.image = UIImage(named: (String(str_toData.suffix(6)) + "houye" + String(str_currentData) + String(str_taskName.prefix(5)) + "ault"))
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.executeTo()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 15)
        lab.font = .pingfang(type: .Regular, fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Public Event

//: extension PremiumStarListCell {
extension GestureViewCell {
    // MARK: - Refresh

    //: func refreshCell(_ model: PremiumStarListModel?) {
    func mid(_ model: CurrentMeasurable?) {
        //: guard let model = model else { return }
        guard let model = model else { return }
        //: headImgView.kf.setImage(with: URL(string: model.headPic), placeholder: UIImage.placeHolderImage(sex: model.sex))
        headImgView.kf.setImage(with: URL(string: model.headPic), placeholder: UIImage.bindData(sex: model.sex))
        //: authImgV.isHidden = !model.isTPAuth
        authImgV.isHidden = !model.isTPAuth
        //: nameLab.text = model.nickname
        nameLab.text = model.nickname
    }
}

// MARK: - Layout

//: extension PremiumStarListCell {
extension GestureViewCell {
    // 添加视图
    //: private func setupSubviews() {
    private func levelGreet() {
        //: self.contentView.addSubview(headImgView)
        self.contentView.addSubview(headImgView)
        //: self.contentView.addSubview(authImgV)
        self.contentView.addSubview(authImgV)
        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func countrepid() {
        //: headImgView.snp.makeConstraints { make in
        headImgView.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview()
            make.leading.top.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 70, height: 70))
            make.size.equalTo(CGSize(width: 70, height: 70))
        }
        //: authImgV.snp.makeConstraints { make in
        authImgV.snp.makeConstraints { make in
            //: make.trailing.equalTo(headImgView.snp.trailing)
            make.trailing.equalTo(headImgView.snp.trailing)
            //: make.bottom.equalTo(headImgView.snp.bottom)
            make.bottom.equalTo(headImgView.snp.bottom)
            //: make.size.equalTo(CGSize(width: 20, height: 16))
            make.size.equalTo(CGSize(width: 20, height: 16))
        }
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.leading.width.equalToSuperview()
            make.leading.width.equalToSuperview()
            //: make.top.equalTo(75)
            make.top.equalTo(75)
            //: make.height.equalTo(17)
            make.height.equalTo(17)
        }
    }
}
