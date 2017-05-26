package socrative

import grails.test.mixin.TestFor
import spock.lang.Specification
import spock.lang.Unroll

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

    @Unroll
    void "test home page" () {
        when:
        homeController.index()

        then:
        view == '/home/home'
    }
}
