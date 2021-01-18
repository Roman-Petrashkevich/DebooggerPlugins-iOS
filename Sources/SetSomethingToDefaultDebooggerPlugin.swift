//
// Copyright © 2020 Rosberry. All rights reserved.
//

import Foundation
import Deboogger
import UIKit

public final class SetSomethingToDefaultDebooggerPlugin: DoSomethingDebooggerPlugin {

    public convenience init<Root: AnyObject, Value: HasDefaultValue>(description: String,
                                                                     root: Root,
                                                                     keyPath: ReferenceWritableKeyPath<Root, Value>) {
        self.init(description: description) { [weak root] in
            guard let root = root else {
                return
            }
            root[keyPath: keyPath] = Value.defaultValue
        }
    }

    public convenience init<Root: AnyObject, Value: HasDefaultValue>(description: String,
                                                                     root: Root,
                                                                     keyPath: ReferenceWritableKeyPath<Root, Value?>) {
        self.init(description: description) { [weak root] in
            guard let root = root else {
                return
            }
            root[keyPath: keyPath] = Value.defaultValue
        }
    }
}
