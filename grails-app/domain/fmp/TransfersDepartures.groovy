package fmp

class TransfersDepartures {

    FmPoints fmPoint
    FmpUpdate FMUpdate
    String nationality
    int individuals
    int males
    int females
    int minors
    int UAMs
    String nextLocation
    String relocated
    String commentsPresence


    Date dateCreated
    Date lastUpdated
    static constraints = {

        fmPoint(nullable:true)
        FMUpdate(nullable:true)
        nationality(nullable:true)
        individuals(min:0)
        males(min:0)
        females(min:0)
        minors(min:0)
        UAMs(min:0)
        nextLocation(nullable:true)
        relocated(nullable:true)
        commentsPresence(nullable:true)

    }

    String toString() {

    }
}
