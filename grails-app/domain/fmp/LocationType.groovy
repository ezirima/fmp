package fmp

class LocationType {

    String name
    String description

    Date dateCreated
    Date lastUpdated
    static constraints = {
        name blank:false
        description size:0..255
    }

    String toString(){
        name
    }
}
