
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_titleText:[UInt8] = [0x18,0x1f,0x18,0x5,0x59,0x12,0x1e,0x15,0x14,0x3,0x4b,0x58,0x51,0x19,0x10,0x2,0x51,0x1f,0x1e,0x5,0x51,0x13,0x14,0x14,0x1f,0x51,0x18,0x1c,0x1,0x1d,0x14,0x1c,0x14,0x1f,0x5,0x14,0x15]

private func leadingTask(input num: UInt8) -> UInt8 {
    return num ^ 113
}

/*: "TargetItemCell" :*/
fileprivate let str_playerViewValue:String = "Talkfloat data make as"
fileprivate let str_makeTitle:[Character] = ["t","R","e"]
fileprivate let str_startData:String = "plyItat point table self across"

/*: "momentId" :*/
fileprivate let str_frameTitle:[UInt8] = [0xeb,0xed,0xeb,0xe3,0xec,0xf2,0xc7,0xe2]

fileprivate func managerFile(leading num: UInt8) -> UInt8 {
    let value = Int(num) + 130
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "lastId" :*/
fileprivate let str_removeMainTitle:[Character] = ["l","a","s","t","I","d"]

/*: "limit" :*/
fileprivate let str_partyDescriptionName:[Character] = ["l","i","m","i","t"]

/*: "list" :*/
fileprivate let str_voiceName:[Character] = ["l","i","s","t"]

/*: "more>>" :*/
fileprivate let str_mediumTitle:String = "more>through instance data user"
fileprivate let str_backgroundValue:[Character] = [">"]

/*: "Comment on success" :*/
fileprivate let str_makeValue:String = "drop removeCommen"
fileprivate let str_whitePathName:String = "UCCESS"

/*: "replyId" :*/
fileprivate let str_wrapAllowValue:[Character] = ["r","e","p","l","y"]
fileprivate let str_listFromValue:[Character] = ["I","d"]

/*: "type" :*/
fileprivate let str_appValue:[UInt8] = [0x16,0x1b,0x12,0x7]

fileprivate func playManager(off num: UInt8) -> UInt8 {
    let value = Int(num) + 94
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "comment" :*/
fileprivate let str_labelSignValue:String = "commecolort"

/*: "number" :*/
fileprivate let str_titleValue:[UInt8] = [0x76,0x7d,0x75,0x6a,0x6d,0x7a]

fileprivate func colorBean(style num: UInt8) -> UInt8 {
    let value = Int(num) - 8
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Delete Post" :*/
fileprivate let str_inputText:String = "Deletshow at self error on"

/*: "id" :*/
fileprivate let str_toName:String = "ibackground"

/*: "model" :*/
fileprivate let str_viewHidePathValue:[UInt8] = [0xb0,0xb2,0xb9,0xb8,0xb1]

private func cameraActual(note num: UInt8) -> UInt8 {
    return num ^ 221
}

/*: "The content cannot be empty!" :*/
fileprivate let str_whiteSectionText:[Character] = ["T","h","e"," ","c","o","n","t","e","n","t"," ","c","a","n","n","o","t"," ","b","e"," ","e","m","p","t"]
fileprivate let str_succeedData:[Character] = ["y","!"]

/*: "content" :*/
fileprivate let str_groupTitle:[Character] = ["c","o"]
fileprivate let str_entityGestureData:[Character] = ["n","t","e","n","t"]

/*: "Delete" :*/
fileprivate let str_originalName:String = "Deletstyle to"
fileprivate let str_partyData:String = "E"

/*: "Delete Comment?" :*/
fileprivate let str_addName:[Character] = ["D","e","l","e","t"]
fileprivate let str_roomValue:String = "e add view return"
fileprivate let str_intimateValue:[Character] = ["C","o","m","m","e","n","t","?"]

/*: "Cancel" :*/
fileprivate let str_layerData:[Character] = ["C","a","n","c","e"]
fileprivate let str_addTitle:String = "equal"

/*: "Reply" :*/
fileprivate let str_videoData:String = "to count selfReply"

/*: "  :*/
fileprivate let str_imageText:String = " "

/*: "Details" :*/
fileprivate let str_executeName:String = "Detailsview no let"

/*: "icon_moment_nor_report" :*/
fileprivate let str_talkToTitleContent:String = "add value varicon_"
fileprivate let str_menuData:String = "add from currentt_nor_r"
fileprivate let str_styleText:[Character] = ["e","p","o","r","t"]

/*: "Comment" :*/
fileprivate let str_playerData:[Character] = ["C","o","m","m","e","n"]
fileprivate let str_upData:[Character] = ["t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PoreViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/23.
//

//: import UIKit
import UIKit

//: typealias DeletePostback = () -> Void
typealias DeletePostback = () -> Void

// MARK: - 属性声明 & 生命周期方法

//: class TalkingMomentDetailVC: TalkingBaseViewController {
class PoreViewDelegate: SeamViewController {
    //: var delegete: DeletePostback?
    var delegete: DeletePostback?
    //: var momentModel = TalkingMomentModel()
    var momentModel = WithMomentModel()
    //: var commentList = Array<TalkingCommentModel>()
    var commentList = [ShadowAddTransformable]()
    //: let inputViewHeight = 56+kDeviceSafeBottomHeight
    let inputViewHeight = 56 + kLet_nextData
    //: var lastId  = "0"
    var lastId = "0"
    //: var limit  = 10
    var limit = 10
    //: let quickCommentReplyIndex = -100
    let quickCommentReplyIndex = -100
    /// 点击评论按钮，滑动到评论区域
    //: var toCommentView = false
    var toCommentView = false

    //: init(model: TalkingMomentModel) {
    init(model: WithMomentModel) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: momentModel = model
        momentModel = model
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_titleText.map{leadingTask(input: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        imageWith()
        //: setupSubViewsConstraint()
        ocular()
        //: requestMomentDetail()
        thenUser()
        //: requestCommentList()
        requestUponClassList()
    }

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.grouped)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData), style: UITableView.Style.grouped)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.showsVerticalScrollIndicator = false
        table.showsVerticalScrollIndicator = false
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.register(TalkingCommentReplyItemCell.self, forCellReuseIdentifier: "TalkingCommentReplyItemCell")
        table.register(TargetItemCell.self, forCellReuseIdentifier: (String(str_playerViewValue.prefix(4)) + "ingCommen" + String(str_makeTitle) + String(str_startData.prefix(5)) + "emCell"))

        //: return table
        return table
        //: }()
    }()

    //: lazy var commentNumberLabel: UILabel = {
    lazy var commentNumberLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
        label.font = .pingfang(type: .Medium, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .executeTo()
        //: return label
        return label
        //: }()
    }()

    //: lazy var comInputView: TalkingCommentInputView = {
    lazy var comInputView: ViewDelegate = {
        //: let text = TalkingCommentInputView.init()
        let text = ViewDelegate()
        //: text.delegate = self
        text.delegate = self
        //: return text
        return text
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setBackgroundColor(color: .clear, forState: .normal)
        btn.likeness(color: .clear, forState: .normal)
        //: btn.addTarget( self, action: #selector(dismissClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(openLine), for: .touchUpInside)
        //: self.view.addSubview(btn)
        self.view.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingMomentDetailVC {
extension PoreViewDelegate {
    //: func requestMomentDetail() {
    func thenUser() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = momentModel.mid
        dict[String(bytes: str_frameTitle.map{managerFile(leading: $0)}, encoding: .utf8)!] = momentModel.mid

        //: TalkingMomentRequestTool.req_MomentDetail(params: dict) { succeed, result, errorModel in
        StreetSmartReactiveCompatible.jumpColor(params: dict) { succeed, result, errorModel in

            //: if succeed {
            if succeed {
                //: if var model = JSONDeserializer<TalkingMomentModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if var model = JSONDeserializer<WithMomentModel>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: model.isMomentDetail = true
                    model.isMomentDetail = true
                    //: model.caculateItemHeight()
                    model.income()
                    //: self.momentModel = model
                    self.momentModel = model
                    //: self.setupMomentView()
                    self.includeView()
                }
                //: } else {
            } else {
                //: if errorModel?.errorCode == 50206 {
                if errorModel?.errorCode == 50206 {
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                        //: self.navigationController?.popViewController(animated: true)
                        self.navigationController?.popViewController(animated: true)
                    }
                }
            }
        }
    }

    //: func requestCommentList() {
    func requestUponClassList() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = momentModel.mid
        dict[String(bytes: str_frameTitle.map{managerFile(leading: $0)}, encoding: .utf8)!] = momentModel.mid
        //: dict["lastId"] = lastId
        dict[(String(str_removeMainTitle))] = lastId
        //: dict["limit"] = limit
        dict[(String(str_partyDescriptionName))] = limit
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()

        //: TalkingMomentRequestTool.req_CommentList(params: dict) { succeed, result, errorModel in
        StreetSmartReactiveCompatible.postingGift(params: dict) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: if dict.count == 0 {
                if dict.count == 0 {
                    //: return
                    return
                }
                //: let array: Array =  dict["list"] as! Array<Any>
                let array: Array = dict[(String(str_voiceName))] as! [Any]

                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingCommentModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<ShadowAddTransformable>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.caculateCommentItemHeight()
                        model.label()
                        //: var replyArray: [TalkingCommentReplyModel] = []
                        var replyArray: [ListMeasurable] = []
                        //: for j in 0..<model.comment.count {
                        for j in 0 ..< model.comment.count {
                            //: var replymodel = model.comment[j]
                            var replymodel = model.comment[j]
                            //: replymodel.caculateReplyItemHeight()
                            replymodel.keyOf()
                            //: replyArray.append(replymodel)
                            replyArray.append(replymodel)
                        }
                        //: if model.totalReply > 3 {
                        if model.totalReply > 3 {
                            //: var replymodel = TalkingCommentReplyModel.init()
                            var replymodel = ListMeasurable()
                            //: replymodel.allCountContent = String(format: "more>>")
                            replymodel.allCountContent = String(format: (String(str_mediumTitle.prefix(5)) + String(str_backgroundValue)))
                            //: replymodel.caculateReplyItemHeight()
                            replymodel.keyOf()
                            //: replyArray.append(replymodel)
                            replyArray.append(replymodel)
                        }
                        //: model.comment = replyArray
                        model.comment = replyArray
                        //: self.commentList.append(model)
                        self.commentList.append(model)
                    }
                }

                //: if array.count>0 {
                if array.count > 0 {
                    //: let model = self.commentList.last
                    let model = self.commentList.last
                    //: self.lastId = model?.cid ?? "0"
                    self.lastId = model?.cid ?? "0"
                    //: self.mainTableView.reloadData()
                    self.mainTableView.reloadData()
                    //: self.mainTableView.endRefresh()
                    self.mainTableView.cancelButton()
                    //: if array.count<self.limit {
                    if array.count < self.limit {
                        //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                        self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    }
                    //: } else {
                } else {
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                }

                //: if self.toCommentView {
                if self.toCommentView {
                    //: self.toCommentView = false
                    self.toCommentView = false
                    //: self.scrollToCommentView()
                    self.more()
                }

                //: } else {
            } else {
                //: if errorModel?.errorCode == 50206 {
                if errorModel?.errorCode == 50206 {
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                        //: self.navigationController?.popViewController(animated: true)
                        self.navigationController?.popViewController(animated: true)
                    }
                }
            }
        }
    }

    //: func requestCommentWithParams(params: Dictionary<String, Any>, index: Int) {
    func source(params: [String: Any], index: Int) {
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()

        //: TalkingMomentRequestTool.req_SendComment(params: params) { [self] succeed, result, errorModel in
        StreetSmartReactiveCompatible.sendToCompletionUp(params: params) { [self] succeed, result, _ in

            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()

            //: if succeed {
            if succeed {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Comment on success".localized)
                self.fileFirst(showMsg: (String(str_makeValue.suffix(6)) + "t on s" + str_whitePathName.lowercased()).localized)
                //: if params["replyId"] != nil {
                if params[(String(str_wrapAllowValue) + String(str_listFromValue))] != nil {
                    //: var model = TalkingCommentModel()
                    var model = ShadowAddTransformable()
                    //: if index == self.quickCommentReplyIndex {
                    if index == self.quickCommentReplyIndex {
                        //: } else {
                    } else {
                        //: model = self.commentList[index]
                        model = self.commentList[index]
                    }

                    //: if model.uid!.count > 0 {
                    if model.uid!.count > 0 {
                        //: if var replyModel = JSONDeserializer<TalkingCommentReplyModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                        if var replyModel = JSONDeserializer<ListMeasurable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                            //: model.totalReply += 1
                            model.totalReply += 1
                            //: var array = model.comment
                            var array = model.comment
//                            if array.count>3 {
//                                array.remove(at: array.count-2)
//                            }
                            //: replyModel.caculateReplyItemHeight()
                            replyModel.keyOf()
                            //: array.insert(replyModel, at: 0)
                            array.insert(replyModel, at: 0)

//                            if array.count>3 {
//                                array.removeLast()
//                                var tempModel = ListMeasurable.init()
//                                tempModel.allCountContent = String(format: "%d comments >", model.totalReply)
//                                tempModel.caculateReplyItemHeight()
//                                array.append(tempModel)
//                            }
                            //: model.comment = array
                            model.comment = array
                            //: self.commentList[index] = model
                            self.commentList[index] = model
                        }
                    }

                    //: } else {
                } else {
                    //: if var model = JSONDeserializer<TalkingCommentModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<ShadowAddTransformable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                        //: model.caculateCommentItemHeight()
                        model.label()
                        //: if model.uid == EqualThen.share.loginUserMode.userID {
                        if model.uid == EqualThen.share.loginUserMode.userID {
                            //: model.headPicFrame = EqualThen.share.loginUserMode.headPicFrame
                            model.headPicFrame = EqualThen.share.loginUserMode.headPicFrame
                        }
                        //: self.commentList.insert(model, at: 0)
                        self.commentList.insert(model, at: 0)
                    }
                }
                //: self.momentModel.replyNum!  += 1
                self.momentModel.replyNum! += 1
                //: self.setupMomentView()
                self.includeView()
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: NotificationCenter.default.post(name: UPDATE_COMMENTNUMBER_NOTIFICATION, object: self, userInfo: ["type": "comment".localized, "number": (self.momentModel.replyNum) ?? 0, "momentId": self.momentModel.mid ?? ""])
                NotificationCenter.default.post(name: kLet_infoRecordValue, object: self, userInfo: [String(bytes: str_appValue.map{playManager(off: $0)}, encoding: .utf8)!: (str_labelSignValue.replacingOccurrences(of: "color", with: "n")).localized, String(bytes: str_titleValue.map{colorBean(style: $0)}, encoding: .utf8)!: (self.momentModel.replyNum) ?? 0, String(bytes: str_frameTitle.map{managerFile(leading: $0)}, encoding: .utf8)!: self.momentModel.mid ?? ""])
            }
        }
    }

    /// 子评论列表
    //: func requestReplyList(cid: String, lastId: String, limit: Int, index: IndexPath) {
    func bullSEyeIndex(cid: String, lastId: String, limit: Int, index: IndexPath) {
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: ProgressHUD.dismiss()
        ModelReactiveCompatible.dataConverterCan()
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["replyId"] = cid
        dict[(String(str_wrapAllowValue) + String(str_listFromValue))] = cid
        //: dict["lastId"] = lastId
        dict[(String(str_removeMainTitle))] = lastId
        //: dict["limit"] = limit
        dict[(String(str_partyDescriptionName))] = limit

        //: TalkingMomentRequestTool.req_CommentDetailList(params: dict) { succeed, result, errorModel in
        StreetSmartReactiveCompatible.packageCompletion(params: dict) { succeed, result, _ in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: if dict.count == 0 {
                if dict.count == 0 {
                    //: return
                    return
                }
                //: let array: Array =  dict["list"] as! Array<Any>
                let array: Array = dict[(String(str_voiceName))] as! [Any]
                //: var cmodel = self.commentList[index.section]
                var cmodel = self.commentList[index.section]
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingCommentReplyModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<ListMeasurable>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.caculateReplyItemHeight()
                        model.keyOf()
                        //: cmodel.comment.insert(model, at: cmodel.comment.count-1)
                        cmodel.comment.insert(model, at: cmodel.comment.count - 1)
                    }
                }
                //: if array.count == 0 {
                if array.count == 0 {
                    //: cmodel.comment.removeLast()
                    cmodel.comment.removeLast()
                }
                //: self.commentList[index.section] = cmodel
                self.commentList[index.section] = cmodel
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
            }
        }
    }
}

// MARK: - 事件方法

//: extension TalkingMomentDetailVC {
extension PoreViewDelegate {
    //: func footerRefresh() {
    func locationTo() {
        //: if self.lastId == "0" {
        if self.lastId == "0" {
            //: return
            return
        }
        //: requestCommentList()
        requestUponClassList()
    }

    //: func scrollToCommentView() {
    func more() {
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
            //: self.mainTableView.scrollRectToVisible(CGRect(x: 0, y: self.momentModel.itemHeight ?? 56, width: ScreenWidth, height: ScreenHeight-CGFloat(self.inputViewHeight)-kDeviceSafeBottomHeight-StatusBarNavigationBarHeight), animated: true)
            self.mainTableView.scrollRectToVisible(CGRect(x: 0, y: self.momentModel.itemHeight ?? 56, width: kLet_cameraValue, height: kLet_clickData - CGFloat(self.inputViewHeight) - kLet_nextData - kLet_detailNameText), animated: true)
        }
    }

    //: @objc func BlockBtnClick() {
    @objc func toApp() {
        //: if self.momentModel.uid == EqualThen.share.loginUserMode.userID {
        if self.momentModel.uid == EqualThen.share.loginUserMode.userID {
            //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
            let vc = OnViewDelegate(frame: self.view.frame)
            //: vc.initwithList(cellTitleList: ["Delete Post".localized])
            vc.videoList(cellTitleList: [(String(str_inputText.prefix(5)) + "e Post").localized])

            //: vc.munuBlock = { [weak self] index, str in
            vc.munuBlock = { [weak self] _, _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: ProgressHUD.show()
                ModelReactiveCompatible.fromTarget()
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["id"] = self.momentModel.mid
                dict["id"] = self.momentModel.mid
                //: TalkingMomentRequestTool.req_DeleteMoment(params: dict) { succeed, result, errorModel in
                StreetSmartReactiveCompatible.trademark(params: dict) { succeed, _, _ in
                    //: ProgressHUD.dismiss()
                    ModelReactiveCompatible.dataConverterCan()
                    //: if succeed {
                    if succeed {
                        //: self.delegete?()
                        self.delegete?()
                        //: self.navigationController?.popViewController(animated: true)
                        self.navigationController?.popViewController(animated: true)
                        //: NotificationCenter.default.post(name: DELETE_MINE_POST_NOTIFICATION, object: self, userInfo: ["model": self.momentModel])
                        NotificationCenter.default.post(name: kLet_dismissName, object: self, userInfo: [String(bytes: str_viewHidePathValue.map{cameraActual(note: $0)}, encoding: .utf8)!: self.momentModel])
                    }
                }
            }

            //: } else {
        } else {
            //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportUserType, rId: momentModel.uid ?? "")
            let reportView = WithSkinViewDelegate(frame: UIScreen.main.bounds, type: .reportUserType, rId: momentModel.uid ?? "")
            //: reportView.showReportViewIn(view: nil)
            reportView.withPair(view: nil)
        }
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_: Set<UITouch>, with _: UIEvent?) {
        //: comInputView.inputTextView.resignFirstResponder()
        comInputView.inputTextView.resignFirstResponder()
    }

    //: @objc func dismissClick() {
    @objc func openLine() {
        //: comInputView.inputTextView.text = ""
        comInputView.inputTextView.text = ""
        //: comInputView.resignkeyBoard()
        comInputView.tincture()
    }
}

// MARK: - SendViewDelegate

//: extension TalkingMomentDetailVC: CommentInputViewDelegate {
extension PoreViewDelegate: SendViewDelegate {
    //: func func__replyTextMsg(msgStr: String, row: IndexPath) {
    func funcAt(msgStr: String, row: IndexPath) {
        //: if msgStr.count == 0 {
        if msgStr.count == 0 {
            //: self.func__showStatusBarErrorMsg(showMsg: "The content cannot be empty!".localized)
            self.oversight(showMsg: (String(str_whiteSectionText) + String(str_succeedData)).localized)
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = momentModel.mid
        dict[String(bytes: str_frameTitle.map{managerFile(leading: $0)}, encoding: .utf8)!] = momentModel.mid
        //: dict["content"] = msgStr
        dict[(String(str_groupTitle) + String(str_entityGestureData))] = msgStr

        //: let model = self.commentList[row.section]
        let model = self.commentList[row.section]
        //: let replymodel = model.comment[row.row]
        let replymodel = model.comment[row.row]
        //: dict["replyId"] = replymodel.cid
        dict[(String(str_wrapAllowValue) + String(str_listFromValue))] = replymodel.cid
        //: requestCommentWithParams(params: dict, index: row.section)
        source(params: dict, index: row.section)
    }

    //: func func__sendTextMsg(msgStr: String, index: Int) {
    func funcEffect(msgStr: String, index: Int) {
        //: if msgStr.count == 0 {
        if msgStr.count == 0 {
            //: self.func__showStatusBarErrorMsg(showMsg: "The content cannot be empty!".localized)
            self.oversight(showMsg: (String(str_whiteSectionText) + String(str_succeedData)).localized)
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = momentModel.mid
        dict[String(bytes: str_frameTitle.map{managerFile(leading: $0)}, encoding: .utf8)!] = momentModel.mid
        //: dict["content"] = msgStr
        dict[(String(str_groupTitle) + String(str_entityGestureData))] = msgStr
        //: if index >= 0 {
        if index >= 0 {
            //: let model = self.commentList[index]
            let model = self.commentList[index]
            //: dict["replyId"] = model.cid
            dict[(String(str_wrapAllowValue) + String(str_listFromValue))] = model.cid
            //: } else if index == quickCommentReplyIndex {
        } else if index == quickCommentReplyIndex {}

        //: requestCommentWithParams(params: dict, index: index)
        source(params: dict, index: index)
    }

    //: func heightToBottomChanged(heightToBottom: CGFloat) {
    func loftiness(heightToBottom: CGFloat) {
        //: comInputView.snp.updateConstraints { make in
        comInputView.snp.updateConstraints { make in
            //: make.bottom.equalTo(self.view).offset(-heightToBottom)
            make.bottom.equalTo(self.view).offset(-heightToBottom)
        }
        //: if heightToBottom>100 {
        if heightToBottom > 100 {
            //: backBtn.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: self.view.frame.size.height-heightToBottom-inputViewHeight)
            backBtn.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: self.view.frame.size.height - heightToBottom - inputViewHeight)
            //: backBtn.isHidden = false
            backBtn.isHidden = false
        }
        //: else {
        else {
            //: backBtn.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            backBtn.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            //: backBtn.isHidden = true
            backBtn.isHidden = true
        }
    }

    //: func inputViewHeightChanged(height: CGFloat) {
    func disappear(height: CGFloat) {
        //: comInputView.snp.updateConstraints { make in
        comInputView.snp.updateConstraints { make in
            //: make.height.equalTo(height)
            make.height.equalTo(height)
        }
        //: self.view.needsUpdateConstraints()
        self.view.needsUpdateConstraints()
        //: self.view.updateConstraintsIfNeeded()
        self.view.updateConstraintsIfNeeded()
        //: backBtn.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: backBtn.frame.size.height-height)
        backBtn.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: backBtn.frame.size.height - height)
        //: backBtn.isHidden = false
        backBtn.isHidden = false
        //: UIView.animate(withDuration: 0.3, animations: {
        UIView.animate(withDuration: 0.3, animations: {
            //: self.view.layoutIfNeeded()
            self.view.layoutIfNeeded()
            //: })
        })
    }

    /// 删除个人评论
    //: func deleteReplay(cid: String) {
    func ingot(cid: String) {
        //: if self.momentModel.uid == EqualThen.share.loginUserMode.userID {
        if self.momentModel.uid == EqualThen.share.loginUserMode.userID {
            //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
            let vc = OnViewDelegate(frame: self.view.frame)
            //: vc.initwithList(cellTitleList: ["Delete".localized])
            vc.videoList(cellTitleList: [(String(str_originalName.prefix(5)) + str_partyData.lowercased()).localized])

            //: vc.munuBlock = { [weak self] index, str in
            vc.munuBlock = { [weak self] index, _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: TalkingAlertShow.attribAlert(title: "Delete Comment?".localized, attributedMessage: NSMutableAttributedString.init(), leftBtnTitle: "Cancel".localized, rightBtnTitle: "Delete".localized) {
                MotilityThen.displace(title: (String(str_addName) + String(str_roomValue.prefix(2)) + String(str_intimateValue)).localized, attributedMessage: NSMutableAttributedString(), leftBtnTitle: (String(str_layerData) + str_addTitle.replacingOccurrences(of: "equal", with: "l")).localized, rightBtnTitle: (String(str_originalName.prefix(5)) + str_partyData.lowercased()).localized) {
                    //: TalkingAlertShow.hideAlert()
                    MotilityThen.afterward()

                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    MotilityThen.afterward()
                    //: ProgressHUD.show()
                    ModelReactiveCompatible.fromTarget()
                    //: var dict = Dictionary<String, Any>()
                    var dict = [String: Any]()
                    //: dict["id"] = cid
                    dict["id"] = cid
                    //: TalkingMomentRequestTool.req_DeleteMomentReply(params: dict) { succeed, result, errorModel in
                    StreetSmartReactiveCompatible.upCompletion(params: dict) { succeed, _, _ in
                        //: ProgressHUD.dismiss()
                        ModelReactiveCompatible.dataConverterCan()
                        //: if succeed {
                        if succeed {
                            //: for (index, model) in self.commentList.enumerated() {
                            for (index, model) in self.commentList.enumerated() {
                                //: if cid == model.cid {
                                if cid == model.cid {
                                    //: self.commentList.remove(at: index)
                                    self.commentList.remove(at: index)
                                    //: break
                                    break
                                }
                            }
                            //: self.mainTableView.reloadData()
                            self.mainTableView.reloadData()
                            //: self.momentModel.replyNum!  -= 1
                            self.momentModel.replyNum! -= 1
                            //: self.setupMomentView()
                            self.includeView()
                            //: NotificationCenter.default.post(name: UPDATE_COMMENTNUMBER_NOTIFICATION, object: self, userInfo: ["type": "comment".localized, "number": (self.momentModel.replyNum) ?? 0, "momentId": self.momentModel.mid ?? ""])
                            NotificationCenter.default.post(name: kLet_infoRecordValue, object: self, userInfo: [String(bytes: str_appValue.map{playManager(off: $0)}, encoding: .utf8)!: (str_labelSignValue.replacingOccurrences(of: "color", with: "n")).localized, String(bytes: str_titleValue.map{colorBean(style: $0)}, encoding: .utf8)!: (self.momentModel.replyNum) ?? 0, String(bytes: str_frameTitle.map{managerFile(leading: $0)}, encoding: .utf8)!: self.momentModel.mid ?? ""])
                        }
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate,UITableViewdataSourceArr

//: extension TalkingMomentDetailVC: UITableViewDelegate, UITableViewDataSource {
extension PoreViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return self.commentList.count
        return self.commentList.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: let model = self.commentList[section]
        let model = self.commentList[section]
        //: return model.comment.count
        return model.comment.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.commentList[indexPath.section]
        let model = self.commentList[indexPath.section]
        //: let replymodel = model.comment[indexPath.row]
        let replymodel = model.comment[indexPath.row]
        //: if model.comment.count == 1 {
        if model.comment.count == 1 {
            //: return replymodel.itemHeight! + 5
            return replymodel.itemHeight! + 5
        }
        //: return replymodel.itemHeight!
        return replymodel.itemHeight!
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingCommentReplyItemCell"
        let identifier = (String(str_playerViewValue.prefix(4)) + "ingCommen" + String(str_makeTitle) + String(str_startData.prefix(5)) + "emCell")
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingCommentReplyItemCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TargetItemCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingCommentReplyItemCell(style: .default, reuseIdentifier: identifier)
            cell = TargetItemCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model = self.commentList[indexPath.section]
        let model = self.commentList[indexPath.section]
        //: if model.comment.count>0 {
        if model.comment.count > 0 {
            //: let replymodel = model.comment[indexPath.row]
            let replymodel = model.comment[indexPath.row]
            //: cell?.configCell(model: replymodel)
            cell?.equalModel(model: replymodel)
        }
        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //: let model = self.commentList[indexPath.section]
        let model = self.commentList[indexPath.section]
        //: let replymodel = model.comment[indexPath.row]
        let replymodel = model.comment[indexPath.row]

        //: var height = CGFloat()
        var height = CGFloat()
        //: if (model.comment.count == 1) {
        if model.comment.count == 1 {
            //: height = replymodel.itemHeight! + 5
            height = replymodel.itemHeight! + 5
            //: } else {
        } else {
            //: height = replymodel.itemHeight!
            height = replymodel.itemHeight!
        }
        //: let tcell: TalkingCommentReplyItemCell = cell as! TalkingCommentReplyItemCell
        let tcell: TargetItemCell = cell as! TargetItemCell
        //: tcell.shearTableViewSection(cell: cell, tableView: tableView, indexPath: indexPath as NSIndexPath, radius: 6, height: height)
        tcell.toRoom(cell: cell, tableView: tableView, indexPath: indexPath as NSIndexPath, radius: 6, height: height)
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.commentList[indexPath.section]
        let model = self.commentList[indexPath.section]
        //: let replymodel = model.comment[indexPath.row]
        let replymodel = model.comment[indexPath.row]
        //: if replymodel.allCountContent  == "more>>" {
        if replymodel.allCountContent == (String(str_mediumTitle.prefix(5)) + String(str_backgroundValue)) {
            //: let lastmodel = model.comment[model.comment.count-2]
            let lastmodel = model.comment[model.comment.count - 2]
            //: requestReplyList(cid: model.cid!, lastId: lastmodel.cid ?? "", limit: 5, index: indexPath)
            bullSEyeIndex(cid: model.cid!, lastId: lastmodel.cid ?? "", limit: 5, index: indexPath)
            //: } else {
        } else {
            //: self.comInputView.updatePlaceholder(holder: "Reply".localized + "\(replymodel.nickname)" + ":", index: 0, row: indexPath, type: 2)
            self.comInputView.collisionCourse(holder: (String(str_videoData.suffix(5))).localized + "\(replymodel.nickname)" + ":", index: 0, row: indexPath, type: 2)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let headeView: TalkingCommentItemCell = TalkingCommentItemCell.init(style: .default, reuseIdentifier: nil)
        let headeView = LengthThen(style: .default, reuseIdentifier: nil)
        //: let model = self.commentList[section]
        let model = self.commentList[section]
        //: headeView.configCell(model: model)
        headeView.noCell(model: model)
        //: headeView.commentReplyBlock = { [weak self] nickname in
        headeView.commentReplyBlock = { [weak self] nickname in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.comInputView.updatePlaceholder(holder: "Reply".localized + " \(nickname)" + ":", index: section, row: IndexPath(), type: 1)
            self.comInputView.collisionCourse(holder: (String(str_videoData.suffix(5))).localized + " \(nickname)" + ":", index: section, row: IndexPath(), type: 1)
        }
        //: headeView.DeleteReplyBlock = {[weak self] cid in
        headeView.DeleteReplyBlock = { [weak self] cid in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.deleteReplay(cid: cid)
            self.ingot(cid: cid)
        }
        //: return headeView
        return headeView
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: let model = self.commentList[section]
        let model = self.commentList[section]
        //: if model.comment.count == 0 {
        if model.comment.count == 0 {
            //: return model.itemHeight!-8
            return model.itemHeight! - 8
        }
        //: return model.itemHeight!
        return model.itemHeight!
    }
}

// MARK: - Layout

//: extension TalkingMomentDetailVC {
extension PoreViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func imageWith() {
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: self.title = "Details".localized
        self.title = (String(str_executeName.prefix(7))).localized

        //: let btn=UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 20))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 20))
        //: if self.momentModel.uid == EqualThen.share.loginUserMode.userID {
        if self.momentModel.uid == EqualThen.share.loginUserMode.userID {
            //: btn.setTitle("Delete".localized, for: .normal)
            btn.setTitle((String(str_originalName.prefix(5)) + str_partyData.lowercased()).localized, for: .normal)
            //: btn.frame = CGRect(x: 0, y: 0, width: 60, height: 20)
            btn.frame = CGRect(x: 0, y: 0, width: 60, height: 20)
            //: btn.setTitleColor(.appTitleColor(), for: .normal)
            btn.setTitleColor(.executeTo(), for: .normal)
            //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
            btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 15)
            //: } else {
        } else {
            //: btn.setImage(UIImage.eponymUp(name: "icon_moment_nor_report"), for: .normal)
            btn.setImage(UIImage.eponymUp(name: (String(str_talkToTitleContent.suffix(5)) + "momen" + String(str_menuData.suffix(7)) + String(str_styleText))), for: .normal)
        }
        //: btn.addTarget(self, action: #selector(BlockBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(toApp), for: .touchUpInside)
        //: let item=UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem=item
        self.navigationItem.rightBarButtonItem = item

        //: self.view.addSubview(mainTableView)
        self.view.addSubview(mainTableView)
        //: self.view.addSubview(comInputView)
        self.view.addSubview(comInputView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func ocular() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(0)
            make.top.equalTo(self.view).offset(0)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-inputViewHeight)
            make.bottom.equalTo(self.view.snp.bottom).offset(-inputViewHeight)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
        //: comInputView.snp.makeConstraints { make in
        comInputView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view)
            make.bottom.equalTo(self.view)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(inputViewHeight)
            make.height.equalTo(inputViewHeight)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func imageEqual() {
        //: mainTableView.addFooterRefresh { [weak self] in
        mainTableView.fromStatus { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.locationTo()
        }
    }

    //: func setupMomentView() {
    func includeView() {
        //: let view = UIView.init()
        let view = UIView()
        //: let cell: TalkingMomentItemCell = TalkingMomentItemCell.init(style: .default, reuseIdentifier: nil)
        let cell = EscapedView(style: .default, reuseIdentifier: nil)
        //: cell.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: momentModel.itemHeight ?? 56 - 12 )
        cell.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: momentModel.itemHeight ?? 56 - 12)
        //: cell.initwith(isListTableCell: false)
        cell.nameColorCell(isListTableCell: false)
        //: cell.configCell(model: momentModel)
        cell.lessToolBind(model: momentModel)
        //: cell.playVideo()
        cell.roundPauseVideo()
        //: view.frame = cell.frame
        view.frame = cell.frame
        //: view.addSubview(cell)
        view.addSubview(cell)

        //: if (momentModel.replyNum! > 0) {
        if momentModel.replyNum! > 0 {
            //: commentNumberLabel.text = String(format: "Comment".localized + " \(momentModel.replyNum!)")
            commentNumberLabel.text = String(format: (String(str_playerData) + String(str_upData)).localized + " \(momentModel.replyNum!)")
            //: view.addSubview(commentNumberLabel)
            view.addSubview(commentNumberLabel)
            //: commentNumberLabel.snp.makeConstraints { make in
            commentNumberLabel.snp.makeConstraints { make in
                //: make.leading.equalTo(15)
                make.leading.equalTo(15)
                //: make.top.equalTo(momentModel.itemHeight!+16)
                make.top.equalTo(momentModel.itemHeight! + 16)
                //: make.size.equalTo(CGSize(width: ScreenWidth, height: 22))
                make.size.equalTo(CGSize(width: kLet_cameraValue, height: 22))
            }
            //: view.height = momentModel.itemHeight!+38
            view.height = momentModel.itemHeight! + 38
        }

        //: self.mainTableView.tableHeaderView = view
        self.mainTableView.tableHeaderView = view
    }
}
