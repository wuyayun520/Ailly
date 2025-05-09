
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_userData:[UInt8] = [0xd9,0xde,0xd9,0xc4,0x98,0xd3,0xdf,0xd4,0xd5,0xc2,0x8a,0x99,0x90,0xd8,0xd1,0xc3,0x90,0xde,0xdf,0xc4,0x90,0xd2,0xd5,0xd5,0xde,0x90,0xd9,0xdd,0xc0,0xdc,0xd5,0xdd,0xd5,0xde,0xc4,0xd5,0xd4]

private func playerTo(cookie num: UInt8) -> UInt8 {
    return num ^ 176
}

/*: "free_photo_deleteBtn" :*/
fileprivate let str_tooBottomName:[Character] = ["f","r","e","e","_","p","h","o","t","o","_","d","e","l","e"]
fileprivate let str_managerTitle:String = "model maketeBtn"

/*: "btn_dynamic_stop_nor" :*/
fileprivate let str_giftRangeSumContent:[Character] = ["b","t","n","_","d","y","n","a"]
fileprivate let str_modelName:[Character] = ["m","i","c","_","s","t","o","p","_","n","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TargetView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: let FreeCollectionViewCell_width = 90.0
let kLet_marginDeviceContent = 90.0

//: class FreeCollectionViewCell: UICollectionViewCell {
class TargetView: UICollectionViewCell {
    // 删除按钮
    //: var deleteBlock: (() -> Void)?
    var deleteBlock: (() -> Void)?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_userData.map{playerTo(cookie: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        clip()
        //: setupSubViewsConstraint()
        last()
    }

    // MARK: - Setter

    //: var isMoving: Bool {
    var isMoving: Bool {
        //: get {
        get {
            //: return self.isMoving
            return self.isMoving
        }
        //: set {
        set {
            //: self.isMoving = newValue
            self.isMoving = newValue
            //: self.releaseImageView.isHidden = self.isMoving
            self.releaseImageView.isHidden = self.isMoving
        }
    }

    // MARK: - Lazy load

    //: lazy var releaseImageView: UIImageView = {
    lazy var releaseImageView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 4.0
        v.layer.cornerRadius = 4.0
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: return v
        return v
        //: }()
    }()

    //: lazy var deleteBtn: UIButton = {
    lazy var deleteBtn: UIButton = {
        //: let b = UIButton()
        let b = UIButton()
        //: b.setImage(UIImage.eponymUp(name: "free_photo_deleteBtn"), for: .normal)
        b.setImage(UIImage.eponymUp(name: (String(str_tooBottomName) + String(str_managerTitle.suffix(5)))), for: .normal)
        //: b.addTarget(self, action: #selector(deleteButtonClick), for: .touchUpInside)
        b.addTarget(self, action: #selector(nowadays), for: .touchUpInside)
        //: return b
        return b
        //: }()
    }()

    //: lazy var playimageView: UIImageView = {
    lazy var playimageView: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.image = UIImage.eponymUp(name: "btn_dynamic_stop_nor")
        imag.image = UIImage.eponymUp(name: (String(str_giftRangeSumContent) + String(str_modelName)))
        //: return imag
        return imag
        //: }()
    }()
}

// MARK: - Event

//: extension FreeCollectionViewCell {
extension TargetView {
    // MARK: - Event

    //: @objc func deleteButtonClick() {
    @objc func nowadays() {
        //: if self.deleteBlock != nil {
        if self.deleteBlock != nil {
            //: self.deleteBlock!()
            self.deleteBlock!()
        }
    }
}

// MARK: - LayoutUI

//: extension FreeCollectionViewCell {
extension TargetView {
    // 添加视图
    //: private func setupSubviews() {
    private func clip() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(releaseImageView)
        self.addSubview(releaseImageView)
        //: self.addSubview(deleteBtn)
        self.addSubview(deleteBtn)
        //: self.addSubview(playimageView)
        self.addSubview(playimageView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func last() {
        //: releaseImageView.snp.makeConstraints { make in
        releaseImageView.snp.makeConstraints { make in
            //: make.top.leading.size.equalToSuperview()
            make.top.leading.size.equalToSuperview()
        }
        //: deleteBtn.snp.makeConstraints { make in
        deleteBtn.snp.makeConstraints { make in
            //: make.top.trailing.equalToSuperview()
            make.top.trailing.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
        //: playimageView.snp.makeConstraints { make in
        playimageView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
    }
}
