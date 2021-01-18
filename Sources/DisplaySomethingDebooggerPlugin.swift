//
// Copyright © 2020 Rosberry. All rights reserved.
//

import Foundation
import UIKit
import Deboogger

public final class DisplaySomethingDebooggerPlugin: ButtonPlugin {

    let observer: () -> CustomStringConvertible?
    public var title: NSAttributedString {
        .init(string: observer()?.description ?? "nil")
    }

    public init(observer: @escaping () -> CustomStringConvertible?) {
        self.observer = observer
    }

    public convenience init<Root: AnyObject, Value: CustomStringConvertible>(root: Root, keyPath: KeyPath<Root, Value>) {
        self.init{ [weak root] in
            root?[keyPath: keyPath]
        }
    }

    public convenience init<Root: AnyObject, Value: CustomStringConvertible>(root: Root, keyPath: KeyPath<Root, Value?>) {
        self.init{ [weak root] in
            root?[keyPath: keyPath]
        }
    }

    public func buttonPressed() {
        UIPasteboard.general.string = title.string
    }
}
