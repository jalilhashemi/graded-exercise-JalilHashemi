package socrative

class Answer {

    static question =[question: Question]

    static answer = [answer: PossibleAnswer]

    static constraints = {
        possibleAnswer(nullable: false, blank: false)
    }

    String toString(){
        return question + "\\n" + answer;
    }
}
