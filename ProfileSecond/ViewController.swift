//
//  ViewController.swift
//  ProfileSecond
//
//  Created by Екатерина Яцкевич on 9.03.25.
//

import UIKit

class ViewController: UIViewController {

    lazy var screenWidth = view.frame.width
    let offset: CGFloat = 30
    
    lazy var editButton = createButton(img: .cross, offsetX: offset)
    lazy var likeButton = createButton(img: .heart, offsetX: writeButton.frame.maxX + 33)
    
    lazy var appName: UILabel = {
        $0.frame.size = CGSize(width: screenWidth - 2 * offset, height: 36)
        $0.frame.origin = CGPoint(x: offset, y: 63)
        $0.text = "AppName"
        $0.font = .systemFont(ofSize: 30, weight: .heavy)
        return $0
    }(UILabel())
    
    lazy var profileImage: UIImageView = {
        $0.frame.size = CGSize(width: screenWidth - 60, height: 392)
        $0.frame.origin = CGPoint(x: offset, y: appName.frame.maxY + 28)
        $0.image = .woman
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 30
        return $0
    }(UIImageView())
    
    lazy var fullName: UILabel = {
        $0.frame.size = CGSize(width: 140, height: 24)
        $0.frame.origin = CGPoint(x: profileImage.frame.minX + offset, y: profileImage.frame.maxY - $0.frame.height - 70)
        $0.text = "Имя Фамилия"
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 20, weight: .bold)
        return $0
    }(UILabel())

    lazy var itemImage: UIImageView = {
        $0.frame.size = CGSize(width: 29, height: 29)
        $0.frame.origin = CGPoint(x: fullName.frame.maxX, y: profileImage.frame.maxY - $0.frame.height - 67)
        $0.image = .item
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 30
        return $0
    }(UIImageView())
    
    lazy var age: UILabel = {
        $0.frame.size = CGSize(width: 140, height: 19)
        $0.frame.origin = CGPoint(x: profileImage.frame.minX + offset, y: fullName.frame.maxY)
        $0.text = "25 лет"
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 16, weight: .light)
        return $0
    }(UILabel())

    lazy var writeButton: UIButton = {
        $0.frame.size = CGSize(width: 174, height: 50)
        $0.frame.origin = CGPoint(x: editButton.frame.maxX + 33, y: profileImage.frame.maxY + 36)
        $0.setTitle("Написать", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        $0.backgroundColor = .greenBtn
        $0.layer.cornerRadius = 20
        return $0
    }(UIButton())

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubviews(appName, profileImage, fullName, itemImage, age, writeButton, editButton, likeButton)
    }

    private func createButton(img: UIImage, offsetX: CGFloat) -> UIButton {
        let btn = UIButton()
        btn.frame.size = CGSize(width: 65, height: 65)
        btn.frame.origin = CGPoint(x: offsetX, y: profileImage.frame.maxY + 28)
        btn.backgroundColor = .backgroundGray
        btn.setImage(img, for: .normal)
        btn.layer.cornerRadius = btn.frame.width / 2
        return btn
    }

}

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach{addSubview($0)}
    }
}
