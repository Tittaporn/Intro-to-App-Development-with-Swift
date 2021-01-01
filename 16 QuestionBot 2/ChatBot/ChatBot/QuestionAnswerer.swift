struct QuestionAnswerer {
    /// Creates a String in response to another String.
    func responseTo(question: String) -> String {
        let lowerQuestion = question.lowercased()
        
        if lowerQuestion.hasPrefix("hello") {
            return "Why, hello there!"
        } else if lowerQuestion == ("how are you?") {
            return "I am doing good."
        } else if lowerQuestion == "where are the cookies?" {
            return "In the cookie jar!"
        } else if lowerQuestion.hasPrefix("where") {
            return "Thailand, the land of smile.!"
        } else if lowerQuestion.hasPrefix("what"){
            return "Something awesomes."
        } else if lowerQuestion.hasPrefix("who"){
            return "only you can do it."
        } else if lowerQuestion.hasPrefix("how"){
            return "first of all, try your best. if it is not better, try another time."
        } else {
            let defaultNumber = question.count % 3
            
            if defaultNumber == 0 {
                return "That really depends"
            } else if defaultNumber == 1 {
                return "I think so, yes"
            } else {
                return "Ask me again tomorrow"
            }
        }
    }
}
