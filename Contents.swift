//: Playground - noun: a place where people can play

 /* My Own Wine Cellar Inventory App
    Created by Steve D'Amico
    Fall of 2015
    ++++ Copyright 2015 ++++ */

import UIKit
    
    class WineList {
        
        // Variable declarations
        var type = ""
        var vendor = ""
        var description = ""
        var size = ""
        var quantity = 0
        var location = ""

        // Initialize class instance
        init(){}
        init(type: String, vendor: String, description: String, size: String, quantity: Int, location: String) {
            self.type = type
            self.vendor = vendor
            self.description = description
            self.size = size
            self.quantity = quantity
            self.location = location
        }
    }
    // Build class array containing wine elements
    var endSelection = false
    var ourCellar = [WineList]()
    
    ourCellar.append(WineList(type: "Merlot", vendor: "Arbor Mist", description: "Merry Berry", size: "750 ml", quantity: 11, location: "01 abcd"))
    ourCellar.append(WineList(type: "Muscat", vendor: "Simon Creek", description: "Golden", size: "750 ml", quantity: 2, location: "Box #3"))
    ourCellar.append(WineList(type: "Port", vendor: "Simon Creek", description: "Jackson", size: "750 ml", quantity: 4, location: "Box #4"))
    ourCellar.append(WineList(type: "Port", vendor: "Valentino", description: "Fortified Wine", size: "750 ml", quantity: 2, location: "Box #4"))
    ourCellar.append(WineList(type: "Red", vendor: "Simon Creek", description: "Speakeasy", size: "750 ml", quantity: 2, location: "08 cd"))
    ourCellar.append(WineList(type: "Red", vendor: "Gallena Cellars", description: "Country", size: "750 ml", quantity: 1, location:"08 a"))
    ourCellar.append(WineList(type: "Red", vendor: "Simon Creek", description: "Untouchable", size: "750 ml", quantity: 1, location: "08 b"))
    ourCellar.append(WineList(type: "Riesling", vendor: "Galena Cellars", description: "Daffodil", size: "750 ml", quantity: 1, location: "15 b"))
    ourCellar.append(WineList(type: "Riesling", vendor: "Galena Cellars", description: "Late Harvest", size: "750 ml", quantity: 2, location: "13 cd"))
    ourCellar.append(WineList(type: "Riesling", vendor: "Cedar Creek", description: "Waterfall", size: "750 ml", quantity: 3, location: "12 bcd"))
    ourCellar.append(WineList(type: "Rose", vendor: "Galena Cellars", description: "Country", size: "750 ml", quantity: 1, location: "10 a"))
    ourCellar.append(WineList(type: "White", vendor: "Galena Cellars", description: "Octoberfest", size: "750 ml", quantity: 1, location: "15 a"))
    ourCellar.append(WineList(type: "White", vendor: "Door Penisula", description: "Christmas", size: "750 ml", quantity: 2, location: "Box #1"))
    ourCellar.append(WineList(type: "Zinfandel", vendor: "Beringer", description: "White", size: "750 ml", quantity: 2, location: "Box #1"))

    // Get size of aray containing wine objects
    var arraySize = ourCellar.count

    // Create an array of types (types can be repeated)
    var typeArray: [String] = [String]()

    // Function responding to query of another choice
    func queryChoice() -> Bool {        println("Do you wish to try another selection?")        println("Type y for yes, n for no.")        println()

        /* -----------------------------------------------------------------
          |  Simulate User Input by modifying value of anotherChoice below  |
           ----------------------------------------------------------------- */
        var anotherChoice = "n"

        println("You selected \(anotherChoice)")
        println()

        // User not interested in any additional choices, end program
        if (anotherChoice == "n") {
            println("Good Bye.")
            endSelection = true
    
        } else {
    
            // User interested in trying another selection
            if (anotherChoice == "y") {
                println("Let's begin.")

            // Continue and repeat wine type query and respective selections
            }
        }
        return endSelection
    }

    for var j = 0; j < arraySize; ++j {
        typeArray.append(ourCellar[j].type)
    }

    // Sort typeArray usng member of Array Sort
    typeArray.sort(<)

    // Declare anotherChoice variable
    var anotherChoice = "y"

    // Entry point for repeat in while loop
    while (endSelection == false) {

        // Print list of Wine Types less duplicates
        println("This is a list of the available wine types:")
        for var i = 0; i < arraySize; ++i {
            if (i == 0) {
                println("\(i + 1) -> \(typeArray[i])")
            } else {
                if (typeArray[i] != typeArray[i - 1]) {
                    println("\(i + 1) -> \(typeArray[i])")
                }
            }
        }

        // Make a selection
        println()
        println("Please enter the number of the wine type here:")

/*       -------------------------------------------------------------
        |  Simulate User Input by modifying value of userInput below  |
         -------------------------------------------------------------
*/
        var userInput: Int = 5
        println(userInput)
        println()
        println("You selected \(typeArray[userInput - 1]) wine.")
        println()

        // Print list of all wines of the type  inputted
        println("Here are the wines you have selected:")
        println()

        // Create an array of wine choice indices
        var choiceArray: [Int] = [Int]()

        for var k = 0; k < arraySize; ++k {
            if (typeArray[k] == typeArray[userInput - 1]) {
                println("\(k + 1) -> a \(ourCellar[k].type) by \(ourCellar[k].vendor) which is a \(ourCellar[k].description) in a \(ourCellar[k].size) bottle with \(ourCellar[k].quantity) on hand and located at \(ourCellar[k].location)")
                choiceArray.append(k)
                println()
            }
        }

        // User requested to make a choice
        println("Are you interested in any of these?")
        println("If no, please enter 0, otherwise enter the number of your wine here: ")

    /* --------------------------------------------------------------
      |  Simulate User Input by modifying value of userChoice below  |
       --------------------------------------------------------------
    */

        var userChoice: Int = 6

        println()
        println("You selected \(userChoice)")
        println()

        // When 0 entered, user not interesterd in selection
        if (userChoice >= 1) {

            // Create variable for selection printout
            var choiceSelection = "\(ourCellar[userChoice - 1].type) by \(ourCellar[userChoice - 1].vendor) which is a \(ourCellar[userChoice - 1].description) in a \(ourCellar[userChoice - 1].size) bottle with \(ourCellar[userChoice - 1].quantity) on hand and located at \(ourCellar[userChoice - 1].location)"
            
            // Print user's selection
            println(choiceSelection)
            println()

            // Confirm selection
            println("Do you wish to keep this selection?")
            println("Type y for yes, n for no.")

        /*   -------------------------------------
            |  Simulate User confirmation choice  |
             -------------------------------------
        */
            var confirmationChoice = "y"

            // Print confirmation
            println(confirmationChoice)
            println()

            // Check for user's choice
            if (confirmationChoice == "y") {
                    
                // Check to see if quantity is zero
                if ourCellar[userChoice - 1].quantity == 0 {
                    println("This selection quantity is currenyly at 0.")
                    println()
                } else {

                    --ourCellar[userChoice - 1].quantity
                    println("The inventory has been updated.")
                    println("Updated qunatity is: \(ourCellar[userChoice - 1].quantity)")
                    println()
                }
            }
        }
        // Query if user wishes to make another choice using query function
        queryChoice()
    }











