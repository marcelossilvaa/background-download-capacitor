import Foundation

@objc public class BackgroundDownload: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
