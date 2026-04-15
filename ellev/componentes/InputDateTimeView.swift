import SwiftUI

struct InputDateTimeView: View {
    
    var inputType: String
    
    @Binding var selectedDate: Date
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(inputType == "date" ? "Data de partida" : "Hora de chegada")
                .font(.custom("Helvetica-Regular", size: 14))
                .foregroundColor(Color.tex)
            
            ZStack {
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.inputButton)
                    .frame(height: 44)
                
                CustomDateTimePicker(inputType: inputType, selectedDate: $selectedDate)
            }
            .clipped()
            .contentShape(Rectangle())
        }
    }
}

//#Preview {
//    InputDateTimeView(inputType: "date")
//}
