# language: it

@javascript
Funzionalità: Profilo utente
	come visitatore
	vorrei essere riconosciuto
	affinché possa interagire con la redazione del blog

	Contesto: Effettuo il riconoscimento
		Dato che sono sulla pagina "wp-login.php"
		E compilo il campo "Nome utente o indirizzo email" con "test"
		E compilo il campo "Password" con "pugbo/bdd-it"
		E premo "Login"
		Allora dovrei vedere "Impostazioni personali"

	@javascript
	Scenario: Annullo il riconoscimento
		Quando passo su "#wp-admin-bar-my-account"
		E passo su "#wp-admin-bar-user-actions"
		E clicco sul link "Esci"
		Allora dovrei vedere "Disconnessione effettuata"
