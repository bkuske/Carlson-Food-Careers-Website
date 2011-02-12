

class JobOpportunityController {
    static layout = 'admin'
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ jobOpportunityInstanceList: JobOpportunity.list( params ), jobOpportunityInstanceTotal: JobOpportunity.count() ]
    }

    def show = {
        def jobOpportunityInstance = JobOpportunity.get( params.id )

        if(!jobOpportunityInstance) {
            flash.message = "JobOpportunity not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ jobOpportunityInstance : jobOpportunityInstance ] }
    }

    def delete = {
        def jobOpportunityInstance = JobOpportunity.get( params.id )
        if(jobOpportunityInstance) {
            try {
                jobOpportunityInstance.delete(flush:true)
                flash.message = "JobOpportunity ${params.positionTitle} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "JobOpportunity ${params.positionTitle} could not be deleted"
                redirect(action:edit,id:params.id)
            }
        }
        else {
            flash.message = "JobOpportunity not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def jobOpportunityInstance = JobOpportunity.get( params.id )

        if(!jobOpportunityInstance) {
            flash.message = "JobOpportunity not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ jobOpportunityInstance : jobOpportunityInstance ]
        }
    }

    def update = {
        def jobOpportunityInstance = JobOpportunity.get( params.id )
        if(jobOpportunityInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(jobOpportunityInstance.version > version) {
                    
                    jobOpportunityInstance.errors.rejectValue("version", "jobOpportunity.optimistic.locking.failure", "Another user has updated this JobOpportunity while you were editing.")
                    render(view:'edit',model:[jobOpportunityInstance:jobOpportunityInstance])
                    return
                }
            }
            jobOpportunityInstance.properties = params
            if(!jobOpportunityInstance.hasErrors() && jobOpportunityInstance.save()) {
                flash.message = "JobOpportunity ${params.positionTitle} updated"
                redirect(action:edit,id:jobOpportunityInstance.id)
            }
            else {
                render(view:'edit',model:[jobOpportunityInstance:jobOpportunityInstance])
            }
        }
        else {
            flash.message = "JobOpportunity not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def create = {
        def jobOpportunityInstance = new JobOpportunity()
        jobOpportunityInstance.properties = params
        return ['jobOpportunityInstance':jobOpportunityInstance]
    }

    def save = {
        def jobOpportunityInstance = new JobOpportunity(params)
        if(!jobOpportunityInstance.hasErrors() && jobOpportunityInstance.save()) {
            flash.message = "JobOpportunity ${jobOpportunityInstance.id} created"
            redirect(action:edit,id:jobOpportunityInstance.id)
        }
        else {
            render(view:'create',model:[jobOpportunityInstance:jobOpportunityInstance])
        }
    }
}
