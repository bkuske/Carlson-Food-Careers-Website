class UrlMappings {
    static mappings = {

        //Static Pages
        "/"(controller:'page', action:'index')
        "/aboutus"(controller:'page', action:'aboutus')
        "/candidates"(controller:'page', action:'candidates')
        "/clientservices"(controller:'page', action:'clientservices')
        "/contactus"(controller:'page', action:'contactus')
        "/resources"(controller:'page', action:'resources')
        "/resumetips"(controller:'page', action:'resumetips')
        "/searchresults"(controller:'page', action:'searchresults')
        "/jobcoaching"(controller:'page', action:'jobcoaching')

        //Dynamic Public Pages
        "/positions/$action?/$id?"(controller:"positions")
        "/resume/$action?"(controller:"resume")

        //Admin Pages
        "/admin"(controller:"admin")

        "/admin/JobOpportunity/$action?/$id?"(controller:"jobOpportunity")
        "/admin/JobCategory/$action?/$id?"(controller:"jobCategory")
        "/admin/Region/$action?/$id?"(controller:"region")

        "/auth/$action?/$id?"(controller:"auth")

        "500"(view:'/error')
    }
}
