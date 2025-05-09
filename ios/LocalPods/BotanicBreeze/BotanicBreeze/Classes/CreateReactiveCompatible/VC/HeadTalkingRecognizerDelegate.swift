
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_pageData:[UInt8] = [0x0,0x5,0x0,0xb,0xbf,0xfa,0x6,0xfb,0xfc,0x9,0xd1,0xc0,0xb7,0xff,0xf8,0xa,0xb7,0x5,0x6,0xb,0xb7,0xf9,0xfc,0xfc,0x5,0xb7,0x0,0x4,0x7,0x3,0xfc,0x4,0xfc,0x5,0xb,0xfc,0xfb]

fileprivate func guardBar(from num: UInt8) -> UInt8 {
    let value = Int(num) + 105
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Profile" :*/
fileprivate let str_callTitle:String = "path"
fileprivate let str_verticalValue:String = "roftablee"

/*: "party_mini_bg_userDetail" :*/
fileprivate let str_sourceName:String = "PARTY"
fileprivate let str_appValue:String = "i_bto frame self"
fileprivate let str_locationData:String = "g_usetype var equal else false"

/*: "removeAttentionUid" :*/
fileprivate let str_styleData:String = "revideo"
fileprivate let str_equalValue:String = "ENTIO"

/*: "attentionUid" :*/
fileprivate let str_attachContent:String = "ATTENTI"
fileprivate let str_taskText:[Character] = ["o","n","U","i","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HeadTalkingRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/5/22.
//

//: import UIKit
import UIKit

//: import JXSegmentedView
import JXSegmentedView

//: import JXPagingView
import JXPagingView

//: class TUserDetailTableHeightModel: NSObject {
class TableReactiveCompatible: NSObject {
    //: var nick_height: CGFloat = 0
    var nick_height: CGFloat = 0
    //: var profile_height: CGFloat = 0
    var profile_height: CGFloat = 0
    //: var post_height: CGFloat = 0
    var post_height: CGFloat = 0
    //: var aboutme_height: CGFloat = 0
    var aboutme_height: CGFloat = 0
    //: var intersets_height: CGFloat = 0
    var intersets_height: CGFloat = 0
    //: var gift_height: CGFloat = 0
    var gift_height: CGFloat = 0
}

//: class TalkingUserDetailViewController: TalkingBaseViewController {
class HeadTalkingRecognizerDelegate: SeamViewController {
    //: var uid: String = ""
    var uid: String = ""
    //: private var currentIndex = 0
    private var currentIndex = 0 // 默认选中tab
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = OccurrentInfoModel() // 用户资料
    //: private var giftsArr = [TalkingUserReceivedGiftModel]()
    private var giftsArr = [GrantHandyJSON]() // 收到的礼物
    //: private let segmentedDataSource = JXSegmentedTitleDataSource()
    private let segmentedDataSource = JXSegmentedTitleDataSource()
    //: private var isRequest = false
    private var isRequest = false // 防止多次请求

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: public init(tempUid: String?) {
    public init(tempUid: String?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: uid = tempUid ?? ""
        uid = tempUid ?? ""
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_pageData.map{guardBar(from: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: addNotifications()
        indicator()
        //: bindInteraction()
        bindRoom()
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 先请求接口，再初始化页面
        //: requestAllData()
        mediumName()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var navView: TalkingUserDetailNaviBarView = {
    private lazy var navView: WithThen = { // 导航
        //: let v = TalkingUserDetailNaviBarView()
        let v = WithThen()
        //: return v
        return v
        //: }()
    }()

    //: private lazy var headerView: TalkingUserDetailHeaderView = {
    private lazy var headerView: ToDataHeaderView = { // banner
        //: let frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: UserDetailHeaderView_H)
        let frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_deviceData)
        //: let v = TalkingUserDetailHeaderView(frame: frame)
        let v = ToDataHeaderView(frame: frame)
        //: v.VideoCallBlock = { [weak self] in
        v.VideoCallBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            // 音视频通话
            //: self.bottomView.videoButtonClick()
            self.bottomView.block()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var bottomView: TalkingUserDetailBottomView = {
    private lazy var bottomView: ArrayThen = { // bottom
        //: let v = TalkingUserDetailBottomView(frame: .zero)
        let v = ArrayThen(frame: .zero)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var vipCenterView: UIImageView = {
    private lazy var vipCenterView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: return img
        return img
        //: }()
    }()

    //: private lazy var vipBottomView: UIImageView = {
    private lazy var vipBottomView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: return img
        return img
        //: }()
    }()

    //: private lazy var segmentedView: JXSegmentedView = {
    private lazy var segmentedView: JXSegmentedView = {
        //: let segmentedView = JXSegmentedView.init(frame: CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: 44))
        let segmentedView = JXSegmentedView(frame: CGRect(x: 0, y: kLet_timeSenseValue, width: kLet_cameraValue, height: 44))
        //: segmentedDataSource.itemWidth = 70
        segmentedDataSource.itemWidth = 70
        //: segmentedDataSource.itemSpacing = 18
        segmentedDataSource.itemSpacing = 18
        //: segmentedDataSource.titles = titleArray
        segmentedDataSource.titles = titleArray
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.isItemSpacingAverageEnabled = false
        segmentedDataSource.isItemSpacingAverageEnabled = false
        //: segmentedDataSource.isSelectedAnimable = false
        segmentedDataSource.isSelectedAnimable = false
        //: segmentedDataSource.titleNormalColor = UIColor.publishView()
        segmentedDataSource.titleNormalColor = UIColor.publishView()
        //: segmentedDataSource.titleSelectedColor = UIColor.appTitleColor()
        segmentedDataSource.titleSelectedColor = UIColor.executeTo()
        //: segmentedDataSource.titleNormalFont = .pingfangFont(type: .Medium, fontSize: 16)
        segmentedDataSource.titleNormalFont = .pingfang(type: .Medium, fontSize: 16)
        //: segmentedDataSource.titleSelectedFont = .pingfangFont(type: .Medium, fontSize: 18)
        segmentedDataSource.titleSelectedFont = .pingfang(type: .Medium, fontSize: 18)

        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 12
        indicator.indicatorWidth = 12
        //: indicator.indicatorHeight = 3
        indicator.indicatorHeight = 3
        //: indicator.verticalOffset = 8
        indicator.verticalOffset = 8
        //: indicator.lineStyle = .normal
        indicator.lineStyle = .normal
        //: indicator.indicatorColor = UIColor.appTitleColor()
        indicator.indicatorColor = UIColor.executeTo()

        //: segmentedView.defaultSelectedIndex = currentIndex
        segmentedView.defaultSelectedIndex = currentIndex
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.delegate = self
        segmentedView.delegate = self
        //: segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        //: segmentedView.backgroundColor = .clear
        segmentedView.backgroundColor = .clear
        //: return segmentedView
        return segmentedView
        //: }()
    }()

    //: private lazy var pagerView: JXPagingListRefreshView = {
    private lazy var pagerView: JXPagingListRefreshView = {
        //: let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        //: view.mainTableView.backgroundColor = .clear
        view.mainTableView.backgroundColor = .clear
        //: view.listContainerView.listCellBackgroundColor = .clear
        view.listContainerView.listCellBackgroundColor = .clear
        //: view.defaultSelectedIndex = currentIndex
        view.defaultSelectedIndex = currentIndex
        //: view.pinSectionHeaderVerticalOffset = Int(StatusBarNavigationBarHeight)
        view.pinSectionHeaderVerticalOffset = Int(kLet_detailNameText)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleArray: [String] = {
    private lazy var titleArray: [String] = //: return [/|*"Post".localized,*|/ "Profile".localized]
        [ /* "Post".localized, */ (str_callTitle.replacingOccurrences(of: "path", with: "P") + str_verticalValue.replacingOccurrences(of: "table", with: "il")).localized]
    //: }()

    //: private lazy var dataVC: [TalkingBaseViewController] = {
    private lazy var dataVC: [SeamViewController] = //: return [/|*postVC,*|/ profileVC]
        [ /* postVC, */ profileVC]
    //: }()

//    private lazy var postVC: OfViewController = {
//        let vc = OfViewController()
//        return vc
//    }()
    //: private lazy var profileVC: TalkingUserDetailProfileViewController = {
    private lazy var profileVC: FileObjectProtocol = {
        //: let vc = TalkingUserDetailProfileViewController()
        let vc = FileObjectProtocol()
        //: return vc
        return vc
        //: }()
    }()

    // 关注按钮
//    private lazy var followBtn: UIImageView = {
//        let img = UIImageView()
//        img.image = UIImage.eponymUp(name: "bth_me_follow_nor")
//        img.isUserInteractionEnabled = true
//        let tap = UITapGestureRecognizer(target: self, action: #selector(followButtonClick))
//        img.addGestureRecognizer(tap)
//        img.isHidden = true
//        return img
//    }()

    //: private lazy var voiceRoomBtn: UIButton = {
    private lazy var voiceRoomBtn: UIButton = {
        //: let voiceRoomBtn = UIButton(type: .custom)
        let voiceRoomBtn = UIButton(type: .custom)
        //: voiceRoomBtn.isHidden = true
        voiceRoomBtn.isHidden = true
        //: voiceRoomBtn.setBackgroundImage(UIImage.eponymUp(name: "party_mini_bg_userDetail"), for: .normal)
        voiceRoomBtn.setBackgroundImage(UIImage.eponymUp(name: (str_sourceName.lowercased() + "_min" + String(str_appValue.prefix(3)) + String(str_locationData.prefix(5)) + "rDetail")), for: .normal)
        //: return voiceRoomBtn
        return voiceRoomBtn
        //: }()
    }()

    //: private lazy var roomHeadImgView: UIImageView = {
    private lazy var roomHeadImgView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.contentMode = .scaleAspectFill
        imgView.contentMode = .scaleAspectFill
        //: imgView.layer.cornerRadius = 20
        imgView.layer.cornerRadius = 20
        //: imgView.layer.borderWidth = 1
        imgView.layer.borderWidth = 1
        //: imgView.layer.borderColor = UIColor.white.cgColor
        imgView.layer.borderColor = UIColor.white.cgColor
        //: imgView.layer.masksToBounds = true
        imgView.layer.masksToBounds = true
        //: return imgView
        return imgView
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingUserDetailViewController {
extension HeadTalkingRecognizerDelegate {
    /// follow
    //: private func req_followRequest() {
    private func numbererchange() {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            oversight(showMsg: kLet_errorData)
            //: return
            return
        }

        //: var isattion = true
        var isattion = true
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: if userInfoModel.isAttention {
        if userInfoModel.isAttention {
            //: dict["removeAttentionUid"] = userInfoModel.uid
            dict[(str_styleData.replacingOccurrences(of: "video", with: "mo") + "veAtt" + str_equalValue.lowercased() + "nUid")] = userInfoModel.uid
            //: isattion = false
            isattion = false
            //: } else {
        } else {
            //: dict["attentionUid"] = userInfoModel.uid
            dict[(str_attachContent.lowercased() + String(str_taskText))] = userInfoModel.uid
        }
        //: PostulationReactiveCompatible.req_atationTool(isAttention: isattion, params: dict) { succeed, result, errorModel in
        PostulationReactiveCompatible.addParams(isAttention: isattion, params: dict) { succeed, _, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: self.userInfoModel.isAttention = !self.userInfoModel.isAttention
            self.userInfoModel.isAttention = !self.userInfoModel.isAttention
            //: self.refreshfollowButtonStatus()
            self.voiceStatus()
        }
    }

    /// 请求个人资料 + 礼物
    //: func requestAllData() {
    func mediumName() {
        //: let group = DispatchGroup()
        let group = DispatchGroup()
        //: let queue = DispatchQueue(label: "", qos: .default, attributes: DispatchQueue.Attributes.concurrent)
        let queue = DispatchQueue(label: "", qos: .default, attributes: DispatchQueue.Attributes.concurrent)
        //: group.enter()
        group.enter()
        //: group.enter()
        group.enter()
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: queue.async(group: group) {
        queue.async(group: group) {
            //: TalkingUserRequestManager.func__otherUserInfo(uid: self.uid) { succeed, result, errorModel in
            TitleEqualRequestManager.userInfoCompletionFuncOther(uid: self.uid) { succeed, result, _ in
                //: self.setNoremarlView()
                self.mutual()
                //: if self.uid == EqualThen.share.loginUid {
                if self.uid == EqualThen.share.loginUid {
                    //: self.bottomView.showEditBtn()
                    self.bottomView.alter()
                }
                //: if succeed == true {
                if succeed == true {
                    //: if let userModel = JSONDeserializer<TalkingUserInfoModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                    if let userModel = JSONDeserializer<OccurrentInfoModel>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                        //: self.userInfoModel = userModel
                        self.userInfoModel = userModel
                        // 默认选中哪个Tab
//                        self.currentIndex = (userModel.momentPicNum < 10) ? 1:0
                        // 创建视图
                        //: self.setupSubviews()
                        self.cover()
                        //: self.setupSubViewsConstraint()
                        self.photographConstraint()
                        //: self.setupVIPSkinView()
                        self.changeDoing()
                        // 刷新视图
                        //: self.navView.refreshView(userModel)
                        self.navView.withTheme(userModel)
                        //: self.headerView.refreshView(userModel)
                        self.headerView.joint(userModel)
                        //: self.bottomView.refreshView(userModel)
                        self.bottomView.straddleDown(userModel)
//                        self.postVC.refreshPostViewController(userModel)
                        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 20))]
                        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 20))]
                        //: self.roomHeadImgView.setUrlImage(urlStr: userModel.headPic, options: optionsInfo)
                        self.roomHeadImgView.lineBorder(urlStr: userModel.headPic, options: optionsInfo)
                    }
                }
                //: group.leave()
                group.leave()
            }
        }
        //: queue.async(group: group) {
        queue.async(group: group) {
//            TitleEqualRequestManager.func__getReceivedGift(uid: self.uid) { succeed, result, errorModel in
//                if succeed == true {
//                    self.giftsArr.removeAll()
//                    for dic in result as! [Dictionary<String, Any>] {
//                        if let model = GrantHandyJSON.deserialize(from: dic as? Dictionary) {
//                            self.giftsArr.append(model)
//                        }
//                    }
//                }
            //: group.leave()
            group.leave()
//            }
        }

        //: group.notify(queue: DispatchQueue.main) {
        group.notify(queue: DispatchQueue.main) {
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: self.reloadDataWithRequestGroupNotify()
            self.theCollection()
            //: self.view.bringSubviewToFront(self.bottomView)
            self.view.bringSubviewToFront(self.bottomView)
            //: self.view.bringSubviewToFront(self.navView)
            self.view.bringSubviewToFront(self.navView)
        }
    }

    /// 处理profile分区
    //: private func reloadDataWithRequestGroupNotify() {
    private func theCollection() {
        //: refreshfollowButtonStatus()
        voiceStatus()

        // profile分区数据
        //: var profileSectionArr = [TUserDetailCellType.profileType]
        var profileSectionArr = [BottomCaseIterable.profileType]
        //: if userInfoModel.aboutMe.count > 0 {
        if userInfoModel.aboutMe.count > 0 {
            //: profileSectionArr.append(.aboutMeType)
            profileSectionArr.append(.aboutMeType)
        }
        //: if userInfoModel.interest.count > 0 {
        if userInfoModel.interest.count > 0 {
            //: profileSectionArr.append(.intersetsType)
            profileSectionArr.append(.intersetsType)
        }
//        if giftsArr.count > 0 {
//            profileSectionArr.append(.giftType)
//        }

        // 刷新Profile
        //: self.profileVC.refreshProfileSub(giftsArr, profileSectionArr, userInfoModel)
        self.profileVC.subItemArray(giftsArr, profileSectionArr, userInfoModel)
    }
}

// MARK: - Event

//: extension TalkingUserDetailViewController {
extension HeadTalkingRecognizerDelegate {
    /// follow
    //: @objc private func followButtonClick() {
    @objc private func followDataClick() {
        //: req_followRequest()
        numbererchange()
    }

    /// 刷新关注状态
    //: private func refreshfollowButtonStatus() {
    private func voiceStatus() {
//        self.followBtn.isHidden = (userInfoModel.uid == EqualThen.share.loginUid)
//        let followImgStr = self.userInfoModel.isAttention ? "bth_me_follow_pre":"bth_me_follow_nor"
//        self.followBtn.image = UIImage.eponymUp(name: followImgStr)
    }

    /// 展示VIP皮肤视图
    //: private func setupVIPSkinView() {
    private func changeDoing() {
        //: guard userInfoModel.loungePlus else { return }
        guard userInfoModel.loungePlus else { return }
        //: guard let vipModel = EqualThen.share.appUserConfigMode.vipSetting.filter({$0.vipSkinId == userInfoModel.vipSkinId}).first else { return }
        guard let vipModel = EqualThen.share.appUserConfigMode.vipSetting.filter({ $0.vipSkinId == userInfoModel.vipSkinId }).first else { return }

        //: pagerView.listContainerView.addSubview(vipCenterView)
        pagerView.listContainerView.addSubview(vipCenterView)
        //: pagerView.listContainerView.sendSubviewToBack(vipCenterView)
        pagerView.listContainerView.sendSubviewToBack(vipCenterView)
        //: vipCenterView.snp.makeConstraints { make in
        vipCenterView.snp.makeConstraints { make in
            //: make.top.equalTo(-44)
            make.top.equalTo(-44)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(44)
            make.height.equalTo(44)
        }

        //: pagerView.listContainerView.addSubview(vipBottomView)
        pagerView.listContainerView.addSubview(vipBottomView)
        //: pagerView.listContainerView.sendSubviewToBack(vipBottomView)
        pagerView.listContainerView.sendSubviewToBack(vipBottomView)
        //: vipBottomView.snp.makeConstraints { make in
        vipBottomView.snp.makeConstraints { make in
            //: make.top.equalTo(vipCenterView.snp.bottom)
            make.top.equalTo(vipCenterView.snp.bottom)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(167)
            make.height.equalTo(167)
        }

        //: vipCenterView.setUrlImage(urlStr: vipModel.vipSkinCenter, placeImg: nil)
        vipCenterView.direct(urlStr: vipModel.vipSkinCenter, placeImg: nil)
        //: vipBottomView.setUrlImage(urlStr: vipModel.vipSkinBottom, placeImg: nil)
        vipBottomView.direct(urlStr: vipModel.vipSkinBottom, placeImg: nil)
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingUserDetailViewController: JXSegmentedViewDelegate {
extension HeadTalkingRecognizerDelegate: JXSegmentedViewDelegate {
    // 点击item或滑动时【点击标题和滑动视图都会调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didSelectedItemAt _: Int) {}

    // 添加该方法是为了防止首次进入应用，直接点击nearby无法初始化页面的情况 【该方法只会在点击标题时调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didClickSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didClickSelectedItemAt index: Int) {
        //: pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.defaultSelectedIndex = index
        //: pagerView.listContainerView.reloadData()
        pagerView.listContainerView.reloadData()
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingUserDetailViewController: JXPagingViewDelegate {
extension HeadTalkingRecognizerDelegate: JXPagingViewDelegate {
    //: func pagingView(_ pagingView: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
    func pagingView(_: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
        //: var type = index
        var type = index
        //: if type < 0 { type = 0 }
        if type < 0 { type = 0 }
        //: let vc = dataVC[type]
        let vc = dataVC[type]
        //: return vc as! JXPagingViewListViewDelegate
        return vc as! JXPagingViewListViewDelegate
    }

    //: func tableHeaderViewHeight(in pagingView: JXPagingView) -> Int {
    func tableHeaderViewHeight(in _: JXPagingView) -> Int {
        //: return Int(UserDetailHeaderView_H)
        return Int(kLet_deviceData)
    }

    //: func tableHeaderView(in pagingView: JXPagingView) -> UIView {
    func tableHeaderView(in _: JXPagingView) -> UIView {
        //: return headerView
        return headerView
    }

    //: func heightForPinSectionHeader(in pagingView: JXPagingView) -> Int {
    func heightForPinSectionHeader(in _: JXPagingView) -> Int {
        //: return Int(segmentedView.frame.height)
        return Int(segmentedView.frame.height)
    }

    //: func viewForPinSectionHeader(in pagingView: JXPagingView) -> UIView {
    func viewForPinSectionHeader(in _: JXPagingView) -> UIView {
        //: return segmentedView
        return segmentedView
    }

    //: func numberOfLists(in pagingView: JXPagingView) -> Int {
    func numberOfLists(in _: JXPagingView) -> Int {
        //: return titleArray.count
        return titleArray.count
    }

    // 滑动改变导航颜色
    //: func pagingView(_ pagingView: JXPagingView, mainTableViewDidScroll scrollView: UIScrollView) {
    func pagingView(_: JXPagingView, mainTableViewDidScroll scrollView: UIScrollView) {
        //: let offsetY = scrollView.contentOffset.y
        let offsetY = scrollView.contentOffset.y
        //: if  offsetY > StatusBarNavigationBarHeight {
        if offsetY > kLet_detailNameText {
            //: self.navView.whiteBgView.alpha = 1
            self.navView.whiteBgView.alpha = 1
            //: self.navView.backButton.tintColor = .appTitleColor()
            self.navView.backButton.tintColor = .executeTo()
            //: self.navView.moreButton.tintColor = .appTitleColor()
            self.navView.moreButton.tintColor = .executeTo()
            //: } else {
        } else {
            //: self.navView.whiteBgView.alpha = min(offsetY/StatusBarNavigationBarHeight, 1)
            self.navView.whiteBgView.alpha = min(offsetY / kLet_detailNameText, 1)
            //: let color = self.navView.whiteBgView.alpha > 0.7 ? UIColor.appTitleColor():UIColor.white
            let color = self.navView.whiteBgView.alpha > 0.7 ? UIColor.executeTo() : UIColor.white
            //: self.navView.backButton.tintColor = color
            self.navView.backButton.tintColor = color
            //: self.navView.moreButton.tintColor = color
            self.navView.moreButton.tintColor = color
        }
    }
}

// MARK: - 刷新个人资料通知

//: extension TalkingUserDetailViewController {
extension HeadTalkingRecognizerDelegate {
    /// 刷新个人资料通知
    //: @objc private func refreshUserInfoNotification() {
    @objc private func reload() {
        //: requestAllData()
        mediumName()
    }
}

// MARK: - Layout

//: extension TalkingUserDetailViewController {
extension HeadTalkingRecognizerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func cover() {
        //: view.addSubview(pagerView)
        view.addSubview(pagerView)
//        segmentedView.addSubview(followBtn)
        //: view.addSubview(voiceRoomBtn)
        view.addSubview(voiceRoomBtn)
        //: voiceRoomBtn.addSubview(roomHeadImgView)
        voiceRoomBtn.addSubview(roomHeadImgView)
        //: voiceRoomBtn.isHidden = (self.userInfoModel.partyRoomId == 0)
        voiceRoomBtn.isHidden = (self.userInfoModel.partyRoomId == 0)
    }

    //: private func setNoremarlView() {
    private func mutual() {
        //: view.addSubview(navView)
        view.addSubview(navView)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: navView.snp.makeConstraints { make in
        navView.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalTo(0)
            make.leading.trailing.top.equalTo(0)
            //: make.height.equalTo(StatusBarNavigationBarHeight)
            make.height.equalTo(kLet_detailNameText)
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(UserDetailBottomView_H)
            make.height.equalTo(kLet_giftText)
        }
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func photographConstraint() {
        //: pagerView.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        pagerView.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData)

//        followBtn.snp.makeConstraints { make in
//            make.centerY.equalToSuperview()
//            make.trailing.equalTo(-15)
//            make.size.equalTo(CGSize(width: 46, height: 26))
//        }

        //: voiceRoomBtn.snp.makeConstraints { make in
        voiceRoomBtn.snp.makeConstraints { make in
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
            //: make.bottom.equalToSuperview().offset(-actualHeight(h: 178) - kDeviceSafeBottomHeight)
            make.bottom.equalToSuperview().offset(-actualHeight(h: 178) - kLet_nextData)
            //: make.width.equalTo(55)
            make.width.equalTo(55)
            //: make.height.equalTo(70)
            make.height.equalTo(70)
        }
        //: roomHeadImgView.snp.makeConstraints { make in
        roomHeadImgView.snp.makeConstraints { make in
            //: make.leading.equalToSuperview().offset(3)
            make.leading.equalToSuperview().offset(3)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func indicator() {
        // 个人信息更新成功刷新UI
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(refreshUserInfoNotification),
                                               selector: #selector(reload),
                                               //: name: USER_GETMYINFO_SUCCEED_NOTIFICATION,
                                               name: kLet_viewValue,
                                               //: object: nil)
                                               object: nil)
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func bindRoom() {
        //: voiceRoomBtn.rx.tap
        voiceRoomBtn.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: EditTextThen.share.func_pushToVoiceRoomVC(roomId: self.userInfoModel.partyRoomId.stringValue)
                EditTextThen.share.loadId(roomId: self.userInfoModel.partyRoomId.stringValue)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
