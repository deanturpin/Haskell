#!/usr/bin/node

// Generate some random packages
let packages = "["

for (let i = 0; i < 300; ++i)
	packages += Math.floor(Math.random() * 100) + ","

// Close array
packages += "]"

console.log(packages)
