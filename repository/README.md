# Getting Started
Repository layer is added between the domain and data mapping layers to isolate domain objects from details of the database access code and to minimize scattering and duplication of query code. The Repository pattern is especially useful in systems where number of domain classes is large or heavy querying is utilized

Use the Repository pattern when

- the number of domain objects is large
- you want to avoid duplication of query code
- you want to keep the database querying code in single place
- you have multiple data sources


[![Carthage compatible](https://img.shields.io/badge/Carthage-Compatible-brightgreen.svg?style=flat)](https://github.com/Carthage/Carthage)
![Xcode 10.2+](https://img.shields.io/badge/Xcode-10.2%2B-blue.svg)
![iOS 12.2+](https://img.shields.io/badge/iOS-12.2%2B-blue.svg)
![Swift 5.0+](https://img.shields.io/badge/Swift-5.0%2B-orange.svg)

# Building Projects

**Install dependencies**
```sh
carthage update --no-use-binaries
```

**Generate xcodeproj**

Install the latest version of [XCodeGen](https://github.com/yonaskolb/XcodeGen)

Then generate xcodeproj.
```sh
xcodegen
```

Open the xcodeproj, build and run.
