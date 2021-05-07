import 'package:clash_of_clans_troops/models/troop.dart';

class TroopsRepository {
  List<Troop> _troops;

  TroopsRepository() {
    this._troops = [
      Troop(
          "Barbarian",
          "This fearless warrior relies on his bulging muscles and striking mustache to wreak havoc in enemy villages. Release a horde of Barbarians and enjoy the mayhem!",
          16,
          5,
          300),
      Troop(
          "Archer",
          "These sharpshooters like to keep their distance on the battlefield and in life. Nothing makes them happier than single-mindedly taking down their target.",
          24,
          6,
          400),
      Troop(
          "Giant",
          "These big guys may seem calm, but show them a turret or cannon and you'll see their fury unleashed! Slow yet durable, these warriors are best used to soak up hits.",
          12,
          30,
          3000),
      Troop(
          "Goblin",
          "These pesky little creatures only have eyes for one thing: LOOT! They are faster than a Spring Trap, and their hunger for resources is limitless.",
          32,
          7,
          200),
      Troop(
          "Wall_Breaker",
          "Nothing warms a Wall Breaker's cold and undead heart like blowing up walls. A squad of them will make way for your ground units, and they will do it with a BANG!",
          24,
          15,
          1400),
      Troop(
          "Balloon",
          "These promoted skeletons have traded in their joy of destroying walls for a joy of destroying defenses. Deploy them to take out pesky mortars and cannons!",
          10,
          30,
          5000),
      Troop(
          "Wizard",
          "The Wizard is a terrifying presence on the battlefield. Pair him up with some of his fellows and cast concentrated blasts of destruction on anything, land or sky!",
          16,
          30,
          3800),
      Troop(
          "Healer",
          "This majestic creature lives to protect and aid her fellow troops. Any army is improved with her healing support, but make sure to protect her from air defenses!",
          16,
          120,
          140000),
      Troop(
          "Dragon",
          "The might of the dragons are known throughout the land. This scaly terror of the skies feels no mercy and nothing will escape the fiery splashes of his breath.",
          16,
          180,
          20000),
      Troop(
          "P.E.K.K.A",
          "Is P.E.K.K.A a knight? A samurai? A robot? No one knows! P.E.K.K.A's armor absorbs even the mightiest of blows.",
          16,
          180,
          27500),
      Troop(
          "Baby_Dragon",
          "This fire-breathing hatchling is shy around other air units, but leave it alone and it will throw a fit! When not around other air units, Baby Dragons become enraged and gain bonus damage and attack speed.",
          20,
          150,
          10000),
      Troop(
          "Miner",
          "These sneaky shovelers burrow underground, pass beneath walls, and pop up right next to their targets. While underground, Miners cannot be damaged and will not trigger traps, but still gain bonuses from Spells.",
          32,
          30,
          4200),
      Troop(
          "Electro_Dragon",
          "Possessing iron-tough scales and a breath of devastating lightning, the Electro Dragon's favorite thing is raining destruction from above. When vanquished, the Electro Dragon even pummels the ground with lightning strikes!",
          12,
          360,
          36000),
      Troop(
          "Yeti",
          "The heavy-hitting furry fellow digs cold weather and his Yetimite buddies. Hurt him, and you'll make the Yetimites real angry.",
          12,
          180,
          19000),
    ];
  }

  get troops => this._troops;
}
