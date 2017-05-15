//: [Previous](@previous) / [Next](@next)
//: # Sequence, part 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 Attempt to reproduce this image:
 
 ![Panda](panda.png "Panda")
 */
// Create the canvas
let canvas = Canvas(width: 300, height: 300)

// Draw panda main body
canvas.fillColor = Color.white
canvas.borderColor = Color.black
canvas.defaultBorderWidth = 2
canvas.drawEllipse(centreX: canvas.width / 2, centreY: canvas.height / 2, width: 100, height: 100)

// Draw head 
canvas.drawEllipse(centreX: canvas.width / 2, centreY: canvas.height / 2 + 50, width: 75, height: 75)

// draw arms 
canvas.fillColor = Color.black
canvas.drawEllipse(centreX: 115, centreY: 115, width: 25, height: 25)

canvas.drawEllipse(centreX: 115-5, centreY: 115+60, width: 25, height: 25)

canvas.drawEllipse(centreX: 115+70, centreY: 115, width: 25, height: 25)

canvas.drawEllipse(centreX: 115+75, centreY: 115+60, width: 25, height: 25)

//Draw Ears
canvas.drawEllipse(centreX: 125, centreY: 235, width: 25, height: 25)

canvas.drawEllipse(centreX: 125 + 50, centreY: 235, width: 25, height: 25)

//Draw outer eye
canvas.fillColor = Color.white

canvas.drawEllipse(centreX: canvas.width / 2 + 10, centreY: 215, width: 15, height: 20)

canvas.drawEllipse(centreX: canvas.width / 2 - 10, centreY: 215, width: 15, height: 20)

//Draw inner eye 
canvas.fillColor = Color.black

canvas.drawEllipse(centreX: canvas.width / 2 + 10, centreY: 210, width: 10, height: 10)

canvas.drawEllipse(centreX: canvas.width / 2 - 10, centreY: 210, width: 10, height: 10)

//Draw black of Mouth
canvas.drawEllipse(centreX: canvas.width / 2, centreY: 180, width: 40, height: 20)

//cover half of mouth 
canvas.fillColor = Color.white
canvas.borderColor = Color.white
canvas.drawEllipse(centreX: canvas.width / 2, centreY: 185, width: 45, height: 20)
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
