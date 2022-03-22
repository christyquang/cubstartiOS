//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

class Items: Identifiable {
    
    let imageName: String
    
    let itemName: String
    
    let quantity: String
    
    init(image: String, name: String, itemQuantity: String) {
        
        self.imageName = image
        
        self.itemName = name
        
        self.quantity = itemQuantity
    }
}

struct ContentView: View {
    
    var fruits = [
        Items(image: "banana", name: "Bananas", itemQuantity: "3"),
        Items(image: "apple", name: "Apples", itemQuantity: "4"),
        Items(image: "watermelon", name: "Watermelon", itemQuantity: "1")
    ]
    
    var dairy = [
        Items(image: "eggs", name: "Eggs", itemQuantity: "12"),
        Items(image: "milk", name: "Milk", itemQuantity: "1")
    ]
    
    var meat = [
        Items(image: "chicken", name: "Chicken", itemQuantity: "1"),
        Items(image: "steak", name: "Steak", itemQuantity: "5")
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Fruit")) {
                    ForEach(fruits) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity).navigationTitle("Shopping List")
                    }
                }
                
                Section(header: Text("Dairy")) {
                    ForEach(dairy) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                
                Section(header: Text("Meat")) {
                    ForEach(meat) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
            }
        }
    }
}
