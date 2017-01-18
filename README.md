# Code Togather: Let's make iPhone app in an hour

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/dictionaryApp-en/blob/master/Resourses/sample.gif" /></div>
  
  Thank you for visiting our account. We are going to make a simple photo frame app in an hour. If would you like to study yourself before hands-on, or review what you have learned in the session, please use the following material.
  
## We are providing free hands-on on a monthly basis
  Meetup  
  https://www.meetup.com/iOS-Development-Meetup-for-Beginner/
  
## We also hold face-to-face or group lesson for indivisual interested in making iOS app themselves
  http://ios-class-for-beginner.esy.es/

## Development Environment
  XCode 8.2 / Swift 3

## Full procedure

#### 0, Create your project

> 0-1. Open XCode  
  
> 0-2. Select "Create a new XCode project"
  
> 0-3. Select "Single View Application" and then tap "Next"
  
> 0-4. Fill "Product name" and then tap "Next"
  
> 0-5. Select the place for saving your project and then tap "Create"

#### 1, Design app
> 2-1. Drap & Drop "UITextField" from UI components
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/dictionaryApp-en/blob/master/Resourses/0.gif" /></div>

> 2-2. Resize TextField
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/dictionaryApp-en/blob/master/Resourses/1.gif" /></div>

> 2-3. Set "Autoresizing" for adjusting frame depending on devices
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/dictionaryApp-en/blob/master/Resourses/2.gif" /></div>

> 2-4. Connect UI components on Storyboard to ViewController.swift
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/dictionaryApp-en/blob/master/Resourses/3.gif" /></div>

#### 3, Add code blocks in ViewController.swift
  ★It's preferable to write following code yourself. It will help you to understand code more.
  
```Swift  
import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    @IBOutlet var myTextField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        // Add delegate to the text field so that the "textFieldShouldReturn" method will be triggered
        myTextField.delegate = self
        
        // place folder
        myTextField.placeholder = "Word..."
        
        // Change return key type to search
        myTextField.returnKeyType = .search
        
        // Show the keyboard
        myTextField.becomeFirstResponder()
    }
    
    // UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        // Come up dictionary view
        let rv = UIReferenceLibraryViewController(term: "\(textField.text ?? "")")
        self.present(rv, animated: false, completion: nil)
        
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
```
