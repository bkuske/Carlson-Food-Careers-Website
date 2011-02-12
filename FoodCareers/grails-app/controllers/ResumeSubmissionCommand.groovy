import org.springframework.web.multipart.MultipartFile
public class ResumeSubmissionCommand {
	String name
	String email
	String phone
	String citizenStatus
	String positionCodes
	String currentSalary
	String minSalary
	String mostRecentBonus
	String specificCities
	String why
	String comments
	String[] regionOfInterest
	MultipartFile resume
	
	static constraints = {
		name(blank:false, nullable:false)
		email(email:true, blank:false, nullable:false)
		positionCodes(blank:false, nullable:false)
		resume(nullable:false, validator:{file, cmd ->
			List errorCodes = []
			if (file == null) {
				errorCodes << "null"
			} else {
				if (file.size <= 0) {
					errorCodes << "empty.file"
				} else {
					if (file.originalFilename){
						//TODO additional filename checking?
						def extensionMatcher = file.originalFilename =~ /.*\.(rtf|docx?)$/
						if (! extensionMatcher?.matches()){
							errorCodes << "wrong.extension"
						}
					} else {
						errorCodes << "invalid.filename"
					}
				}
			}
			return errorCodes ?: true
		})
	}

	public List<Region> getRegionsOfInterest(){
		if (regionOfInterest != null){
			return regionOfInterest.collect{ id -> Region.get(id) }.findAll{it} as List<Region>
		}
		return [] as List<Region>
	}
}