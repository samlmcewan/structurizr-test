workspace "Example workspace 5" "Example description 5 5" {

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
}