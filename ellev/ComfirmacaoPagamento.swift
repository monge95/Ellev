//
//  ComfirmacaoPagamento.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 15/04/26.
//

import SwiftUI

struct ComfirmacaoPagamento: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.fundodeTelas)
                    .ignoresSafeArea(.all)
                VStack{
                    Spacer()
            Image(systemName: "checkmark")
                .font(.system(size: 150, weight: .bold))
                .foregroundStyle(Color.button)
            Text("Pagamento Confirmado")
                .font(Font.custom("jost"    , size: 24))
            
                    Spacer()
        NavigationLink{
                RegrasEmbarque()
        }label: {
            Text("Regras de Embarque")
                .font(Font.custom("helveticaNeue-regular", size: 20))
                .frame(maxWidth: .infinity, minHeight: 44)
                .background(Color("ButtonColor"))
                .foregroundColor(Color("FundodeTelasColor"))
                .cornerRadius(50)
        }
                }.padding(.horizontal,54)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ComfirmacaoPagamento()
}
