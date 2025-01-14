// CGFloat on 64-bit => Double
// CGFloat on 32-bit => Float

// MARK: GeometryReader => Get view's size?

import SwiftUI

struct FillBarView: View {
    let barWidth: CGFloat
    let colorBG: Color
    let colorFill: Color
    let percentage: CGFloat

    var body: some View {
        GeometryReader { geometry in
//            percentage start at leading
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(colorBG.opacity(0.7))
                    .frame(width: .infinity, height: barWidth)
                RoundedRectangle(cornerRadius: 10)
                    .fill(lightGreen)
                    .frame(width: geometry.size.width * percentage, height: barWidth)
            }
        }
        .frame(width: .infinity, height: barWidth)
    }
}

#Preview {
    FillBarView(barWidth: 7, colorBG: .black, colorFill: lightGreen, percentage: 0.3)
}
