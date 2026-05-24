#if canImport(SwiftUI)
import SwiftUI

/// Tampilan utama untuk Website/Aplikasi F1 Pembalap
public struct F1DriverView: View {
    // Data model pembalap
    let driver: F1Driver
    
    // Warna sesuai desain web
    let bgColor = Color(red: 0.02, green: 0.02, blue: 0.02)
    let accentColor = Color(red: 0.0, green: 0.63, blue: 0.61) // Petronas Teal
    
    public init(driver: F1Driver) {
        self.driver = driver
    }
    
    public var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // Header / Navbar
                HStack {
                    Text("F1")
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                    + Text("PRO")
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundColor(accentColor)
                    
                    Spacer()
                }
                .padding()
                .background(Color.black.opacity(0.8))
                
                // Hero Section
                VStack(alignment: .leading, spacing: 16) {
                    Text("\(driver.championships)-Time World Champion")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(accentColor)
                        .textCase(.uppercase)
                        .tracking(3)
                    
                    // Memecah nama menjadi dua baris agar terlihat lebih besar (seperti di web)
                    let names = driver.name.split(separator: " ").map { String($0) }
                    Text("\(names.first ?? "")\n\(names.last ?? "")")
                        .font(.system(size: 50, weight: .heavy))
                        .foregroundColor(.white)
                        .lineSpacing(0)
                        .textCase(.uppercase)
                    
                    Text("Experience the legacy of one of the greatest drivers in Formula 1 history. Pure speed, precision, and relentless determination.")
                        .font(.body)
                        .foregroundColor(.gray)
                        .padding(.bottom, 10)
                    
                    // Tombol dipisah menggunakan komponen PrimaryButton
                    PrimaryButton(title: "Discover More") {
                        print("Tombol \(driver.name) ditekan!")
                    }
                    
                    // Placeholder untuk gambar mobil F1
                    Image(systemName: "car.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.gray.opacity(0.3))
                        .frame(height: 150)
                        .padding(.top, 40)
                }
                .padding(30)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                // Stats Section
                VStack(spacing: 20) {
                    StatCardView(value: "\(driver.championships)", label: "World Championships", accentColor: accentColor)
                    StatCardView(value: "\(driver.wins)+", label: "Grand Prix Wins", accentColor: accentColor)
                    StatCardView(value: "\(driver.podiums)+", label: "Podiums", accentColor: accentColor)
                    StatCardView(value: "\(driver.polePositions)+", label: "Pole Positions", accentColor: accentColor)
                }
                .padding(30)
                .background(
                    LinearGradient(gradient: Gradient(colors: [bgColor, Color.black]), startPoint: .top, endPoint: .bottom)
                )
                
                // About Section
                VStack(alignment: .leading, spacing: 20) {
                    Text("THE LEGEND")
                        .font(.system(size: 35, weight: .heavy))
                        .foregroundColor(.white)
                        .overlay(
                            Rectangle()
                                .fill(accentColor)
                                .frame(height: 4)
                                .offset(y: 5),
                            alignment: .bottomLeading
                        )
                    
                    Text(driver.description)
                        .foregroundColor(.gray)
                        .lineSpacing(5)
                }
                .padding(30)
                .background(Color.black)
                
                // Footer
                Text("© 2026 F1PRO Showcase. Created for demonstration purposes.")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
            }
        }
        .background(bgColor.edgesIgnoringSafeArea(.all))
    }
}

#if os(macOS) || os(iOS)
struct F1DriverView_Previews: PreviewProvider {
    static var previews: some View {
        let dummyDriver = F1Driver(
            name: "Lewis Hamilton",
            team: "Mercedes",
            championships: 7,
            wins: 103,
            podiums: 197,
            polePositions: 104,
            description: "Sir Lewis Hamilton is a British racing driver currently competing in Formula One. Known for his aggressive yet precise driving style, he has redefined the sport over the last decade."
        )
        F1DriverView(driver: dummyDriver)
    }
}
#endif
#endif
