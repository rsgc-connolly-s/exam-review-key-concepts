//: [Previous](@previous) / [Next](@next)
//: # Exercise 3
//: ## Your goal
//: Reproduce this image:
//:
//: ![The Runaways](TheRunaways.png "The Runaways")
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

//make background
canvas.drawShapesWithBorders = false
canvas.fillColor = Color.init(hue: 337, saturation: 91, brightness: 100, alpha: 100)
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)

//Draw black rectangles 
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 10
canvas.borderColor = Color.black

    //draw top right
    for x in stride(from: 0, through: 360, by: 90){
        canvas.drawRectangle(centreX: 0, centreY: 400, width: x, height: x)
    }

    //draw bottom right
    for x in stride(from: 0, through: 360, by: 90){
        canvas.drawRectangle(centreX: 0, centreY: 0, width: x, height: x)
    }

    //draw bottom left
    for x in stride(from: 0, through: 360, by: 90){
        canvas.drawRectangle(centreX: 400, centreY: 0, width: x, height: x)
    }

    //draw top left
    for x in stride(from: 0, through: 360, by: 90){
        canvas.drawRectangle(centreX: 400, centreY: 400, width: x, height: x)
    }

//draw white rectangles 
canvas.borderColor = Color.white

    //draw top right
    for x in stride(from: 135, through: 360, by: 90){
        canvas.drawRectangle(centreX: 0, centreY: 400, width: x, height: x)
    }

    //draw bottom right
    for x in stride(from: 135, through: 360, by: 90){
        canvas.drawRectangle(centreX: 0, centreY: 0, width: x, height: x)
    }

    //draw bottom left
    for x in stride(from: 135, through: 360, by: 90){
        canvas.drawRectangle(centreX: 400, centreY: 0, width: x, height: x)
    }

    //draw top left
    for x in stride(from: 135, through: 360, by: 90){
        canvas.drawRectangle(centreX: 400, centreY: 400, width: x, height: x)
    }

//draw cover up
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = Color.init(hue: 337, saturation: 91, brightness: 100, alpha: 100)
canvas.drawRectangle(centreX: 200, centreY: 500, width: 400, height: 200)

//Draw Title
canvas.textColor = Color.white
canvas.drawText(message: "the runways", size: 50, x: 25, y: 410)

//left info
canvas.textColor = Color.black
canvas.drawText(message: "friday", size: 10, x: 15, y: 550)
canvas.drawText(message: "august 19 1977", size: 10, x: 15, y: 535)
canvas.drawText(message: "tickets $4.50", size: 10, x: 15, y: 515)

//middle info
canvas.drawText(message: "with", size: 10, x: 150, y: 550)
canvas.drawText(message: "special guests", size: 10, x: 150, y: 535)
canvas.drawText(message: "wolfgang", size: 10, x: 150, y: 515)


//rigth info
canvas.drawText(message: "at ben h. lewis hall", size: 10, x: 300, y: 550)
canvas.drawText(message: "3443 orange st.", size: 10, x: 300, y: 535)
canvas.drawText(message: "riverside california", size: 10, x: 300, y: 515)
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
