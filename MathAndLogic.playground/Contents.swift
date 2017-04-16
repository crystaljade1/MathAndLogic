// Write a function named "strtupzer" which removes the 'odd' vowels from a word.
// The function should remove the first vowel it encounters, leave the second, remove the third, etc.



let vowels = ["a", "e", "i", "o", "u"]
let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
var letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]



// Create a function which accepts a string and returns all of the characters of the string in an [Character].


var array: [Character] = []

var string: String


func returnCharactersFromString(input: String) -> [Character] {
    let array = Array(input.characters)
    return array
}


print(returnCharactersFromString(input: "University"))
print(returnCharactersFromString(input: "Cupcake"))
print(returnCharactersFromString(input: "Bookkeeper"))
print(returnCharactersFromString(input: "Iron Yard"))


// Create a function which accepts a string and returns an array of the characters in the provided word excluding all vowels.

func returnCharactersFromStringExcludingVowels(input: String) -> [Character] {
    let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    let result = [Character](input.characters.filter {
        !vowels.contains($0) }
    )
    return result
}

returnCharactersFromStringExcludingVowels(input: "University")

print(returnCharactersFromStringExcludingVowels(input: "Cupcake"))
print(returnCharactersFromStringExcludingVowels(input: "Bookkeeper"))
print(returnCharactersFromStringExcludingVowels(input: "Iron Yard"))

// Create a function which accepts a string and returns an array of the characters in the provided word excluding every other vowel.



func strtupzer(input: String) -> [Character]? {
    let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    var vowelCount = 0
    var newArray = [Character]()
    
    
    for char in input.characters {
        if !vowels.contains(char) {
            newArray.append(char)
        }
        
        if vowels.contains(char) {
            vowelCount += 1
            if vowelCount % 2 == 1 {
                newArray.append(char)
            }
        }
        
    }

    return newArray
    
}


strtupzer(input: "bookkeeper")
strtupzer(input: "cupcake")
strtupzer(input: "Iron Yard")





// Create a function which accepts a string and returns a string containing the provided word excluding every other vowel.

func returnStringFromStringExcludingVowels(input: String) -> (String) {
    
    let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    let result = (String)(input.characters.filter {
        !vowels.contains($0) }
    )
    return result
}

returnStringFromStringExcludingVowels(input: "University")
print(returnStringFromStringExcludingVowels(input: "Cupcake"))
print(returnStringFromStringExcludingVowels(input: "Bookkeeper"))
print(returnStringFromStringExcludingVowels(input: "Iron Yard"))






