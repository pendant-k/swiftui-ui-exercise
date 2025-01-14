import SwiftUI

// MARK: using fill() modifier vs using background()

enum WeightUnits: String {
    case lb
    case kg
}

struct WeightView: View {
    let weight: Float
    let weightUnits: WeightUnits
    var body: some View {
        HStack(spacing: 50) {
            VStack {
                HStack {
                    Text("\(weight, specifier: "%.2f")")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text(weightUnits.rawValue)
                        .font(.caption)
                        .fontWeight(.semibold)
                }
                .padding(.bottom, 4.5)

                Text("Current Weight")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .fontWeight(.medium)
            }

            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text("2.5")
                        .font(.title)
                    Text(weightUnits.rawValue)
                        .font(.caption)
                        .fontWeight(.semibold)
                }

                FillBarView(barWidth: 7, colorBG: .black, colorFill: lightGreen, percentage: 0.3)

                Text("Left to Gain")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .fontWeight(.medium)
            }
        }
    }
}

#Preview {
    WeightView(weight: 61.5, weightUnits: .lb)
}
