workspace "Example workspace 33333345678912345678912345678917" "Example description 3" {

    model {
        user = person "User"
        softwareSystem = softwareSystem "Software System" {
            // adding container elements to software system 
            webapp = container "Web Application"
            database = container "Database"
        }
        // redefining relationships with new elements
        user -> webapp "Uses"
        webapp -> database "Reads from and writes to"
    }

    views {
        theme default
    }

}