//
//  EmployeeDetailView.swift
//  kcMultiplataforma
//
//  Created by Aitor Iglesias Pubill on 2/12/22.
//

import SwiftUI

struct EmployeeDetailView: View {
    
    let employee: Empleados
    
    var body: some View {
        VStack {
            
            #if os(watchOS)
            Image(systemName: "person")
                .resizable()
                .frame(width: 50, height: 50)
            #else
            Image(systemName: "person")
                .resizable()
                .frame(minWidth: 100, idealWidth: 200, maxWidth: .infinity, minHeight: 100, idealHeight: 200, maxHeight: 300)
            #endif
            VStack {
                Text("\(employee.nombre)")
                    .padding()
                Text("\(employee.apell1)")
                    .padding()
                if let apell2 = employee.apell2{
                    Text("\(apell2)")
                        .padding()
                }
                Text("\(employee.edad)")
                    .padding()
                Spacer()
            }
            .font(.title)
        }
        .background(.gray)
        .foregroundColor(.white)
    }
}

struct EmployeeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeDetailView(employee: Empleados(id: "100", nombre: "Aitor", apell1: "Iglesias", apell2: "Pubill", idPhoto: "02", edad: 33))
    }
}
