"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.playerchoice = exports.getBoss = exports.getEnnemy = exports.getPlayer = void 0;
var fs = require('fs');
function getRandomNumber(min, max) {
    return Math.floor(Math.random() * (max - min) + min);
}
function getPlayer(path) {
    try {
        var rarety = playerchoice();
        var content = fs.readFileSync(path, "utf-8");
        var jsonObject = JSON.parse(content);
        var players = [];
        for (var p in jsonObject) {
            if (rarety === jsonObject[p].rarity) {
                players.push(jsonObject[p]);
            }
        }
        var random = Math.floor(Math.random() * players.length);
        return players[random];
    }
    catch (error) {
        console.error("Player : Wrong use of the program.");
    }
}
exports.getPlayer = getPlayer;
function getEnnemy(path) {
    try {
        var rarety = playerchoice();
        var content = fs.readFileSync(path, "utf-8");
        var jsonObject = JSON.parse(content);
        var Enemies = [];
        for (var p in jsonObject) {
            if (rarety === jsonObject[p].rarity) {
                Enemies.push(jsonObject[p]);
            }
        }
        var random = Math.floor(Math.random() * Enemies.length);
        return Enemies[random];
    }
    catch (_a) {
        console.error("Ennemy : Wrong use of the program.");
    }
}
exports.getEnnemy = getEnnemy;
function getBoss(path) {
    try {
        console.log(fs.readFileSync(path, "utf-8"));
        var rarety = playerchoice();
        console.log('rarety: ', rarety);
        var content = fs.readFileSync(path, "utf-8");
        console.log('content: ', content);
        var jsonObject = JSON.parse(content);
        console.log('jsonObject: ', jsonObject);
        var boss = [];
        console.log(boss);
        for (var p in jsonObject) {
            if (rarety === jsonObject[p].rarity) {
                boss.push(jsonObject[p]);
            }
        }
        console.log(boss);
        var random = Math.floor(Math.random() * boss.length - 1);
        console.log(random);
        console.log(boss[random]);
        return boss[random];
    }
    catch (_a) {
        console.error("Boss : Wrong use of the program.");
    }
}
exports.getBoss = getBoss;
function playerchoice() {
    // choix des personnage aleatoire en fonction de leur rarete 
    // chercher les player en fonction de leur rarete ()
    /*const Players = */
    // const myplayer = getplayer('../json/players.json');
    // const rarete = getRandomNumber(1, 5);
    var aleatoire = getRandomNumber(0, 100);
    var res;
    if (aleatoire >= 0 && aleatoire <= 49) { //0 à 49 == 50
        res = 1;
    }
    else if (aleatoire >= 50 && aleatoire < 80) { //  50 à 80 == 30
        res = 2;
    }
    else if (aleatoire >= 80 && aleatoire < 95) { // 80 à 95 == 15
        res = 3;
    }
    else if (aleatoire >= 95 && aleatoire < 99) { //95 à 99 == 4
        res = 4;
    }
    else if (aleatoire >= 99 && aleatoire < 100) { //99 à 100 ==1
        res = 5;
    }
    return res;
}
exports.playerchoice = playerchoice;
//let randomNum = playerchoice();
// const player1 = getplayer('../json/players.json');
// console.log(player1);
// const ennemy1 = getEnnemy('../json/enemies.json')
// console.log(ennemy1);
// const boss1 = getBoss('../json/bosses.json');
// console.log(boss1);
