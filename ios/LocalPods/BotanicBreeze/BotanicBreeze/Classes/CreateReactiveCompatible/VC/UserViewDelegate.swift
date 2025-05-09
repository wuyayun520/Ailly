
//: Declare String Begin

/*: "About me" :*/
fileprivate let str_leadingPurchaseValue:String = "var modeAbout me"

/*: "My interests" :*/
fileprivate let str_atData:[Character] = ["M","y"," ","i","n","t","e","r","e","s"]
fileprivate let str_colorValue:[Character] = ["t","s"]

/*: "Done" :*/
fileprivate let str_imageText:[Character] = ["D","o","n","e"]

/*: "TitleViewCell" :*/
fileprivate let str_collectionViewData:String = "make label select nameTalki"

/*: "NameTagToView" :*/
fileprivate let str_eachText:[Character] = ["T","a","l","k","i","n","g","T","a","g","H","e","a","d","e","r","V","i","e","w"]

/*: "aboutMe" :*/
fileprivate let str_nameStopData:String = "aboutMemodel send in"

/*: "interest" :*/
fileprivate let str_cellData:[Character] = ["i"]
fileprivate let str_gameData:String = "maketerest"

/*: "tagIds" :*/
fileprivate let str_contextModelData:[Character] = ["t","a","g","I","d","s"]

/*: "category" :*/
fileprivate let str_pathValue:String = "row"
fileprivate let str_viewTitle:[Character] = ["t","e","g","o","r","y"]

/*: "Save the change?" :*/
fileprivate let str_toBeginData:String = "insert start let response whiteSave "
fileprivate let str_whenReadValue:[Character] = ["t","h","e"," ","c","h","a","n","g","e","?"]

/*: "Cancel" :*/
fileprivate let str_labLocalContent:[Character] = ["C"]
fileprivate let str_modelTitle:String = "asizeel"

/*: "Save" :*/
fileprivate let str_labValue:[Character] = ["S","a","v","e"]

/*: "No more than 10 tags" :*/
fileprivate let str_changeData:String = "No mocall sense status height"
fileprivate let str_adjustToData:String = "an 10 tpop call room"
fileprivate let str_colorTitle:String = "makegs"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UserViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: public protocol EditTagDelegate: NSObject {
public protocol TempleTagDelegate: NSObject {
    //: func freshSeleteTag()
    func unspoiltColorTag()
}

//: class TalkingEditTagVC: TalkingBaseViewController {
class UserViewDelegate: SeamViewController {
    //: open weak var delegate: EditTagDelegate?
    open weak var delegate: TempleTagDelegate?
    //: var tagtype: TagType = .AboutMe
    var tagtype: PlayerOffsetTarget = .AboutMe
    //: var seleteCellArray: [UserSeleteTagModel] = []
    var seleteCellArray: [OfHandyJSON] = []
    //: var isChange = false
    var isChange = false
    //: var titles: Array<UserTagTypeModel> = Array()
    var titles: [NameTagMeasurable] = Array()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: switch tagtype {
        switch tagtype {
        //: case .AboutMe:
        case .AboutMe:
            //: self.title = "About me".localized
            self.title = (String(str_leadingPurchaseValue.suffix(8))).localized
        //: break
        //: case .Interests:
        case .Interests:
            //: self.title = "My interests".localized
            self.title = (String(str_atData) + String(str_colorValue)).localized
            //: break
        }

        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        //: btn.setTitle("Done".localized, for: .normal)
        btn.setTitle((String(str_imageText)).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.plaster(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 15)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(petition), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem = item
        self.navigationItem.rightBarButtonItem = item

        //: collectionView.register(TalkingTagCell.self, forCellWithReuseIdentifier: "TalkingTagCell")
        collectionView.register(TitleViewCell.self, forCellWithReuseIdentifier: (String(str_collectionViewData.suffix(5)) + "ngTagCell"))
        //: collectionView.register(TalkingTagHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "TalkingTagHeaderView")
        collectionView.register(NameTagToView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: (String(str_eachText)))
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: self.view.addSubview(collectionView)
        self.view.addSubview(collectionView)
        //: collectionView.snp.makeConstraints {
        collectionView.snp.makeConstraints {
            //: $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
            $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        }

        //: reqdata()
        actionView()
    }

    // MARK: - Lazy load

    //: lazy var layout: TalkingTagLayout = {
    lazy var layout: ShadowViewLayout = {
        //: let temp = TalkingTagLayout()
        let temp = ShadowViewLayout()
        //: temp.delegate = self
        temp.delegate = self
        //: return temp
        return temp
        //: }()
    }()

    //: private(set) lazy var collectionView: UICollectionView = {
    private(set) lazy var collectionView: UICollectionView = {
        //: let layout = self.layout
        let layout = self.layout
        //: let temp = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let temp = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: return temp
        return temp
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingEditTagVC {
extension UserViewDelegate {
    //: func reqdata() {
    func actionView() {
        //: if EqualThen.share.func__loadUserTagCacheData() == nil {
        if EqualThen.share.jumpTime() == nil {
            //: } else {
        } else {
            //: let tagModel: UserTagModel=EqualThen.share.func__loadUserTagCacheData() as! UserTagModel
            let tagModel: TagModel = EqualThen.share.jumpTime() as! TagModel
            //: switch tagtype {
            switch tagtype {
            //: case .AboutMe:
            case .AboutMe:
                //: titles = tagModel.aboutMe
                titles = tagModel.aboutMe
                //: setLastSelete(type: 1)
                constraint(type: 1)
            //: break
            //: case .Interests:
            case .Interests:
                //: titles = tagModel.interest
                titles = tagModel.interest
                //: setLastSelete(type: 2)
                constraint(type: 2)
                //: break
            }
        }
    }

    //: func uploadTag() {
    func equalReply() {
        //: guard let customDelegate = self.delegate else {
        guard let customDelegate = self.delegate else {
            //: return
            return
        }
        //: var category = ""
        var category = ""
        //: if self.tagtype == .AboutMe {
        if self.tagtype == .AboutMe {
            //: category = "aboutMe"
            category = (String(str_nameStopData.prefix(7)))
            //: } else {
        } else {
            //: category = "interest"
            category = (String(str_cellData) + str_gameData.replacingOccurrences(of: "make", with: "n"))
        }
        //: var str = ""
        var str = ""
        //: for i in 0..<self.seleteCellArray.count {
        for i in 0 ..< self.seleteCellArray.count {
            //: let model = self.seleteCellArray[i]
            let model = self.seleteCellArray[i]
            //: str += model.tag_id!
            str += model.tag_id!
            //: if i<self.seleteCellArray.count-1 {
            if i < self.seleteCellArray.count - 1 {
                //: str += ","
                str += ","
            }
        }
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["tagIds"] = str
        dict[(String(str_contextModelData))] = str
        //: dict["category"] = category
        dict[(str_pathValue.replacingOccurrences(of: "row", with: "ca") + String(str_viewTitle))] = category
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: TalkingMeRequestTool.req_EditTag(params: dict) { [self] succeed, result, errorModel in
        CameraThen.mentalPicture(params: dict) { [self] succeed, _, _ in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: if succeed {
            if succeed {
                //: if self.tagtype == .AboutMe {
                if self.tagtype == .AboutMe {
                    //: EqualThen.share.loginUserMode.aboutMe = self.seleteCellArray
                    EqualThen.share.loginUserMode.aboutMe = self.seleteCellArray
                    //: } else {
                } else {
                    //: EqualThen.share.loginUserMode.interest = self.seleteCellArray
                    EqualThen.share.loginUserMode.interest = self.seleteCellArray
                }
                //: customDelegate.freshSeleteTag()
                customDelegate.unspoiltColorTag()
                //: self.navigationController!.popViewController(animated: true)
                self.navigationController!.popViewController(animated: true)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingEditTagVC {
extension UserViewDelegate {
    //: override func naviPopback() {
    override func white() {
        //: var modelArray: Array<UserSeleteTagModel> = []
        var modelArray: [OfHandyJSON] = []
        //: switch tagtype {
        switch tagtype {
        //: case .AboutMe:
        case .AboutMe:
            //: modelArray = EqualThen.share.loginUserMode.aboutMe!
            modelArray = EqualThen.share.loginUserMode.aboutMe!
        //: break
        //: case .Interests:
        case .Interests:
            //: modelArray = EqualThen.share.loginUserMode.interest!
            modelArray = EqualThen.share.loginUserMode.interest!
            //: break
        }

        //: if !isChange {
        if !isChange {
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
            //: } else {
        } else {
            //: let config = ShowAlertConfig()
            let config = AtAlertConfig()
            //: config.alignment = .center
            config.alignment = .center
            //: TalkingAlertShow.customAlert(message: "Save the change?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Save".localized, leftBlock: {
            MotilityThen.customLabel(message: (String(str_toBeginData.suffix(5)) + String(str_whenReadValue)).localized, leftBtnTitle: (String(str_labLocalContent) + str_modelTitle.replacingOccurrences(of: "size", with: "nc")).localized, rightBtnTitle: (String(str_labValue)).localized, leftBlock: {
                //: TalkingAlertShow.hideAlert()
                MotilityThen.afterward()
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
                //: }, rightBlock: {
            }, rightBlock: {
                //: TalkingAlertShow.hideAlert()
                MotilityThen.afterward()
                //: self.uploadTag()
                self.equalReply()
                //: }, config: config)
            }, config: config)
        }
    }

    //: func setLastSelete(type: Int) {
    func constraint(type: Int) {
        //: var modelArray: Array<UserSeleteTagModel> = []
        var modelArray: [OfHandyJSON] = []
        //: if type == 1 {
        if type == 1 {
            //: modelArray = EqualThen.share.loginUserMode.aboutMe!
            modelArray = EqualThen.share.loginUserMode.aboutMe!
            //: } else {
        } else {
            //: modelArray = EqualThen.share.loginUserMode.interest!
            modelArray = EqualThen.share.loginUserMode.interest!
        }
        //: for i in 0..<modelArray.count {
        for i in 0 ..< modelArray.count {
            //: let modeli = modelArray[i]
            let modeli = modelArray[i]
            //: for j in 0..<titles.count {
            for j in 0 ..< titles.count {
                //: let modelj = titles[j]
                let modelj = titles[j]
                //: let list = modelj.list
                let list = modelj.list
                //: for z in 0..<list!.count {
                for z in 0 ..< list!.count {
                    //: var modelz = list?[z]
                    var modelz = list?[z]
                    //: if modeli.equals(compareTo: modelz!) {
                    if modeli.tagObject(compareTo: modelz!) {
                        //: modelz?.isSelete = true
                        modelz?.isSelete = true
                        //: titles[j].list[z] = modelz!
                        titles[j].list[z] = modelz!
                        //: seleteCellArray.append(modelz!)
                        seleteCellArray.append(modelz!)
                    }
                }
            }
        }
    }

    //: @objc func doneBtnClick() {
    @objc func petition() {
        //: uploadTag()
        equalReply()
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource

//: extension TalkingEditTagVC: UICollectionViewDelegate, UICollectionViewDataSource {
extension UserViewDelegate: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return titles.count
        return titles.count
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //: let model = titles[section]
        let model = titles[section]
        //: return model.list.count
        return model.list.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TalkingTagCell", for: indexPath) as! TalkingTagCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: (String(str_collectionViewData.suffix(5)) + "ngTagCell"), for: indexPath) as! TitleViewCell
        //: let model = self.titles[indexPath.section]
        let model = self.titles[indexPath.section]
        //: let title: UserSeleteTagModel = model.list[indexPath.row]
        let title: OfHandyJSON = model.list[indexPath.row]
        //: var tag_name = ""
        var tag_name = ""
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        if SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.ar.rawValue {
            //: tag_name = title.tag_name_ar
            tag_name = title.tag_name_ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.es.rawValue {
            //: tag_name = title.tag_name_es
            tag_name = title.tag_name_es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.pt.rawValue {
            //: tag_name = title.tag_name_pt
            tag_name = title.tag_name_pt
        }
        //: if tag_name.count <= 0 {
        if tag_name.count <= 0 {
            //: tag_name = title.tag_name
            tag_name = title.tag_name
        }
        //: cell.fill(title: tag_name )
        cell.changeTitle(title: tag_name)
        //: cell.tagBtnClick(isSelete: title.isSelete)
        cell.tableSelete(isSelete: title.isSelete)
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let cell: TalkingTagCell = collectionView.cellForItem(at: indexPath)as! TalkingTagCell
        let cell: TitleViewCell = collectionView.cellForItem(at: indexPath) as! TitleViewCell

        //: var model = self.titles[indexPath.section]
        var model = self.titles[indexPath.section]
        //: var title = model.list[indexPath.row]
        var title = model.list[indexPath.row]
        //: if  seleteCellArray.contains(where: { $0.equals(compareTo: title)}) {
        if seleteCellArray.contains(where: { $0.tagObject(compareTo: title) }) {
            //: seleteCellArray.removeAll(where: {$0.equals(compareTo: title)})
            seleteCellArray.removeAll(where: { $0.tagObject(compareTo: title) })
            //: isChange = true
            isChange = true
            //: title.isSelete =  false
            title.isSelete = false
            //: } else {
        } else {
            //: if seleteCellArray.count>=10 {
            if seleteCellArray.count >= 10 {
                //: self.func__showStatusBarErrorMsg(showMsg: "No more than 10 tags".localized)
                self.oversight(showMsg: (String(str_changeData.prefix(5)) + "re th" + String(str_adjustToData.prefix(7)) + str_colorTitle.replacingOccurrences(of: "make", with: "a")).localized)
                //: return
                return
            }
            //: seleteCellArray.append(title)
            seleteCellArray.append(title)
            //: isChange = true
            isChange = true
            //: title.isSelete =  true
            title.isSelete = true
        }
        //: model.list[indexPath.row] = title
        model.list[indexPath.row] = title
        //: self.titles[indexPath.section] = model
        self.titles[indexPath.section] = model
        //: cell.tagBtnClick()
        cell.deal()
        //: if self.titles.count>0 {
        if self.titles.count > 0 {
            //: self.navigationItem.rightBarButtonItem?.isEnabled = true
            self.navigationItem.rightBarButtonItem?.isEnabled = true
            //: } else {
        } else {
            //: self.navigationItem.rightBarButtonItem?.isEnabled = false
            self.navigationItem.rightBarButtonItem?.isEnabled = false
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        //: switch kind {
        switch kind {
        //: case UICollectionView.elementKindSectionHeader:
        case UICollectionView.elementKindSectionHeader:
            //: let headView: TalkingTagHeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "TalkingTagHeaderView", for: indexPath) as! TalkingTagHeaderView
            let headView: NameTagToView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: (String(str_eachText)), for: indexPath) as! NameTagToView
            //: headView.backgroundColor = UIColor.clear
            headView.backgroundColor = UIColor.clear
            //: let model = self.titles[indexPath.section]
            let model = self.titles[indexPath.section]
            //: var name = model.name
            var name = model.name
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
            if SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.ar.rawValue {
                //: name = model.name_ar
                name = model.name_ar
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
            } else if SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.es.rawValue {
                //: name = model.name_es
                name = model.name_es
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            } else if SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.pt.rawValue {
                //: name = model.name_pt
                name = model.name_pt
            }
            //: headView.label.text = name
            headView.label.text = name
            //: return headView
            return headView
        //: default:
        default:
            //: return UICollectionReusableView()
            return UICollectionReusableView()
        }
    }
}

// MARK: - StraddleThen

//: extension TalkingEditTagVC: TagLayoutDelegate {
extension UserViewDelegate: StraddleThen {
    /// 标签内边距
    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, tagInnerMarginForItemAt indexPath: IndexPath) -> CGFloat {
    func contribution(_: ShadowViewLayout, collectionView _: UICollectionView, tagInnerMarginForItemAt _: IndexPath) -> CGFloat {
        //: return CGFloat(25)
        return CGFloat(25)
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, sizeForSupplementaryElementOfKind kind: String, at section: Int) -> CGSize {
    func notDivision(_: ShadowViewLayout, collectionView _: UICollectionView, sizeForSupplementaryElementOfKind kind: String, at _: Int) -> CGSize {
        //: switch kind {
        switch kind {
        //: case UICollectionView.elementKindSectionHeader:
        case UICollectionView.elementKindSectionHeader:
            //: return CGSize(width: 250, height: 32)
            return CGSize(width: 250, height: 32)
        //: case UICollectionView.elementKindSectionFooter:
        case UICollectionView.elementKindSectionFooter:
            //: return CGSize(width: 250, height: 40)
            return CGSize(width: 250, height: 40)
        //: default:
        default:
            //: return CGSize(width: 250, height: 40)
            return CGSize(width: 250, height: 40)
        }
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, textForItemAt indexPath: IndexPath) -> String {
    func tagAt(_: ShadowViewLayout, collectionView _: UICollectionView, textForItemAt indexPath: IndexPath) -> String {
        //: let model = self.titles[indexPath.section]
        let model = self.titles[indexPath.section]
        //: let title = model.list[indexPath.row]
        let title = model.list[indexPath.row]
        //: var tag_name = ""
        var tag_name = ""
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        if SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.ar.rawValue {
            //: tag_name = title.tag_name_ar
            tag_name = title.tag_name_ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.es.rawValue {
            //: tag_name = title.tag_name_es
            tag_name = title.tag_name_es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.pt.rawValue {
            //: tag_name = title.tag_name_pt
            tag_name = title.tag_name_pt
        }
        //: if tag_name.count <= 0 {
        if tag_name.count <= 0 {
            //: tag_name = title.tag_name
            tag_name = title.tag_name
        }
        //: return tag_name
        return tag_name
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, heightBottomAt section: Int) -> CGFloat {
    func barData(_: ShadowViewLayout, collectionView _: UICollectionView, heightBottomAt _: Int) -> CGFloat {
        //: return 24
        return 24
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, leftSapceAt section: Int) -> CGFloat {
    func awakeBy(_: ShadowViewLayout, collectionView _: UICollectionView, leftSapceAt _: Int) -> CGFloat {
        //: return 15
        return 15
    }
}
