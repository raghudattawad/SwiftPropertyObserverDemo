//
//  ViewController.swift
//  SwiftPropertyWillSetDidSetDemo
//
//  Created by Raghavendra Dattawad on 8/14/18.
//  Copyright © 2018 Raghavendra Dattawad. All rights reserved.
//

import UIKit



//// theree are 4 properties //
// set
// Get
// didSet
//willSet


/// before storing value will set called:It allows us to read the old value before its changed

/// after stroing value did set called //




struct Person {
    
    var name:String
    var age:Int
}

var person:Person?{
    
    didSet{
           print("Called after setting the new value")
        
   
        if let name = person?.name{
            //// here old value is keyword ///
            print("new name is \(name) and old name is \(String(describing: oldValue?.name))")
        }
    
    
}
//    willSet comes with a constant parameter that contains the new value, with the default name newValue
//    didSet comes with a constant parameter that contains the old value, with the default name oldValue
    
    willSet(myNewValue){
        
        print("Called before setting the new value")
        
        if let newValue = myNewValue?.name{
            
            print("new name is \(newValue)")
        }
    }
}
////other thing ///


/*Syntax
 
//within a class or structure

var variableName: dataType {
    get {
        //code to execute
        return someValue
    }
    set(newValue) {
        //code to execute
    }
}
 */

/// get and set are commputed propeterty observer //
class Rectangle {
    var width : Int = 20
    var height : Int = 400
    
    var area: Int {
        get {
            return width * height
        }
        set(newArea){
            // Make it a square with the approximate given area:
            width = Int(sqrt(Double(newArea)))
            height = width
        }
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
    
        person = Person(name: "ram", age: 18)
     
  let r =  Rectangle()

///only you printed it will multiply and give
        
print(r.area)
        
    /// if u change something  it will set value // 
                r.area = 200
                print(r.area)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

