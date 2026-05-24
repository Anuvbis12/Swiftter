import Foundation

print("========================================")
print("     SISTEM TUNGGAL (MAIN.SWIFT) AKTIF")
print("========================================")

// --- BAGIAN 1: STRUKTUR DATA (Semua digabungkan di sini) ---
public struct YearlyStat: Codable {
    public var year: Int
    public var points: Int
}

public struct F1Driver: Codable {
    public var id: String
    public var name: String
    public var team: String
    public var teamColor: String
    public var championships: Int
    public var wins: Int
    public var podiums: Int
    public var polePositions: Int
    public var description: String
    public var imageFile: String
    public var yearlyStats: [YearlyStat]
}

// --- BAGIAN 2: DATABASE PEMBALAP ---
let drivers: [F1Driver] = [
    F1Driver(
        id: "hamilton", name: "Lewis Hamilton", team: "Mercedes", teamColor: "#00A19B",
        championships: 7, wins: 103, podiums: 197, polePositions: 104,
        description: "Sir Lewis Hamilton is a British racing driver currently competing in Formula One.",
        imageFile: "assets/driver.png",
        yearlyStats: [YearlyStat(year: 2018, points: 408), YearlyStat(year: 2019, points: 413), YearlyStat(year: 2020, points: 347)]
    ),
    F1Driver(
        id: "verstappen", name: "Max Verstappen", team: "Red Bull Racing", teamColor: "#0600EF",
        championships: 3, wins: 54, podiums: 98, polePositions: 32,
        description: "Max Verstappen is a Dutch racing driver known for his raw pace and aggressive defense.",
        imageFile: "assets/verstappen.png",
        yearlyStats: [YearlyStat(year: 2018, points: 249), YearlyStat(year: 2019, points: 278), YearlyStat(year: 2020, points: 214)]
    ),
    F1Driver(
        id: "leclerc", name: "Charles Leclerc", team: "Scuderia Ferrari", teamColor: "#FF2800",
        championships: 0, wins: 5, podiums: 30, polePositions: 23,
        description: "Charles Leclerc is a Monégasque racing driver, currently driving for Ferrari.",
        imageFile: "assets/leclerc.png",
        yearlyStats: [YearlyStat(year: 2018, points: 39), YearlyStat(year: 2019, points: 264), YearlyStat(year: 2020, points: 98)]
    )
]

// --- BAGIAN 3: MESIN PELUNCUR APLIKASI ---
print("Menghubungkan sistem ke antarmuka visual...")

// Tulis Database ke JS
let encoder = JSONEncoder()
encoder.outputFormatting = .prettyPrinted
do {
    let jsonData = try encoder.encode(drivers)
    let jsonString = String(data: jsonData, encoding: .utf8)!
    let jsContent = "const driversData = \(jsonString);"
    
    let jsPath = "C:\\Users\\USER\\IdeaProjects\\LatihanSwift\\f1-website\\data.js"
    try jsContent.write(to: URL(fileURLWithPath: jsPath), atomically: true, encoding: String.Encoding.utf8)
} catch {
    print("Gagal menulis data: \(error)")
}

// Buka UI
let htmlPath = "C:\\Users\\USER\\IdeaProjects\\LatihanSwift\\f1-website\\index.html"
let fileUrl = "file:///\(htmlPath.replacingOccurrences(of: "\\", with: "/"))"

let process = Process()
process.executableURL = URL(fileURLWithPath: "C:\\Windows\\System32\\cmd.exe")
process.arguments = ["/c", "start", "msedge", "--app=\(fileUrl)"]

do {
    try process.run()
    print("Semua eksekusi berhasil dijalankan secara tunggal dari main.swift!")
} catch {
    print("Gagal memuat UI: \(error)")
}
