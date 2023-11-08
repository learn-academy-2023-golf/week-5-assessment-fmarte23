// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

function encodeString(input) {
    const encodingMap = {
      'a': '4',
      'e': '3',
      'i': '1',
      'o': '0',
    };
  
    // Use a regular expression to match and replace the characters
    return input.replace(/[aeio]/g, (match) => encodingMap[match]);
  }
  
  // Test cases using Jest
  const secretCodeWord1 = "Lackadaisical";
  const secretCodeWord2 = "Gobbledygook";
  const secretCodeWord3 = "Eccentric";
  
  test('Encode secretCodeWord1', () => {
    expect(encodeString(secretCodeWord1)).toBe("L4ck4d41s1c4l");
  });
  
  test('Encode secretCodeWord2', () => {
    expect(encodeString(secretCodeWord2)).toBe("G0bbl3dyg00l");
  });
  
  test('Encode secretCodeWord3', () => {
    expect(encodeString(secretCodeWord3)).toBe("3cc3ntr1c");
  });
  

  UPDATED:
  
  describe("encodeString", () => {
    const secretCodeWord1= { "Lackadaisical" }
    // Expected output: "L4ck4d41s1c4l"
    const secretCodeWord2 = { "Gobbledygook" }
    // Expected output: "G0bbl3dyg00l"
    const secretCodeWord3 = { "Eccentric" }
    // Expected output: "3cc3ntr1c"
    it("takes in a string and returns a string with a coded message.", () => {
        expect(encodeString(secretCodeWord1)).toBe("L4ck4d41s1c4l")
        expect(encodeString(secretCodeWord2)).toBe("G0bbl3dyg00l")
        expect(encodeString(secretCodeWord3)).toBe("3cc3ntr1c")
    })
  })
  

// const secretCodeWord1 = "Lackadaisical"
// // Expected output: "L4ck4d41s1c4l"
// const secretCodeWord2 = "Gobbledygook"
// // Expected output: "G0bbl3dyg00k"
// const secretCodeWord3 = "Eccentric"
// // Expected output: "3cc3ntr1c"

// // b) Create the function that makes the test pass.

// // Pseudo code:

// Define a function that takes in a string as a parameter

// Create an empty string variable to hold the coded message

// Iterate through each character in the input string

// If the character is "a", replace it with "4" and add it to the coded message

// If the character is "e", replace it with "3" and add it to the coded message

// If the character is "i", replace it with "1" and add it to the coded message

// If the character is "o", replace it with "0" and add it to the coded message

// If the character is not one of the mentioned vowels, add it to the coded message as is

// Return the coded message as the output of the function

// // --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// // a) Create a test with expect statements using the variable provided.

function isFullHouse(hand) {
    // Create an object to count the occurrences of each number in the hand.
    const counts = {};
  
    // Count the occurrences of each number in the hand.
    for (const number of hand) {
      if (counts[number]) {
        counts[number]++;
      } else {
        counts[number] = 1;
      }
    }
  
    // Check if there is exactly one pair (2 occurrences) and one three of a kind (3 occurrences).
    const values = Object.values(counts);
    return values.includes(2) && values.includes(3);
  }

  test('hand1 is a full house', () => {
    expect(isFullHouse(hand1)).toBe(true);
  });
  
  test('hand2 is not a full house', () => {
    expect(isFullHouse(hand2)).toBe(false);
  });
  
  test('hand3 is not a full house', () => {
    expect(isFullHouse(hand3)).toBe(false);
  });
  
  test('hand4 is a full house', () => {
    expect(isFullHouse(hand4)).toBe(true);
  });

// const hand1 = [5, 5, 5, 3, 3]
// // Expected output: true
// const hand2 = [5, 5, 3, 3, 4]
// // Expected output: false
// const hand3 = [5, 5, 5, 5, 4]
// // Expected output: false
// const hand4 = [7, 2, 7, 2, 7]
// Expected output: true

// b) Create the function that makes the test pass.

// Pseudo code:
// Define a function that takes in an array as a parameter

// Check if the length of the array is equal to 5

// Create a counter variable for the number of pairs

// Create a counter variable for the number of three-of-a-kinds

// Loop through each number in the array

// Check if the current number appears twice in the array

// If yes, increment the pair counter

// Check if the current number appears three times in the array

// If yes, increment the three-of-a-kind counter

// Check if the pair counter is equal to 1 and the three-of-a-kind counter is equal to 1

// If yes, return true (the array is a full house)

// If no, return false (the array is not a full house)