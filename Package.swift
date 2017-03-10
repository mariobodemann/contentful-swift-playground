import PackageDescription

let package = Package(
    name: "simple-swift-contentful",
    dependencies: [
	.Package(url: "http://github.com/contentful/contentful.swift.git", majorVersion: 0),
	]
)
