//
//  ContentView.swift
//  kcMultiplataforma
//
//  Created by Aitor Iglesias Pubill on 2/12/22.
//

import SwiftUI

func getTestData() -> [Empleados] {
    return [
        Empleados(
            id: "100",
            nombre: "David",
            apell1: "Perez",
            apell2: "Maroto",
            idPhoto: "01",
            edad: 40),
        Empleados(
            id: "101",
            nombre: "Jose",
            apell1: "Bustos",
            apell2: "Esteban",
            idPhoto: "02",
            edad: 46),
        Empleados(
            id: "102",
            nombre: "Aitor",
            apell1: "Iglesias",
            apell2: "Pubill",
            idPhoto: "03",
            edad: 33)
    ]
}

struct ContentView: View {
    private var employees = getTestData()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(employees) { employee in
                    NavigationLink {
                        //action donde voy a ir
                        EmployeeDetailView(employee: employee)
                    } label: {
                        EmpleadosRowView(employee: employee)
                    }
                }
            }
            .navigationTitle("Empleados")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
