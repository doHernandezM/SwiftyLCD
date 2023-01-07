# SwiftyLCD

SwiftyLCD is a Swift library for controlling HD44780 compatible LCD displays via I2C.

## Installation

To use SwiftyLCD, you will need to have the latest version of Swift and the SwiftyGPIO library installed on your system. You can then include SwiftyLCD in your project by adding it as a dependency in your Package.swift file.

## Getting Started

To use SwiftyLCD, you will need to initialize an instance of the HD44780 class with the width and height of your display.

```Swift
let lcd = HD44780(width: 20, height: 4)
```
You can then use the provided methods to control the display, such as clear(), home(), and print(x:y:string:).

```Swift
lcd.clear()
lcd.home()
lcd.print(x: 0, y: 0, string: "Hello, world!")
```

### Contributing

We welcome contributions to SwiftyLCD. If you have a bug fix or feature request, please open a pull request.

### License

SwiftyLCD is licensed under the Apache 2.0 license. See the LICENSE file for more information.
