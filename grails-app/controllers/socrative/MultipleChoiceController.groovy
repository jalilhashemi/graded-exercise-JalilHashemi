package socrative

class MultipleChoiceController {


    def answering() {

        render view: "answering", model: [questionView: Question.list(), multipleChoice: Answer.list()]

    }

    def submit() {
        render view: "submit"
    }


}
