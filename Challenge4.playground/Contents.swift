// удаление повторяющихся символов из строки

import UIKit

func sort1(string: String) -> String {
    var used = [Character]() //переменная содержит массив символов
    
    for letter in string {
        if !used.contains(letter) { //если массив не содержит символы исходной строки string, то добавляем символ в массив used
            used.append(letter)
        }
    }
    return String(used)
}
sort1(string: "addlook")

// Удаление всех пробелов в строке, кроме одного "  a  b c d " => "a b c d"

func space(input: String) -> String {
    var seenSpace = false //встречался ли пробел до
    var returnValue = "" //пустая строка для добавления символов и ретерна
    
    for letter1 in input { //итерации входной строки
        if letter1 == " " {
            if seenSpace { continue } //seenSpase true =>добавляем в returnValue и проводим итерацию со след.символа
            seenSpace = true
        } else {
            seenSpace = false
        }
        
        returnValue.append(letter1)
    }
    return returnValue
}

space(input: "   a b  c d ")


// Вращение строки (функция принимает две строки и возвращает true, если одна строка является вращением другой "гарден = енгард")
import Foundation

func rotate(input: String, rotated: String) -> Bool {
    guard input.count == rotated.count else { //проверка на количество символов
        return false }
    let combined = input + input //константа включает в себя удвоенную строку
    return combined.contains(rotated) //возвращаем конст с проверкой содержит ли она превращенную строку
}


// Является ли строка панграммой(содержит в себе все буквы алфавита) используется для призентации шрифтов.Регистр игнор

func pangram(input: String) -> Bool {
    let set = Set(input.lowercased()) //конст = сету в нижнем регистре
    let letters = set.filter {
        $0 >= "a" && $0 <= "z" //все элементы от az включены в set
    }
    return letters.count == 26 //возвр отфильтрованный set, в котором 26 букв
}

pangram(input: "the quick brown fox jumps over the lazy dog")


// количество гласных и согласных
// функция принимает строку и возвращает tuple, содержащий число гласных и согласных в строке

func separate(input: String) -> (vowels: Int, consonants: Int) {
    let vowels = "aeiou"
    let consonants = "qwrtypsdfghjklzxcvbnm"
    
    var vowelCount = 0 //счетчик гласных
    var consonantCount = 0 //согласных
    
    for letter4 in input.lowercased() {
        if vowels.contains(letter4) {
            vowelCount += 1
        } else if consonants.contains(letter4) {
            consonantCount += 1
        }
    }
    return (vowelCount, consonantCount)
}
separate(input: "adbjewhfwb")
print(separate(input: "sdfcsedf"))


