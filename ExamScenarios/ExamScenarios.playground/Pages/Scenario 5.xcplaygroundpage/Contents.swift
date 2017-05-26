//: [Previous](@previous)
//: # Scenario 5
//: ## Your goal
//: Reproduce this image:
//:
//: ![Velvet Underground](VelvetUnderground.png "Velvet Underground")
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
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = Color.black
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)
let a : Float = 200 / 3
let grey = Color(hue: 0, saturation: 0, brightness: 90, alpha: 100)
for x in stride(from: 0, through: 400 - a, by: a) {
    for y in stride(from: 0, through: 400 - a, by: a) {
        if x == y {
            canvas.fillColor = grey
            canvas.lineColor = grey
        } else {
            canvas.fillColor = Color.purple
            canvas.lineColor = Color.purple
        }
    canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 45, height: 45)
    canvas.fillColor = Color.black
    canvas.drawRectangle(bottomLeftX: x + 15, bottomLeftY: y + 15, width: 31, height: 31)
    canvas.defaultLineWidth = 15
    canvas.drawLine(fromX: x + 11, fromY: y + 11, toX: x + 45, toY: y + 45)
    }
}
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
