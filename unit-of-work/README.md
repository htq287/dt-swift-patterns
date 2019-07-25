# Getting Started
When a business transaction is completed, all the these updates are sent as one big unit of work to be persisted in a database in one go so as to minimize database trips.

Use the Unit Of Work pattern when

- To optimize the time taken for database transactions.
- To send changes to database as a unit of work which ensures atomicity of the transaction.
- To reduce number of database calls.


[![Carthage compatible](https://img.shields.io/badge/Carthage-Compatible-brightgreen.svg?style=flat)](https://github.com/Carthage/Carthage)
![Xcode 10.2+](https://img.shields.io/badge/Xcode-10.2%2B-blue.svg)
![iOS 12.2+](https://img.shields.io/badge/iOS-12.2%2B-blue.svg)
![Swift 5.0+](https://img.shields.io/badge/Swift-5.0%2B-orange.svg)

# Building Projects
**Generate xcodeproj**

Install the latest version of [XCodeGen](https://github.com/yonaskolb/XcodeGen)

Then generate xcodeproj.
```sh
xcodegen
```

Open the xcodeproj, build and run.
