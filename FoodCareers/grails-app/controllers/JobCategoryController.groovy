class JobCategoryController {
    static layout = 'admin'
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ jobCategoryInstanceList: JobCategory.list( params ), jobCategoryInstanceTotal: JobCategory.count() ]
    }

    def show = {
        def jobCategoryInstance = JobCategory.get( params.id )

        if(!jobCategoryInstance) {
            flash.message = "JobCategory not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ jobCategoryInstance : jobCategoryInstance ] }
    }

    def delete = {
        def jobCategoryInstance = JobCategory.get( params.id )
        if(jobCategoryInstance) {
            try {
                jobCategoryInstance.delete(flush:true)
                flash.message = "JobCategory ${params.id} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "JobCategory ${params.id} could not be deleted"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "JobCategory not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def jobCategoryInstance = JobCategory.get( params.id )

        if(!jobCategoryInstance) {
            flash.message = "JobCategory not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ jobCategoryInstance : jobCategoryInstance ]
        }
    }

    def update = {
        def jobCategoryInstance = JobCategory.get( params.id )
        if(jobCategoryInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(jobCategoryInstance.version > version) {
                    
                    jobCategoryInstance.errors.rejectValue("version", "jobCategory.optimistic.locking.failure", "Another user has updated this JobCategory while you were editing.")
                    render(view:'edit',model:[jobCategoryInstance:jobCategoryInstance])
                    return
                }
            }
            jobCategoryInstance.properties = params
            if(!jobCategoryInstance.hasErrors() && jobCategoryInstance.save()) {
                flash.message = "JobCategory ${params.id} updated"
                redirect(action:show,id:jobCategoryInstance.id)
            }
            else {
                render(view:'edit',model:[jobCategoryInstance:jobCategoryInstance])
            }
        }
        else {
            flash.message = "JobCategory not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def create = {
        def jobCategoryInstance = new JobCategory()
        jobCategoryInstance.properties = params
        return ['jobCategoryInstance':jobCategoryInstance]
    }

    def save = {
        def jobCategoryInstance = new JobCategory(params)
        if(!jobCategoryInstance.hasErrors() && jobCategoryInstance.save()) {
            flash.message = "JobCategory ${jobCategoryInstance.id} created"
            redirect(action:show,id:jobCategoryInstance.id)
        }
        else {
            render(view:'create',model:[jobCategoryInstance:jobCategoryInstance])
        }
    }
}
