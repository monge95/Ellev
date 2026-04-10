import SwiftUI

struct InputDateTimeView: View {
    
    var inputType: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(inputType == "date" ? "Data de partida" : "Hora de chegada")
                .font(.custom("Helvetica-Regular", size: 14))
                .foregroundColor(Color.tex)
            
            ZStack {
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.inputButton)
                    .frame(height: 44)
                
                CustomDateTimePicker(inputType: inputType)
            }
            .clipped()
            .contentShape(Rectangle())
        }
    }
}

#Preview {
    InputDateTimeView(inputType: "date")
}
