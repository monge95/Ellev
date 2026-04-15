import SwiftUI

struct CustomDateTimePicker: View {
    
    var inputType: String
    
    @Binding var selectedDate: Date
    
    @State private var inputIsSelected = false
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter
    }
    
    var body: some View {
        
        HStack {
            if inputIsSelected {
                if inputType == "date" {
                    Text(dateFormatter.string(from: selectedDate))
                        .foregroundStyle(.tex)
                        .font(.custom("Helvetica-Regular", size: 12))
                } else {
                    Text(selectedDate.formatted(date: .omitted, time: .shortened))
                        .foregroundStyle(.tex)
                        .font(.custom("Helvetica-Regular", size: 12))
                }
            } else {
                Text(inputType == "date" ? "Ex: 25/07/2008" : "Ex: 08:15")
                    .foregroundStyle(.inputTexButton)
                    .font(.custom("Helvetica-Regular", size: 12))
            }
            
            Spacer()
            
            Image(systemName: inputType == "date" ? "calendar" : "clock")
                .foregroundStyle(.tex)
                .font(.system(size: 20))
        }
        .padding(.horizontal, 12)
        .allowsHitTesting(false)
        
        DatePicker(
            "",
            selection: Binding(
                get: {selectedDate},
                set: {
                    newValue in
                    selectedDate = newValue
                    inputIsSelected = true
                }
            ),
            displayedComponents: inputType == "date" ? .date : .hourAndMinute
        )
        .labelsHidden()
        .environment(\.locale, Locale(identifier: "pt_BR"))
        .colorMultiply(.clear)
        .scaleEffect(x: 10, y:5)
    }
}

//#Preview {
//    CustomDateTimePicker(inputType: "time")
//}
