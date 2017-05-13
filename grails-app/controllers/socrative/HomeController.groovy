package socrative

class HomeController {

    def index() {
        render view: "home", model: [splitter: HomeController]
    }

}
