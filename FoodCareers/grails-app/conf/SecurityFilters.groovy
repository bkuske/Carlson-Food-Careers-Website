class SecurityFilters {
    def filters = {
        // Ensure that all controllers and actions require an authenticated user,
        // except for the "public" controller
        auth(controller: "(page|positions|resume)", action: "*") {
            before = {
                // Exclude the "public" controller.
                return true

            }
        }

        // Creating, modifying, or deleting a book requires the "Administrator"
        // role.
        admin(controller: "(admin|jobCategory|jobOpportunity|region)", action: "*")
        {
            before = {
                accessControl {
                    role("Administrator")
                }
            }
        }
    }
}