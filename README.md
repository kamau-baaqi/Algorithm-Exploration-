# Binary Search

## Project Description
This GitHub repository serves as a practice project for learning and improving programming skills through the implementation of the binary search algorithm using the SwiftUI framework. The code efficiently searches for a target number within a sorted array of integers.

## Features
- **Binary Search Implementation:** The `Solution` class provides a `search` method that implements the binary search algorithm on a given array of integers (`nums`) to find a target number (`target`). The method returns the index of the target if found, or -1 if not found.

- **SwiftUI User Interface:** The `ContentView` struct represents the user interface of the application. It includes buttons to generate a random target number and initiate the search process. The UI displays the generated target number, the array being searched, a "Searching..." indicator during the search, and the search result.

- **Asynchronous Searching:** The search process is performed asynchronously using Grand Central Dispatch (GCD). This ensures a responsive user interface during the search operation. The search result is updated on the main queue to reflect the final outcome.

## Usage
1. Click the "Generate Target" button to generate a random target number between 0 and 10. The generated target will be displayed.

2. Click the "Locate Target Number" button to initiate the search process. If a target number is not generated, an appropriate message will be displayed. Once the search is completed, the result will be shown on the screen.

Feel free to explore the code, modify it for your own learning purposes, or contribute to the project to further improve the implementation of the binary search algorithm in Swift. This project is intended as a practice project to enhance programming skills and understanding of binary search algorithm concepts.
