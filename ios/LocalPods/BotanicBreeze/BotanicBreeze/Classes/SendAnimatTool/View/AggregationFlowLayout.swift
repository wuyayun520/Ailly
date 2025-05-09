
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_kindToName:[UInt8] = [0x71,0x76,0x71,0x6c,0x30,0x7b,0x77,0x7c,0x7d,0x6a,0x22,0x31,0x38,0x70,0x79,0x6b,0x38,0x76,0x77,0x6c,0x38,0x7a,0x7d,0x7d,0x76,0x38,0x71,0x75,0x68,0x74,0x7d,0x75,0x7d,0x76,0x6c,0x7d,0x7c]

private func managerMainFrame(lab num: UInt8) -> UInt8 {
    return num ^ 24
}

/*: "bg_message_top" :*/
fileprivate let str_onlineValue:String = "bg_mup equal make skip"
fileprivate let str_languageName:String = "_toplet start user"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AggregationFlowLayout.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2025/2/17.
//

//: import UIKit
import UIKit

//: class ILikeListView: UIView {
class AggregationFlowLayout: UIView {
    /// 数据
    //: private lazy var dataArr = [ILikeListModel]()
    private lazy var dataArr = [AtModelType]()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: backgroundColor = .white
        backgroundColor = .white
        //: layer.masksToBounds = true
        layer.masksToBounds = true
        //: setupSubviews()
        cutPrice()
        //: setupSubViewsConstraint()
        dismissConstraint()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_kindToName.map{managerMainFrame(lab: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var colorImageView: UIImageView = {
    private lazy var colorImageView: UIImageView = {
        //: let colorV = UIImageView()
        let colorV = UIImageView()
        //: colorV.image = UIImage.eponymUp(name: "bg_message_top")
        colorV.image = UIImage.eponymUp(name: (String(str_onlineValue.prefix(4)) + "essage" + String(str_languageName.prefix(4))))
        //: colorV.contentMode = .scaleAspectFill
        colorV.contentMode = .scaleAspectFill
        //: return colorV
        return colorV
        //: }()
    }()

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.scrollDirection = .horizontal
        layout.scrollDirection = .horizontal
        //: layout.itemSize = CGSize(width: 70, height: 90)
        layout.itemSize = CGSize(width: 70, height: 90)
        //: layout.minimumLineSpacing = 8
        layout.minimumLineSpacing = 8
        //: layout.sectionInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)

        //: let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        //: collectionView.register(ILikeListViewItemCell.self, forCellWithReuseIdentifier: ILikeListViewItemCell.className())
        collectionView.register(BeautyItemCell.self, forCellWithReuseIdentifier: BeautyItemCell.className())
        //: return collectionView
        return collectionView
        //: }()
    }()
}

// MARK: - Event

//: extension ILikeListView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension AggregationFlowLayout: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return dataArr.count
        return dataArr.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ILikeListViewItemCell.className(), for: indexPath) as! ILikeListViewItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BeautyItemCell.className(), for: indexPath) as! BeautyItemCell
        //: if indexPath.row < dataArr.count {
        if indexPath.row < dataArr.count {
            //: cell.refreshItem(dataArr[indexPath.row])
            cell.itemStyle(dataArr[indexPath.row])
        }
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: guard indexPath.row < dataArr.count else { return }
        guard indexPath.row < dataArr.count else { return }
        //: let model = dataArr[indexPath.row]
        let model = dataArr[indexPath.row]
        //: EditTextThen.share.func__pushToPriveteChatVC(chatID: model.uid)
        EditTextThen.share.fullMoon(chatID: model.uid)
    }
}

// MARK: - Event

//: extension ILikeListView {
extension AggregationFlowLayout {
    /// 刷新I Like列表
    //: func refreshILikeList(_ models: [ILikeListModel]) {
    func thenUp(_ models: [AtModelType]) {
        //: dataArr = models
        dataArr = models
        //: layoutIfNeeded()
        layoutIfNeeded()
        //: collectionView.reloadData()
        collectionView.reloadData()
    }
}

// MARK: - Layout

//: extension ILikeListView {
extension AggregationFlowLayout {
    /// 添加视图
    //: private func setupSubviews() {
    private func cutPrice() {
        //: addSubview(colorImageView)
        addSubview(colorImageView)
        //: addSubview(collectionView)
        addSubview(collectionView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func dismissConstraint() {
        //: colorImageView.snp.makeConstraints { make in
        colorImageView.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(-StatusBarNavigationBarHeight)
            make.top.equalToSuperview().offset(-kLet_detailNameText)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(100 + StatusBarNavigationBarHeight)
            make.height.equalTo(100 + kLet_detailNameText)
        }

        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
