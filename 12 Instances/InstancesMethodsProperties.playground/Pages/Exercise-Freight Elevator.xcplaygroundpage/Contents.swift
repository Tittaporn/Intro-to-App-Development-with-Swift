/*:
 ## Exercise: Treehouse Pulley
 
 In this exercise, you're using code to decide whether it's safe to add items to a basket that will be delivered to your treehouse by a pulley.
 
 - callout(Exercise):
 Create three constants for items of different weights that you'd like to bring up to your fort: one less than 100, one between 100 and 1000, and one over 1000.
 */
let weightsOne = 99
let weightsTwo = 986
let weightsThree = 1345




/*:
 - callout(Exercise):
 A lightweight treehouse pulley is already created below. But you've decided that you want to be able to lift, say, a small horse or piano up to your fort, so you’re installing a second pulley with a much bigger basket.\
 Create a second pulley that has a higher capacity and can hold at least ten times the weight of the `ricketyRope`.
 */

var ricketyRope = TreehousePulley(weightCapacity: 200)
var secondPulley =  TreehousePulley(weightCapacity: 2000)
var anotherPulley =  TreehousePulley(weightCapacity: 2000)
secondPulley.addLoadToBasket(loadWeight: weightsOne)
secondPulley.canHandleAdditionalLoad(weightsTwo)
secondPulley.addLoadToBasket(loadWeight: weightsTwo)
secondPulley.canHandleAdditionalLoad(weightsThree)
anotherPulley.canHandleAdditionalLoad(weightsThree)
anotherPulley.addLoadToBasket(loadWeight: weightsThree)

/*:
 - callout(Exercise):
 Use the `TreehousePulley` type's `addLoadToBasket` method to add the items you defined above. Add three of the lightest item, two of the middle-weight item, and one of the heaviest item. Add the items to the lightweight pulley first, using the `canHandleAdditionalLoad` method to check whether the item would overload the pulley, then move on to your stronger pulley when the first is fully loaded.\
 If your pulleys together aren't enough to hold all the items you need, create a third super heavy-duty pulley to finish the job.

[Previous](@previous)  |  page 16 of 17  |  [Next: Exercise: Identity](@next)
 */