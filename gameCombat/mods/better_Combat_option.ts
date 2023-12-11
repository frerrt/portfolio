const readlineSync = require('readline-sync');
import combat from "../combat";
import floor from "../floor";


export default function mods() {
    const choice = ["Attack", "Heal", "Protect"];
    const index = readlineSync.keyInSelect(choice, "Attack / Heal / Protect ?");

    // lancer le jeu avec le fonction floor
    floor();

    console.log("test");
}

mods();