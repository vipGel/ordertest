# ordertest

A test application for TECCOD

## Getting Started
While developing run:
```bash
flutter pub run build_runner watch --delete-conflicting-outputs 
```

Before building apk run:
```bash
flutter pub get
```

```bash
flutter pub run build_runner build --delete-conflicting-outputs 
```
## Architecture
lib:
- core:
    - error.dart - app errors
    - failure.dart - app failures
- data:
    - api - rest api methods, done by retrofit
    - interceptors - interceptors for dio
    - repository - realization of domain/repository
    - dio_configurator.dart - prepares dio for app
- domain:
    - entities - contains entities
    - repository - repository of data related functions
- presentation:
    - bloc - contains states of the appearance
    - screens - screens of the app
- di.dart - dependency injector - basically global variables (singleton)

