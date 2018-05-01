const {exec} = require('child_process');
const fs = require('fs');

const pathtodir = process.argv[2];
const tag1 = process.argv[3];
const tag2 = process.argv[4];
const pathtooutput = process.argv[5];
const ticketregex = /RR-\d+/ig;
const tickets = [];
const newArr = [];
let newSt = '';
let logFileLines;

console.log(`git --git-dir ${pathtodir}/.git fetch && git --git-dir ${pathtodir}/.git pull && git --git-dir ${pathtodir}/.git log ${tag1}..${tag2} > output/${pathtooutput}.log`);

exec(`git --git-dir ${pathtodir}/.git log ${tag1}..${tag2} > output/${pathtooutput}.log`,
  (err, stdout, stderr) => {
    if (err) {
      console.log(`err: ${err}`);
    }

    if (stdout) {
      console.log(`stdout: ${stdout}`);
    }

    if (stderr) {
      console.log(`stderr: ${stderr}`);
    }
  });


// could be promise later
setTimeout(() => {
  logFileLines = fs.readFileSync(`output/${pathtooutput}.log`, 'ascii').toString().split("\n");
  console.log(`output/${pathtooutput}.log`);
  console.log(logFileLines);

  logFileLines.forEach((logLine) => {
    console.log(logLine);
    let match = ticketregex.exec(logLine);
    if (match) {
      tickets.push(match[0]);
    }
  });

  for (let i = 0; i < tickets.length; i++) {
    let tick = tickets.pop().toUpperCase();
    if (newArr.indexOf(tick) === -1) {
      newArr.push(tick.toUpperCase());
    }
  }

  for (let i = 0; i < newArr.length; i++) {
    newArr[i] = `\nhttps://jira.relayzone.com/browse/${newArr[i]}`;
    newSt += `\nhttps://jira.relayzone.com/browse/${newArr[i]}`;
  }

  console.log(newArr);

  fs.writeFile(`output/${pathtooutput}-jira.txt`, newArr, (err) => {
    if (err) {
      console.log(`Error: ${err}`);
      return;
    }
  });

  fs.writeFile(`output/${pathtooutput}-jira-string.txt`, newSt, (err) => {
    if (err) {
      console.log(`Error: ${err}`);
      return;
    }
  });

}, 2000);
