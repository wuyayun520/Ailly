
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_pushContent:[UInt8] = [0xd9,0xde,0xd9,0xc4,0x98,0xd3,0xdf,0xd4,0xd5,0xc2,0x8a,0x99,0x90,0xd8,0xd1,0xc3,0x90,0xde,0xdf,0xc4,0x90,0xd2,0xd5,0xd5,0xde,0x90,0xd9,0xdd,0xc0,0xdc,0xd5,0xdd,0xd5,0xde,0xc4,0xd5,0xd4]

/*: "#30D00B" :*/
fileprivate let str_equalButtonData:String = "#add"
fileprivate let str_videoName:[Character] = ["0","D","0","0","B"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BeautyItemCell.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2025/2/17.
//

//: import UIKit
import UIKit

//: class ILikeListViewItemCell: UICollectionViewCell {
class BeautyItemCell: UICollectionViewCell {
    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_pushContent.map{$0^176}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: setupSubviews()
        sizeWith()
        //: setupSubViewsConstraint()
        viewConstraint()
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

    //: private lazy var onlineStatus: UIView = {
    private lazy var onlineStatus: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#30D00B")
        v.backgroundColor = UIColor(hex: (str_equalButtonData.replacingOccurrences(of: "add", with: "3") + String(str_videoName)))
        //: v.layer.cornerRadius = 5
        v.layer.cornerRadius = 5
        //: v.layer.borderColor = UIColor.white.cgColor
        v.layer.borderColor = UIColor.white.cgColor
        //: v.layer.borderWidth = 1
        v.layer.borderWidth = 1
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension ILikeListViewItemCell {
extension BeautyItemCell {
    /// 刷新cell
    //: func refreshItem(_ model: ILikeListModel) {
    func itemStyle(_ model: AtModelType) {
        //: headImgView.setUrlImage(urlStr: model.headPic, placeImg: UIImage.placeHolderImage(sex: model.sex))
        headImgView.lineBorder(urlStr: model.headPic, placeImg: UIImage.bindData(sex: model.sex))
        //: onlineStatus.isHidden = (model.onlineStatus == 0)
        onlineStatus.isHidden = (model.onlineStatus == 0)
    }
}

// MARK: - Layout

//: extension ILikeListViewItemCell {
extension BeautyItemCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func sizeWith() {
        //: contentView.addSubview(headImgView)
        contentView.addSubview(headImgView)
        //: contentView.addSubview(onlineStatus)
        contentView.addSubview(onlineStatus)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func viewConstraint() {
        //: headImgView.snp.makeConstraints { make in
        headImgView.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview()
            make.leading.top.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 70, height: 70))
            make.size.equalTo(CGSize(width: 70, height: 70))
        }

        //: onlineStatus.snp.makeConstraints { make in
        onlineStatus.snp.makeConstraints { make in
            //: make.trailing.equalTo(headImgView.snp.trailing).offset(-3)
            make.trailing.equalTo(headImgView.snp.trailing).offset(-3)
            //: make.bottom.equalTo(headImgView.snp.bottom).offset(-3)
            make.bottom.equalTo(headImgView.snp.bottom).offset(-3)
            //: make.width.height.equalTo(10)
            make.width.height.equalTo(10)
        }
    }
}
