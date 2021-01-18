//
//  Copyright © 2018 Rosberry. All rights reserved.
//

import Deboogger
import TouchVisualizer

/// [Deboogger](https://github.com/rosberry/Deboogger) plugin that is used to visualize
/// all the touches and gestures via [TouchVisualizer](https://github.com/rosberry/TouchVisualizer)

public final class FingertipsDebooggerPlugin: SwitchPlugin {

    private var isFingertipsEnabled: Bool {
        get {
            //Override to return value from the storage (for example UserDefaults)
            return Deboogger.storage[defaults: #function] as? Bool ?? false
        }
        set {
            //Override to update value in storage
            Deboogger.storage[defaults: #function] = newValue
        }
    }

    // MARK: - SwitchPlugin

    public let title: NSAttributedString = .init(string: "Fingertips enabled")

    public init() {
        updateVisualizer()
    }

    public var isOn: Bool {
        return isFingertipsEnabled
    }

    public func switchStateChanged(_ sender: UISwitch) {
        isFingertipsEnabled = sender.isOn
        updateVisualizer()
    }

    private func updateVisualizer() {
        isFingertipsEnabled ? Visualizer.start() : Visualizer.stop()
    }
}
