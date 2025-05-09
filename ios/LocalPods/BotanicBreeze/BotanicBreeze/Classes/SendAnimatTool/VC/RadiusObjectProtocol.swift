
//: Declare String Begin

/*: "New friends" :*/
fileprivate let str_sourceTitle:String = "New frievent view room"
fileprivate let str_topName:String = "endactual"

/*: "icon_yidu_pre" :*/
fileprivate let str_upName:[Character] = ["i","c","o","n","_","y","i"]
fileprivate let str_indexValue:[Character] = ["d"]
fileprivate let str_pathName:String = "u_premode date"

/*: "You've got no message yet." :*/
fileprivate let str_succeedText:[Character] = ["Y","o","u","\'","v","e"," ","g","o","t"]
fileprivate let str_shareData:[Character] = [" ","n","o"," ","m","e","s","s"]
fileprivate let str_makeValue:String = "count equal center field countage yet."

/*: "icon_kong_kong_default" :*/
fileprivate let str_tableHiddenData:[Character] = ["i","c","o","n","_","k","o","n","g","_","k","o","n"]
fileprivate let str_viewName:[Character] = ["g","_","d","e","f","a","u","l","t"]

/*: "Cancel" :*/
fileprivate let str_equalText:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let str_makeData:[Character] = ["O","K"]

/*: "uid" :*/
fileprivate let str_signName:[UInt8] = [0xa,0x16,0x1b]

/*: "Do you want to mark all messages as read?" :*/
fileprivate let str_sizeTwoValue:[UInt8] = [0xae,0x85,0xca,0x93,0x85,0x9f,0xca,0x9d,0x8b,0x84,0x9e,0xca,0x9e,0x85,0xca,0x87,0x8b,0x98,0x81,0xca,0x8b,0x86,0x86,0xca,0x87,0x8f,0x99,0x99,0x8b,0x8d,0x8f,0x99,0xca,0x8b,0x99,0xca,0x98,0x8f,0x8b,0x8e,0xd5]

/*: "MoreMessages一键已读失败：code: :*/
fileprivate let str_normalName:String = "MoreMbackground to attach"
fileprivate let str_tabTitle:String = "ges一info count"
fileprivate let str_valueDeviceTitle:String = "键已\u{8bfb}\u{5931}败："

/*: , desc: :*/
fileprivate let str_userName:[Character] = [","," ","d","e","s","c",":"]

/*: "btn_message_report_nor" :*/
fileprivate let str_withModeData:String = "true asbtn_"
fileprivate let str_contactColorData:String = "target tablege_repor"
fileprivate let str_tableData:String = "height view equalt_nor"

/*: "#FF935D" :*/
fileprivate let str_viewText:String = "interval equal#FF935D"

/*: "btn_message_block_nor" :*/
fileprivate let str_blockAllValue:String = "size makebtn_"
fileprivate let str_colorName:String = "var model model viewage_"

/*: "#C179F9" :*/
fileprivate let str_imageText:String = "string view to in manager#C179F9"

/*: "btn_message_delete_nor" :*/
fileprivate let str_contentIconTitle:[Character] = ["b","t","n","_","m","e","s","s","a","g","e","_","d","e","l","e","t","e","_","n","o","r"]

/*: "#FF506D" :*/
fileprivate let str_bottomModeName:[Character] = ["#","F","F","5","0"]
fileprivate let str_modelText:String = "name to hidden equal6D"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RadiusObjectProtocol.swift
//  AbroadTalking
//
//  Created by young on 2023/9/27.
//

//: import UIKit
import UIKit

//: class TalkingMoreMessagesListViewController: TalkingBaseViewController {
class RadiusObjectProtocol: SeamViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "New friends".localized
        self.title = (String(str_sourceTitle.prefix(7)) + str_topName.replacingOccurrences(of: "actual", with: "s")).localized
        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        //: btn.setImage(UIImage.eponymUp(name: "icon_yidu_pre"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_upName) + String(str_indexValue) + String(str_pathName.prefix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(clearBadgeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(belowButton), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem = item
        self.navigationItem.rightBarButtonItem = item

        //: TalkingConversationListener.shared.func__addDelegate(self)
        TalkingConversationListener.shared.handle(self)
        //: func__installNotificationObservers()
        distanceObservers()
        //: createUI()
        comparable()
        //: self.manager.req_moreMsgInitData()
        self.manager.moreData()
        //: refreshTableView()
        picturesqueness()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

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
        //: return tableView
        return tableView
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = ShadowViewEmptyStyle()
        //: style.TipsTitle = "You've got no message yet.".localized
        style.TipsTitle = (String(str_succeedText) + String(str_shareData) + String(str_makeValue.suffix(8))).localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (String(str_tableHiddenData) + String(str_viewName))
        //: let emptyView = EmptyView.init(frame: .zero, style: style)
        let emptyView = EmptyView(frame: .zero, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()

    //: private lazy var manager: TalkingChatListManager = {
    private lazy var manager: GrantCustomListManager = //: return GrantCustomListManager()
        .init()
    //: }()
}

// MARK: - 刷新

//: extension TalkingMoreMessagesListViewController {
extension RadiusObjectProtocol {
    /// 刷新表格
    //: func refreshTableView() {
    func picturesqueness() {
        //: guard self.manager.moreMsgArr.count != 0 else {
        guard self.manager.moreMsgArr.count != 0 else {
            //: self.tableView.isHidden = true
            self.tableView.isHidden = true
            //: self.emptyView.isHidden = false
            self.emptyView.isHidden = false
            //: self.reloadData()
            self.flush()
            //: return
            return
        }

        //: self.tableView.isHidden = false
        self.tableView.isHidden = false
        //: self.emptyView.isHidden = true
        self.emptyView.isHidden = true
        //: self.reloadData()
        self.flush()
    }

    /// 刷新
    //: func reloadData() {
    func flush() {
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }
}

// MARK: - Event

//: extension TalkingMoreMessagesListViewController {
extension RadiusObjectProtocol {
    // 删除会话cell
    //: func deleteChatListCell(conversationModel: TalkingConversationModel) {
    func toEachEnablee(conversationModel: LengthReactiveCompatible) {
        //: if !TalkingConversationListener.shared.func__checkCanOperateList() { return }
        if !TalkingConversationListener.shared.dataImage() { return }

        //: AbTalkingPrivateChatAnimatTool.shared.removeConversionAnimat(targetID: conversationModel.targetId)
        SendAnimatTool.shared.scaleOfMeasurement(targetID: conversationModel.targetId)
        //: TalkingConversationListener.shared.func__removeConversation(targetId: conversationModel.targetId, dataType: .moreList)
        TalkingConversationListener.shared.breedType(targetId: conversationModel.targetId, dataType: .moreList)
        //: self.manager.req_removeConversationModel(conversationModel: conversationModel)
        self.manager.styleContent(conversationModel: conversationModel)
        //: self.tableView.reloadData()
        self.tableView.reloadData()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
            // 刷新表格，更新红点
            //: self.refreshTableView()
            self.picturesqueness()
        }
    }

    // 拉黑会话
    //: func blockChatListCell(conversationModel: TalkingConversationModel) {
    func lessNext(conversationModel: LengthReactiveCompatible) {
        // 拉黑/解除拉黑
        //: TalkingAlertShow.alert(title: nil,
        MotilityThen.viewConfig(title: nil,
                                    //: message: kMessage_blocking,
                                    message: kLet_viewNetValue,
                                    //: leftBtnTitle: "Cancel".localized,
                                    leftBtnTitle: (String(str_equalText)).localized,
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
                //: self.deleteChatListCell(conversationModel: conversationModel)
                self.toEachEnablee(conversationModel: conversationModel)
                //: NotificationCenter.default.post(name: LIVE_BLOCK_USER_NOTIFICATION,
                NotificationCenter.default.post(name: kLet_giftRecordText,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: ["uid": conversationModel.userID])
                                                userInfo: [String(bytes: str_signName.map{$0^127}, encoding: .utf8)!: conversationModel.userID])
            }
        }
    }

    // 举报会话
    //: func reportChatListCell(conversationModel: TalkingConversationModel) {
    func counterplay(conversationModel: LengthReactiveCompatible) {
        //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        let reportView = WithSkinViewDelegate(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        //: reportView.showReportViewIn(view: nil)
        reportView.withPair(view: nil)
    }

    /// 清除红点角标
    //: @objc private func clearBadgeButtonClick() {
    @objc private func belowButton() {
        //: let config = ShowAlertConfig()
        let config = AtAlertConfig()
        //: config.alignment = .center
        config.alignment = .center

        //: TalkingAlertShow.customAlert(message: "Do you want to mark all messages as read?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        MotilityThen.customLabel(message: String(bytes: str_sizeTwoValue.map{$0^234}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_equalText)).localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            MotilityThen.afterward()

            //: }, rightBlock: {
        }, rightBlock: {
            //: guard self.manager.req_moreMsgGetUnredConversationCount() > 0 else { return }
            guard self.manager.gossiping() > 0 else { return }
            //: self.manager.moreMsgArr.forEach { model in
            self.manager.moreMsgArr.forEach { model in
                //: guard model.unreadCount > 0 else { return }
                guard model.unreadCount > 0 else { return }
                //: V2TIMManager.sharedInstance().markC2CMessage(asRead: model.userID) {
                V2TIMManager.sharedInstance().markC2CMessage(asRead: model.userID) {
                    //: } fail: { code, desc in
                } fail: { code, desc in
                    //: DeepKeyTamperReactiveCompatible.indexView(msg: "MoreMessages一键已读失败：code:\(code), desc:\(String(describing: desc))")
                    DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_normalName.prefix(5)) + "essa" + String(str_tabTitle.prefix(4)) + str_valueDeviceTitle + "code:") + "\(code)" + (String(str_userName)) + "\(String(describing: desc))")
                }
            }

            //: }, config: config)
        }, config: config)
    }
}

// MARK: - 通知

//: extension TalkingMoreMessagesListViewController {
extension RadiusObjectProtocol {
    //: func func__installNotificationObservers() {
    func distanceObservers() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getUserInfoDataFinish(notification:)),
                                               selector: #selector(shift(notification:)),
                                               //: name: USER_INFO_MSG_LIST_NOTIFICATION,
                                               name: kLet_barTitle,
                                               //: object: nil)
                                               object: nil)

        // 更新消息列表用户在线状态
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__updateUserOnlineStatus(notif:)),
                                               selector: #selector(utiliser(notif:)),
                                               //: name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                                               name: kLet_viewName,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func func__getUserInfoDataFinish(notification: NSNotification) {
    @objc func shift(notification: NSNotification) {
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
        publicTransportModel()

        //: self.reloadData()
        self.flush()
    }

    /// 音视频新通话新建立的会话，本地缓存有时，更新会话标识
    //: func setHaveLocalInmate() {
    func publicTransportModel() {
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
    @objc private func utiliser(notif: Notification) {
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
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMoreMessagesListViewController: UITableViewDelegate, UITableViewDataSource {
extension RadiusObjectProtocol: UITableViewDelegate, UITableViewDataSource {
    /// - UITableViewDataSource
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.manager.moreMsgArr.count
        return self.manager.moreMsgArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingChatListTableCell.className(), for: indexPath) as! TalkingChatListTableCell
        let cell = tableView.dequeueReusableCell(withIdentifier: NameFreeReactiveCompatible.className(), for: indexPath) as! NameFreeReactiveCompatible
        //: var model = self.manager.req_moreMsgConversationModel(indexPath: indexPath)
        var model = self.manager.isData(indexPath: indexPath)
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
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else {
        guard let model = self.manager.isData(indexPath: indexPath) else {
            //: return false
            return false
        }
        //: guard model.chatType == .private else { return false }
        guard model.chatType == .private else { return false }

        //: return true
        return true
    }

    //: @available(iOS 11.0, *)
    @available(iOS 11.0, *)
    //: func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    func tableView(_: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else { return nil }
        guard let model = self.manager.isData(indexPath: indexPath) else { return nil }

        // 举报
        //: let reportBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let reportBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.reportChatListCell(conversationModel: model)
            self.counterplay(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let reportBtnTrashcan = UIImage.eponymUp(name: "btn_message_report_nor").cgImage {
        if let reportBtnTrashcan = UIImage.eponymUp(name: (String(str_withModeData.suffix(4)) + "messa" + String(str_contactColorData.suffix(8)) + String(str_tableData.suffix(5)))).cgImage {
            //: reportBtn.image = ImageWithoutRender(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            reportBtn.image = ImageReactiveCompatible(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: reportBtn.backgroundColor = UIColor(hex: "#FF935D")
        reportBtn.backgroundColor = UIColor(hex: (String(str_viewText.suffix(7))))

        // 拉黑
        //: let blockBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let blockBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.blockChatListCell(conversationModel: model)
            self.lessNext(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let blockBtnTrashcan = UIImage.eponymUp(name: "btn_message_block_nor").cgImage {
        if let blockBtnTrashcan = UIImage.eponymUp(name: (String(str_blockAllValue.suffix(4)) + "mess" + String(str_colorName.suffix(4)) + "block_nor")).cgImage {
            //: blockBtn.image = ImageWithoutRender(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            blockBtn.image = ImageReactiveCompatible(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: blockBtn.backgroundColor = UIColor(hex: "#C179F9")
        blockBtn.backgroundColor = UIColor(hex: (String(str_imageText.suffix(7))))

        // 删除
        //: let deleteBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let deleteBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.deleteChatListCell(conversationModel: model)
            self.toEachEnablee(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let deleteBtnTrashcan = UIImage.eponymUp(name: "btn_message_delete_nor").cgImage {
        if let deleteBtnTrashcan = UIImage.eponymUp(name: (String(str_contentIconTitle))).cgImage {
            //: deleteBtn.image = ImageWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            deleteBtn.image = ImageReactiveCompatible(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: deleteBtn.backgroundColor = UIColor(hex: "#FF506D")
        deleteBtn.backgroundColor = UIColor(hex: (String(str_bottomModeName) + String(str_modelText.suffix(2))))

        //: let actions = [deleteBtn, blockBtn, reportBtn]
        let actions = [deleteBtn, blockBtn, reportBtn]
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
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else {
        guard let model = self.manager.isData(indexPath: indexPath) else {
            //: return
            return
        }
        // 入口埋点
        //: uploadRecord.uploadRecordEvent(eventID: ClickUserChatNoP, toUid: model.targetId)
        kLet_textData.historicalPaper(eventID: kLet_topData, toUid: model.targetId)
        //: EditTextThen.share.func__pushToPriveteChatVC(chatID: model.targetId) { vc in
        EditTextThen.share.fullMoon(chatID: model.targetId) { vc in
            //: if model.gj_userInfo != nil {
            if model.gj_userInfo != nil {
                //: vc.isHaveSession = model.gj_userInfo!.isHaveSession
                vc.isHaveSession = model.gj_userInfo!.isHaveSession
            }
        }
    }
}

// MARK: - TalkingTXIMDelegate

//: extension TalkingMoreMessagesListViewController: IMManagerDelegate {
extension RadiusObjectProtocol: ManagerDelegate {
    //: func onRefreshConversationList(data: [TalkingConversationModel]) {
    func requestData(data _: [LengthReactiveCompatible]) {
        //: self.manager.req_moreMsgInitData()
        self.manager.moreData()
        //: refreshTableView()
        picturesqueness()
    }
}

// MARK: - Layout

//: extension TalkingMoreMessagesListViewController {
extension RadiusObjectProtocol {
    /// UI
    //: private func createUI() {
    private func comparable() {
        //: view.addSubview(tableView)
        view.addSubview(tableView)
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
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
            self?.flush()
        }
    }
}
