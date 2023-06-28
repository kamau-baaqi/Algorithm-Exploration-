import SwiftUI

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        let sortedNums = nums.sorted()
        var left = 0
        var right = sortedNums.count - 1
        
        while left <= right {
            let mid = (left + right) / 2
            
            if sortedNums[mid] == target {
                return mid
            }
            
            if sortedNums[mid] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        return -1
    }
}

struct ContentView: View {
    @State private var buttonPressed = false
    let binarySearchFunction = Solution()
    var nums = [-1, 0, 3, 5, 9, 12]
    
    @State private var target: Int?
    @State private var resultText: String = ""
    @State private var isSearching = false
    @State private var currentIndex = 0
    
    var body: some View {
        VStack {
            Button("Generate Target") {
                target = Int.random(in: 0...10)
                print("Generated Target: \(target!)")
                self.buttonPressed = true
            }
            if let target = target {
                Text("Generated Target: \(target)")
                    .padding()
            }
            
            
            Button("Locate Target Number") {
                guard let target = target else {
                    resultText = "Please generate a target first."
                    return
                }
                
                resultText = ""
                isSearching = true
                currentIndex = 0
                
                DispatchQueue.global(qos: .background).async {
                    let result = binarySearchFunction.search(nums, target)
                    
                    DispatchQueue.main.async {
                        isSearching = false
                        if result != -1 {
                            resultText = "Target found at index \(result)"
                        } else {
                            resultText = "Target not found"
                        }
                    }
                }
            }
            
            Text("Array: \(nums.map(String.init).joined(separator: ", "))")
                .padding()
            
            if isSearching {
                Text("Searching...")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding()
                    .animation(Animation.easeInOut(duration: 0.5).repeatForever())
            }
            
            Text(resultText)
                .padding()
        }
    }
}
