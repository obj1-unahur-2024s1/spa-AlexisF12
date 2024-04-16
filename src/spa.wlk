object olivia{
	var concentracion = 6
	
	
	method gradoDeConcentracion() {
		return concentracion
	}
	method recibeMasajes(){
		concentracion += 3
	}
	method discute(){
		concentracion -= 1
	}
	method darseUnBanioDeVapor(){
		concentracion += 10
	}
}

object bruno{
	var estaFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() = estaFeliz
	
	method tieneSed() = tieneSed

	method peso() = peso

	method recibeMasajes(){
		 estaFeliz = true
	}
	method darseUnBanioDeVapor(){
		peso -= 500
		tieneSed = true
	}
	method tomarAgua(){
		tieneSed = false
	}
	method comeFideos(){
		peso += 250
		tieneSed = true
	}
	method correr(){
		peso -=300
	}
	method verNoticiero(){
		estaFeliz = false
	}
	method estaPerfecto(){
		return estaFeliz and peso.between(50000, 70000) and !tieneSed
	}
	method mediodiaEnCasa(){
		self.comeFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro{
	var contractura = 10
	var pielGrasosa = false
	
	
	method nivelDeContractura() = contractura

	method tienePielGrasosa() = pielGrasosa

	method recibeMasajes(){
		if (contractura > 0){
			contractura -= 1
		}
		else{
			contractura = 0
		}
	}
	
	method comerBicMac(){
		pielGrasosa = true
	}
	
	method darseUnBanioDeVapor(){
		pielGrasosa = false
	}
	
	method bajarAFosa(){
		pielGrasosa = true
		contractura += 1
	}
	
	method jugarAlPaddle(){
		contractura += 3
	}
	
	method diaDeTrabajo(){
		self.bajarAFosa()
		self.comerBicMac()
		self.bajarAFosa()
	}
}

object spa {
  method atender(persona) {
    persona.recibeMasajes()
    persona.darseUnBanioDeVapor()
  }
}















