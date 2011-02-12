import org.springframework.mail.MailException
import org.codehaus.groovy.grails.commons.ConfigurationHolder

class ResumeController {
	def mailService
	
	def index = {
		ResumeSubmissionCommand cmd = new ResumeSubmissionCommand()
		cmd.positionCodes = params.jobCode
		[regions:Region.list(), cmd:cmd]
	}
	
	def submit = { ResumeSubmissionCommand cmd ->
		def email_to = ConfigurationHolder.getConfig().resumeEmail_to
		try {
			if (!cmd.hasErrors()){
				def returned = mailService.sendMail {
					multipart true
					to email_to
					from "resumemailer@foodcareers.com"
					replyTo cmd.email
					subject "Submitted Resume"
					attachBytes(cmd.resume.originalFilename, cmd.resume.contentType, cmd.resume.bytes as byte[])
					body( view:"resumeSubmittedEmail", model:[cmd:cmd] )
				}
				render (view:'thankyou', model:params)
				return
			}
		} catch (MailException me) {
			flash.error = "Error sending Email, Please try again later or contact us if the problem persists."
		} catch (Exception e) {
			println e
			flash.error = "Error Submitting Resume.  Please try again later or contact us if the problem persists."
		}
//		flash.error = "Test Error: Should be bright"
//		flash.message = "test message"
		render (view:'index',model:[regions:Region.list(), cmd:cmd])
		return
	}
}