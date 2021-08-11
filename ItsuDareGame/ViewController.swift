//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 生越冴恵 on 2021/08/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel:UILabel!
    @IBOutlet var dokoLabel:UILabel!
    @IBOutlet var daregaLabel:UILabel!
    @IBOutlet var doshitaLabel:UILabel!
    
    let itsArray:[String]=["一年前","一週間前","昨日","今日"]
    let dokoArray:[String]=["山上で","アメリカで","学校で","クラスで"]
    let daregaArray:[String]=["僕が","大統領が","先生が","友達が"]
    let doshitaArray:[String]=["叫んだ","演説した","怒った","踊った"]
    var index:Int=0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(){
        itsuLabel.text=itsArray[index]
        dokoLabel.text=dokoArray[index]
        daregaLabel.text=daregaArray[index]
        doshitaLabel.text=doshitaArray[index]
        index=index+1
        if index>3{
            index=0
        }
        
    }
    @IBAction func reset(){
        itsuLabel.text="-------"
        dokoLabel.text="-------"
        daregaLabel.text="-------"
        doshitaLabel.text="-------"
        index=0
        
    }
    @IBAction func random(){
        let itsuIndex=Int.random(in: 0...3)
        let dokoIndex=Int.random(in: 0...3)
        let daregaIndex=Int.random(in: 0...3)
        let doshitaIndex=Int.random(in: 0...3)
        
        print("いつ:\(itsuIndex)")
        print("どこ:\(dokoIndex)")
        print("誰が:\(daregaIndex)")
        print("どうした:\(doshitaIndex)")
        
        itsuLabel.text=itsArray[itsuIndex]
        dokoLabel.text=dokoArray[dokoIndex]
        daregaLabel.text=daregaArray[daregaIndex]
        doshitaLabel.text=doshitaArray[dokoIndex]
        
    }


}

