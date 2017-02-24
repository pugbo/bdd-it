# Behat/Mink in italiano
Esempio su come eseguire Gherkin Cucumber in italiano, partendo dalle user story (sempre in italiano)

Progetto allegato al meeting PugBO del 17 marzo 2017

## Materiale occorrente

. Installare il sistema di packaging: Composer
. Clonare questo repository
. Scaricare Selenium Standalone Server (versione 2.x compatibile con MinkDriver) http://selenium-release.storage.googleapis.com/index.html?path=2.53/
. Scaricare il Firefox WebDriver per Selenium https://github.com/mozilla/geckodriver/releases/
. Configurare il proprio behat.yml

## Svolgimento dei test

`php bin/behat features/[test-singolo].feature`

## Bibliografia

. Documentazione Behat http://behat.org/en/latest/guides.html
. Documentazione MinkDriver + Selenium http://mink.behat.org/en/latest/drivers/selenium2.html
. Documentazione Selenium e i browsers http://www.seleniumhq.org/about/platforms.jsp#browsers
