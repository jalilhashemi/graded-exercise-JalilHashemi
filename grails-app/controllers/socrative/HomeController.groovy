package socrative

class HomeController {

    def index() {
        def hasQuestions = ! Question.list().isEmpty()
        render view: "home", model: [splitter: HomeController, hasQuestions: hasQuestions]
    }

}
