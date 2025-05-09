
//: Declare String Begin

/*: "TalkingUserDetailTagMeCell" :*/
fileprivate let str_countText:[Character] = ["T","a"]
fileprivate let str_toCropTitle:String = "llabeling"
fileprivate let str_allValue:String = "Detaiup add info guard any"
fileprivate let str_attentionName:String = "eCellguard color"

/*: "TalkingUserDetailTagInterestCell" :*/
fileprivate let str_cameraValue:[UInt8] = [0xb9,0x8c,0x81,0x86,0x84,0x83,0x8a,0xb8,0x9e,0x88,0x9f,0xa9,0x88,0x99,0x8c,0x84,0x81,0xb9,0x8c,0x8a,0xa4,0x83,0x99,0x88,0x9f,0x88,0x9e,0x99,0xae,0x88,0x81,0x81]

private func centerLab(layer num: UInt8) -> UInt8 {
    return num ^ 237
}

/*: "TalkingAIHobbyCell" :*/
fileprivate let str_labelClearData:String = "Talkinvalue time self else"
fileprivate let str_leadingTitle:String = "image send label add tobbyCe"
fileprivate let str_hiddenName:String = "LL"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FileObjectProtocol.swift
//  AbroadTalking
//
//  Created by young on 2023/5/22.
//

//: import UIKit
import UIKit

//: import JXPagingView
import JXPagingView

//: class TalkingUserDetailProfileViewController: TalkingBaseViewController {
class FileObjectProtocol: SeamViewController {
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = OccurrentInfoModel() // 用户资料
    //: private var sectionArr = [TUserDetailCellType.profileType]
    private var sectionArr = [BottomCaseIterable.profileType] // 分区
    //: private var giftsArr = [TalkingUserReceivedGiftModel]()
    private var giftsArr = [GrantHandyJSON]() // 收到的礼物
    //: private var tableHeightModel = TUserDetailTableHeightModel()
    private var tableHeightModel = TableReactiveCompatible() // 记录分区高度
    //: private var aboutme_cellH = 0.0, interest_cellH = 0.0
    private var aboutme_cellH = 0.0, interest_cellH = 0.0 // 高度记录

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true

        //: setupSubviews()
        stack()
        //: setupSubViewsConstraint()
        doing()
    }

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let tableView = UITableView(frame: .zero, style: .plain)
        let tableView = UITableView(frame: .zero, style: .plain)
        //: tableView.backgroundColor = .clear
        tableView.backgroundColor = .clear
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: UserDetailBottomView_H, right: 0)
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: kLet_giftText, right: 0)
        //: tableView.showsHorizontalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        //: tableView.showsVerticalScrollIndicator = false
        tableView.showsVerticalScrollIndicator = false
        //: tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        //: tableView.register(TalkingUserDetailProfileCell.self, forCellReuseIdentifier: TalkingUserDetailProfileCell.className())
        tableView.register(IndexProfileCell.self, forCellReuseIdentifier: IndexProfileCell.className())
        //: tableView.register(TalkingUserDetailTagCell.self, forCellReuseIdentifier: "TalkingUserDetailTagMeCell")
        tableView.register(TextThen.self, forCellReuseIdentifier: (String(str_countText) + str_toCropTitle.replacingOccurrences(of: "label", with: "k") + "User" + String(str_allValue.prefix(5)) + "lTagM" + String(str_attentionName.prefix(5))))
        //: tableView.register(TalkingUserDetailTagCell.self, forCellReuseIdentifier: "TalkingUserDetailTagInterestCell")
        tableView.register(TextThen.self, forCellReuseIdentifier: String(bytes: str_cameraValue.map{centerLab(layer: $0)}, encoding: .utf8)!)
        //: tableView.register(TalkingUserDetailGiftCell.self, forCellReuseIdentifier: TalkingUserDetailGiftCell.className())
        tableView.register(PopFlowLayout.self, forCellReuseIdentifier: PopFlowLayout.className())
        //: tableView.register(TalkingUserDetailTagCell.self, forCellReuseIdentifier: "TalkingAIHobbyCell")
        tableView.register(TextThen.self, forCellReuseIdentifier: (String(str_labelClearData.prefix(6)) + "gAIHo" + String(str_leadingTitle.suffix(5)) + str_hiddenName.lowercased()))
        //: return tableView
        return tableView
        //: }()
    }()
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingUserDetailProfileViewController: UITableViewDelegate, UITableViewDataSource {
extension FileObjectProtocol: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return sectionArr.count
        return sectionArr.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cellType: TUserDetailCellType = self.sectionArr[indexPath.section]
        let cellType: BottomCaseIterable = self.sectionArr[indexPath.section]
        //: switch cellType {
        switch cellType {
        //: case .profileType:
        case .profileType:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserDetailProfileCell.className(), for: indexPath) as! TalkingUserDetailProfileCell
            let cell = tableView.dequeueReusableCell(withIdentifier: IndexProfileCell.className(), for: indexPath) as! IndexProfileCell
            //: cell.configWithDataModel(userModel: userInfoModel)
            cell.renameImage(userModel: userInfoModel)
            //: self.setProfileCellHeight(signAttribute: cell.signLab.attributedText ?? NSAttributedString.init(string: ""))
            self.reinIn(signAttribute: cell.signLab.attributedText ?? NSAttributedString(string: ""))
            //: return cell
            return cell

        //: case .aboutMeType:
        case .aboutMeType:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: "TalkingUserDetailTagMeCell", for: indexPath) as! TalkingUserDetailTagCell
            let cell = tableView.dequeueReusableCell(withIdentifier: (String(str_countText) + str_toCropTitle.replacingOccurrences(of: "label", with: "k") + "User" + String(str_allValue.prefix(5)) + "lTagM" + String(str_attentionName.prefix(5))), for: indexPath) as! TextThen
            //: cell.configTagCellWithDataModel(type: TUserDetailCellType.aboutMeType, userModel: userInfoModel)
            cell.deleteModel(type: BottomCaseIterable.aboutMeType, userModel: userInfoModel)
            //: cell.collectionLayoutSubviewBlock = {[weak self] collectH in
            cell.collectionLayoutSubviewBlock = { [weak self] collectH in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.aboutme_cellH = collectH
                self.aboutme_cellH = collectH
                //: tableView.reloadData()
                tableView.reloadData()
            }
            //: return cell
            return cell

        //: case .intersetsType:
        case .intersetsType:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: "TalkingUserDetailTagInterestCell", for: indexPath) as! TalkingUserDetailTagCell
            let cell = tableView.dequeueReusableCell(withIdentifier: String(bytes: str_cameraValue.map{centerLab(layer: $0)}, encoding: .utf8)!, for: indexPath) as! TextThen
            //: cell.configTagCellWithDataModel(type: TUserDetailCellType.intersetsType, userModel: userInfoModel)
            cell.deleteModel(type: BottomCaseIterable.intersetsType, userModel: userInfoModel)
            //: cell.collectionLayoutSubviewBlock = {[weak self] collectH in
            cell.collectionLayoutSubviewBlock = { [weak self] collectH in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.interest_cellH = collectH
                self.interest_cellH = collectH
                //: tableView.reloadData()
                tableView.reloadData()
            }
            //: return cell
            return cell

        //: case .giftType:
        case .giftType:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserDetailGiftCell.className(), for: indexPath) as! TalkingUserDetailGiftCell
            let cell = tableView.dequeueReusableCell(withIdentifier: PopFlowLayout.className(), for: indexPath) as! PopFlowLayout
            //: cell.giftsDataArray = self.giftsArr
            cell.giftsDataArray = self.giftsArr
            //: self.tableHeightModel.gift_height = cell.tempH
            self.tableHeightModel.gift_height = cell.tempH
            //: return cell
            return cell

        //: default:
        default:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
            let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
            //: cell.selectionStyle = .none
            cell.selectionStyle = .none
            //: return cell
            return cell
        }
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let cellType: TUserDetailCellType = self.sectionArr[indexPath.section]
        let cellType: BottomCaseIterable = self.sectionArr[indexPath.section]
        //: switch cellType {
        switch cellType {
        //: case .profileType:
        case .profileType:
            //: return tableHeightModel.profile_height
            return tableHeightModel.profile_height
        //: case .aboutMeType:
        case .aboutMeType:
            //: return self.getAboutMeCellHeight()
            return self.pathGet()
        //: case .intersetsType:
        case .intersetsType:
            //: return self.getMyInterestsCellHeight()
            return self.compartment()
        //: case .giftType:
        case .giftType:
            //: return self.tableHeightModel.gift_height
            return self.tableHeightModel.gift_height

        //: default:
        default:
            //: return 0
            return 0
        }
    }
}

// MARK: - Cell高度计算

//: extension TalkingUserDetailProfileViewController {
extension FileObjectProtocol {
    //: private func setProfileCellHeight(signAttribute: NSAttributedString) {
    private func reinIn(signAttribute: NSAttributedString) {
        //: var tempH = 15+32+32+32+32+30.0
        var tempH = 15 + 32 + 32 + 32 + 32 + 30.0
        //: var labelH = signAttribute.boundingRect(with: CGSize(width: ScreenWidth-58, height: CGFloat(MAXFLOAT)), options: [.usesLineFragmentOrigin, .usesFontLeading], context: nil).size.height
        var labelH = signAttribute.boundingRect(with: CGSize(width: kLet_cameraValue - 58, height: CGFloat(MAXFLOAT)), options: [.usesLineFragmentOrigin, .usesFontLeading], context: nil).size.height
        //: let signIsEmpty = userInfoModel.signature?.isEmptyString
        let signIsEmpty = userInfoModel.signature?.isEmptyString
        //: if signIsEmpty == false {
        if signIsEmpty == false {
            //: if labelH < 22 {
            if labelH < 22 {
                //: labelH = 22
                labelH = 22
            }
            //: tempH += labelH
            tempH += labelH
        }
        //: self.tableHeightModel.profile_height = tempH
        self.tableHeightModel.profile_height = tempH
    }

    //: private func getAboutMeCellHeight() -> CGFloat {
    private func pathGet() -> CGFloat {
        //: if self.userInfoModel.aboutMe.isEmpty {
        if self.userInfoModel.aboutMe.isEmpty {
            //: return 0
            return 0
        }
        //: if aboutme_cellH <= 1 {
        if aboutme_cellH <= 1 {
            //: return 65 + 30
            return 65 + 30
        }
        //: return 65 + aboutme_cellH
        return 65 + aboutme_cellH
    }

    //: private func getMyInterestsCellHeight() -> CGFloat {
    private func compartment() -> CGFloat {
        //: if self.userInfoModel.interest.isEmpty {
        if self.userInfoModel.interest.isEmpty {
            //: return 0
            return 0
        }
        //: if interest_cellH <= 1 {
        if interest_cellH <= 1 {
            //: return 65 + 30
            return 65 + 30
        }
        //: return 65 + interest_cellH
        return 65 + interest_cellH
    }
}

// MARK: - JXPagerViewListViewDelegate

//: extension TalkingUserDetailProfileViewController: JXPagingViewListViewDelegate {
extension FileObjectProtocol: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.tableView
        return self.tableView
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - Layout

//: extension TalkingUserDetailProfileViewController {
extension FileObjectProtocol {
    /// 刷新
    //: func refreshProfileSub(_ giftArr: [TalkingUserReceivedGiftModel],
    func subItemArray(_ giftArr: [GrantHandyJSON],
                      //: _ sectionArr: [TUserDetailCellType],
                      _ sectionArr: [BottomCaseIterable],
                      //: _ userModel: TalkingUserInfoModel) {
                      _ userModel: OccurrentInfoModel)
    {
        //: self.giftsArr = giftArr
        self.giftsArr = giftArr
        //: self.userInfoModel = userModel
        self.userInfoModel = userModel
        //: let uid = Int(userModel.uid) ?? 0
        let uid = Int(userModel.uid) ?? 0
        //: self.sectionArr = sectionArr
        self.sectionArr = sectionArr
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func stack() {
        //: self.view.backgroundColor = .clear
        self.view.backgroundColor = .clear
        //: view.addSubview(tableView)
        view.addSubview(tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func doing() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
