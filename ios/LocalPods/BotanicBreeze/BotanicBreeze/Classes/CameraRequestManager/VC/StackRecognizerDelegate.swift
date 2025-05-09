
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_valueTitleRequestData:[UInt8] = [0x5c,0x5b,0x5c,0x41,0x1d,0x56,0x5a,0x51,0x50,0x47,0xf,0x1c,0x15,0x5d,0x54,0x46,0x15,0x5b,0x5a,0x41,0x15,0x57,0x50,0x50,0x5b,0x15,0x5c,0x58,0x45,0x59,0x50,0x58,0x50,0x5b,0x41,0x50,0x51]

/*: "icon_rank_left" :*/
fileprivate let str_playerTitle:String = "attention leticon_"

/*: "icon_rank_right" :*/
fileprivate let str_fieldValue:String = "icon_rreturn view image bind to"
fileprivate let str_managerContent:String = "gattention"

/*: "Yesterday" :*/
fileprivate let str_showInputValue:String = "result colorYeste"
fileprivate let str_languageValue:String = "RDAY"

/*: "Today" :*/
fileprivate let str_itemContent:String = "moment toToday"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StackRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import UIKit
import UIKit

//: import JXSegmentedView
import JXSegmentedView

//: import Then
import Then

//: class SocialRankChildVC: TalkingBaseViewController {
class StackRecognizerDelegate: SeamViewController {
    // MARK: params

    //: var titles = [String]()
    var titles = [String]()
    //: var rankPeriodModel = SocialPeriodModel()
    var rankPeriodModel = PeriodModel()
    //: var type = 0
    var type = 0

    //: let segmentedDataSource = JXSegmentedTitleDataSource()
    let segmentedDataSource = JXSegmentedTitleDataSource()
    //: let segmentedView = JXSegmentedView()
    let segmentedView = JXSegmentedView()

    // MARK: Controller life

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_valueTitleRequestData.map{$0^53}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = .clear
        self.view.backgroundColor = .clear

        //: setupSubviews()
        principal()
    }

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()

        //: listContainerView.frame = CGRect(x: 0, y: 60, width: view.bounds.size.width, height: view.bounds.size.height - 60)
        listContainerView.frame = CGRect(x: 0, y: 60, width: view.bounds.size.width, height: view.bounds.size.height - 60)
    }

    // MARK: - Lazy Load

    //: let leftImgView = UIImageView().then {
    let leftImgView = UIImageView().then {
        //: $0.image = UIImage.eponymUp(name: "icon_rank_left")
        $0.image = UIImage.eponymUp(name: (String(str_playerTitle.suffix(5)) + "rank_left"))
    }

    //: let rightImgView = UIImageView().then {
    let rightImgView = UIImageView().then {
        //: $0.image = UIImage.eponymUp(name: "icon_rank_right")
        $0.image = UIImage.eponymUp(name: (String(str_fieldValue.prefix(6)) + "ank_ri" + str_managerContent.replacingOccurrences(of: "attention", with: "ht")))
    }

    //: lazy var listContainerView: JXSegmentedListContainerView! = {
    lazy var listContainerView: JXSegmentedListContainerView! = //: return JXSegmentedListContainerView(dataSource: self)
        JXSegmentedListContainerView(dataSource: self)
    //: }()
}

// MARK: - request

//: extension SocialRankChildVC {
extension StackRecognizerDelegate {
    //: private func setupBindings() {
    private func toBindings() {}
}

// MARK: - Event

//: extension SocialRankChildVC {
extension StackRecognizerDelegate {
    //: private func getModelArray(subTitle: String) -> [SocialRankItemModel] {
    private func shimmer(subTitle: String) -> [MTheoryTransformable] {
        //: if subTitle == "Yesterday".localized {
        if subTitle == (String(str_showInputValue.suffix(5)) + str_languageValue.lowercased()).localized {
            //: return addEmptyModel(data: rankPeriodModel.yesterday?.res ?? [])
            return quantityData(data: rankPeriodModel.yesterday?.res ?? [])
            //: } else if subTitle == "Today".localized {
        } else if subTitle == (String(str_itemContent.suffix(5))).localized {
            //: return addEmptyModel(data: rankPeriodModel.today?.res ?? [])
            return quantityData(data: rankPeriodModel.today?.res ?? [])
            //: } else {
        } else {
            //: return addEmptyModel(data: rankPeriodModel.weekly?.res ?? [])
            return quantityData(data: rankPeriodModel.weekly?.res ?? [])
        }
    }

    /// 添加占位数据（保证UI展示美观）
    /// - Parameter data: 数据源
    /// - Returns: 添加空数据后的数据源
    //: private func addEmptyModel(data: [SocialRankItemModel]) -> [SocialRankItemModel] {
    private func quantityData(data: [MTheoryTransformable]) -> [MTheoryTransformable] {
        //: var mData = data
        var mData = data
        //: if mData.count == 0 {
        if mData.count == 0 {
            //: return []
            return []
            //: } else if mData.count >= 9 {
        } else if mData.count >= 9 {
            //: return mData
            return mData
            //: } else {
        } else {
            //: for _ in mData.count...9 {
            for _ in mData.count ... 9 {
                //: var model = SocialRankItemModel()
                var model = MTheoryTransformable()
                //: model.isEmpty = true
                model.isEmpty = true
                //: mData.append(model)
                mData.append(model)
            }

            //: return mData
            return mData
        }
    }
}

//: extension SocialRankChildVC: JXSegmentedListContainerViewListDelegate {
extension StackRecognizerDelegate: JXSegmentedListContainerViewListDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return view
        return view
    }
}

//: extension SocialRankChildVC: JXSegmentedListContainerViewDataSource {
extension StackRecognizerDelegate: JXSegmentedListContainerViewDataSource {
    //: func numberOfLists(in listContainerView: JXSegmentedListContainerView) -> Int {
    func numberOfLists(in _: JXSegmentedListContainerView) -> Int {
        //: if let titleDataSource = segmentedView.dataSource as? JXSegmentedBaseDataSource {
        if let titleDataSource = segmentedView.dataSource as? JXSegmentedBaseDataSource {
            //: return titleDataSource.dataSource.count
            return titleDataSource.dataSource.count
        }
        //: return 0
        return 0
    }

    //: func listContainerView(_ listContainerView: JXSegmentedListContainerView, initListAt index: Int) -> JXSegmentedListContainerViewListDelegate {
    func listContainerView(_: JXSegmentedListContainerView, initListAt index: Int) -> JXSegmentedListContainerViewListDelegate {
        //: let listView = SocialRankListView()
        let listView = ControlListDelegate()
        //: listView.type = self.type
        listView.type = self.type
        //: listView.dataArray = self.getModelArray(subTitle: titles[index])
        listView.dataArray = self.shimmer(subTitle: titles[index])
        //: return listView
        return listView
    }
}

// MARK: - Layout

//: extension SocialRankChildVC {
extension StackRecognizerDelegate {
    //: private func setupSubviews() {
    private func principal() {
        //: let totalWidth = 270.0
        let totalWidth = 270.0

        //: segmentedDataSource.titles = titles
        segmentedDataSource.titles = titles
        //: segmentedDataSource.itemWidth = totalWidth/3
        segmentedDataSource.itemWidth = totalWidth / 3
        //: segmentedDataSource.itemSpacing = 0
        segmentedDataSource.itemSpacing = 0
        //: segmentedDataSource.titleNormalColor = .white.withAlphaComponent(0.7)
        segmentedDataSource.titleNormalColor = .white.withAlphaComponent(0.7)
        //: segmentedDataSource.isTitleMaskEnabled = true
        segmentedDataSource.isTitleMaskEnabled = true
        //: segmentedDataSource.titleSelectedColor = UIColor.RGBA(207, 72, 255, 1)
        segmentedDataSource.titleSelectedColor = UIColor.showSub(207, 72, 255, 1)
        //: segmentedDataSource.titleNormalFont = .pingfangFont(type: .Medium, fontSize: 15)
        segmentedDataSource.titleNormalFont = .pingfang(type: .Medium, fontSize: 15)
        //: segmentedDataSource.titleSelectedFont = .pingfangFont(type: .Medium, fontSize: 15)
        segmentedDataSource.titleSelectedFont = .pingfang(type: .Medium, fontSize: 15)

        // 配置指示器
        //: let indicator = JXSegmentedIndicatorBackgroundView()
        let indicator = JXSegmentedIndicatorBackgroundView()
        //: indicator.indicatorHeight = 36
        indicator.indicatorHeight = 36
        //: indicator.indicatorWidthIncrement = 0
        indicator.indicatorWidthIncrement = 0
        //: indicator.indicatorCornerRadius = 18
        indicator.indicatorCornerRadius = 18
        //: indicator.indicatorColor = .white
        indicator.indicatorColor = .white

        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.layer.masksToBounds = true
        segmentedView.layer.masksToBounds = true
        //: segmentedView.layer.cornerRadius = 18
        segmentedView.layer.cornerRadius = 18
        //: segmentedView.backgroundColor = UIColor.RGBA(212, 131, 255, 1)
        segmentedView.backgroundColor = UIColor.showSub(212, 131, 255, 1)
        //: segmentedView.defaultSelectedIndex = 1
        segmentedView.defaultSelectedIndex = 1

        //: segmentedView.frame = CGRect(x: (ScreenWidth-270)/2, y: 10, width: totalWidth, height: 36)
        segmentedView.frame = CGRect(x: (kLet_cameraValue - 270) / 2, y: 10, width: totalWidth, height: 36)
        //: view.addSubview(segmentedView)
        view.addSubview(segmentedView)

        //: leftImgView.frame = CGRect(x: segmentedView.origin.x-22, y: 6, width: 20, height: 27)
        leftImgView.frame = CGRect(x: segmentedView.origin.x - 22, y: 6, width: 20, height: 27)
        //: view.addSubview(leftImgView)
        view.addSubview(leftImgView)

        //: rightImgView.frame = CGRect(x: segmentedView.origin.x+totalWidth+2, y: 6, width: 20, height: 27)
        rightImgView.frame = CGRect(x: segmentedView.origin.x + totalWidth + 2, y: 6, width: 20, height: 27)
        //: view.addSubview(rightImgView)
        view.addSubview(rightImgView)

        //: segmentedView.listContainer = listContainerView
        segmentedView.listContainer = listContainerView
        //: view.addSubview(listContainerView)
        view.addSubview(listContainerView)
    }
}
