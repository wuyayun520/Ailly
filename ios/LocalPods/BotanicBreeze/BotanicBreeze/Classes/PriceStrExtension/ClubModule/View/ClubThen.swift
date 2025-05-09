
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_verticalClickContent:[UInt8] = [0x4a,0x4f,0x4a,0x55,0x9,0x44,0x50,0x45,0x46,0x53,0x1b,0xa,0x1,0x49,0x42,0x54,0x1,0x4f,0x50,0x55,0x1,0x43,0x46,0x46,0x4f,0x1,0x4a,0x4e,0x51,0x4d,0x46,0x4e,0x46,0x4f,0x55,0x46,0x45]

fileprivate func viewRequest(player num: UInt8) -> UInt8 {
    let value = Int(num) - 225
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClubThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/18.
//

//: import UIKit
import UIKit

//: enum CardCellSwipeDirection: Int {
enum DataTradingCardCustomReflectable: Int {
    //: case Left = 1
    case Left = 1
    //: case Right
    case Right
}

//: protocol TalkingClubCardViewCellDelegete: NSObjectProtocol {
protocol StudCellDelegete: NSObjectProtocol {
    ///
    //: func cardViewCellDidRemoveFromSuperView(cell: TalkingClubCardViewCell, direction: CardCellSwipeDirection, isGesture: Bool)
    func flaunt(cell: ClubThen, direction: DataTradingCardCustomReflectable, isGesture: Bool)
    //: func cardViewCellDidMoveFromSuperView(cell: TalkingClubCardViewCell, forMovePoint: CGPoint, direction: CardCellSwipeDirection)
    func unwelcome(cell: ClubThen, forMovePoint: CGPoint, direction: DataTradingCardCustomReflectable)
    //: func cardViewCellBeginMoveFromSuperView(cell: TalkingClubCardViewCell)
    func paperAdd(cell: ClubThen)
    //: func cardViewCellEndMoveFromSuperView(cell: TalkingClubCardViewCell)
    func cardFromCompartment(cell: ClubThen)
}

//: class TalkingClubCardViewCell: UIView {
class ClubThen: UIView {
    //: let SNAPSHOTVIEW_TAG = 999
    let SNAPSHOTVIEW_TAG = 999

    //: let DefaultDuration = 0.25
    let DefaultDuration = 0.25
    //: let SpringDuration = 0.5
    let SpringDuration = 0.5
    //: let SpringWithDamping = 0.5
    let SpringWithDamping = 0.5
    //: let SpringVelocity = 1.8
    let SpringVelocity = 1.8

    //: var reuseIdentifier = ""    ///  重用标识
    var reuseIdentifier = "" ///  重用标识
    //: var currentPoint = CGPoint.zero
    var currentPoint = CGPoint.zero
    //: var maxAngle = 15.0
    var maxAngle = 15.0
    //: var maxRemoveDistance = ScreenWidth/4.0
    var maxRemoveDistance = kLet_cameraValue / 4.0
    //: var cell_delegate: TalkingClubCardViewCellDelegete?
    var cell_delegate: StudCellDelegete?

    //: var model: SocialUserListModel? {
    var model: ControlWithModelType? {
        //: didSet {
        didSet {
            //: updatePageIndicators()
            beyondLabEvent()
        }
    }

    // 指示器相关属性
    //: private var pageIndicators: [UIView] = []
    private var pageIndicators: [UIView] = []
    //: private let indicatorContainer: UIView = {
    private let indicatorContainer: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: return view
        return view
        //: }()
    }()

    //: private let indicatorHeight: CGFloat = 3
    private let indicatorHeight: CGFloat = 3
    //: private let indicatorSpacing: CGFloat = 5
    private let indicatorSpacing: CGFloat = 5
    //: private let indicatorMargin: CGFloat = 15
    private let indicatorMargin: CGFloat = 15
    //: private let indicatorTopMargin: CGFloat = 9
    private let indicatorTopMargin: CGFloat = 9

    //: init(reuseIdentifier: String) {
    init(reuseIdentifier: String) {
        //: super.init(frame: .zero)
        super.init(frame: .zero)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.reuseIdentifier = reuseIdentifier
        self.reuseIdentifier = reuseIdentifier
        //: setupView()
        sharedApp()
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_verticalClickContent.map{viewRequest(player: $0)}, encoding: .utf8)!)
    }

    /// 内容视图
    //: private lazy var tapGesture: UIPanGestureRecognizer = {
    private lazy var tapGesture: UIPanGestureRecognizer = {
        //: let v = UIPanGestureRecognizer.init(target: self, action: #selector(panGesture(pan:)))
        let v = UIPanGestureRecognizer(target: self, action: #selector(startTime(pan:)))
        //: v.delegate = self
        v.delegate = self
        //: return v
        return v
        //: }()
    }()
}

//: extension TalkingClubCardViewCell: UIGestureRecognizerDelegate {
extension ClubThen: UIGestureRecognizerDelegate {
    //: func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
    func gestureRecognizer(_: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith _: UIGestureRecognizer) -> Bool {
        //: return true
        return true
    }

    //: func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
    func gestureRecognizer(_: UIGestureRecognizer, shouldReceive _: UITouch) -> Bool {
//        let sc = self.model?.isScroll
        //: return true
        return true
    }

    //: func addCellSnapshotView() {
    func beyondErrorAppear() {
        //: removeCellSnapshotView()
        detuskWithWeltanschauungView()
        //: self.setNeedsLayout()
        self.setNeedsLayout()
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: let snapshotView = self.snapshotView(afterScreenUpdates: true)
        let snapshotView = self.snapshotView(afterScreenUpdates: true)
        //: if snapshotView != nil {
        if snapshotView != nil {
            //: snapshotView!.tag = SNAPSHOTVIEW_TAG
            snapshotView!.tag = SNAPSHOTVIEW_TAG
            //: snapshotView!.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            snapshotView!.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            //: self.addSubview(snapshotView!)
            self.addSubview(snapshotView!)
            //: self.bringSubviewToFront(snapshotView!)
            self.bringSubviewToFront(snapshotView!)
        }
    }

    //: func removeCellSnapshotView() {
    func detuskWithWeltanschauungView() {
        //: let snapshotView = self.viewWithTag(SNAPSHOTVIEW_TAG)
        let snapshotView = self.viewWithTag(SNAPSHOTVIEW_TAG)
        //: if (snapshotView != nil) {
        if snapshotView != nil {
            //: snapshotView?.removeFromSuperview()
            snapshotView?.removeFromSuperview()
        }
    }

    //: @objc func panGesture(pan: UIPanGestureRecognizer) {
    @objc func startTime(pan: UIPanGestureRecognizer) {
        //: switch pan.state {
        switch pan.state {
        //: case .began:
        case .began:
            //: currentPoint = .zero
            currentPoint = .zero
            //: self.cell_delegate?.cardViewCellBeginMoveFromSuperView(cell: self)
            self.cell_delegate?.paperAdd(cell: self)
        //: case .changed:
        case .changed:
            //: let movePoint = pan.translation(in: pan.view)
            let movePoint = pan.translation(in: pan.view)
//            if FileReactiveCompatible.shared.direction == .rightToLeft {
//                if movePoint.x > ScreenWidth/4 {
//                    currentPoint = CGPoint.init(x: currentPoint.x + movePoint.x, y: currentPoint.y + movePoint.y)
//
//                    var moveScale = currentPoint.x / self.maxRemoveDistance
//                    if abs(moveScale) > 1.0 {
//                        moveScale = (moveScale > 0) ? 1.0 : -1.0
//                    }
//                    let angle = 30 / 180.0 * Double.pi * moveScale
//                    let transRotation = CGAffineTransformMakeRotation(angle)
//                    self.transform = CGAffineTransformTranslate(transRotation, self.currentPoint.x, 0)
//
//                    self.cell_delegate?.cardViewCellDidMoveFromSuperView(cell: self, forMovePoint: self.currentPoint)
//                    pan.setTranslation(.zero, in: pan.view)
//                }
//            } else {
            //: currentPoint = CGPoint.init(x: currentPoint.x + movePoint.x, y: currentPoint.y + movePoint.y)
            currentPoint = CGPoint(x: currentPoint.x + movePoint.x, y: currentPoint.y + movePoint.y)

            //: var moveScale = currentPoint.x / self.maxRemoveDistance
            var moveScale = currentPoint.x / self.maxRemoveDistance
            //: if abs(moveScale) > 1.0 {
            if abs(moveScale) > 1.0 {
                //: moveScale = (moveScale > 0) ? 1.0 : -1.0
                moveScale = (moveScale > 0) ? 1.0 : -1.0
            }
            //: let angle = self.maxAngle / 180.0 * Double.pi * moveScale
            let angle = self.maxAngle / 180.0 * Double.pi * moveScale
            //: let transRotation = CGAffineTransformMakeRotation(angle)
            let transRotation = CGAffineTransformMakeRotation(angle)
            //: self.transform = CGAffineTransformTranslate(transRotation, self.currentPoint.x, self.currentPoint.y)
            self.transform = CGAffineTransformTranslate(transRotation, self.currentPoint.x, self.currentPoint.y)
            //: if self.currentPoint.x < -50  {
            if self.currentPoint.x < -50 {
                //: self.cell_delegate?.cardViewCellDidMoveFromSuperView(cell: self, forMovePoint: self.currentPoint, direction: .Left)
                self.cell_delegate?.unwelcome(cell: self, forMovePoint: self.currentPoint, direction: .Left)
                //: } else if self.currentPoint.x > 50 {
            } else if self.currentPoint.x > 50 {
                //: self.cell_delegate?.cardViewCellDidMoveFromSuperView(cell: self, forMovePoint: self.currentPoint, direction: .Right)
                self.cell_delegate?.unwelcome(cell: self, forMovePoint: self.currentPoint, direction: .Right)
            }
            //: pan.setTranslation(.zero, in: pan.view)
            pan.setTranslation(.zero, in: pan.view)
//            }

        //: case .ended:
        case .ended:
//            if FileReactiveCompatible.shared.direction == .rightToLeft {
//                didPanStateEndedToRight()
//            } else {
//                didPanStateEnded()
//            }
            //: didPanStateEnded()
            showOriginal()
            //: self.cell_delegate?.cardViewCellEndMoveFromSuperView(cell: self)
            self.cell_delegate?.cardFromCompartment(cell: self)

        //: case .failed:
        case .failed:
            //: restoreCellLocation()
            outerSpace()
            //: self.cell_delegate?.cardViewCellEndMoveFromSuperView(cell: self)
            self.cell_delegate?.cardFromCompartment(cell: self)
        //: case .possible:
        case .possible:
            //: break
            break
        //: case .cancelled:
        case .cancelled:
            //: break
            break
        //: @unknown default:
        @unknown default:
            //: break
            break
        }
    }

    // 手势结束操作
    //: func didPanStateEnded() {
    func showOriginal() {
        // 左滑移除
        //: if (self.currentPoint.x < -self.maxRemoveDistance) {
        if self.currentPoint.x < -self.maxRemoveDistance {
            //: let snapshotView = self.snapshotView(afterScreenUpdates: false)
            let snapshotView = self.snapshotView(afterScreenUpdates: false)
            //: snapshotView?.transform = self.transform
            snapshotView?.transform = self.transform
            //: if snapshotView != nil {
            if snapshotView != nil {
                //: self.superview?.superview?.addSubview(snapshotView!)
                self.superview?.superview?.addSubview(snapshotView!)
            }
            //: didCellRemoveFromSuperview(direction: .Left, isGesture: true)
            deadlineSystem(direction: .Left, isGesture: true)

            //: let endCenterX = -(UIScreen.main.bounds.size.width/2 + self.frame.size.width)
            let endCenterX = -(UIScreen.main.bounds.size.width / 2 + self.frame.size.width)
            // 修改
            //: let distanceY = endCenterX*self.currentPoint.y/self.currentPoint.x
            let distanceY = endCenterX * self.currentPoint.y / self.currentPoint.x // 纵向移动距离
            //: let finishPoint = CGPoint.init(x: endCenterX, y: distanceY+self.center.y)
            let finishPoint = CGPoint(x: endCenterX, y: distanceY + self.center.y) // 目标center点

            //: UIView.animate(withDuration: DefaultDuration) {
            UIView.animate(withDuration: DefaultDuration) {
                //: snapshotView?.center = finishPoint
                snapshotView?.center = finishPoint
                //: }completion: { finished in
            } completion: { _ in
                //: snapshotView?.removeFromSuperview()
                snapshotView?.removeFromSuperview()
            }

            //: }else if (self.currentPoint.x > self.maxRemoveDistance) {
        } else if self.currentPoint.x > self.maxRemoveDistance {
            //: let snapshotView = self.snapshotView(afterScreenUpdates: false)
            let snapshotView = self.snapshotView(afterScreenUpdates: false)
            //: snapshotView?.transform = self.transform
            snapshotView?.transform = self.transform
            //: if snapshotView != nil {
            if snapshotView != nil {
                //: self.superview?.superview?.addSubview(snapshotView!)
                self.superview?.superview?.addSubview(snapshotView!)
            }
            //: didCellRemoveFromSuperview(direction: .Right, isGesture: true)
            deadlineSystem(direction: .Right, isGesture: true)

            //: let endCenterX = (UIScreen.main.bounds.size.width/2 + self.frame.size.width*1.5)
            let endCenterX = (UIScreen.main.bounds.size.width / 2 + self.frame.size.width * 1.5)
            // 修改
            //: let distanceY = endCenterX*self.currentPoint.y/self.currentPoint.x
            let distanceY = endCenterX * self.currentPoint.y / self.currentPoint.x // 纵向移动距离
            //: let finishPoint = CGPoint.init(x: endCenterX, y: distanceY+self.center.y)
            let finishPoint = CGPoint(x: endCenterX, y: distanceY + self.center.y) // 目标center点

            //: UIView.animate(withDuration: DefaultDuration) {
            UIView.animate(withDuration: DefaultDuration) {
                //: snapshotView?.center = finishPoint
                snapshotView?.center = finishPoint
                //: }completion: { finished in
            } completion: { _ in
                //: snapshotView?.removeFromSuperview()
                snapshotView?.removeFromSuperview()
            }
            //: } else if (self.currentPoint.y > self.maxRemoveDistance) {
        } else if self.currentPoint.y > self.maxRemoveDistance {
            //: let snapshotView = self.snapshotView(afterScreenUpdates: false)
            let snapshotView = self.snapshotView(afterScreenUpdates: false)
            //: snapshotView?.transform = self.transform
            snapshotView?.transform = self.transform
            //: if snapshotView != nil {
            if snapshotView != nil {
                //: self.superview?.superview?.addSubview(snapshotView!)
                self.superview?.superview?.addSubview(snapshotView!)
            }
            //: didCellRemoveFromSuperview(direction: .Left, isGesture: true)
            deadlineSystem(direction: .Left, isGesture: true)

            //: let endCenterY = (UIScreen.main.bounds.size.height/2 + self.frame.size.height*1.5)
            let endCenterY = (UIScreen.main.bounds.size.height / 2 + self.frame.size.height * 1.5)
            // 修改
            //: let distanceX = endCenterY*self.currentPoint.x/self.currentPoint.y
            let distanceX = endCenterY * self.currentPoint.x / self.currentPoint.y // 纵向移动距离
            //: let finishPoint = CGPoint.init(x: distanceX+self.center.x, y: endCenterY)
            let finishPoint = CGPoint(x: distanceX + self.center.x, y: endCenterY) // 目标center点
            //: UIView.animate(withDuration: DefaultDuration) {
            UIView.animate(withDuration: DefaultDuration) {
                //: snapshotView?.center = finishPoint
                snapshotView?.center = finishPoint
                //: }completion: { finished in
            } completion: { _ in
                //: snapshotView?.removeFromSuperview()
                snapshotView?.removeFromSuperview()
            }
        }
        // zw新增上滑移除
        //: else if (self.currentPoint.y < -self.maxRemoveDistance) {
        else if self.currentPoint.y < -self.maxRemoveDistance {
            //: let snapshotView = self.snapshotView(afterScreenUpdates: false)
            let snapshotView = self.snapshotView(afterScreenUpdates: false)
            //: snapshotView?.transform = self.transform
            snapshotView?.transform = self.transform
            //: if snapshotView != nil {
            if snapshotView != nil {
                //: self.superview?.superview?.addSubview(snapshotView!)
                self.superview?.superview?.addSubview(snapshotView!)
            }
            //: didCellRemoveFromSuperview(direction: .Right, isGesture: true)
            deadlineSystem(direction: .Right, isGesture: true)

            //: let endCenterY = -(UIScreen.main.bounds.size.height/2 + self.frame.size.height)
            let endCenterY = -(UIScreen.main.bounds.size.height / 2 + self.frame.size.height)
            // 修改
            //: let distanceX = endCenterY*self.currentPoint.x/self.currentPoint.y
            let distanceX = endCenterY * self.currentPoint.x / self.currentPoint.y // 纵向移动距离
            //: let finishPoint = CGPoint.init(x: distanceX+self.center.x, y: endCenterY)
            let finishPoint = CGPoint(x: distanceX + self.center.x, y: endCenterY) // 目标center点
            //: UIView.animate(withDuration: DefaultDuration) {
            UIView.animate(withDuration: DefaultDuration) {
                //: snapshotView?.center = finishPoint
                snapshotView?.center = finishPoint
                //: }completion: { finished in
            } completion: { _ in
                //: snapshotView?.removeFromSuperview()
                snapshotView?.removeFromSuperview()
            }
        }
        // 滑动距离不够归位
        //: else {
        else {
            //: restoreCellLocation()
            outerSpace()
        }
    }

    //: func didPanStateEndedToRight() {
    func tagEqual() {
        // 左滑移除
        //: if (self.currentPoint.x > self.maxRemoveDistance) {
        if self.currentPoint.x > self.maxRemoveDistance {
            //: let snapshotView = self.snapshotView(afterScreenUpdates: false)
            let snapshotView = self.snapshotView(afterScreenUpdates: false)
            //: snapshotView?.transform = self.transform
            snapshotView?.transform = self.transform
            //: if snapshotView != nil {
            if snapshotView != nil {
                //: self.superview?.superview?.addSubview(snapshotView!)
                self.superview?.superview?.addSubview(snapshotView!)
            }
            //: didCellRemoveFromSuperview(direction: .Left, isGesture: true)
            deadlineSystem(direction: .Left, isGesture: true)

            //: let endCenterX = (UIScreen.main.bounds.size.width/2 + self.frame.size.width)
            let endCenterX = (UIScreen.main.bounds.size.width / 2 + self.frame.size.width)
            // 修改
            //: let distanceY = endCenterX*self.currentPoint.y/self.currentPoint.x
            let distanceY = endCenterX * self.currentPoint.y / self.currentPoint.x // 纵向移动距离
            //: let finishPoint = CGPoint.init(x: endCenterX, y: distanceY+self.center.y)
            let finishPoint = CGPoint(x: endCenterX, y: distanceY + self.center.y) // 目标center点

            //: UIView.animate(withDuration: DefaultDuration) {
            UIView.animate(withDuration: DefaultDuration) {
                //: snapshotView?.center = finishPoint
                snapshotView?.center = finishPoint
                //: }completion: { finished in
            } completion: { _ in
                //: snapshotView?.removeFromSuperview()
                snapshotView?.removeFromSuperview()
            }

            //: } else if (self.currentPoint.x < -self.maxRemoveDistance) {
        } else if self.currentPoint.x < -self.maxRemoveDistance {
            //: let snapshotView = self.snapshotView(afterScreenUpdates: false)
            let snapshotView = self.snapshotView(afterScreenUpdates: false)
            //: snapshotView?.transform = self.transform
            snapshotView?.transform = self.transform
            //: if snapshotView != nil {
            if snapshotView != nil {
                //: self.superview?.superview?.addSubview(snapshotView!)
                self.superview?.superview?.addSubview(snapshotView!)
            }
            //: didCellRemoveFromSuperview(direction: .Right, isGesture: true)
            deadlineSystem(direction: .Right, isGesture: true)

            //: let endCenterX = -(UIScreen.main.bounds.size.width/2 + self.frame.size.width)
            let endCenterX = -(UIScreen.main.bounds.size.width / 2 + self.frame.size.width)
            // 修改
            //: let distanceY = endCenterX*self.currentPoint.y/self.currentPoint.x
            let distanceY = endCenterX * self.currentPoint.y / self.currentPoint.x // 纵向移动距离
            //: let finishPoint = CGPoint.init(x: endCenterX, y: distanceY+self.center.y)
            let finishPoint = CGPoint(x: endCenterX, y: distanceY + self.center.y) // 目标center点

            //: UIView.animate(withDuration: DefaultDuration) {
            UIView.animate(withDuration: DefaultDuration) {
                //: snapshotView?.center = finishPoint
                snapshotView?.center = finishPoint
                //: }completion: { finished in
            } completion: { _ in
                //: snapshotView?.removeFromSuperview()
                snapshotView?.removeFromSuperview()
            }
        }
        // 滑动距离不够归位
        //: else {
        else {
            //: restoreCellLocation()
            outerSpace()
        }
    }

    /// 卡片移除处理
    //: func didCellRemoveFromSuperview(direction: CardCellSwipeDirection, isGesture: Bool) {
    func deadlineSystem(direction: DataTradingCardCustomReflectable, isGesture: Bool) {
        //: self.cell_delegate?.cardViewCellDidRemoveFromSuperView(cell: self, direction: direction, isGesture: isGesture)
        self.cell_delegate?.flaunt(cell: self, direction: direction, isGesture: isGesture)
    }

    ///
    //: func cancleCellLocation() {
    func untilCancle() {
        //: self.restoreCellLocation()
        self.outerSpace()
    }

    /// 还原卡片位置
    //: func restoreCellLocation() {
    func outerSpace() {
        //: UIView.animate(withDuration: SpringDuration, delay: 0, usingSpringWithDamping: SpringWithDamping, initialSpringVelocity: SpringVelocity, options: [.curveEaseOut, .allowUserInteraction]) {
        UIView.animate(withDuration: SpringDuration, delay: 0, usingSpringWithDamping: SpringWithDamping, initialSpringVelocity: SpringVelocity, options: [.curveEaseOut, .allowUserInteraction]) {
            //: self.transform = CGAffineTransformIdentity
            self.transform = CGAffineTransformIdentity
        }
    }

    //: func removeFromSuperviewSwipe(direction: CardCellSwipeDirection) {
    func casementWindow(direction: DataTradingCardCustomReflectable) {
        //: switch (direction) {
        switch direction {
        //: case .Left:
        case .Left:
            //: removeFromSuperviewLeft(direction: .Left)
            aim(direction: .Left)
        //: case .Right:
        case .Right:
            //: removeFromSuperviewRight(direction: .Right)
            directionEnableGift(direction: .Right)
        }
    }

    // 向左边移除动画
    //: func removeFromSuperviewLeft(direction: CardCellSwipeDirection) {
    func aim(direction: DataTradingCardCustomReflectable) {
        //: let snapshotView = self.snapshotView(afterScreenUpdates: false)
        let snapshotView = self.snapshotView(afterScreenUpdates: false)
        //: if snapshotView != nil {
        if snapshotView != nil {
            //: self.superview?.superview?.addSubview(snapshotView!)
            self.superview?.superview?.addSubview(snapshotView!)
        }
        //: didCellRemoveFromSuperview(direction: direction, isGesture: false)
        deadlineSystem(direction: direction, isGesture: false)

        //: let transRotation = CGAffineTransformMakeRotation(-self.maxAngle / 180.0 * Double.pi)
        let transRotation = CGAffineTransformMakeRotation(-self.maxAngle / 180.0 * Double.pi)
        //: let transform = CGAffineTransformTranslate(transRotation, 0, self.frame.size.height/4.0)
        let transform = CGAffineTransformTranslate(transRotation, 0, self.frame.size.height / 4.0)
        //: let endCenterX = -(UIScreen.main.bounds.size.width/2 + self.frame.size.width)
        let endCenterX = -(UIScreen.main.bounds.size.width / 2 + self.frame.size.width)
        //: UIView.animate(withDuration: DefaultDuration) {
        UIView.animate(withDuration: DefaultDuration) {
            //: var center = self.center
            var center = self.center
            //: center.x = endCenterX
            center.x = endCenterX
            //: snapshotView?.center = center
            snapshotView?.center = center
            //: snapshotView?.transform = transform
            snapshotView?.transform = transform
            //: }completion: { finished in
        } completion: { _ in
            //: snapshotView?.removeFromSuperview()
            snapshotView?.removeFromSuperview()
        }
    }

    // 向右边移除动画
    //: func removeFromSuperviewRight(direction: CardCellSwipeDirection) {
    func directionEnableGift(direction: DataTradingCardCustomReflectable) {
        //: let snapshotView = self.snapshotView(afterScreenUpdates: false)
        let snapshotView = self.snapshotView(afterScreenUpdates: false)
        //: snapshotView?.frame = self.frame
        snapshotView?.frame = self.frame
        //: if snapshotView != nil {
        if snapshotView != nil {
            //: self.superview?.superview?.addSubview(snapshotView!)
            self.superview?.superview?.addSubview(snapshotView!)
        }
        //: didCellRemoveFromSuperview(direction: direction, isGesture: false)
        deadlineSystem(direction: direction, isGesture: false)

        //: let transRotation = CGAffineTransformMakeRotation(self.maxAngle / 180.0 * Double.pi)
        let transRotation = CGAffineTransformMakeRotation(self.maxAngle / 180.0 * Double.pi)
        //: let transform = CGAffineTransformTranslate(transRotation, 0, self.frame.size.height/4.0)
        let transform = CGAffineTransformTranslate(transRotation, 0, self.frame.size.height / 4.0)
        //: let endCenterX = UIScreen.main.bounds.size.width/2 + self.frame.size.width * 1.5
        let endCenterX = UIScreen.main.bounds.size.width / 2 + self.frame.size.width * 1.5

        //: UIView.animate(withDuration: DefaultDuration) {
        UIView.animate(withDuration: DefaultDuration) {
            //: var center = self.center
            var center = self.center
            //: center.x = endCenterX
            center.x = endCenterX
            //: snapshotView?.center = center
            snapshotView?.center = center
            //: snapshotView?.transform = transform
            snapshotView?.transform = transform
            //: }completion: { finished in
        } completion: { _ in
            //: snapshotView?.removeFromSuperview()
            snapshotView?.removeFromSuperview()
        }
    }
}

//: extension TalkingClubCardViewCell {
extension ClubThen {
    //: func setupView() {
    func sharedApp() {
        //: self.addGestureRecognizer(tapGesture)
        self.addGestureRecognizer(tapGesture)
        //: self.addSubview(indicatorContainer)
        self.addSubview(indicatorContainer)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: layoutPageIndicators()
        indicators()
    }

    //: private func layoutPageIndicators() {
    private func indicators() {
        //: guard let photos = model?.photos, photos.count > 1 else {
        guard let photos = model?.photos, photos.count > 1 else {
            //: indicatorContainer.isHidden = true
            indicatorContainer.isHidden = true
            //: return
            return
        }

        //: indicatorContainer.isHidden = false
        indicatorContainer.isHidden = false

        // 计算容器宽度：总宽度减去左右边距
        //: let containerWidth = self.bounds.width - (indicatorMargin * 2)
        let containerWidth = self.bounds.width - (indicatorMargin * 2)

        // 设置容器frame
        //: indicatorContainer.frame = CGRect(x: indicatorMargin,
        indicatorContainer.frame = CGRect(x: indicatorMargin,
                                          //: y: indicatorTopMargin,
                                          y: indicatorTopMargin,
                                          //: width: containerWidth,
                                          width: containerWidth,
                                          //: height: indicatorHeight)
                                          height: indicatorHeight)

        // 重新布局所有指示器
        //: let indicatorWidth = (containerWidth - (CGFloat(photos.count - 1) * indicatorSpacing)) / CGFloat(photos.count)
        let indicatorWidth = (containerWidth - (CGFloat(photos.count - 1) * indicatorSpacing)) / CGFloat(photos.count)

        //: for (i, indicator) in pageIndicators.enumerated() {
        for (i, indicator) in pageIndicators.enumerated() {
            //: let x = CGFloat(i) * (indicatorWidth + indicatorSpacing)
            let x = CGFloat(i) * (indicatorWidth + indicatorSpacing)
            //: indicator.frame = CGRect(x: x, y: 0, width: indicatorWidth, height: indicatorHeight)
            indicator.frame = CGRect(x: x, y: 0, width: indicatorWidth, height: indicatorHeight)
        }

        // 确保指示器在最上层
        //: self.bringSubviewToFront(indicatorContainer)
        self.bringSubviewToFront(indicatorContainer)
    }

    //: private func updatePageIndicators() {
    private func beyondLabEvent() {
        // 移除现有的指示器
        //: pageIndicators.forEach { $0.removeFromSuperview() }
        pageIndicators.forEach { $0.removeFromSuperview() }
        //: pageIndicators.removeAll()
        pageIndicators.removeAll()

        //: guard let photos = model?.photos, photos.count > 1 else {
        guard let photos = model?.photos, photos.count > 1 else {
            //: indicatorContainer.isHidden = true
            indicatorContainer.isHidden = true
            //: return
            return
        }

        //: indicatorContainer.isHidden = false
        indicatorContainer.isHidden = false

        // 计算容器宽度：总宽度减去左右边距
        //: let containerWidth = self.bounds.width - (indicatorMargin * 2)
        let containerWidth = self.bounds.width - (indicatorMargin * 2)
        // 计算每个指示器的宽度：(总宽度 - 间距总和) / 指示器数量
        //: let indicatorWidth = (containerWidth - (CGFloat(photos.count - 1) * indicatorSpacing)) / CGFloat(photos.count)
        let indicatorWidth = (containerWidth - (CGFloat(photos.count - 1) * indicatorSpacing)) / CGFloat(photos.count)

        // 创建新的指示器
        //: for i in 0..<photos.count {
        for i in 0 ..< photos.count {
            //: let indicator = UIView()
            let indicator = UIView()
            //: indicator.layer.cornerRadius = indicatorHeight / 2
            indicator.layer.cornerRadius = indicatorHeight / 2
            // 第一个指示器默认选中（90%白色），其他为未选中状态（20%白色）
            //: indicator.backgroundColor = i == 0 ?
            indicator.backgroundColor = i == 0 ?
                //: UIColor.white.withAlphaComponent(0.9) :
                UIColor.white.withAlphaComponent(0.9) :
                //: UIColor.white.withAlphaComponent(0.2)
                UIColor.white.withAlphaComponent(0.2)
            //: indicatorContainer.addSubview(indicator)
            indicatorContainer.addSubview(indicator)
            //: pageIndicators.append(indicator)
            pageIndicators.append(indicator)

            //: let x = CGFloat(i) * (indicatorWidth + indicatorSpacing)
            let x = CGFloat(i) * (indicatorWidth + indicatorSpacing)
            //: indicator.frame = CGRect(x: x, y: 0, width: indicatorWidth, height: indicatorHeight)
            indicator.frame = CGRect(x: x, y: 0, width: indicatorWidth, height: indicatorHeight)
        }

        // 确保指示器在最上层
        //: self.bringSubviewToFront(indicatorContainer)
        self.bringSubviewToFront(indicatorContainer)
    }

    //: func updateCurrentPageIndicator(index: Int) {
    func polaroidCamera(index: Int) {
        //: guard index >= 0 && index < pageIndicators.count else { return }
        guard index >= 0, index < pageIndicators.count else { return }

        //: for (i, indicator) in pageIndicators.enumerated() {
        for (i, indicator) in pageIndicators.enumerated() {
            //: indicator.backgroundColor = (i == index) ?
            indicator.backgroundColor = (i == index) ?
                //: UIColor.white.withAlphaComponent(0.9) :
                UIColor.white.withAlphaComponent(0.9) :
                //: UIColor.white.withAlphaComponent(0.2)
                UIColor.white.withAlphaComponent(0.2)
        }
    }
}
