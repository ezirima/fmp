package fmp

class CumulativeArrivalsSummary {


    Date fromDate
    Date toDate
    Date fromDateCompare
    Date toDateCompare
    FmPoints ISO3
    int total
    int currentWeek
    int previousWeek
    int delta
    float percentVariation


    Date dateCreated
    Date lastUpdated
    static constraints = {

        fromDate(nullable:true)
        toDate(nullable:true)
        fromDateCompare(nullable:true)
        toDateCompare(nullable:true)
        ISO3(nullable:true)
        total(min:0)
        currentWeek(min:0)
        previousWeek(min:0)
        delta(min:0)
        percentVariation(min: 0F, max: 100F)
    }

    String toString() {

    }
}

