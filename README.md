# SweetBubblesTransition 

![Preview](https://github.com/LucasGitHubz/SweetBubblesTransition/blob/master/Demo/demoBubble)

SweetBubblesTransition is a transition written in swift, based on the adding of child Controllers. It's a sweet animation with bubbles giving unexpected experience to your user. Bubbles make your life better !

<p align="left">
    <a href="https://cocoapods.org/pods/SweetBubblesTransition" target="_blank"><img src="https://img.shields.io/cocoapods/v/SweetBubblesTransition.svg?style=flat" alt="Cocoapods version" /></a>
    <a href="http://cocoapods.org/pods/SweetBubblesTransition" target="_blank"><img src="https://img.shields.io/cocoapods/l/SweetBubblesTransition.svg?style=flat" alt="Cocoapods licence" /></a>
    <a href="http://cocoapods.org/pods/SweetBubblesTransition" target="_blank"><img src="https://img.shields.io/cocoapods/p/SweetBubblesTransition.svg?style=flat" alt="Cocoapods plateform" /></a>
 <a href="http://cocoapods.org/pods/SweetBubblesTransition" target="_blank"><img src="https://img.shields.io/badge/Swift-5-orange" alt="Language: Swift 5"/></a>
</p>

## Installation

SweetBubblesTransition is available through [CocoaPods](http://cocoapods.org). 
To integrate SweetBubblesTransition into your Xcode project using Cocoapods, specify it in your Podfile:

```ruby
pod 'SweetBubblesTransition'
```

## Usage

This transition used the Reusable library, made by [AliSoftware](https://github.com/AliSoftware/Reusable).

In fact, to understand it, we'll make a superposition.

From your first ViewController we will add the ViewController that you want to tristion to (called VC2) and add on top the BubbleViewController (which will make the transition).

Finally we make the VC2 visible and remove the BubbleVC.
That's it !

To do it we'll used the StoryBased method, let's take a look at the procedure:

1. First of all, we'll assume that you just create your project and so you have the Mainstoryboard + one ViewController by default. We will call it the VC1 for the rest of the explanations.

2. Create a new Storyboard called ViewController2 (for exemple) and add to it a new ViewController called by the same name (really important) ViewController2.
Now we have VC2 and don't forget to add to it a its own class:
         
```swift
// We have to import Reusable
import UIKit
import Reusable

// And add to it the StoryboardBased protocol
class ViewController2: UIViewController, StoryboardBased {
}
```

3. That's it for the VC2! Now go to the VC1 swift file and do this:

```swift
// Now we can add here SweetBubblesTransition
import UIKit
import SweetBubblesTransition

// Change your VC1's type by AnimationController
class ViewController: AnimationController {
    // You have to instantiate your VC2 by using the method .instantiate() (thanks again to Reusable).
    private let viewController2 = ViewController2.instantiate()

    // Now for this exemple I just create a button on the VC1, and assign it the following function
    @IBAction func change(_ sender: Any) {
        // ------------------------------- PARAMETERS INDICATIONS -------------------------------
        // 1. 'to' means the VC you want to transition to 
        // 2. 'animation' is the time of the transition. If you choose 2, for exemple, that means the VC2 will appear in two seconds.
        // 3. 'bubbleController' is the time you want to remove the BubbleViewController
        // Personnally I think 3sec for the animation and 2.5sec to delete the BubbleVC is the perfect timing, but feel free to make your own opinion !
        startTransition(to: viewController2, animation: 3, bubbleController: 2.5)
    }
}
```

4. Enjoy !!

## Requirements

* iOS 10.0+ target deployment
* Swift 5

## Communication

- If you **need help**, open an issue.
- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.

## Author

Lucas Amelin, lucasamelin14@gmail.com

## License

This code is distributed under the MIT license. See the [License](LICENSE) file for more info.



