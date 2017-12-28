package com.iotchallenge.models
/**
 * Created by hamila on 23/03/16.
 */
class Application {
    String teamName
    String student1
    String student2
    String student3
    String student4
    String student5
    String student6
    String email1
    String email2
    String email3
    String email4
    String email5
    String email6
    String cvPath

    Date dateCreated = new Date()
    Date lastUpdated = new Date()

    static constraints = {
        teamName nullable: false, blank: false, unique:true
        student1 nullable: false, blank: false
        student2 nullable: false, blank: false
        student3 nullable: false, blank: false
        student4 nullable: false, blank: false
        student5 nullable: false, blank: false
        student6 nullable: false, blank: false
        email1 nullable: false, blank: false, email: true
        email2 nullable: false, blank: false, email: true
        email3 nullable: false, blank: false, email: true
        email4 nullable: false, blank: false, email: true
        email5 nullable: false, blank: false, email: true
        email6 nullable: false, blank: false, email: true
        cvPath nullable: false, blank: false
    }
}
