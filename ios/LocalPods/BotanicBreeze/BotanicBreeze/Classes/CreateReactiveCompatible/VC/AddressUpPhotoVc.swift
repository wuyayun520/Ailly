
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_putTitle:[UInt8] = [0xf,0x8,0xf,0x12,0x4e,0x5,0x9,0x2,0x3,0x14,0x5c,0x4f,0x46,0xe,0x7,0x15,0x46,0x8,0x9,0x12,0x46,0x4,0x3,0x3,0x8,0x46,0xf,0xb,0x16,0xa,0x3,0xb,0x3,0x8,0x12,0x3,0x2]

/*: "Photo greeting" :*/
fileprivate let str_succeedValue:[Character] = ["P","h","o","t","o"," ","g","r","e","e"]
fileprivate let str_acceptName:String = "tinlabel"

/*: "PointOfDepartureViewCell" :*/
fileprivate let str_threadName:[Character] = ["T","a","l","k","i","n","g","E","d","i","t","P","h","o"]
fileprivate let str_responseValue:[Character] = ["t","o","C","e","l","l"]

/*: "RawThen" :*/
fileprivate let str_viewData:[Character] = ["T","a","l","k","i","n","g","G","r","e","e","t","P","h","o","t","o","T","a","b"]
fileprivate let str_endValue:[Character] = ["l","e","C","e","l","l"]

/*: "icon_me_greetSetPhoto_select_nor" :*/
fileprivate let str_enterTagViewText:[UInt8] = [0x72,0x6f,0x6e,0x5f,0x74,0x63,0x65,0x6c,0x65,0x73,0x5f,0x6f,0x74,0x6f,0x68,0x50,0x74,0x65,0x53,0x74,0x65,0x65,0x72,0x67,0x5f,0x65,0x6d,0x5f,0x6e,0x6f,0x63,0x69]

/*: "icon_me_greetSetPhoto_select_pre" :*/
fileprivate let str_toArrayTitle:[UInt8] = [0x2e,0x28,0x34,0x33,0x24,0x32,0x2a,0x24,0x2c,0x37,0x2a,0x2a,0x39,0x18,0x2a,0x39,0x15,0x2d,0x34,0x39,0x34,0x24,0x38,0x2a,0x31,0x2a,0x28,0x39,0x24,0x35,0x37,0x2a]

fileprivate func netTitleHandle(hidden num: UInt8) -> UInt8 {
    let value = Int(num) - 197
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "  Burn after reading" :*/
fileprivate let str_viewTopData:[Character] = [" "," ","B","u","r","n"," ","a","f","t","e","r"," ","r","e","a","d","i","n","g"]

/*: "Finish" :*/
fileprivate let str_userDropViewValue:[Character] = ["F","i","n","i","s","h"]

/*: "type" :*/
fileprivate let str_timeImageName:String = "ttextpe"

/*: "isBurn" :*/
fileprivate let str_viewText:[Character] = ["i","s","B","u","r"]
fileprivate let str_centerData:String = "selected"

/*: "list" :*/
fileprivate let str_makeValue:String = "lifirst"

/*: "unlockGift" :*/
fileprivate let str_requestTitleName:String = "UN"
fileprivate let str_popData:String = "LOCK"

/*: "giftId" :*/
fileprivate let str_makeData:String = "giftIdfinish let view"

/*: "id" :*/
fileprivate let str_fileData:String = "ilocation"

/*: "content" :*/
fileprivate let str_logData:String = "ctext"
fileprivate let str_containerData:String = "navailableenavailable"

/*: "status" :*/
fileprivate let str_nameUserValue:String = "statsends"

/*: "photo" :*/
fileprivate let str_listTableName:String = "phlocktlock"

/*: "Delete Successfully" :*/
fileprivate let str_voiceName:String = "Deletexplain model"
fileprivate let str_countTitle:[Character] = ["s"]
fileprivate let str_actionName:String = "fbackgroundlly"

/*: "unlockGiftId" :*/
fileprivate let str_sourceTitle:[Character] = ["u","n","l","o","c","k","G","i","f","t","I","d"]

/*: "Upload a beautiful photo of the greeting" :*/
fileprivate let str_picBottomMakerTitle:[UInt8] = [0x67,0x6e,0x69,0x74,0x65,0x65,0x72,0x67,0x20,0x65,0x68,0x74,0x20,0x66,0x6f,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x6c,0x75,0x66,0x69,0x74,0x75,0x61,0x65,0x62,0x20,0x61,0x20,0x64,0x61,0x6f,0x6c,0x70,0x55]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AddressUpPhotoVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/27.
//

//: import UIKit
import UIKit

//: class TalkingGreetPhotoVC: TalkingBaseViewController {
class AddressUpPhotoVc: SeamViewController {
    //: var PhotoArray: [TalkingUserInfoGalleryModel] = []
    var PhotoArray: [TargetTitleHandyJSON] = []
    //: var giftDic = Dictionary<String, Any>()
    var giftDic = [String: Any]()
    //: var seleteGiftId = ""  /// 选中的礼物ID
    var seleteGiftId = "" /// 选中的礼物ID
    //: var isBurn = 0
    var isBurn = 0 // 是否阅后即焚：1=是，0=否

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_putTitle.map{$0^102}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Photo greeting".localized
        self.title = (String(str_succeedValue) + str_acceptName.replacingOccurrences(of: "label", with: "g")).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.imageColor()
        //: setupSubviews()
        lineBringSubviews()
        //: setupSubViewsConstraint()
        addText()
        //: bindInteraction()
        event()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: table.register(TalkingEditPhotoCell.self, forCellReuseIdentifier: "TalkingEditPhotoCell")
        table.register(PointOfDepartureViewCell.self, forCellReuseIdentifier: (String(str_threadName) + String(str_responseValue)))
        //: table.register(TalkingGreetPhotoTableCell.self, forCellReuseIdentifier: "TalkingGreetPhotoTableCell")
        table.register(RawThen.self, forCellReuseIdentifier: (String(str_viewData) + String(str_endValue)))
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: return table
        return table
        //: }()
    }()

    //: lazy var seleteBtn: UIButton = {
    lazy var seleteBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "icon_me_greetSetPhoto_select_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: String(bytes: str_enterTagViewText.reversed(), encoding: .utf8)!), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "icon_me_greetSetPhoto_select_pre"), for: .selected)
        btn.setImage(UIImage.eponymUp(name: String(bytes: str_toArrayTitle.map{netTitleHandle(hidden: $0)}, encoding: .utf8)!), for: .selected)
        //: btn.setTitle("  Burn after reading".localized, for: .normal)
        btn.setTitle((String(str_viewTopData)).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        btn.setTitleColor(UIColor.executeTo(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: btn.addTarget(self, action: #selector(seleteBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(responseToClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(str_userDropViewValue)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 17)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: kLet_cameraValue - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(blockDoingClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingGreetPhotoVC {
extension AddressUpPhotoVc {
    //: func getPhotoList(isFreshAll: Bool) {
    func express(isFreshAll: Bool) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = 4
        dict[(str_timeImageName.replacingOccurrences(of: "text", with: "y"))] = 4
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: TalkingMeRequestTool.req_GetGreetList(params: dict) {[weak self] succeed, result, errorModel in
        CameraThen.fall(params: dict) { [weak self] succeed, result, _ in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: self.PhotoArray.removeAll()
                self.PhotoArray.removeAll()
                //: self.isBurn = dict["isBurn"] as? Int ?? 0
                self.isBurn = dict[(String(str_viewText) + str_centerData.replacingOccurrences(of: "selected", with: "n"))] as? Int ?? 0
                //: self.seleteBtn.isSelected = self.isBurn > 0
                self.seleteBtn.isSelected = self.isBurn > 0
                //: let array: Array =  dict["list"] as? Array<Any> ?? Array.init()
                let array: Array = dict[(str_makeValue.replacingOccurrences(of: "first", with: "st"))] as? [Any] ?? Array()
                //: self.giftDic = dict["unlockGift"] as? [String: Any] ?? Dictionary.init()
                self.giftDic = dict[(str_requestTitleName.lowercased() + str_popData.lowercased() + "Gift")] as? [String: Any] ?? Dictionary()
                //: self.seleteGiftId = self.giftDic["giftId"] as? String ?? ""
                self.seleteGiftId = self.giftDic[(String(str_makeData.prefix(6)))] as? String ?? ""
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: let dic  = array[i] as? Dictionary<String, Any>
                    let dic = array[i] as? [String: Any]
                    //: var model = TalkingUserInfoGalleryModel.init()
                    var model = TargetTitleHandyJSON()
                    //: model.uid = dic?["id"] as? String ?? ""
                    model.uid = dic?["id"] as? String ?? ""
                    //: model.url = dic?["content"] as? String ?? ""
                    model.url = dic?[(str_logData.replacingOccurrences(of: "text", with: "o") + str_containerData.replacingOccurrences(of: "available", with: "t"))] as? String ?? ""
                    //: model.status = dic?["status"] as? Int ?? 0
                    model.status = dic?[(str_nameUserValue.replacingOccurrences(of: "send", with: "u"))] as? Int ?? 0
                    //: model.isLocal = false
                    model.isLocal = false
                    //: self.PhotoArray.append(model)
                    self.PhotoArray.append(model)
                }
                //: if isFreshAll {
                if isFreshAll {
                    //: self.MainTable.reloadData()
                    self.MainTable.reloadData()
                    //: }else {
                } else {
                    /// 防止刷新全部，把修改的礼物信息还原
                    //: self.MainTable.reloadSection(0, with: .none)
                    self.MainTable.reloadSection(0, with: .none)
                }
                //: self.examinefinishBtnStatus()
                self.tool()
            }
        }
    }
}

// MARK: - Event

//: extension TalkingGreetPhotoVC {
extension AddressUpPhotoVc {
    //: @objc func finishBtnClick() {
    @objc func blockDoingClick() {
        //: self.saveInfo()
        self.constraintBy()
    }

    //: @objc func seleteBtnClick() {
    @objc func responseToClick() {
        //: seleteBtn.isSelected = !seleteBtn.isSelected
        seleteBtn.isSelected = !seleteBtn.isSelected
        //: examinefinishBtnStatus()
        tool()
    }

    //: func examinefinishBtnStatus() {
    func tool() {
        //: if  self.PhotoArray.count > 0 && seleteGiftId.count > 0 {
        if self.PhotoArray.count > 0, seleteGiftId.count > 0 {
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
            //: }else {
        } else {
            //: self.finishBtn.isEnabled = false
            self.finishBtn.isEnabled = false
        }
    }
}

// MARK: - PhotoReactiveCompatible

//: extension TalkingGreetPhotoVC: EditPhotoDelegate {
extension AddressUpPhotoVc: PhotoReactiveCompatible {
    /// 添加本地图片
    //: func addPhoto(_ icon: [UIImage]) {
    func framePhoto(_ icon: [UIImage]) {
        //: uploadPhoto(icon)
        photo(icon)
    }

    /// 删除本地相册选择的图片
    //: func deletePhoto(_ icon: UIImage) {
    func world(_: UIImage) {}

    /// 删除后台相册的图片
    //: func deletePhotoWithUid(_ iconUid: String) {
    func dataConverterGift(_ iconUid: String) {
        //: var seleteIndex = -1
        var seleteIndex = -1
        //: for i in 0..<PhotoArray.count {
        for i in 0 ..< PhotoArray.count {
            //: if iconUid == PhotoArray[i].uid {
            if iconUid == PhotoArray[i].uid {
                //: seleteIndex =  i
                seleteIndex = i
            }
        }
        //: if seleteIndex>=0 && seleteIndex<PhotoArray.count {
        if seleteIndex >= 0 && seleteIndex < PhotoArray.count {
            //: deletePhoto(index: seleteIndex)
            myIndex(index: seleteIndex)
        }
    }

    /// 上传相册
    //: func uploadPhoto(_ icon: [UIImage]) {
    func photo(_ icon: [UIImage]) {
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: DispatchQueue.global().async {
        DispatchQueue.global().async {
            //: let sema = DispatchSemaphore(value: 0)
            let sema = DispatchSemaphore(value: 0)

            //: for i in 0..<icon.count {
            for i in 0 ..< icon.count {
                //: let resultData: NSData = icon[i].compressedImageData()! as NSData
                let resultData: NSData = icon[i].key()! as NSData
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["type"] = 4
                dict[(str_timeImageName.replacingOccurrences(of: "text", with: "y"))] = 4
                //: dict["photo"] = resultData
                dict[(str_listTableName.replacingOccurrences(of: "lock", with: "o"))] = resultData

                //: TalkingMeRequestTool.req_UploadGreetAdd(params: dict) { succeed, result, errorModel in
                CameraThen.dataConverterWith(params: dict) { succeed, _, _ in

                    //: sema.signal()
                    sema.signal()
                    //: if succeed {
                    if succeed {
                        //: }else {
                    } else {
                        //: ProgressHUD.dismiss()
                        ModelReactiveCompatible.dataConverterCan()
                    }
                }
                //: sema.wait()
                sema.wait()
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now()+1.0) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                //: self.getPhotoList(isFreshAll: false)
                self.express(isFreshAll: false)
                //: self.examinefinishBtnStatus()
                self.tool()
            }
        }
    }

    /// 删除相册
    //: func deletePhoto(index: Int) {
    func myIndex(index: Int) {
        //: let model: TalkingUserInfoGalleryModel = self.PhotoArray[index]
        let model: TargetTitleHandyJSON = self.PhotoArray[index]
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["id"] = model.uid
        dict["id"] = model.uid
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: TalkingMeRequestTool.req_DeleteAudio(params: dict) { succeed, result, errorModel in
        CameraThen.live(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: if succeed {
            if succeed {
                //: self.PhotoArray.remove(at: index)
                self.PhotoArray.remove(at: index)
                //: self.func__showStatusBarSuccessMsg(showMsg: "Delete Successfully".localized)
                self.fileFirst(showMsg: (String(str_voiceName.prefix(5)) + "e Succes" + String(str_countTitle) + str_actionName.replacingOccurrences(of: "background", with: "u")).localized)
                //: self.examinefinishBtnStatus()
                self.tool()
            }
            //: self.MainTable.reloadSection(0, with: .none)
            self.MainTable.reloadSection(0, with: .none)
        }
    }

    /// 修改信息
    //: func saveInfo() {
    func constraintBy() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["unlockGiftId"] = seleteGiftId
        dict[(String(str_sourceTitle))] = seleteGiftId
        //: dict["isBurn"] = seleteBtn.isSelected ? 1:0
        dict[(String(str_viewText) + str_centerData.replacingOccurrences(of: "selected", with: "n"))] = seleteBtn.isSelected ? 1 : 0
        //: TalkingMeRequestTool.req_UploadGreetExtraSetting(params: dict) { succeed, result, errorModel in
        CameraThen.incidentCompletion(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: if succeed {
            if succeed {
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingGreetPhotoVC: UITableViewDelegate, UITableViewDataSource {
extension AddressUpPhotoVc: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let sizewh = Int((ScreenWidth-30-12*2-9*2)/3)
            let sizewh = Int((kLet_cameraValue - 30 - 12 * 2 - 9 * 2) / 3)
            //: let Y = 46+sizewh*3+18
            let Y = 46 + sizewh * 3 + 18
            //: let cellheiht = Y+12
            let cellheiht = Y + 12
            //: return CGFloat(cellheiht)
            return CGFloat(cellheiht)
            //: }else {
        } else {
            //: return 140
            return 140
        }
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 15
        return 15
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let identifier = "TalkingEditPhotoCell"
            let identifier = (String(str_threadName) + String(str_responseValue))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditPhotoCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? PointOfDepartureViewCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditPhotoCell(style: .default, reuseIdentifier: identifier)
                cell = PointOfDepartureViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.setTips(str: "Upload a beautiful photo of the greeting".localized)
            cell?.perchLimited(str: String(bytes: str_picBottomMakerTitle.reversed(), encoding: .utf8)!.localized)
            //: cell?.backBottomOffer = 0
            cell?.backBottomOffer = 0
            //: if PhotoArray.count>0 {
            if PhotoArray.count > 0 {
                //: cell?.setPhoto(selete: PhotoArray)
                cell?.photomosaicMore(selete: PhotoArray)
                //: }else {
            } else {
                //: cell?.resetPhoto()
                cell?.makeTo()
            }
            //: cell?.delegate = self
            cell?.delegate = self
            //: return cell!
            return cell!
            //: }else {
        } else {
            //: let identifier = "TalkingGreetPhotoTableCell"
            let identifier = (String(str_viewData) + String(str_endValue))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingGreetPhotoTableCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? RawThen
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingGreetPhotoTableCell(style: .default, reuseIdentifier: identifier)
                cell = RawThen(style: .default, reuseIdentifier: identifier)
            }
            //: if self.giftDic.keys.isEmpty == false {
            if self.giftDic.keys.isEmpty == false {
                //: cell?.setGiftMsgLab(dic: self.giftDic)
                cell?.style(dic: self.giftDic)
            }
            //: cell?.seleteGiftBlock = { [weak self] giftId in
            cell?.seleteGiftBlock = { [weak self] giftId in
                //: guard let self = self else {
                guard let self = self else {
                    //: return
                    return
                }
                //: self.seleteGiftId = giftId
                self.seleteGiftId = giftId
                //: self.examinefinishBtnStatus()
                self.tool()
            }
            //: return cell!
            return cell!
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView.init()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }
}

// MARK: - Layout

//: extension TalkingGreetPhotoVC {
extension AddressUpPhotoVc {
    /// 添加视图
    //: private func setupSubviews() {
    private func lineBringSubviews() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: self.view.addSubview(seleteBtn)
        self.view.addSubview(seleteBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func addText() {
        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-35)
            make.bottom.equalToSuperview().offset(-35)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-68)
            make.bottom.equalTo(finishBtn.snp.top).offset(-68)
        }
        //: seleteBtn.snp.makeConstraints { make in
        seleteBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(MainTable.snp.bottom).offset(21)
            make.bottom.equalTo(MainTable.snp.bottom).offset(21)
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func event() {
        //: getPhotoList(isFreshAll: true)
        express(isFreshAll: true)
    }
}
