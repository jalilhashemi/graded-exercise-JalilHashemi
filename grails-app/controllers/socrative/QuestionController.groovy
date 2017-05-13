package socrative

class QuestionController {

    def scaffold = Question

    def multipleChoice() {
        render view: "multipleChoice", model: [question: Question]
    }
}
