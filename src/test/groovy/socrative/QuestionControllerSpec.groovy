package socrative

import grails.test.mixin.*
import spock.lang.*

@TestFor(QuestionController)
@Mock(Question)
class QuestionControllerSpec extends Specification {

    QuestionController answerController

    def setup() {
        answerController = new QuestionController()
    }

    def cleanup() {
    }

    @Unroll
    void "test question's null" () {
        given:
        def model = new Question()
        when:
        model.question = null

        then:
        !model.validate(['question'])
        model.errors['question'].code == 'nullable'
    }

    @Unroll
    void "test question's blank" () {
        given:
        def model = new Question()
        when:
        model.question = ''

        then:
        !model.validate(['question'])
    }

    @Unroll
    void "test question's max of 500 and min 20 characters" () {
        given:
        def model = new Question()
        when: 'for a string of 501 characters'
        String str = 'a' * 501
        model.question = str

        then: 'name validation fails'
        !model.validate(['question'])
        model.errors['question'].code == 'size.toobig'

        when: 'for a string of 19 characters'
        str = 'a' * 19
        model.question = str

        then: 'name validation fails'
        !model.validate(['question'])
        model.errors['question'].code == 'size.toosmall'

        when: 'for a string of 50 characters'
        str = 'a' * 50
        model.question = str

        then: 'name validation passes'
        model.validate(['question'])
    }

}
