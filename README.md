# diamond

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Project Structure
# I organized my app into four main parts:

Core: This has tools I can use all over the app, like Failure for dealing with errors and UseCase for the app’s logic.
Data: This part takes care of where I get my data, how it’s shaped (DiamondModel), and how it connects to everything else (DiamondRepositoryImpl). Right now, it just uses a list in memory called diamondData.
Domain: This is where the app’s rules live. It has the Diamond object and actions like adding to the cart (AddToCart), taking stuff out (RemoveFromCart), checking the cart (GetCart), and grabbing all diamonds (GetDiamonds).
Presentation: This handles what you see on the screen and how the app reacts. I use BLoC to manage it, and it has pages for filtering diamonds, showing results, and working with the cart.

# State Management Logic
I picked BLoC to handle what’s going on in my app. It’s from a package called flutter_bloc.

# CartBloc
File: presentation/blocs/cart_bloc.dart.
Events (things that can happen):
 LoadCart: Gets what’s in the cart right now.
 AddToCartEvent: Puts a diamond in the cart.
 RemoveFromCartEvent: Takes a diamond out of the cart.

States (what the app keeps track of):
 CartState: Holds the list of diamonds in the cart, plus totals like totalCarat, totalPrice, avgPrice, and avgDiscount.

# How It Works:
 For LoadCart, it uses GetCart to fetch the cart and shows the new info. If something goes wrong, it just shows an empty cart.
 For AddToCartEvent, it runs AddToCart, checks the cart again with GetCart, and updates the screen.
 For RemoveFromCartEvent, it runs RemoveFromCart, checks the cart, and updates the screen again.

# How I Use It
I set up the CartBloc with BlocProvider in main.dart or a bigger widget. Pages like cart_page.dart use BlocBuilder to watch it and show the cart as it changes.

## Persistent Storage Usage

 Data Source: In diamond_datasource.dart, I have a list called diamondData with 100 diamonds already loaded.
 Cart Storage: DiamondRepositoryImpl keeps the cart as a list in memory, but it clears out when you close the app.