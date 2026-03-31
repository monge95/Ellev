

import SwiftUI

extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}


let InputButtonColor = Color(hex: 0xD4DCE3)




struct WelcomePage: View {
    var body: some View {

        ZStack{
            Color("FundodeTelasColor")
            .edgesIgnoringSafeArea(.all)
            VStack{
                
                VStack{
                    
                    Image("logoPrincipal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 227, height: 133)
                    
                    
                }
                
                .padding(.top, 135)
                
                Text("Bem vindo Ellev")
                    .font(.custom("helveticaNeue", size: 24))
                  
                    .padding(.top, 94)
                    .foregroundStyle(Color("TexColor"))
                
                Text("No Ellev você faz sua viagem de forma mais segura, prática e confortável")
                    .font(.custom("helveticaNeue", size: 15))
                    .foregroundColor(Color("TexColor"))
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.horizontal, 54)
                    .padding(.top, 20)
                
                Spacer()
                
                
                Button(action: {}) {
                    Text("Viaje com a gente")
                        .font(Font.custom("helveticaNeue-regular", size: 24))
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                        .background(Color("ButtonColor"))
                        .foregroundColor(Color("FundodeTelasColor"))
                        .cornerRadius(50)
                    
                    
                    
                }
                .padding(.top, 270)
                .padding(.horizontal, 54)
                .padding(.bottom, 54)
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}
#Preview {

    WelcomePage()
}
