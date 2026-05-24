#if canImport(SwiftUI)
import SwiftUI

/// Komponen tombol kustom untuk UI
public struct PrimaryButton: View {
    var title: String
    var action: () -> Void
    
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    public var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .textCase(.uppercase)
                .tracking(2)
                .padding(.horizontal, 30)
                .padding(.vertical, 15)
                .foregroundColor(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.white.opacity(0.3), lineWidth: 1)
                )
        }
    }
}
#endif
