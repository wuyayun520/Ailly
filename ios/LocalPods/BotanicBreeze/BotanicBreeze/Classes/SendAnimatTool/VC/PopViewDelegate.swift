
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_labelName:[UInt8] = [0x5b,0x5c,0x5b,0x46,0x1a,0x51,0x5d,0x56,0x57,0x40,0x8,0x1b,0x12,0x5a,0x53,0x41,0x12,0x5c,0x5d,0x46,0x12,0x50,0x57,0x57,0x5c,0x12,0x5b,0x5f,0x42,0x5e,0x57,0x5f,0x57,0x5c,0x46,0x57,0x56]

private func makeThrough(target num: UInt8) -> UInt8 {
    return num ^ 50
}

/*: "You've got no message yet." :*/
fileprivate let str_textName:[Character] = ["Y","o","u","\'","v","e"," ","g","o","t"," ","n","o"," ","m","e","s"]
fileprivate let str_normalAddName:[Character] = ["s","a","g","e"," ","y","e","t","."]

/*: "icon_kong_kong_default" :*/
fileprivate let str_modelContent:String = "ICON"
fileprivate let str_applicationMagnitudeData:String = "kong_defmodel self"
fileprivate let str_cellName:String = "AULT"

/*: "Cancel" :*/
fileprivate let str_colorTitle:String = "gift"
fileprivate let str_bottomValue:String = "ancemodel"

/*: "OK" :*/
fileprivate let str_blockPathData:String = "Oactual"

/*: "uid" :*/
fileprivate let str_dismissValue:[UInt8] = [0xac,0xa0,0x9b]

fileprivate func sleepingAccommodation(time num: UInt8) -> UInt8 {
    let value = Int(num) + 201
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_message_report_nor" :*/
fileprivate let str_voiceLayerData:String = "BTN"
fileprivate let str_maleToolData:[Character] = ["_","m","e","s","s","a","g","e","_","r","e","p","o","r","t","_","n","o","r"]

/*: "#FF935D" :*/
fileprivate let str_viewValue:[Character] = ["#","F","F","9","3","5"]
fileprivate let str_blackName:String = "d"

/*: "btn_message_block_nor" :*/
fileprivate let str_toLineValue:String = "btn_mself color let self model"
fileprivate let str_removeHiddenName:String = "path cell name self imagelock_nor"

/*: "#C179F9" :*/
fileprivate let str_collectionName:[Character] = ["#","C","1","7","9","F"]
fileprivate let str_makeText:String = "log"

/*: "btn_message_untop_nor" :*/
fileprivate let str_fromText:[UInt8] = [0x81,0x97,0x8d,0xbc,0x8e,0x86,0x90,0x90,0x82,0x84,0x86,0xbc,0x96,0x8d,0x97,0x8c,0x93,0xbc,0x8d,0x8c,0x91]

/*: "btn_message_top_nor" :*/
fileprivate let str_sharedCornerValue:String = "btn_size top"
fileprivate let str_videoData:[Character] = ["o"]
fileprivate let str_makeContentValue:String = "p_nordaily commit model layer"

/*: "#8A79F9" :*/
fileprivate let str_succeedValue:String = "for guard#8A79F9"

/*: "btn_message_delete_nor" :*/
fileprivate let str_imageValue:String = "path text timebtn_me"
fileprivate let str_minData:String = "remove timee_de"
fileprivate let str_dataDeviceValue:[Character] = ["l","e","t"]
fileprivate let str_meText:[Character] = ["e","_","n","o","r"]

/*: "#FF506D" :*/
fileprivate let str_sendViewColorValue:String = "mini error#FF506D"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PopViewDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

//: import UIKit
import UIKit

//: class TalkingChatListViewController: TalkingBaseViewController {
class PopViewDelegate: SeamViewController {
    //: var iLikeBlock: ((_ isShow: Bool) -> ())?
    var iLikeBlock: ((_ isShow: Bool) -> Void)?
    //: private var canLoadMore = false
    private var canLoadMore = false // 是否可以加载更多数据
    //: private var curType = ChatListTopItemType.All
    private var curType = PositionViewTopTypeListDefaultsSerializable.All

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_labelName.map{makeThrough(target: $0)}, encoding: .utf8)!)
    }

    //: init(isHalfView: Bool = false) {
    init(isHalfView: Bool = false) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.manager.isHalf = isHalfView
        self.manager.isHalf = isHalfView
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: TalkingConversationListener.shared.func__refreshSysMsg()
        TalkingConversationListener.shared.addMsg()
        // 公共聊天室
        //: self.manager.req_chatRommArr { [weak self] succeed in
        self.manager.vocalism { [weak self] succeed in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
        // 获取我喜欢列表
        //: self.manager.req_getLikeList { [weak self] succeed in
        self.manager.completionGetHitListCareFor { [weak self] succeed in
            //: guard succeed == true, let self = self else { return }
            guard succeed == true, let self = self else { return }
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: let shouldShow = self.manager.iLikeArr.count > 0
                let shouldShow = self.manager.iLikeArr.count > 0
                //: self.likeListView.isHidden = !shouldShow
                self.likeListView.isHidden = !shouldShow
                //: self.likeListView.snp.updateConstraints { make in
                self.likeListView.snp.updateConstraints { make in
                    //: make.height.equalTo(shouldShow ? 90:0)
                    make.height.equalTo(shouldShow ? 90 : 0)
                }
                //: self.likeListView.refreshILikeList(self.manager.iLikeArr)
                self.likeListView.thenUp(self.manager.iLikeArr)
                //: self.iLikeBlock?(shouldShow)
                self.iLikeBlock?(shouldShow)
            }
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: half_showViewAnimation()
        toAnimation()
        //: TalkingConversationListener.shared.func__addDelegate(self)
        TalkingConversationListener.shared.handle(self)
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.2) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.2) {
            //: self.getConversationList()
            self.needList()
        }
        //: createUI()
        viewUi()
        //: func__installNotificationObservers()
        popFor()
    }

    // MARK: - Lazy load

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let tableView = UITableView.init(frame: .zero, style: .grouped)
        let tableView = UITableView(frame: .zero, style: .grouped)
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.backgroundColor = .clear
        tableView.backgroundColor = .clear
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.register(TalkingChatListTableCell.self, forCellReuseIdentifier: TalkingChatListTableCell.className())
        tableView.register(NameFreeReactiveCompatible.self, forCellReuseIdentifier: NameFreeReactiveCompatible.className())
        //: tableView.addHeaderRefresh { [weak self] in
        tableView.addHeader { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.refreshOnlineStatus(isFirst: true)
            self.indexFirst(isFirst: true)
        }
        //: tableView.addFooterRefresh { [weak self] in
        tableView.fromStatus { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.getConversationListMore()
            self.isoclinal()
        }
        //: let footer = tableView.mj_footer as! MJRefreshAutoNormalFooter
        let footer = tableView.mj_footer as! MJRefreshAutoNormalFooter
        //: footer.setTitle("", for: MJRefreshState.idle)
        footer.setTitle("", for: MJRefreshState.idle)
        //: footer.setTitle("", for: MJRefreshState.noMoreData)
        footer.setTitle("", for: MJRefreshState.noMoreData)
        //: return tableView
        return tableView
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = ShadowViewEmptyStyle()
        //: style.TipsTitle = "You've got no message yet.".localized
        style.TipsTitle = (String(str_textName) + String(str_normalAddName)).localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (str_modelContent.lowercased() + "_kong_" + String(str_applicationMagnitudeData.prefix(8)) + str_cellName.lowercased())
        //: let emptyView = EmptyView.init(frame: .zero, style: style)
        let emptyView = EmptyView(frame: .zero, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()

    //: private lazy var removeCurrVBtn: UIButton = {
    private lazy var removeCurrVBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(removeCurrentViewButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(doingTo), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var manager: TalkingChatListManager = {
    private lazy var manager: GrantCustomListManager = //: return GrantCustomListManager()
        .init()
    //: }()

//    private lazy var topItemView: OfTargetThen = {
//        let view = OfTargetThen.init()
//        view.delegate = self
//        view.backgroundColor = .white
//        return view
//    }()
    /// v1.8.8 我喜欢列表
    //: private lazy var likeListView: ILikeListView = {
    private lazy var likeListView: AggregationFlowLayout = {
        //: let v = ILikeListView()
        let v = AggregationFlowLayout()
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingChatListViewController {
extension PopViewDelegate {
    /// 获取会话列表【增量返回】
    //: func getConversationList() {
    func needList() {
        //: self.manager.req_getConversationList { [weak self] isFinish in
        self.manager.exceptShow { [weak self] isFinish in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.canLoadMore = isFinish
            self.canLoadMore = isFinish
            // 获取用户在线状态逻辑
            //: var timeInterval = 0.5
            var timeInterval = 0.5
            //: var isFirst = false
            var isFirst = false
            //: if (self.manager.loadedOnlineStatus == false) {
            if self.manager.loadedOnlineStatus == false { // 首次
                //: self.manager.loadedOnlineStatus = true
                self.manager.loadedOnlineStatus = true
                //: timeInterval = 3
                timeInterval = 3
                //: isFirst = true
                isFirst = true
            }
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + timeInterval) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + timeInterval) {
                //: self.refreshOnlineStatus(isFirst: isFirst)
                self.indexFirst(isFirst: isFirst)
            }
        }
    }

    /// 刷新在线状态
    /// - Parameter isFirst: 是否首次刷新
    //: func refreshOnlineStatus(isFirst: Bool) {
    func indexFirst(isFirst: Bool) {
        //: self.manager.getConversationListOnlineStatus(isFirst: isFirst) { [weak self] succeed in
        self.manager.enterEnable(isFirst: isFirst) { [weak self] succeed in
            //: self?.tableView.endRefresh()
            self?.tableView.cancelButton()
            //: guard succeed == true else { return }
            guard succeed == true else { return }
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self?.tableView.mj_footer?.endRefreshing()
                self?.tableView.mj_footer?.endRefreshing()
                //: self?.tableView.reloadData()
                self?.tableView.reloadData()
            }
        }
    }

    /// 获取更多会话列表数据
    //: func getConversationListMore() {
    func isoclinal() {
        //: self.getConversationList()
        self.needList()
    }

    /// 过滤增量会话
    //: func cconfigData(listData: [TalkingConversationModel]) {
    func titleStart(listData: [LengthReactiveCompatible]) {
        // 获取用户信息
        //: if listData.count > 0 {
        if listData.count > 0 {
            //: self.manager.getUserInfoListFromCache(conversationList: listData) { [weak self] in
            self.manager.buttonFinish(conversationList: listData) { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.reloadData()
                self.connection()
            }
        }

        //: refreshTableView()
        birdSEyeViewSend()
    }

    /// 刷新表格
    //: func refreshTableView() {
    func birdSEyeViewSend() {
        //: guard self.manager.officialArr.count != 0 ||
        guard self.manager.officialArr.count != 0 ||
            //: self.manager.topArr.count != 0 ||
            self.manager.topArr.count != 0 ||
            //: self.manager.normalArr.count != 0 else {
            self.manager.normalArr.count != 0
        else {
            //: self.tableView.isHidden = true
            self.tableView.isHidden = true
            //: self.emptyView.isHidden = false
            self.emptyView.isHidden = false
            //: return
            return
        }

        //: self.tableView.endRefresh()
        self.tableView.cancelButton()
        //: self.emptyView.isHidden = true
        self.emptyView.isHidden = true
        //: self.tableView.isHidden = false
        self.tableView.isHidden = false
        //: self.tableView.mj_footer?.isHidden = !canLoadMore
        self.tableView.mj_footer?.isHidden = !canLoadMore
        //: self.reloadData()
        self.connection()

        // 没有更多数据
        //: if self.canLoadMore == false {
        if self.canLoadMore == false {
            //: self.tableView.mj_footer?.endRefreshingWithNoMoreData()
            self.tableView.mj_footer?.endRefreshingWithNoMoreData()
        }
    }

    /// 刷新
    //: func reloadData() {
    func connection() {
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }
}

// MARK: - Event

//: extension TalkingChatListViewController {
extension PopViewDelegate {
    /// 返回上级页面手势事件
    //: @objc private func removeCurrentViewButtonClick() {
    @objc private func doingTo() {
        //: half_dismissViewAnimation()
        pounder()
    }

    // 删除会话cell
    //: func deleteChatListCell(indexPath: IndexPath, conversationModel: TalkingConversationModel) {
    func onlineModel(indexPath _: IndexPath, conversationModel: LengthReactiveCompatible) {
        //: if !TalkingConversationListener.shared.func__checkCanOperateList() { return }
        if !TalkingConversationListener.shared.dataImage() { return }

        //: AbTalkingPrivateChatAnimatTool.shared.removeConversionAnimat(targetID: conversationModel.targetId)
        SendAnimatTool.shared.scaleOfMeasurement(targetID: conversationModel.targetId)
        //: var type: ChatListDataType = .normalList
        var type: WithDataType = .normalList
        //: if conversationModel.isPinned { type = .topList }
        if conversationModel.isPinned { type = .topList }
        //: TalkingConversationListener.shared.func__removeConversation(targetId: conversationModel.targetId, dataType: type)
        TalkingConversationListener.shared.breedType(targetId: conversationModel.targetId, dataType: type)
        //: self.manager.req_removeConversationModel(conversationModel: conversationModel)
        self.manager.styleContent(conversationModel: conversationModel)
        //: self.tableView.reloadData()
        self.tableView.reloadData()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
            //: if self.canLoadMore &&
            if self.canLoadMore,
               //: self.manager.topArr.count == 0 &&
               self.manager.topArr.count == 0,
               //: self.manager.normalArr.count == 0 {
               self.manager.normalArr.count == 0
            {
                //: self.getConversationList()
                self.needList()
            }
        }
    }

    // 置顶会话
    //: func setTopChatListCell(conversationModel: TalkingConversationModel) {
    func aircraftModel(conversationModel: LengthReactiveCompatible) {
        //: if !TalkingConversationListener.shared.func__checkCanOperateList() { return }
        if !TalkingConversationListener.shared.dataImage() { return }
        //: let isTop = !conversationModel.isPinned
        let isTop = !conversationModel.isPinned
        //: TalkingConversationListener.shared.func__setConversationTop(convModel: conversationModel, isTop: isTop)
        TalkingConversationListener.shared.colorMake(convModel: conversationModel, isTop: isTop)

        //: if curType == .intimate {
        if curType == .intimate {
            //: self.manager.top_intimateData(convModel: conversationModel, isTop: isTop)
            self.manager.addLike(convModel: conversationModel, isTop: isTop)
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    // 拉黑会话
    //: func blockChatListCell(indexPath: IndexPath, conversationModel: TalkingConversationModel) {
    func progress(indexPath: IndexPath, conversationModel: LengthReactiveCompatible) {
        // 拉黑/解除拉黑
        //: TalkingAlertShow.alert(title: nil,
        MotilityThen.viewConfig(title: nil,
                                    //: message: kMessage_blocking,
                                    message: kLet_viewNetValue,
                                    //: leftBtnTitle: "Cancel".localized,
                                    leftBtnTitle: (str_colorTitle.replacingOccurrences(of: "gift", with: "C") + str_bottomValue.replacingOccurrences(of: "model", with: "l")).localized,
                                    //: rightBtnTitle: "OK".localized) {
                                    rightBtnTitle: "OK".localized)
        {
            //: TalkingAlertShow.hideAlert()
            MotilityThen.afterward()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            MotilityThen.afterward()

            //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: conversationModel.userID, isBlack: true) { succeed, result, errorModel in
            TitleEqualRequestManager.betweenValue(uid: conversationModel.userID, isBlack: true) { succeed, _, _ in
                //: guard succeed == true else {
                guard succeed == true else {
                    //: return
                    return
                }
                // 拉黑成功，从列表中移除
                //: self.deleteChatListCell(indexPath: indexPath, conversationModel: conversationModel)
                self.onlineModel(indexPath: indexPath, conversationModel: conversationModel)
                //: NotificationCenter.default.post(name: LIVE_BLOCK_USER_NOTIFICATION,
                NotificationCenter.default.post(name: kLet_giftRecordText,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: ["uid": conversationModel.userID])
                                                userInfo: [String(bytes: str_dismissValue.map{sleepingAccommodation(time: $0)}, encoding: .utf8)!: conversationModel.userID])
            }
        }
    }

    // 举报会话
    //: func reportChatListCell(conversationModel: TalkingConversationModel) {
    func everyMake(conversationModel: LengthReactiveCompatible) {
        //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        let reportView = WithSkinViewDelegate(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        //: reportView.showReportViewIn(view: nil)
        reportView.withPair(view: nil)
    }
}

// MARK: - 通知

//: extension TalkingChatListViewController {
extension PopViewDelegate {
    //: func func__installNotificationObservers() {
    func popFor() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getUserInfoDataFinish(notification:)),
                                               selector: #selector(funcUponModel(notification:)),
                                               //: name: USER_INFO_MSG_LIST_NOTIFICATION,
                                               name: kLet_barTitle,
                                               //: object: nil)
                                               object: nil)
        // 更新消息列表用户在线状态
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__updateUserOnlineStatus(notif:)),
                                               selector: #selector(equation(notif:)),
                                               //: name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                                               name: kLet_viewName,
                                               //: object: nil)
                                               object: nil)

        // 更新消息列表用户亲密度
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__updateUserIntimate(notif:)),
                                               selector: #selector(viewNotif(notif:)),
                                               //: name: MSGLIST_UPDATE_INTIMATE_NOTIFICATION,
                                               name: kLet_minText,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func func__getUserInfoDataFinish(notification: NSNotification) {
    @objc func funcUponModel(notification: NSNotification) {
        //: let dic = notification.object as? Dictionary<String, Any>
        let dic = notification.object as? [String: Any]
        //: for userID in dic!.keys {
        for userID in dic!.keys {
            //: let aInfoWrap: SoulCacheModel = dic![userID] as! SoulCacheModel
            let aInfoWrap: SoulCacheModel = dic![userID] as! SoulCacheModel
            //: let aModel: TalkingConversationModel? = TalkingConversationListener.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: LengthReactiveCompatible? = TalkingConversationListener.shared.third(targetId: userID)
            //: if aModel != nil && aModel!.gj_userInfo != aInfoWrap {
            if aModel != nil, aModel!.gj_userInfo != aInfoWrap {
                //: aModel!.gj_userInfo = aInfoWrap
                aModel!.gj_userInfo = aInfoWrap
            }
        }
        //: setHaveLocalInmate()
        gallery()

        //: self.reloadData()
        self.connection()
    }

    /// 音视频新通话新建立的会话，本地缓存有时，更新会话标识
    //: func setHaveLocalInmate() {
    func gallery() {
        //: let intimate: Dictionary<String, Any> = UserDefaults.standard.object(forKey: isConversationIntimateCacheKey) as? Dictionary<String, Any> ?? Dictionary.init()
        let intimate: [String: Any] = UserDefaults.standard.object(forKey: kLet_timeBarName) as? [String: Any] ?? Dictionary()
        //: for userID in intimate.keys {
        for userID in intimate.keys {
            //: let aModel: TalkingConversationModel? = TalkingConversationListener.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: LengthReactiveCompatible? = TalkingConversationListener.shared.third(targetId: userID)
            //: if aModel != nil {
            if aModel != nil {
                //: aModel!.gj_userInfo?.isHaveSession = true
                aModel!.gj_userInfo?.isHaveSession = true
            }
        }
        //: UserDefaults.standard.set(Dictionary<String, Any>.init(), forKey: isConversationIntimateCacheKey)
        UserDefaults.standard.set([String: Any](), forKey: kLet_timeBarName)
    }

    /// 更新消息列表用户在线状态
    //: @objc private func func__updateUserOnlineStatus(notif: Notification) {
    @objc private func equation(notif: Notification) {
        //: guard let userInfo = notif.userInfo else { return }
        guard let userInfo = notif.userInfo else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if self.manager.update_userOnlineStatus(userInfo: userInfo as! [String: Any]) == true {
            if self.manager.consort(userInfo: userInfo as! [String: Any]) == true {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }

    /// 更新消息列表用户亲密度
    //: @objc private func func__updateUserIntimate(notif: Notification) {
    @objc private func viewNotif(notif: Notification) {
        //: guard let userInfo = notif.userInfo else { return }
        guard let userInfo = notif.userInfo else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if self.manager.update_userIntimate(userInfo: userInfo as! [String: Any]) == true {
            if self.manager.toolTime(userInfo: userInfo as! [String: Any]) == true {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }
}

// MARK: - DeepObjectProtocol

//: extension TalkingChatListViewController: TalkingChatListTopItemViewDelegate {
extension PopViewDelegate: DeepObjectProtocol {
    //: func resetToTopItemView() {
    func actionCap() {
//        if self.curType == .intimate {
//            topItemView.resetToSeleteAll()
//        }
    }

    //: func changeTopItem(type: ChatListTopItemType) {
    func acceleration(type _: PositionViewTopTypeListDefaultsSerializable) {
//        self.curType = type
//        if self.curType == .All {
//            tableView.mj_header?.isHidden = false
//            tableView.mj_footer?.isHidden = false
//            refreshTableView()
//        } else {
//            self.manager.req_intimateData()
//            tableView.mj_header?.isHidden = true
//            tableView.mj_footer?.isHidden = true
//
//           if self.manager.intimateTopArr.count == 0 && self.manager.intimateNorArr.count == 0 {
//                self.tableView.isHidden = true
//                self.emptyView.isHidden = false
//            }
//            self.tableView.reloadData()
//            uploadRecord.uploadRecordEvent(eventID: ClickIntimateTabNoP)
//        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingChatListViewController: UITableViewDelegate, UITableViewDataSource {
extension PopViewDelegate: UITableViewDelegate, UITableViewDataSource {
    /// - UITableViewDataSource
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: if curType == .All {
        if curType == .All {
            //: return 5
            return 5
            //: } else {
        } else {
            //: return 2
            return 2
        }
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if curType == .All {
        if curType == .All {
            //: switch section {
            switch section {
            //: case ChatListSectionTyep.offical.rawValue:
            case MakeInsetTarget.offical.rawValue:
                //: if self.manager.isHalf == true { return 0 }
                if self.manager.isHalf == true { return 0 }
                //: return self.manager.officialArr.count
                return self.manager.officialArr.count

            //: case ChatListSectionTyep.chatRoom.rawValue:
            case MakeInsetTarget.chatRoom.rawValue:
                //: if self.manager.isHalf == true { return 0 }
                if self.manager.isHalf == true { return 0 }
                //: return self.manager.chatRoomArr.count
                return self.manager.chatRoomArr.count

            //: case ChatListSectionTyep.moreMsg.rawValue:
            case MakeInsetTarget.moreMsg.rawValue:
                //: if self.manager.isHalf == true { return 0 }
                if self.manager.isHalf == true { return 0 }
                // 首次加载完数据再展示，防止提前进入无数据
                //: if self.manager.loadedOnlineStatus == false { return 0 }
                if self.manager.loadedOnlineStatus == false { return 0 }
                //: return 1
                return 1

            //: case ChatListSectionTyep.top.rawValue:
            case MakeInsetTarget.top.rawValue:
                //: return self.manager.topArr.count
                return self.manager.topArr.count

            //: case ChatListSectionTyep.normal.rawValue:
            case MakeInsetTarget.normal.rawValue:
                //: return self.manager.normalArr.count
                return self.manager.normalArr.count

            //: default:
            default:
                //: return 0
                return 0
            }
            //: } else {
        } else {
            //: switch section {
            switch section {
            //: case ChatListSectionIntimateTyep.top.rawValue:
            case ModelModeQuickLookable.top.rawValue:
                //: return self.manager.intimateTopArr.count
                return self.manager.intimateTopArr.count
            //: case ChatListSectionIntimateTyep.normal.rawValue:
            case ModelModeQuickLookable.normal.rawValue:
                //: return self.manager.intimateNorArr.count
                return self.manager.intimateNorArr.count
            //: default:
            default:
                //: return 0
                return 0
            }
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingChatListTableCell.className(), for: indexPath) as! TalkingChatListTableCell
        let cell = tableView.dequeueReusableCell(withIdentifier: NameFreeReactiveCompatible.className(), for: indexPath) as! NameFreeReactiveCompatible
        //: var model: TalkingConversationModel?
        var model: LengthReactiveCompatible?
        //: if curType == .All {
        if curType == .All {
            //: if indexPath.section == ChatListSectionTyep.moreMsg.rawValue {
            if indexPath.section == MakeInsetTarget.moreMsg.rawValue {
                //: model = self.manager.req_moreMsgGetPlaceholderModel()
                model = self.manager.sinceGet()
                //: } else {
            } else {
                //: model = self.manager.req_conversationModel(indexPath: indexPath)
                model = self.manager.releasePath(indexPath: indexPath)
            }
            //: } else {
        } else {
            //: model = self.manager.req_IntimateConversationModel(indexPath: indexPath)
            model = self.manager.localResign(indexPath: indexPath)
        }
        //: model = self.manager.getUserInfoFromCache(model: model)
        model = self.manager.blockModel(model: model)
        //: if !(model?.gj_userInfo?.tpAuth ?? false) {
        if !(model?.gj_userInfo?.tpAuth ?? false) {
            //: model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
            model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
        }
        //: cell.refreshCell(model: model)
        cell.equalLoad(model: model)

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    func tableView(_: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        //: if curType == .All {
        if curType == .All {
            //: guard let model = self.manager.req_conversationModel(indexPath: indexPath) else {
            guard let model = self.manager.releasePath(indexPath: indexPath) else {
                //: return false
                return false
            }
            //: guard model.chatType == .private else { return false }
            guard model.chatType == .private else { return false }
            //: } else {
        } else {
            //: guard let model = self.manager.req_IntimateConversationModel(indexPath: indexPath) else {
            guard let model = self.manager.localResign(indexPath: indexPath) else {
                //: return false
                return false
            }
            //: guard model.chatType == .private else { return false }
            guard model.chatType == .private else { return false }
        }

        //: return true
        return true
    }

    //: @available(iOS 11.0, *)
    @available(iOS 11.0, *)
    //: func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    func tableView(_: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //: let model: TalkingConversationModel?
        let model: LengthReactiveCompatible?
        //: if curType == .All {
        if curType == .All {
            //: model = self.manager.req_conversationModel(indexPath: indexPath)
            model = self.manager.releasePath(indexPath: indexPath)
            //: } else {
        } else {
            //: model = self.manager.req_IntimateConversationModel(indexPath: indexPath)
            model = self.manager.localResign(indexPath: indexPath)
        }
        //: if model == nil {
        if model == nil {
            //: return nil
            return nil
        }

        // 举报
        //: let reportBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let reportBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.reportChatListCell(conversationModel: model!)
            self.everyMake(conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let reportBtnTrashcan = UIImage.eponymUp(name: "btn_message_report_nor").cgImage {
        if let reportBtnTrashcan = UIImage.eponymUp(name: (str_voiceLayerData.lowercased() + String(str_maleToolData))).cgImage {
            //: reportBtn.image = ImageWithoutRender(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            reportBtn.image = ImageReactiveCompatible(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: reportBtn.backgroundColor = UIColor(hex: "#FF935D")
        reportBtn.backgroundColor = UIColor(hex: (String(str_viewValue) + str_blackName.uppercased()))

        // 拉黑
        //: let blockBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let blockBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.blockChatListCell(indexPath: indexPath, conversationModel: model!)
            self.progress(indexPath: indexPath, conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let blockBtnTrashcan = UIImage.eponymUp(name: "btn_message_block_nor").cgImage {
        if let blockBtnTrashcan = UIImage.eponymUp(name: (String(str_toLineValue.prefix(5)) + "essage_b" + String(str_removeHiddenName.suffix(8)))).cgImage {
            //: blockBtn.image = ImageWithoutRender(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            blockBtn.image = ImageReactiveCompatible(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: blockBtn.backgroundColor = UIColor(hex: "#C179F9")
        blockBtn.backgroundColor = UIColor(hex: (String(str_collectionName) + str_makeText.replacingOccurrences(of: "log", with: "9")))

        // 置顶
        //: let topBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let topBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.setTopChatListCell(conversationModel: model!)
            self.aircraftModel(conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: let image = model!.isPinned ? "btn_message_untop_nor":"btn_message_top_nor"
        let image = model!.isPinned ? String(bytes: str_fromText.map{$0^227}, encoding: .utf8)! : (String(str_sharedCornerValue.prefix(4)) + "message_t" + String(str_videoData) + String(str_makeContentValue.prefix(5)))
        //: if let topBtnTrashcan = UIImage.eponymUp(name: image).cgImage {
        if let topBtnTrashcan = UIImage.eponymUp(name: image).cgImage {
            //: topBtn.image = ImageWithoutRender(cgImage: topBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            topBtn.image = ImageReactiveCompatible(cgImage: topBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: topBtn.backgroundColor = UIColor(hex: "#8A79F9")
        topBtn.backgroundColor = UIColor(hex: (String(str_succeedValue.suffix(7))))

        // 删除
        //: let deleteBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let deleteBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.deleteChatListCell(indexPath: indexPath, conversationModel: model!)
            self.onlineModel(indexPath: indexPath, conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let deleteBtnTrashcan = UIImage.eponymUp(name: "btn_message_delete_nor").cgImage {
        if let deleteBtnTrashcan = UIImage.eponymUp(name: (String(str_imageValue.suffix(6)) + "ssag" + String(str_minData.suffix(4)) + String(str_dataDeviceValue) + String(str_meText))).cgImage {
            //: deleteBtn.image = ImageWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            deleteBtn.image = ImageReactiveCompatible(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: deleteBtn.backgroundColor = UIColor(hex: "#FF506D")
        deleteBtn.backgroundColor = UIColor(hex: (String(str_sendViewColorValue.suffix(7))))

        //: let actions = [deleteBtn, topBtn, blockBtn, reportBtn]
        let actions = [deleteBtn, topBtn, blockBtn, reportBtn]
        //: let config = UISwipeActionsConfiguration(actions: actions)
        let config = UISwipeActionsConfiguration(actions: actions)
        //: config.performsFirstActionWithFullSwipe = false
        config.performsFirstActionWithFullSwipe = false
        //: return config
        return config
    }

    /// - UITableViewDelegate
    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76.0
        return 76.0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        //: if self.manager.isHalf == false &&
        if self.manager.isHalf == false &&
            //: self.curType == .All &&
            self.curType == .All &&
            //: section == ChatListSectionTyep.offical.rawValue &&
            section == MakeInsetTarget.offical.rawValue &&
            //: self.manager.officialArr.count > 0 &&
            self.manager.officialArr.count > 0 &&
            //: EqualThen.share.appStatus != AppSkinStatus.special.rawValue {
            EqualThen.share.appStatus != PhaseOfTheMoonPropertyProtocol.special.rawValue
        {
            //: return 15.0
            return 15.0
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        //: if self.curType == .All && section == ChatListSectionTyep.offical.rawValue && self.manager.officialArr.count > 0 {
        if self.curType == .All && section == MakeInsetTarget.offical.rawValue && self.manager.officialArr.count > 0 {
            //: let v = UIView()
            let v = UIView()
            //: v.backgroundColor = tableView.backgroundColor
            v.backgroundColor = tableView.backgroundColor
            //: return v
            return v
        }
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: if curType == .All {
        if curType == .All {
            //: if indexPath.section == ChatListSectionTyep.moreMsg.rawValue {
            if indexPath.section == MakeInsetTarget.moreMsg.rawValue { // 更多消息
                //: let vc = TalkingMoreMessagesListViewController()
                let vc = RadiusObjectProtocol()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: return
                return
            }

            //: guard let model = self.manager.req_conversationModel(indexPath: indexPath) else {
            guard let model = self.manager.releasePath(indexPath: indexPath) else {
                //: return
                return
            }
            //: if model.chatType == .group {
            if model.chatType == .group { // 群聊
                //: pushChatRoomList(model: model)
                giftArea(model: model)

                //: } else if model.chatType == .service {
            } else if model.chatType == .service { // 官方客服
                //: EditTextThen.share.func__pushToWebVC(webViewType: .FAQ)
                EditTextThen.share.hailType(webViewType: .FAQ)
                //: uploadRecord.uploadRecordEvent(eventID: ClickCSCNoP, toUid: model.targetId)
                kLet_textData.historicalPaper(eventID: kLet_barName, toUid: model.targetId)

                //: } else {
            } else {
                //: if model.targetId == MacroDefine.getXiaoMiID() {
                if model.targetId == UserMacroDefine.underGet() { // 系统消息
                    //: uploadRecord.uploadRecordEvent(eventID: ClickSystemNotificationNoP, toUid: model.targetId)
                    kLet_textData.historicalPaper(eventID: kLet_statusTitle, toUid: model.targetId)
                    //: } else {
                } else {
                    //: uploadRecord.uploadRecordEvent(eventID: ClickUserChatNoP, toUid: model.targetId)
                    kLet_textData.historicalPaper(eventID: kLet_topData, toUid: model.targetId)
                }

                //: let isFrom = self.manager.isHalf ? PrivateChatIsFromEnum.LiveRoom:PrivateChatIsFromEnum.Normal
                let isFrom = self.manager.isHalf ? ToFromEnum.LiveRoom : ToFromEnum.Normal
                //: EditTextThen.share.func__pushToPriveteChatVC(chatID: model.targetId, isFrom: isFrom) { vc in
                EditTextThen.share.fullMoon(chatID: model.targetId, isFrom: isFrom) { vc in
                    //: if model.gj_userInfo != nil {
                    if model.gj_userInfo != nil {
                        //: vc.isHaveSession = model.gj_userInfo!.isHaveSession
                        vc.isHaveSession = model.gj_userInfo!.isHaveSession
                    }
                }
            }
            //: } else {
        } else {
            //: guard let model = self.manager.req_IntimateConversationModel(indexPath: indexPath) else {
            guard let model = self.manager.localResign(indexPath: indexPath) else {
                //: return
                return
            }
            //: let isFrom = self.manager.isHalf ? PrivateChatIsFromEnum.LiveRoom:PrivateChatIsFromEnum.Normal
            let isFrom = self.manager.isHalf ? ToFromEnum.LiveRoom : ToFromEnum.Normal
            //: EditTextThen.share.func__pushToPriveteChatVC(chatID: model.targetId, isFrom: isFrom) { vc in
            EditTextThen.share.fullMoon(chatID: model.targetId, isFrom: isFrom) { vc in
                //: if model.gj_userInfo != nil {
                if model.gj_userInfo != nil {
                    //: vc.isHaveSession = model.gj_userInfo!.isHaveSession
                    vc.isHaveSession = model.gj_userInfo!.isHaveSession
                }
            }
        }
    }
}

// MARK: - 跳转公共聊天室

//: extension TalkingChatListViewController {
extension PopViewDelegate {
    //: func pushChatRoomList(model: TalkingConversationModel) {
    func giftArea(model: LengthReactiveCompatible) {
        //: uploadRecord.uploadRecordEvent(eventID: ClickChatRoomNoP, toUid: model.targetId)
        kLet_textData.historicalPaper(eventID: kLet_keyScreenName, toUid: model.targetId)
        //: guard model.onlyOneRoomId.isEmptyString else {
        guard model.onlyOneRoomId.isEmptyString else {
            //: EditTextThen.share.func__pushToGroupChat(groupId: model.onlyOneRoomId)
            EditTextThen.share.turn(groupId: model.onlyOneRoomId)
            //: return
            return
        }
        //: let vc = TalkingChatRoomListVC.init()
        let vc = ToListVc()
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - TalkingTXIMDelegate

//: extension TalkingChatListViewController: IMManagerDelegate {
extension PopViewDelegate: ManagerDelegate {
    //: func onRefreshConversationList(data: [TalkingConversationModel]) {
    func requestData(data: [LengthReactiveCompatible]) {
        //: self.manager.req_initData()
        self.manager.labShow()
        //: if self.curType == .intimate {
        if self.curType == .intimate {
            //: self.manager.req_intimateData()
            self.manager.rawDataTotalimate()
        }
        //: cconfigData(listData: data)
        titleStart(listData: data)
    }
}

// MARK: - 半屏页面展示/隐藏动画

//: extension TalkingChatListViewController {
extension PopViewDelegate {
    /// 半屏展示动画
    //: private func half_showViewAnimation() {
    private func toAnimation() {
        //: guard self.manager.isHalf else { return }
        guard self.manager.isHalf else { return }
        //: NotificationCenter.default.post(name: LIVE_HALF_VIEW_SHOW, object: nil, userInfo: nil)
        NotificationCenter.default.post(name: kLet_requestValue, object: nil, userInfo: nil)
        //: self.view.frame = CGRect(x: 0, y: ScreenHeight-HalfViewTopMargin, width: ScreenWidth, height: ScreenHeight)
        self.view.frame = CGRect(x: 0, y: kLet_clickData - kLet_profileTitle, width: kLet_cameraValue, height: kLet_clickData)
        //: UIView.animate(withDuration: 0.25) {
        UIView.animate(withDuration: 0.25) {
            //: self.view.frame = CGRect(x: 0,
            self.view.frame = CGRect(x: 0,
                                     //: y: 0,
                                     y: 0,
                                     //: width: ScreenWidth,
                                     width: kLet_cameraValue,
                                     //: height: ScreenHeight)
                                     height: kLet_clickData)
        }
    }

    /// 半屏页消失动画
    //: private func half_dismissViewAnimation() {
    private func pounder() {
        //: guard self.manager.isHalf else { return }
        guard self.manager.isHalf else { return }
        // 语聊房要提前发通知，动画效果更流畅
        //: if TalkingVoiceRoomManager.shared().isParty == true {
        if ViewRoomManager.astatine().isParty == true {
            //: NotificationCenter.default.post(name: LIVE_HALF_VIEW_DISMISS, object: nil, userInfo: nil)
            NotificationCenter.default.post(name: kLet_contentData, object: nil, userInfo: nil)
        }
        //: UIView.animate(withDuration: 0.25) {
        UIView.animate(withDuration: 0.25) {
            //: self.view.frame = CGRect(x: 0,
            self.view.frame = CGRect(x: 0,
                                     //: y: ScreenHeight-HalfViewTopMargin,
                                     y: kLet_clickData - kLet_profileTitle,
                                     //: width: ScreenWidth,
                                     width: kLet_cameraValue,
                                     //: height: ScreenHeight)
                                     height: kLet_clickData)
            //: } completion: { finish in
        } completion: { _ in
            //: self.removeFromParent()
            self.removeFromParent()
            //: self.view.removeFromSuperview()
            self.view.removeFromSuperview()
            //: if TalkingVoiceRoomManager.shared().isParty == false {
            if ViewRoomManager.astatine().isParty == false {
                //: NotificationCenter.default.post(name: LIVE_HALF_VIEW_DISMISS, object: nil, userInfo: nil)
                NotificationCenter.default.post(name: kLet_contentData, object: nil, userInfo: nil)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingChatListViewController {
extension PopViewDelegate {
    // MARK: - UI

    //: private func createUI() {
    private func viewUi() {
        //: if self.manager.isHalf == false {
        if self.manager.isHalf == false { // 全屏
            //: if EqualThen.share.appStatus == AppSkinStatus.special.rawValue {
            if EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.special.rawValue { // 审核模式
                //: view.backgroundColor = .clear
                view.backgroundColor = .clear
                //: view.addSubview(tableView)
                view.addSubview(tableView)
                //: tableView.snp.makeConstraints { make in
                tableView.snp.makeConstraints { make in
                    //: make.edges.equalToSuperview()
                    make.edges.equalToSuperview()
                }

                //: } else {
            } else {
                //: view.backgroundColor = .appBgColor()
                view.backgroundColor = .imageColor()
//                view.addSubview(topItemView)
//                topItemView.snp.makeConstraints { make in
//                    make.leading.trailing.top.equalToSuperview()
//                    make.height.equalTo(50)
//                }
                //: view.addSubview(likeListView)
                view.addSubview(likeListView)
                //: likeListView.snp.makeConstraints { make in
                likeListView.snp.makeConstraints { make in
                    //: make.leading.trailing.top.equalToSuperview()
                    make.leading.trailing.top.equalToSuperview()
                    //: make.height.equalTo(0)
                    make.height.equalTo(0)
                }
                //: view.addSubview(tableView)
                view.addSubview(tableView)
                //: tableView.snp.makeConstraints { make in
                tableView.snp.makeConstraints { make in
//                    make.top.equalTo(topItemView.snp.bottom)
                    //: make.top.equalTo(likeListView.snp.bottom)
                    make.top.equalTo(likeListView.snp.bottom)
                    //: make.leading.trailing.bottom.equalToSuperview()
                    make.leading.trailing.bottom.equalToSuperview()
                }
            }

            //: } else {
        } else { // 半屏
            //: self.view.backgroundColor = .clear
            self.view.backgroundColor = .clear

            //: view.addSubview(removeCurrVBtn)
            view.addSubview(removeCurrVBtn)
            //: removeCurrVBtn.snp.makeConstraints { make in
            removeCurrVBtn.snp.makeConstraints { make in
                //: make.top.leading.trailing.equalToSuperview()
                make.top.leading.trailing.equalToSuperview()
                //: make.height.equalTo(HalfViewTopMargin)
                make.height.equalTo(kLet_profileTitle)
            }

            //: view.addSubview(contentView)
            view.addSubview(contentView)
            //: contentView.snp.makeConstraints { make in
            contentView.snp.makeConstraints { make in
                //: make.top.equalTo(removeCurrVBtn.snp.bottom)
                make.top.equalTo(removeCurrVBtn.snp.bottom)
                //: make.leading.trailing.bottom.equalToSuperview()
                make.leading.trailing.bottom.equalToSuperview()
            }
            //: contentView.layoutIfNeeded()
            contentView.layoutIfNeeded()
            //: contentView.Corner(width: contentView.width,
            contentView.showEqual(width: contentView.width,
                                  //: height: contentView.height,
                                  height: contentView.height,
                                  //: corners: [.topLeft, .topRight],
                                  corners: [.topLeft, .topRight],
                                  //: cornerRadii: .init(width: 8, height: 8))
                                  cornerRadii: .init(width: 8, height: 8))

            //: contentView.addSubview(tableView)
            contentView.addSubview(tableView)
            //: tableView.snp.makeConstraints { make in
            tableView.snp.makeConstraints { make in
                //: make.top.leading.trailing.equalToSuperview()
                make.top.leading.trailing.equalToSuperview()
                //: make.bottom.equalTo(-kDeviceSafeBottomHeight)
                make.bottom.equalTo(-kLet_nextData)
            }
        }

        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalTo(tableView)
            make.edges.equalTo(tableView)
        }
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: self?.reloadData()
            self?.connection()
        }
    }
}
