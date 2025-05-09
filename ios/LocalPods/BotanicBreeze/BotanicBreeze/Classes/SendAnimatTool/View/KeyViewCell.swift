
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_imageData:[UInt8] = [0x54,0x53,0x54,0x49,0x15,0x5e,0x52,0x59,0x58,0x4f,0x7,0x14,0x1d,0x55,0x5c,0x4e,0x1d,0x53,0x52,0x49,0x1d,0x5f,0x58,0x58,0x53,0x1d,0x54,0x50,0x4d,0x51,0x58,0x50,0x58,0x53,0x49,0x58,0x59]

private func viewRaw(row num: UInt8) -> UInt8 {
    return num ^ 61
}

/*: "#30D00B" :*/
fileprivate let str_statusValue:String = "leading size self#30D00"
fileprivate let str_makeUserValue:String = "manager"

/*: "icon_receivedcalls" :*/
fileprivate let str_viewData:[Character] = ["i","c","o","n","_","r","e","c","e","i","v","e","d"]
fileprivate let str_toolValue:String = "cnextlls"

/*: "Received calls" :*/
fileprivate let str_southText:[Character] = ["R","e","c","e","i","v"]
fileprivate let str_pathContent:String = "value model add info makeed calls"

/*: "icon_dialedcalls" :*/
fileprivate let str_nameAppData:[Character] = ["i","c","o","n","_","d","i","a","l","e"]
fileprivate let str_makeText:String = "dcallup"

/*: "Dialed calls" :*/
fileprivate let str_componentText:String = "Dialed lab type import error"
fileprivate let str_layerValue:String = "cleadingls"

/*: "%02i:%02i" :*/
fileprivate let str_dataValue:[Character] = ["%","0","2"]
fileprivate let str_heartData:String = "i:%02isize control return"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/8.
//

//: import UIKit
import UIKit

//: class TalkingVideoCallTableCell: UITableViewCell {
class KeyViewCell: UITableViewCell {
    //: var currenModel = TalkingVideoCallRecordModel()
    var currenModel = EditMeasurable()
    //: var seleteIndex: IndexPath?
    var seleteIndex: IndexPath?
    //: open weak var delegate: WhoLikeDelegate?
    open weak var delegate: ProgressReactiveCompatible?

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: self.setupSubviews()
        self.bundle()
        //: self.setupSubViewsConstraint()
        self.cancel()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_imageData.map{viewRaw(row: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: lazy var iconBtn: UIButton = {
    lazy var iconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 40/2
        btn.layer.cornerRadius = 40 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.addTarget(self, action: #selector(iconBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(makeSnapClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var iconBorderBtn: UIButton = {
    lazy var iconBorderBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var rcordLB: UILabel = {
    lazy var rcordLB: UILabel = {
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

    //: lazy var nameLB: UILabel = {
    lazy var nameLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 14)
        label.font = .pingfang(type: .Regular, fontSize: 14)
        //: label.textColor = .publishView()
        label.textColor = .publishView()
        //: return label
        return label
        //: }()
    }()

    //: lazy var rcordImg: UIImageView = {
    lazy var rcordImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: return img
        return img
        //: }()
    }()

    //: lazy var timeLB: UILabel = {
    lazy var timeLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 12)
        label.font = .pingfang(type: .Regular, fontSize: 12)
        //: label.textColor = .publishView()
        label.textColor = .publishView()
        //: return label
        return label
        //: }()
    }()

    //: lazy var durationLB: UILabel = {
    lazy var durationLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 10)
        label.font = .pingfang(type: .Medium, fontSize: 10)
        //: label.textColor = .publishView()
        label.textColor = .publishView()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    //: lazy var onlineView: UIView = {
    lazy var onlineView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.init(hex: "#30D00B")
        view.backgroundColor = UIColor(hex: (String(str_statusValue.suffix(6)) + str_makeUserValue.replacingOccurrences(of: "manager", with: "B")))
        //: view.layer.cornerRadius = 5
        view.layer.cornerRadius = 5
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoCallTableCell {
extension KeyViewCell {
    //: func setVideoCallCell(model: TalkingVideoCallRecordModel) {
    func coin(model: EditMeasurable) {
        //: currenModel = model
        currenModel = model

        //: iconBtn.setUrlImage(urlStr: model.headPic)
        iconBtn.dataBack(urlStr: model.headPic)
        //: if !model.headPicFrame.isEmptyString {
        if !model.headPicFrame.isEmptyString {
            //: iconBorderBtn.isHidden = false
            iconBorderBtn.isHidden = false
            //: iconBorderBtn.setHeadFrameUrlImage(urlStr: model.headPicFrame)
            iconBorderBtn.pushStr(urlStr: model.headPicFrame)
            //: } else {
        } else {
            //: iconBorderBtn.isHidden = true
            iconBorderBtn.isHidden = true
        }
        //: if model.callStatus == 0 {
        if model.callStatus == 0 {
            //: rcordImg.image = UIImage.eponymUp(name: "icon_receivedcalls")
            rcordImg.image = UIImage.eponymUp(name: (String(str_viewData) + str_toolValue.replacingOccurrences(of: "next", with: "a")))
            //: rcordLB.text = "Received calls".localized
            rcordLB.text = (String(str_southText) + String(str_pathContent.suffix(8))).localized
            //: } else {
        } else {
            //: rcordImg.image = UIImage.eponymUp(name: "icon_dialedcalls")
            rcordImg.image = UIImage.eponymUp(name: (String(str_nameAppData) + str_makeText.replacingOccurrences(of: "up", with: "s")))
            //: rcordLB.text = "Dialed calls".localized
            rcordLB.text = (String(str_componentText.prefix(7)) + str_layerValue.replacingOccurrences(of: "leading", with: "al")).localized
        }
        //: let ductaion = Double(model.duration)
        let ductaion = Double(model.duration)
        //: let min = floor(ductaion / 60)
        let min = floor(ductaion / 60)
        //: let sec = floor(ductaion.truncatingRemainder(dividingBy: 60))
        let sec = floor(ductaion.truncatingRemainder(dividingBy: 60))
        //: durationLB.text = String(format: "%02i:%02i", Int(min), Int(sec))
        durationLB.text = String(format: "%02i:%02i", Int(min), Int(sec))
        //: nameLB.text = model.nickname
        nameLB.text = model.nickname
        //: timeLB.text = model.startTime
        timeLB.text = model.startTime
        //: onlineView.isHidden = model.onlineStatus == 0
        onlineView.isHidden = model.onlineStatus == 0
    }

    /// 用户详情
    //: @objc func iconBtnClick() {
    @objc func makeSnapClick() {
        //: EditTextThen.share.func__pushToUserDetailVC(uid: "\(currenModel.uid)")
        EditTextThen.share.soulAge(uid: "\(currenModel.uid)")
    }
}

// MARK: - UI

//: extension TalkingVideoCallTableCell {
extension KeyViewCell {
    //: private func setupSubviews() {
    private func bundle() {
        //: contentView.addSubview(backView)
        contentView.addSubview(backView)
        //: backView.addSubview(iconBtn)
        backView.addSubview(iconBtn)
        //: backView.addSubview(iconBorderBtn)
        backView.addSubview(iconBorderBtn)
        //: backView.addSubview(nameLB)
        backView.addSubview(nameLB)
        //: backView.addSubview(rcordImg)
        backView.addSubview(rcordImg)
        //: backView.addSubview(durationLB)
        backView.addSubview(durationLB)
        //: backView.addSubview(rcordLB)
        backView.addSubview(rcordLB)
        //: backView.addSubview(timeLB)
        backView.addSubview(timeLB)
        //: iconBtn.addSubview(onlineView)
        iconBtn.addSubview(onlineView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func cancel() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: rcordImg.snp.makeConstraints { make in
        rcordImg.snp.makeConstraints { make in
            //: make.leading.equalTo(21)
            make.leading.equalTo(21)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.width.height.equalTo(16)
            make.width.height.equalTo(16)
        }
        //: durationLB.snp.makeConstraints { make in
        durationLB.snp.makeConstraints { make in
            //: make.centerX.equalTo(rcordImg)
            make.centerX.equalTo(rcordImg)
            //: make.top.equalTo(rcordImg.snp.bottom).offset(2)
            make.top.equalTo(rcordImg.snp.bottom).offset(2)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }

        //: iconBtn.snp.makeConstraints { make in
        iconBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(durationLB.snp.trailing).offset(10)
            make.leading.equalTo(durationLB.snp.trailing).offset(10)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: make.size.equalTo(40)
            make.size.equalTo(40)
        }
        //: iconBorderBtn.snp.makeConstraints { make in
        iconBorderBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(durationLB.snp.trailing).offset(7)
            make.leading.equalTo(durationLB.snp.trailing).offset(7)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.size.equalTo(46)
            make.size.equalTo(46)
        }
        //: rcordLB.snp.makeConstraints { make in
        rcordLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconBtn.snp.trailing).offset(8)
            make.leading.equalTo(iconBtn.snp.trailing).offset(8)
            //: make.top.equalTo(iconBtn)
            make.top.equalTo(iconBtn)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: nameLB.snp.makeConstraints { make in
        nameLB.snp.makeConstraints { make in
            //: make.leading.equalTo(rcordLB)
            make.leading.equalTo(rcordLB)
            //: make.top.equalTo(rcordLB.snp.bottom).offset(2)
            make.top.equalTo(rcordLB.snp.bottom).offset(2)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }

        //: timeLB.snp.makeConstraints { make in
        timeLB.snp.makeConstraints { make in
            //: make.top.equalTo(14)
            make.top.equalTo(14)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }
        //: onlineView.snp.makeConstraints { make in
        onlineView.snp.makeConstraints { make in
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
            //: make.size.equalTo(10)
            make.size.equalTo(10)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func bindTotaleraction() {}
}
