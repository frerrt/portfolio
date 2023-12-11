
import { getEnnemy } from "../playerChoice";
const readline = require('readline-sync');
// import getEnemies from "./enemies";
import Character from "../interface /character";
import Enemies from "../interface /enemies";


export default function combat(playerCombat: Character, maxHp: number) {
    let enemy: Enemies = getEnnemy("../json/enemies.json")

    // maxHp = playerCombat.hp;
    // console.log('La vie de ennemy avant tout :' + enemy.hp);
    let fightId: number = 0;
    while (playerCombat.hp > 0 && enemy.hp > 0) {
        let barre_vie: string = "I";

        console.log(`============== FIGHT ${fightId + 1}  ===================`);
        console.log(`${playerCombat.name}`);
        console.log(`HP:${barre_vie.repeat(playerCombat.hp > 0 ? playerCombat.hp : 0)}`);
        console.log(`${enemy.name}`);
        console.log(`HP:${barre_vie.repeat(enemy.hp > 0 ? enemy.hp : 0)}`);
        fightId++;
        // console.log(`La vie de ${playerCombat.name} :${playerCombat.hp}`);
        // console.log(`La vie de ${enemy.name} :${enemy.hp}`);
        // console.log(`Le str de personnage ${playerCombat.str} et le str de l'enemie est ${enemy.str}`);
        const options = ["Attack", "Heal"]
        const choice = readline.keyInSelect(options, "Attack or Heal ?")
        console.log("\n");

        if (choice + 1 === 1) { // attaque
            if (playerCombat.hp <= maxHp) {
                playerCombat.hp = playerCombat.hp - enemy.str; // ennemie attque
                enemy.hp = enemy.hp - playerCombat.str;   // hero attaque
            }

            console.log("Vous avez " + playerCombat.hp);

            if (enemy.hp <= 0) {  // resolution de probleme si hp ennemie < ou = 0 ennemie est mort donc vie à 0
                enemy.hp = 0
                console.log("L'enemie à " + enemy.hp + "hp");
            } else if (playerCombat.hp <= 0) { // meme logique
                playerCombat.hp = 0
                console.log("Vous avez " + playerCombat.hp + "hp");
            }


        }
        else if (choice + 1 === 2) { // heal
            console.log("Vous avez " + playerCombat.hp + "hp");
            if (playerCombat.hp < maxHp) { //MAX - playerHp
                // playHp = max
                console.log("On va heal de " + (maxHp / 2));
                playerCombat.hp += (maxHp / 2);
                if (playerCombat.hp > maxHp) { // pour ne pas depasser son hp max

                    playerCombat.hp = maxHp;
                }

                // playerCombat.hp += maxHp / 2; // La c'est pas bon, il faut bien faire ce truc !!!!
                playerCombat.hp = playerCombat.hp - enemy.str;
            }
            else {
                console.log("Vous ne pouvez pas vous heal !");
            }
            if (playerCombat.hp <= 0) {
                playerCombat.hp = 0
                console.log("Vous avez " + playerCombat.hp + "hp");
            }
            console.log("Vous avez maintenant: " + playerCombat.hp + "hp");
        }
        else {
            console.log("Vous avez quitté");
            process.exit();
        }

        // console.log("Il te reste " + playerCombat.hp + "hp");
        // console.log("\n");

    }
    if (enemy.hp === 0) {
        console.log(`Congratulations! You defeated ${enemy.name} !!\n`);

    } else if (playerCombat.hp === 0) {
        console.log("You lose\n");
        process.exit();
    }
}
