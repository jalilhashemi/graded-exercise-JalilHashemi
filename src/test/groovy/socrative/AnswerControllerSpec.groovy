package socrative

import grails.test.mixin.*
import spock.lang.*

@TestFor(AnswerController)
@Mock(Answer)
class AnswerControllerSpec extends Specification {

    AnswerController answerController

    def setup() {
        answerController = new AnswerController()
    }

    def cleanup() {
    }

    @Unroll
    void "test answer's null" () {
        given:
        def model = new Answer()
        when:
        model.a = null

        then:
        !model.validate(['a'])
        model.errors['a'].code == 'nullable'
    }

    @Unroll
    void "test answer's blank" () {
        given:
        def model = new Answer()
        when:
        model.a = ''

        then:
        !model.validate(['a'])
    }

    @Unroll
    void "test answer's max of 50 and min 2 characters" () {
        given:
        def model = new Answer()
        when: 'for a string of 51 characters'
        String str = 'a' * 51
        model.a = str

        then: 'name validation fails'
        !model.validate(['a'])
        model.errors['a'].code == 'size.toobig'

        when: 'for a string of 1 characters'
        str = 'a' * 1
        model.a = str

        then: 'name validation fails'
        !model.validate(['a'])
        model.errors['a'].code == 'size.toosmall'

        when: 'for a string of 50 characters'
        str = 'a' * 50
        model.a = str

        then: 'name validation passes'
        model.validate(['a'])
    }
}
