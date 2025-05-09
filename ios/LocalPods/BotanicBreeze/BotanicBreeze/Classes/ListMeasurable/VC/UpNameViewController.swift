
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_collectionValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "There's no posts yet." :*/
fileprivate let str_clickValue:String = "Therself index return height manager"
fileprivate let str_leadingName:String = "in model make posts"
fileprivate let str_objectModelValue:[Character] = [" ","y","e","t","."]

/*: "uid" :*/
fileprivate let str_byData:[Character] = ["u","i","d"]

/*: "page" :*/
fileprivate let str_tablePlayData:[Character] = ["p","a","g","e"]

/*: "list" :*/
fileprivate let str_faceRenderData:String = "makeist"

/*: "nickname" :*/
fileprivate let str_emptyTitle:String = "nsize"
fileprivate let str_toClearValue:String = "CKNAME"

/*: "age" :*/
fileprivate let str_modelValue:[Character] = ["a","g","e"]

/*: "sex" :*/
fileprivate let str_removeScreenTitle:[Character] = ["s","e","x"]

/*: "isTPAuth" :*/
fileprivate let str_colorTitle:[Character] = ["i","s","T","P","A","u","t","h"]

/*: "headPic" :*/
fileprivate let str_itemTitle:[Character] = ["h","e","a","d","P"]
fileprivate let str_positionName:String = "IC"

/*: "pinCount" :*/
fileprivate let str_colorValue:String = "false search make userpinCo"
fileprivate let str_imageName:String = "ububble"

/*: "model" :*/
fileprivate let str_subjectData:[Character] = ["m","o","d","e","l"]

/*: "Unpin from profile" :*/
fileprivate let str_selectedTitle:String = "item let table makeUnpi"
fileprivate let str_viewWorldLetValue:String = " profileindex type to"

/*: "Delete Post" :*/
fileprivate let str_hiddenName:[Character] = ["D","e","l","e","t","e"," ","P","o","s","t"]

/*: "Pin to profile" :*/
fileprivate let str_textValue:String = "Pin tself for scale"
fileprivate let str_informationTitle:String = "fblocke"

/*: "id" :*/
fileprivate let str_keyData:[Character] = ["i","d"]

/*: "momentId" :*/
fileprivate let str_bagValue:[Character] = ["m","o","m","e","n","t","I","d"]

/*: "status" :*/
fileprivate let str_viewLastData:[Character] = ["s","t","a","t","u","s"]

/*: "Your post has been pinned" :*/
fileprivate let str_indexData:String = "return wrap add complete guardYour p"
fileprivate let str_byName:String = "as beesize var let var quality"
fileprivate let str_playPointCollectionName:String = "extension add elsen pinned"

/*: "Your post has been Unpinned" :*/
fileprivate let str_addPlaceTitle:[Character] = ["Y","o","u","r"," ","p","o","s"]
fileprivate let str_upName:[Character] = ["t"," ","h","a","s"," ","b","e","e","n"," ","U","n","p","i","n","n","e","d"]

/*: "EscapedView" :*/
fileprivate let str_whiteData:String = "Talkinto search"
fileprivate let str_kitContent:String = "entIteimage return content index make"
fileprivate let str_backgroundData:String = "block"

/*: "Posts" :*/
fileprivate let str_directValue:String = "Postssense to"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UpNameViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/22.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingUserMomentVC: TalkingBaseViewController {
class UpNameViewController: SeamViewController {
    //: var uid = ""
    var uid = ""
    //: var pageIndex = 0
    var pageIndex = 0
    //: var disposeBag = DisposeBag()
    var disposeBag = DisposeBag()
    //: var dataSourceArr: [TalkingMomentModel] = []
    var dataSourceArr: [WithMomentModel] = []

    //: init(uid: String) {
    init(uid: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.uid = uid
        self.uid = uid
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_collectionValue.reversed(), encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        setupAdd()
        //: setupSubViewsConstraint()
        sendShow()
        //: bindInteraction()
        calorieChart()
        //: reqData()
        windowData()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
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
        //: return table
        return table
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = ShadowViewEmptyStyle()
        //: style.TipsTitle = "There's no posts yet."
        style.TipsTitle = (String(str_clickValue.prefix(4)) + "e\'s no" + String(str_leadingName.suffix(6)) + String(str_objectModelValue))
        //: let view = EmptyView.init(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingUserMomentVC {
extension UpNameViewController {
    //: func reqData() {
    func windowData() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["uid"] = uid
        dict[(String(str_byData))] = uid
        //: dict["page"] = pageIndex
        dict[(String(str_tablePlayData))] = pageIndex
        //: TalkingMomentRequestTool.req_UserMomentList(params: dict) { succeed, result, errorModel in
        StreetSmartReactiveCompatible.changeForm(params: dict) { succeed, result, errorModel in

            //: self.mainTableView.endRefresh()
            self.mainTableView.cancelButton()
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: if self.pageIndex > 0 {
                    if self.pageIndex > 0 {
                        //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                        self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    }
                    //: return
                    return
                }

                //: guard let array = dict["list"] as? Array<Any> else {
                guard let array = dict[(str_faceRenderData.replacingOccurrences(of: "make", with: "l"))] as? [Any] else {
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    //: return
                    return
                }
                //: var dataArr: [TalkingMomentModel] = []
                var dataArr: [WithMomentModel] = []
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingMomentModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<WithMomentModel>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.nickname = dict["nickname"] as? String
                        model.nickname = dict[(str_emptyTitle.replacingOccurrences(of: "size", with: "i") + str_toClearValue.lowercased())] as? String
                        //: model.age = dict["age"] as? Int
                        model.age = dict[(String(str_modelValue))] as? Int
                        //: model.sex = dict["sex"] as? String
                        model.sex = dict[(String(str_removeScreenTitle))] as? String
                        //: model.uid = dict["uid"] as? String
                        model.uid = dict[(String(str_byData))] as? String
                        //: model.isTPAuth = dict["isTPAuth"] as? Bool ?? false
                        model.isTPAuth = dict[(String(str_colorTitle))] as? Bool ?? false
                        //: model.headPic = dict["headPic"] as? String
                        model.headPic = dict[(String(str_itemTitle) + str_positionName.lowercased())] as? String
                        //: model.pinCount = dict["pinCount"] as! Int
                        model.pinCount = dict[(String(str_colorValue.suffix(5)) + str_imageName.replacingOccurrences(of: "bubble", with: "nt"))] as! Int
                        //: model.caculateItemHeight()
                        model.income()
                        //: if model.uid == EqualThen.share.loginUserMode.userID {
                        if model.uid == EqualThen.share.loginUserMode.userID {
                            //: model.isUserDetail = true
                            model.isUserDetail = true
                        }
                        //: dataArr.append(model)
                        dataArr.append(model)
                    }
                }

                //: if dataArr.count < 20 {
                if dataArr.count < 20 { // 不足一页，隐藏更多
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                }

                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.dataSourceArr = dataArr
                    self.dataSourceArr = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.dataSourceArr.append(contentsOf: dataArr)
                    self.dataSourceArr.append(contentsOf: dataArr)
                }

                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg )
                self.oversight(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - 事件方法

//: extension TalkingUserMomentVC {
extension UpNameViewController {
    //: func headerRefresh() {
    func welt() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        windowData()
    }

    //: func footerRefresh() {
    func noHide() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        windowData()
    }

    //: @objc func updateLikeNumber(notification: NSNotification) -> Void {
    @objc func modifyWith(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: var model: TalkingMomentModel = userinfo["model"] as! TalkingMomentModel
        var model: WithMomentModel = userinfo[(String(str_subjectData))] as! WithMomentModel
        //: if model.uid == EqualThen.share.loginUserMode.userID {
        if model.uid == EqualThen.share.loginUserMode.userID {
            //: model.isUserDetail = true
            model.isUserDetail = true
        }
        //: for i in 0..<self.dataSourceArr.count {
        for i in 0 ..< self.dataSourceArr.count {
            //: let tmodel = self.dataSourceArr[i]
            let tmodel = self.dataSourceArr[i]
            //: if model.mid == tmodel.mid {
            if model.mid == tmodel.mid {
                //: self.dataSourceArr[i] = model
                self.dataSourceArr[i] = model
                //: self.mainTableView.reloadRows(at: [IndexPath.init(row: i, section: 0)], with: .none)
                self.mainTableView.reloadRows(at: [IndexPath(row: i, section: 0)], with: .none)
                //: return
                return
            }
        }
    }

    //: func deleteCell(model: TalkingMomentModel, index: Int) {
    func window(model: WithMomentModel, index: Int) {
        //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
        let vc = OnViewDelegate(frame: self.view.frame)

        //: if model.pinCount<3 {
        if model.pinCount < 3 {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.videoList(cellTitleList: [(String(str_selectedTitle.suffix(4)) + "n from" + String(str_viewWorldLetValue.prefix(8))).localized, (String(str_hiddenName)).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Pin to profile".localized, "Delete Post".localized])
                vc.videoList(cellTitleList: [(String(str_textValue.prefix(5)) + "o pro" + str_informationTitle.replacingOccurrences(of: "block", with: "il")).localized, (String(str_hiddenName)).localized])
            }
            //: } else {
        } else {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.videoList(cellTitleList: [(String(str_selectedTitle.suffix(4)) + "n from" + String(str_viewWorldLetValue.prefix(8))).localized, (String(str_hiddenName)).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Delete Post".localized])
                vc.videoList(cellTitleList: [(String(str_hiddenName)).localized])
            }
        }

        //: vc.munuBlock = { [weak self] index, str in
        vc.munuBlock = { [weak self] index, str in
            //: guard let self = self else {return}
            guard let self = self else { return }

            //: if str == "Unpin from profile".localized {
            if str == (String(str_selectedTitle.suffix(4)) + "n from" + String(str_viewWorldLetValue.prefix(8))).localized {
                //: self.topMoment(isTop: 0, model: model)
                self.giftModel(isTop: 0, model: model)
                //: } else if str == "Pin to profile".localized {
            } else if str == (String(str_textValue.prefix(5)) + "o pro" + str_informationTitle.replacingOccurrences(of: "block", with: "il")).localized {
                //: self.topMoment(isTop: 1, model: model)
                self.giftModel(isTop: 1, model: model)
                //: } else if str == "Delete Post".localized {
            } else if str == (String(str_hiddenName)).localized {
                //: ProgressHUD.show()
                ModelReactiveCompatible.fromTarget()
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["id"] = model.mid
                dict["id"] = model.mid
                //: TalkingMomentRequestTool.req_DeleteMoment(params: dict) { succeed, result, errorModel in
                StreetSmartReactiveCompatible.trademark(params: dict) { succeed, _, errorModel in
                    //: ProgressHUD.dismiss()
                    ModelReactiveCompatible.dataConverterCan()
                    //: if succeed {
                    if succeed {
                        //: if index<self.dataSourceArr.count {
                        if index < self.dataSourceArr.count {
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.mainTableView.mj_header?.beginRefreshing()
                            self.mainTableView.mj_header?.beginRefreshing()
                            //: } else if self.dataSourceArr.count == 1 {
                        } else if self.dataSourceArr.count == 1 {
                            //: self.dataSourceArr.removeAll()
                            self.dataSourceArr.removeAll()
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.view.addSubview(self.emptyView)
                            self.view.addSubview(self.emptyView)
                        }
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.oversight(showMsg: errorModel!.errorMsg)
                    }
                }
            }
        }
    }

    //: func topMoment(isTop: Int, model: TalkingMomentModel) {
    func giftModel(isTop: Int, model: WithMomentModel) {
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = model.mid
        dict[(String(str_bagValue))] = model.mid
        //: dict["status"] = isTop
        dict[(String(str_viewLastData))] = isTop
        //: TalkingMomentRequestTool.req_TopMoment(params: dict) { succeed, result, errorModel in
        StreetSmartReactiveCompatible.portionEqual(params: dict) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: if succeed {
            if succeed {
                //: let str = isTop==1 ? "Your post has been pinned".localized : "Your post has been Unpinned".localized
                let str = isTop == 1 ? (String(str_indexData.suffix(6)) + "ost h" + String(str_byName.prefix(6)) + String(str_playPointCollectionName.suffix(8))).localized : (String(str_addPlaceTitle) + String(str_upName)).localized
                //: self.func__showStatusBarSuccessMsg(showMsg: str)
                self.fileFirst(showMsg: str)
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
                //: self.mainTableView.mj_header?.beginRefreshing()
                self.mainTableView.mj_header?.beginRefreshing()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.oversight(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - UITableViewDelegate,UITableViewdataSourceArr

//: extension TalkingUserMomentVC: UITableViewDelegate, UITableViewDataSource {
extension UpNameViewController: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.dataSourceArr.count
        return self.dataSourceArr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: return model.itemHeight ?? 56
        return model.itemHeight ?? 56
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingMomentItemCell"
        let identifier = (String(str_whiteData.prefix(6)) + "gMom" + String(str_kitContent.prefix(6)) + "mCel" + str_backgroundData.replacingOccurrences(of: "block", with: "l"))
        //: var cell = TalkingMomentItemCell(style: .default, reuseIdentifier: identifier, isMyHost: true)
        var cell = EscapedView(style: .default, reuseIdentifier: identifier, isMyHost: true)
        //: let model: TalkingMomentModel = self.dataSourceArr[indexPath.row]
        let model: WithMomentModel = self.dataSourceArr[indexPath.row]
        //: cell.configCell(model: model)
        cell.lessToolBind(model: model)
        //: cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
        cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.deleteCell(model: model, index: indexPath.row)
            self.window(model: model, index: indexPath.row)
            //: }).disposed(by: cell.cellDisposeBag )
        }).disposed(by: cell.cellDisposeBag)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, willDisplay _: UITableViewCell, forRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: let vc =  TalkingMomentDetailVC.init(model: model)
        let vc = PoreViewDelegate(model: model)
        //: vc.delegete = { [weak self] in
        vc.delegete = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if indexPath.row<self.dataSourceArr.count {
            if indexPath.row < self.dataSourceArr.count {
                //: self.dataSourceArr.remove(at: indexPath.row)
                self.dataSourceArr.remove(at: indexPath.row)
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
            }
        }
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingUserMomentVC {
extension UpNameViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func setupAdd() {
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.imageColor()
        //: self.title = "Posts".localized
        self.title = (String(str_directValue.prefix(5))).localized
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)

        //: self.view.addSubview(mainTableView)
        self.view.addSubview(mainTableView)
        //: mainTableView.register(TalkingMomentItemCell.self, forCellReuseIdentifier: "TalkingMomentItemCell")
        mainTableView.register(EscapedView.self, forCellReuseIdentifier: (String(str_whiteData.prefix(6)) + "gMom" + String(str_kitContent.prefix(6)) + "mCel" + str_backgroundData.replacingOccurrences(of: "block", with: "l")))
        //: mainTableView.dataSource = self
        mainTableView.dataSource = self
        //: mainTableView.delegate = self
        mainTableView.delegate = self
        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func sendShow() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func calorieChart() {
        //: mainTableView.addHeaderRefresh { [weak self] in
        mainTableView.addHeader { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.welt()
        }
        //: mainTableView.addFooterRefresh { [weak self] in
        mainTableView.fromStatus { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.noHide()
        }

        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateLikeNumber(notification:)), name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(modifyWith(notification:)), name: kLet_formalShowData, object: nil)
    }
}
