import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	
	method comprar(cosa){
		
		cosas.add(cosa)
	}
	method cantidadDeCosasCompradas(){
		
		return cosas.size()
	}
	method tieneComida(){
		
		return  cosas.any({unaCosa=>unaCosa.esComida()})
	}
	method vieneDeEquiparse(){
		
		 
		return cosas.last().precio()>=5000 or cosas.last().esElectrodomestico()
	}
	method esDerrochona(){
		
		return cosas.sum({unaCosa=>unaCosa.precio()})>=9000
	}
	method compraMasCara(){
		
		return cosas.max({unaCosa=>unaCosa.precio()})
	}
	method electrodomesticosComprados(){
		
		return cosas.filter({unaCosa=>unaCosa.esElectrodomestico()})
	}
	method malaEpoca(){
		
		return cosas.all({unaCosa=>unaCosa.esComida()})
	}
	method queFaltaComprar(lista){
		lista.asSet()
		cosas.asSet()
		
		return lista.difference(cosas)
	}
	method faltaComida(){
		
	//	return cosas.filter({unaCosa=>unaCosa.esComida()}).size()<2 
	 return  cosas.count({unaCosa=>unaCosa.esComida()}) < 2			
	}

	method gastoEnComida(){
			
		return cosas.filter{unaCosa=>unaCosa.esComida()}.sum{unaCosa=>unaCosa.precio()}
	}
	method hayElectrodomesticosBaratos(){
		
		return cosas.filter{unaCosa=>unaCosa.esElectrodomestico()}.any{unaCosa=>unaCosa.precio()<3000}
	}
	method preciosDeElectrodomesticos(){
		
		return self.electrodomesticosComprados().map{unaCosa=>unaCosa.precio()}
	}
	method nivelEnAumento(){
		
		return cosas.last().precio()>= cosas.first().precio() * 2
		
	}
	method primerComidaComprada(){
		
		return cosas.find{unaCosa=>unaCosa.esComida()}
	}
	
}
