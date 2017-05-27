package socrative

class Answer {

    String a
    int counter

    static constraints = {
        a(nullable: false, blank: false, size: 2..200)
        counter display:false
    }

    String toString(){
        return a
    }
}