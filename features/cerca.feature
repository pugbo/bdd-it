# language: it
# Questa funzionalità usa Goutte come crawler

Funzionalità: Motore di ricerca
  Come utente voglio cercare una parola

  Scenario: Cerco una pagina che esiste
    Dato che sono sulla homepage
    E compilo il campo "s" con "slack"
    Quando premo "Cerca"
    Allora dovrei vedere "Risultati della ricerca di: slack"

  Scenario: Cerco una pagina inesistente
    Dato che sono sulla homepage
    E compilo il campo "s" con "sgnarfuz"
    Quando premo "Cerca"
    Allora dovrei vedere "Nessun risultato"
