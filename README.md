This project demonstrates a simple animation done in Swift3.

Clone or download this project.

I have tried to follow best coding practice, so instead of coding everything in a single class. I have divided the project into:
 1. Controllers
 2. Views
 3. Helpers. 

 As there is no data currently in project thats why there is no model.

After running the application, drag the view left, right top and bottom. Then leaving the view, animates it to original position. 
This is achieved by the use of UIPanGestureRecognizer.

If you navigate through the project folder, you will not find storyboard. I have deleted it and also removed its reference from project by following step:
	Go To: Target -> General -> Development Info -> Main Interface

		Remove Main or storyboard name from Main Interface

After deleting the storyboard, from AppDelegate create window and initialize a rootviewcontroller. This is the main entry point of the application.

In view controller, view is created by the use of frame which is more useful than using storyboard for creating different screen sizes.


