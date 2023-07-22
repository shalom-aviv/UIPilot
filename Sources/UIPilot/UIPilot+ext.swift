import SwiftUI

public extension UIPilot {
    
    func popToFirst(animated: Bool = false) {
        if let first = self.routes.first {
            popTo(first, inclusive: false, animated: animated)
        }
    }
    
    func reset(to route: T) {
        erase()
        push(route, animated: false)
    }
    
    func reset(to routes: [T]) {
        erase()
        routes.forEach { push($0, animated: false) }
    }
    
}

fileprivate extension UIPilot {
    
    func erase() {
        if let first = self.routes.first {
            popTo(first, inclusive: true, animated: false)
        }
    }
    
}
