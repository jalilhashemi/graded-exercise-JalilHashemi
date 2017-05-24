package socrative

class Question {

    String questionerName
    String question

    static constraints = {
        questionerName(blank: false, nullable: false, size: 5..50)
        question(blank: false, nullable: false, size: 20..500)
    }


    String toString(){
        return question
    }
}
