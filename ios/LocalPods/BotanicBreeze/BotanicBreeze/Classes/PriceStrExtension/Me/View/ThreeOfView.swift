
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_colorName:[UInt8] = [0x1a,0x1f,0x1a,0x25,0xd9,0x14,0x20,0x15,0x16,0x23,0xeb,0xda,0xd1,0x19,0x12,0x24,0xd1,0x1f,0x20,0x25,0xd1,0x13,0x16,0x16,0x1f,0xd1,0x1a,0x1e,0x21,0x1d,0x16,0x1e,0x16,0x1f,0x25,0x16,0x15]

fileprivate func shadowModel(path num: UInt8) -> UInt8 {
    let value = Int(num) - 177
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_me_wallet" :*/
fileprivate let str_dataName:[Character] = ["i","c","o","n","_","m","e","_","w","a","l","l","e","t"]

/*: "icon_me_dgc" :*/
fileprivate let str_liveName:[Character] = ["i","c","o","n","_","m","e"]
fileprivate let str_pathValue:String = "cell collection else title for_dgc"

/*: "icon_me_friends" :*/
fileprivate let str_insideTempText:String = "icusern"
fileprivate let str_whiteTitle:String = "FRIENDS"

/*: "xicon_me_posts" :*/
fileprivate let str_videoTitleValue:String = "at between year ifxicon_m"
fileprivate let str_colorGiftName:String = "start"
fileprivate let str_windowValue:[Character] = ["_","p","o","s","t","s"]

/*: "icon_me_Service" :*/
fileprivate let str_pictureData:String = "any view neticon_me"
fileprivate let str_secondTitle:[Character] = ["_","S","e","r","v","i","c","e"]

/*: "icon_me_game" :*/
fileprivate let str_publishData:String = "icon_meimage session title make"
fileprivate let str_handleName:String = "import conversation_game"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ThreeOfView.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeThreeColumnsCell: UITableViewCell {
class ThreeOfView: UITableViewCell {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(BeautyToCompatibleValue, String)]()
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        imageSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_colorName.map{shadowModel(path: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 0
        layout.minimumLineSpacing = 0
        //: layout.minimumInteritemSpacing = 0
        layout.minimumInteritemSpacing = 0
        //: layout.scrollDirection = .vertical
        layout.scrollDirection = .vertical
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .white
        collectionView.backgroundColor = .white
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        //: collectionView.layer.cornerRadius = 6
        collectionView.layer.cornerRadius = 6
        //: collectionView.layer.masksToBounds = true
        collectionView.layer.masksToBounds = true
        //: collectionView.register(TalkingMeItemCell.self, forCellWithReuseIdentifier: TalkingMeItemCell.className())
        collectionView.register(StatusNameItemCell.self, forCellWithReuseIdentifier: StatusNameItemCell.className())
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
        }
        //: return collectionView
        return collectionView
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeThreeColumnsCell {
extension ThreeOfView {
    //: func setViewData() {
    func collectionCuttingEdgeSituate() {
        //: if EqualThen.share.appStatus == AppSkinStatus.normal.rawValue {
        if EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue { // 默认模式
            //: if EqualThen.share.loginUserMode.sex == Gender.female.rawValue {
            if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue { // 女性
                //: tupleData = [(.My_Wallet, "icon_me_wallet"),
                tupleData = [(.My_Wallet, (String(str_dataName))),
                             //: (.Daily_Gold_Coins, "icon_me_dgc"),
                             (.Daily_Gold_Coins, (String(str_liveName) + String(str_pathValue.suffix(4)))),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (str_insideTempText.replacingOccurrences(of: "user", with: "o") + "_me_" + str_whiteTitle.lowercased())),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (String(str_videoTitleValue.suffix(7)) + str_colorGiftName.replacingOccurrences(of: "start", with: "e") + String(str_windowValue))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(str_pictureData.suffix(7)) + String(str_secondTitle)))]

                //: } else {
            } else {
                //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
                tupleData = [(.Daily_Gold_Coins, (String(str_liveName) + String(str_pathValue.suffix(4)))),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (str_insideTempText.replacingOccurrences(of: "user", with: "o") + "_me_" + str_whiteTitle.lowercased())),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (String(str_videoTitleValue.suffix(7)) + str_colorGiftName.replacingOccurrences(of: "start", with: "e") + String(str_windowValue))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(str_pictureData.suffix(7)) + String(str_secondTitle)))]
            }
            // 游戏入口
            //: if EqualThen.share.appUserConfigMode.gameShowBit == 1 ||
            if EqualThen.share.appUserConfigMode.gameShowBit == 1 ||
                //: EqualThen.share.appUserConfigMode.gameShowBit == 3 {
                EqualThen.share.appUserConfigMode.gameShowBit == 3
            {
                //: tupleData.append((.My_Game, "icon_me_game"))
                tupleData.append((.My_Game, (String(str_publishData.prefix(7)) + String(str_handleName.suffix(5)))))
            }

            //: } else {
        } else { // 审核模式
            //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
            tupleData = [(.Daily_Gold_Coins, (String(str_liveName) + String(str_pathValue.suffix(4)))),
                         //: (.My_Posts, "xicon_me_posts"),
                         (.My_Posts, (String(str_videoTitleValue.suffix(7)) + str_colorGiftName.replacingOccurrences(of: "start", with: "e") + String(str_windowValue))),
                         //: (.My_Assistant, "icon_me_Service")]
                         (.My_Assistant, (String(str_pictureData.suffix(7)) + String(str_secondTitle)))]
        }

        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
        //: setupSubViewsConstraint()
        viewsSize()
    }
}

// MARK: - Delegate

//: extension TalkingMeThreeColumnsCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension ThreeOfView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.tupleData.count
        return self.tupleData.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingMeItemCell.className(), for: indexPath) as! TalkingMeItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StatusNameItemCell.className(), for: indexPath) as! StatusNameItemCell
        //: cell.refreshItem(tupleData[indexPath.row])
        cell.terrace(tupleData[indexPath.row])
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Wallet:
        case .My_Wallet:
            //: EditTextThen.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            EditTextThen.share.hailType(webViewType: .RechargeFullPage)

        //: case .Daily_Gold_Coins:
        case .Daily_Gold_Coins:
            //: EditTextThen.share.func__pushToSubscribePageWebVC()
            EditTextThen.share.whole()

        //: case .Invite_Friends:
        case .Invite_Friends:
            //: EditTextThen.share.func__pushToWebVC(webViewType: .InviteFriends)
            EditTextThen.share.hailType(webViewType: .InviteFriends)

        //: case .My_Posts:
        case .My_Posts:
            //: let vc = TalkingUserMomentVC.init(uid: EqualThen.share.loginUserMode.userID)
            let vc = UpNameViewController(uid: EqualThen.share.loginUserMode.userID)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.infoController()?.navigationController?.pushViewController(vc, animated: true)

        //: case .My_Assistant:
        case .My_Assistant:
            //: EditTextThen.share.func__pushToWebVC(webViewType: .FAQ)
            EditTextThen.share.hailType(webViewType: .FAQ)

        //: case .My_Game:
        case .My_Game:
            //: let vc = TalkingGameListViewController()
            let vc = ListGrantViewDelegate()
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.infoController()?.navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: return CGSize(width: (ScreenWidth-30)/3, height: 84.0)
        return CGSize(width: (kLet_cameraValue - 30) / 3, height: 84.0)
    }
}

// MARK: - Layout

//: extension TalkingMeThreeColumnsCell {
extension ThreeOfView {
    /// 添加视图
    //: private func setupSubviews() {
    private func imageSubviews() {
        //: self.contentView.addSubview(collectionView)
        self.contentView.addSubview(collectionView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func viewsSize() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(15)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: let height = ceil(Double(self.tupleData.count)/Double(3))*84+15
            let height = ceil(Double(self.tupleData.count) / Double(3)) * 84 + 15
            //: make.height.equalTo(height)
            make.height.equalTo(height)
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
    }
}

// MARK: - StatusNameItemCell

//: class TalkingMeItemCell: UICollectionViewCell {
class StatusNameItemCell: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_colorName.map{shadowModel(path: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.contentView.addSubview(icon)
        self.contentView.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(18)
            make.top.equalToSuperview().offset(18)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 38, height: 38))
            make.size.equalTo(CGSize(width: 38, height: 38))
        }

        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(8)
            make.top.equalTo(icon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalToSuperview()
            make.width.equalToSuperview()
        }
    }

    /// 刷新
    //: func refreshItem(_ data: (CenterItemType, String)) {
    func terrace(_ data: (BeautyToCompatibleValue, String)) {
        //: nameLab.text = data.0.rawValue.localized
        nameLab.text = data.0.rawValue.localized
        //: icon.image = UIImage.eponymUp(name: data.1)
        icon.image = UIImage.eponymUp(name: data.1)
    }

    // MARK: - Lazy Laod

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.executeTo()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 14)
        lab.font = .pingfang(type: .Regular, fontSize: 14)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}
