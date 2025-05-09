
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_tableValue:[UInt8] = [0xd5,0xd2,0xd5,0xc8,0x94,0xdf,0xd3,0xd8,0xd9,0xce,0x86,0x95,0x9c,0xd4,0xdd,0xcf,0x9c,0xd2,0xd3,0xc8,0x9c,0xde,0xd9,0xd9,0xd2,0x9c,0xd5,0xd1,0xcc,0xd0,0xd9,0xd1,0xd9,0xd2,0xc8,0xd9,0xd8]

private func giftClick(up num: UInt8) -> UInt8 {
    return num ^ 188
}

/*: "JXBannerCellID" :*/
fileprivate let str_byData:[Character] = ["J","X","B","a","n","n","e","r"]
fileprivate let str_lengthTitle:String = "CellIDto label show height"

/*: "#FFFFFF" :*/
fileprivate let str_arrayRemoteData:[Character] = ["#","F","F","F","F","F","F"]

/*: "#BDB8B5" :*/
fileprivate let str_requestName:String = "#BDB8B5icon let equal icon"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithBannerDelegate.swift
//  AbroadTalking
//
//  Created by young on 2022/8/29.
//

//: import UIKit
import UIKit

//: import JXBanner
import JXBanner

//: import JXPageControl
import JXPageControl

//: protocol SocialPopularListFooterViewProtocol: NSObjectProtocol {
protocol HeadObjectProtocol: NSObjectProtocol {
    // 加载更多数据
    //: func premiumStarLoadMoreData()
    func game()
    // 巨星计划cell点击事件
    //: func premiumStarListCellClick(model: PremiumStarListModel?)
    func equalHolder(model: CurrentMeasurable?)
    // 广告cell点击
    //: func adBannerCellClick(model: SocialAdBannerModel)
    func resignModel(model: DealTransformable)
}

//: class SocialPopularListFooterView: UICollectionReusableView {
class WithBannerDelegate: UICollectionReusableView {
    //: weak var delegate: SocialPopularListFooterViewProtocol?
    weak var delegate: HeadObjectProtocol?
    //: var listData: [PremiumStarListModel]?
    var listData: [CurrentMeasurable]? // 巨星计划数据
    //: var adBannderListData: [SocialAdBannerModel]?
    var adBannderListData: [DealTransformable]? // 广告banner数据

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_tableValue.map{giftClick(up: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.upBorder()
        //: self.setupSubViewsConstraint()
        self.operate()
    }

    // MARK: - Lazy load

    //: private lazy var bannerView: JXBanner = {
    private lazy var bannerView: JXBanner = {
        //: let banner = JXBanner()
        let banner = JXBanner()
        //: banner.backgroundColor = .white
        banner.backgroundColor = .white
        //: banner.placeholderImgView.image = UIImage.placeImgBanner()
        banner.placeholderImgView.image = UIImage.titleTheoryBanner()
        //: banner.layer.cornerRadius = 5
        banner.layer.cornerRadius = 5
        //: banner.layer.masksToBounds = true
        banner.layer.masksToBounds = true
        //: banner.delegate = self
        banner.delegate = self
        //: banner.dataSource = self
        banner.dataSource = self
        //: return banner
        return banner
        //: }()
    }()
}

// MARK: - Public Event

//: extension SocialPopularListFooterView {
extension WithBannerDelegate {
    /// 获取当前视图高度
    /// - Returns: 高度
    //: func getFooterViewHeight() -> CGFloat {
    func startBind() -> CGFloat {
        //: guard self.adBannderListData?.count ?? 0 > 0 else {
        guard self.adBannderListData?.count ?? 0 > 0 else {
            //: self.bannerView.isHidden = true
            self.bannerView.isHidden = true
            //: return 0.01
            return 0.01
        }
        //: return 104
        return 104
    }

    // MARK: - Refresh

    /// 刷新巨星计划
    /// - Parameter data: 数据
    //: func refreshPremiumStarView(data: [PremiumStarListModel]) {
    func binary(data: [CurrentMeasurable]) {
        //: self.listData = data
        self.listData = data
    }

    /// 刷新banner
    /// - Parameter data: 数据
    //: func refreshBannerView(data: [SocialAdBannerModel]) {
    func untilLoad(data: [DealTransformable]) {
        //: self.adBannderListData = data
        self.adBannderListData = data
        //: self.bannerView.isHidden = !(self.adBannderListData?.count ?? 0 > 0)
        self.bannerView.isHidden = !(self.adBannderListData?.count ?? 0 > 0)
        //: bannerView.reloadView()
        bannerView.reloadView()
    }
}

// MARK: - Delegate

//: extension SocialPopularListFooterView: JXBannerDataSource, JXBannerDelegate {
extension WithBannerDelegate: JXBannerDataSource, JXBannerDelegate {
    //: func jxBanner(_ banner: JXBannerType) -> (JXBannerCellRegister) {
    func jxBanner(_: JXBannerType) -> (JXBannerCellRegister) {
        //: return JXBannerCellRegister(type: JXBannerCell.self, reuseIdentifier: "JXBannerCellID")
        return JXBannerCellRegister(type: JXBannerCell.self, reuseIdentifier: (String(str_byData) + String(str_lengthTitle.prefix(6))))
    }

    //: func jxBanner(numberOfItems banner: JXBannerType) -> Int {
    func jxBanner(numberOfItems _: JXBannerType) -> Int {
        //: return self.adBannderListData?.count ?? 0
        return self.adBannderListData?.count ?? 0
    }

    //: func jxBanner(_ banner: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
    func jxBanner(_: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
        //: let tempCell: JXBannerCell = cell as! JXBannerCell
        let tempCell: JXBannerCell = cell as! JXBannerCell
        //: let model = self.adBannderListData?[index]
        let model = self.adBannderListData?[index]
        //: tempCell.msgBgView.backgroundColor = .clear
        tempCell.msgBgView.backgroundColor = .clear
        //: tempCell.imageView.setUrlImage(urlStr: model?.pic ?? "", placeImg: UIImage.placeImgBanner())
        tempCell.imageView.lineBorder(urlStr: model?.pic ?? "", placeImg: UIImage.titleTheoryBanner())
        //: tempCell.imageView.contentMode = .scaleAspectFill
        tempCell.imageView.contentMode = .scaleAspectFill
        //: return cell
        return cell
    }

    //: func jxBanner(pageControl banner: JXBannerType,
    func jxBanner(pageControl _: JXBannerType,
                  //: numberOfPages: Int,
                  numberOfPages _: Int,
                  //: coverView: UIView,
                  coverView _: UIView,
                  //: builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder {
                  builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder
    {
        //: let pageControl = JXPageControlScale()
        let pageControl = JXPageControlScale()
        //: pageControl.contentMode = .bottom
        pageControl.contentMode = .bottom
        //: pageControl.activeSize = CGSize(width: 6, height: 6)
        pageControl.activeSize = CGSize(width: 6, height: 6)
        //: pageControl.activeColor = UIColor(hex: "#FFFFFF")!
        pageControl.activeColor = UIColor(hex: (String(str_arrayRemoteData)))!
        //: pageControl.inactiveSize = CGSize(width: 6, height: 6)
        pageControl.inactiveSize = CGSize(width: 6, height: 6)
        //: pageControl.inactiveColor = UIColor(hex: "#BDB8B5")!
        pageControl.inactiveColor = UIColor(hex: (String(str_requestName.prefix(7))))!
        //: pageControl.columnSpacing = 8
        pageControl.columnSpacing = 8
        //: pageControl.isAnimation = true
        pageControl.isAnimation = true
        //: builder.pageControl = pageControl
        builder.pageControl = pageControl
        //: builder.layout = {
        builder.layout = {
            //: pageControl.snp.makeConstraints { make in
            pageControl.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.bottom.equalToSuperview().offset(-4)
                make.bottom.equalToSuperview().offset(-4)
            }
        }
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: pageControl.transform = CGAffineTransform(scaleX: -1, y: 1)
            pageControl.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return builder
        return builder
    }

    // MARK: - JXBannerDelegate

    //: public func jxBanner(_ banner: JXBannerType,
    public func jxBanner(_: JXBannerType,
                         //: didSelectItemAt index: Int) {
                         didSelectItemAt index: Int)
    {
        //: guard let model = self.adBannderListData?[index] else { return }
        guard let model = self.adBannderListData?[index] else { return }
        //: delegate?.adBannerCellClick(model: model)
        delegate?.resignModel(model: model)
    }
}

// MARK: - Layout

//: extension SocialPopularListFooterView {
extension WithBannerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func upBorder() {
        //: self.addSubview(bannerView)
        self.addSubview(bannerView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func operate() {
        //: bannerView.snp.makeConstraints { make in
        bannerView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.bottom.equalToSuperview().offset(-15)
            make.bottom.equalToSuperview().offset(-15)
            //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 84))
            make.size.equalTo(CGSize(width: kLet_cameraValue - 30, height: 84))
        }
    }
}
