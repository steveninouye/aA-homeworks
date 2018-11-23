const hammertime = () => {
  window.setTimeout(() => alert('HAMMERTIME'), 5000);
};

const hammerTime = (time) => {
  window.setTimeout(() => alert(`${time} is hammertime`), time);
};

const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  input: process.stdout
});

const teaAndBuiscuits = () => {
  reader.question('Would you like some tea? (yes/no)', (firstAns) => {
    console.log(`You said, "${firstAns}"`);
    reader.question('Would you like some biscuits? (yes/no)', (secondAns) => {
      console.log(`You said, "${secondAns}"`);

      const res1 = firstAns === 'yes' ? 'do' : `don't`;
      const res2 = secondAns === 'yes' ? 'do' : `don't`;

      console.log(`So you ${res1} want tea and you ${res2} want coffee.`);
      reader.close();
    });
  });
};
