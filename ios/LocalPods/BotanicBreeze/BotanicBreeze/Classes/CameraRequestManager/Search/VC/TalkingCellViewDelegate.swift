
//: Declare String Begin

/*: "Any" :*/
fileprivate let str_equalText:String = "Anyage log let final"

/*: "Reset" :*/
fileprivate let str_resValue:[Character] = ["R","e","s","e","t"]

/*: "Search" :*/
fileprivate let str_giftName:[Character] = ["S"]
fileprivate let str_iconText:[Character] = ["e","a","r","c","h"]

/*: "18-27" :*/
fileprivate let str_labelTitle:[Character] = ["1","8","-","2","7"]

/*: "28-37" :*/
fileprivate let str_buttonContent:String = "2with-37"

/*: "38-47" :*/
fileprivate let str_makeData:[Character] = ["3","8","-","4","7"]

/*: "48-57" :*/
fileprivate let str_modelContentValue:String = "48-57"

/*: "58+" :*/
fileprivate let str_headUpName:[Character] = ["5","8","+"]

/*: "Yes" :*/
fileprivate let str_sizeName:String = "Yesuser in need bag"

/*: "Nope" :*/
fileprivate let str_actionValue:String = "equal right to with toNope"

/*: "Age" :*/
fileprivate let str_dateName:String = "return color deadline muscle noAge"

/*: "Video Cover" :*/
fileprivate let str_sendValue:[Character] = ["V","i","d","e","o"," ","C","o","v","e","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingCellViewDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/5/16.
//

//: import UIKit
import UIKit

//: import JXPagingView
import JXPagingView

// 记录筛选条件
//: var SEARCH_AGE = "Any".localized
var kLet_tabScreenDeviceValue = (String(str_equalText.prefix(3))).localized
//: var SEARCH_VIDEOCOVER = "Any".localized
var kLet_keyIconTitle = (String(str_equalText.prefix(3))).localized

//: class TalkingSearchDetailViewController: TalkingBaseViewController {
class TalkingCellViewDelegate: SeamViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: setupSubviews()
        clickName()
        //: setupSubViewsConstraint()
        greetPath()
    }

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let tabV = UITableView(frame: CGRect.zero, style: .plain)
        let tabV = UITableView(frame: CGRect.zero, style: .plain)
        //: tabV.backgroundColor = self.view.backgroundColor
        tabV.backgroundColor = self.view.backgroundColor
        //: tabV.delegate = self
        tabV.delegate = self
        //: tabV.dataSource = self
        tabV.dataSource = self
        //: tabV.separatorStyle = .none
        tabV.separatorStyle = .none
        //: tabV.contentInset = UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0)
        tabV.contentInset = UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0)
        //: tabV.tableFooterView = UIView()
        tabV.tableFooterView = UIView()
        //: tabV.sectionFooterHeight = 0
        tabV.sectionFooterHeight = 0
        //: tabV.keyboardDismissMode = .onDrag
        tabV.keyboardDismissMode = .onDrag
        //: tabV.register(TalkingSearchDetailCell.self, forCellReuseIdentifier: TalkingSearchDetailCell.className())
        tabV.register(TalkingView.self, forCellReuseIdentifier: TalkingView.className())
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: tabV.contentInsetAdjustmentBehavior = .never
            tabV.contentInsetAdjustmentBehavior = .never
        }
        //: tabV.bounces = false
        tabV.bounces = false
        //: return tabV
        return tabV
        //: }()
    }()

    //: private lazy var resetBtn: UIButton = {
    private lazy var resetBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: btn.setTitle("Reset".localized, for: .normal)
        btn.setTitle((String(str_resValue)).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.plaster(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.plaster().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(resetButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(makeClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var searchBtn: UIButton = {
    private lazy var searchBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 18)
        //: btn.setTitle("Search".localized, for: .normal)
        btn.setTitle((String(str_giftName) + String(str_iconText)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 150), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: actualWidth(w: 150), height: actualWidth(w: 50))), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(searchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(tenant), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var agePicker: TalkingNormalPickerView = {
    private lazy var agePicker: OverdoPickView = {
        //: let data = ["Any".localized, "18-27", "28-37", "38-47", "48-57", "58+"]
        let data = [(String(str_equalText.prefix(3))).localized, (String(str_labelTitle)), (str_buttonContent.replacingOccurrences(of: "with", with: "8")), (String(str_makeData)), (str_modelContentValue.capitalized), "58+"]
        //: let v = TalkingNormalPickerView(frame: .zero, data: data)
        let v = OverdoPickView(frame: .zero, data: data)
        //: v.completionHandle = { [weak self] value in
        v.completionHandle = { [weak self] value in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: SEARCH_AGE = value
            kLet_tabScreenDeviceValue = value
            //: self.valueArr[0] = SEARCH_AGE
            self.valueArr[0] = kLet_tabScreenDeviceValue
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var videoCoverPicker: TalkingNormalPickerView = {
    private lazy var videoCoverPicker: OverdoPickView = {
        //: let data = ["Any".localized, "Yes".localized, "Nope".localized]
        let data = [(String(str_equalText.prefix(3))).localized, (String(str_sizeName.prefix(3))).localized, (String(str_actionValue.suffix(4))).localized]
        //: let v = TalkingNormalPickerView(frame: .zero, data: data)
        let v = OverdoPickView(frame: .zero, data: data)
        //: v.completionHandle = { [weak self] value in
        v.completionHandle = { [weak self] value in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: SEARCH_VIDEOCOVER = value
            kLet_keyIconTitle = value
            //: self.valueArr[1] = SEARCH_VIDEOCOVER
            self.valueArr[1] = kLet_keyIconTitle
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleArr: [String] = {
    private lazy var titleArr: [String] = //: return ["Age".localized, "Video Cover".localized]
        [(String(str_dateName.suffix(3))).localized, (String(str_sendValue)).localized]
    //: }()

    //: private lazy var valueArr: [String] = {
    private lazy var valueArr: [String] = //: return [SEARCH_AGE, SEARCH_VIDEOCOVER]
        [kLet_tabScreenDeviceValue, kLet_keyIconTitle]
    //: }()
}

// MARK: - Event

//: extension TalkingSearchDetailViewController {
extension TalkingCellViewDelegate {
    //: @objc private func resetButtonClick() {
    @objc private func makeClick() {
        //: SEARCH_AGE = "Any".localized
        kLet_tabScreenDeviceValue = (String(str_equalText.prefix(3))).localized
        //: SEARCH_VIDEOCOVER = "Any".localized
        kLet_keyIconTitle = (String(str_equalText.prefix(3))).localized
        //: valueArr = [SEARCH_AGE, SEARCH_VIDEOCOVER]
        valueArr = [kLet_tabScreenDeviceValue, kLet_keyIconTitle]
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }

    // 通知首页刷新，返回
    //: @objc private func searchButtonClick() {
    @objc private func tenant() {
        //: NotificationCenter.default.post(name: SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION, object: self)
        NotificationCenter.default.post(name: kLet_tabCellName, object: self)
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

//: extension TalkingSearchDetailViewController: UITableViewDataSource, UITableViewDelegate {
extension TalkingCellViewDelegate: UITableViewDataSource, UITableViewDelegate {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: if EqualThen.share.loginUserMode.sex == Gender.female.rawValue {
        if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue { // 女性用户只展示Age
            //: return 1
            return 1
        }
        //: return titleArr.count
        return titleArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingSearchDetailCell.className(), for: indexPath) as! TalkingSearchDetailCell
        let cell = tableView.dequeueReusableCell(withIdentifier: TalkingView.className(), for: indexPath) as! TalkingView
        //: cell.refreshCell(title: titleArr[indexPath.row], value: valueArr[indexPath.row])
        cell.showValue(title: titleArr[indexPath.row], value: valueArr[indexPath.row])
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 50
        return 50
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: if indexPath.row == 0 {
        if indexPath.row == 0 {
            //: agePicker.normalSelectedComponent(value: SEARCH_AGE)
            agePicker.electValue(value: kLet_tabScreenDeviceValue)
            //: agePicker.showView()
            agePicker.anView()
            //: } else {
        } else {
            //: videoCoverPicker.normalSelectedComponent(value: SEARCH_VIDEOCOVER)
            videoCoverPicker.electValue(value: kLet_keyIconTitle)
            //: videoCoverPicker.showView()
            videoCoverPicker.anView()
        }
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingSearchDetailViewController: JXPagingViewListViewDelegate {
extension TalkingCellViewDelegate: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return UIScrollView()
        return UIScrollView()
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - Layout

//: extension TalkingSearchDetailViewController {
extension TalkingCellViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func clickName() {
        //: view.addSubview(tableView)
        view.addSubview(tableView)
        //: view.addSubview(resetBtn)
        view.addSubview(resetBtn)
        //: view.addSubview(searchBtn)
        view.addSubview(searchBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func greetPath() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: resetBtn.snp.makeConstraints { make in
        resetBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 150), height: actualWidth(w: 50)))
            make.size.equalTo(CGSize(width: actualWidth(w: 150), height: actualWidth(w: 50)))
            //: make.bottom.equalTo(-(40+kDeviceSafeBottomHeight))
            make.bottom.equalTo(-(40 + kLet_nextData))
        }

        //: searchBtn.snp.makeConstraints { make in
        searchBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.size.bottom.equalTo(resetBtn)
            make.size.bottom.equalTo(resetBtn)
        }
    }
}
