class PageController {

    def index = {
        [jobs:JobOpportunity.findAllByVisibleAndHideFromHomePage(true, false, [sort:"postedDate", order:"desc", max:4])]
    }

    def aboutus = {}
    def candidates = {}
    def clientservices = {}
    def contactus = {}
    def resources = {}
    def resumetips = {}
    def searchresults = {}
    def jobcoaching = {}
}
