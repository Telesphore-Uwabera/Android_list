# My Flutter App

## Description

This is a Flutter application that demonstrates basic navigation and API integration. The app features a list view screen displaying data fetched from an API, and a details view screen that shows detailed information about selected items.

## Instructions to Run the App

1. **Clone the Repository**

   ```bash
   git clone https://github.com/Telesphore-Uwabera/Android_list.git
   ```

2. **Navigate to the Project Directory**

   ```bash
   cd Android_list
   ```

3. **Install Dependencies**

   Ensure you have Flutter installed on your machine. Install the required dependencies using:

   ```bash
   flutter pub get
   ```

4. **Run the App**

   You can run the app on a connected device or an emulator. Use the following command:

   ```bash
   flutter run
   ```

   You may choose the target platform (e.g., Windows, Chrome, Edge) as prompted.

## Additional Libraries and Tools Used

- **Flutter**: Framework for building natively compiled applications for mobile, web, and desktop from a single codebase.
- **http**: For making HTTP requests to the API.
- **mockito**: For creating mock objects in unit tests.
- **flutter_test**: For writing and running unit tests and widget tests.

## Assumptions and Design Decisions

1. **Data Structure**:
   - The API response is assumed to be a list of maps, where each map contains keys such as `'id'`, `'name'`, and `'data'`.
   - The `DetailsViewScreen` expects a `Map<String, dynamic>` type for the `item` parameter.

2. **Navigation**:
   - Navigation is handled using Flutter’s built-in `Navigator` class.
   - Routes are defined using `Navigator.pushNamed` and `Navigator.pushReplacementNamed`.

3. **UI Layout**:
   - The `ListViewScreen` displays items in a `GridView` with two columns.
   - The `DetailsViewScreen` uses a `Card` widget to display details in the center of the screen.

4. **Error Handling**:
   - Basic error handling is implemented to show an error message if the API request fails or if no data is available.

5. **Development Environment**:
   - The app is developed with Flutter SDK and assumes that the development environment is set up with necessary tools for building and running Flutter applications.

