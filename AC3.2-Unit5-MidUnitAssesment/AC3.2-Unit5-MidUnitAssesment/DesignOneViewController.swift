//
//  DesignOneViewController.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Louis Tur on 12/22/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class DesignOneViewController: UIViewController, CellTitled {
    
    //   ----------------------------------
    //    DO NOT MODIFY THIS SECTION
    //    👇👇👇👇👇👇👇👇👇👇👇👇👇👇
    
    // MARK: - Provided Constants
    let soundBarRed: UIColor = UIColor(red: 241.0/255, green: 165.0/255.0, blue: 147.0/255.0, alpha: 1.0)
    let soundBarYellow: UIColor = UIColor(red: 251.0/255, green: 214.0/255.0, blue: 180.0/255.0, alpha: 1.0)
    let soundBarGreen: UIColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
    let soundBarGray: UIColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
    
    let mainLabelFontSize: CGFloat = 24.0
    let subLabelFontSize: CGFloat = 18.0
    
    let standardMargin: CGFloat = 8.0
    let barMargin: CGFloat = 48.0
    
    // MARK: - CellTitled Protocol
    var titleForCell: String = "Design 1"
    
    //    ☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️
    //    DO NOT MODIFY THIS SECTION
    //   ----------------------------------
    
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        
        self.setupViewHierarchy()
        self.configureConstraints()
        self.settingUpValuesandColors()
        self.title = titleForCell
    }
    
    
    func setupViewHierarchy() {
        self.view.addSubview(grayContiner)
        self.view.addSubview(redLContainer)
        self.view.addSubview(redRContainer)
        self.view.addSubview(tanL1Continer)
        self.view.addSubview(tanL2Container)
        self.view.addSubview(tanR1Container)
        self.view.addSubview(tanR2Containter)
        self.view.addSubview(greenL1Container)
        self.view.addSubview(greenL2Container)
        self.view.addSubview(greenR1Container)
        self.view.addSubview(greenR2Container)
        self.view.addSubview(leftLabel)
        self.view.addSubview(rightLabel)
        self.view.addSubview(audioChannelLabel)
        self.view.addSubview(onelabel)
        self.view.addSubview(twoLablel)
        self.view.addSubview(threeLabel)
        self.view.addSubview(fourLabel)
        self.view.addSubview(fiveLabel)
    }
    
    
    func configureConstraints() {
        let _ = [
            self.grayContiner,
            self.redRContainer,
            self.redLContainer,
            self.tanL1Continer,
            self.tanL2Container,
            self.tanR1Container,
            self.tanR2Containter,
            self.greenR1Container,
            self.greenR2Container,
            self.greenL1Container,
            self.greenL2Container,
            self.onelabel,
            self.twoLablel,
            self.threeLabel,
            self.fourLabel,
            self.fiveLabel,
            self.audioChannelLabel,
            self.leftLabel,
            self.rightLabel
            ].map{$0.translatesAutoresizingMaskIntoConstraints = false}
        //  MARK: - Gray Container Constraints
        let _ = [
            grayContiner.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            grayContiner.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: standardMargin),
            grayContiner.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -(standardMargin)),
            grayContiner.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90.0),
            grayContiner.topAnchor.constraint(equalTo: view.topAnchor, constant: 68.0)
            ].map{$0.isActive = true}
        // MARK: - Red Containers Constraints && 5 Label Constraints
        let _ = [
            fiveLabel.topAnchor.constraint(equalTo: grayContiner.topAnchor, constant: 40),
            fiveLabel.heightAnchor.constraint(equalToConstant:50),
            fiveLabel.widthAnchor.constraint(equalToConstant:50),
            fiveLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            redLContainer.trailingAnchor.constraint(equalTo: fiveLabel.leadingAnchor),
            redLContainer.leadingAnchor.constraint(equalTo: grayContiner.leadingAnchor, constant: standardMargin),
            redLContainer.heightAnchor.constraint(equalTo: fiveLabel.heightAnchor),
            redLContainer.topAnchor.constraint(equalTo: grayContiner.topAnchor, constant: 40),
            
            redRContainer.leadingAnchor.constraint(equalTo: fiveLabel.trailingAnchor),
            redRContainer.trailingAnchor.constraint(equalTo: grayContiner.trailingAnchor, constant: -(standardMargin)),
            redRContainer.heightAnchor.constraint(equalTo: fiveLabel.heightAnchor),
            redRContainer.topAnchor.constraint(equalTo: grayContiner.topAnchor, constant: 40)
            ].map{$0.isActive = true}
        // MARK: - Yellow Containers Constraints && 3 and 4 Label Constraints
        let _ = [
            fourLabel.topAnchor.constraint(equalTo: fiveLabel.bottomAnchor, constant: 40),
            fourLabel.heightAnchor.constraint(equalToConstant: 50),
            fourLabel.widthAnchor.constraint(equalToConstant: 50),
            fourLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            tanL1Continer.trailingAnchor.constraint(equalTo: fourLabel.leadingAnchor),
            tanL1Continer.leadingAnchor.constraint(equalTo: grayContiner.leadingAnchor, constant:standardMargin),
            tanL1Continer.heightAnchor.constraint(equalTo: fourLabel.heightAnchor),
            tanL1Continer.topAnchor.constraint(equalTo: redLContainer.bottomAnchor, constant: 40),
            
            tanR1Container.leadingAnchor.constraint(equalTo: fourLabel.trailingAnchor),
            tanR1Container.trailingAnchor.constraint(equalTo: grayContiner.trailingAnchor, constant: -(standardMargin)),
            tanR1Container.heightAnchor.constraint(equalTo: fourLabel.heightAnchor),
            tanR1Container.topAnchor.constraint(equalTo: redRContainer.bottomAnchor, constant: 40)
            ].map{$0.isActive = true}
        
        let _ = [
            threeLabel.topAnchor.constraint(equalTo: fourLabel.bottomAnchor, constant: 40),
            threeLabel.heightAnchor.constraint(equalToConstant: 50),
            threeLabel.widthAnchor.constraint(equalToConstant: 50),
            threeLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            tanL2Container.trailingAnchor.constraint(equalTo: threeLabel.leadingAnchor),
            tanL2Container.leadingAnchor.constraint(equalTo: grayContiner.leadingAnchor, constant:standardMargin),
            tanL2Container.heightAnchor.constraint(equalTo: threeLabel.heightAnchor),
            tanL2Container.topAnchor.constraint(equalTo: tanL1Continer.bottomAnchor, constant: 40),
            
            tanR2Containter.leadingAnchor.constraint(equalTo: threeLabel.trailingAnchor),
            tanR2Containter.trailingAnchor.constraint(equalTo: grayContiner.trailingAnchor, constant: -(standardMargin)),
            tanR2Containter.heightAnchor.constraint(equalTo: threeLabel.heightAnchor),
            tanR2Containter.topAnchor.constraint(equalTo: tanR1Container.bottomAnchor, constant: 40)
            ].map{$0.isActive = true}
        //MARK: - Green Containers Constraints && 2 and 1 Label Constraints
        let _ = [
            twoLablel.topAnchor.constraint(equalTo: threeLabel.bottomAnchor, constant: 40),
            twoLablel.heightAnchor.constraint(equalToConstant: 50),
            twoLablel.widthAnchor.constraint(equalToConstant: 50),
            twoLablel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            greenL1Container.trailingAnchor.constraint(equalTo: twoLablel.leadingAnchor),
            greenL1Container.leadingAnchor.constraint(equalTo: grayContiner.leadingAnchor, constant:standardMargin),
            greenL1Container.heightAnchor.constraint(equalTo: twoLablel.heightAnchor),
            greenL1Container.topAnchor.constraint(equalTo: tanL2Container.bottomAnchor, constant: 40),
            
            greenR1Container.leadingAnchor.constraint(equalTo: twoLablel.trailingAnchor),
            greenR1Container.trailingAnchor.constraint(equalTo: grayContiner.trailingAnchor, constant: -(standardMargin)),
            greenR1Container.heightAnchor.constraint(equalTo: twoLablel.heightAnchor),
            greenR1Container.topAnchor.constraint(equalTo: tanR2Containter.bottomAnchor, constant: 40)
            ].map{$0.isActive = true}
        
        let _ = [
            onelabel.topAnchor.constraint(equalTo: twoLablel.bottomAnchor, constant: 40),
            onelabel.heightAnchor.constraint(equalToConstant: 50),
            onelabel.widthAnchor.constraint(equalToConstant: 50),
            onelabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            greenL2Container.trailingAnchor.constraint(equalTo: onelabel.leadingAnchor),
            greenL2Container.leadingAnchor.constraint(equalTo: grayContiner.leadingAnchor, constant:standardMargin),
            greenL2Container.heightAnchor.constraint(equalTo: onelabel.heightAnchor),
            greenL2Container.topAnchor.constraint(equalTo: greenL1Container.bottomAnchor, constant: 40),
            
            greenR2Container.leadingAnchor.constraint(equalTo: onelabel.trailingAnchor),
            greenR2Container.trailingAnchor.constraint(equalTo: grayContiner.trailingAnchor, constant: -(standardMargin)),
            greenR2Container.heightAnchor.constraint(equalTo: onelabel.heightAnchor),
            greenR2Container.topAnchor.constraint(equalTo: greenR1Container.bottomAnchor, constant: 40)
            ].map{$0.isActive = true}
        
        //MARK: Lower Labels Constraints
        let _ = [
            self.audioChannelLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.audioChannelLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -16),
            
                    self.leftLabel.bottomAnchor.constraint(equalTo: self.audioChannelLabel.topAnchor, constant:-18),
                    self.leftLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 80),
            
                    self.rightLabel.bottomAnchor.constraint(equalTo: self.audioChannelLabel.topAnchor, constant:-18),
                    self.rightLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -80)
            ].map{$0.isActive = true}
        
    }
    
    // MARK: - Define Your Views Here
    
    // ex:
    // let grayContainer: UIView = ... your code here ...
    // let leftGreen1: UIView = ... your code here ...
    // let leftGreen2: UIView = ... your code here ...
    //
    let grayContiner = UIView()
    let redLContainer = UIView()
    let redRContainer = UIView()
    let tanL1Continer = UIView()
    let tanR1Container = UIView()
    let tanL2Container = UIView()
    let tanR2Containter = UIView()
    let greenL1Container = UIView()
    let greenR1Container = UIView()
    let greenL2Container = UIView()
    let greenR2Container = UIView()
    let leftLabel = UILabel()
    let rightLabel = UILabel()
    let audioChannelLabel = UILabel()
    let onelabel = UILabel()
    let twoLablel = UILabel()
    let threeLabel = UILabel()
    let fourLabel = UILabel()
    let fiveLabel = UILabel()
    // MARK: - Setting Up View Basics
    func settingUpValuesandColors () {
        self.grayContiner.backgroundColor = soundBarGray
        self.redRContainer.backgroundColor = soundBarRed
        self.redLContainer.backgroundColor = soundBarRed
        self.tanL1Continer.backgroundColor = soundBarYellow
        self.tanL2Container.backgroundColor = soundBarYellow
        self.tanR1Container.backgroundColor = soundBarYellow
        self.tanR2Containter.backgroundColor = soundBarYellow
        self.greenR1Container.backgroundColor = soundBarGreen
        self.greenR2Container.backgroundColor = soundBarGreen
        self.greenL1Container.backgroundColor = soundBarGreen
        self.greenL2Container.backgroundColor = soundBarGreen
        self.onelabel.text = "1"
        self.twoLablel.text = "2"
        self.threeLabel.text = "3"
        self.fourLabel.text = "4"
        self.fiveLabel.text = "5"
        self.leftLabel.text = "Left"
        self.leftLabel.textColor = .white
        self.leftLabel.font = UIFont.systemFont(ofSize: subLabelFontSize)
        self.rightLabel.text = "Right"
        self.rightLabel.textColor = .white
        self.rightLabel.font = UIFont.systemFont(ofSize: subLabelFontSize)
        self.audioChannelLabel.text = "Audio Channels"
        self.audioChannelLabel.textColor = .white
        self.audioChannelLabel.font = UIFont.systemFont(ofSize: mainLabelFontSize)
        //MARK: - Text Alignment
        let _ = [
            self.onelabel,
            self.twoLablel,
            self.threeLabel,
            self.fourLabel,
            self.fiveLabel,
            self.leftLabel,
            self.rightLabel,
            self.audioChannelLabel
            ].map{$0.textAlignment = .center}
    }
}
