workspace "Example 4 44 4 4 4" "Example description 4" {

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