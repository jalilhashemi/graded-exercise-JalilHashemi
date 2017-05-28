package socrative

class ReportController {

    def result() {
        render view: "result", model: [showQuiz: Question.list().first(), showResult: Answer.list()]

    }
}
