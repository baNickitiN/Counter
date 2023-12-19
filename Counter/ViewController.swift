//
//  ViewController.swift
//  Counter
//
//  Created by Boris Nickitin on 18.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
//объявляем переменную счетчика
var count: Int = 0
    //объявляем переменную счетчика
var number: Int = 0
var date: String = {
        let dateForm = DateFormatter()
        dateForm.dateStyle = DateFormatter.Style.short
        dateForm.timeStyle = DateFormatter.Style.short
        return dateForm.string(from: Date()).description
    }()
    
    
//Создаем аутлет на кнопку плюс
@IBOutlet weak var buttonPlus: UIButton!
    
//Создаем аутлет на кнопку минус
@IBOutlet weak var buttonMinus: UIButton!

////Создаем аутлет на кнопку clear
@IBOutlet weak var clearButton: UIButton!
    
    
//Создаем аутлет на lable
@IBOutlet weak var lablePrint: UILabel!

//Создаем аутлет на view
@IBOutlet weak var textView: UITextView!
    
//Создаем action на кнопку плюс
@IBAction func buttonPluse(_ sender: Any) {
    number += 1
    count += 1
    if count >= 0 {
        lablePrint.text = "Значение счётчика: \(count)"
        textView.text.append("\n\(number) - \(date) значение изменено на +1")
    }
    else {
//        lablePrint.text = "Значение счётчика не \n может быть меньше 0"
//        textView.text = "\n\(date) Вы попытались записать значение < 0!"
    }
        }
    
//Создаем action на кнопку минус
@IBAction func buttonMinus(_ sender: Any) {
    number += 1
        count -= 1
    if count >= 0 {
        lablePrint.text = "Значение счётчика: \(count)"
        textView.text.append("\n\(number) - \(date) значение изменено на -1")
    }
    else {
        lablePrint.text = "Значение счётчика не \n может быть меньше 0!"
        textView.text.append("\n\(number) - \(date) Вы попытались записать значение < 0")
        count = 0 //Останавливаем уменьшение счетчика при достижении нуля
          }
    }
    
//Создаем action на кнопку clear
@IBAction func buttonCltar(_ sender: Any) {
    number += 1
        count = 0
    if count >= 0 {
        lablePrint.text = "Значение счётчика: \(count)"
//        textView.text.append("\n\(number) - \(date) значение счетчика сброшено")
        textView.text.append("\n\(number) - \(date) значение счетчика сброшено")
    }
    else {
//        lablePrint.text = "\n\(date) Вы попытались записать значение < 0"
//        lablePrint.text = "Значение счётчика не \n может быть меньше 0!"
    }
}

//Загрузка экрана
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view.
            lablePrint.text = "Значение счётчика: \(count)"
            textView.isEditable = false
        }
}

