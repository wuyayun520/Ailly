
//: Declare String Begin

/*: "EmptyCollectionReusableView" :*/
fileprivate let str_effectValue:[Character] = ["E","m","p","t","y","C","o","l","l","e","c","t","i","o","n","R","e","u","s","a"]
fileprivate let str_ageAtViewTitle:[Character] = ["b","l","e","V","i","e","w"]

/*: "In order to find friends nearby please allow the access of your location." :*/
fileprivate let str_sectionRoomIfName:[UInt8] = [0xc,0x31,0xe3,0x32,0x35,0x27,0x28,0x35,0xe3,0x37,0x32,0xe3,0x29,0x2c,0x31,0x27,0xe3,0x29,0x35,0x2c,0x28,0x31,0x27,0x36,0xe3,0x31,0x28,0x24,0x35,0x25,0x3c,0xe3,0x33,0x2f,0x28,0x24,0x36,0x28,0xe3,0x24,0x2f,0x2f,0x32,0x3a,0xe3,0x37,0x2b,0x28,0xe3,0x24,0x26,0x26,0x28,0x36,0x36,0xe3,0x32,0x29,0xe3,0x3c,0x32,0x38,0x35,0xe3,0x2f,0x32,0x26,0x24,0x37,0x2c,0x32,0x31,0xf1]

fileprivate func dialogAs(head num: UInt8) -> UInt8 {
    let value = Int(num) - 195
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "You've got no list yet." :*/
fileprivate let str_galleryData:String = "You\'"
fileprivate let str_toText:String = " no limport show"

/*: , :*/
fileprivate let str_fromData:String = "day"

/*: "Say hi successfully~" :*/
fileprivate let str_indexValue:String = "Say title color frame"
fileprivate let str_draftValue:String = "ccessto"

/*: "Shielding Success" :*/
fileprivate let str_errorValue:String = "Shielselection in"
fileprivate let str_deadlineData:String = "ulabeless"

/*: "lng" :*/
fileprivate let str_viewValueHiddenName:[UInt8] = [0x67,0x6e,0x6c]

/*: "lat" :*/
fileprivate let str_voiceText:[UInt8] = [0x41,0x4c,0x59]

/*: "Enter “Settings” and open “Location” permission to use function normally." :*/
fileprivate let str_resumeBlockValue:[UInt8] = [0xe0,0xcb,0xd1,0xc0,0xd7,0x85,0x47,0x25,0x39,0xf6,0xc0,0xd1,0xd1,0xcc,0xcb,0xc2,0xd6,0x47,0x25,0x38,0x85,0xc4,0xcb,0xc1,0x85,0xca,0xd5,0xc0,0xcb,0x85,0x47,0x25,0x39,0xe9,0xca,0xc6,0xc4,0xd1,0xcc,0xca,0xcb,0x47,0x25,0x38,0x85,0xd5,0xc0,0xd7,0xc8,0xcc,0xd6,0xd6,0xcc,0xca,0xcb,0x85,0xd1,0xca,0x85,0xd0,0xd6,0xc0,0x85,0xc3,0xd0,0xcb,0xc6,0xd1,0xcc,0xca,0xcb,0x85,0xcb,0xca,0xd7,0xc8,0xc4,0xc9,0xc9,0xdc,0x8b]

/*: "Cancel" :*/
fileprivate let str_arrayContent:String = "Cancelself current edge"

/*: "Settings" :*/
fileprivate let str_domainText:[Character] = ["S","e","t"]
fileprivate let str_lockName:String = "tingrequest"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DeviceSocialViewController.swift
//  AbroadTalking
//
//  Created by young on 2022/8/29.
//

//: import UIKit
import UIKit

//: import JXSegmentedView
import JXSegmentedView

//: import JXPagingView
import JXPagingView

//: typealias ScrollCallback = (_ scrollView: UIScrollView) -> Void
typealias ScrollCallback = (_ scrollView: UIScrollView) -> Void

//: class SocialPopularViewController: TalkingBaseViewController {
class DeviceSocialViewController: SeamViewController {
    //: var isgetPlayerCell = false
    var isgetPlayerCell = false
    //: var playerCell = NSArray()
    var playerCell = NSArray() // 播放介绍视频
    //: var cunrrenplayerIndex = 0
    var cunrrenplayerIndex = 0 // 播放介绍视频位置

    //: var isFreshPlayerCell = false
    var isFreshPlayerCell = false // 刷新时加载介绍视频播放
    //: var isFirstUpload = true
    var isFirstUpload = true // 初次上报曝光次数

    //: var seleteBlobkModel: SocialUserListModel?
    var seleteBlobkModel: ControlWithModelType? // 拉黑选中数据
    // header
    //: var headerView: SocialHeaderView?
    var headerView: SocietalHeaderView?

    //: var scrollback: ScrollCallback?
    var scrollback: ScrollCallback?
    // 页面类型
    //: var tabType: SocialTab?
    var tabType: TabletSocialVarArg?

    // bannner
    //: var footerView: SocialPopularListFooterView?
    var footerView: WithBannerDelegate?

    //: var userVisibleCells: [UICollectionViewCell]?
    var userVisibleCells: [UICollectionViewCell]?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = .clear
        self.view.backgroundColor = .clear
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        roomData()
        //: setupSubViewsConstraint()
        mail()
        //: addNotification()
        effectNotification()

        //: switch (tabType) {
        switch tabType {
        //: case .hot:
        case .hot:

            //: firstLoadData()
            chicEqual()
        //: case .nearby:
        case .nearby:
            //: checkLocationAuth()
            proposal()
        //: case .new:
        case .new:
            //: self.firstLoadData()
            self.chicEqual()
        //: case .none: break
        case .none: break
        }
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: self.view.transform = CGAffineTransform(scaleX: -1, y: 1)
            self.view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
    }

    //: deinit {
    deinit {
        //: TalkingLocationManager.destroy()
        PopEventThen.iconDestroy()
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

    //: private lazy var reqManager: SocialRequestManager = {
    private lazy var reqManager: CameraRequestManager = //: return CameraRequestManager()
        .init()
    //: }()

    //: public lazy var collectionView: UICollectionView = {
    public lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 9
        layout.minimumLineSpacing = 9
        //: layout.minimumInteritemSpacing = 9
        layout.minimumInteritemSpacing = 9
        //: layout.sectionInset = UIEdgeInsets(top: 0, left: 13, bottom: 9, right: 13)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 13, bottom: 9, right: 13)
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.register(SocialPopularListCell.self,
        collectionView.register(TargetListCell.self,
                                //: forCellWithReuseIdentifier: SocialPopularListCell.className())
                                forCellWithReuseIdentifier: TargetListCell.className())
        //: collectionView.register(SocialHeaderView.self,
        collectionView.register(SocietalHeaderView.self,
                                //: forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                //: withReuseIdentifier: SocialHeaderView.className())
                                withReuseIdentifier: SocietalHeaderView.className())
        //: collectionView.register(SocialPopularListFooterView.self,
        collectionView.register(WithBannerDelegate.self,
                                //: forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                                //: withReuseIdentifier: SocialPopularListFooterView.className())
                                withReuseIdentifier: WithBannerDelegate.className())
        //: collectionView.register(UICollectionReusableView.self,
        collectionView.register(UICollectionReusableView.self,
                                //: forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                //: withReuseIdentifier: "EmptyCollectionReusableView")
                                withReuseIdentifier: (String(str_effectValue) + String(str_ageAtViewTitle)))
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: collectionView.addHeaderRefresh { [weak self] in
        collectionView.addHeader { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.lineDrag()
        }
        //: collectionView.addFooterRefresh { [weak self] in
        collectionView.fromStatus { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.roundImage()
        }
        //: return collectionView
        return collectionView
        //: }()
    }()

    //: private lazy var emptyV: SocialEmptyView = {
    private lazy var emptyV: TargetEmptyView = {
        //: let v = SocialEmptyView()
        let v = TargetEmptyView()
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension SocialPopularViewController {
extension DeviceSocialViewController {
    // MARK: - Load data

    /// 首次进入页面
    //: private func firstLoadData() {
    private func chicEqual() {
        //: headerRefresh()
        lineDrag()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.5) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            //: self.load_adBanner()
            self.below()
        }
    }

    /// 列表数据
    //: private func headerRefresh() {
    private func lineDrag() {
        //: reqManager.listPage = 0
        reqManager.listPage = 0
        //: self.isFreshPlayerCell = true
        self.isFreshPlayerCell = true
        //: seleteHideBlock()
        beamBlock()
        //: load_listData()
        choose()

        //: firstLoad_premiumStarList()
        beyondSend()
    }

    //: private func footerRefresh() {
    private func roundImage() {
        //: reqManager.listPage += 1
        reqManager.listPage += 1
        //: load_listData()
        choose()
    }

    //: private func load_listData() {
    private func choose() {
        //: reqManager.req_socialList(tab: tabType ?? .hot) { [weak self] succeed, result, errorModel in
        reqManager.societalThroughCompletion(tab: tabType ?? .hot) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.collectionView.endRefresh()
            self.collectionView.cancelButton()
            //: self.refreshViewStatus()
            self.broadcastArea()

            //: let arr = result as? Array<Any> ?? []
            let arr = result as? [Any] ?? []
            //: if arr.count == 0 {
            if arr.count == 0 {
                //: self.collectionView.mj_footer = nil
                self.collectionView.mj_footer = nil
                //: } else {
            } else {
                //: if self.collectionView.mj_footer == nil {
                if self.collectionView.mj_footer == nil {
                    //: self.collectionView.addFooterRefresh {
                    self.collectionView.fromStatus {
                        //: self.footerRefresh()
                        self.roundImage()
                    }
                }
            }
            /// 当拉黑数据过多，返回数据小于6个时，从下一页获取数据，最多3次
            //: if self.reqManager.haveReq < self.reqManager.maxReq && self.reqManager.section1Data.count <= 2 && arr.count > 0 {
            if self.reqManager.haveReq < self.reqManager.maxReq, self.reqManager.section1Data.count <= 2, arr.count > 0 {
                //: self.reqManager.haveReq += 1
                self.reqManager.haveReq += 1
                //: self.footerRefresh()
                self.roundImage()
                //: } else {
            } else {
                //: self.reqManager.haveReq = 0
                self.reqManager.haveReq = 0
            }
        }
    }

    /// 巨星计划接口
    //: private func firstLoad_premiumStarList() {
    private func beyondSend() {
        //: reqManager.premiumStarPage = 0
        reqManager.premiumStarPage = 0
        //: reqManager.premiumStarCanLoadMore = true
        reqManager.premiumStarCanLoadMore = true
        //: reqManager.premiumStarIsLoading = false
        reqManager.premiumStarIsLoading = false
        //: load_premiumStarList()
        devise()
    }

    //: private func loadMore_premiumStarList() {
    private func galaxy() {
        //: guard reqManager.premiumStarCanLoadMore else { return }
        guard reqManager.premiumStarCanLoadMore else { return }
        //: reqManager.premiumStarPage += 1
        reqManager.premiumStarPage += 1
        //: load_premiumStarList()
        devise()
    }

    //: private func load_premiumStarList() {
    private func devise() {
        //: reqManager.req_premiumStarList { [weak self] succeed, result, errorModel in
        reqManager.like { [weak self] _, _, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerView?.refreshPremiumStarView(data: self.reqManager.premiumStarListData)
            self.footerView?.binary(data: self.reqManager.premiumStarListData)
            //: if self.reqManager.premiumStarPage == 0 {
            if self.reqManager.premiumStarPage == 0 {
                //: self.refreshViewStatus()
                self.broadcastArea()
            }
        }
    }

    /// 广告banner数据
    //: private func load_adBanner() {
    private func below() {
        //: reqManager.req_adBanner(position: 1) { [weak self] succeed, result, errorModel in
        reqManager.modelColor(position: 1) { [weak self] _, _, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerView?.refreshBannerView(data: self.reqManager.adBannerListData)
            self.footerView?.untilLoad(data: self.reqManager.adBannerListData)
            //: self.refreshViewStatus()
            self.broadcastArea()
        }
    }

    /// 刷新视图状态
    //: private func refreshViewStatus() {
    private func broadcastArea() {
        // 是否开启定位判断缺省图
        //: if self.tabType == .nearby {
        if self.tabType == .nearby {
            //: if TalkingLocationManager.shared().locationType != .alwaysAllowed {
            if PopEventThen.project().locationType != .alwaysAllowed {
                //: self.emptyV.isHidden = false
                self.emptyV.isHidden = false
                //: self.emptyV.desLab.text = "In order to find friends nearby please allow the access of your location.".localized
                self.emptyV.desLab.text = String(bytes: str_sectionRoomIfName.map{dialogAs(head: $0)}, encoding: .utf8)!.localized
                //: self.collectionView.mj_footer = nil
                self.collectionView.mj_footer = nil

                //: self.collectionView.reloadData()
                self.collectionView.reloadData()
                //: return
                return
            }
        }

        // 是否有数据判断缺省图
        //: if self.reqManager.section0Data.count == 0 &&
        if self.reqManager.section0Data.count == 0,
           //: self.reqManager.premiumStarListData.count == 0 &&
           self.reqManager.premiumStarListData.count == 0,
           //: self.reqManager.adBannerListData.count == 0 {
           self.reqManager.adBannerListData.count == 0
        {
            //: self.emptyV.isHidden = false
            self.emptyV.isHidden = false
            //: self.emptyV.desLab.text = "You've got no list yet.".localized
            self.emptyV.desLab.text = (str_galleryData + "ve got" + String(str_toText.prefix(5)) + "ist yet.").localized
            //: } else {
        } else {
            //: self.emptyV.isHidden = true
            self.emptyV.isHidden = true
        }

        //: self.collectionView.reloadData()
        self.collectionView.reloadData()

        //: if isFirstUpload {
        if isFirstUpload {
            //: isFirstUpload = false
            isFirstUpload = false
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
                //: self.uploadUserListCover()
                self.userAwake()
            }
        }
    }
}

// MARK: - 通知事件

//: extension  SocialPopularViewController {
extension DeviceSocialViewController {
    //: @objc private func searchDetailRefreshNotification() {
    @objc private func previous() {
        //: collectionView.mj_header?.beginRefreshing()
        collectionView.mj_header?.beginRefreshing()
    }
}

// MARK: - JXSegmentedListContainerViewListDelegate

//: extension SocialPopularViewController: JXPagingViewListViewDelegate {
extension DeviceSocialViewController: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.collectionView
        return self.collectionView
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
        //: self.scrollback = callback
        self.scrollback = callback
    }
}

// MARK: - UICollectionViewDelegate

//: extension SocialPopularViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension DeviceSocialViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 2
        return 2
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //: guard self.emptyV.isHidden else {
        guard self.emptyV.isHidden else {
            //: return 0
            return 0
        }

        //: if section == 0 {
        if section == 0 {
            //: return reqManager.section0Data.count
            return reqManager.section0Data.count
            //: } else {
        } else {
            //: return reqManager.section1Data.count
            return reqManager.section1Data.count
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SocialPopularListCell.className(), for: indexPath) as! SocialPopularListCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TargetListCell.className(), for: indexPath) as! TargetListCell
        //: var model: SocialUserListModel?
        var model: ControlWithModelType?
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: model = reqManager.section0Data[indexPath.row]
            model = reqManager.section0Data[indexPath.row]
            //: } else {
        } else {
            //: model = reqManager.section1Data[indexPath.row]
            model = reqManager.section1Data[indexPath.row]
        }
        //: cell.delegate = self
        cell.delegate = self
        //: cell.refreshCell(model)
        cell.checkOut(model)
        //: if seleteBlobkModel != nil &&  seleteBlobkModel?.uid == model?.uid {
        if seleteBlobkModel != nil && seleteBlobkModel?.uid == model?.uid {
            //: cell.blockBackView.isHidden = false
            cell.blockBackView.isHidden = false
            //: } else {
        } else {
            //: cell.blockBackView.isHidden = true
            cell.blockBackView.isHidden = true
        }
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
            //: var model: SocialUserListModel?
            var model: ControlWithModelType?
            //: if indexPath.section == 0 {
            if indexPath.section == 0 {
                //: model = self.reqManager.section0Data[indexPath.row]
                model = self.reqManager.section0Data[indexPath.row]
                //: } else {
            } else {
                //: model = self.reqManager.section1Data[indexPath.row]
                model = self.reqManager.section1Data[indexPath.row]
            }
            //: if  self.seleteBlobkModel == nil || self.seleteBlobkModel?.uid != model?.uid {
            if self.seleteBlobkModel == nil || self.seleteBlobkModel?.uid != model?.uid {
                //: if model?.liveWinJumpPos == 1 {
                if model?.liveWinJumpPos == 1 {
                    //: EditTextThen.share.func_audiencePushToLiveRoomVC(uid: String(model?.uid ?? 0), enterType: .unknown)
                    EditTextThen.share.studyShow(uid: String(model?.uid ?? 0), enterType: .unknown)
                    //: } else {
                } else {
                    //: EditTextThen.share.func__pushToUserDetailVC(uid: "\(model?.uid ?? 0)")
                    EditTextThen.share.soulAge(uid: "\(model?.uid ?? 0)")
                }

                //: if self.tabType == .hot {
                if self.tabType == .hot {
                    //: uploadRecord.uploadRecordEvent(eventID: ClickUserListCoverNoP, toUid: "\(model?.uid ?? 0)")
                    kLet_textData.historicalPaper(eventID: kLet_freeDeviceBarValue, toUid: "\(model?.uid ?? 0)")
                }
            }
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: let width = Float((ScreenWidth-26-9)/2)
        let width = Float((kLet_cameraValue - 26 - 9) / 2)
        //: return CGSize(width: CGFloat(floorf(width)), height: CGFloat(floorf(width*221/170)))
        return CGSize(width: CGFloat(floorf(width)), height: CGFloat(floorf(width * 221 / 170)))
    }

    //: func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "EmptyCollectionReusableView", for: indexPath)
            return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: (String(str_effectValue) + String(str_ageAtViewTitle)), for: indexPath)
        }

        //: if kind == UICollectionView.elementKindSectionHeader {
        if kind == UICollectionView.elementKindSectionHeader {
            //: headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader,
            headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader,
                                                                         //: withReuseIdentifier: SocialHeaderView.className(),
                                                                         withReuseIdentifier: SocietalHeaderView.className(),
                                                                         //: for: indexPath) as? SocialHeaderView
                                                                         for: indexPath) as? SocietalHeaderView
            //            headerView?.delegate = self
            //: return headerView!
            return headerView!
            //: } else if kind == UICollectionView.elementKindSectionFooter {
        } else if kind == UICollectionView.elementKindSectionFooter {
            //: footerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter,
            footerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter,
                                                                         //: withReuseIdentifier: SocialPopularListFooterView.className(),
                                                                         withReuseIdentifier: WithBannerDelegate.className(),
                                                                         //: for: indexPath) as? SocialPopularListFooterView
                                                                         for: indexPath) as? WithBannerDelegate
            //: footerView?.delegate = self
            footerView?.delegate = self
            //: return footerView!
            return footerView!
            //: } else {
        } else {
            //: return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "EmptyCollectionReusableView", for: indexPath)
            return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: (String(str_effectValue) + String(str_ageAtViewTitle)), for: indexPath)
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        //: if section == 0 {
        if section == 0 {
            //: return CGSize(width: ScreenWidth, height: SocialHeaderView.getSelfHeight()+13)
            return CGSize(width: kLet_cameraValue, height: SocietalHeaderView.themeReceive() + 13)
            //: } else {
        } else {
            //: return CGSize.zero
            return CGSize.zero
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        //: if section == 0 {
        if section == 0 {
            //: return CGSize(width: ScreenWidth, height: footerView?.getFooterViewHeight() ?? 0.01)
            return CGSize(width: kLet_cameraValue, height: footerView?.startBind() ?? 0.01)
            //: } else {
        } else {
            //: return CGSize.zero
            return CGSize.zero
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        // 下拉刷新时
        //: let limitCount = KDeviceIsIphoneX ? 6:4
        let limitCount = kLet_licenseTitle ? 6 : 4
        //: var count = 0
        var count = 0
        //: if reqManager.section0Data.count > limitCount {
        if reqManager.section0Data.count > limitCount {
            //: count = limitCount
            count = limitCount
            //: } else if reqManager.section0Data.count <= limitCount {
        } else if reqManager.section0Data.count <= limitCount {
            //: count = reqManager.section0Data.count-1
            count = reqManager.section0Data.count - 1
        }

        //: let videocell: SocialPopularListCell = cell as! SocialPopularListCell
        let videocell: TargetListCell = cell as! TargetListCell

        //: videocell.stopPlay()
        videocell.errorPlay()
        //: if EqualThen.share.appConfigMode.showVideoInList && EqualThen.share.loginUserMode.sex == Gender.male.rawValue &&
        if EqualThen.share.appConfigMode.showVideoInList && EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue &&
            //: indexPath.row == count && self.isFreshPlayerCell {
            indexPath.row == count && self.isFreshPlayerCell
        {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: self.scrollViewEndScrollPlayer(scrollView: self.collectionView, istopfresh: true)
                self.effectWithIstopfresh(scrollView: self.collectionView, istopfresh: true)
            }
        }
    }
}

// MARK: - UIScrollViewDelegate

//: extension SocialPopularViewController: UIScrollViewDelegate {
extension DeviceSocialViewController: UIScrollViewDelegate {
    /// 上传封面曝光次数
    //: func uploadUserListCover() {
    func userAwake() {
        //: var temparray = [SocialPopularListCell]()
        var temparray = [TargetListCell]()
        //: let array = collectionView.visibleCells
        let array = collectionView.visibleCells
        //: let limitLine = KDeviceIsIphoneX ? 3:2
        let limitLine = kLet_licenseTitle ? 3 : 2
        //: for index in 0..<array.count {
        for index in 0 ..< array.count {
            /// 当前页面显示的
            //: let cell: SocialPopularListCell = array[index] as! SocialPopularListCell
            let cell: TargetListCell = array[index] as! TargetListCell
            //: if cell.origin.y >= collectionView.contentOffset.y-10 && cell.origin.y < collectionView.contentOffset.y + cell.size.height*CGFloat(limitLine) {
            if cell.origin.y >= collectionView.contentOffset.y - 10 && cell.origin.y < collectionView.contentOffset.y + cell.size.height * CGFloat(limitLine) {
                //: temparray.append(cell)
                temparray.append(cell)
            }
        }
        /// 过滤已经上报过的
        //: if self.userVisibleCells?.count ?? 0 > 0 {
        if self.userVisibleCells?.count ?? 0 > 0 {
            //: for i in 0..<userVisibleCells!.count {
            for i in 0 ..< userVisibleCells!.count {
                //: let celli: SocialPopularListCell = userVisibleCells?[i] as! SocialPopularListCell
                let celli: TargetListCell = userVisibleCells?[i] as! TargetListCell
                //: temparray.removeAll { $0.currentModel?.uid == celli.currentModel?.uid }
                temparray.removeAll { $0.currentModel?.uid == celli.currentModel?.uid }
            }
        }
        //: var toUid  = ""
        var toUid = ""
        //: for z in 0..<temparray.count {
        for z in 0 ..< temparray.count {
            //: let cellz: SocialPopularListCell = temparray[z]
            let cellz: TargetListCell = temparray[z]
            //: if toUid.count > 0 {
            if toUid.count > 0 {
                //: toUid = "\(toUid),\(cellz.currentModel?.uid ?? 0)"
                toUid = "\(toUid),\(cellz.currentModel?.uid ?? 0)"
                //: } else {
            } else {
                //: toUid = "\(cellz.currentModel?.uid ?? 0)"
                toUid = "\(cellz.currentModel?.uid ?? 0)"
            }
        }
        //: if toUid.count > 0 {
        if toUid.count > 0 {
            //: uploadRecord.uploadRecordEvent(eventID: DisplayUserListNoP, toUid: toUid)
            kLet_textData.historicalPaper(eventID: kLet_nameData, toUid: toUid)
            //: self.userVisibleCells = temparray
            self.userVisibleCells = temparray
        }
    }

    //: func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        //: if scrollView.contentOffset.y < -5 {
        if scrollView.contentOffset.y < -5 {
            //: return
            return
        }
        //: scrollViewEndScrollPlayer(scrollView: scrollView, istopfresh: false)
        effectWithIstopfresh(scrollView: scrollView, istopfresh: false)
    }

    //: func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        //: if !decelerate {
        if !decelerate {
            //: if scrollView.contentOffset.y < -5 {
            if scrollView.contentOffset.y < -5 {
                //: return
                return
            }
            //: scrollViewEndScrollPlayer(scrollView: scrollView, istopfresh: false)
            effectWithIstopfresh(scrollView: scrollView, istopfresh: false)
        }
        //: uploadUserListCover()
        userAwake()
    }

    /// 视频动态在屏幕中间时播放
    //: func scrollViewEndScrollPlayer(scrollView: UIScrollView, istopfresh: Bool) {
    func effectWithIstopfresh(scrollView: UIScrollView, istopfresh _: Bool) {
        //: if EqualThen.share.appConfigMode.showVideoInList && EqualThen.share.loginUserMode.sex == Gender.male.rawValue {
        if EqualThen.share.appConfigMode.showVideoInList && EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue {
            //: if isgetPlayerCell {
            if isgetPlayerCell {
                //: return
                return
            }
            //: let array = collectionView.visibleCells
            let array = collectionView.visibleCells
            //: isgetPlayerCell = true
            isgetPlayerCell = true
            //: let celldataAM = NSMutableArray.init()
            let celldataAM = NSMutableArray()
            //: let limitLine = KDeviceIsIphoneX ? 3:2
            let limitLine = kLet_licenseTitle ? 3 : 2
            //: for index in 0..<array.count {
            for index in 0 ..< array.count {
                //: let cell: SocialPopularListCell = array[index] as! SocialPopularListCell
                let cell: TargetListCell = array[index] as! TargetListCell
                //: if cell.origin.y >= scrollView.contentOffset.y-10 && cell.origin.y < scrollView.contentOffset.y + cell.size.height*CGFloat(limitLine) {
                if cell.origin.y >= scrollView.contentOffset.y - 10 && cell.origin.y < scrollView.contentOffset.y + cell.size.height * CGFloat(limitLine) {
                    //: let indexpath = collectionView.indexPath(for: cell)
                    let indexpath = collectionView.indexPath(for: cell)
                    //: var model: SocialUserListModel
                    var model: ControlWithModelType
                    //: if indexpath?.section == 0 {
                    if indexpath?.section == 0 {
                        //: model = reqManager.section0Data[indexpath!.row]
                        model = reqManager.section0Data[indexpath!.row]
                        //: } else {
                    } else {
                        //: model = reqManager.section1Data[indexpath!.row]
                        model = reqManager.section1Data[indexpath!.row]
                    }
                    //: if model.videoUrl.count > 0 {
                    if model.videoUrl.count > 0 {
                        //: celldataAM.append(cell)
                        celldataAM.append(cell)
                    }
                }
            }

            //: for i in 0..<celldataAM.count {
            for i in 0 ..< celldataAM.count {
                //: for j in 0..<celldataAM.count - 1 - i {
                for j in 0 ..< celldataAM.count - 1 - i {
                    //: let tNumber1: SocialPopularListCell = celldataAM[j] as! SocialPopularListCell
                    let tNumber1: TargetListCell = celldataAM[j] as! TargetListCell
                    //: let tNumber2: SocialPopularListCell = celldataAM[j+1] as! SocialPopularListCell
                    let tNumber2: TargetListCell = celldataAM[j + 1] as! TargetListCell
                    //: if tNumber1.origin.y > tNumber2.origin.y || (tNumber1.origin.y == tNumber2.origin.y && tNumber1.origin.x > tNumber2.origin.x) {
                    if tNumber1.origin.y > tNumber2.origin.y || (tNumber1.origin.y == tNumber2.origin.y && tNumber1.origin.x > tNumber2.origin.x) {
                        //: let tmp = celldataAM[j]
                        let tmp = celldataAM[j]
                        //: celldataAM[j] = tNumber2
                        celldataAM[j] = tNumber2
                        //: celldataAM[j+1] = tmp
                        celldataAM[j + 1] = tmp
                    }
                }
            }
            //: if celldataAM.count>0 {
            if celldataAM.count > 0 {
                //: if self.playerCell != celldataAM.copy() as! NSArray {
                if self.playerCell != celldataAM.copy() as! NSArray {
                    // 去掉之前播放
                    //: if self.playerCell.count>0 {
                    if self.playerCell.count > 0 {
                        //: let cell: SocialPopularListCell = self.playerCell[self.cunrrenplayerIndex] as! SocialPopularListCell
                        let cell: TargetListCell = self.playerCell[self.cunrrenplayerIndex] as! TargetListCell
                        //: cell.stopPlay()
                        cell.errorPlay()
                    }
                    //: self.playerCell  = celldataAM.copy() as! NSArray
                    self.playerCell = celldataAM.copy() as! NSArray
                    //: self.cunrrenplayerIndex = 0
                    self.cunrrenplayerIndex = 0
                    //: let cell: SocialPopularListCell = self.playerCell[self.cunrrenplayerIndex] as! SocialPopularListCell
                    let cell: TargetListCell = self.playerCell[self.cunrrenplayerIndex] as! TargetListCell
                    //: let indexpath = collectionView.indexPath(for: cell)
                    let indexpath = collectionView.indexPath(for: cell)
                    //: var model: SocialUserListModel
                    var model: ControlWithModelType
                    //: if indexpath?.section == 0 {
                    if indexpath?.section == 0 {
                        //: model = reqManager.section0Data[indexpath!.row]
                        model = reqManager.section0Data[indexpath!.row]
                        //: } else {
                    } else {
                        //: model = reqManager.section1Data[indexpath!.row]
                        model = reqManager.section1Data[indexpath!.row]
                    }
                    //: cell.configModel(videoUrl: model.videoUrl, imgUrl: model.cover)
                    cell.writeStart(videoUrl: model.videoUrl, imgUrl: model.cover)
                    //: cell.setupPlayer()
                    cell.film()
                }
                //: } else {
            } else {
                //: if self.playerCell.count>0 {
                if self.playerCell.count > 0 {
                    //: let cell: SocialPopularListCell = self.playerCell[self.cunrrenplayerIndex] as! SocialPopularListCell
                    let cell: TargetListCell = self.playerCell[self.cunrrenplayerIndex] as! TargetListCell
                    //: cell.stopPlay()
                    cell.errorPlay()
                    //: self.playerCell = NSArray()
                    self.playerCell = NSArray()
                }
            }
            //: self.isgetPlayerCell = false
            self.isgetPlayerCell = false
            //: self.isFreshPlayerCell = false
            self.isFreshPlayerCell = false
        }
    }
}

// MARK: - ShowReactiveCompatible

//: extension SocialPopularViewController: SocialPopularListCellDelegate {
extension DeviceSocialViewController: ShowReactiveCompatible {
    /// 播打视频
    //: func chtToUser(model: SocialUserListModel) {
    func dataModel(model: ControlWithModelType) {
        //: EditTextThen.share.func__pushToPriveteChatVC(chatID: "\(model.uid)")
        EditTextThen.share.fullMoon(chatID: "\(model.uid)")
    }

    /// 快速打招呼
    //: func greetToUser(uid: String) {
    func pushUid(uid: String) {
        //: let vc = TalkingPrivateChatController(chatID: uid)
        let vc = SendReactiveCompatible(chatID: uid)
        //: vc.func_sendQuickGreetingMsg()
        vc.sort()
        //: vc.QuickEndBlock = { [weak self] isSuccess in
        vc.QuickEndBlock = { [weak self] isSuccess in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if !isSuccess {
            if !isSuccess {
                //: self.collectionView.reloadData()
                self.collectionView.reloadData()
                //: return
                return
            }
            //: self.func__showStatusBarSuccessMsg(showMsg: "Say hi successfully~".localized)
            self.fileFirst(showMsg: (String(str_indexValue.prefix(4)) + "hi su" + str_draftValue.replacingOccurrences(of: "to", with: "f") + "ully~").localized)
            //: for i in 0..<reqManager.section0Data.count {
            for i in 0 ..< reqManager.section0Data.count {
                //: let model = reqManager.section0Data[i]
                let model = reqManager.section0Data[i]
                //: if "\(model.uid)" == uid {
                if uid == "\(model.uid)" {
                    //: model.sendQuickMsg = 1
                    model.sendQuickMsg = 1
                    //: reqManager.section0Data[i] = model
                    reqManager.section0Data[i] = model
                }
            }
            //: for i in 0..<reqManager.section1Data.count {
            for i in 0 ..< reqManager.section1Data.count {
                //: let model = reqManager.section1Data[i]
                let model = reqManager.section1Data[i]
                //: if "\(model.uid)" == uid {
                if uid == "\(model.uid)" {
                    //: model.sendQuickMsg = 1
                    model.sendQuickMsg = 1
                    //: reqManager.section1Data[i] = model
                    reqManager.section1Data[i] = model
                }
            }
            //: self.collectionView.reloadData()
            self.collectionView.reloadData()
        }
    }

    //: func seleteBlockTool(model: SocialUserListModel) {
    func recordSection(model: ControlWithModelType) {
        //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: "\(model.uid)", isBlack: true) { succeed, result, errorModel in
        TitleEqualRequestManager.betweenValue(uid: "\(model.uid)", isBlack: true) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: for (index, tempModel) in self.reqManager.section0Data.enumerated() {
                for (index, tempModel) in self.reqManager.section0Data.enumerated() {
                    //: if model.uid == tempModel.uid {
                    if model.uid == tempModel.uid {
                        //: self.reqManager.section0Data.remove(at: index)
                        self.reqManager.section0Data.remove(at: index)
                    }
                }
                //: for (index, tempModel) in self.reqManager.section1Data.enumerated() {
                for (index, tempModel) in self.reqManager.section1Data.enumerated() {
                    //: if model.uid == tempModel.uid {
                    if model.uid == tempModel.uid {
                        //: self.reqManager.section1Data.remove(at: index)
                        self.reqManager.section1Data.remove(at: index)
                    }
                }
                /// 如果是section0Data删除1位后则向上补齐
                //: if self.reqManager.section0Data.count < 4 && self.reqManager.section1Data.count > 0 {
                if self.reqManager.section0Data.count < 4 && self.reqManager.section1Data.count > 0 {
                    //: self.reqManager.section0Data.append(self.reqManager.section1Data.first!)
                    self.reqManager.section0Data.append(self.reqManager.section1Data.first!)
                    //: self.reqManager.section1Data.remove(at: 0)
                    self.reqManager.section1Data.remove(at: 0)
                }
                //: if self.reqManager.section1Data.count < 2 {
                if self.reqManager.section1Data.count < 2 {
                    //: self.footerRefresh()
                    self.roundImage()
                }

                //: ProgressHUD.toast("Shielding Success".localized)
                ModelReactiveCompatible.doMake((String(str_errorValue.prefix(5)) + "ding S" + str_deadlineData.replacingOccurrences(of: "label", with: "cc")).localized)
                //: self.seleteHideBlock()
                self.beamBlock()
                //: self.collectionView.reloadData()
                self.collectionView.reloadData()
            }
        }
    }

    //: func seleteShowBlock(model: SocialUserListModel) {
    func above(model: ControlWithModelType) {
        //: seleteBlobkModel = model
        seleteBlobkModel = model
        //: collectionView.reloadData()
        collectionView.reloadData()
    }

    //: func seleteHideBlock() {
    func beamBlock() {
        //: seleteBlobkModel = nil
        seleteBlobkModel = nil
    }

    //: func cellPlayerEnd() {
    func goAway() {
        //: if self.playerCell.count==0 {
        if self.playerCell.count == 0 {
            //: return
            return
        }
        //: if self.isgetPlayerCell {
        if self.isgetPlayerCell {
            //: return
            return
        }
        //: if self.cunrrenplayerIndex+1 > self.playerCell.count {
        if self.cunrrenplayerIndex + 1 > self.playerCell.count {
            //: self.cunrrenplayerIndex -= 1
            self.cunrrenplayerIndex -= 1
        }
        //: self.isgetPlayerCell = true
        self.isgetPlayerCell = true

        //: let cell1: SocialPopularListCell? = self.playerCell[self.cunrrenplayerIndex] as? SocialPopularListCell
        let cell1: TargetListCell? = self.playerCell[self.cunrrenplayerIndex] as? TargetListCell
        //: if cell1 != nil {
        if cell1 != nil {
            //: cell1?.stopPlay()
            cell1?.errorPlay()
        }

        //: if self.cunrrenplayerIndex+1 < self.playerCell.count {
        if self.cunrrenplayerIndex + 1 < self.playerCell.count {
            //: self.cunrrenplayerIndex += 1
            self.cunrrenplayerIndex += 1
            //: } else {
        } else {
            //: self.cunrrenplayerIndex = 0
            self.cunrrenplayerIndex = 0
        }
        //: let cell2: SocialPopularListCell? = self.playerCell[self.cunrrenplayerIndex] as? SocialPopularListCell
        let cell2: TargetListCell? = self.playerCell[self.cunrrenplayerIndex] as? TargetListCell
        //: if cell2 != nil {
        if cell2 != nil {
            //: let indexpath = collectionView.indexPath(for: cell2!)
            let indexpath = collectionView.indexPath(for: cell2!)
            //: if indexpath != nil {
            if indexpath != nil {
                //: var model: SocialUserListModel
                var model: ControlWithModelType
                //: if indexpath?.section == 0 {
                if indexpath?.section == 0 {
                    //: model = reqManager.section0Data[indexpath!.row]
                    model = reqManager.section0Data[indexpath!.row]
                    //: } else {
                } else {
                    //: model = reqManager.section1Data[indexpath!.row]
                    model = reqManager.section1Data[indexpath!.row]
                }
                //: cell2?.configModel(videoUrl: model.videoUrl, imgUrl: model.cover)
                cell2?.writeStart(videoUrl: model.videoUrl, imgUrl: model.cover)
                //: cell2?.setupPlayer()
                cell2?.film()
                //: } else {
            } else {
                //: cellPlayerEnd()
                goAway()
            }
        }

        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            //: self.isgetPlayerCell = false
            self.isgetPlayerCell = false
        }
    }
}

// MARK: - HeadObjectProtocol

//: extension SocialPopularViewController: SocialPopularListFooterViewProtocol {
extension DeviceSocialViewController: HeadObjectProtocol {
    // 加载更多巨星计划数据
    //: func premiumStarLoadMoreData() {
    func game() {
        //: loadMore_premiumStarList()
        galaxy()
    }

    // 巨星计划跳转用户详情
    //: func premiumStarListCellClick(model: PremiumStarListModel?) {
    func equalHolder(model: CurrentMeasurable?) {
        //: guard model != nil else { return }
        guard model != nil else { return }
        //: EditTextThen.share.func__pushToUserDetailVC(uid: String(model!.uid))
        EditTextThen.share.soulAge(uid: String(model!.uid))
    }

    //: func adBannerCellClick(model: SocialAdBannerModel) {
    func resignModel(model: DealTransformable) {
        //: SocialAdBannerModel.jumpEvent(model: model)
        DealTransformable.modelUser(model: model)
    }
}

// MARK: - 定位权限监听

//: extension SocialPopularViewController {
extension DeviceSocialViewController {
    //: func checkLocationAuth() {
    func proposal() {
        //: TalkingLocationManager.shared().requestLocationAuthorizaiton()
        PopEventThen.project().equalAppealAuthorizaiton()
        //: TalkingLocationManager.shared().getAuthBlock { [weak self] (type: PermissionType) in
        PopEventThen.project().localGroup { [weak self] (type: FreeNumeric) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .firstEntry:
            case .firstEntry: // 首次进入
                //: self.refreshViewStatus()
                self.broadcastArea()

            //: case .userRestricted:
            case .userRestricted: // 拒绝
                //: self.refreshViewStatus()
                self.broadcastArea()
                // 展示设置弹窗
                //: self.showSettingsAlertView()
                self.choppingBlock()

            //: case .alwaysAllowed:
            case .alwaysAllowed: // 允许
                //: self.firstLoadData()
                self.chicEqual()
            }
        }
        /// 上报经纬度
        //: TalkingLocationManager.shared().getLocationBlock { success, latitude, longitude in
        PopEventThen.project().bindLike { success, latitude, longitude in
            //: if success {
            if success {
                //: SocialRequestManager.req_uploadPosition(params: ["lng": longitude, "lat": latitude]) { succeed, result, errorModel in
                CameraRequestManager.offLine(params: [String(bytes: str_viewValueHiddenName.reversed(), encoding: .utf8)!: longitude, String(bytes: str_voiceText.map{$0^45}, encoding: .utf8)!: latitude]) { _, _, _ in
                }
            }
        }
    }

    /// 设置弹窗
    //: func showSettingsAlertView() {
    func choppingBlock() {
        //: guard self.tabType == .nearby && TalkingLocationManager.shared().locationType == .userRestricted else {
        guard self.tabType == .nearby, PopEventThen.project().locationType == .userRestricted else {
            //: return
            return
        }

        // 设置弹窗
        //: TalkingAlertShow.alert(title: nil, message: "Enter “Settings” and open “Location” permission to use function normally.".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
        MotilityThen.viewConfig(title: nil, message: String(bytes: str_resumeBlockValue.map{$0^165}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_arrayContent.prefix(6))).localized, rightBtnTitle: (String(str_domainText) + str_lockName.replacingOccurrences(of: "request", with: "s")).localized) {
            //: TalkingAlertShow.hideAlert()
            MotilityThen.afterward()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            MotilityThen.afterward()
            //: let url = URL(string: UIApplication.openSettingsURLString)
            let url = URL(string: UIApplication.openSettingsURLString)
            //: if let url = url, UIApplication.shared.canOpenURL(url) {
            if let url = url, UIApplication.shared.canOpenURL(url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}

// MARK: - Layout

//: extension SocialPopularViewController {
extension DeviceSocialViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func roomData() {
        //: self.view.addSubview(emptyV)
        self.view.addSubview(emptyV)
        //: self.view.addSubview(collectionView)
        self.view.addSubview(collectionView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func mail() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(5)
            make.top.equalToSuperview().offset(5)
            //: make.leading.width.bottom.equalToSuperview()
            make.leading.width.bottom.equalToSuperview()
        }
        //: emptyV.snp.makeConstraints { make in
        emptyV.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(200)
            make.top.equalToSuperview().offset(200)
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
        }
    }

    // 添加通知
    //: private func addNotification() {
    private func effectNotification() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(searchDetailRefreshNotification),
                                               selector: #selector(previous),
                                               //: name: SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION,
                                               name: kLet_tabCellName,
                                               //: object: nil)
                                               object: nil)
    }
}
