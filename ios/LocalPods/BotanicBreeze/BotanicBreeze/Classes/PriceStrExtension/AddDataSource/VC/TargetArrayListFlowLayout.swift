
//: Declare String Begin

/*: "EmptyCollectionReusableView" :*/
fileprivate let str_hiddenData:String = "Emptapp value let make processor"
fileprivate let str_ofPhotoNameValue:String = "CTIO"
fileprivate let str_keyText:[Character] = ["n","R","e","u","s","a","b","l","e","V","i","e","w"]

/*: "Uncover Your Admirers" :*/
fileprivate let str_modelValue:[Character] = ["U","n","c","o","v","e","r"," ","Y","o","u","r"," ","A","d"]
fileprivate let str_callHiddenData:String = "msizerers"

/*: "mf/newFeature/whoLikeMeList" :*/
fileprivate let str_likeName:[Character] = ["m","f","/","n","e","w","F","e","a","t","u","r","e","/","w","h","o","L","i","k","e","M","e","L","i","s"]
fileprivate let str_pushName:[Character] = ["t"]

/*: "mf/newFeature/whoVisitorMeList" :*/
fileprivate let str_clickValue:String = "mf/nelet else observer kind size"
fileprivate let str_renderCenterName:String = "ture/color load leading bottom margin"
fileprivate let str_myValue:String = "icookiet"

/*: "You've got no list yet." :*/
fileprivate let str_colorName:String = "You\'v"
fileprivate let str_pullFastValue:String = " no licount live detail"
fileprivate let str_nameContent:[Character] = ["t","."]

/*: "&type=0" :*/
fileprivate let str_labelName:String = "title info&type=0"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TargetArrayListFlowLayout.swift
//  BotanicBreeze
//
//  Created by Charlotte on 2025/2/19.
//

//: import UIKit
import UIKit

//: import JXSegmentedView
import JXSegmentedView

//: import JXPagingView
import JXPagingView

//: enum likeTab: Int {
enum likeTab: Int {
    //: case Likes = 1
    case Likes = 1
    //: case Visitors  = 2
    case Visitors = 2
}

//: class TalkingLikeListVC: TalkingBaseViewController {
class TargetArrayListFlowLayout: SeamViewController {
    // 页面类型
    //: var tabType: likeTab?
    var tabType: likeTab?
    //: var listData = Array<SocialUserListModel>()
    var listData = [ControlWithModelType]()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = .clear
        self.view.backgroundColor = .clear
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        barSubviews()
        //: setupSubViewsConstraint()
        viewsWill()
        //: firstLoadData()
        coatButtonQuantity()
        //: addNotifications()
        addUser()
    }

    // MARK: - Lazy load

    //: public lazy var collectionView: UICollectionView = {
    public lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 9
        layout.minimumLineSpacing = 9
        //: layout.minimumInteritemSpacing = 9
        layout.minimumInteritemSpacing = 9
        //: layout.sectionInset = UIEdgeInsets(top: 0, left: 13, bottom: 9, right: 13)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 13, bottom: 9, right: 13)
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.register(TalkingLikeListCell.self,
        collectionView.register(RawReusableView.self,
                                //: forCellWithReuseIdentifier: TalkingLikeListCell.className())
                                forCellWithReuseIdentifier: RawReusableView.className())
        //: collectionView.register(UICollectionReusableView.self,
        collectionView.register(UICollectionReusableView.self,
                                //: forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                //: withReuseIdentifier: "EmptyCollectionReusableView")
                                withReuseIdentifier: (String(str_hiddenData.prefix(4)) + "yColle" + str_ofPhotoNameValue.lowercased() + String(str_keyText)))
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: collectionView.addHeaderRefresh { [weak self] in
        collectionView.addHeader { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.circuit()
        }
        //: return collectionView
        return collectionView
        //: }()
    }()

    //: private lazy var emptyV: SocialEmptyView = {
    private lazy var emptyV: TargetEmptyView = {
        //: let v = SocialEmptyView()
        let v = TargetEmptyView()
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var vipBtn: UIButton = {
    private lazy var vipBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Uncover Your Admirers".localized, for: .normal)
        btn.setTitle((String(str_modelValue) + str_callHiddenData.replacingOccurrences(of: "size", with: "i")).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 325, height: 54)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: 325, height: 54)), for: .normal)
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 17)
        btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 17)
        //: btn.addTarget(self, action: #selector(vipBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(appList), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingLikeListVC {
extension TargetArrayListFlowLayout {
    // MARK: - Load data

    /// 首次进入页面
    //: private func firstLoadData() {
    private func coatButtonQuantity() {
        //: headerRefresh()
        circuit()
    }

    /// 列表数据
    //: private func headerRefresh() {
    private func circuit() {
        //: load_listData()
        sizeClick()
    }

    //: func load_listData() {
    func sizeClick() {
        //: var url = ""
        var url = ""
        //: if tabType == .Likes {
        if tabType == .Likes {
            //: url = "mf/newFeature/whoLikeMeList"
            url = (String(str_likeName) + String(str_pushName))
            //: } else {
        } else {
            //: url = "mf/newFeature/whoVisitorMeList"
            url = (String(str_clickValue.prefix(5)) + "wFea" + String(str_renderCenterName.prefix(5)) + "whoV" + str_myValue.replacingOccurrences(of: "cookie", with: "si") + "orMeList")
        }
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = url
        reqModel.requestPath = url
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { _, result, _ in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: self.collectionView.endRefresh()
            self.collectionView.cancelButton()
            //: let arr = result as? Array<Any> ?? []
            let arr = result as? [Any] ?? []
            //: if arr.count > 0 {
            if arr.count > 0 {
                //: self.listData.removeAll()
                self.listData.removeAll()
            }
            //: for dict in arr {
            for dict in arr {
                //: if let model = SocialUserListModel.deserialize(from: dict as? Dictionary) {
                if let model = ControlWithModelType.deserialize(from: dict as? Dictionary) {
                    //: self.listData.append(model)
                    self.listData.append(model)
                }
            }
            //: self.refreshViewStatus()
            self.leftHandedness()
        }
    }

    /// 刷新个人资料接口
    //: @objc private func func__requestUserInfo() {
    @objc private func demand() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        GiftManagerRequest.makeEnable { _, _, _ in
            //: self.load_listData()
            self.sizeClick()
        }
    }

    /// 刷新视图状态
    //: private func refreshViewStatus() {
    private func leftHandedness() {
        // 是否有数据判断缺省图
        //: if self.listData.count == 0 {
        if self.listData.count == 0 {
            //: self.emptyV.isHidden = false
            self.emptyV.isHidden = false
            //: self.emptyV.desLab.text = "You've got no list yet.".localized
            self.emptyV.desLab.text = (str_colorName + "e got" + String(str_pullFastValue.prefix(6)) + "st ye" + String(str_nameContent)).localized
            //: } else {
        } else {
            //: self.emptyV.isHidden = true
            self.emptyV.isHidden = true
        }
        //: if self.listData.count > 0 && !EqualThen.share.loginUserMode.loungePlus {
        if self.listData.count > 0, !EqualThen.share.loginUserMode.loungePlus {
            //: vipBtn.isHidden = false
            vipBtn.isHidden = false
            //: } else {
        } else {
            //: vipBtn.isHidden = true
            vipBtn.isHidden = true
        }
        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
    }

    //: @objc private func vipBtnClick() {
    @objc private func appList() {
        //: EditTextThen.share.func__pushToSubscribeAlert(appendParams: "&type=0")
        EditTextThen.share.addShowParams(appendParams: (String(str_labelName.suffix(7))))
    }
}

// MARK: - JXSegmentedListContainerViewListDelegate

//: extension TalkingLikeListVC: JXPagingViewListViewDelegate {
extension TargetArrayListFlowLayout: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.collectionView
        return self.collectionView
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - UICollectionViewDelegate

//: extension TalkingLikeListVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension TargetArrayListFlowLayout: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: guard self.emptyV.isHidden else {
        guard self.emptyV.isHidden else {
            //: return 0
            return 0
        }

        //: return listData.count
        return listData.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingLikeListCell.className(), for: indexPath) as! TalkingLikeListCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RawReusableView.className(), for: indexPath) as! RawReusableView
        //: var model: SocialUserListModel?
        var model: ControlWithModelType?
        //: model = listData[indexPath.row]
        model = listData[indexPath.row]

        //: cell.refreshCell(model, indexRow: indexPath.row)
        cell.restore(model, indexRow: indexPath.row)

        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: if !EqualThen.share.loginUserMode.loungePlus {
        if !EqualThen.share.loginUserMode.loungePlus {
            //: vipBtnClick()
            appList()
            //: } else {
        } else {
            //: var model: SocialUserListModel?
            var model: ControlWithModelType?
            //: model = self.listData[indexPath.row]
            model = self.listData[indexPath.row]
            //: let uid = model?.uid ?? 0
            let uid = model?.uid ?? 0
            //: if uid > 0 {
            if uid > 0 {
                //: EditTextThen.share.func__pushToUserDetailVC(uid: "\(uid)")
                EditTextThen.share.soulAge(uid: "\(uid)")
            }
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: let width = Float((ScreenWidth-26-9)/2)
        let width = Float((kLet_cameraValue - 26 - 9) / 2)
        //: return CGSize(width: CGFloat(floorf(width)), height: CGFloat(floorf(width*221/170)))
        return CGSize(width: CGFloat(floorf(width)), height: CGFloat(floorf(width * 221 / 170)))
    }
}

// MARK: - Layout

//: extension TalkingLikeListVC {
extension TargetArrayListFlowLayout {
    // 添加视图
    //: private func setupSubviews() {
    private func barSubviews() {
        //: self.view.addSubview(emptyV)
        self.view.addSubview(emptyV)
        //: self.view.addSubview(collectionView)
        self.view.addSubview(collectionView)
        //: self.view.addSubview(vipBtn)
        self.view.addSubview(vipBtn)
        //: self.view.bringSubviewToFront(vipBtn)
        self.view.bringSubviewToFront(vipBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func viewsWill() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(5)
            make.top.equalToSuperview().offset(5)
            //: make.leading.width.bottom.equalToSuperview()
            make.leading.width.bottom.equalToSuperview()
        }
        //: emptyV.snp.makeConstraints { make in
        emptyV.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(200)
            make.top.equalToSuperview().offset(200)
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
        }
        //: vipBtn.snp.makeConstraints { make in
        vipBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-30)
            make.bottom.equalToSuperview().offset(-30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 325, height: 54))
            make.size.equalTo(CGSize(width: 325, height: 54))
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func addUser() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(self.func__requestUserInfo),
                                               selector: #selector(self.demand),
                                               //: name: APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION,
                                               name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               //: object: nil)
                                               object: nil)
    }
}
