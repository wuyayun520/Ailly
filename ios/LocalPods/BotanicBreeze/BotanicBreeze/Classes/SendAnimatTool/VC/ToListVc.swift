
//: Declare String Begin

/*: "Public Chat Room" :*/
fileprivate let str_errorResultName:[Character] = ["P","u","b","l","i","c"," ","C","h","a","t"," ","R","o","o","m"]

/*: "You've got no list yet." :*/
fileprivate let str_viewData:[Character] = ["Y","o","u","\'","v","e"," ","g","o","t"," ","n","o"," ","l","i"]
fileprivate let str_timeName:String = "st yet.to situation target"

/*: "CounteractionViewCell" :*/
fileprivate let str_contentValue:[Character] = ["T","a","l","k"]
fileprivate let str_dataFromText:String = "self background first iningC"
fileprivate let str_shareValue:String = "type keyoomLis"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToListVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/6.
//

//: import UIKit
import UIKit

//: class TalkingChatRoomListVC: TalkingBaseViewController {
class ToListVc: SeamViewController {
    //: var DataSource: [TalkingChatRoomListModel] = []
    var DataSource: [ShowModelType] = []

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Public Chat Room".localized
        self.title = (String(str_errorResultName)).localized
        //: designView()
        listTop()
        //: reqData()
        writtenAccountData()
    }

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.addHeaderRefresh { [weak self] in
        table.addHeader { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.reason()
        }
        //: return table
        return table
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = ShadowViewEmptyStyle()
        //: style.TipsTitle = "You've got no list yet.".localized
        style.TipsTitle = (String(str_viewData) + String(str_timeName.prefix(7))).localized
        //: let emptyView = EmptyView.init(frame: .zero, style: style)
        let emptyView = EmptyView(frame: .zero, style: style)
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.reqData()
            self.writtenAccountData()
        }
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingChatRoomListVC {
extension ToListVc {
    //: func reqData() {
    func writtenAccountData() {
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: PostulationReactiveCompatible.req_getChatRoomList { succeed, result, errorModel in
        PostulationReactiveCompatible.listing { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.cancelButton()
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count == 0 {
                if array.count == 0 {
                    //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var dataArr: [TalkingChatRoomListModel] = []
                var dataArr: [ShowModelType] = []

                //: if let datas = Array<TalkingChatRoomListModel>.deserialize(from: array as? Array) {
                if let datas = Array<ShowModelType>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingChatRoomListModel])!)
                    dataArr.append(contentsOf: (datas as? [ShowModelType])!)
                }
                //: self.DataSource = dataArr
                self.DataSource = dataArr
                //: self.emptyView.isHidden = (self.DataSource.count > 0)
                self.emptyView.isHidden = (self.DataSource.count > 0)
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func headerRefresh() {
    func reason() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: reqData()
        writtenAccountData()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingChatRoomListVC: UITableViewDelegate, UITableViewDataSource {
extension ToListVc: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.DataSource.count
        return self.DataSource.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76
        return 76
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingChatRoomListCell"
        let identifier = (String(str_contentValue) + String(str_dataFromText.suffix(4)) + "hatR" + String(str_shareValue.suffix(6)) + "tCell")
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingChatRoomListCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? CounteractionViewCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingChatRoomListCell(style: .default, reuseIdentifier: identifier)
            cell = CounteractionViewCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingChatRoomListModel = self.DataSource[indexPath.row]
        let model: ShowModelType = self.DataSource[indexPath.row]
        //: cell?.setChatRoomListCell(model: model)
        cell?.videoTable(model: model)

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.DataSource[indexPath.row]
        let model = self.DataSource[indexPath.row]
        //: EditTextThen.share.func__pushToGroupChat(groupId: model.roomId)
        EditTextThen.share.turn(groupId: model.roomId)
    }
}

// MARK: - UI

//: extension TalkingChatRoomListVC {
extension ToListVc {
    //: private func designView() {
    private func listTop() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingChatRoomListCell.self, forCellReuseIdentifier: "TalkingChatRoomListCell")
        MainTable.register(CounteractionViewCell.self, forCellReuseIdentifier: (String(str_contentValue) + String(str_dataFromText.suffix(4)) + "hatR" + String(str_shareValue.suffix(6)) + "tCell"))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(1)
            make.top.equalTo(self.view).offset(1)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-1)
            make.bottom.equalTo(self.view.snp.bottom).offset(-1)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }

        //: view.addSubview(emptyView)
        view.addSubview(emptyView)
        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
