"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var readlineSync = require('readline-sync');
var floor_1 = require("../floor");
function mods() {
    var choice = ["Attack", "Heal", "Protect"];
    var index = readlineSync.keyInSelect(choice, "Attack / Heal / Protect ?");
    // lancer le jeu avec le fonction floor
    (0, floor_1.default)();
    console.log("test");
}
exports.default = mods;
mods();
