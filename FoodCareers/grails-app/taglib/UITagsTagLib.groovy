class UITagsTagLib {
    
    def recentOpenings = { attrs, body ->
        out << render(template:"/recentJobOpenings", models:[jobs:attrs.jobs])
    }
}
