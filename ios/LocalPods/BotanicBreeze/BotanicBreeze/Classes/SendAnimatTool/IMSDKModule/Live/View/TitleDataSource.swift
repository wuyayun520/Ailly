
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_labContent:[UInt8] = [0x9b,0xa0,0x9b,0xa6,0x5a,0x95,0xa1,0x96,0x97,0xa4,0x6c,0x5b,0x52,0x9a,0x93,0xa5,0x52,0xa0,0xa1,0xa6,0x52,0x94,0x97,0x97,0xa0,0x52,0x9b,0x9f,0xa2,0x9e,0x97,0x9f,0x97,0xa0,0xa6,0x97,0x96]

fileprivate func asDataScript(window num: UInt8) -> UInt8 {
    let value = Int(num) - 50
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Online Users" :*/
fileprivate let str_nameContent:String = "make true not importOnline"
fileprivate let str_equalTitle:String = "input gift Users"

/*: "UpViewCell" :*/
fileprivate let str_indexTitle:String = "sign menu selfTalki"
fileprivate let str_fromTitle:String = "ngLivactual gift view line"
fileprivate let str_giftName:String = "you request view frameOnli"
fileprivate let str_modelName:String = "tCellcolor label photo self data"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleDataSource.swift
//  BotanicBreeze
//
//  Created by Charlotte on 2024/8/15.
//

//: import UIKit
import UIKit

//: class TalkingLiveRoomOnlineListView: UIView {
class TitleDataSource: UIView {
    //: private let contentV_H = (344+kDeviceSafeBottomHeight)
    private let contentV_H = (344 + kLet_nextData)
    //: private var DataSource: [TalkingLiveRoomOnlineListModel] = []
    private var DataSource: [HeadTransformable] = []
    //: private var chatGroupId = ""
    private var chatGroupId = ""
    // 点击cellBlock
    //: var touchIconBtnBlock: ((_ uid: String) -> Void)?
    var touchIconBtnBlock: ((_ uid: String) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        magnitudeervalSubviews()
        //: setupSubViewsConstraint()
        buttonConversion()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_labContent.map{asDataScript(window: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var dismissBtn: UIButton = {
    private lazy var dismissBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(bgDismissButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(attentionWrap), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.Corner(width: ScreenWidth,
        v.showEqual(width: kLet_cameraValue,
                    //: height: contentV_H,
                    height: contentV_H,
                    //: corners: [.topLeft, .topRight],
                    corners: [.topLeft, .topRight],
                    //: cornerRadii: .init(width: 12, height: 12))
                    cornerRadii: .init(width: 12, height: 12))
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: return v
        return v
        //: }()
    }()

    //: private lazy var tipsLb: UILabel = {
    private lazy var tipsLb: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangWithDiameter(fontSize: 20)
        lb.font = UIFont.pingfangWithDiameter(fontSize: 20)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.executeTo()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.text = "Online Users".localized
        lb.text = (String(str_nameContent.suffix(6)) + String(str_equalTitle.suffix(6))).localized
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.sectionHeaderHeight = 0
        table.sectionHeaderHeight = 0
        //: table.sectionFooterHeight = 0
        table.sectionFooterHeight = 0
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().sectionHeaderTopPadding = 0
            }
        }
        //: table.register(TalkingLiveRoomOnlineListCell.self, forCellReuseIdentifier: TalkingLiveRoomOnlineListCell.className())
        table.register(UpViewCell.self, forCellReuseIdentifier: UpViewCell.className())

        //: return table
        return table
        //: }()
    }()

    // MARK: - Lazy load

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: let view = EmptyView()
        let view = EmptyView()
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingLiveRoomOnlineListView {
extension TitleDataSource {
    //: private func reqData() {
    private func attachData() {
        //: TalkingAudienceManager().req_liveRoomOnlineList(chatGroupId: self.chatGroupId) { succeed, result, errorModel in
        ExecutiveAudienceManager().permission(chatGroupId: self.chatGroupId) { succeed, result, _ in
            //: self.tableView.endRefresh()
            self.tableView.cancelButton()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]

                //: var dataArr: [TalkingLiveRoomOnlineListModel] = []
                var dataArr: [HeadTransformable] = []

                //: if let datas = Array<TalkingLiveRoomOnlineListModel>.deserialize(from: array as? Array) {
                if let datas = Array<HeadTransformable>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingLiveRoomOnlineListModel] ?? []))
                    dataArr.append(contentsOf: (datas as? [HeadTransformable] ?? []))
                }
                //: self.DataSource = dataArr
                self.DataSource = dataArr
                //: if dataArr.count>0 {
                if dataArr.count > 0 {
                    //: self.emptyView.removeFromSuperview()
                    self.emptyView.removeFromSuperview()
                }
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingLiveRoomOnlineListView: UITableViewDelegate, UITableViewDataSource {
extension TitleDataSource: UITableViewDelegate, UITableViewDataSource {
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
        //: return 68
        return 68
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingLiveRoomOnlineListCell"
        let identifier = (String(str_indexTitle.suffix(5)) + String(str_fromTitle.prefix(5)) + "eRoom" + String(str_giftName.suffix(4)) + "neLis" + String(str_modelName.prefix(5)))
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingLiveRoomOnlineListCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? UpViewCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingLiveRoomOnlineListCell(style: .default, reuseIdentifier: identifier)
            cell = UpViewCell(style: .default, reuseIdentifier: identifier)
        }
        //: cell?.setCell(model: self.DataSource[indexPath.row], index: indexPath.row)
        cell?.tantamountStart(model: self.DataSource[indexPath.row], index: indexPath.row)
        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: self.dismiss()
        self.untilCover()
        //: let model = self.DataSource[indexPath.row]
        let model = self.DataSource[indexPath.row]
        //: self.touchIconBtnBlock?(model.uid.stringValue)
        self.touchIconBtnBlock?(model.uid.stringValue)
    }
}

// MARK: - 展示/隐藏视图

//: extension TalkingLiveRoomOnlineListView {
extension TitleDataSource {
    /// 消除视图按钮
    //: @objc private func bgDismissButtonClick() {
    @objc private func attentionWrap() {
        //: dismiss()
        untilCover()
    }

    /// 展示视图
    //: func showView(chatGroupId: String) {
    func viewTime(chatGroupId: String) {
        //: self.chatGroupId = chatGroupId
        self.chatGroupId = chatGroupId
        //: currentViewController()?.view.addSubview(self)
        infoController()?.view.addSubview(self)
        //: self.contentView.isHidden = false
        self.contentView.isHidden = false
        //: self.contentView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: contentV_H)
        self.contentView.frame = CGRect(x: 0, y: kLet_clickData, width: kLet_cameraValue, height: contentV_H)
        //: reqData()
        attachData()
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame.origin.y -= self.contentView.height
            self.contentView.frame.origin.y -= self.contentView.height
        }
    }

    /// 隐藏视图
    //: func dismiss() {
    func untilCover() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame.origin.y += self.contentView.height
            self.contentView.frame.origin.y += self.contentView.height
            //: } completion: { finish in
        } completion: { _ in
            //: self.removeFromSuperview()
            self.removeFromSuperview()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomOnlineListView {
extension TitleDataSource {
    /// 添加视图
    //: private func setupSubviews() {
    private func magnitudeervalSubviews() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(dismissBtn)
        addSubview(dismissBtn)
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(tipsLb)
        contentView.addSubview(tipsLb)
        //: contentView.addSubview(tableView)
        contentView.addSubview(tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func buttonConversion() {
        //: dismissBtn.snp.makeConstraints { make in
        dismissBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: tipsLb.snp.makeConstraints { make in
        tipsLb.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.top.equalTo(tipsLb.snp.bottom).offset(20)
            make.top.equalTo(tipsLb.snp.bottom).offset(20)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.bottom.equalTo(-kDeviceSafeBottomHeight)
            make.bottom.equalTo(-kLet_nextData)
        }

        //: let style = EmptyStyle()
        let style = ShadowViewEmptyStyle()
        //: emptyView = EmptyView.init(frame: CGRect(x: 0, y: -100, width: ScreenWidth, height: contentV_H+100), style: style)
        emptyView = EmptyView(frame: CGRect(x: 0, y: -100, width: kLet_cameraValue, height: contentV_H + 100), style: style)
        //: self.contentView.addSubview(emptyView)
        self.contentView.addSubview(emptyView)
    }
}
