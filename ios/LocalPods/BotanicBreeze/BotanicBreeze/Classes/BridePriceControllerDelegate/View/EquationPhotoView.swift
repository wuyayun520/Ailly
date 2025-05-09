
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_myClearData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "More attractive photo more calls" :*/
fileprivate let str_timeName:[UInt8] = [0x73,0x6c,0x6c,0x61,0x63,0x20,0x65,0x72,0x6f,0x6d,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x65,0x76,0x69,0x74,0x63,0x61,0x72,0x74,0x74,0x61,0x20,0x65,0x72,0x6f,0x4d]

/*: "Upload any photo you like" :*/
fileprivate let str_toErrorInName:[Character] = ["U","p","l","o","a","d"," ","a","n","y"," ","p","h","o","t","o"," ","y","o","u"," ","l","i","k","e"]

/*: "F4F4F4" :*/
fileprivate let str_modelValue:[Character] = ["F","4","F","4","F","4"]

/*: "btn_add_head_cover_nor" :*/
fileprivate let str_netData:[Character] = ["b","t","n","_","a","d","d","_"]
fileprivate let str_detailValue:String = "heintimate"
fileprivate let str_layerValue:String = "r_norarea center image"

/*: "Please upload a clear and beautiful photo of yourself" :*/
fileprivate let str_styleToTitle:[UInt8] = [0x6e,0x52,0x5b,0x5f,0x4d,0x5b,0x1e,0x4b,0x4e,0x52,0x51,0x5f,0x5a,0x1e,0x5f,0x1e,0x5d,0x52,0x5b,0x5f,0x4c,0x1e,0x5f,0x50,0x5a,0x1e,0x5c,0x5b,0x5f,0x4b,0x4a,0x57,0x58,0x4b,0x52,0x1e,0x4e,0x56,0x51,0x4a,0x51,0x1e,0x51,0x58,0x1e,0x47,0x51,0x4b,0x4c,0x4d,0x5b,0x52,0x58]

private func dataResult(count num: UInt8) -> UInt8 {
    return num ^ 62
}

/*: "No violence, pornography, or politics allowed" :*/
fileprivate let str_colorTitle:[UInt8] = [0x64,0x65,0x77,0x6f,0x6c,0x6c,0x61,0x20,0x73,0x63,0x69,0x74,0x69,0x6c,0x6f,0x70,0x20,0x72,0x6f,0x20,0x2c,0x79,0x68,0x70,0x61,0x72,0x67,0x6f,0x6e,0x72,0x6f,0x70,0x20,0x2c,0x65,0x63,0x6e,0x65,0x6c,0x6f,0x69,0x76,0x20,0x6f,0x4e]

/*: "Next" :*/
fileprivate let str_modeText:String = "make array letNext"

/*: "edit_head_Image_male_ :*/
fileprivate let str_aspectValue:[Character] = ["e","d","i","t","_","h","e","a","d","_","I","m","a","g"]
fileprivate let str_equalValue:[Character] = ["e","_","m","a","l","e","_"]

/*: "edit_head_Image_ :*/
fileprivate let str_renderValue:String = "pagedit"
fileprivate let str_makeValue:[Character] = ["I","m","a","g","e","_"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EquationPhotoView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoView: UIView {
class EquationPhotoView: UIView {
    //: typealias InfoActionBlock = (_ type: EditInfoType) -> Void
    typealias InfoActionBlock = (_ type: ContentInfoType) -> Void

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var btnBlock: InfoActionBlock?
    var btnBlock: InfoActionBlock?

    //: private var nameCount: Int = 20
    private var nameCount: Int = 20

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white

        //: self.setupSubviews()
        self.title()
        //: self.setupSubViewsConstraint()
        self.request()
        //: self.bindInteraction()
        self.lessAdhere()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_myClearData.reversed(), encoding: .utf8)!)
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var tipsLab: UILabel = {
    lazy var tipsLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .pingfang(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .executeTo()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: if EqualThen.share.userFillInfoMode.sex == Gender.female.rawValue {
        if EqualThen.share.userFillInfoMode.sex == RunReplaceableCollection.female.rawValue {
            //: label.text = "More attractive photo more calls".localized
            label.text = String(bytes: str_timeName.reversed(), encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Upload any photo you like".localized
            label.text = (String(str_toErrorInName)).localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var addHeadButton: UIButton = {
    lazy var addHeadButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = UIColor(hex: "F4F4F4")
        btn.backgroundColor = UIColor(hex: (String(str_modelValue)))
        //: btn.layer.cornerRadius = 5
        btn.layer.cornerRadius = 5
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true

        //: let headImg = EqualThen.share.userFillInfoMode.headImage ?? nil
        let headImg = EqualThen.share.userFillInfoMode.headImage ?? nil
        //: if headImg != nil {
        if headImg != nil {
            //: btn.setImage(headImg, for: .normal)
            btn.setImage(headImg, for: .normal)
            //: } else {
        } else {
            //: btn.setImage(UIImage.eponymUp(name: "btn_add_head_cover_nor"), for: .normal)
            btn.setImage(UIImage.eponymUp(name: (String(str_netData) + str_detailValue.replacingOccurrences(of: "intimate", with: "ad") + "_cove" + String(str_layerValue.prefix(5)))), for: .normal)
        }
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var msgLab: UILabel = {
    lazy var msgLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .pingfang(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .addColor()
        //: if EqualThen.share.userFillInfoMode.sex == Gender.female.rawValue {
        if EqualThen.share.userFillInfoMode.sex == RunReplaceableCollection.female.rawValue {
            //: label.text = "Please upload a clear and beautiful photo of yourself".localized
            label.text = String(bytes: str_styleToTitle.map{dataResult(count: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "No violence, pornography, or politics allowed".localized
            label.text = String(bytes: str_colorTitle.reversed(), encoding: .utf8)!.localized
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(str_modeText.suffix(4))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: kLet_cameraValue - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoView {
extension EquationPhotoView {
    // 添加视图
    //: private func setupSubviews() {
    private func title() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(tipsLab)
        contentView.addSubview(tipsLab)
        //: contentView.addSubview(addHeadButton)
        contentView.addSubview(addHeadButton)
        //: contentView.addSubview(commitButton)
        contentView.addSubview(commitButton)
        //: contentView.addSubview(msgLab)
        contentView.addSubview(msgLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func request() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: tipsLab.snp.makeConstraints { make in
        tipsLab.snp.makeConstraints { make in
            //: make.leading.equalTo(24)
            make.leading.equalTo(24)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }

        //: addHeadButton.snp.makeConstraints { make in
        addHeadButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(159)
            make.width.height.equalTo(159)
            //: make.top.equalTo(tipsLab.snp.bottom).offset(34)
            make.top.equalTo(tipsLab.snp.bottom).offset(34)
        }

        //: let imgWidth: CGFloat = (ScreenWidth - 76) / 3.0
        let imgWidth: CGFloat = (kLet_cameraValue - 76) / 3.0
        //: let imgHeight: CGFloat = imgWidth
        let imgHeight: CGFloat = imgWidth

        //: for i in 0 ..< 3 {
        for i in 0 ..< 3 {
            //: let imageView = UIImageView.init()
            let imageView = UIImageView()
            //: if EqualThen.share.userFillInfoMode.sex == "1" {
            if EqualThen.share.userFillInfoMode.sex == "1" {
                //: imageView.image = UIImage.eponymUp(name: "edit_head_Image_male_\(i)")
                imageView.image = UIImage.eponymUp(name: (String(str_aspectValue) + String(str_equalValue)) + "\(i)")
                //: } else {
            } else {
                //: imageView.image = UIImage.eponymUp(name: "edit_head_Image_\(i)")
                imageView.image = UIImage.eponymUp(name: (str_renderValue.replacingOccurrences(of: "page", with: "e") + "_head_" + String(str_makeValue)) + "\(i)")
            }
            //: contentView.addSubview(imageView)
            contentView.addSubview(imageView)
            //: imageView.snp.makeConstraints { make in
            imageView.snp.makeConstraints { make in
                //: make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                //: make.leading.equalTo(30 + (imgWidth+8)*CGFloat(i))
                make.leading.equalTo(30 + (imgWidth + 8) * CGFloat(i))
                //: make.width.equalTo(imgWidth)
                make.width.equalTo(imgWidth)
                //: make.height.equalTo(imgHeight)
                make.height.equalTo(imgHeight)
            }
        }
        //: msgLab.snp.makeConstraints { make in
        msgLab.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(addHeadButton.snp.bottom).offset(146)
            make.top.equalTo(addHeadButton.snp.bottom).offset(146)
        }

        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(msgLab.snp.bottom).offset(30)
            make.top.equalTo(msgLab.snp.bottom).offset(30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func lessAdhere() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Finish)
                    self.btnBlock!(.Finish)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: addHeadButton.rx.tap
        addHeadButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.HeadPic)
                    self.btnBlock!(.HeadPic)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
