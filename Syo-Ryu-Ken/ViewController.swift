//
//  ViewController.swift
//  Syo-Ryu-Ken
//
//  Created by 細川聖矢 on 2019/06/04.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //画像を格納する配列を作る｡型はArray<UIImage>
    var imagesArray : Array<UIImage> = []
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageview.image = UIImage(named:"attak1")
        //配列に画像を追加｡オプショナルバインディング｡
    //attak(1~20)の名前でUIImageであればオプショナルを外す｡そうでなければnil｡
        //その後､imagesArrayにattakimageを加える｡
        //↓ifだとどうやるんだ？
        while let attakimage = UIImage(named:"attak\(imagesArray.count+1)"){
            imagesArray.append(attakimage)
        }
    }

    /*var image1:UIImage = UIImage(named: "attak1")!
    var image2:UIImage = UIImage(named: "attak2")!
    var image3:UIImage = UIImage(named: "attak3")!
    var image4:UIImage = UIImage(named: "attak4")!
    var image5:UIImage = UIImage(named: "attak5")!
    var image6:UIImage = UIImage(named: "attak6")!
    var image7:UIImage = UIImage(named: "attak7")!
    var image8:UIImage = UIImage(named: "attak8")!
    var image9:UIImage = UIImage(named: "attak9")!
    var image10:UIImage = UIImage(named: "attak10")!
    var image11:UIImage = UIImage(named: "attak11")!
    var image12:UIImage = UIImage(named: "attak12")!
    var image13:UIImage = UIImage(named: "attak13")!
    var image14:UIImage = UIImage(named: "attak14")!
    var image15:UIImage = UIImage(named: "attak15")!
    var image16:UIImage = UIImage(named: "attak16")!
    var image17:UIImage = UIImage(named: "attak17")!
    var image18:UIImage = UIImage(named: "attak18")!
    var image19:UIImage = UIImage(named: "attak19")!
    var image20:UIImage = UIImage(named: "attak20")!
    */

    @IBOutlet weak var imageview: UIImageView!
    @IBAction func movebutton(_ sender: Any) {
        //アニメーションを適応する｡
    //snimationImages:アニメーションに使用するUIImageオブジェクトの配列。UIImageオブジェクトを含む配列が必要。
        imageview.animationImages = imagesArray
        
        //image表示の長さを設定｡
        imageview.animationDuration = 1.5
        
        //繰り返し回数｡デフォルトだと0で無限に繰り返すことになる｡
        imageview.animationRepeatCount = 1
        
        //animationの開始｡
        imageview.startAnimating()
    }
}

