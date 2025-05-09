
//: Declare String Begin

/*: "Online List" :*/
fileprivate let str_dataName:String = "Onlinemonth path next push show"
fileprivate let str_topTitle:[Character] = [" ","L","i","s","t"]

/*: "Select @ Numbers" :*/
fileprivate let str_viewNameText:String = "Selectadd age info"
fileprivate let str_talkMainContent:[Character] = ["r","s"]

/*: "BottomWithListCell" :*/
fileprivate let str_targetToTitle:[Character] = ["T","a","l","k","i","n","g","C","h","a","t","R","o","o"]
fileprivate let str_contextText:String = "else white labelmOnline"
fileprivate let str_viewText:String = "model self to createListCell"

/*: "Nobody can @" :*/
fileprivate let str_resultValue:String = "Nobodcount make"

/*: "roomId" :*/
fileprivate let str_sharedRequestItemName:String = "name addroomId"

/*: "type" :*/
fileprivate let str_haveValue:String = "typcollection"

/*: "page" :*/
fileprivate let str_atValue:String = "pasigne"

/*: "uid" :*/
fileprivate let str_progressValue:[UInt8] = [0x37,0x2b,0x26]

/*: "name" :*/
fileprivate let str_sourceCenterAttributeTitle:[UInt8] = [0xd9,0xd6,0xda,0xd2]

private func showSelf(bottom num: UInt8) -> UInt8 {
    return num ^ 183
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingIndexThen.swift
//  AbroadTalking
//
//  Created by young on 2023/4/6.
//

//: import UIKit
import UIKit

//: enum TitleType: String {
enum ControlUTF8Initializable: String {
    //: case normal
    case normal // 在线列表
    //: case callNumber
    case callNumber // 群聊@
}

//: typealias OnlineSelectedBlock = (_ dict: [String: Any]) -> Void
typealias OnlineSelectedBlock = (_ dict: [String: Any]) -> Void

//: class TalkingChatRoomOnlineListController: TalkingBaseViewController {
class TalkingIndexThen: SeamViewController {
    //: var roomID = ""
    var roomID = ""
    //: var titleType: TitleType = .normal
    var titleType: ControlUTF8Initializable = .normal
    //: var selectedBlock: OnlineSelectedBlock?
    var selectedBlock: OnlineSelectedBlock?
    //: fileprivate var dataArray = NSMutableArray.init()
    fileprivate var dataArray = NSMutableArray()
    //: private var pageIndex = 0
    private var pageIndex = 0

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        conversion()
        //: setupSubViewsConstraint()
        roomTime()
        //: self.mainTableView.mj_header?.beginRefreshing()
        self.mainTableView.mj_header?.beginRefreshing()

        //: switch titleType {
        switch titleType {
        //: case .normal: self.title = "Online List".localized
        case .normal: self.title = (String(str_dataName.prefix(6)) + String(str_topTitle)).localized
        //: case .callNumber: self.title = "Select @ Numbers".localized
        case .callNumber: self.title = (String(str_viewNameText.prefix(6)) + " @ Numbe" + String(str_talkMainContent)).localized
        }
    }

    // MARK: - Lazy Load

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: table.delegate = self
            table.delegate = self
            //: table.dataSource = self
            table.dataSource = self
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.showsVerticalScrollIndicator = true
        table.showsVerticalScrollIndicator = true
        //: table.estimatedRowHeight = 0
        table.estimatedRowHeight = 0
        //: table.estimatedSectionFooterHeight = 0
        table.estimatedSectionFooterHeight = 0
        //: table.estimatedSectionHeaderHeight = 0
        table.estimatedSectionHeaderHeight = 0
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.addFooterRefresh { [weak self] in
        table.fromStatus { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerRefresh()
            self.elect()
        }
        //: table.addHeaderRefresh { [weak self] in
        table.addHeader { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.responseLabel()
        }
        //: table.register(TalkingChatRoomOnlineListCell.self, forCellReuseIdentifier: "TalkingChatRoomOnlineListCell")
        table.register(BottomWithListCell.self, forCellReuseIdentifier: (String(str_targetToTitle) + String(str_contextText.suffix(7)) + String(str_viewText.suffix(8))))

        //: return table
        return table
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = ShadowViewEmptyStyle()
        //: style.TipsTitle = "Nobody can @"
        style.TipsTitle = (String(str_resultValue.prefix(5)) + "y can @")
        //: let emptyView = EmptyView.init(frame: self.view.frame, style: style)
        let emptyView = EmptyView(frame: self.view.frame, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingChatRoomOnlineListController {
extension TalkingIndexThen {
    //: func headerRefresh() {
    func responseLabel() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        outsideRequest()
    }

    //: private func footerRefresh() {
    private func elect() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        outsideRequest()
    }

    //: func reqData() {
    func outsideRequest() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["roomId"] = roomID
        dict[(String(str_sharedRequestItemName.suffix(6)))] = roomID
        //: if titleType == .normal {
        if titleType == .normal {
            //: dict["type"] = "1"
            dict[(str_haveValue.replacingOccurrences(of: "collection", with: "e"))] = "1"
            //: } else {
        } else {
            //: dict["type"] = "2"
            dict[(str_haveValue.replacingOccurrences(of: "collection", with: "e"))] = "2"
        }
        //: dict["page"] = String(pageIndex)
        dict[(str_atValue.replacingOccurrences(of: "sign", with: "g"))] = String(pageIndex)

        //: TalkingChatGiftManager.share.getChatRoomMemberSData(params: dict, completion: { array in
        AstatineThen.share.customAction(params: dict, completion: { array in
            //: self.mainTableView.endRefresh()
            self.mainTableView.cancelButton()
            //: guard let arr = array else {
            guard let arr = array else {
                //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                //: return
                return
            }

            //: if self.pageIndex == 0 {
            if self.pageIndex == 0 {
                //: self.dataArray.removeAllObjects()
                self.dataArray.removeAllObjects()
            }

            //: if arr.count<=0 {
            if arr.count <= 0 {
                //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                //: self.mainTableView.mj_footer?.isHidden = true
                self.mainTableView.mj_footer?.isHidden = true
                //: } else {
            } else {
                //: self.dataArray.addObjects(from: arr)
                self.dataArray.addObjects(from: arr)
            }

            //: self.mainTableView.reloadData()
            self.mainTableView.reloadData()

            // @列表缺省
            //: if self.titleType == .callNumber && self.dataArray.count == 0 {
            if self.titleType == .callNumber, self.dataArray.count == 0 {
                //: self.emptyView.isHidden = false
                self.emptyView.isHidden = false
                //: } else {
            } else {
                //: self.emptyView.isHidden = true
                self.emptyView.isHidden = true
            }
            //: })
        })
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingChatRoomOnlineListController: UITableViewDelegate, UITableViewDataSource {
extension TalkingIndexThen: UITableViewDelegate, UITableViewDataSource {
    //: public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    public func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArray.count
        return dataArray.count
    }

    //: public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    public func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76
        return 76
    }

    //: public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: "TalkingChatRoomOnlineListCell", for: indexPath) as! TalkingChatRoomOnlineListCell
        let cell = tableView.dequeueReusableCell(withIdentifier: (String(str_targetToTitle) + String(str_contextText.suffix(7)) + String(str_viewText.suffix(8))), for: indexPath) as! BottomWithListCell
        //: var cellModel = TalkingChatRoomMemberModel()
        var cellModel = GrantUserMeasurable()
        //: cellModel = dataArray[indexPath.row] as! TalkingChatRoomMemberModel
        cellModel = dataArray[indexPath.row] as! GrantUserMeasurable
        //: cell.setOnlineListCell(model: cellModel, type: self.titleType)
        cell.ambagesList(model: cellModel, type: self.titleType)
        //: return cell
        return cell
    }

    //: public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: let cellModel = dataArray[indexPath.row] as! TalkingChatRoomMemberModel
        let cellModel = dataArray[indexPath.row] as! GrantUserMeasurable
        //: switch self.titleType {
        switch self.titleType {
        //: case .normal:
        case .normal:
            //: EditTextThen.share.func__pushToUserDetailVC(uid: cellModel.uid)
            EditTextThen.share.soulAge(uid: cellModel.uid)

        //: case .callNumber:
        case .callNumber:
            //: guard let block = selectedBlock else { return }
            guard let block = selectedBlock else { return }
            //: let dict = ["uid": cellModel.uid, "name": cellModel.nickname]
            let dict = [String(bytes: str_progressValue.map{$0^66}, encoding: .utf8)!: cellModel.uid, String(bytes: str_sourceCenterAttributeTitle.map{showSelf(bottom: $0)}, encoding: .utf8)!: cellModel.nickname]
            //: block(dict)
            block(dict)
        }
    }
}

// MARK: - Layout

//: extension TalkingChatRoomOnlineListController {
extension TalkingIndexThen {
    // 添加视图
    //: private func setupSubviews() {
    private func conversion() {
        //: self.view.addSubview(self.mainTableView)
        self.view.addSubview(self.mainTableView)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
    }

    //: private func setupSubViewsConstraint() {
    private func roomTime() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
    }
}
