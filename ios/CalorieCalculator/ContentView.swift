import SwiftUI

struct ContentView: View {
    @State private var weight: String = ""
    @State private var height: String = ""
    @State private var age: String = ""
    @State private var sex: String = "male"
    @State private var activityIndex: Int = 0
    @State private var calories: String = ""

    let sexes = ["male", "female"]
    let activities = ["sedentary", "light", "moderate", "active", "very_active"]
    let activityFactors: [String: Double] = [
        "sedentary": 1.2,
        "light": 1.375,
        "moderate": 1.55,
        "active": 1.725,
        "very_active": 1.9
    ]

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("Weight (kg)", text: $weight)
                        .keyboardType(.decimalPad)
                    TextField("Height (cm)", text: $height)
                        .keyboardType(.decimalPad)
                    TextField("Age", text: $age)
                        .keyboardType(.numberPad)
                    Picker("Sex", selection: $sex) {
                        ForEach(sexes, id: \.self) { Text($0.capitalized) }
                    }
                }

                Section(header: Text("Activity Level")) {
                    Picker("Activity", selection: $activityIndex) {
                        ForEach(0..<activities.count, id: \.self) { index in
                            Text(activities[index].replacingOccurrences(of: "_", with: " ").capitalized)
                        }
                    }
                }

                Button("Calculate") {
                    calculate()
                }

                if !calories.isEmpty {
                    Section {
                        Text("Estimated daily calories: \(calories)")
                    }
                }
            }
            .navigationBarTitle("Calorie Calculator")
        }
    }

    func calculate() {
        guard let w = Double(weight),
              let h = Double(height),
              let a = Int(age) else {
            calories = "Invalid input"
            return
        }

        var bmr: Double
        if sex.lowercased() == "male" {
            bmr = 10 * w + 6.25 * h - 5 * Double(a) + 5
        } else {
            bmr = 10 * w + 6.25 * h - 5 * Double(a) - 161
        }
        let activity = activities[activityIndex]
        if let factor = activityFactors[activity] {
            calories = String(format: "%.2f", bmr * factor)
        } else {
            calories = ""
        }
    }
}

