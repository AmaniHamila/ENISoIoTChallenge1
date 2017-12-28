package iot.challenge
import com.iotchallenge.models.Application
import org.springframework.security.access.annotation.Secured

@Secured(['ROLE_ADMIN'])
class ApplicationController {

    static layout = "main"


    def index() {
        redirect action : 'list'
    }

    @Secured(['permitAll'])
    def save() {

        Application application = new Application()

        application.teamName = params.teamName

        application.student1 = params.fullName1
        application.student2 = params.fullName2
        application.student3 = params.fullName3
        application.student4 = params.fullName4
        application.student5 = params.fullName5
        application.student6 = params.fullName6

        application.email1 = params.email1
        application.email2 = params.email2
        application.email3 = params.email3
        application.email4 = params.email4
        application.email5 = params.email5
        application.email6 = params.email6

        def f = request.getFile('cv')
        def webrootDir = servletContext.getRealPath("/") //app directory
        println "====="+ webrootDir

        String fileName = ""+ new Date().getTime()+ f.getOriginalFilename()

        File fileDest = new File(webrootDir+"/cv/${fileName}")
        f.transferTo(fileDest)

        application.cvPath = fileName

        if (application?.save(flush:true,failOnError:true) ){
            redirect action:"success", params: [application:application]
        }else {
            redirect action:"failure", params: [application:application]
        }
    }

    @Secured(['permitAll'])
    def success(){

    }

    @Secured(['permitAll'])
    def failure(){

    }


    def list(){
        def applications = Application.list()
        [applications:applications]
    }

}
