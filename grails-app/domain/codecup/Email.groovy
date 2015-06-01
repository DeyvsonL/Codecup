package codecup

class Email {
    String email
    static constraints = {
        email unique: true
    }
}
