package socrative

class MultipleChoiceController {

    def answering() {
        def questions = Question.list()
        if (questions.isEmpty()) {
            render view: "emptyAnswer"
        } else {
            render view: "answering", model: [questionView: questions.first(), multipleChoice: Answer.list()]
        }
    }

    def preview () {
        render view: "preview", model: [questionPreview: Question.list().first(), multipleChoicePreview: Answer.list()]
    }

    def create() {
        String answers = params.keySet().findAll{ String key -> key.startsWith("answer")}
        answers.substring(0, answers.length() - 1)
        answers.substring(1)

        def answerIDs = answers.split(",")
        answerIDs.each {
            def answer = Answer.get(it.substring(7,8))
            answer.counter++
            answer.save flush:true
        }
        render view:"submit"
    }
}
