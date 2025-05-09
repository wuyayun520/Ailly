
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_sendMessageName:[UInt8] = [0xa6,0xa1,0xa6,0xbb,0xe7,0xac,0xa0,0xab,0xaa,0xbd,0xf5,0xe6,0xef,0xa7,0xae,0xbc,0xef,0xa1,0xa0,0xbb,0xef,0xad,0xaa,0xaa,0xa1,0xef,0xa6,0xa2,0xbf,0xa3,0xaa,0xa2,0xaa,0xa1,0xbb,0xaa,0xab]

private func labelNext(primary num: UInt8) -> UInt8 {
    return num ^ 207
}

/*: "nav_back_black_nor" :*/
fileprivate let str_saveText:[Character] = ["n","a","v","_","b","a","c","k","_","b","l","a","c","k","_","n"]
fileprivate let str_clearValue:String = "oend"

/*: "btn_fbmoments_photo_more_delete" :*/
fileprivate let str_messageValue:[UInt8] = [0x65,0x74,0x65,0x6c,0x65,0x64,0x5f,0x65,0x72,0x6f,0x6d,0x5f,0x6f,0x74,0x6f,0x68,0x70,0x5f,0x73,0x74,0x6e,0x65,0x6d,0x6f,0x6d,0x62,0x66,0x5f,0x6e,0x74,0x62]

/*: "Retake" :*/
fileprivate let str_storeData:[Character] = ["R","e","t","a","k"]
fileprivate let str_collectionLiveImageTitle:String = "shared"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosTopView: UIView {
class ToView: UIView {
    //: var cunrrenModel = TalkingMomentModel()
    var cunrrenModel = WithMomentModel()
    //: var type: MomentPhotoType?
    var type: RowPhotoType?

    //: init(frame: CGRect, type: MomentPhotoType) {
    init(frame: CGRect, type: RowPhotoType) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: self.type = type
        self.type = type
        //: setupSubviews()
        mortal()
        //: setupSubViewsConstraint()
        translate()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_sendMessageName.map{labelNext(primary: $0)}, encoding: .utf8)!)
    }

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: let img = UIImage.eponymUp(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.eponymUp(name: (String(str_saveText) + str_clearValue.replacingOccurrences(of: "end", with: "r"))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var deleteBtn: UIButton = {
    lazy var deleteBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_fbmoments_photo_more_delete"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: String(bytes: str_messageValue.reversed(), encoding: .utf8)!), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var rightTitleBtn: UIButton = {
    lazy var rightTitleBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 17)
        btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Retake".localized, for: .normal)
        btn.setTitle((String(str_storeData) + str_collectionLiveImageTitle.replacingOccurrences(of: "shared", with: "e")).localized, for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - LayoutUI

//: extension TalkingMomentPhotosTopView {
extension ToView {
    // 添加视图
    //: private func setupSubviews() {
    private func mortal() {
        //: backgroundColor = UIColor.RGBA(51, 51, 51, 0.8)
        backgroundColor = UIColor.showSub(51, 51, 51, 0.8)
        //: self.addSubview(backBtn)
        self.addSubview(backBtn)

        //: switch(self.type) {
        switch self.type {
        //: case .publish:
        case .publish:
            //: self.addSubview(deleteBtn)
            self.addSubview(deleteBtn)
        //: case .sendIntimatePhoto:
        case .sendIntimatePhoto:
            //: self.addSubview(rightTitleBtn)
            self.addSubview(rightTitleBtn)
        //: default:
        default:
            //: break
            break
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func translate() {
        //: switch(self.type) {
        switch self.type {
        //: case .normal:
        case .normal:
            //: backBtn.snp.makeConstraints { make in
            backBtn.snp.makeConstraints { make in
                //: make.leading.equalTo(0)
                make.leading.equalTo(0)
                //: make.bottom.equalTo(-14)
                make.bottom.equalTo(-14)
                //: make.size.equalTo(CGSize.init(width: 40, height: 40))
                make.size.equalTo(CGSize(width: 40, height: 40))
            }

        //: case .publish:
        case .publish:
            //: backBtn.snp.makeConstraints { make in
            backBtn.snp.makeConstraints { make in
                //: make.leading.equalTo(0)
                make.leading.equalTo(0)
                //: make.bottom.equalTo(0)
                make.bottom.equalTo(0)
                //: make.size.equalTo(CGSize.init(width: 40, height: 44))
                make.size.equalTo(CGSize(width: 40, height: 44))
            }
            //: deleteBtn.snp.makeConstraints { make in
            deleteBtn.snp.makeConstraints { make in
                //: make.centerY.equalTo(backBtn.snp.centerY)
                make.centerY.equalTo(backBtn.snp.centerY)
                //: make.trailing.equalTo(-15)
                make.trailing.equalTo(-15)
                //: make.size.equalTo(CGSize.init(width: 24, height: 24))
                make.size.equalTo(CGSize(width: 24, height: 24))
            }

        //: case .sendIntimatePhoto:
        case .sendIntimatePhoto:
            //: backBtn.snp.makeConstraints { make in
            backBtn.snp.makeConstraints { make in
                //: make.leading.equalTo(0)
                make.leading.equalTo(0)
                //: make.bottom.equalTo(-14)
                make.bottom.equalTo(-14)
                //: make.size.equalTo(CGSize.init(width: 40, height: 40))
                make.size.equalTo(CGSize(width: 40, height: 40))
            }
            //: rightTitleBtn.snp.makeConstraints { make in
            rightTitleBtn.snp.makeConstraints { make in
                //: make.centerY.equalTo(backBtn.snp.centerY)
                make.centerY.equalTo(backBtn.snp.centerY)
                //: make.trailing.equalToSuperview()
                make.trailing.equalToSuperview()
                //: make.size.equalTo(CGSize(width: 85, height: 44))
                make.size.equalTo(CGSize(width: 85, height: 44))
            }
        //: default:
        default:
            //: break
            break
        }
    }
}
