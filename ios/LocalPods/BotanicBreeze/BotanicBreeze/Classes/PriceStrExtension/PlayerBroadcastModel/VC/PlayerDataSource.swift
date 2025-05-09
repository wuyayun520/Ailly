
//: Declare String Begin

/*: "#F4F6FA" :*/
fileprivate let str_layerCenterData:String = "user"
fileprivate let str_tabValue:String = "kindF6FA"

/*: "You've got no list yet." :*/
fileprivate let str_keyTitle:String = "You\'v"
fileprivate let str_textValue:String = "no lisself temp medium"
fileprivate let str_toValueData:String = "t yet.view user"

/*: "page" :*/
fileprivate let str_rawData:String = "PAGE"

/*: "limit" :*/
fileprivate let str_toData:String = "lnormalit"

/*: "20" :*/
fileprivate let str_crushValue:String = "20"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PlayerDataSource.swift
//  BotanicBreeze
//
//  Created by Hemming on 2024/9/24.
//

//: import UIKit
import UIKit

//: class PartyListViewController: TalkingBaseViewController {
class PlayerDataSource: SeamViewController {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var dataArr: [PartyListModel] = []
    var dataArr: [ToListModel] = []
    //: var scrollback: ScrollCallback?
    var scrollback: ScrollCallback?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        doingSubviews()
        //: setupSubViewsConstraint()
        reading()
        //: bindInteraction()
        someStop()
        //: reqData()
        haveRun()
    }

    //: lazy var tableView: UITableView = {
    lazy var tableView: UITableView = {
        //: let tableView = UITableView.init(frame: .zero, style: .plain)
        let tableView = UITableView(frame: .zero, style: .plain)
        //: tableView.backgroundColor = .clear
        tableView.backgroundColor = .clear
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.register(PartyListCell.self, forCellReuseIdentifier: PartyListCell.className())
        tableView.register(AgendumReactiveCompatible.self, forCellReuseIdentifier: AgendumReactiveCompatible.className())
        //: tableView.sectionIndexColor = .appValueColor()
        tableView.sectionIndexColor = .addColor()
        //: tableView.backgroundColor  = UIColor.init(hex: "#F4F6FA")
        tableView.backgroundColor = UIColor(hex: (str_layerCenterData.replacingOccurrences(of: "user", with: "#") + str_tabValue.replacingOccurrences(of: "kind", with: "F4")))
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.addHeaderRefresh { [weak self] in
        tableView.addHeader { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.pageIndex = 0
            self.pageIndex = 0
            //: self.reqData()
            self.haveRun()
        }
        //: tableView.addFooterRefresh { [weak self] in
        tableView.fromStatus { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.reqData()
            self.haveRun()
        }
        //: return tableView
        return tableView
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = ShadowViewEmptyStyle()
        //: style.TipsTitle = "You've got no list yet.".localized
        style.TipsTitle = (str_keyTitle + "e got " + String(str_textValue.prefix(6)) + String(str_toValueData.prefix(6))).localized
        //: let view = EmptyView.init(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: return view
        return view
        //: }()
    }()
}

//: extension PartyListViewController {
extension PlayerDataSource {
    /// 添加视图
    //: private func setupSubviews() {
    private func doingSubviews() {
        // 导航底部渐变背景
        //: self.view.addSubview(tableView)
        self.view.addSubview(tableView)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: self.view.transform = CGAffineTransform(scaleX: -1, y: 1)
            self.view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func reading() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func someStop() {
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.pageIndex = 0
            self.pageIndex = 0
            //: self.reqData()
            self.haveRun()
        }
    }

    //: func reqData() {
    func haveRun() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["page"] = pageIndex
        dict[(str_rawData.lowercased())] = pageIndex
        //: dict["limit"] = "20"
        dict[(str_toData.replacingOccurrences(of: "normal", with: "im"))] = "20"

        //: TalkingVoiceRoomReqTool.req_partyList(params: dict, completion: { succeed, result, errorModel in
        SurgeryReqTool.ladenLive(params: dict, completion: { succeed, result, _ in

            //: self.tableView.endRefresh()
            self.tableView.cancelButton()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count == 0 && self.pageIndex > 0 {
                if array.count == 0, self.pageIndex > 0 {
                    //: self.tableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.tableView.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var tempArr: [PartyListModel] = []
                var tempArr: [ToListModel] = []
                //: if let datas = Array<PartyListModel>.deserialize(from: array as? Array) {
                if let datas = Array<ToListModel>.deserialize(from: array as? Array) {
                    //: tempArr.append(contentsOf: (datas as? [PartyListModel])!)
                    tempArr.append(contentsOf: (datas as? [ToListModel])!)
                }
                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.dataArr = tempArr
                    self.dataArr = tempArr
                    //: } else {
                } else {
                    //: self.dataArr.append(contentsOf: tempArr)
                    self.dataArr.append(contentsOf: tempArr)
                }
                //: self.emptyView.isHidden = self.dataArr.count != 0
                self.emptyView.isHidden = self.dataArr.count != 0
                //: self.pageIndex += 1
                self.pageIndex += 1
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
            //: })
        })
    }
}

//: extension PartyListViewController: UITableViewDelegate, UITableViewDataSource {
extension PlayerDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArr.count
        return dataArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: PartyListCell.className(), for: indexPath) as! PartyListCell
        let cell = tableView.dequeueReusableCell(withIdentifier: AgendumReactiveCompatible.className(), for: indexPath) as! AgendumReactiveCompatible

        //: if let listModel = dataArr[safe: indexPath.row] {
        if let listModel = dataArr[safe: indexPath.row] {
            //: cell.listModel = listModel
            cell.listModel = listModel
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 88
        return 88
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if let listModel = dataArr[safe: indexPath.row] {
        if let listModel = dataArr[safe: indexPath.row] {
            //: EditTextThen.share.func_pushToVoiceRoomVC(roomId: String(listModel.roomId))
            EditTextThen.share.loadId(roomId: String(listModel.roomId))
        }
    }
}

//: extension PartyListViewController: JXPagingViewListViewDelegate {
extension PlayerDataSource: JXPagingViewListViewDelegate {
    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return tableView
        return tableView
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> ()) {
    func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
        //: self.scrollback = callback
        self.scrollback = callback
    }

    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }
}
