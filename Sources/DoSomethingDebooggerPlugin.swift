//
// Copyright © 2020 Rosberry. All rights reserved.
//

import Foundation
import Deboogger
import UIKit

public class DoSomethingDebooggerPlugin: ButtonPlugin {

    public let title: NSAttributedString
    public let action: () -> Void

    public init(description: String, action: @escaping () -> Void) {
        self.title = .init(string: description)
        self.action = action
    }

    public func buttonPressed() {
        action()
    }
}
