package socrative

class ReportController {

    def result() {
        render view: "result", model: [showResult: Answer.list()]
    }
}
