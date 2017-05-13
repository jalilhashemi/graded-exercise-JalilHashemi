package socrative

class AnswerController {

    def scaffold = Answer

    def multipleChoice() {
       // render view: "multipleChoice", model: [answers: Answer.list()]
    }
}
