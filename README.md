# The curious case of the disappearing NSButton title
Demonstrating a [problem](http://stackoverflow.com/questions/37334888/reduce-transparency-setting-in-os-x-makes-white-text-in-nsbutton-in-popover-disa) with `NSButton`'s title not showing up when the text color is white, the button is in a popover that also contains a `WebView` with `drawsBackground` set to `NO`, and Reduce Transparency is on.

Steps:

 - Make sure Reduce Transparency is off in System Preferences -> Accessibility
 - Run the project, press the Press Me button, and note the button with visible white text in the lower left corner of the popover
 - Stop the project
 - Enable Reduce Transparancy in System Preferences -> Accessibility
 - Run the project, press the Press Me button, and note the button with invisible title.
 - Wonder at the mysteries of the universe
