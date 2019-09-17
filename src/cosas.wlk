object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}
object milanesa{
	var property precio = 260
	method esComida() {return true}
	method esElectrodomestico() {return false}
	}
object botellaDeTomate {
	var property precio = 90
	method esComida(){return true}
	method esElectrodomestico() {return false}
} 
object microondas{
	method precio(){return 4200}
	method esComida(){return false}
	method esElectrodomestico(){return true}
}

object cebollas{
	method precio() {return 25}
	method esComida(){return true}
	method esElectrodomestico(){return false}
}
object dolar{
	var property precio = null
}
object compu{
	method precio(){return dolar.precio()*500}
	method esComida(){return false}
	method esElectrodomestico(){return true}
}
object packDeComida{
	var packDeComida = #{}
	method agregarComida(unaComida) {packDeComida.add(unaComida)}	//PUEDE SER 1 SOLO OBJETO
	method agregarAderezo(unAderezo) {packDeComida.add(unAderezo)}	//PUEDE SER 1 SOLO OBJETO
 	method precio(){return packDeComida.sum({unaCosa=>unaCosa.precio()})}
 	
}	
object packDeRegalo{
	var packDeRegalo = []
	method esComida(){return packDeRegalo.all({unaCosa=>unaCosa.esComida()})}
	method esElectrodomestico() {return packDeRegalo.any({unaCosa=>unaCosa.esElectrodomesico()})}
	method precio(){return packDeRegalo.sum({unaCosa=>unaCosa.precio()})*0.8}
}
