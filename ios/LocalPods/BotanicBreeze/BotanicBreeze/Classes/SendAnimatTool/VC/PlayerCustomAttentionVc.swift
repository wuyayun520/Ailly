
//: Declare String Begin

/*: "Follow" :*/
fileprivate let str_ofData:String = "string user voiceFollow"

/*: "Tip: Can't earn points if you follow each other~" :*/
fileprivate let str_midContent:[UInt8] = [0x7e,0x72,0x65,0x68,0x74,0x6f,0x20,0x68,0x63,0x61,0x65,0x20,0x77,0x6f,0x6c,0x6c,0x6f,0x66,0x20,0x75,0x6f,0x79,0x20,0x66,0x69,0x20,0x73,0x74,0x6e,0x69,0x6f,0x70,0x20,0x6e,0x72,0x61,0x65,0x20,0x74,0x27,0x6e,0x61,0x43,0x20,0x3a,0x70,0x69,0x54]

/*: "Tip:\"Favorite each other\" chat will be free" :*/
fileprivate let str_appearValue:[UInt8] = [0x1b,0x26,0x3f,0x75,0x6d,0x9,0x2e,0x39,0x20,0x3d,0x26,0x3b,0x2a,0x6f,0x2a,0x2e,0x2c,0x27,0x6f,0x20,0x3b,0x27,0x2a,0x3d,0x6d,0x6f,0x2c,0x27,0x2e,0x3b,0x6f,0x38,0x26,0x23,0x23,0x6f,0x2d,0x2a,0x6f,0x29,0x3d,0x2a,0x2a]

/*: "targetUid" :*/
fileprivate let str_dataDoingText:String = "TA"
fileprivate let str_viewName:String = "rgetUidany listen view"

/*: "type" :*/
fileprivate let str_norName:[Character] = ["t","y","p","e"]

/*: "attentionType" :*/
fileprivate let str_withTextRowValue:String = "labelte"
fileprivate let str_userMakeTitle:String = "let size layer labelType"

/*: "limit" :*/
fileprivate let str_postPopSectionText:String = "lviewit"

/*: "20" :*/
fileprivate let str_titleValue:[Character] = ["2","0"]

/*: "page" :*/
fileprivate let str_errTitle:String = "pagon"

/*: "CounteractionAttentionCell" :*/
fileprivate let str_buttonPathName:[Character] = ["T","a","l","k","i","n","g","A","t","t","e","n","t","i"]
fileprivate let str_prepareData:String = "else keyonCell"

/*: "You've got no favourite yet." :*/
fileprivate let str_popModifyNameValue:[Character] = ["Y","o","u","\'","v","e"," ","g","o","t"," ","n","o"," ","f","a","v","o","u"]
fileprivate let str_showName:String = "text tap video countrite yet."

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PlayerCustomAttentionVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import UIKit
import UIKit

//: import JXPagingView
import JXPagingView

//: class TalkingAttentionVC: TalkingBaseViewController {
class PlayerCustomAttentionVc: SeamViewController {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var DataSource: [TalkingAttentionModel] = []
    var DataSource: [BottomModelType] = []

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Follow".localized
        self.title = (String(str_ofData.suffix(6))).localized
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: designView()
        cite()
        //: reqData()
        meImage()
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
            self.nameFlush()
        }
        //: table.addFooterRefresh { [weak self] in
        table.fromStatus { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.whoColor()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bottomView: UIView = {
    lazy var bottomView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor(red: 138/255.0, green: 121/255.0, blue: 249/255.0, alpha: 0.2)
        view.backgroundColor = UIColor(red: 138 / 255.0, green: 121 / 255.0, blue: 249 / 255.0, alpha: 0.2)
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .pingfang(type: .Regular, fontSize: 15)
        //: label.textColor = UIColor.appThemeColor()
        label.textColor = UIColor.plaster()
        //: if EqualThen.share.loginUserMode.sex == Gender.female.rawValue {
        if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue {
            //: label.text = "Tip: Can't earn points if you follow each other~".localized
            label.text = String(bytes: str_midContent.reversed(), encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Tip:\"Favorite each other\" chat will be free".localized
            label.text = String(bytes: str_appearValue.map{$0^79}, encoding: .utf8)!.localized
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: view.addSubview(label)
        view.addSubview(label)
        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.top.equalTo(view).offset(4)
            make.top.equalTo(view).offset(4)
            //: make.bottom.equalTo(view.snp.bottom).offset(-4)
            make.bottom.equalTo(view.snp.bottom).offset(-4)
            //: make.leading.equalTo(view).offset(15)
            make.leading.equalTo(view).offset(15)
            //: make.trailing.equalTo(view.snp.trailing).offset(-15)
            make.trailing.equalTo(view.snp.trailing).offset(-15)
        }

        //: return view
        return view
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingAttentionVC {
extension PlayerCustomAttentionVc {
    //: func reqData() {
    func meImage() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = EqualThen.share.loginUserMode.userID
        dict[(str_dataDoingText.lowercased() + String(str_viewName.prefix(7)))] = EqualThen.share.loginUserMode.userID
        //: dict["type"] = "1"
        dict[(String(str_norName))] = "1"
        //: dict["attentionType"] = "1"
        dict[(str_withTextRowValue.replacingOccurrences(of: "label", with: "at") + "ntion" + String(str_userMakeTitle.suffix(4)))] = "1"
        //: dict["limit"] = "20"
        dict[(str_postPopSectionText.replacingOccurrences(of: "view", with: "im"))] = "20"
        //: dict["page"] = String(pageIndex)
        dict[(str_errTitle.replacingOccurrences(of: "on", with: "e"))] = String(pageIndex)

        //: PostulationReactiveCompatible.req_atationList(params: dict) { succeed, result, errorModel in
        PostulationReactiveCompatible.searchEffect(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.cancelButton()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count == 0 && self.pageIndex > 0 {
                if array.count == 0, self.pageIndex > 0 {
                    //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var dataArr: [TalkingAttentionModel] = []
                var dataArr: [BottomModelType] = []
                //: if let datas = Array<TalkingAttentionModel>.deserialize(from: array as? Array) {
                if let datas = Array<BottomModelType>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingAttentionModel])!)
                    dataArr.append(contentsOf: (datas as? [BottomModelType])!)
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
    func nameFlush() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        meImage()
    }

    //: func footerRefresh() {
    func whoColor() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        meImage()
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingAttentionVC: JXPagingViewListViewDelegate {
extension PlayerCustomAttentionVc: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.MainTable
        return self.MainTable
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingAttentionVC: UITableViewDelegate, UITableViewDataSource {
extension PlayerCustomAttentionVc: UITableViewDelegate, UITableViewDataSource {
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
        //: let identifier = "TalkingAttentionCell"
        let identifier = (String(str_buttonPathName) + String(str_prepareData.suffix(6)))
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingAttentionCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? CounteractionAttentionCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingAttentionCell(style: .default, reuseIdentifier: identifier)
            cell = CounteractionAttentionCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingAttentionModel = self.DataSource[indexPath.row]
        let model: BottomModelType = self.DataSource[indexPath.row]
        //: cell?.setCell(model: model, index: indexPath, Atype: .attention)
        cell?.addUp(model: model, index: indexPath, Atype: .attention)
        //: cell?.delegate = self
        cell?.delegate = self

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}
}

// MARK: - AttentionReactiveCompatible

//: extension TalkingAttentionVC: AttentionDelegate {
extension PlayerCustomAttentionVc: AttentionReactiveCompatible {
    //: func cancelAtationSeleteIndex(_ index: IndexPath) {
    func pushIndex(_ index: IndexPath) {
        //: self.DataSource.remove(at: index.row)
        self.DataSource.remove(at: index.row)
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
    }

    //: func belikeAtationSeleteIndex(_ index: IndexPath) {
    func tearOff(_: IndexPath) {}
}

// MARK: - UI

//: extension TalkingAttentionVC {
extension PlayerCustomAttentionVc {
    //: private func designView() {
    private func cite() {
        //: var style = EmptyStyle()
        var style = ShadowViewEmptyStyle()
        //: style.TipsTitle = "You've got no favourite yet.".localized
        style.TipsTitle = (String(str_popModifyNameValue) + String(str_showName.suffix(9))).localized
        //: emptyView = EmptyView.init(frame: self.view.frame, style: style)
        emptyView = EmptyView(frame: self.view.frame, style: style)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.emptyBlock = {
        emptyView.emptyBlock = {
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }
        //: self.view.addSubview(bottomView)
        self.view.addSubview(bottomView)
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-(KDeviceIsIphoneX ? 34 + 49-44  : 49))
            make.bottom.equalTo(self.view.snp.bottom).offset(-(kLet_licenseTitle ? 34 + 49 - 44 : 49))
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(54)
            make.height.equalTo(54)
        }
        //: bottomView.isHidden = EqualThen.share.appStatus != AppSkinStatus.normal.rawValue
        bottomView.isHidden = EqualThen.share.appStatus != PhaseOfTheMoonPropertyProtocol.normal.rawValue

        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingAttentionCell.self, forCellReuseIdentifier: "TalkingAttentionCell")
        MainTable.register(CounteractionAttentionCell.self, forCellReuseIdentifier: (String(str_buttonPathName) + String(str_prepareData.suffix(6))))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(bottomView.snp.top)
            make.bottom.equalTo(bottomView.snp.top)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }

        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }
}
