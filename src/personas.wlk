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

	method vapor() {
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
		return feliz and not sed and (peso.between(50000, 70000)) // between para valores entre y tambien  puedo definir los pesos min y max para la felicidad y cambiarlos en el futuro
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

	method recibeMasaje() {
		contracturado = contracturado - 2 // ver que toma negativos y nose por que???? 
		if (contracturado < 0) {
			contracturado = 0
		}
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

	var ultimo // no inicializo la variable para no farmatearla como string y que tomo el proximo que viene

	method atender(_persona) {
		_persona.recibeMasaje()
		_persona.vapor()
		if (_persona == ultimo) {
			_persona.recibeMasaje()
		}
		ultimo = _persona
	}

}

