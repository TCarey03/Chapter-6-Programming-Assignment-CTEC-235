Journal

Phase 1 - The Visual Foundation

What seems convenient about the ThemeData object? What seems complicated about it?

ThemeData is convenient because I can define the overall look of the application in one place. This means I do not have to manually set the colors and text styles on every widget.

I also like that I can use Theme.of(context) to access the styles later in my widgets.

One complicated part is that ThemeData has many different options, so it can take some time to understand which properties I should use. The TextTheme also has many different text styles, which can be confusing at first.

For this phase, I created a global color scheme and defined styles for displayLarge, titleLarge, and bodyMedium. I also created Destination and TravelDeal classes to hold the application's data.

---------------------------------

Phase 2 - Adaptive Navigation

What do you think you need to consider as you design breakpoints for your app? What are different ways you can utilize the MediaQuery to adjust your widgets?

When designing breakpoints, I need to consider how much space the content and navigation need rather than choosing a breakpoint randomly. The layout should still be usable when the window becomes smaller or larger.

In this phase, I used MediaQuery.sizeOf(context).width to check the width of the window. If the width is less than 600 pixels, the app uses the MobileLayout. If the width is 600 pixels or greater, it uses the DesktopLayout.

MediaQuery can also be used to check other information about the device and window, such as height, orientation, and padding. This could allow an application to change spacing, widget sizes, or navigation depending on the available space.

---------------------------------

Phase 3 - Responsive Content

Why are we using LayoutBuilder here instead of MediaQuery?

We use LayoutBuilder because we want to know how much space is actually available to the DealDashboard widget.

MediaQuery measures the overall window size, but the DealDashboard might only use part of the window. For example, on the desktop layout, the navigation panel takes up 200 pixels on the side.

LayoutBuilder gives us the BoxConstraints for the DealDashboard itself. This lets us switch between a GridView and a ListView based on the actual space available to the content.

If the available width is greater than 400 pixels, I use a two-column GridView. If it is 400 pixels or less, I use a one-column ListView.

I also used SafeArea so that the travel deals are not covered by system UI or camera cutouts.
