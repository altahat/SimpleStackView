//
//  ViewController.swift
//  SimpleStackView
//
//  Created by zaid on 1/25/18.
//  Copyright © 2018 zaid. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    //MARK: Model
    let questions = [
        "what's is 7+7",
        "what's the capital of Vermont",
        "what's the capital of Wisconsin"
    ]
    let answers = [
        "14", "Montpelier", "Madison"
    ]
    var currentQindex = 0
    
   //OUTLETS
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var answerText: UILabel!
    
    //ACTIONS
    @IBAction func nextQuestionB(_ sender: UIButton) {
        currentQindex += 1
        if currentQindex == questions.count {
            currentQindex = 0
        }
        let question = questions[currentQindex]
        questionText.text = question
        
    }
    

    
    
    @IBAction func answerButton(_ sender: UIButton) {
        answerText.text = answers[currentQindex]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questionText.text = questions[currentQindex]
        
        //MARK: Optionals
        //let noString : String? = Optional.none
        var someInt : Int?  = Optional.some(5)
        //print (noString)
        //print(someInt)
        someInt = nil
        if let anInt = someInt{
            print(anInt)
        }else{
            print ("BADD")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
