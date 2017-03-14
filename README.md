# Behat/Mink in italiano
Esempio su come eseguire Gherkin Cucumber in italiano, partendo dalle user story (sempre in italiano)

Progetto allegato al meeting PugBO del 17 marzo 2017
## Materiale occorrente

- Installare il sistema di packaging: Composer
- Clonare questo repository
- [Scaricare Selenium Standalone Server](http://selenium-release.storage.googleapis.com/index.html?path=2.53/) (versione 2.x compatibile con MinkDriver)
- [Scaricare il Firefox WebDriver](https://github.com/mozilla/geckodriver/releases/) per Selenium
- Configurare il proprio behat.yml
- Firefox 47, scaricarlo e decomprimerlo in `/opt`, modificare `~/.profile` inserendolo nel path come alias

## Attività preliminari

- `composer install`
- avviare Selenium Standalone `java -jar selenium-server-standalone-2.53.1.jar`

## Svolgimento dei test

- `php bin/behat -dl` per vedere tutti i passi componibili
- `php bin/behat features/[test-singolo].feature`

## Bibliografia

- [Documentazione Behat](http://behat.org/en/latest/guides.html)
- [Documentazione MinkDriver + Selenium](http://mink.behat.org/en/latest/drivers/selenium2.html)
- [Documentazione Selenium e i browsers](http://www.seleniumhq.org/about/platforms.jsp#browsers)
- [PhpStorm feature for Scenario steps translation](https://twitter.com/tassoman/status/809396676364562433)
