import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            IconRight(imageName: "circle.grid.cross.fill", angle: 45)
                .padding()
            VStack(alignment: .leading, spacing: 20) {
                WelcomeMessageView(userName: "Emily")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()

            Spacer()
        }
    }
}

#Preview {
    DashboardView()
}
