

import SwiftUI


struct WelcomePage: View {
    var body: some View {
        
        VStack{
            VStack{
                Image("Prancheta 1 copy 2")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 500 )
                    .padding(.top, 162)
            }
            
            Text("Bem vindo Ellev")
                .font(.custom("helveticaNeue-Bold", size: 24))
                .border(.black, width: 1.5)
                .padding(.top, 108)
	
            Text("Seja bem-vindo(a) ao Ellev, aqui você faz sua viagem de forma mais segura, prática e confortável")
                .font(.custom("helveticaNeue", size: 15))
                .frame(maxWidth: 297, alignment: .center)
                .padding(.top, 20)
                .border(.black, width: 1.5)
            Spacer()
        }
        .padding(.horizontal, 54)
        .border(Color.black, width: 1.5)
        
        
        
    }
}


#Preview {
    WelcomePage()
}
