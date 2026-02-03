
# 1️⃣ data/
This layer handles data sources and repositories. It’s where your app interacts with APIs, databases, or local storage.
Typical contents:

models/ → Data models (JSON mapping, DTOs)

repositories/ → Implementation of repositories that fetch data

datasources/ → API calls, local storage (e.g., SQLite, SharedPreferences)

mappers/ → Convert data models to domain entities

# 2️⃣ domain/

This is the core business logic layer. It’s completely independent of external libraries (API, UI, database).
Typical contents:

entities/ → Core objects used throughout the app

repositories/ → Abstract repository interfaces

usecases/ → Business rules / app logic (e.g., GetUserProfile)


# 3️⃣ presentation/

This layer is responsible for UI and state management. It can include Flutter widgets, Bloc/Cubit, Providers, etc.
Typical contents:

pages/ or screens/ → Flutter screens

widgets/ → Reusable UI components

bloc/ or cubit/ → State management files

providers/ → (if using Provider)

## Clean Architecture:

Domain = pure business logic

Data = data sources & mapping

Presentation = UI & state

