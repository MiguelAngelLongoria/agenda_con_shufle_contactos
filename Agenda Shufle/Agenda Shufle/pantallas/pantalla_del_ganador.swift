//
//  pantalla_del_ganador.swift
//  Agenda Shufle
//
//  Created by Jadzia Gallegos on 05/03/25.
//

import SwiftUI

var contacto_alterno = ContactoAgenda(nombre: "Telefoncio", telefono: "656 6102367")

struct pantalla_del_ganador: View {
    var contacto_a_molestar: ContactoAgenda
    
    var body: some View {
        VStack(spacing: 20) { // Se usa VStack para organizar los elementos en columna c
         
                Circle() //  círculo como fondo
                    .foregroundColor(Color.red)
                    .frame(width: 250)
                
                Image(systemName: "plus") // Ícono dentro del círculo
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .foregroundColor(.white) // Se cambia el color
                
                VStack {
                    Text(contacto_a_molestar.nombre)
                        .font(.title) // tamaño de la fuente
                        .bold() // negritas
                    
                    Text(contacto_a_molestar.telefono)
                        .font(.headline) // Se usa un estilo más pequeño
                        .foregroundColor(.gray) // Se cambia el color para dar contraste
                }
                .padding()
                
                Spacer() // Agrega espacio flexible para mejorar la distribución
                
                Text("Finalizar la aplicación.") // Texto adicional solicitado
                    .foregroundColor(.red) // Se resalta en rojo
                    .bold()
                    .padding()
                Spacer()
                VStack(alignment: .leading) { // Se usa VStack alineado a la izquierda para la lista
                    Text("Revisar:")
                        .font(.headline)
                    Text("[ ] Estilo")
                    Text("[ ] Legibilidad")
                    Text("[ ] Agregados")
                    Text("[ ] Un intent?")
                }
                .padding()
                Spacer()
                Text("Recuerden subir el enlace a GitHub en un archivo de texto") // Mensaje adicional
                    .font(.footnote)
                    .foregroundColor(.blue)
                    .padding()
                
                Text("Mi trabajo") // Texto final en negritas
                    .font(.caption)
                    .bold()
                    .padding(.bottom)
            }
            .padding() // Se agrega espacio general al contenedor principal
            .background(Color.yellow) // Se añade un fondo sutil amarillo claro
        }
    }


#Preview {
    pantalla_del_ganador(contacto_a_molestar: contacto_alterno)
}

