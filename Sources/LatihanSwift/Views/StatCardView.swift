#if canImport(SwiftUI)
import SwiftUI

/// Komponen untuk Kartu Statistik
public struct StatCardView: View {
    public var value: String
    public var label: String
    public var accentColor: Color
    
    public init(value: String, label: String, accentColor: Color) {
        self.value = value
        self.label = label
        self.accentColor = accentColor
    }
    
    public var body: some View {
        VStack(spacing: 10) {
            Text(value)
                .font(.system(size: 45, weight: .heavy))
                .foregroundColor(accentColor)
            
            Text(label.uppercased())
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
                .tracking(2)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 30)
        .background(Color.white.opacity(0.05))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white.opacity(0.1), lineWidth: 1)
        )
    }
}
#endif
