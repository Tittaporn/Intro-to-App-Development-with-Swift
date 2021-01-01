/*:
 ## Boogie Workshop
 
 This page is here for you to create your own routines.
 
 Remember the moves:
 
 - `leftArmUp()`, `leftArmDown()`, `rightArmUp()`, `rightArmDown()`
 - `leftLegUp()`, `leftLegDown()`, `rightLegUp()`, `rightLegDown()`
 - `shakeItLeft()`, `shakeItRight()`, `shakeItCenter()`
 - `jumpUp()`, `jumpDown()`
 - `fabulize()`, `defabulize()`
 
 To sign your work:
 
 `setBotTitle("My Awesome Dance")`\
 `setBotSubtitle("By The Boogiemaster")`
 */
startBot()
startRecording()
setBotTitle("Hand Leg Dance")
setBotSubtitle("By Lee McCormick.")

func handDance(){
    leftArmUp()
    rightArmUp()
    leftArmDown()
    rightArmDown()
    leftLegUp()
}

func legDance() {
    leftLegUp()
    rightLegUp()
    leftLegDown()
    shakeItLeft()
    rightLegDown()
    shakeItRight()
}

handDance()
legDance()
handDance()
legDance()
defabulize()








//: Continue with your creativity.
//:
//:[Previous](@previous)  |  page 12 of 13  |  [Next: Boogie Workshop](@next)
