//
//  EscapingClosures.swift
//  BootcampSwiftUI
// #weak self
//  Created by marco rodriguez on 16/06/22.
//

import SwiftUI

//Creamos el VM para que sea observable desde la vista
class EscapingViewModel: ObservableObject {
   
    @Published var text: String = "Hola"
    
    //getData llamará a otra funcion downloadedData
    func getData(){
        
//        let newData = downloadedData()   //downloadedData
//        text = newData
        
//        downloadedData2 { returnedData in  //downloadedData2
//            text = returnedData
//        }
        
        /// strong reference = self Solo es necesario cuando necesitamos
        /// este método no se va ejecutar inmediatamente, si no hasta que el usuario presione el label, asi que se recomienda utilizar una referencia débil [weak self] para evitar que nuestra aplicacion se alente, cuando se ejecuta la funcion y hasta que termina de completarse el usuario puede navegar a otra pantalla, una strong reference (self) nos dice que necesitamos que esta clase este viva cuando se complete la funcion (closure), entonces ponemos una referencia debil porque no necesitamos que este viva la "EscapingViewModel class"
        
//        downloadedData3 { [weak self] (returnedData) in  //downloadedData3
//            self?.text = returnedData
//        }
        
//        downloadedData4 { [weak self] (returnedData) in  //downloadedData4
//            self?.text = returnedData.data
//        }
        
        downloadedData5 { [weak self] (returnedData) in  //downloadedData5
            self?.text = returnedData.data
        }
        
        
    }//getData()
    
    //Codigo sincrono que sucede inmediatamente
    func downloadedData() -> String {
        return "New Data!"
    }
    
    func downloadedData2(completionHandler: (_ data: String) -> Void) {
        completionHandler("New data!")
    }
    
    func downloadedData3(completionHandler: @escaping (_ data: String) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            completionHandler("New data!")
        }
    }
    
    func downloadedData4(completionHandler: @escaping (DownloadResult) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            let result = DownloadResult(data: "New Data!")
            completionHandler(result)
        }
     }
    
    func downloadedData5(completionHandler: @escaping DownloadCompletion) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            let result = DownloadResult(data: "New Data!")
            completionHandler(result)
        }
     }
    
    
}

struct DownloadResult {
    let data: String
}

//typeAlias permite renombrar ciertos tipos de datos para tener un codigo mas amigable
typealias DownloadCompletion = (DownloadResult) -> ()

struct EscapingClosures: View {
    //Inicializar desde la vista
    @StateObject var vm = EscapingViewModel()
    
    var body: some View {
        Text(vm.text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.blue)
        
        //al tocarlo se activara lo siguiente
            .onTapGesture {
                vm.getData()
            }
    }
}

struct EscapingClosures_Previews: PreviewProvider {
    static var previews: some View {
        EscapingClosures()
    }
}
