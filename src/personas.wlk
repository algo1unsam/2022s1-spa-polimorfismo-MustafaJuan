// OLIVIA
object olivia {

	var concentracion = 6

	method gradoDeConcentracion() {
		return concentracion
	}

	method recibeMasaje() {
		concentracion = concentracion + 3
	}

	method discute() {
		concentracion = concentracion - 1
	}

}

// BRUNO
object bruno {

	var feliz = true
	var sed = false
	var peso = 55000

	method recibeMasaje() {
		feliz = true
	}

	method vapor() {
		peso = peso - 500
		sed = true
	}

	method tomarAgua() {
		sed = false
	}

	method comerFideos() {
		peso = peso + 250
		sed = true
	}

	method correr() {
		peso = peso - 300
	}

	method noticiero() {
		feliz = false
	}

	method estaPerfecto() {
		return feliz and not sed and (peso > 50000 and peso < 70000)
	}

	method mediodiaEnCasa() {
		self.comerFideos()
		self.tomarAgua()
		self.noticiero()
	}

}

// RAMIRO
object ramiro {

	var pielGrasa = false
	var contracturado = 0

	method recibeMasaje() {					// ver que toma negativos 
		if (contracturado > 2) {
			contracturado = contracturado - 2
		}
		contracturado = 0
	}

	method vapor() {
		pielGrasa = false
	}

	method comerBigMag() {
		pielGrasa = true
		}

	method trabajar() {
		pielGrasa = true
		contracturado = contracturado + 1
	}

	method paddle() {
		contracturado = contracturado + 3
	}

	method diaDeTrabajo() {
		self.trabajar()
		self.comerBigMag()
		self.trabajar()
	}

}

//-----------  SPA  -----------------------------
object spa {

	method atender(_persona) {
		_persona.recibeMasaje()
		_persona.vapor()
	}

}

