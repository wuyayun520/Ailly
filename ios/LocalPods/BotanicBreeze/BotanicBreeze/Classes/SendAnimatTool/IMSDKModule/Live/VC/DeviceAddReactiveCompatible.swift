
//: Declare String Begin

/*: "nav_back_black_nor" :*/
fileprivate let str_titleValue:[Character] = ["n","a","v","_","b","a","c","k","_"]
fileprivate let str_tempHiddenTitleData:String = "let datablack_nor"

/*: "live_explain" :*/
fileprivate let str_shiftTextValue:[Character] = ["l","i","v","e","_","e","x","p","l","a","i","n"]

/*: "Live" :*/
fileprivate let str_okValue:[Character] = ["L","i","v","e"]

/*: "#FAF6FF" :*/
fileprivate let str_inputListName:String = "#FAF6FFempty record"

/*: "icon_live_certification" :*/
fileprivate let str_makeValue:[Character] = ["i","c","o","n","_","l","i","v","e","_","c"]
fileprivate let str_soonData:String = "ermodel"

/*: "Turn on live certification" :*/
fileprivate let str_titleData:String = "Turnadd range make max let"
fileprivate let str_iconText:String = "globalive"
fileprivate let str_momentText:[Character] = ["f","i","c","a","t","i","o","n"]

/*: "will increase the chances of receiving calls to earn more points." :*/
fileprivate let str_contentData:[UInt8] = [0x8a,0x94,0x91,0x91,0xdd,0x94,0x93,0x9e,0x8f,0x98,0x9c,0x8e,0x98,0xdd,0x89,0x95,0x98,0xdd,0x9e,0x95,0x9c,0x93,0x9e,0x98,0x8e,0xdd,0x92,0x9b,0xdd,0x8f,0x98,0x9e,0x98,0x94,0x8b,0x94,0x93,0x9a,0xdd,0x9e,0x9c,0x91,0x91,0x8e,0xdd,0x89,0x92,0xdd,0x98,0x9c,0x8f,0x93,0xdd,0x90,0x92,0x8f,0x98,0xdd,0x8d,0x92,0x94,0x93,0x89,0x8e,0xd3]

/*: "icon_live_publicly" :*/
fileprivate let str_withValue:String = "icreaten"
fileprivate let str_userTextData:[Character] = ["e","_","p","u","b","l","i","c","l","y"]

/*: "Your live will be publicly displayed to others" :*/
fileprivate let str_componentData:[UInt8] = [0x73,0x72,0x65,0x68,0x74,0x6f,0x20,0x6f,0x74,0x20,0x64,0x65,0x79,0x61,0x6c,0x70,0x73,0x69,0x64,0x20,0x79,0x6c,0x63,0x69,0x6c,0x62,0x75,0x70,0x20,0x65,0x62,0x20,0x6c,0x6c,0x69,0x77,0x20,0x65,0x76,0x69,0x6c,0x20,0x72,0x75,0x6f,0x59]

/*: "its content must comply with current laws and regulations and platform requirements." :*/
fileprivate let str_rawText:[UInt8] = [0xd3,0xde,0xdd,0x8a,0xcd,0xd9,0xd8,0xde,0xcf,0xd8,0xde,0x8a,0xd7,0xdf,0xdd,0xde,0x8a,0xcd,0xd9,0xd7,0xda,0xd6,0xe3,0x8a,0xe1,0xd3,0xde,0xd2,0x8a,0xcd,0xdf,0xdc,0xdc,0xcf,0xd8,0xde,0x8a,0xd6,0xcb,0xe1,0xdd,0x8a,0xcb,0xd8,0xce,0x8a,0xdc,0xcf,0xd1,0xdf,0xd6,0xcb,0xde,0xd3,0xd9,0xd8,0xdd,0x8a,0xcb,0xd8,0xce,0x8a,0xda,0xd6,0xcb,0xde,0xd0,0xd9,0xdc,0xd7,0x8a,0xdc,0xcf,0xdb,0xdf,0xd3,0xdc,0xcf,0xd7,0xcf,0xd8,0xde,0xdd,0x98]

fileprivate func viewCount(show num: UInt8) -> UInt8 {
    let value = Int(num) - 106
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_live_face" :*/
fileprivate let str_frameGiftData:[Character] = ["i","c","o","n","_","l","i","v","e","_"]
fileprivate let str_modeContent:[Character] = ["f","a","c","e"]

/*: "Please make sure" :*/
fileprivate let str_viewTimeTaskTitle:String = "Please view share shared"
fileprivate let str_giftName:String = "messageke"

/*: "your face is always in the video frame." :*/
fileprivate let str_mainErrorData:[UInt8] = [0xcb,0xdd,0xc7,0xc0,0x92,0xd4,0xd3,0xd1,0xd7,0x92,0xdb,0xc1,0x92,0xd3,0xde,0xc5,0xd3,0xcb,0xc1,0x92,0xdb,0xdc,0x92,0xc6,0xda,0xd7,0x92,0xc4,0xdb,0xd6,0xd7,0xdd,0x92,0xd4,0xc0,0xd3,0xdf,0xd7,0x9c]

private func sectionBurn(success num: UInt8) -> UInt8 {
    return num ^ 178
}

/*: "Turn on" :*/
fileprivate let str_colorTitleData:[Character] = ["T","u","r","n"," ","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DeviceAddReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/6/15.
//

//: import UIKit
import UIKit

//: class TalkingLiveExplainViewController: TalkingBaseViewController {
class DeviceAddReactiveCompatible: SeamViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true

        //: setupSubviews()
        substantiate()
        //: setupSubViewsConstraint()
        setupCustomer()
    }

    // MARK: - Lazy Load

    //: private lazy var backButton: UIButton = {
    private lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.eponymUp(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.eponymUp(name: (String(str_titleValue) + String(str_tempHiddenTitleData.suffix(9)))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .black
        btn.tintColor = .black
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(subWith), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveImgView: UIImageView = {
    private lazy var liveImgView: UIImageView = {
        //: let v = UIImageView(image: UIImage.eponymUp(name: "live_explain"))
        let v = UIImageView(image: UIImage.eponymUp(name: (String(str_shiftTextValue))))
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: return v
        return v
        //: }()
    }()

    //: private lazy var liveLab: UILabel = {
    private lazy var liveLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Live".localized
        lab.text = (String(str_okValue)).localized
        //: lab.textColor = .appThemeColor()
        lab.textColor = .plaster()
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 18)
        lab.font = UIFont.pingfang(type: .Semibold, fontSize: 18)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#FAF6FF")
        v.backgroundColor = UIColor(hex: (String(str_inputListName.prefix(7))))
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var imgView1: UIImageView = {
    private lazy var imgView1: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.eponymUp(name: "icon_live_certification")
        v.image = UIImage.eponymUp(name: (String(str_makeValue) + str_soonData.replacingOccurrences(of: "model", with: "ti") + "fication"))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab1: UILabel = {
    private lazy var titleLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Turn on live certification".localized
        lab.text = (String(str_titleData.prefix(4)) + " on " + str_iconText.replacingOccurrences(of: "global", with: "l") + " certi" + String(str_momentText)).localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .executeTo()
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 16)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab1: UILabel = {
    private lazy var desLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "will increase the chances of receiving calls to earn more points.".localized
        lab.text = String(bytes: str_contentData.map{$0^253}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .addColor()
        //: lab.font = UIFont.outsideAllSize(fontSize: 14)
        lab.font = UIFont.outsideAllSize(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgView2: UIImageView = {
    private lazy var imgView2: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.eponymUp(name: "icon_live_publicly")
        v.image = UIImage.eponymUp(name: (str_withValue.replacingOccurrences(of: "create", with: "co") + "_liv" + String(str_userTextData)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab2: UILabel = {
    private lazy var titleLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Your live will be publicly displayed to others".localized
        lab.text = String(bytes: str_componentData.reversed(), encoding: .utf8)!.localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .executeTo()
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 16)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab2: UILabel = {
    private lazy var desLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "its content must comply with current laws and regulations and platform requirements.".localized
        lab.text = String(bytes: str_rawText.map{viewCount(show: $0)}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .addColor()
        //: lab.font = UIFont.outsideAllSize(fontSize: 14)
        lab.font = UIFont.outsideAllSize(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgView3: UIImageView = {
    private lazy var imgView3: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.eponymUp(name: "icon_live_face")
        v.image = UIImage.eponymUp(name: (String(str_frameGiftData) + String(str_modeContent)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab3: UILabel = {
    private lazy var titleLab3: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Please make sure".localized
        lab.text = (String(str_viewTimeTaskTitle.prefix(7)) + str_giftName.replacingOccurrences(of: "message", with: "ma") + " sure").localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .executeTo()
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 16)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab3: UILabel = {
    private lazy var desLab3: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "your face is always in the video frame.".localized
        lab.text = String(bytes: str_mainErrorData.map{sectionBurn(success: $0)}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .addColor()
        //: lab.font = UIFont.outsideAllSize(fontSize: 14)
        lab.font = UIFont.outsideAllSize(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var turnOnBtn: UIButton = {
    private lazy var turnOnBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 17)
        btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Turn on".localized, for: .normal)
        btn.setTitle((String(str_colorTitleData)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 240, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: 240, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(turnOnButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(errorBy), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveExplainViewController {
extension DeviceAddReactiveCompatible {
    /// 返回按钮点击事件
    //: @objc private func clickBackButtonAction() {
    @objc private func subWith() {
        //: self.dismiss(animated: true)
        self.dismiss(animated: true)
    }

    /// turn on 按钮点击事件
    //: @objc private func turnOnButtonClick() {
    @objc private func errorBy() {
        //: self.dismiss(animated: true) {
        self.dismiss(animated: true) {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            UserPushListener.sexApp().when()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveExplainViewController {
extension DeviceAddReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func substantiate() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(backButton)
        view.addSubview(backButton)
        //: view.addSubview(liveImgView)
        view.addSubview(liveImgView)
        //: view.addSubview(liveLab)
        view.addSubview(liveLab)
        //: view.addSubview(contentView)
        view.addSubview(contentView)
        //: contentView.addSubview(imgView1)
        contentView.addSubview(imgView1)
        //: contentView.addSubview(titleLab1)
        contentView.addSubview(titleLab1)
        //: contentView.addSubview(desLab1)
        contentView.addSubview(desLab1)
        //: contentView.addSubview(imgView2)
        contentView.addSubview(imgView2)
        //: contentView.addSubview(titleLab2)
        contentView.addSubview(titleLab2)
        //: contentView.addSubview(desLab2)
        contentView.addSubview(desLab2)
        //: contentView.addSubview(imgView3)
        contentView.addSubview(imgView3)
        //: contentView.addSubview(titleLab3)
        contentView.addSubview(titleLab3)
        //: contentView.addSubview(desLab3)
        contentView.addSubview(desLab3)
        //: view.addSubview(turnOnBtn)
        view.addSubview(turnOnBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func setupCustomer() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLet_deviceRecordValue)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_timeSenseValue)
        }

        //: liveImgView.snp.makeConstraints { make in
        liveImgView.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+actualWidth(w: 80))
            make.top.equalTo(kLet_timeSenseValue + actualWidth(w: 80))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(100)
            make.width.height.equalTo(100)
        }
        //: liveLab.snp.makeConstraints { make in
        liveLab.snp.makeConstraints { make in
            //: make.top.equalTo(liveImgView.snp.bottom)
            make.top.equalTo(liveImgView.snp.bottom)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(liveLab.snp.bottom).offset(20)
            make.top.equalTo(liveLab.snp.bottom).offset(20)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: imgView1.snp.makeConstraints { make in
        imgView1.snp.makeConstraints { make in
            //: make.top.leading.equalTo(20)
            make.top.leading.equalTo(20)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab1.snp.makeConstraints { make in
        titleLab1.snp.makeConstraints { make in
            //: make.top.equalTo(imgView1).offset(3)
            make.top.equalTo(imgView1).offset(3)
            //: make.leading.equalTo(imgView1.snp.trailing).offset(10)
            make.leading.equalTo(imgView1.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab1.snp.makeConstraints { make in
        desLab1.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab1.snp.bottom).offset(4)
            make.top.equalTo(titleLab1.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab1)
            make.leading.trailing.equalTo(titleLab1)
        }
        //: imgView2.snp.makeConstraints { make in
        imgView2.snp.makeConstraints { make in
            //: make.top.equalTo(desLab1.snp.bottom).offset(24)
            make.top.equalTo(desLab1.snp.bottom).offset(24)
            //: make.leading.equalTo(imgView1)
            make.leading.equalTo(imgView1)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab2.snp.makeConstraints { make in
        titleLab2.snp.makeConstraints { make in
            //: make.top.equalTo(imgView2).offset(3)
            make.top.equalTo(imgView2).offset(3)
            //: make.leading.equalTo(imgView2.snp.trailing).offset(10)
            make.leading.equalTo(imgView2.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab2.snp.makeConstraints { make in
        desLab2.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab2.snp.bottom).offset(4)
            make.top.equalTo(titleLab2.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab2)
            make.leading.trailing.equalTo(titleLab2)
        }
        //: imgView3.snp.makeConstraints { make in
        imgView3.snp.makeConstraints { make in
            //: make.top.equalTo(desLab2.snp.bottom).offset(24)
            make.top.equalTo(desLab2.snp.bottom).offset(24)
            //: make.leading.equalTo(imgView1)
            make.leading.equalTo(imgView1)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab3.snp.makeConstraints { make in
        titleLab3.snp.makeConstraints { make in
            //: make.top.equalTo(imgView3).offset(3)
            make.top.equalTo(imgView3).offset(3)
            //: make.leading.equalTo(imgView3.snp.trailing).offset(10)
            make.leading.equalTo(imgView3.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab3.snp.makeConstraints { make in
        desLab3.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab3.snp.bottom).offset(4)
            make.top.equalTo(titleLab3.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab3)
            make.leading.trailing.equalTo(titleLab3)
            //: make.bottom.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-20)
        }

        //: turnOnBtn.snp.makeConstraints { make in
        turnOnBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(43)
            make.top.equalTo(contentView.snp.bottom).offset(43)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 240, height: 50))
            make.size.equalTo(CGSize(width: 240, height: 50))
            //: make.bottom.lessThanOrEqualTo(view).offset(0)
            make.bottom.lessThanOrEqualTo(view).offset(0)
        }
    }
}
