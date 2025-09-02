<p align="center">
  <img src="assets/logos/ushopia-slash-logo-white.png" alt="Ushopia Logo" width="180"/>
</p>

<h1 align="center">Ushopia</h1>

<p align="center">
  <b>A robust, scalable, and beautiful e-commerce solution built with Flutter.</b>
</p>

<p align="center">
  <img src="assets/images/products/nike-shoes.png" alt="Product Showcase" width="120"/>
  <img src="assets/images/products/product-shirt.png" alt="Product Showcase" width="120"/>
  <img src="assets/images/products/iphone8_mobile.png" alt="Product Showcase" width="120"/>
</p>

---

## Features

- Modern e-commerce UI/UX
- Secure authentication
- Product catalog with categories & brands
- Cart & checkout flow
- Multiple payment methods
- Order tracking
- Light & dark mode support
- Responsive design (mobile, tablet, web)
- Rich product images & banners

---

## Screenshots

<p align="center">
  <img src="assets\screenshots\screenshot14.png" alt="App Screenshots" width="200"/>
  <img src="assets\screenshots\screenshot11.png" alt="App Screenshots" width="200"/>
   <img src="assets\screenshots\screenshot13.png" alt="App Screenshots" width="200"/>
   
   
  
   <img src="assets\screenshots\screenshot15.png" alt="App Screenshots" width="200"/>
   <img src="assets\screenshots\screenshot17.png" alt="App Screenshots" width="200"/>
   <img src="assets\screenshots\screenshot18.png" alt="App Screenshots" width="200"/>
   <img src="assets\screenshots\screenshot19.png" alt="App Screenshots" width="200"/>
   <img src="assets\screenshots\screenshot21.png" alt="App Screenshots" width="200"/>
    <img src="assets\screenshots\screenshot8.png" alt="App Screenshots" width="200"/>
   <img src="assets\screenshots\screenshot9.png" alt="App Screenshots" width="200"/>
   <img src="assets\screenshots\screenshot22.png" alt="App Screenshots" width="200"/>
   <img src="assets\screenshots\screenshot7.png" alt="App Screenshots" width="200"/>
  
  
</p>

---

## Getting Started

### 1 Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Dart SDK (>=3.0.5 <4.0.0)
- Android Studio / VS Code / Xcode

### 2 Installation

```sh
git clone https://github.com/yourusername/ushopia.git
cd ushopia
flutter pub get
```

### 3 Running the App

```sh
flutter run
```

---

## Configuration

- **Splash Screen:** Configured via [`splash.yaml`](splash.yaml)
- **Assets:** All images and icons are in the [`assets/`](assets/) directory.
- **Image References:** Managed in [`lib/utils/constants/image_strings.dart`](lib/utils/constants/image_strings.dart)

---

## Brand & Payment Icons

<p>
  <img src="assets/icons/brands/nike.png" alt="Nike" width="40"/>
  <img src="assets/icons/brands/adidas-logo.png" alt="Adidas" width="40"/>
  <img src="assets/icons/brands/apple-logo.png" alt="Apple" width="40"/>
  <img src="assets/icons/payment_methods/visa.png" alt="Visa" width="40"/>
  <img src="assets/icons/payment_methods/paypal.png" alt="PayPal" width="40"/>
  <img src="assets/icons/payment_methods/master-card.png" alt="MasterCard" width="40"/>
</p>

---

## Project Structure

```
lib/
  ├── main.dart
  ├── app.dart
  ├── navigation_menu.dart
  ├── bindings/
  ├── common/
  │    ├── styles/
  │    └── widgets/
  ├── data/
  │    ├── repositories/
  │    └── services/
  ├── features/
  │    ├── authentication/
  │    |      ├── controllers/
  │    |      ├── models/
  │    |      └── screens/
  │    |           ├──login/
  │    |           ├──onboarding/
  │    |           |     ├──widgets/
  │    |           |     └──...
  │    |           └── ...
  │    ├── personalization/
  │    |      ├── controllers/
  │    |      ├── models/
  │    |      └── screens/
  │    ├── shop/
  │    |      ├── controllers/
  │    |      ├── models/
  │    |      └── screens/
  │    └── ...
  ├── localization/
  │    └── ...
  ├── utilities/
  │    ├── constants/
  │    ├── device/
  │    ├── exceptions/
  │    ├── formatters/
  │    ├── helpers/
  │    ├── http/
  │    ├── loaders/
  │    ├── local_storage/
  │    ├── logging/
  │    ├── popups/
  │    ├── theme/
  │    |    ├── widgets/
  │    |    └── ...
  │    ├── validators/
  │    └── ...
  └── ...
assets/
  ├── icons/
  │    ├── brands/
  │    ├── categories/
  │    └── payment_methods/
  ├── images/
  │    ├── animations/
  │    ├── banners/
  │    ├── content/
  │    ├── on_boarding_images/
  │    ├── products/
  │    └── reviews/
  ├── logos/
  └── fonts/
```

---

## Contributing

I welcome contributions! Please open issues or submit pull requests for improvements and bug fixes.

---

## License

This project is licensed under the MIT License.

---

<p align="center">
  <img src="assets/logos/ushopia-slash-logo-black.png" alt="Ushopia Logo" width="250"/>
</p>
