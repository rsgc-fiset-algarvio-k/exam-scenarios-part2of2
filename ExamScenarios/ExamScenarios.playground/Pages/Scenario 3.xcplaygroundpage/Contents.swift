//: [Next](@next)
//: # Scenario 3
//: ## Your goal
//: Reproduce this image:
//:
//: ![Talking Heads](TalkingHeads.png "Talking Heads")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
canvas.fillColor = Color.orange

canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)
for x in stride(from: 0, through: 400-400/9, by: 400/9) {
    for y in stride(from: 200, through: 600-400/9, by: 400/9) {
        if x - y >= -200 {
            canvas.fillColor = Color.yellow
        } else {
            canvas.fillColor = Color(hue: 1, saturation: 0, brightness: 80, alpha: 100)
        }
    var points : [NSPoint] = []
    points.append(NSPoint(x: x, y: y))
    points.append(NSPoint(x: x + 400/9, y: y))
    points.append(NSPoint(x: x + 400/9, y: y + 400/9))
    canvas.drawCustomShape(with: points)
    }
}
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
