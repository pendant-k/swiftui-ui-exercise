import SwiftUI

struct DataSummaryView: View {
    // get from params
    let arrow: String
    let calories: String

    // hardcoded attrs
    let delta = 10.0
    let percent1 = 0.6
    let percent2 = 0.4

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    DataSummaryView(arrow: "arrow.down", calories: "4.569")
}
