//
//  main.swift
//  AFL 2 Mahadi Rafi Winata
//
//  Created by SIFT - Telkom DBT Air 4 on 22/03/22.
//

import Foundation

var readMenu:String? = ""
var readOrder = ""
var itemCount = 0
let adminPass = "Admin123!@"
var repeatAdd = false
var menu = fnbMenu()
var cart = orderCart()

while(readMenu != "x" && readMenu != "X"){
//    menu = fnbMenu()
    print("====================")
    print("Point Of Sales (PoS)")
    print("====================")
    print("")
    print("Options:")
    print("[1] Buy Food")
    print("[2] Shopping Cart")
    print("[3] Admin Panel")
    print("[x] Exit")
    print("")
    print("Your Choice ? ")
    readMenu = String(readLine()!).uppercased()

    switch readMenu{
    case "1":
        while(readOrder != "Q" && readOrder != "q"){
            menu.printMenu()
            print("[Q] Back to Main Menu")
            print("")
            print("Your F&B choice? ")
            readOrder = String(readLine()!).uppercased()
            if readOrder == "Q"{
                print("")
                print("")
                print("")
            } else {
                cart.addMenu(key: readOrder)
                cart.printMenu()
            }
        }
    case "2":
        cart.printMenu()
    case "3":
        print("Please enter the admin password: ")
        let checkPass = String(readLine()!)
        repeatAdd = true
        while(repeatAdd == true){
            if (checkPass == adminPass){
                print("")
                print("     Admin Panel     ")
                print("=====================")
                print("Options: ")
                print("[1] Edit Menu")
                print("[2] Add Menu")
                print("[x] Back")
                let adminMenu = String(readLine()!).uppercased()
                if adminMenu == "1"{
                    menu.printMenu()
                    print("Insert the food or beverage code you want to edit (F01/B01): ")
                    let editKey = String(readLine()!).uppercased()
                    menu.editMenu(key: editKey)
                    menu.printMenu()
                } else if adminMenu == "2"{
                    menu.printMenu()
                    print("Choose what you want to add!")
                    print("(F (food) | B (beverage)):")
                    let key = String(readLine()!).uppercased()
                    menu.addMenu(key: key)
                    menu.printMenu()
                } else if adminMenu == "X"{
                    repeatAdd = false
                    break
                }
            } else {
                print("Wrong Password !")
                repeatAdd = false
                break
            }
        }
    case "X":
            print("Thankyou, your order will be out soon!")
    default:
            print("Error, no such input is recognized")
            print("Back to the main menu")
    }

}
