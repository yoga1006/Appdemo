//
//  ViewController.swift
//  Appdemo
//
//  Created by 王鈞則 on 2022/4/26.
//

import UIKit
import SpriteKit //產生粒子效果
import AVFoundation //加入音樂

class ViewController: UIViewController {
    
    var looper:AVPlayerLooper? //循環播放器要在viewDidLoad之前宣告，如果於viewDidLoad裡面宣告會造成viewDidLoad程式跑完，player被清掉造成音樂無法播放
    
    func tLetter(){
        
        let tOnePath = UIBezierPath()
        tOnePath.move(to: CGPoint(x:96 ,y:650))
        tOnePath.addLine(to: CGPoint(x: 150, y: 650))

        
        let tOnemarkLayer = CAShapeLayer()
        tOnemarkLayer.path = tOnePath.cgPath
        tOnemarkLayer.lineWidth = 10
        tOnemarkLayer.strokeColor = UIColor.brown.cgColor
        tOnemarkLayer.fillColor = nil
        view.layer.addSublayer(tOnemarkLayer)
        
        let tOneAnimation = CABasicAnimation(keyPath: "strokeEnd")
        //CABasicAnimation 可以實現許多動畫效果。而動畫的效果則由CABasicAnimation時傳入的keyPath 決定。strokeEnd，代表從CABasicAnimation路徑的起點畫線到終點的動畫效果
        tOneAnimation.fromValue = 0
        //控制動畫從哪裡開始跟結束，fromValue設為0表示它將從CAShapeLayer路徑的起點開始，toValue設為1表示動畫將在畫到路徑終點時結束
        tOneAnimation.toValue = 1
        tOneAnimation.duration = 5 //設定動畫的時間，以秒為單位
        tOnemarkLayer.add(tOneAnimation, forKey: nil)
        //將動畫加到CAShapeLayer上，實現繪製 CAShapeLayer 線條的動畫效果
        
        let tTwoPath = UIBezierPath()
        tTwoPath.move(to: CGPoint(x: 123, y: 650))
        tTwoPath.addLine(to: CGPoint(x: 123, y:700))
        
        let tTwomarkLayer = CAShapeLayer()
        tTwomarkLayer.path = tTwoPath.cgPath
        tTwomarkLayer.lineWidth = 10
        tTwomarkLayer.strokeColor = UIColor.brown.cgColor
        tTwomarkLayer.fillColor = nil
        view.layer.addSublayer(tTwomarkLayer)
        
        let tTwoAnimation = CABasicAnimation(keyPath: "strokeEnd")
        tTwoAnimation.fromValue = 0
        tTwoAnimation.toValue = 1
        tTwoAnimation.duration = 5
        tTwomarkLayer.add(tTwoAnimation, forKey: nil)
   
    }
    
    func eLetter(){
        
        let eOnePath = UIBezierPath()
        eOnePath.move(to: CGPoint(x: 210, y: 700))
        eOnePath.addLine(to: CGPoint(x: 160, y: 700))
        eOnePath.addLine(to: CGPoint(x: 160, y: 750))
        eOnePath.addLine(to: CGPoint(x: 210, y: 750))
        
        let eOnemarkLayer = CAShapeLayer()
        eOnemarkLayer.path = eOnePath.cgPath
        eOnemarkLayer.lineWidth = 10
        eOnemarkLayer.strokeColor = UIColor.brown.cgColor
        eOnemarkLayer.fillColor = nil
        view.layer.addSublayer(eOnemarkLayer)
        
        let eOneAnimation = CABasicAnimation(keyPath: "strokeEnd")
        eOneAnimation.fromValue = 0
        eOneAnimation.toValue = 1
        eOneAnimation.duration = 5
        eOnemarkLayer.add(eOneAnimation, forKey: nil)
        
        
        let eTwoPath = UIBezierPath()
        eTwoPath.move(to: CGPoint(x: 160, y: 725))
        eTwoPath.addLine(to: CGPoint(x: 210, y: 725))
        
        let eTwomarkLayer = CAShapeLayer()
        eTwomarkLayer.path = eTwoPath.cgPath
        eTwomarkLayer.lineWidth = 10
        eTwomarkLayer.strokeColor = UIColor.brown.cgColor
        eTwomarkLayer.fillColor = nil
        view.layer.addSublayer(eTwomarkLayer)
        
        let eTwoAnimation = CABasicAnimation(keyPath: "strokeEnd")
        eTwoAnimation.fromValue = 0
        eTwoAnimation.toValue = 1
        eTwoAnimation.duration = 5
        eTwomarkLayer.add(eTwoAnimation, forKey: nil)
        
        
    }
    
    func aLetter(){
        
        let aOnePath = UIBezierPath()
        aOnePath.move(to: CGPoint(x: 220, y: 800))
        aOnePath.addLine(to: CGPoint(x: 245, y: 750))
        aOnePath.addLine(to: CGPoint(x: 270, y: 800))
        
        let aOnemarkLayer = CAShapeLayer()
        aOnemarkLayer.path = aOnePath.cgPath
        aOnemarkLayer.lineWidth = 10
        aOnemarkLayer.strokeColor = UIColor.brown.cgColor
        aOnemarkLayer.fillColor = nil
        view.layer.addSublayer(aOnemarkLayer)
        
        let aOneAnimation = CABasicAnimation(keyPath: "strokeEnd")
        aOneAnimation.fromValue = 0
        aOneAnimation.toValue = 1
        aOneAnimation.duration = 5
        aOnemarkLayer.add(aOneAnimation, forKey: nil)
        
        let aTwoPath = UIBezierPath()
        aTwoPath.move(to: CGPoint(x: 233, y: 775))
        aTwoPath.addLine(to: CGPoint(x: 257, y: 775))
        
        let aTwomarkLayer = CAShapeLayer()
        aTwomarkLayer.path = aTwoPath.cgPath
        aTwomarkLayer.lineWidth = 10
        aTwomarkLayer.strokeColor = UIColor.brown.cgColor
        aTwomarkLayer.fillColor = nil
        view.layer.addSublayer(aTwomarkLayer)
        
        let aTwoAnimation = CABasicAnimation(keyPath: "strokeEnd")
        aTwoAnimation.fromValue = 0
        aTwoAnimation.toValue = 1
        aTwoAnimation.duration = 5
        aTwomarkLayer.add(aTwoAnimation, forKey: nil)
        
    }
    
    func addMilkteaView(moveX:CGFloat,moveY:CGFloat,rotateDegree:CGFloat,scale:CGFloat,alpha:CGFloat){
        
        let milkteaImage = UIImage(named: "milkteashadow")
        let milkteaImageView = UIImageView(image: milkteaImage)
        
        let oneDegree = CGFloat.pi/180
        milkteaImageView.transform = CGAffineTransform.identity.translatedBy(x: moveX, y: moveY).scaledBy(x:scale, y: scale).rotated(by: oneDegree*rotateDegree)
        milkteaImageView.alpha = alpha
        view.addSubview(milkteaImageView)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if  let url = URL(string: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/90/01/bd/9001bd9e-f514-2da8-d904-6c2590c0f04d/mzaf_6971296292299231375.plus.aac.p.m4a"){
        let player = AVQueuePlayer() //生成AVQueuePlayer物件
        let item = AVPlayerItem(url: url) //利用AVPlayerItem生成要播的音樂網址
        looper = AVPlayerLooper(player: player, templateItem: item)
        //生成AVPlayerLooper，傳入剛剛生成的player&item。到時候AVPlayerLooper將讓item重覆播放
        player.play()
        }
        
        let togetherImage = UIImage(named: "together")
        let togetherImageView = UIImageView(image: togetherImage)
        togetherImageView.frame = CGRect(x: 100, y: 250, width: 200, height: 222)
        
        
        
        let gradientLayer = CAGradientLayer()
        //建立顯示漸層顏色的CAGradientLayer物件
        gradientLayer.frame = view.frame
        //將漸層layer的邊界跟手機view的邊對齊
        gradientLayer.colors = [
            CGColor(red: 1, green: 193/255, blue: 37/255, alpha: 1),
            CGColor(red: 1, green: 228/255, blue: 181/255, alpha: 1),
            CGColor(red: 1, green: 250/255, blue: 250/255, alpha: 1)
        ]
        //設定漸層的顏色
        view.layer.addSublayer(gradientLayer)
        //將漸層layer加在view上
        view.addSubview(togetherImageView)
        addMilkteaView(moveX: 100, moveY: 500, rotateDegree: 45, scale: 0.3,alpha: 0.8)
        addMilkteaView(moveX: -90, moveY: 570, rotateDegree: 320, scale: 0.5,alpha: 0.2)
        addMilkteaView(moveX: 120, moveY: 550, rotateDegree: 330, scale: 0.1,alpha: 0.7)
        addMilkteaView(moveX: -100, moveY:450, rotateDegree: 30, scale: 0.2,alpha: 0.6)
        addMilkteaView(moveX: 10, moveY: 420, rotateDegree: 0, scale: 0.3,alpha: 1)
        addMilkteaView(moveX: 150, moveY: 600, rotateDegree: 90, scale: 0.2,alpha: 0.7)
        addMilkteaView(moveX: 160, moveY: 430, rotateDegree: 20, scale: 0.2,alpha: 0.6)
        
        let loveImageView = UIImageView(frame: CGRect(x: 20, y: 400, width: 100, height: 50))
        //產生imageview，長寬參考原始圖不然會變形
        view.addSubview(loveImageView)
        let animatedImage = UIImage.animatedImageNamed("07ff07f234c64547c67895ff861a706ajkVdCUrPDpa8mrNj-", duration: 1)
        //產生代表動畫圖片的UIImage物件
        loveImageView.image=animatedImage
        
        let loveImageView2 = UIImageView(frame: CGRect(x: 300, y: 400, width: 100, height: 50))
        view.addSubview(loveImageView2)
        let animatedImage2 = UIImage.animatedImageNamed("07ff07f234c64547c67895ff861a706ajkVdCUrPDpa8mrNj-", duration: 1)
        loveImageView2.image=animatedImage2
        
        
        let skView = SKView(frame: view.frame)
        view.insertSubview(skView, at: 0)
        //SpriteKit顯示的畫面呈現在SKView型別的view裡，因此先產生SKView物件，然後利用insertSubview 將它加到畫面的底層，讓它成為背景
        skView.allowsTransparency = true //允許透明
        let scene = SKScene(size: skView.frame.size)
        skView.presentScene(scene)
        //SKView 顯示的內容由SKScene控制，因此產生SKScene，然後從skView呼叫presentScene顯示SKScene 的內容
        
        let emitterNode = SKEmitterNode(fileNamed: "MySnowParticle")
        scene.addChild(emitterNode!)
        //產生SKEmitterNode時傳入MySnowParticle的檔名，產生製造下雪效果的SKEmitterNode，然從再從scene呼叫addChild加入SKEmitterNode，讓scene顯示下雪的粒子效果
        scene.anchorPoint=CGPoint(x: 0.5, y: 1)
        //SKScene的anchorPoint控制 scene內容呈現的位置，它的型別是 CGPoint，畫面的左下角為 (0, 0)，右上角為 (1, 1)
        emitterNode?.particleBirthRate=1 //指定一秒發射一個可愛奶茶圖
        emitterNode?.particleLifetime=5 //指定可愛奶茶圖停留的時間為五秒
        emitterNode?.particleSpeed=100 //指定可愛奶茶圖的移動速度
        scene.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //讓圖不要被擋住一定要清除view&scene原始設定的背景色
        view.addSubview(skView)
        //把可愛奶茶圖加在背景上
        
        tLetter()
        eLetter()
        aLetter()
        
        
        
        
    }


}

