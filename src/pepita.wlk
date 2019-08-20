object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz() {
		return energia.between(500,100)
	}
	
	method cuantoQuiereVolar() {
		var base = energia/5
		if(energia.between(300,400))
			base += 10
		else if(energia % 20 == 0)
			base +=15
		return base
	}
	
	method salirAComer() {
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras() {
		if(self.estaCansada())
			self.come(alpiste)
		if(self.estaFeliz())
			self.vola(8)
	}	
}

object mijo {
	var energia
	method mojarse(){	
		energia = 15
	}	
	
	method secarse(){
		energia = 20
	}	
}

object canelones {
	var energia = 20
	
	method ponerSalsa() {
		energia += 5
	}
	
	method sacarSalsa(EnergiaAsacar) {
		energia -= EnergiaAsacar
	}
	
	method ponerQueso() {
		energia += 7
	}
	
	method sacarQueso(EnergiaASacar) {
		energia -= EnergiaASacar
	}
	
	method energiaQueOtorga(){
		return energia
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}