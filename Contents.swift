//: Velocimetro : Juan Hidalgo Puertas

import UIKit

enum velocidades:Int {
    case Apagado = 0 , VelocidadBaja = 20 , VelocidadMedia = 50 , VelocidadAlta = 120
    init(){
        self = .Apagado
    }
}

class Auto {
    
    var velocidad : velocidades
    
    init(velocidad : velocidades){
        
        self.velocidad = velocidad
    }
    
    init (velocidadInicial : velocidades){
        self.velocidad = velocidadInicial
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String ) {
        var valorActual : Int = velocidad.rawValue
        var valorVelocidad : String = ""
        
       if valorActual == 0{
            velocidad = velocidades.VelocidadBaja
            valorActual = 0
            valorVelocidad = "Apagado"
        }
        if valorActual == 20 {
            velocidad = velocidades.VelocidadMedia
            valorActual = 20
            valorVelocidad = "VelocidaBaja"
        }
        
       if valorActual == 50 {
            velocidad = velocidades.VelocidadAlta
            valorActual = 50
            valorVelocidad = "VelocidadMedia"
        }
        if valorActual == 120 {
            velocidad = velocidades.VelocidadMedia
            valorActual = 120
            valorVelocidad = "VelocidadAlta"
        }
        
        return (valorActual,valorVelocidad)
        
    }
}

var coche = Auto(velocidad: velocidades.Apagado)

for index in 1...20 {

    print (coche.cambioDeVelocidad())

}










