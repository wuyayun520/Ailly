
//: Declare String Begin

/*: "GrantViewCell" :*/
fileprivate let str_blockName:String = "Talkihidden equal max"
fileprivate let str_equalTitle:String = "add modelikeCell"

/*: "page" :*/
fileprivate let str_viewContent:String = "pavideoe"

/*: "list" :*/
fileprivate let str_errorName:[Character] = ["l","i","s","t"]

/*: "badNumber" :*/
fileprivate let str_modeContent:[UInt8] = [0x0,0xff,0x2,0xec,0x13,0xb,0x0,0x3,0x10]

fileprivate func ofData(view num: UInt8) -> UInt8 {
    let value = Int(num) - 158
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "You've got no like yet." :*/
fileprivate let str_hostMessageTitle:[Character] = ["Y","o","u","\'","v","e"," ","g","o"]
fileprivate let str_regularName:String = "else make var pict no "

/*: "icon_kong_kong_default" :*/
fileprivate let str_requestValue:String = "icon_krequest size cell auto let"
fileprivate let str_viewName:[Character] = ["o"]
fileprivate let str_labValue:[Character] = ["n","g","_","d","e","f","a","u","l","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BeautyDataSource.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

//: import UIKit
import UIKit

//: class TalkingWhoLikeViewController: TalkingBaseViewController {
class BeautyDataSource: SeamViewController {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var DataSource: [TalkingWhoLikeMeModel] = []
    var DataSource: [GermanismMeasurable] = []
    //: var number = 0
    var number = 0
    //: var isdeleteEnd = false
    var isdeleteEnd = false

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.clear
        self.view.backgroundColor = UIColor.clear
        //: designView()
        selfDestroy()
        //: reqData()
        taskClick()
    }

    // MARK: - Lazy load

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: let view = EmptyView()
        let view = EmptyView()
        //: return view
        return view
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: table.register(TalkingWhoLikeCell.self, forCellReuseIdentifier: "TalkingWhoLikeCell")
        table.register(GrantViewCell.self, forCellReuseIdentifier: (String(str_blockName.prefix(5)) + "ngWhoL" + String(str_equalTitle.suffix(7))))
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
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
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.package()
        }
        //: table.addFooterRefresh { [weak self] in
        table.fromStatus { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.targetBy()
        }
        //: return table
        return table
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingWhoLikeViewController {
extension BeautyDataSource {
    //: func reqData() {
    func taskClick() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["page"] = pageIndex
        dict[(str_viewContent.replacingOccurrences(of: "video", with: "g"))] = pageIndex

        //: PostulationReactiveCompatible.req_whoLikeMeList(params: dict) { succeed, result, errorModel in
        PostulationReactiveCompatible.targetCompletion(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.cancelButton()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: let array: Array =  dict["list"] as! Array<Any>
                let array: Array = dict[(String(str_errorName))] as! [Any]
                //: if array.count == 0 {
                if array.count == 0 {
                    //: if self.pageIndex > 0 {
                    if self.pageIndex > 0 {
                        //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                        self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                        //: self.MainTable.mj_footer?.isHidden = true
                        self.MainTable.mj_footer?.isHidden = true
                    }
                    //: if self.DataSource.count == 0 &&  self.isdeleteEnd {
                    if self.DataSource.count == 0, self.isdeleteEnd {
                        //: self.setemptyView()
                        self.makeView()
                    }
                }
                //: var dataArr: [TalkingWhoLikeMeModel] = []
                var dataArr: [GermanismMeasurable] = []
                //: if let datas = Array<TalkingWhoLikeMeModel>.deserialize(from: array as? Array) {
                if let datas = Array<GermanismMeasurable>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingWhoLikeMeModel])!)
                    dataArr.append(contentsOf: (datas as? [GermanismMeasurable])!)
                }
                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.DataSource = dataArr
                    self.DataSource = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.DataSource.append(contentsOf: dataArr)
                    self.DataSource.append(contentsOf: dataArr)
                }

                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func headerRefresh() {
    func package() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        taskClick()
    }

    //: func footerRefresh() {
    func targetBy() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        taskClick()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingWhoLikeViewController: UITableViewDelegate, UITableViewDataSource {
extension BeautyDataSource: UITableViewDelegate, UITableViewDataSource {
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
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingWhoLikeCell"
        let identifier = (String(str_blockName.prefix(5)) + "ngWhoL" + String(str_equalTitle.suffix(7)))
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingWhoLikeCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? GrantViewCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingWhoLikeCell(style: .default, reuseIdentifier: identifier)
            cell = GrantViewCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingWhoLikeMeModel = self.DataSource[indexPath.row]
        let model: GermanismMeasurable = self.DataSource[indexPath.row]
        //: cell?.setCell(model: model, index: indexPath)
        cell?.offBlock(model: model, index: indexPath)
        //: cell?.delegate = self
        cell?.delegate = self
        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model: TalkingWhoLikeMeModel = self.DataSource[indexPath.row]
        let model: GermanismMeasurable = self.DataSource[indexPath.row]
        //: EditTextThen.share.func__pushToUserDetailVC(uid: model.uid)
        EditTextThen.share.soulAge(uid: model.uid)
    }
}

// MARK: - ProgressReactiveCompatible

//: extension TalkingWhoLikeViewController: WhoLikeDelegate {
extension BeautyDataSource: ProgressReactiveCompatible {
    //: func quickGreetingSeleteIndex(_ index: IndexPath) {
    func indexWith(_ index: IndexPath) {
        //: self.DataSource.remove(at: index.row)
        self.DataSource.remove(at: index.row)
        //: MainTable.reloadData()
        MainTable.reloadData()
        //: if self.DataSource.count==0 {
        if self.DataSource.count == 0 {
            //: self.isdeleteEnd = true
            self.isdeleteEnd = true
            //: pageIndex = 0
            pageIndex = 0
            //: reqData()
            taskClick()
        }
        //: number -= 1
        number -= 1
        //: NotificationCenter.default.post(name: WHOLIKEME_BADGENUMBER_NOTIF, object: self, userInfo: ["badNumber": (number)])
        NotificationCenter.default.post(name: kLet_pathSenseData, object: self, userInfo: [String(bytes: str_modeContent.map{ofData(view: $0)}, encoding: .utf8)!: number])
    }

    //: func likeSeleteIndex(_ index: IndexPath) {
    func methodLast(_ index: IndexPath) {
        //: quickGreetingSeleteIndex(index)
        indexWith(index)
    }
}

// MARK: - UI

//: extension TalkingWhoLikeViewController {
extension BeautyDataSource {
    //: private func designView() {
    private func selfDestroy() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
        //: setemptyView()
        makeView()
    }

    //: func setemptyView() {
    func makeView() {
        //: self.emptyView.removeFromSuperview()
        self.emptyView.removeFromSuperview()
        //: var style = EmptyStyle()
        var style = ShadowViewEmptyStyle()
        //: style.TipsTitle = "You've got no like yet.".localized
        style.TipsTitle = (String(str_hostMessageTitle) + String(str_regularName.suffix(5)) + "like yet.").localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (String(str_requestValue.prefix(6)) + "ong_k" + String(str_viewName) + String(str_labValue))
        //: self.emptyView = EmptyView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: style)
        self.emptyView = EmptyView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData), style: style)
        //: self.view.addSubview(self.emptyView)
        self.view.addSubview(self.emptyView)
        //: self.view.bringSubviewToFront(self.emptyView)
        self.view.bringSubviewToFront(self.emptyView)
        //: self.emptyView.emptyBlock = {
        self.emptyView.emptyBlock = {
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }
    }
}
