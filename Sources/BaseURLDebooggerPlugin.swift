//
// Copyright © 2020 Rosberry. All rights reserved.
//

import Foundation
import Deboogger
import UIKit

public final class BaseURLDebooggerPlugin: SwitchPlugin {

    public let title: NSAttributedString = .init(string: "Return error for all server requests")

    public var isOn: Bool {
        return Deboogger.storage[defaults: DebooggerConstants.baseURLShouldBeChanged] as? Bool ?? false
    }

    private let switchHandler: ((Bool) -> Void)?

    init(switchHandler: ((Bool) -> Void)? = nil) {
        self.switchHandler = switchHandler
    }

    public func switchStateChanged(_ sender: UISwitch) {
        Deboogger.storage[defaults: DebooggerConstants.baseURLShouldBeChanged] = sender.isOn
        switchHandler?(sender.isOn)
    }
}
