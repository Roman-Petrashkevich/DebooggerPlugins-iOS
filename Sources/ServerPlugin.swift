//
// Copyright (c) 2018 Rosberry. All rights reserved.
//

import Foundation
import Deboogger
import Base
import UIKit

public extension NSNotification.Name {
    static let serverChanged: NSNotification.Name = .init(rawValue: "server_changed")
}

public final class ServerPlugin: SegmentPlugin {

    public let title: NSAttributedString = .init(string: "Server")
    public var serverNames: [ServerName] = ServerName.allCases
    public var items: [String] {
        serverNames.map(by: \.rawValue)
    }

    public var initialSelectedIndex: Int {
        if let serverName = UserDefaults.standard.serverName?.rawValue,
           let index = items.firstIndex(of: serverName) {
            return index
        }
        return 0
    }

    public init() {}

    public func segmentValueChanged(_ sender: UISegmentedControl) {
        UserDefaults.standard.serverName = serverNames[sender.selectedSegmentIndex]
        NotificationCenter.default.post(.init(name: .serverChanged))
        Deboogger.shared.close()
    }
}
