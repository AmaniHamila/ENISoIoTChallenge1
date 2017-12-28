package iot.challenge
import org.springframework.security.access.annotation.Secured

/**
 * Created by hamila on 23/03/16.
 */
@Secured('permitAll')
class HomeController {

    static layout = "main"

    def index() {
        //render "Hello World!"
    }

}
