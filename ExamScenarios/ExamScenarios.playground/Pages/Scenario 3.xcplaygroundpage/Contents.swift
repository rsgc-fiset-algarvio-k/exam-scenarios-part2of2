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
canvas.drawShapesWithBorders = false
let grey = Color(hue: 82, saturation: 8, brightness: 88, alpha: 100)
let yellow = Color(hue: 49, saturation: 100, brightness: 100, alpha: 100)
let orange = Color(hue: 16, saturation: 94, brightness: 95, alpha: 100)
canvas.fillColor = grey
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 200, width: 400, height: 400)
canvas.fillColor = yellow
var points : [NSPoint] = []
points.append(NSPoint(x: 0, y: 200))
points.append(NSPoint(x: 400, y: 200))
points.append(NSPoint(x: 400, y: 600))
canvas.drawCustomShape(with: points)

canvas.fillColor = orange
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 200)

let a : CGFloat = 400.0/9.0
for x in stride(from: CGFloat(0), through: CGFloat(400), by: a) {
    for y in stride(from: CGFloat(600), through: CGFloat(200), by: -a) {
        
        var points : [NSPoint] = []
        points.append(NSPoint(x: CGFloat(x), y: CGFloat(y)))
        points.append(NSPoint(x: CGFloat(x), y: CGFloat(y) + a))
        points.append(NSPoint(x: CGFloat(x) + a, y: CGFloat(y) + a))
        canvas.drawCustomShape(with: points)
    }
}
canvas.textColor = grey
canvas.drawText(message: "talking heads", size: 40, x: 20, y: 140)
canvas.drawText(message: "friday, saturday, sunday", size: 9, x: 20, y: 30, kerning: -1)
canvas.drawText(message: "september 12, 13, 14, 1975", size: 9, x: 20, y: 15, kerning: -1)
canvas.drawText(message: "at cbgb and omfug", size: 9, x: 140, y: 30, kerning: -1)
canvas.drawText(message: "315 bowery, new york city", size: 9, x: 140, y: 15, kerning: -1)
canvas.drawText(message: "also appearing:", size: 9, x: 285, y: 30, kerning: -1)
canvas.drawText(message: "from brooklyn, the shirts", size: 9, x: 285, y: 15, kerning: -1)
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
