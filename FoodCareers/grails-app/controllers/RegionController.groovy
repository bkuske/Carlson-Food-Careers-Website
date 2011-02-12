class RegionController {
    static layout = 'admin'
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ regionInstanceList: Region.list( params ), regionInstanceTotal: Region.count() ]
    }

    def show = {
        def regionInstance = Region.get( params.id )

        if(!regionInstance) {
            flash.message = "Region not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ regionInstance : regionInstance ] }
    }

    def delete = {
        def regionInstance = Region.get( params.id )
        if(regionInstance) {
            try {
                regionInstance.delete(flush:true)
                flash.message = "Region ${params.id} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "Region ${params.id} could not be deleted"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "Region not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def regionInstance = Region.get( params.id )

        if(!regionInstance) {
            flash.message = "Region not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ regionInstance : regionInstance ]
        }
    }

    def update = {
        def regionInstance = Region.get( params.id )
        if(regionInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(regionInstance.version > version) {
                    
                    regionInstance.errors.rejectValue("version", "region.optimistic.locking.failure", "Another user has updated this Region while you were editing.")
                    render(view:'edit',model:[regionInstance:regionInstance])
                    return
                }
            }
            regionInstance.properties = params
            if(!regionInstance.hasErrors() && regionInstance.save()) {
                flash.message = "Region ${params.id} updated"
                redirect(action:show,id:regionInstance.id)
            }
            else {
                render(view:'edit',model:[regionInstance:regionInstance])
            }
        }
        else {
            flash.message = "Region not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def create = {
        def regionInstance = new Region()
        regionInstance.properties = params
        return ['regionInstance':regionInstance]
    }

    def save = {
        def regionInstance = new Region(params)
        if(!regionInstance.hasErrors() && regionInstance.save()) {
            flash.message = "Region ${regionInstance.id} created"
            redirect(action:show,id:regionInstance.id)
        }
        else {
            render(view:'create',model:[regionInstance:regionInstance])
        }
    }
}
