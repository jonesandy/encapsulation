# Encapsulation

Encapsulation is the process of hiding the internal state of an object with all its inner workings hidden from view. This means that no external object can change, modify or delete the data stored.  We can, however, control the inner workings through a mix of private methods and public methods. Public methods allow manipulation of data via strict processes. We control these manipulations as they are defined in our public methods. Through encapsulation we can keep our objects separate and self reliant. This descreases coupling with other objects and allows flexibility in iteration and revision. We can revise our code in that object and be confident we are not effecting other parts of the system so long as we keep the public methods consistent and working.

## Single Responsibility Principle

Working in tandem with encapsulation is single responsibility principle.  This is the idea that every class should only be responsible for a single area of functionality. A class called ```Salt``` should not have a method called ```add_pepper``` for example. Salt should be responsible for everything salt related. Let ```Pepper``` take care of ```add_pepper```.

## Example

My code example [here](encapsulation.rb) is a simple representation of this idea. I have created a class called ```Watercooler```. This has three instance variables ```@water, @cups and @cups_till_empty```.
Access to these instance variables is restricted to the outside due to encapsulation. I only expose one of these values to the outside world via a public method call ```show_water_level```.

Through private methods not accessable outside of the object, I am able to control how these variables are manipulated. I can be confident they will not change through any other way than intended. In the real world, ff ```@water``` decreases through any other way than the controlled ```drink``` method I have a leak in my cooler!

I also created a ```Microwave``` class to show that our public ```watercooler_level``` method was accessible from an instance of ```Microwave```, but we would get an error when trying to call ```cup_of_water``` on the ```Watercooler``` class.