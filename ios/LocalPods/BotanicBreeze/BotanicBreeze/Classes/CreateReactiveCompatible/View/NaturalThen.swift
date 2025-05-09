
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_inputData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "img_faceverification_photopose" :*/
fileprivate let str_impressionName:String = "img_size model"
fileprivate let str_sourceName:String = "ristart"
fileprivate let str_labelTitle:String = "n_photopapp menu"
fileprivate let str_resultName:[Character] = ["o","s","e"]

/*: "To pass the verification, in the photo you should:" :*/
fileprivate let str_numberValue:[UInt8] = [0x3a,0x64,0x6c,0x75,0x6f,0x68,0x73,0x20,0x75,0x6f,0x79,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x65,0x68,0x74,0x20,0x6e,0x69,0x20,0x2c,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x72,0x65,0x76,0x20,0x65,0x68,0x74,0x20,0x73,0x73,0x61,0x70,0x20,0x6f,0x54]

/*: "· show your face clearly;" :*/
fileprivate let str_actionName:String = "next type· sho"
fileprivate let str_indicatorName:String = "ur face cyou to video color share"
fileprivate let str_segmentData:String = "view textlearly;"

/*: "· pose exactly like the posing guide." :*/
fileprivate let str_cellViewName:[UInt8] = [0x33,0x46,0xd1,0x81,0x9e,0x82,0x94,0xd1,0x94,0x89,0x90,0x92,0x85,0x9d,0x88,0xd1,0x9d,0x98,0x9a,0x94,0xd1,0x85,0x99,0x94,0xd1,0x81,0x9e,0x82,0x98,0x9f,0x96,0xd1,0x96,0x84,0x98,0x95,0x94,0xdf]

/*: "Your photo will never be uploaded to your profile or shown to anvone else." :*/
fileprivate let str_statusValue:[UInt8] = [0x54,0x62,0x78,0x7f,0x2d,0x7d,0x65,0x62,0x79,0x62,0x2d,0x7a,0x64,0x61,0x61,0x2d,0x63,0x68,0x7b,0x68,0x7f,0x2d,0x6f,0x68,0x2d,0x78,0x7d,0x61,0x62,0x6c,0x69,0x68,0x69,0x2d,0x79,0x62,0x2d,0x74,0x62,0x78,0x7f,0x2d,0x7d,0x7f,0x62,0x6b,0x64,0x61,0x68,0x2d,0x62,0x7f,0x2d,0x7e,0x65,0x62,0x7a,0x63,0x2d,0x79,0x62,0x2d,0x6c,0x63,0x7b,0x62,0x63,0x68,0x2d,0x68,0x61,0x7e,0x68,0x23]

private func equalLevel(window num: UInt8) -> UInt8 {
    return num ^ 13
}

/*: "Submit Photo" :*/
fileprivate let str_pathData:[Character] = ["S","u","b","m","i","t"," ","P","h","o","t","o"]

/*: "btn_me_back_continue" :*/
fileprivate let str_tableData:[Character] = ["b","t","n","_","m","e","_","b","a","c","k","_","c","o","n","t","i"]
fileprivate let str_resultValue:String = "nushow"

/*: "Retake Photo" :*/
fileprivate let str_styleValue:String = "Retavar style home content model"
fileprivate let str_equalFileData:String = "homakeo"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NaturalThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationTakePhotoView: UIView {
class NaturalThen: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias SubmitBtnClickBlock = (_ photoImage: UIImage) -> Void
    typealias SubmitBtnClickBlock = (_ photoImage: UIImage) -> Void
    //: typealias RetakeBtnClickBlock = () -> Void
    typealias RetakeBtnClickBlock = () -> Void
    //: var submitClickBlock: SubmitBtnClickBlock?
    var submitClickBlock: SubmitBtnClickBlock?
    //: var retakeClickBlock: RetakeBtnClickBlock?
    var retakeClickBlock: RetakeBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        warning()
        //: layoutSubViewsConstraints()
        deviceAdd()
        //: bindInteraction()
        giveAndTakeMagnitudeeraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_inputData.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var leftExampleImageView: UIImageView = {
    lazy var leftExampleImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.eponymUp(name: "img_faceverification_photopose")
        imgView.image = UIImage.eponymUp(name: (String(str_impressionName.prefix(4)) + "faceve" + str_sourceName.replacingOccurrences(of: "start", with: "fi") + "catio" + String(str_labelTitle.prefix(8)) + String(str_resultName)))
        //: imgView.layer.cornerRadius = 8
        imgView.layer.cornerRadius = 8
        //: imgView.layer.masksToBounds = true
        imgView.layer.masksToBounds = true
        //: imgView.contentMode = .scaleAspectFill
        imgView.contentMode = .scaleAspectFill
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var rightPhotoImageView: UIImageView = {
    lazy var rightPhotoImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.backgroundColor = UIColor.appValueColor()
        imgView.backgroundColor = UIColor.addColor()
        //: imgView.layer.cornerRadius = 8
        imgView.layer.cornerRadius = 8
        //: imgView.layer.masksToBounds = true
        imgView.layer.masksToBounds = true
        //: imgView.contentMode = .scaleAspectFill
        imgView.contentMode = .scaleAspectFill
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "To pass the verification, in the photo you should:".localized
        lb.text = String(bytes: str_numberValue.reversed(), encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .executeTo()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 18)
        lb.font = .pingfang(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var firstDesLab: UILabel = {
    lazy var firstDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· show your face clearly;".localized
        lb.text = (String(str_actionName.suffix(5)) + "w yo" + String(str_indicatorName.prefix(9)) + String(str_segmentData.suffix(7))).localized
        //: lb.textColor = .publishView()
        lb.textColor = .publishView()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .pingfang(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var secondDesLab: UILabel = {
    lazy var secondDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· pose exactly like the posing guide.".localized
        lb.text = String(bytes: str_cellViewName.map{$0^241}, encoding: .utf8)!.localized
        //: lb.textColor = .publishView()
        lb.textColor = .publishView()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .pingfang(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var bottomTipLab: UILabel = {
    lazy var bottomTipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Your photo will never be uploaded to your profile or shown to anvone else.".localized
        lb.text = String(bytes: str_statusValue.map{equalLevel(window: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .publishView()
        lb.textColor = .publishView()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .pingfang(type: .Regular, fontSize: 15)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var submitBtn: UIButton = {
    lazy var submitBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Submit Photo".localized, for: .normal)
        btn.setTitle((String(str_pathData)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_tableData) + str_resultValue.replacingOccurrences(of: "show", with: "e"))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .pingfang(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var retakeBtn: UIButton = {
    lazy var retakeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Retake Photo".localized, for: .normal)
        btn.setTitle((String(str_styleValue.prefix(4)) + "ke P" + str_equalFileData.replacingOccurrences(of: "make", with: "t")).localized, for: .normal)
        //: btn.setTitleColor(.appValueColor(), for: .normal)
        btn.setTitleColor(.addColor(), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = .pingfang(type: .Regular, fontSize: 18)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVerificationTakePhotoView {
extension NaturalThen {
    //: @objc func registerSubmitAction() {
    @objc func blockRegister() {
        //: if submitClickBlock != nil, rightPhotoImageView.image != nil {
        if submitClickBlock != nil, rightPhotoImageView.image != nil {
            //: submitClickBlock!(rightPhotoImageView.image!)
            submitClickBlock!(rightPhotoImageView.image!)
        }
    }

    //: @objc func registerRetakeAction() {
    @objc func dirigible() {
        //: if retakeClickBlock != nil {
        if retakeClickBlock != nil {
            //: retakeClickBlock!()
            retakeClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func giveAndTakeMagnitudeeraction() {
        //: submitBtn.rx.controlEvent(.touchUpInside)
        submitBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerSubmitAction()
                self.blockRegister()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        //: retakeBtn.rx.controlEvent(.touchUpInside)
        retakeBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerRetakeAction()
                self.dirigible()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - UI

//: extension TalkingVerificationTakePhotoView {
extension NaturalThen {
    //: func createSubViews() {
    func warning() {
        //: addSubview(leftExampleImageView)
        addSubview(leftExampleImageView)
        //: addSubview(rightPhotoImageView)
        addSubview(rightPhotoImageView)
        //: addSubview(titleLab)
        addSubview(titleLab)
        //: addSubview(firstDesLab)
        addSubview(firstDesLab)
        //: addSubview(secondDesLab)
        addSubview(secondDesLab)
        //: addSubview(submitBtn)
        addSubview(submitBtn)
        //: addSubview(retakeBtn)
        addSubview(retakeBtn)
        //: addSubview(bottomTipLab)
        addSubview(bottomTipLab)
    }

    //: func layoutSubViewsConstraints() {
    func deviceAdd() {
        //: let itemWidth = (ScreenWidth - actualWidth(w: 40)) / 2.0
        let itemWidth = (kLet_cameraValue - actualWidth(w: 40)) / 2.0
        //: leftExampleImageView.snp.makeConstraints { make in
        leftExampleImageView.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.top.equalTo(actualHeight(h: 18))
            make.top.equalTo(actualHeight(h: 18))
            //: make.width.height.equalTo(itemWidth)
            make.width.height.equalTo(itemWidth)
        }
        //: rightPhotoImageView.snp.makeConstraints { make in
        rightPhotoImageView.snp.makeConstraints { make in
            //: make.leading.equalTo(leftExampleImageView.snp.trailing).offset(actualWidth(w: 10))
            make.leading.equalTo(leftExampleImageView.snp.trailing).offset(actualWidth(w: 10))
            //: make.top.equalTo(leftExampleImageView.snp.top)
            make.top.equalTo(leftExampleImageView.snp.top)
            //: make.width.height.equalTo(itemWidth)
            make.width.height.equalTo(itemWidth)
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(leftExampleImageView.snp.bottom).offset(actualHeight(h: 17))
            make.top.equalTo(leftExampleImageView.snp.bottom).offset(actualHeight(h: 17))
        }
        //: firstDesLab.snp.makeConstraints { make in
        firstDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(titleLab.snp.bottom).offset(actualHeight(h: 10))
            make.top.equalTo(titleLab.snp.bottom).offset(actualHeight(h: 10))
        }
        //: secondDesLab.snp.makeConstraints { make in
        secondDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.leading)
            make.leading.equalTo(titleLab.snp.leading)
            //: make.trailing.equalTo(titleLab.snp.trailing)
            make.trailing.equalTo(titleLab.snp.trailing)
            //: make.top.equalTo(firstDesLab.snp.bottom).offset(actualHeight(h: 5))
            make.top.equalTo(firstDesLab.snp.bottom).offset(actualHeight(h: 5))
        }

        //: bottomTipLab.snp.makeConstraints { make in
        bottomTipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.leading)
            make.leading.equalTo(titleLab.snp.leading)
            //: make.trailing.equalTo(titleLab.snp.trailing)
            make.trailing.equalTo(titleLab.snp.trailing)
            //: make.bottom.equalTo(-24-kDeviceSafeBottomHeight)
            make.bottom.equalTo(-24 - kLet_nextData)
        }
        //: retakeBtn.snp.makeConstraints { make in
        retakeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(bottomTipLab.snp.top).offset(-5)
            make.bottom.equalTo(bottomTipLab.snp.top).offset(-5)
            //: make.leading.equalTo(actualWidth(w: 54))
            make.leading.equalTo(actualWidth(w: 54))
            //: make.trailing.equalTo(actualWidth(w: -54))
            make.trailing.equalTo(actualWidth(w: -54))
            //: make.height.equalTo(actualHeight(h: 42))
            make.height.equalTo(actualHeight(h: 42))
        }
        //: submitBtn.snp.makeConstraints { make in
        submitBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(retakeBtn.snp.top)
            make.bottom.equalTo(retakeBtn.snp.top)
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
