
//: Declare String Begin

/*: "Fans" :*/
fileprivate let str_errValue:String = "Fansmodel make as background"

/*: "Tip: Can't earn points if you follow each other~" :*/
fileprivate let str_filterOnValue:[UInt8] = [0xcd,0xf0,0xe9,0xa3,0xb9,0xda,0xf8,0xf7,0xbe,0xed,0xb9,0xfc,0xf8,0xeb,0xf7,0xb9,0xe9,0xf6,0xf0,0xf7,0xed,0xea,0xb9,0xf0,0xff,0xb9,0xe0,0xf6,0xec,0xb9,0xff,0xf6,0xf5,0xf5,0xf6,0xee,0xb9,0xfc,0xf8,0xfa,0xf1,0xb9,0xf6,0xed,0xf1,0xfc,0xeb,0xe7]

private func indexCollection(cell num: UInt8) -> UInt8 {
    return num ^ 153
}

/*: "Tip:\"Favorite each other\" chat will be free" :*/
fileprivate let str_goName:[UInt8] = [0x9f,0xa2,0xbb,0xf1,0xe9,0x8d,0xaa,0xbd,0xa4,0xb9,0xa2,0xbf,0xae,0xeb,0xae,0xaa,0xa8,0xa3,0xeb,0xa4,0xbf,0xa3,0xae,0xb9,0xe9,0xeb,0xa8,0xa3,0xaa,0xbf,0xeb,0xbc,0xa2,0xa7,0xa7,0xeb,0xa9,0xae,0xeb,0xad,0xb9,0xae,0xae]

private func frameEqual(value num: UInt8) -> UInt8 {
    return num ^ 203
}

/*: "targetUid" :*/
fileprivate let str_colorText:String = "point"
fileprivate let str_ofData:String = "ARGE"

/*: "type" :*/
fileprivate let str_observerTitle:String = "tyvaluee"

/*: "limit" :*/
fileprivate let str_makeContent:String = "sharedimit"

/*: "20" :*/
fileprivate let str_gestureText:String = "20"

/*: "page" :*/
fileprivate let str_hideData:String = "padatae"

/*: "CounteractionAttentionCell" :*/
fileprivate let str_equalName:String = "self titleTalk"
fileprivate let str_senseTitle:String = "modelmodelenmodel"

/*: "You've got no Be liked yet." :*/
fileprivate let str_taskValue:String = "You\'ve "
fileprivate let str_replyData:[Character] = ["g","o","t"," ","n","o"," ","B","e"," ","l","i","k"]
fileprivate let str_pathData:String = "ed yet.page white photo"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CameraAttentionDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import UIKit
import UIKit

//: import JXPagingView
import JXPagingView

//: class TalkingBeAttentionVC: TalkingBaseViewController {
class CameraAttentionDelegate: SeamViewController {
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
        //: self.title = "Fans"
        self.title = (String(str_errValue.prefix(4)))
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: designView()
        roundUpAction()
        //: reqData()
        capability()
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
            self.dangle()
        }
        //: table.addFooterRefresh { [weak self] in
        table.fromStatus { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.smartModel()
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
            label.text = String(bytes: str_filterOnValue.map{indexCollection(cell: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Tip:\"Favorite each other\" chat will be free".localized
            label.text = String(bytes: str_goName.map{frameEqual(value: $0)}, encoding: .utf8)!.localized
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

//: extension TalkingBeAttentionVC {
extension CameraAttentionDelegate {
    //: func reqData() {
    func capability() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = EqualThen.share.loginUserMode.userID
        dict[(str_colorText.replacingOccurrences(of: "point", with: "t") + str_ofData.lowercased() + "tUid")] = EqualThen.share.loginUserMode.userID
        //: dict["type"] = "2"
        dict[(str_observerTitle.replacingOccurrences(of: "value", with: "p"))] = "2"
        //: dict["limit"] = "20"
        dict[(str_makeContent.replacingOccurrences(of: "shared", with: "l"))] = "20"
        //: dict["page"] = String(pageIndex)
        dict[(str_hideData.replacingOccurrences(of: "data", with: "g"))] = String(pageIndex)

        //: PostulationReactiveCompatible.req_atationList(params: dict) { succeed, result, errorModel in
        PostulationReactiveCompatible.searchEffect(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.cancelButton()
            //: if succeed {
            if succeed {
                //: let array: Array = result as! Array<Any>
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
    func dangle() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        capability()
    }

    //: func footerRefresh() {
    func smartModel() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        capability()
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingBeAttentionVC: JXPagingViewListViewDelegate {
extension CameraAttentionDelegate: JXPagingViewListViewDelegate {
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

//: extension TalkingBeAttentionVC: UITableViewDelegate, UITableViewDataSource {
extension CameraAttentionDelegate: UITableViewDelegate, UITableViewDataSource {
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
        let identifier = (String(str_equalName.suffix(4)) + "ingA" + str_senseTitle.replacingOccurrences(of: "model", with: "t") + "ionCell")
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingAttentionCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? CounteractionAttentionCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingAttentionCell(style: .default, reuseIdentifier: identifier)
            cell = CounteractionAttentionCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingAttentionModel = self.DataSource[indexPath.row]
        let model: BottomModelType = self.DataSource[indexPath.row]
        //: cell?.setCell(model: model, index: indexPath, Atype: .beLike)
        cell?.addUp(model: model, index: indexPath, Atype: .beLike)
        //: cell?.delegate = self
        cell?.delegate = self

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}
}

// MARK: - AttentionReactiveCompatible

//: extension TalkingBeAttentionVC: AttentionDelegate {
extension CameraAttentionDelegate: AttentionReactiveCompatible {
    //: func cancelAtationSeleteIndex(_ index: IndexPath) {
    func pushIndex(_: IndexPath) {}

    //: func belikeAtationSeleteIndex(_ index: IndexPath) {
    func tearOff(_ index: IndexPath) {
        //: var model = self.DataSource[index.row]
        var model = self.DataSource[index.row]
        //: model.mutualAtt = !model.mutualAtt!
        model.mutualAtt = !model.mutualAtt!
        //: self.DataSource[index.row] = model
        self.DataSource[index.row] = model
    }
}

// MARK: - UI

//: extension TalkingBeAttentionVC {
extension CameraAttentionDelegate {
    //: private func designView() {
    private func roundUpAction() {
        //: var style = EmptyStyle()
        var style = ShadowViewEmptyStyle()
        //: style.TipsTitle = "You've got no Be liked yet.".localized
        style.TipsTitle = (str_taskValue + String(str_replyData) + String(str_pathData.prefix(7))).localized
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
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-(KDeviceIsIphoneX ? 34 + 49 - 44 : 49))
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
        MainTable.register(CounteractionAttentionCell.self, forCellReuseIdentifier: (String(str_equalName.suffix(4)) + "ingA" + str_senseTitle.replacingOccurrences(of: "model", with: "t") + "ionCell"))
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
