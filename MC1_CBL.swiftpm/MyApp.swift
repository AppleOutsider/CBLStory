import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            lineTextView(lineModels: DataModels())
        }
    }
}
