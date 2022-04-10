//
//  orderCart.swift
//  AFL 2 Mahadi Rafi Winata
//
//  Created by SIFT - Telkom DBT Air 4 on 10/04/22.
//

import Foundation

public class orderCart: Cart{
    var shopCart = [String]()
    
    func printMenu() {
        if (shopCart.isEmpty){
          print("Your shopping cart is empty. Please use menu '1' to order something!")
          print("")
          print("")
        } else {
          print("")
          print("")
          print("Shopping Cart (\(shopCart.count) items):")
            for element in shopCart{
                print("\(element)")
            }
          print("")
          print("")
        }
    }
    
    func addMenu(key: String) {

        if key == "0"{
            print("Code not match with any food or beverage!")
        } else {
            print("How many \(key) you want to buy? ")
            let quantity = Int(readLine(strippingNewline: true)!)!
            shopCart.append("\(quantity) \(key)")
            print("\(quantity) \(key) added to your cart")
        }
        
    }
    
    
}
