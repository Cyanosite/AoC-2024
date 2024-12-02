import Foundation

let fileURL = URL(fileURLWithPath: "./1/input.txt")

let input = try? String(contentsOf: fileURL, encoding: .utf8)
guard let input else {
    print("Failed to read input")
    exit(1)
}

let lines = input.components(separatedBy: .newlines)

var a: [Int] = []
var b: [Int] = []

lines.forEach { 
    let split = $0.split(separator: " ")
    a.append(Int(split[0])!); b.append(Int(split[1])!)
}
a.sort()
b.sort()
var result = 0
for i in 0..<a.count {
    result += abs(a[i] - b[i])
}
print(result)