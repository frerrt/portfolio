"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var combat_1 = require("./combat");
var combatBoss_1 = require("./combatBoss");
var playerChoice_1 = require("./playerChoice");
var fs = require('fs');
function floor() {
    // getPlayer 
    var player = (0, playerChoice_1.getPlayer)("../../json/players.json");
    var maxHp = player.hp;
    console.log(player);
    for (var i = 1; i < 3; i++) {
        (0, combat_1.default)(player, maxHp);
    }
    for (var i = 1; i < 2; i++) {
        (0, combatBoss_1.default)(player, maxHp);
    }
}
exports.default = floor;
// floor()
