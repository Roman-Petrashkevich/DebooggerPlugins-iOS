//
//  Copyright © 2018 Rosberry. All rights reserved.
//

import Deboogger
import Foundation
import UIKit

/// [Deboogger](https://github.com/Rosberry/Deboogger) plugin that is used to copy
/// device token to clipboard

public final class DeviceTokenDebooggerPlugin: ButtonPlugin {

    private var deviceToken: String? {
        #warning("Override to return value from the storage")
        return nil
    }

    // MARK: - ButtonPlugin

    public var title: NSAttributedString {
        guard let deviceToken = deviceToken else {
            return NSAttributedString(string: "No device token")
        }
        return NSAttributedString(string: "Copy to clipboard device token:\n\(deviceToken)")
    }

    public init() {}

    public func buttonPressed() {
        guard let deviceToken = deviceToken else {
            return
        }
        UIPasteboard.general.string = deviceToken
    }
}
