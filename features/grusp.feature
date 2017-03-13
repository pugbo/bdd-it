# language: it
# Funzionalità di prova

Funzionalità: Grusp

  Scenario:
    Dato che sono sulla homepage
    Allora dovrei vedere "Grusp"

  @javascript
  Scenario: prova login
    Dato che sono sulla pagina "wp-login.php"
    E compilo il campo "Nome utente o indirizzo email" con "test"
    E compilo il campo "Password" con "pugbo/bdd-it"
    E premo "Login"
    Allora dovrei vedere "Impostazioni personali"