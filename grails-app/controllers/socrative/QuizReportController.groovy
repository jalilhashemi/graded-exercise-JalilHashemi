package socrative

class QuizReportController {

    def index() {
//        render view: "index", model: [splitter: QuizReportController]
//        render view: "index"

        def count = 0;
        def answer = Answer.getAll()
        answer.each {
            count += it.counter
        }
        render view: "index", model: [counterZero: count]
    }





}
