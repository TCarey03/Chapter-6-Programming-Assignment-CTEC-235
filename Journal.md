Journal

Phase 1 - The Visual Foundation

What seems convenient about the ThemeData object? What seems complicated about it?

ThemeData is convenient because I can define the overall look of the application in one place. This means I do not have to manually set the colors and text styles on every widget.

I also like that I can use Theme.of(context) to access the styles later in my widgets.

One complicated part is that ThemeData has many different options, so it can take some time to understand which properties I should use. The TextTheme also has many different text styles, which can be confusing at first.

For this phase, I created a global color scheme and defined styles for displayLarge, titleLarge, and bodyMedium. I also created Destination and TravelDeal classes to hold the application's data.
