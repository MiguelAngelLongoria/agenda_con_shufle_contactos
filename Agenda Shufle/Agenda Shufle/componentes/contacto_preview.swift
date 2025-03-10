//
//  contacto_prevista.swift
//  Agenda Shufle
//
//  Created by Jadzia Gallegos on 26/02/25.
//

import SwiftUI


let contato_prueba = ContactoAgenda(nombre: "Juaftyukftyuks", telefono: "12345")

struct ContactoPrevista: View {
    var contacto_a_mostar: ContactoAgenda
    var al_pulsar: () -> Void = { print("No se ha implementado") }
    
    let esquinas_redondeadas = CGSize(width: 25, height: 25)
    
    var body: some View {
        HStack(alignment: VerticalAlignment.center, spacing: 10){
            Spacer()
            
            VStack {
                Image(contacto_a_mostar.imagen)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 75, alignment: .center)
                    .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
                    .background(Color.blue)
                    
            }.background(Color.white)
            
            Spacer()
            
            VStack(alignment: HorizontalAlignment.leading, spacing: 10){
                Text(contacto_a_mostar.nombre)
                Text(contacto_a_mostar.telefono)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.gray)
            
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.red)
        .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
        // TAmbien se puede agragar un UnevenRoundedRectangle
        .onTapGesture {
            al_pulsar()
        }

    }
}

#Preview {
    ContactoPrevista(contacto_a_mostar: contato_prueba)
    Spacer()
}
