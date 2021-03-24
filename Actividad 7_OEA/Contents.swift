import UIKit

//Osvaldo Estrada Alcántara   No. Control: 2820079
/*:
# Playground - Actividad 7
* Valor por tipo y por referencia
* Funciones personalizadas Y Genericos
* Funciones de la biblioteca Swift para Arreglos
*/


/*: 
### Valor por tipo y por referencia
A) Para la colección "var costo_referencia:[Float] = [8.3,10.5,9.9]", aplicar el impuesto del 16% a través de recorrer la colección "costo_referencia" para aplicar el impuesto a cada cantidad, crear una función Impuesto que recibe como parámetro la colección y regrese aplicado el impuesto a cada cantidad.
*/
var costo_referencia:[Float]=[8.3,10.5,9.9]
var indice:Int = 0


func IVA(costo_referencia:[Float]) -> [Float]
{
    var resultado : [Float] = []
    for i in costo_referencia
    {
        resultado.append(i*1.16)
    }
    return resultado
}

costo_referencia
IVA(costo_referencia: costo_referencia)

//: B) Crear la función "sumaTres"  que reciba una función con dos valores a sumar y un segundo parametro para sumar el tercer número.
func sumaTres(a:Int, b:Int, c:Int) -> Int
{
    let suma = {(x:Int, y:Int) -> Int in return x+y}
    return suma(a,b) + c
}

sumaTres(a: 8, b: 7, c: 4)





/*:
### Funciones personalizadas y Genéricos

 
 A) Generics: Crear la función genérica para intercambiar valores entre dos variables del mismo tipo.
*/
func CambioString (a:String, b:String) -> (String,String)
{
    var 	temp = a
    var a=b
    var b=temp
    
    
    return (a,b)
}
CambioString(a: "Hola", b: "yo")
//: B) Función personalizada: Crear la función "Transformar" que reciba como parámetro una colección de tipo Int  "var datos = [3,7,9,2]" y una función que transforme cada valor de la coleción en una operación definida fuera de la función, regresando una colección transformada.
//Esta parte no entendi que se necesita hacer


/*:
### Biblioteca de Swift
A) Aplicar la función de librería de Swift "map" para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplicar el impuesto de 16% y asignarla a la variable "impuesto"
*/
let precios = [4.2,5.3,8.2,4.5]

var impuesto = precios.map{a in return a * 1.16}
impuesto


//: B) Aplicar la función de la librería de Swift "filter" para la colección resultante "impuesto" del paso A, en donde se obtengas solo los precios mayores a 6.0 y asignarlos a la variable "precio_menor"
var filtro = impuesto.filter{a in a>6}
var precio_menor = filtro
precio_menor


