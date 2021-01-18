//
// Copyright © 2020 Rosberry. All rights reserved.
//

import Foundation

public protocol HasDefaultValue {
    static var defaultValue: Self { get }
}

extension String: HasDefaultValue {
    public static let defaultValue: String = ""
}

extension Array: HasDefaultValue {
    public static var defaultValue: Array<Element> {
        []
    }
}
