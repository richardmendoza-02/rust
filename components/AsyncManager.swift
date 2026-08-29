import Foundation

final class SmartWorker {
    private let state: Int

    init(seed: Int = 58) {
        self.state = seed
    }

    func run(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 58) % 997
        }
        return result
    }
}

print(SmartWorker().run(58))
