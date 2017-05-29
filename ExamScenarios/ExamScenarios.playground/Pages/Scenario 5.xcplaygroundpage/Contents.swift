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
let a : Float = 206 / 3
let grey = Color(hue: 87, saturation: 4, brightness: 89, alpha: 100)
let pink = Color(hue: 309, saturation: 78, brightness: 64, alpha: 100)
for x in stride(from: 0, through: (Float) (400), by: a) {
    for y in stride(from: 0, through: (Float) (400), by: a) {
        if x == y {
            canvas.fillColor = grey
            canvas.lineColor = grey
        } else {
            canvas.fillColor = pink
            canvas.lineColor = pink
        }
    canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 42, height: 42)
    canvas.fillColor = Color.black
    canvas.drawRectangle(bottomLeftX: x + 15, bottomLeftY: y + 15, width: 31, height: 31)
    canvas.defaultLineWidth = 15
    canvas.drawLine(fromX: x + 11, fromY: y + 11, toX: x + 45, toY: y + 45)
    }
}
canvas.textColor = grey
canvas.drawText(message: "the velvet underground", size: 29, x: 10, y: 410, kerning: -2)
canvas.fillColor = grey
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 450, width: 400, height: 1)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 570, width: 400, height: 1)
canvas.drawText(message: "first appearance in london", size: 9, x: 10, y: 550, kerning: -1)
canvas.drawText(message: "the london college of printing", size: 9, x: 10, y: 540, kerning: -1)
canvas.drawText(message: "with spring and pollyflocskin", size: 9, x: 130, y: 550, kerning: -1)
canvas.drawText(message: "plus the great western light show", size: 9, x: 130, y: 540, kerning: -1)
canvas.drawText(message: "thursday", size: 9, x: 270, y: 550, kerning: -1)
canvas.drawText(message: "october 14 1971 / 8 pm", size: 9, x: 270, y: 540, kerning: -1)
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
