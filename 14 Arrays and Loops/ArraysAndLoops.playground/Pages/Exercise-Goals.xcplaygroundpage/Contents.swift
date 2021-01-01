/*:
 ## Exercise: Goals

Think of a goal of yours that can be measured in progress every day, whether it’s minutes spent exercising, number of photos sent to friends, hours spent sleeping, or number words written for your novel.

 - callout(Exercise): Create an array literal with 20 to 25 items of sample data for your daily activity. It may be something like `let milesBiked = [3, 7.5, 0, 0, 17 ... ]` Feel free to make up or embellish the numbers, but make sure you have entries that are above, below and exactly at the goal you've thought of. _Hint: Make sure to choose the right kind of array for your data, whether `[Double]` or `[Int]`._
*/
let milesRun = [1.3,1.2,1.1,2.1,2.2,1.2,7.6,4.3,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,2.1,2.3,3.1,5.1,3.4,1.2,3.3]
milesRun.count
//: - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
func runningGoal(dailyNumber: Double) -> String {
    if dailyNumber < 1.0 {
        return "You are not doing anything today."
    } else if dailyNumber < 1.5 {
        return "You are jogging to the park."
    } else if dailyNumber < 2.0 {
        return "You are doing something great for your life."
    } else if dailyNumber < 3.0 {
        return "You are so awesome, runner go."
    } else {
        return "You are ready for marathon next year."
    }
}


//: - callout(Exercise): Write a `for…in` loop that loops over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
for mile in milesRun {
   let runningActivity = runningGoal(dailyNumber: mile)
    print(runningActivity)
}




//: [Previous](@previous)  |  page 16 of 17  |  [Next: Exercise: Screening Messages](@next)
