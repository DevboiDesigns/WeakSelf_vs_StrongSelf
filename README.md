# Weak self vs Strong self
* how memory is managed for objects 

## Strong 
* directly point to each other 
* 1 to 1 reference 
* cyclical 
* one can not go away with out both leaving so always available 


# Weak 
* 0 to 1 reference 
* Parent retains strong reference to child 
* Child has weak reference to parent
* if parent leaves so does child view 


**When referencing back to parent object, best practice to release the child object with weak reference to self**
* anything weak has to have a strong ref

*can unwrap weak self to strong and still retain memory managemtn*

```swift

```