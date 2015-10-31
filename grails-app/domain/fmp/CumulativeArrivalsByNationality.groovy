package fmp

class CumulativeArrivalsByNationality {

    Date reportDate
    FmPoints ISO3Origin
    int arrivalsCumulative
    int arrivalsCumulativeMale
    int arrivalsCumulativeFemale
    int arrivalsCumulativeAM
    int arrivalsCumulativeUAM
    FmPoints ISO3Reporting
    String source

    Date dateCreated
    Date lastUpdated
    static constraints = {

        reportDate(nullable:true)
        ISO3Origin(nullable:true)
        arrivalsCumulative(min:0)
        arrivalsCumulativeMale(min:0)
        arrivalsCumulativeFemale(min:0)
        arrivalsCumulativeAM(min:0)
        arrivalsCumulativeUAM(min:0)
        ISO3Reporting(nullable:true)
        source(nullable:true)
    }

    String toString() {

    }
}
