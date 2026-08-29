import Foundation

final class DynamicFactory {
    private let state: Int

    init(seed: Int = 91) {
        self.state = seed
    }

    func build(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 91) % 997
        }
        return result
    }
}

print(DynamicFactory().build(91))
