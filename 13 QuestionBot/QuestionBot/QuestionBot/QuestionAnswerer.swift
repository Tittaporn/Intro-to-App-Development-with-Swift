struct MyQuestionAnswerer {
    
    func responseTo(question: String) -> String {
        
        let lowerQuestion = question.lowercased()
        
        if lowerQuestion == "where are the cookies?" {
            return "In the cookie jar!"
        } else if lowerQuestion.hasPrefix("where") {
            return "To the North!"
        } else if lowerQuestion.hasPrefix("hello") {
            return "Why, hello there"
        } else if lowerQuestion.hasPrefix("who") {
            return "Bobie Bot"
        } else if lowerQuestion.hasPrefix("what") {
            return "a cat"
        } else if lowerQuestion.hasPrefix("why") {
            return "I don't know why, may be it is fun thay why."
        } else if lowerQuestion.hasPrefix("how") {
            return "first of all, get dresses and take a deep breath."
        } else {
            let defaultNumber = question.count % 3
            
            if defaultNumber == 0 {
                return "That really depends"
            } else if defaultNumber == 1 {
                return "Ask me again tomorrow"
            } else if defaultNumber == 3 {
                return "I am not sure that is possible."
            } else {
                return "What did you said?"
            }
            
        }
        
    }
}
