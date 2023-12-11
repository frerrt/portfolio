import getCombat from "./combat";
import getBosses from "./combatBoss"
import { getPlayer } from "../playerChoice";
import Character from "../interface /character";

const fs = require('fs');

export default function floor() {
    // getPlayer 
    let player: Character = getPlayer("../json/players.json");
    let maxHp = player.hp;
    console.log(player);
    for (let i = 1; i < 5; i++) {
        getCombat(player, maxHp);
    }
    for (let i = 1; i < 2; i++) {
        getBosses(player, maxHp);
    }
}

// floor()
