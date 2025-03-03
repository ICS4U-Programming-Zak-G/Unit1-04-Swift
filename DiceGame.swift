//
//  DiceGame.swift
//
//  Created by Zak Goneau
//  Created on 2025-03-02
//  Version 1.0
//  Copyright (c) 2025 Zak Goneau. All rights reserved.
//
//  Dice game from 1-6, loops until user guesses right

// Import library
import Foundation

// Define function to play dice game
func diceGame() {

    // Initialize variables
    var counter = 1
    var guessInt = 0

    // Generate random number from 1-6
    let RAND_NUMBER = Int.random(in: 1...6)

    // Introduce program to user
    print("This is a random dice game from 1-6 and it loops until you guess correctly.")

    // Repeat...While loop
    repeat {
        // Get user input
        print("Enter a guess (1-6): ")

        // Try to assign input as string and convert into an integer
        guard let guessString = readLine(), let userGuess = Int(guessString) else {

            // Tell user invalid input if failed conversion
            print("Invalid input. It must be a number from 1-6.")

            // Exit function
            return
        }
        
        // Assign user input to variable
        guessInt = userGuess

        // Check if number isn't within range
        if (guessInt < 1 || guessInt > 6) {

            // Tell user number is out of range
            print("\(guessInt) is not a number from 1-6.")

        // Check if number is too big
        } else if (guessInt > RAND_NUMBER) {

            // Tell user guess is too high
            print("\(guessInt) is too high.")

            // Increment counter
            counter+=1
        
        // Check if guess is too low
        } else if (guessInt < RAND_NUMBER) {
            
            // Tell user guess is too low
            print("\(guessInt) is too low.")

            // Increment counter
            counter+=1

        // Otherwise user guessed correctly
        } else {

            // Tell user they guessed correctly and how many tries it took
            print("You guessed correctly! It took \(counter) try(ies).")
        }

    // Loop until user guesses correctly
    } while (guessInt != RAND_NUMBER)
}

// Call function
diceGame()
