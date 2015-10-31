package fmp

class Presence {

    FmPoints fmPoint
    FmpUpdate FMUpdate
    String nationality
    int individuals
    int males
    int females
    int minors
    int UAMs
    Boolean fingerPrinted
    int averageLengthOfStay
    String commentsPresence

    Date dateCreated
    Date lastUpdated
    static constraints = {
        fmPoint(nullable : false)
        FMUpdate (nullable: false)
        nationality(nullable:true)
        individuals(min:0)
        males(min:0)
        females(min:0)
        minors(min:0)
        UAMs(min:0)
        fingerPrinted(nullable:true)
        averageLengthOfStay(min:0)
        commentsPresence(nullable:true)
    }

    String toString() {

    }
}
