
//: Declare String Begin

/*: "Wallet" :*/
fileprivate let str_hornUserValue:String = "Walletmanager text birth"

/*: "0 Private photos" :*/
fileprivate let str_bottomValue:[Character] = ["0"," ","P","r","i","v"]
fileprivate let str_sectionValue:[Character] = ["a","t","e"," ","p","h","o","t","o","s"]

/*: "0 Private videos" :*/
fileprivate let str_videoText:[Character] = ["0"," ","P","r","i","v","a","t"]
fileprivate let str_addData:[Character] = ["e"," ","v","i","d","e","o","s"]

/*: "0 min voice calls" :*/
fileprivate let str_componentName:String = "var leading text direction class0 min v"
fileprivate let str_normalTitle:String = "open video let modeloice "

/*: "0 min video calls" :*/
fileprivate let str_flowTopValue:String = "show self example let item0 mi"
fileprivate let str_errorName:String = "view template self managereo c"

/*: "me_private_photos_num" :*/
fileprivate let str_pushContent:String = "me_privaapp data path manager false"
fileprivate let str_recommendText:String = "te_phocard make sound view"
fileprivate let str_dataTitle:String = "block shared data returntos_num"

/*: "me_private_video_num" :*/
fileprivate let str_indicatorValue:String = "me_priplayer model"
fileprivate let str_startName:String = "cameraate"
fileprivate let str_colorData:String = "card content titleeo_num"

/*: "me_min_voice_call" :*/
fileprivate let str_noTitle:String = "me_mmodel view section enter"
fileprivate let str_countData:String = "view in inice_"

/*: "me_min_video_call" :*/
fileprivate let str_backData:String = "var message rowme_min"
fileprivate let str_toData:String = "next content in blocko_call"

/*: "&type=1" :*/
fileprivate let str_bottomText:String = "status color true equal&type=1"

/*: "&type=2" :*/
fileprivate let str_userValue:String = "let extra make more&type="
fileprivate let str_modelData:[Character] = ["2"]

/*: "&type=4" :*/
fileprivate let str_leadingData:[Character] = ["&","t","y","p","e"]
fileprivate let str_styleName:String = "=4"

/*: "&type=3" :*/
fileprivate let str_imageData:[Character] = ["&","t","y","p","e","=","3"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UserViewController.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2025/3/24.
//

//: import UIKit
import UIKit

//: class TalkingWalletViewController: TalkingBaseViewController {
class UserViewController: SeamViewController {
    //: private var section1Data = [(String, String)]()
    private var section1Data = [(String, String)]()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Wallet"
        self.title = (String(str_hornUserValue.prefix(6)))
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.imageColor()
        //: loadResidualInfoData()
        fillUpRange()
        //: view.addSubview(tableView)
        view.addSubview(tableView)
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(loadResidualInfoData),
                                               selector: #selector(fillUpRange),
                                               //: name: USER_UPDATE_RESIDUALINFO_NOTIFICATION,
                                               name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               //: object: nil)
                                               object: nil)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

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
        //: table.register(TalkingUserCenterCell.self, forCellReuseIdentifier: TalkingUserCenterCell.className())
        table.register(CentralCityThen.self, forCellReuseIdentifier: CentralCityThen.className())
        //: table.contentInset = UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0)
        table.contentInset = UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().sectionHeaderTopPadding = 0
            }
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: return table
        return table
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingWalletViewController {
extension UserViewController {
    /// 加载数据
    //: @objc private func loadResidualInfoData() {
    @objc private func fillUpRange() {
        //: TalkingUserRequestManager.func__reqResidualInfo() { succeed, result, errorModel in
        TitleEqualRequestManager.programGiftLoad { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: var str1 = "0 Private photos"
            var str1 = (String(str_bottomValue) + String(str_sectionValue))
            //: var str2 = "0 Private videos"
            var str2 = (String(str_videoText) + String(str_addData))
            //: var str3 = "0 min voice calls"
            var str3 = (String(str_componentName.suffix(7)) + String(str_normalTitle.suffix(5)) + "calls")
            //: var str4 = "0 min video calls"
            var str4 = (String(str_flowTopValue.suffix(4)) + "n vid" + String(str_errorName.suffix(4)) + "alls")

            //: if let datas = Array<ResidualInfoModel>.deserialize(from: result as? Array) {
            if let datas = Array<ViewModelType>.deserialize(from: result as? Array) {
                //: datas.forEach { model in
                for model in datas {
                    //: if model?.type == 1 {
                    if model?.type == 1 { // 私密照片
                        //: str1 = str1.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        str1 = str1.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        //: } else if model?.type == 2 {
                    } else if model?.type == 2 { // 私密视频
                        //: str2 = str2.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        str2 = str2.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        //: } else if model?.type == 4 {
                    } else if model?.type == 4 { // 音频包
                        //: str3 = str3.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        str3 = str3.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        //: } else if model?.type == 3 {
                    } else if model?.type == 3 { // 视频频包
                        //: str4 = str4.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        str4 = str4.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                    }
                }
            }

            //: self.section1Data = [(str1, "me_private_photos_num"),
            self.section1Data = [(str1, (String(str_pushContent.prefix(8)) + String(str_recommendText.prefix(6)) + String(str_dataTitle.suffix(7)))),
                                 //: (str2, "me_private_video_num"),
                                 (str2, (String(str_indicatorValue.prefix(6)) + str_startName.replacingOccurrences(of: "camera", with: "v") + "_vid" + String(str_colorData.suffix(6)))),
                                 //: (str3, "me_min_voice_call"),
                                 (str3, (String(str_noTitle.prefix(4)) + "in_vo" + String(str_countData.suffix(4)) + "call")),
                                 //: (str4, "me_min_video_call")]
                                 (str4, (String(str_backData.suffix(6)) + "_vide" + String(str_toData.suffix(6))))]
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingWalletViewController: UITableViewDelegate, UITableViewDataSource {
extension UserViewController: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return section1Data.count
        return section1Data.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserCenterCell.className(), for: indexPath) as! TalkingUserCenterCell
        let cell = tableView.dequeueReusableCell(withIdentifier: CentralCityThen.className(), for: indexPath) as! CentralCityThen
        //: let data = self.section1Data[indexPath.row]
        let data = self.section1Data[indexPath.row]
        //: let isLast = self.section1Data.count == (indexPath.row + 1)
        let isLast = self.section1Data.count == (indexPath.row + 1)
        //: cell.setViewData(title: data.0, icon: data.1, row: indexPath.row, isLast: isLast)
        cell.pageLast(title: data.0, icon: data.1, row: indexPath.row, isLast: isLast)
        //: cell.setpurchaseBtn()
        cell.modeAdd()
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if indexPath.row == 0 {
        if indexPath.row == 0 {
            //: EditTextThen.share.func__pushToRechargeAlert(appendParams: "&type=1")
            EditTextThen.share.pause(appendParams: (String(str_bottomText.suffix(7))))
            //: } else if indexPath.row == 1 {
        } else if indexPath.row == 1 {
            //: EditTextThen.share.func__pushToRechargeAlert(appendParams: "&type=2")
            EditTextThen.share.pause(appendParams: (String(str_userValue.suffix(6)) + String(str_modelData)))
            //: } else if indexPath.row == 2 {
        } else if indexPath.row == 2 {
            //: EditTextThen.share.func__pushToRechargeAlert(appendParams: "&type=4")
            EditTextThen.share.pause(appendParams: (String(str_leadingData) + str_styleName.capitalized))
            //: } else if indexPath.row == 3 {
        } else if indexPath.row == 3 {
            //: EditTextThen.share.func__pushToRechargeAlert(appendParams: "&type=3")
            EditTextThen.share.pause(appendParams: (String(str_imageData)))
        }
    }
}
