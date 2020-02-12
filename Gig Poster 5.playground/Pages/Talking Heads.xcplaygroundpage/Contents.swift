//: # Gig Poster 5
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![talking-heads-no-grid](talking-heads-no-grid.png "Talking Heads")
 ![talking-heads-with-grid](talking-heads-with-grid.png "Talking Heads")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * arrays (a data structure that stores related pieces of information)
 * use of arithmetic operators in expressions

 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 
 ## Use Source Control
 
 To create evidence that supports your case for exceeding expectations for thread 3:

 * You *must* commit and push regularly ... *not* just at the end of this task.

 * You *must* complete your work prior to 3:30 PM on Wednesday, February 12, 2020.
 
 Good luck! You've got this! 👊🏻👊🏼👊🏽👊🏾👊🏿
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let deepOrange = Color(hue: 8, saturation: 78, brightness: 93, alpha: 100)
let offWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let brightYellow = Color(hue: 46, saturation: 71, brightness: 98, alpha: 100)

// Begin your solution here...
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false

//Make background orange
canvas.fillColor = deepOrange

canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//Draw the yellow and grey triangle so I can overlay it with orange triangles
canvas.fillColor = brightYellow

var TriangleVertices1: [Point] = []
TriangleVertices1.append(Point(x: 0, y: 200))
TriangleVertices1.append(Point(x: 400, y: 600))
TriangleVertices1.append(Point(x: 400, y: 200))

canvas.drawCustomShape(with: TriangleVertices1)

//Drawing the grey triangle

canvas.fillColor = offWhite

var TriangleVertices2: [Point] = []
TriangleVertices2.append(Point(x: 0, y: 200))
TriangleVertices2.append(Point(x: 400, y: 600))
TriangleVertices2.append(Point(x: 0, y: 600))

canvas.drawCustomShape(with: TriangleVertices2)

//Define small triangles and make a loop to cover the top with orange triangles
canvas.fillColor = deepOrange

for x in stride(from: 0, to: 400, by: 400/9.1) {
    for y in stride(from: 200, to: 600, by: 400/9.1) {
        
        var SmallTriangleVertices: [Point] = []
        SmallTriangleVertices.append(Point(x: x, y: y))
        SmallTriangleVertices.append(Point(x: x + 400/9.1, y: y + 400/9.1))
        SmallTriangleVertices.append(Point(x: x, y: y + 400/9.1))
        
        canvas.drawCustomShape(with: SmallTriangleVertices)
    }
}


/*:
 ## Use Source Control
 
 To create evidence that supports your case for exceeding expectations for thread 3:

 * You *must* commit and push regularly ... *not* just at the end of this task.

 * You *must* complete your work prior to 3:30 PM on Wednesday, February 12, 2020.


 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

