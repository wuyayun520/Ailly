
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_videoTitle:[UInt8] = [0x61,0x66,0x61,0x7c,0x20,0x6b,0x67,0x6c,0x6d,0x7a,0x32,0x21,0x28,0x60,0x69,0x7b,0x28,0x66,0x67,0x7c,0x28,0x6a,0x6d,0x6d,0x66,0x28,0x61,0x65,0x78,0x64,0x6d,0x65,0x6d,0x66,0x7c,0x6d,0x6c]

private func managerArray(show num: UInt8) -> UInt8 {
    return num ^ 8
}

/*: "#F5F5F5" :*/
fileprivate let str_cameraText:String = "limit make progress value lab#F5F5F5"

/*: "icon_Topping_bg" :*/
fileprivate let str_managerLoadValue:[Character] = ["i","c","o","n"]
fileprivate let str_modelContent:String = "table bean share from_Top"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FinancialAidThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosCell: UICollectionViewCell {
class FinancialAidThen: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: customUI()
        pickings()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_videoTitle.map{managerArray(show: $0)}, encoding: .utf8)!)
    }

    //: func customUI() {
    func pickings() {
        //: self.contentView.backgroundColor = UIColor.init(hex: "#F5F5F5")
        self.contentView.backgroundColor = UIColor(hex: (String(str_cameraText.suffix(7))))
        //: self.contentView.layer.cornerRadius = 6
        self.contentView.layer.cornerRadius = 6
        //: self.contentView.layer.masksToBounds = true
        self.contentView.layer.masksToBounds = true

        //: photoView.snp.makeConstraints { make in
        photoView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.contentView)
            make.edges.equalTo(self.contentView)
        }
        //: photoView.addSubview(topImage)
        photoView.addSubview(topImage)
        //: topImage.snp.makeConstraints { make in
        topImage.snp.makeConstraints { make in
            //: make.top.equalTo(6)
            make.top.equalTo(6)
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.size.equalTo(CGSize(width: 50, height: 20))
            make.size.equalTo(CGSize(width: 50, height: 20))
        }
    }

    //: func configUrl(url: String) {
    func clickPlay(url: String) {
        //: photoView.setUrlImage(urlStr: url)
        photoView.direct(urlStr: url)
        //: topImage.isHidden = true
        topImage.isHidden = true
    }

    //: func setTopImage() {
    func ofText() {
        //: topImage.isHidden = false
        topImage.isHidden = false
    }

    //: lazy var photoView: UIImageView = {
    lazy var photoView: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: self.contentView.addSubview(img)
        self.contentView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: lazy var enterIcon: UIImageView = {
    lazy var enterIcon: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: self.contentView.addSubview(img)
        self.contentView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: lazy var topImage: UIImageView = {
    lazy var topImage: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.eponymUp(name: "icon_Topping_bg")
        img.image = UIImage.eponymUp(name: (String(str_managerLoadValue) + String(str_modelContent.suffix(4)) + "ping_bg"))
        //: return img
        return img
        //: }()
    }()
}
