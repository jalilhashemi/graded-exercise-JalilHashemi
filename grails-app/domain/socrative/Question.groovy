package socrative

class Question {

    String question

    static constraints = {
        question(blank: false, nullable: false, size: 20..500)
    }

    String toString(){
        return question
    }
}
