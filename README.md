# 🌸 Flowery App

<p align="center">
  <img src="<img width="89" height="25" alt="Logo" src="https://github.com/user-attachments/assets/960ffb7c-9110-4656-a816-02d1963c0937" />
" alt="Flowery App Logo" width="140" />
</p>

<p align="center">
  <strong>An enterprise-grade, beautifully designed Flowers & Gifting E-Commerce mobile platform built with Flutter.</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white" alt="Flutter" />
  <img src="https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white" alt="Dart" />
  <img src="https://img.shields.io/badge/Architecture-Clean%20%2F%20Feature--First-success?style=for-the-badge" alt="Architecture" />
  <img src="https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-blue?style=for-the-badge&logo=githubactions&logoColor=white" alt="CI/CD" />
</p>

---

## 📌 Overview

**Flowery App** is a robust mobile e-commerce platform tailored for premium floral arrangements, dynamic gifting, and custom occasions browsing. Built following strict **Clean Architecture principles** and a **Modular Feature-First structure**, the application guarantees maximum separation of concerns, high testability, and an agile development workflow.

The application natively handles complex user states, providing a fully integrated **Guest Mode interceptor ecosystem** that gracefully regulates functional restrictions across critical views like the Cart and Home modules.

---

## 🛠️ Architecture & Tech Stack

The architecture separates core enterprise business logic from framework-specific operations, UI changes, or network clients.

### 📐 Layer Subdivision (Per Feature)

Every module inside the directory is split horizontally to ensure clean boundaries:
* 🌐 **API / Data Sources:** Houses target network clients (`retrofit`) and remote endpoints integration.
* 📦 **Data Layer:** Manages domain-mapped models, exceptions mapping, and entity caching.
* 🧠 **Domain Layer:** Uncompromisingly pure Dart layer implementing system business rules and abstract repository contracts.
* 🎨 **Presentation Layer:** State consumption powered by `Cubit` controllers and lightweight atomic UI widgets.

### 📦 Key Infrastructure Dependencies

* **State Architecture:** `flutter_bloc` managing reactive states via discrete custom intents.
* **Service Location (DI):** Runtime dependencies wiring managed by `get_it` and compile-time mappings via `injectable`.
* **Dynamic Routing:** Context-aware declarative router structure managed via `go_router`.
* **Type-Safe Networking:** Asynchronous API data harvesting handled by `dio` clients paired with `retrofit` factories.
* **Data Security:** Encrypted local cache tracking user authorization keys via `flutter_secure_storage`.

---

## 🧪 DevOps & Quality Assurance (QA)

To sustain a highly resilient production environment, the repository forces continuous quality gates:

* **Automated Unit Testing:** Custom feature domain logics and model data mapping behaviors are covered using rigorous unit tests located within the `test/` root module to completely prevent breaking changes.
* **Component Verification:** Structural `testWidgets` validation routines are pre-configured to systematically mock dynamic ViewModel (Cubit) response cycles.
* **Continuous Integration (CI):** Integrated seamlessly with **GitHub Actions workflows**. Every incoming Pull Request or merge activity automatically triggers isolated runner environments to execute static code analysis (linting), project compilation verification, and complete unit testing blocks before code delivery.

---

## ✨ Features Checklist

### 🔑 Authentication & Session States
- [x] Secured user onboarding workflows: Login, SignUp, and Reset Forget Password layouts.
- [x] **Smart Guest Mode Guarding:** Local secure storage interceptors tracking access levels seamlessly.
- [x] **Overlay Pop-up Controls:** Contextual touch interceptors blocking actions for guest users (e.g., preventing address registration) and presenting a tailored modal prompting them to register.

### 🌸 Catalog, Search & Gifting
- [x] Real-time query search storefront mapping dynamic text input parameters.
- [x] Granular filtering via custom categories (Flowers, Gifts, Cards, Jewellery).
- [x] Curated Occasions layout and Best Seller carousels tracking user interaction.

### 🛒 Cart & Checkout Management
- [x] Live state-driven Cart updating item addition, unit counts, and single-tap removals.
- [x] Automatic real-time financial tracking mapping Sub-Total tiers, Delivery fees, and absolute Totals.
- [x] Clean, scalable transactional checkout flow ready for payment gateways.

---

## 📱 Screenshots Gallery

<p align="center">
  <img src="screenshots/home_screen.jpg" width="30%" alt="Home View Storefront" />
  <img src="screenshots/cart_screen.png" width="30%" alt="Cart State & Invoice" />
  <img src="screenshots/guest_dialog.jpg" width="30%" alt="Custom Guest Dialog Prompt" />
</p>

---

## 📂 Structural Framework Directory

```text
lib/
├── config/                  # Global injection frameworks and application profiles
│   └── di/                  # Compile-safe automated dependency service location setup
├── core/                    # Globally shared UI primitives, color tokens, and layout schemas
│   ├── router/              # Declarative GoRouter routing schemas (router_paths.dart)
│   ├── theme/               # Centralized branding parameters (app_colors.dart, app_text_styles.dart)
│   ├── values/              # Codegen asset and image maps indexing (assets.gen.dart)
│   └── widgets/             # Reusable shared global widgets (address_widget.dart)
├── features/                # Pure vertical decoupled business units (Feature-First)
│   ├── app_sections/        # Central navigational root tabs mapping
│   ├── auth/                # Security controls (login, signup, forget_password)
│   ├── best_seller/         # Premium trending floristry modules
│   ├── change_password/     # Profile security credential modifications
│   ├── checkout/            # Operational invoice validation and order placement
│   ├── edit_profile/        # User detail modifications and account forms
│   ├── occasion/            # Specialized thematic event filters
│   ├── orders/              # Historial user purchase list tracking
│   ├── product_details/     # Immersive single product preview screens
│   ├── search/              # Real-time search matching data filters
│   └── user_addresses/      # Multi-tier address lookup and management logic
└── l10n/                    # System multi-language localization dictionaries
