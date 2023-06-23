//
//  Answers.swift
//  HW2
//
//  Created by Abinaya on 2/14/23.
//

import Foundation
import SwiftUI

// INTRO TO VARIABLES
//this is a public variable, accessible everywhere, by everyone!
var meta = "This is a project made by Robert Nochez" //1. TODO: change this!


//a struct is similar to a class in Java or Python and can be used to store info about any variable
//you can initialize default values, like seen in 'className', but you can't override them
struct Animal: Identifiable {
    var id: Int
    let className: String = "Animal"
    let name: String
    var color: String
    var geography: String
    let domesticated: Bool
    let favFood: String
    let lifespan: Int
}


// 2. TODO: create 2 instances of our 'Animal' struct and specify their details
// notice: parameters have to be in the same order as they are in the struct
var geico = Animal(id: 1, name: "Lizard", color: "green", geography: "America", domesticated: true, favFood: "crickets", lifespan: 7)

var gumball = Animal(id: 2, name: "cat", color: "blue", geography: "America", domesticated: true, favFood: "tuna", lifespan: 10)


struct PracticeView: View {
    var body: some View {
        ScrollView{
            Text("\(meta)").font(.subheadline)
            
            VStack{
                //first animal
                // 3. TODO: create a Text() object that contains the name of one of your animals
                Text(geico.name)
                // Using Group to tack on attributes to specific texts
                Group {
                    Text("this animal is usually ") +
                    Text(geico.color).foregroundColor(.gray) //fix the second string to be the correct color
                }
            }
            
            //4. TODO: create another VStack with information about the second animal!
            VStack{
                Text(gumball.name)
                // Using Group to tack on attributes to specific texts
                Group {
                    Text("this animal is usually ") +
                    Text(gumball.color).foregroundColor(.gray)
                }
            }
        }
        
        
        //this code works fine, but is repetitive and verbose! is there a way we can make it neater?
        // CHALLENGE TODO: create the same ScrollView using a loop that populates the information for every instance variable in a template.
        // hint: try searching up how a ForEach works in SwiftUI!
        // hint: take a peek at PracticeAnswers.swift
        
        let animals = [geico, gumball] //5. TODO: fill this in with the names of the animals you created
        // loop through each animal and display the contents of each
        ForEach(animals) {
            animals in Text(animals.name)
        }
        
    }
    
    //answers to this section are in PracticeAnswers.swift
    // once you're done, head back to ContentView for the fun part!
}
