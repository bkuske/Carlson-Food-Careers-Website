class JobOpportunity {

    String positionTitle
    Date postedDate
    String salaryRange
    String desiredSkills
    String description
    String jobCode
    boolean visible
    boolean hideFromHomePage

    JobCategory category
    Region region

    static constraints = {
        category(nullable:false)
        region(nullable:false)
        postedDate(nullable:false)
        description(maxSize:65535)
    }



}
