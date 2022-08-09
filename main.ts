let celsius = 30;
let fahrenheit = (celsius * 9 / 5) + 32;
console.log(`${celsius} C is ${fahrenheit} F.`);

celsius = 20;
while (celsius <= 45) {
    fahrenheit = (celsius * 9 / 5) + 32;
    console.log(`${celsius} C is ${fahrenheit} F.`);
    celsius = celsius + 5;
}
// 30 C is 86 F.
// 20 C is 68 F.
// 25 C is 77 F.
// 30 C is 86 F.
// 35 C is 95 F.
// 40 C is 104 F.
// 45 C is 113 F.


const replay = '123';
if (/^[0-9]+$/.test(replay)) {
    console.log('only digits');
} else {
    console.log('not only digits');
}


// const input = 'oops';
// const input = '32F';
const input = '100C';
const match = /^([-+]?[0-9]+)([CF])$/.exec(input);

if (match) {
    const inputNum = Number(match![1]);
    const type = match![2];
    
    if (type === 'C') {
        celsius = inputNum;
        fahrenheit = (celsius * 9 / 5) + 32;
    } else {
        fahrenheit = inputNum;
        celsius = (fahrenheit - 32) * 5 / 9;
    }
    console.log('%d C is %d F', celsius, fahrenheit);
} else {
    console.log('Expecting a number followed by "C" or "F",')
    console.log(`so I don't understand "${input}".`);
}