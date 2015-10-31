package fmp

class CumulativeArrivals {

    Date reportDate
    FmPoints ISO3Reporting
    int arrivalsCumulative
    int arrivalsCumulativeMale
    int arrivalsCumulativeFemale
    int arrivalsCumulativeAM
    int arrivalsCumulativeUAM
    int arrivalsCumulativeSea
    int arrivalsCumulativeAir
    int arrivalsCumulativeLand
    String source

    Date dateCreated
    Date lastUpdated
    static constraints = {

        reportDate(nullable:true)
        ISO3Reporting(nullable:true)
        arrivalsCumulative(min:0)
        arrivalsCumulativeMale(min:0)
        arrivalsCumulativeFemale(min:0)
        arrivalsCumulativeAM(min:0)
        arrivalsCumulativeUAM(min:0)
        arrivalsCumulativeSea(min:0)
        arrivalsCumulativeAir(min:0)
        arrivalsCumulativeLand(min:0)
        source(nullable:true)
    }

    String toString() {

    }
}
