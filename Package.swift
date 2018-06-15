import PackageDescription

#if os(OSX)
    let gtkUrl = "https://github.com/lazToum/CGtk-OSX"
#elseif os(Linux)
    let gtkUrl = "https://github.com/lazToum/CGtk-Linux"
#else
    fatalError("Unsupported platform.")
#endif

let package = Package(
  name:  "SwiftGtk",
  dependencies: [
    .Package(url: gtkUrl, majorVersion: 1, minor: 3)
  ],
  exclude: ["Sources/Ancillary Files"]
)
