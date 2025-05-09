
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_managerValue:[UInt8] = [0x66,0x6b,0x66,0x71,0x25,0x60,0x6c,0x61,0x62,0x6f,0x37,0x26,0x1d,0x65,0x5e,0x70,0x1d,0x6b,0x6c,0x71,0x1d,0x5f,0x62,0x62,0x6b,0x1d,0x66,0x6a,0x6d,0x69,0x62,0x6a,0x62,0x6b,0x71,0x62,0x61]

fileprivate func centerNote(view num: UInt8) -> UInt8 {
    let value = Int(num) + 3
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Gifts received" :*/
fileprivate let str_startName:String = "return empty guardGif"
fileprivate let str_localData:[Character] = ["t","s"," ","r","e","c","e","i","v","e","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PopFlowLayout.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/6.
//

//: import UIKit
import UIKit

//: import SwiftUI
import SwiftUI

/// 获取礼物item的宽度
//: public func profileGiftItem_Width(isNew: Bool) -> CGFloat {
public func profileGiftItem_Width(isNew: Bool) -> CGFloat {
    //: if isNew {
    if isNew {
        //: return actualWidth(w: 109)
        return actualWidth(w: 109)
        //: }  else {
    } else {
        //: return actualWidth(w: 81)
        return actualWidth(w: 81)
    }
}

//: class TalkingUserDetailGiftCell: UITableViewCell {
class PopFlowLayout: UITableViewCell {
    //: var isNewProfile = false
    var isNewProfile = false // 是否是新个人资料
    //: var tempH: CGFloat = 0
    var tempH: CGFloat = 0 // 当前视图高度
    //: var giftsDataArray: [TalkingUserReceivedGiftModel] = [] {
    var giftsDataArray: [GrantHandyJSON] = [] {
        //: didSet {
        didSet {
            //: if giftsDataArray.isEmpty {
            if giftsDataArray.isEmpty {
                //: tempH = 0
                tempH = 0
                //: } else {
            } else {
                //: let num = isNewProfile ? 3:4
                let num = isNewProfile ? 3 : 4
                //: let row = ceil(Double(giftsDataArray.count)/Double(num))
                let row = ceil(Double(giftsDataArray.count) / Double(num))
                //: let width = profileGiftItem_Width(isNew: isNewProfile)
                let width = profileGiftItem_Width(isNew: isNewProfile)
                //: tempH = actualWidth(w: 40) + (width+actualHeight(h: 40)+10) * row
                tempH = actualWidth(w: 40) + (width + actualHeight(h: 40) + 10) * row
            }
            //: self.collectionView.reloadData()
            self.collectionView.reloadData()
        }
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: self.setupSubviews()
        self.small()
        //: self.setupSubViewsConstraint()
        self.place()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_managerValue.map{centerNote(view: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Gifts received".localized
        lb.text = (String(str_startName.suffix(3)) + String(str_localData)).localized
        //: lb.font = .pingfangFont(type: .Medium, fontSize: 17)
        lb.font = .pingfang(type: .Medium, fontSize: 17)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .executeTo()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 10
        layout.minimumLineSpacing = 10
        //: layout.minimumInteritemSpacing = 0
        layout.minimumInteritemSpacing = 0
        //: layout.sectionInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)

        //: let collect = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let collect = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: collect.backgroundColor = .clear
        collect.backgroundColor = .clear
        //: collect.delegate = self
        collect.delegate = self
        //: collect.dataSource = self
        collect.dataSource = self
        //: collect.isScrollEnabled = false
        collect.isScrollEnabled = false
        //: collect.register(TalkingUserDetailGiftItemCell.self, forCellWithReuseIdentifier: TalkingUserDetailGiftItemCell.className())
        collect.register(PlayerViewCell.self, forCellWithReuseIdentifier: PlayerViewCell.className())
        //: return collect
        return collect
        //: }()
    }()
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout

//: extension TalkingUserDetailGiftCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension PopFlowLayout: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.giftsDataArray.count
        return self.giftsDataArray.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingUserDetailGiftItemCell.className(), for: indexPath) as! TalkingUserDetailGiftItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PlayerViewCell.className(), for: indexPath) as! PlayerViewCell
        //: let model: TalkingUserReceivedGiftModel = self.giftsDataArray[indexPath.row]
        let model: GrantHandyJSON = self.giftsDataArray[indexPath.row]
        //: cell.configGiftItemCellWithData(giftModel: model, isNewProfile)
        cell.recordCamera(giftModel: model, isNewProfile)
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: let width = profileGiftItem_Width(isNew: isNewProfile)
        let width = profileGiftItem_Width(isNew: isNewProfile)
        //: return CGSize(width: width, height: width+actualHeight(h: 40))
        return CGSize(width: width, height: width + actualHeight(h: 40))
    }
}

// MARK: - Layout

//: extension TalkingUserDetailGiftCell {
extension PopFlowLayout {
    //: private func setupSubviews() {
    private func small() {
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(collectionView)
        contentView.addSubview(collectionView)
    }

    //: private func setupSubViewsConstraint() {
    private func place() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
        }

        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalTo(0)
            make.leading.trailing.bottom.equalTo(0)
            //: make.top.equalTo(titleLab.snp.bottom).offset(15)
            make.top.equalTo(titleLab.snp.bottom).offset(15)
        }
    }
}
