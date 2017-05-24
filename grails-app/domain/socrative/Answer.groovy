package socrative

class Answer {

    String a
    int counter


    static constraints = {
        a(nullable: false, blank: false, size: 2..50)
    }

    String toString(){
        return a
    }
}