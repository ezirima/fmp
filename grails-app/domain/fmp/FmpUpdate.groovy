package fmp

class FmpUpdate {

    String fmUpdateID
    UpdateType updateType
    FmPoints fmPoint
    Date dateOfSurvey = new Date()
    String dataCollector
    String locationName
    String locationCode
    ActivityStatus status
    Boolean hotspotApproach
    Boolean flowMonitoringSurveyOngoing
    String commentsOnSituation
    String sourceArrivals
    Boolean externalUse
    String vehiclesVesselsLandings
    int arrivals
    int males
    int females
    int minors
    int UAMs
    String sourceVoTs
    int suspectedVoTs
    int identifiedVoTs
    String rescuedBy
    int deadMissing
    String nationalityArrivals1
    String nationalityArrivals2
    String nationalityArrivals3
    String countryOfLastDeparture1
    String countryOfLastDeparture2
    String locationOfLastDeparture1
    String locationOfLastDeparture2
    String commentsOnArrivals

       static constraints = {

           fmPoint(nullable:false)
           fmUpdateID(nullable : true)
           updateType(nullable:false)
           dateOfSurvey(nullable:true)
        dataCollector(blank: true)
        locationName(nullable:true)
        locationCode(nullable:true)
        status(nullable:true)
        hotspotApproach(nullable:true)
        flowMonitoringSurveyOngoing(nullable:true)
        commentsOnSituation(nullable:true)
        sourceArrivals(nullable:true)
        externalUse(nullable:true)
        vehiclesVesselsLandings(nullable:true)
        arrivals(min:0)
        males(min:0)
        females(min:0)
        minors(min:0)
        UAMs(min:0)
        sourceVoTs(nullable:true)
        suspectedVoTs(min:0)
        identifiedVoTs(min:0)
        rescuedBy(nullable:true)
        deadMissing(min:0)
        nationalityArrivals1(nullable:true)
        nationalityArrivals2(nullable:true)
        nationalityArrivals3(nullable:true)
        countryOfLastDeparture1(nullable:true)
        countryOfLastDeparture2(nullable:true)
        locationOfLastDeparture1(nullable:true)
        locationOfLastDeparture2(nullable:true)
        commentsOnArrivals(nullable:true)
    }
    String toString(){
        fmUpdateID
}
}