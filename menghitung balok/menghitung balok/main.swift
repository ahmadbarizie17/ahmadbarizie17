//
//  main.swift
//  menghitung balok
//
//  Created by AHMAD BARIZIE SIROJUL ILMI on 4/26/21.
//

import Foundation

//disini kita akan menghitung dan akan dihasilkan sebuah output

print("mari kita berhitung")

let width = 2.0
//width untuk lebar nya
let height = 3.0
//height untuk tinggi nya
let length = 4.0
//length untuk panjang nya

//sekarang mari kita membuat perhitungan nya

let volume = length * height * width
let surfaceArea = 2 * ((width * height) + (width * length) + (length * height))
//surfaceArea merupakan luas permukaan nya
let circumference = 4 * (width + length + height)
//circumference adalah kelilingnya
//beri output untuk pemisah
print("--------------------------")

print("anda memiliki sebuah balok dengan")
print("lebar : \(width)")
print("tinggi : \(height)")
print("panjang : \(length)")
//lalu kita akan memberikan output untuk perhitungan volume, luas permukaan dan kelilingnya
print("volume : \(volume)")
print("Luas permukaan : \(surfaceArea)")
print("kelilingnya : \(circumference)")

print("---------------------")
