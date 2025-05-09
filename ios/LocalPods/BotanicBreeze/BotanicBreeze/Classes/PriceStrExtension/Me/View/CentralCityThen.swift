
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_sizeTitle:[UInt8] = [0xca,0xcd,0xca,0xd7,0x8b,0xc0,0xcc,0xc7,0xc6,0xd1,0x99,0x8a,0x83,0xcb,0xc2,0xd0,0x83,0xcd,0xcc,0xd7,0x83,0xc1,0xc6,0xc6,0xcd,0x83,0xca,0xce,0xd3,0xcf,0xc6,0xce,0xc6,0xcd,0xd7,0xc6,0xc7]

private func modeAt(result num: UInt8) -> UInt8 {
    return num ^ 163
}

/*: "btn_me_edit" :*/
fileprivate let str_minName:String = "btn_msucceed var"
fileprivate let str_toText:String = "return take by current alle_edit"

/*: "icon_me_lw" :*/
fileprivate let str_barData:String = "icwithn"

/*: " Reward" :*/
fileprivate let str_errorData:String = "view device content as layer Rewar"
fileprivate let str_yearIndexValue:String = "gift"

/*: "FF506D" :*/
fileprivate let str_actualBurnValue:String = "click506"
fileprivate let str_dataTitle:[Character] = ["D"]

/*: "Purchase" :*/
fileprivate let str_appData:String = "Purcindicator view"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CentralCityThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/29.
//

//: import UIKit
import UIKit

//: class TalkingUserCenterCell: UITableViewCell {
class CentralCityThen: UITableViewCell {
    //: private var index: Int = 0
    private var index: Int = 0
    //: private var islast: Bool = false
    private var islast: Bool = false
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: selectionStyle = .none
        selectionStyle = .none

        //: setupSubviews()
        filterOut()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_sizeTitle.map{modeAt(result: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var iconImag: UIImageView = {
    private lazy var iconImag: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var titleBLB: UILabel = {
    private lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.pingfang(type: .Regular, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.executeTo()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var editImag: UIImageView = {
    private lazy var editImag: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.eponymUp(name: "btn_me_edit"))
        let imag = UIImageView(image: UIImage.eponymUp(name: (String(str_minName.prefix(5)) + String(str_toText.suffix(6)))))
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var taskCenterBtn: UIButton = {
    private lazy var taskCenterBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "icon_me_lw"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (str_barData.replacingOccurrences(of: "with", with: "o") + "_me_lw")), for: .normal)
        //: btn.setTitle(" Reward".localized, for: .normal)
        btn.setTitle((String(str_errorData.suffix(6)) + str_yearIndexValue.replacingOccurrences(of: "gift", with: "d")).localized, for: .normal)
        //: btn.setTitleColor(UIColor.init(hex: "FF506D"), for: .normal)
        btn.setTitleColor(UIColor(hex: (str_actualBurnValue.replacingOccurrences(of: "click", with: "FF") + String(str_dataTitle))), for: .normal)
        //: btn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 12)
        btn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 12)
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var purchaseBtn: UIButton = {
    private lazy var purchaseBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Purchase", for: .normal)
        btn.setTitle((String(str_appData.prefix(4)) + "hase"), for: .normal)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.plaster(), for: .normal)
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.plaster().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.cornerRadius = 12
        btn.layer.cornerRadius = 12
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 12)
        btn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 12)
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingUserCenterCell {
extension CentralCityThen {
    //: func setViewData(title: String, icon: String, row: Int, isLast: Bool) {
    func pageLast(title: String, icon: String, row: Int, isLast: Bool) {
        //: titleBLB.text = title.localized
        titleBLB.text = title.localized
        //: iconImag.image = UIImage.eponymUp(name: icon)
        iconImag.image = UIImage.eponymUp(name: icon)
        //: index = row
        index = row
        //: islast = isLast
        islast = isLast
        //: editImag.isHidden = false
        editImag.isHidden = false
        //: taskCenterBtn.isHidden = true
        taskCenterBtn.isHidden = true
        //: purchaseBtn.isHidden = true
        purchaseBtn.isHidden = true
        //: setupSubViewsConstraint()
        hangImage()
    }

    //: func setTaskCenterBtn() {
    func exceptView() {
        //: taskCenterBtn.isHidden = false
        taskCenterBtn.isHidden = false
    }

    //: func setpurchaseBtn() {
    func modeAdd() {
        //: purchaseBtn.isHidden = false
        purchaseBtn.isHidden = false
        //: editImag.isHidden = true
        editImag.isHidden = true
    }
}

// MARK: - Layout

//: extension TalkingUserCenterCell {
extension CentralCityThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func filterOut() {
        //: self.contentView.addSubview(backView)
        self.contentView.addSubview(backView)
        //: backView.addSubview(iconImag)
        backView.addSubview(iconImag)
        //: backView.addSubview(titleBLB)
        backView.addSubview(titleBLB)
        //: backView.addSubview(editImag)
        backView.addSubview(editImag)
        //: backView.addSubview(taskCenterBtn)
        backView.addSubview(taskCenterBtn)
        //: backView.addSubview(purchaseBtn)
        backView.addSubview(purchaseBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func hangImage() {
        //: let backView_h = 58.0
        let backView_h = 58.0
        //: backView.snp.remakeConstraints { make in
        backView.snp.remakeConstraints { make in
            //: make.leading.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(15)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: make.height.equalTo(backView_h)
            make.height.equalTo(backView_h)
            //: make.top.bottom.equalToSuperview()
            make.top.bottom.equalToSuperview()
        }

        //: iconImag.snp.remakeConstraints { make in
        iconImag.snp.remakeConstraints { make in
            //: make.leading.equalToSuperview().offset(12)
            make.leading.equalToSuperview().offset(12)
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.width.height.equalTo(25)
            make.width.height.equalTo(25)
        }

        //: titleBLB.snp.remakeConstraints { make in
        titleBLB.snp.remakeConstraints { make in
            //: make.leading.equalTo(iconImag.snp.trailing).offset(7)
            make.leading.equalTo(iconImag.snp.trailing).offset(7)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.height.equalTo(19)
            make.height.equalTo(19)
        }

        //: editImag.snp.remakeConstraints { make in
        editImag.snp.remakeConstraints { make in
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.trailing.equalToSuperview().offset(-12)
            make.trailing.equalToSuperview().offset(-12)
            //: make.width.equalTo(8)
            make.width.equalTo(8)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }

        //: taskCenterBtn.snp.remakeConstraints { make in
        taskCenterBtn.snp.remakeConstraints { make in
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.trailing.equalTo(editImag.snp.leading).offset(-13)
            make.trailing.equalTo(editImag.snp.leading).offset(-13)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }

        //: purchaseBtn.snp.makeConstraints { make in
        purchaseBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.trailing.equalToSuperview().offset(-10)
            make.trailing.equalToSuperview().offset(-10)
            //: make.size.equalTo(CGSize(width: 70, height: 24))
            make.size.equalTo(CGSize(width: 70, height: 24))
        }

        //: backView.frame = CGRect(x: 15, y: 0, width: ScreenWidth-30, height: backView_h)
        backView.frame = CGRect(x: 15, y: 0, width: kLet_cameraValue - 30, height: backView_h)
        //: backView.layer.mask = nil
        backView.layer.mask = nil

        //: if index == 0 && islast {
        if index == 0, islast {
            //: backView.Corner(width: backView.frame.size.width,
            backView.showEqual(width: backView.frame.size.width,
                               //: height: backView.frame.size.height,
                               height: backView.frame.size.height,
                               //: corners: .allCorners,
                               corners: .allCorners,
                               //: cornerRadii: .init(width: 16, height: 16))
                               cornerRadii: .init(width: 16, height: 16))
            //: } else if index == 0 {
        } else if index == 0 {
            //: backView.Corner(width: backView.frame.size.width,
            backView.showEqual(width: backView.frame.size.width,
                               //: height: backView.frame.size.height,
                               height: backView.frame.size.height,
                               //: corners: [.topLeft, .topRight],
                               corners: [.topLeft, .topRight],
                               //: cornerRadii: .init(width: 16, height: 16))
                               cornerRadii: .init(width: 16, height: 16))
            //: } else if islast {
        } else if islast {
            //: backView.Corner(width: backView.frame.size.width,
            backView.showEqual(width: backView.frame.size.width,
                               //: height: backView.frame.size.height,
                               height: backView.frame.size.height,
                               //: corners: [.bottomLeft, .bottomRight],
                               corners: [.bottomLeft, .bottomRight],
                               //: cornerRadii: .init(width: 16, height: 16))
                               cornerRadii: .init(width: 16, height: 16))
        }
    }
}
