

package fmp

class FmPoints {

    String fmPointName
    Date dateOfSurvey = new Date()
    String dataCollector
    Country country
    String region
    String metropolitanProvince
    String municipality
    String locationName
    LocationType locationType
    String locationCode
    String gpsLatitude
    String gpsLongitude
    String nearestTown
    int capacity
    TransportMode arrivingTransport
    TransportMode departingTransport
    Boolean nationalAuthPresence
    Boolean humanitarianActorsPresence
    Boolean accesIom
    String comments


    Date dateCreated
    Date lastUpdated
    static constraints = {

        fmPointName(nullable:true)
        dateOfSurvey(nullable:true)
        dataCollector(blank: true)
        country nullable: true
        region(nullable :true)
        metropolitanProvince(blank: true)
        municipality(blank: true)
        locationName(nullable:true)
        locationType(nullable:false)
        locationCode(blank: true)
        gpsLatitude(blank: true)
        gpsLongitude(blank: true)
        nearestTown(blank: true)
        capacity(min: 0)
        arrivingTransport()
        departingTransport()
        nationalAuthPresence()
        humanitarianActorsPresence()
        accesIom()
        comments()
           }

    String toString() {
        fmPointName
    }
}
