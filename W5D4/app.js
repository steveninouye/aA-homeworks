
function mysteryScoping1() {
  var x = 'out of block';  // variable is hoisted to top of function
  if (true) {
    var x = 'in block';   // variable is hoisted to top of function
    console.log(x);  // logs 'in block'
  }
  console.log(x);  // logs 'in block'
}

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);  // logs 'in block'
  }
  console.log(x);  // logs 'out of block'
}  // no hoisting and variables are constrained to their own local scopes

function mysteryScoping3() {
  const x = 'out of block';  // var x is hoisted to top of function
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}  // SyntaxError

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);  // logs 'in block'
  }
  console.log(x);  // logs 'out of block'
}

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';  // this line causes a SyntaxError
  console.log(x);
} // SyntaxError

const madLib = (verb, adj, noun) => `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`;

const isSubstring = (sentence, word) => sentence.includes(word);

const isPrime = (num) => {
  for(let i = 2; i <= Math.round(num / 2); i++) {
    if (num % i == 0){
      return false;
    }
  }
  return true;
}

const sumOfNPrimes = (num) => {
  if (num === 0) {
    return 0
  }
  const arr = [];
  for (i = 2; arr.length < num; i++) {
    if ( isPrime(i) ){
      arr.push(i);
    }
  }
  return arr.reduce((acc,curr) => acc + curr)
}

const titleize = (arr, cb) => {
  cb( arr.map((el) => `Mx. ${el} Jingleheimer Schmidt`) )
}

const printCallback = (arr) => arr.forEach((el) => console.log(el))

titleize(["Mary", "Brian", "Leo"], printCallback)



function Elephant (name, height, trick) {
  this.name = name;
  this.height = height;
  this.trick = trick;
}

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRR!!!!!'`)
}

Elephant.prototype.grow = function() {
  this.height = this.height + 12
}

Elephant.prototype.addTrick = function(trick) {
  this.trick.push(trick)
}

Elephant.prototype.play = function() {
  num = Math.floor( Math.random() * this.trick.length )
  console.log(`${this.name} is ${this.trick[num]}`)
}

Elephant.paradehelper = function(elephant) {
  console.log(`${elephan.name} is trotting by!`)
}


//
