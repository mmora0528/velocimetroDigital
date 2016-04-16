//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
}

class Auto{
    //Atributos
    var velocidad : Velocidades
    
    //Inicializadores
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
        
    }
    
    //funciones
    func cambioDeVelocidad() ->(actual : Int,VelocidadEnCadena : String){
        
        //Variable en la que se asignara la cadena correspondiente a la velocidad del auto
        var velocidadString :String = ""
        var velocidadActual :Int = 0
        
        switch self.velocidad{
        case .Apagado:
            velocidadString = "Apagado"
            velocidadActual = velocidad.rawValue
            velocidad = .VelocidadBaja
            break
        case .VelocidadBaja:
            velocidadString = "Velocidad baja"
            velocidadActual = velocidad.rawValue
            velocidad = .VelocidadMedia
            break
        case .VelocidadMedia :
            velocidadString = "Velocidad Media"
            velocidadActual = velocidad.rawValue
            velocidad = .VelocidadAlta
            break
        case .VelocidadAlta:
            velocidadString = "Velocidad Alta"
            velocidadActual = velocidad.rawValue
            velocidad = .VelocidadMedia

        }
        
        //retorno de la tupla con la velocidad numèrica y el mensaje de la velocidad
        return (velocidadActual, velocidadString)
    }
    
}

var auto = Auto()


for i in 1 ... 20{
    var velocidad = auto.cambioDeVelocidad()
    print("\(velocidad.actual) km/h,\(velocidad.VelocidadEnCadena)")
    
}