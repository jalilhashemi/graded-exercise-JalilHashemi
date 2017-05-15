package socrative

class MultipleChoiceController {


    def answering() {
        render view:"answering", model:[multipleChoice: Answer.list()]
    }

}



