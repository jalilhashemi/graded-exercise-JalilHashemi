package socrative

class Answer {

    String a


    static constraints = {
        a(nullable: false, blank: false, size: 2..50)
    }

    String toString(){
        return a
    }
}