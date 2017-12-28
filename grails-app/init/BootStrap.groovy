import com.iotchallenge.models.Role
import com.iotchallenge.models.User
import com.iotchallenge.models.UserRole

class BootStrap {

    def init = { servletContext ->
        User admin = User.findByUsername("admin") ?: new User(username:"admin",
					password:"coldfireeniso")?.save(flush:true ,failOnError:true)

        Role roleAdmin = Role.findByAuthority('ROLE_ADMIN') ?: new Role("ROLE_ADMIN")?.save(flush:true ,failOnError:true)

        UserRole adminRoleAssign = UserRole.findByUserAndRole(admin,roleAdmin) ?: new UserRole(user:admin,
					role: roleAdmin)?.save(flush:true ,failOnError:true)

    }
    def destroy = {
    }
}
