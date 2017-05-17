//: [Previous](@previous) / [Next](@next)
//: # Exercise 2
//: ## Your goal
//: Reproduce this image:
//:
//: ![Undertones](Undertones.png "Undertones")
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

//Draw Background 
canvas.fillColor = Color.init(hue: 54, saturation: 8, brightness: 80, alpha: 100)
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)

//Draw Undertones
canvas.drawText(message: "undertones", size: 65, x: 15, y: 400,kerning: 2)

//Draw Create Blur
for x in stride(from: 1, through: -90, by: -3){
    canvas.rotate(by:x)
    canvas.textColor = Color.init(hue: 0, saturation: 0, brightness: 0, alpha: 120)
    canvas.drawText(message: "undertones", size: 65, x: 15, y: 400,kerning: 2)
}


//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
