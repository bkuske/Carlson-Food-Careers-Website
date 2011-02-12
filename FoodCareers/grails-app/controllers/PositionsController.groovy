class PositionsController {

    def index = {
        redirect(action:"list")
    }

    def list = {
        
        [categories:JobCategory.list()]
    }

    def category = {
        def category = JobCategory.get(params.id)
        [category:category, jobs:JobOpportunity.findAllByCategoryAndVisible(category, true), categories:JobCategory.list()]
    }

    def job = {
        def job = JobOpportunity.get(params.id)
        def category = JobCategory.get(job.category.id)
        def categories = JobCategory.list();
        [category:category, job:job, categories:categories]
    }


}
