package socrative

class MultipleChoiceController {

    def answering() {
        render view: "answering", model: [questionView: Question.list().first(), multipleChoice: Answer.list()]
    }

    def create() {
        String answerID = params.keySet().findAll{ String key -> key.startsWith("answer")}
        def answer = Answer.get(answerID.substring(7,8))
        answer.counter++
        answer.save flush:true

        render view:"submit"
    }
}
