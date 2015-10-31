package fmp

class Questionaires {

    Date dateOfSurvey = new Date()
    String dataCollector
    Country countryOfSurvey
    String locationName
    String locationCode
    FmPoints flowMonitoringPoint
    int answerSheetNumber
    int interviewNumber
    int groupLandingNo
    Boolean previousSurveyParticipation
    Country country
    String location
    String nationality
    String sex
    int age
    Education levelOfEducation
    String whoAreYouTravellingWith
    RelationType ifWithFamilyRelatives
    Country departureCountry
    String departureLocation
    String howLongStayInCountryOfDeparture
    String inRefugeeCamp
    ReasonLeave whyDidYouLeave
    WhenLeave whenDidYouLeave
    Country transitCountry1
    String transitCountry1Location
    Date departureDateFromCountry1
    TransportMode mainTransportModeToLeaveCountry1
    Country transitCountry2
    String transitCountry2Location
    Date departureDateFromCountry2
    TransportMode mainTransportModeToLeaveCountry2
    Country transitCountry3
    String transitCountry3Location
    Date departureDateFromCountry3
    TransportMode mainTransportModeToLeaveCountry3
    CostOfJourney costOfTheJourney
    Country intendedCountry
    RelativesDestinationCountry doYouHaveRelativesInDestination
    PeriodRelativesInDestination howLongRelativesInDestinationCountry
    String comments


    static constraints = {


        dateOfSurvey(nullable:true)
        dataCollector(nullable:true)
        countryOfSurvey(nullable:true)
        locationName(nullable:true)
        locationCode(nullable:true)
        flowMonitoringPoint(nullable:true)
        answerSheetNumber(min:0)
        interviewNumber(min:0)
        groupLandingNo(min:0)
        previousSurveyParticipation(nullable:true)
        country(nullable:true)
        location(nullable:true)
        nationality(nullable:true)
        sex(inList:["Female", "Male"])
        age(min:0)
        levelOfEducation(nullable:true)
        whoAreYouTravellingWith(inList:["Non-family/Relatives", "Family/Relatives"])
        ifWithFamilyRelatives(nullable:true)
        departureCountry(nullable:true)
        departureLocation(nullable:true)
        howLongStayInCountryOfDeparture(inList:["Less than 1 year", "More than 1 year"])
        inRefugeeCamp(inList:["Yes", "No"])
        whyDidYouLeave(nullable:true)
        whenDidYouLeave(nullable:true)
        transitCountry1(nullable:true)
        transitCountry1Location(nullable:true)
        departureDateFromCountry1(nullable:true)
        mainTransportModeToLeaveCountry1(nullable:true)
        transitCountry2(nullable:true)
        transitCountry2Location(nullable:true)
        departureDateFromCountry2(nullable:true)
        mainTransportModeToLeaveCountry2(nullable:true)
        transitCountry3(nullable:true)
        transitCountry3Location(nullable:true)
        departureDateFromCountry3(nullable:true)
        mainTransportModeToLeaveCountry3(nullable:true)
        costOfTheJourney(nullable:true)
        intendedCountry(nullable:true)
        doYouHaveRelativesInDestination(nullable:true)
        howLongRelativesInDestinationCountry(nullable:true)
        comments(nullable:true)

    }
}


