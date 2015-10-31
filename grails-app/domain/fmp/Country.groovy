package fmp

class Country {

    String countryName
    String ISO3
    String ISO
    int ISONumeric
    String FIPS
    String capital
    String continent

    Date dateCreated
    Date lastUpdated
    static constraints = {

        countryName(nullable:true)
        ISO3(nullable:true)
        ISO (nullable: true)
        ISONumeric (nullable : true)
        FIPS (nullable:true)
        capital (nullable: true)
        continent (nullable: true)

    }

    String toString(){
        countryName
    }
}

