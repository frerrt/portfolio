"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var playerChoice_1 = require("./playerChoice");
function displaygame(enemies, player) {
    var fightId = 0;
    var barre_vie = "I";
    console.log("============== FIGHT ".concat(fightId + 1, "  ==================="));
    console.log("".concat(player.name));
    console.log("HP:".concat(barre_vie.repeat(player.hp > 0 ? player.hp : 0)));
    console.log("".concat(enemies.name));
    console.log("HP:".concat(barre_vie.repeat(enemies.hp > 0 ? enemies.hp : 0)));
    console.log("-- - Options----------- ");
    console.log("1. Attack        2. Heal");
    console.log("Get ready to face ".concat(enemies.name, "!"));
    //console.log(`${ id } + ${ name } + ${ hp }`);
    fightId++;
}
exports.default = displaygame;
//afficher link
var hero = (0, playerChoice_1.getplayer)('../json/players.json');
//afficher Bokonlin
var enemies = (0, playerChoice_1.getEnnemy)('../json/enemies.json');
displaygame(enemies, hero);
