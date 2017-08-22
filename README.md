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

ScreenShot of 5s simulator also this code supports in all iPhone screen size:


![simulator screen shot aug 21 2017 10 46 48 pm](https://user-images.githubusercontent.com/31231485/29548086-ba557100-86c3-11e7-8b27-8089ee77ef23.png)

