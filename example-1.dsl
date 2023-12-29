workspace "Example 1 1 1" "Example description 16" {

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