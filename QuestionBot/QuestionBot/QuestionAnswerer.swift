struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        
        let lowerquestion = question.lowercased()
          
          if lowerquestion.hasPrefix("hello") {
              return "Why, hello there!"
          } else if lowerquestion.hasPrefix("where") {
              return "To the North!"
          } else if lowerquestion == "Where should I go on holiday?" {
              return "To the North!"
          } else if lowerquestion == ("Where are the cookies?") {
              return "In the cookie jar!"
          } else {
            
            let defaultNumber = question.count % 2
           
            if defaultNumber == 0 {
                return "Maybe"
            } else if defaultNumber == 1 {
                return "No you cannot"
            } else {
                return "Sorry, I don't understand"
            }
        }
    }
}
