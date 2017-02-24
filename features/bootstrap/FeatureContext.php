<?php

use Behat\Behat\Tester\Exception\PendingException;
use Behat\MinkExtension\Context\MinkContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends MinkContext
{
    private $resources_directory = 'resources';
    private $login_url = '';

    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {
    }

    /**
     * @Given che sono sulla pagina :arg1
     */
    public function cheSonoSullaPagina($arg1)
    {
        $this->visit($arg1);
    }

    /**
     * @Given che sono sulla homepage
     */
    public function cheSonoSullaHomepage()
    {
        $this->iAmOnHomepage();
    }

    /**
     * @When aspetto :arg1 secondi che la pagina sia pronta
     */
    public function aspettoSecondiCheLaPaginaSiaPronta($arg1)
    {
      $microtime = $arg1 * 1000;
      $this->getSession()->wait($microtime,
        "$('#portal-siteactions').children().length > 0"
      );
    }

    /**
     * @When /^(?:|io )allego il file "(?P<path>[^"]*)" al campo "(?P<field>(?:[^"]|\\")*)"$/
     */
     public function allegoIlFileAlCampo($field, $path)
     {
         $path = $this->resources_directory . $path;

         $this->attachFileToField($field, $path);
     }

    /**
     * @Then /^(?:|io )mi disconnetto$/
     */
    public function miDisconnetto()
    {
        $this->visit($this->login_url);
        $this->clickLink('Log-out (Esci)');
        $this->getSession()->stop();
    }

}
