//
//  fnbMenu.swift
//  AFL 2 Mahadi Rafi Winata
//
//  Created by SIFT - Telkom DBT Air 4 on 10/04/22.
//

import Foundation

public class fnbMenu: Cart{
    
    var foodList = ["F01": "Nasi Padang", "F02": "Chicken Satay", "F03": "Gado-gado"]
    var bevList = ["B01": "Iced Tea", "B02": "Mineral Water"]
    
    func printMenu(){
        let menuCount = foodList.count + bevList.count
        print("Hi! , we have \(menuCount) items on the menu for you !")
        print("-------------------------------------------")
        for (key,val) in foodList{
            print("[\(key)] \(val)")
        }
        for (key,val) in bevList{
            print("[\(key)] \(val)")
        }
    }
    
    func checkMenu(key: String) -> String{
        print(key)
        for (keyCheck,_name) in foodList{
            print("\(key), \(keyCheck)")
            if key == keyCheck {
                return _name
            }
        }
                for (keyCheck,_name) in bevList{
                    print("\(key), \(keyCheck)")
                    if key == keyCheck {
                        return _name
                    }
                }
            }
        return "0"
    }
    
    func addMenu(key: String){
        if (key == "F"){
            print("Insert the food name: ")
            let name = String(readLine()!)
            let foodCount = foodList.count+1
            foodList["F0\(foodCount)"] = name
        } else if (key == "B") {
            print("Insert the beverage name:")
            let name = String(readLine()!)
            let bevCount = bevList.count+1
            bevList["B0\(bevCount)"] = name
        }
    }
    
    func editMenu(key: String){
        var found = 0
        for (keyOld,_) in foodList{
            if key == keyOld {
                found = 1
                print("Insert the new menu name: ")
                let newName = String(readLine()!)
                foodList[key] = newName
                print("Successfully changed the menu!")
            }
        }
        for (keyOld,_) in bevList{
            if key == keyOld {
                found = 1
                print("Insert the new menu name: ")
                let newName = String(readLine()!)
                foodList[key] = newName
                print("Successfully changed the menu!")
            }
        }
            
        
        
        if found == 0 {
            print("Menu not found!")
        }
    }
}
