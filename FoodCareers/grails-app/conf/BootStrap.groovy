import org.jsecurity.crypto.hash.Sha1Hash
class BootStrap {

    def init = { servletContext ->
/*
        // Administrator user and role.
        def adminRole = new JsecRole(name: "Administrator").save()
        def adminUser = new JsecUser(username: "admin", passwordHash: new Sha1Hash("admin").toHex()).save()
        new JsecUserRoleRel(user: adminUser, role: adminRole).save()
        

        def jobCat1 = new JobCategory(name:'ANALYTICAL / PHYSICAL TESTING').save()
        new JobCategory(name:'EXECUTIVE MANAGEMENT').save()
        new JobCategory(name:'ENGINEERING').save()
        new JobCategory(name:'NUTRITION / NUTRACEUTICALS').save()
        new JobCategory(name:'PACKAGE DEVELOPMENT').save()
        new JobCategory(name:'PROCESS DEVELOPMENT ENGINEERS').save()
        new JobCategory(name:'PRODUCT DEVELOPMENT').save()
        new JobCategory(name:'PURCHASING').save()
        new JobCategory(name:'SUPPLY CHAIN/OPERATIONS/PLANT/PRODUCTION').save()
        new JobCategory(name:'QUALITY RELATED').save()
        new JobCategory(name:'REGULATORY / SAFETY').save()
        new JobCategory(name:'SALES AND MARKETING').save()
        new JobCategory(name:'SENSORY EVALUATION').save()


def regionNames = [
				"International",
				"Northeast",
				"Northwest",
				"Southeast",
				"Southwest",
				"East Coast",
				"West Coast",
				"Upper Midwest",
				"Midwest",
				"Lower Midwest"
			]
		def region1 = regionNames.collect{name ->
			new Region(name:name).save()
		}[0]


        def job1 = new JobOpportunity(
            jobCode:'1',
            positionTitle:'Sr. Process Engineer',
            postedDate:new Date('6/13/2009'),
            salaryRange:'100,000-120,000',
            desiredSkills:'Mad Skillz',
            description:'blah blah blah',
            category: jobCat1,
            region: region1,
            visible:true).save()

        def job2 = new JobOpportunity(
            jobCode:'1',
            positionTitle:'Jr. Process Engineer',
            postedDate:new Date('7/1/2009'),
            salaryRange:'100,000-120,000',
            desiredSkills:'Mad Skillz',
            description:'blah blah blah',
            category: jobCat1,
            region: region1,
            visible:true).save()

        def job3 = new JobOpportunity(
            jobCode:'1',
            positionTitle:'Sr. Something Engineer',
            postedDate:new Date('5/20/2009'),
            salaryRange:'100,000-120,000',
            desiredSkills:'Mad Skillz',
            description:'blah blah blah',
            category: jobCat1,
            region: region1,
            visible:true).save()

        def job4 = new JobOpportunity(
            jobCode:'1',
            positionTitle:'Jr. Something Engineer',
            postedDate:new Date('6/20/2009'),
            salaryRange:'100,000-120,000',
            desiredSkills:'Mad Skillz',
            description:'blah blah blah',
            category: jobCat1,
            region: region1,
            visible:true).save()
*/
     }
     def destroy = {
     }
} 
