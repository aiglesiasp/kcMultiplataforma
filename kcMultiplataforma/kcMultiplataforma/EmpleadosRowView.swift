//
//  EmpleadosRowView.swift
//  kcMultiplataforma
//
//  Created by Aitor Iglesias Pubill on 2/12/22.
//

import SwiftUI

struct EmpleadosRowView: View {
    let employee: Empleados
    
    var body: some View {
        
        VStack {
            Spacer()
            Image(systemName: "person")
                .resizable()
                .frame(width: 100, height: 100)
            #if os(watchOS)
            HStack {
                Text("\(employee.nombre)")
            }
            #else
            
            HStack {
                Spacer()
                Text("\(employee.nombre)")
                Text("\(employee.apell1)")
                if let apell2 = employee.apell2 {
                    Text("\(apell2)")
                }
                Spacer()
            }
            #endif
            Spacer()
        }
        .padding()
    }
}

struct EmpleadosRowView_Previews: PreviewProvider {
    static var previews: some View {
        EmpleadosRowView(employee: Empleados(id: "2", nombre: "Aitor", apell1: "Iglesias", apell2: "Pubill", idPhoto: "02", edad: 33))
    }
}
