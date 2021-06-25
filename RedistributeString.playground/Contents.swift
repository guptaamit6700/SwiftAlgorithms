import UIKit

var str = "Hello, playground"

class RedistributeString {
    func makeEqual(_ words: [String]) -> Bool {
        // initialize all objects of array to zero
        var threeDoubles = [Int](repeating: 0, count: 26)
        //run the loop through 0 to words count
        for i in 0..<words.count {
            var j = 0
            // inner loop to iterate through character of each word
            for char in words[i] {
                let index = Int(Character(extendedGraphemeClusterLiteral: char).asciiValue!) - Int(Character("a").asciiValue!)
                print("Ascii value of character \(char) is \(Int(Character(extendedGraphemeClusterLiteral: char).asciiValue!))")
                //print("Index value is ========")
                //print(index)
                threeDoubles[index] = threeDoubles[index] + 1
                print("value of threeDoubles is \(threeDoubles[index])")
                j += 1
            }
        }
        for i in 0..<26 {
            //print(i)
            //print(threeDoubles[i])
            print("value is ==========")
            print(words.count)
            print(threeDoubles[i])
            if threeDoubles[i] % words.count == 0 {
                continue
            }
            else {
                return false
            }
        }
        //print(threeDoubles)
        return true
    }
}

let redistributeString = RedistributeString()
let outPut = redistributeString.makeEqual(["aabc","aaabc","aabc"])
//(outPut)
