package socrative

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(HomeController)
class HomeControllerSpec extends Specification {

    HomeController homeController

    def setup() {
        homeController = new HomeController()
    }

    def cleanup() {
    }
}
