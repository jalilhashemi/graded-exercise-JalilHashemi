package socrative

class PossibleAnswer {

    static question =[question: Question]

    String answer_A

    static constraints = {

        answer_A(balnk: false, nullable: false, size: 1..50)

    }

    String toString(){
        return question
    }
}
