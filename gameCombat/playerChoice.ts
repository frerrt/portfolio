import player from "./interface /character";
import Ennemy from "./interface /enemies";
import Boss from "./interface /boss";
import { Console } from "console";
const fs = require('fs');
function getRandomNumber(min: number, max: number): number {
    return Math.floor(Math.random() * (max - min) + min);
}

export function getPlayer(path: string) {
    try {
        const rarety = playerchoice();
        const content = fs.readFileSync(path, "utf-8");
        const jsonObject: player = JSON.parse(content);
        const players: player[] = [];
        for (let p in jsonObject) {
            if (rarety === jsonObject[p].rarity) {
                players.push(jsonObject[p]);
            }
        }
        const random = Math.floor(Math.random() * players.length);

        return players[random];
    } catch (error) {
        console.error("Player : Wrong use of the program.");
    }
}

export function getEnnemy(path: string) {
    try {
        const rarety = playerchoice();
        const content = fs.readFileSync(path, "utf-8");
        const jsonObject: Ennemy = JSON.parse(content);
        const Enemies: Ennemy[] = [];
        for (let p in jsonObject) {
            if (rarety === jsonObject[p].rarity) {
                Enemies.push(jsonObject[p]);
            }
        }
        const random = Math.floor(Math.random() * Enemies.length);

        return Enemies[random];
    } catch {

        console.error("Ennemy : Wrong use of the program.");
    }
}

export function getBoss(path: string) {
    try {
        console.log(fs.readFileSync(path, "utf-8"))
        const rarety = playerchoice();
        console.log('rarety: ',rarety);
        const content = fs.readFileSync(path, "utf-8");
        console.log('content: ', content);
        const jsonObject: Boss = JSON.parse(content);
        console.log('jsonObject: ', jsonObject);
        const boss: Boss[] = [];
        console.log(boss);
        for (let p in jsonObject) {
            if (rarety === jsonObject[p].rarity) {
                boss.push(jsonObject[p]);
            }
        }
        console.log(boss);

        const random = Math.floor(Math.random() * boss.length - 1);
        console.log(random);

        console.log(boss[random])
        return boss[random];

    } catch {
        console.error("Boss : Wrong use of the program.");
    }
}

export function playerchoice() {
    // choix des personnage aleatoire en fonction de leur rarete 
    // chercher les player en fonction de leur rarete ()

    /*const Players = */

    // const myplayer = getplayer('../json/players.json');
    // const rarete = getRandomNumber(1, 5);
    const aleatoire = getRandomNumber(0, 100);
    let res;


    if (aleatoire >= 0 && aleatoire <= 49) { //0 à 49 == 50
        res = 1;

    } else if (aleatoire >= 50 && aleatoire < 80) { //  50 à 80 == 30
        res = 2;
    } else if (aleatoire >= 80 && aleatoire < 95) { // 80 à 95 == 15
        res = 3;
    } else if (aleatoire >= 95 && aleatoire < 99) { //95 à 99 == 4
        res = 4;
    } else if (aleatoire >= 99 && aleatoire < 100) { //99 à 100 ==1
        res = 5;
    }
    return res;
}










//let randomNum = playerchoice();
// const player1 = getplayer('../json/players.json');
// console.log(player1);
// const ennemy1 = getEnnemy('../json/enemies.json')
// console.log(ennemy1);
// const boss1 = getBoss('../json/bosses.json');
// console.log(boss1);