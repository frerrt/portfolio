import { getBoss, } from "../playerChoice";
const readline = require('readline-sync');
import Character from "../interface /character";
// let player: Character = getPlayer("../json/players.json")

export default function combat(playerCombatBoss: Character, maxHp: number) {

    let boss: Character = getBoss("../json/bosses.json")

    // maxHp = playerCombatBoss.hp;
    // let regenHp: number = 0;
    // console.log('La vie de ennemy avant tout :' + enemy.hp);
    while (playerCombatBoss.hp > 0 && boss.hp > 0) {
        console.log(`La vie de ${playerCombatBoss.name} :${playerCombatBoss.hp}`);
        console.log(`La vie de ${boss.name} :${boss.hp}`);

        const options = ["Attack", "Heal"]
        const choice = readline.keyInSelect(options, "Attack or Heal ?")
        console.log("\n");

        if (choice + 1 === 1) { // quand le player attaque le boss
            if (playerCombatBoss.hp <= maxHp) {
                playerCombatBoss.hp = playerCombatBoss.hp - boss.str;
                boss.hp = boss.hp - playerCombatBoss.str;
            }

            console.log("Vous avez " + playerCombatBoss.hp);

            if (boss.hp <= 0) {
                boss.hp = 0
                console.log("L'enemie à " + boss.hp + "hp");


            }


        }
        else if (choice + 1 === 2) { // quand le player se soigne de boss

            console.log("Vous avez " + playerCombatBoss.hp + "hp");
            if (playerCombatBoss.hp < maxHp) {
                // playHp = max
                console.log("On va heal de " + (maxHp / 2));
                playerCombatBoss.hp += (maxHp / 2);
                if (playerCombatBoss.hp > maxHp) {

                    playerCombatBoss.hp = maxHp;
                }

                // playerCombat.hp += maxHp / 2; // La c'est pas bon, il faut bien faire ce truc !!!!
                playerCombatBoss.hp = playerCombatBoss.hp - boss.str;
            }
            else {
                console.log("Vous ne pouvez pas vous heal !");

            }


            console.log("Vous ne pouvez pas vous heal !");

            console.log("Vous avez maintenant: " + playerCombatBoss.hp + "hp");
        }
        else {
            process.exit();
        }
        // console.log("Il te reste " + player.hp + "hp");
        // console.log("\n");

    }
    if (boss.hp === 0) {
        console.log(`Congratulations! You defeated ${boss.name} !!\n`);

    } else {
        console.log("You lose\n");
        process.exit();
    }
}
// combat()

