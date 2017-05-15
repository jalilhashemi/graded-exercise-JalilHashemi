package socrative

class QuizReportController {

    def index() {
        render view: "index", model: [splitter: QuizReportController]
    }
}
