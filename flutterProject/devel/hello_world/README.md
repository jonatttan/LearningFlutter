# hello_world

### Stateless Widget
Are widget with one object, itself.
Stateless widget don't have changes, non interactables.
Until commit 725a226, we build stateless widget, as the below picture:

![Stateless widget image](../prints/statelessWidget.png)


### Stateful Widget
Are widget with two objects, Widget and State.
Widget store the imutable attributes, State store the mutables. 
We change the mutable variable `salary` and refresh screen using `setState` on the `GestureDetector`.

![Stateful widget video](../prints/statefulWidget.gif)
