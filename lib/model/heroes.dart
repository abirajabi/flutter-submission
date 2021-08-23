class Heroes {
  String name;
  String mainAttr;
  double strBase;
  double strGain;
  double agiBase;
  double agiGain;
  double intBase;
  double intGain;
  String description;
  String imageAsset;
  List<String> imageUrls;

  Heroes(
      {required this.name,
      required this.mainAttr,
      required this.strBase,
      required this.strGain,
      required this.agiBase,
      required this.agiGain,
      required this.intBase,
      required this.intGain,
      required this.description,
      required this.imageAsset,
      required this.imageUrls});
}

var allHeroesList = [
  Heroes(
      name: 'Anti-Mage',
      mainAttr: "Agility",
      strBase: 23.0,
      strGain: 1.3,
      agiBase: 24.0,
      agiGain: 2.8,
      intBase: 12.0,
      intGain: 1.8,
      description:
          "The monks of Turstarkuri watched the rugged valleys below their mountain monastery as wave after wave of invaders swept through the lower kingdoms. Ascetic and pragmatic, in their remote monastic eyrie they remained aloof from mundane strife, wrapped in meditation that knew no gods or elements of magic. Then came the Legion of the Dead God, crusaders with a sinister mandate to replace all local worship with their Unliving Lord's poisonous nihilosophy. From a landscape that had known nothing but blood and battle for a thousand years, they tore the souls and bones of countless fallen legions and pitched them against Turstarkuri. The monastery stood scarcely a fortnight against the assault, and the few monks who bothered to surface from their meditations believed the invaders were but demonic visions sent to distract them from meditation. They died where they sat on their silken cushions. Only one youth survived--a pilgrim who had come as an acolyte, seeking wisdom, but had yet to be admitted to the monastery. He watched in horror as the monks to whom he had served tea and nettles were first slaughtered, then raised to join the ranks of the Dead God's priesthood. With nothing but a few of Turstarkuri's prized dogmatic scrolls, he crept away to the comparative safety of other lands, swearing to obliterate not only the Dead God's magic users--but to put an end to magic altogether.",
      imageAsset: 'images/hero-covers/antimage_full.png',
      imageUrls: [
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/antimage_mana_break.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/antimage_blink.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/antimage_counterspell.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/antimage_mana_void.png"
      ]),
  Heroes(
      name: 'Axe',
      mainAttr: "Strength",
      strBase: 25.0,
      strGain: 3.4,
      agiBase: 20.0,
      agiGain: 2.2,
      intBase: 18.0,
      intGain: 1.6,
      description:
          "As a grunt in the Army of Red Mist, Mogul Khan set his sights on the rank of Red Mist General. In battle after battle he proved his worth through gory deed. His rise through the ranks was helped by the fact that he never hesitated to decapitate a superior. Through the seven year Campaign of the Thousand Tarns, he distinguished himself in glorious carnage, his star of fame shining ever brighter, while the number of comrades in arms steadily dwindled. On the night of ultimate victory, Axe declared himself the new Red Mist General, and took on the ultimate title of 'Axe.' But his troops now numbered zero. Of course, many had died in battle, but a significant number had also fallen to Axe's blade. Needless to say, most soldiers now shun his leadership. But this matters not a whit to Axe, who knows that a one-man army is by far the best.",
      imageAsset: 'images/hero-covers/axe_full.png',
      imageUrls: [
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/axe_berserkers_call.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/axe_battle_hunger.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/axe_counter_helix.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/axe_culling_blade.png"
      ]),
  Heroes(
      name: 'Bane',
      mainAttr: "Intelligence",
      strBase: 22.0,
      strGain: 2.6,
      agiBase: 22.0,
      agiGain: 2.6,
      intBase: 22.0,
      intGain: 2.6,
      description:
          "When the gods have nightmares, it is Bane Elemental who brings them. Also known as Atropos, Bane was born from the midnight terrors of the goddess Nyctasha. A force of terror too powerful to be contained by sleep, he surfaced from her slumbers, fed upon her immortality, and stole his vaporous form from her inky blood. He is the essence of fear. Mortals who hear his voice hear their darkest secrets whispered in their ear. He calls to the hidden fear in every Hero's heart. Wakefulness is no protection, for Bane's black blood, continuously dripping, is a tar that traps his enemies in nightmare. In the presence of Bane, every Hero remembers to fear the dark.",
      imageAsset: 'images/hero-covers/bane_full.png',
      imageUrls: [
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/bane_enfeeble.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/bane_brain_sap.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/bane_nightmare.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/bane_fiends_grip.png"
      ]),
  Heroes(
      name: 'Bloodseeker',
      mainAttr: "Agility",
      strBase: 22.0,
      strGain: 2.6,
      agiBase: 22.0,
      agiGain: 2.6,
      intBase: 22.0,
      intGain: 2.6,
      description:
          "Strygwyr the Bloodseeker is a ritually sanctioned hunter, Hound of the Flayed Twins, sent down from the mist-shrouded peaks of Xhacatocatl in search of blood. The Flayed Ones require oceanic amounts of blood to keep them sated and placated, and would soon drain their mountain empire of its populace if the priests of the high plateaus did not appease them. Strygwyr therefore goes out in search of carnage. The vital energy of any blood he lets, flows immediately to the Twins through the sacred markings on his weapons and armor. Over the years, he has come to embody the energy of a vicious hound; in battle he is savage as a jackal. Beneath the Mask of the Bloodseeker, in the rush of bloody quenching, it is said that you can sometime see the features of the Flayers taking direct possession of their Hound.",
      imageAsset: 'images/hero-covers/bloodseeker_full.png',
      imageUrls: [
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/bloodseeker_bloodrage.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/bloodseeker_blood_bath.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/bloodseeker_thirst.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/bloodseeker_rupture.png"
      ]),
  Heroes(
      name: 'Crystal Maiden',
      mainAttr: "Intelligence",
      strBase: 18.0,
      strGain: 2.2,
      agiBase: 16.0,
      agiGain: 1.6,
      intBase: 16.0,
      intGain: 3.3,
      description:
          "Born in a temperate realm, raised with her fiery older sister Lina, Rylai the Crystal Maiden soon found that her innate elemental affinity to ice created trouble for all those around her. Wellsprings and mountain rivers froze in moments if she stopped to rest nearby; ripening crops were bitten by frost, and fruiting orchards turned to mazes of ice and came crashing down, spoiled. When their exasperated parents packed Lina off to the equator, Rylai found herself banished to the cold northern realm of Icewrack, where she was taken in by an Ice Wizard who had carved himself a hermitage at the crown of the Blueheart Glacier. After long study, the wizard pronounced her ready for solitary practice and left her to take his place, descending into the glacier to hibernate for a thousand years. Her mastery of the Frozen Arts has only deepened since that time, and now her skills are unmatched.",
      imageAsset: 'images/hero-covers/crystal_maiden_full.png',
      imageUrls: [
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/crystal_maiden_crystal_nova.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/crystal_maiden_frostbite.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/crystal_maiden_brilliance_aura.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/crystal_maiden_freezing_field.png"
      ]),
  Heroes(
      name: 'Drow Ranger',
      mainAttr: "Agility",
      strBase: 18.0,
      strGain: 1.9,
      agiBase: 20.0,
      agiGain: 2.9,
      intBase: 15.0,
      intGain: 1.4,
      description:
          "Drow Ranger's given name is Traxex--a name well suited to the short, trollish, rather repulsive Drow people. But Traxex herself is not a Drow. Her parents were travelers in a caravan set upon by bandits, whose noisy slaughter of innocents roused the ire of the quiet Drow people.",
      imageAsset: 'images/hero-covers/drow_ranger_full.png',
      imageUrls: [
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/drow_ranger_frost_arrows.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/drow_ranger_wave_of_silence.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/drow_ranger_multishot.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/drow_ranger_marksmanship.png"
      ]),
  Heroes(
      name: 'Juggernaut',
      mainAttr: "Agility",
      strBase: 20.0,
      strGain: 2.2,
      agiBase: 34.0,
      agiGain: 2.8,
      intBase: 14.0,
      intGain: 1.4,
      description:
          "No one has ever seen the face hidden beneath the mask of Yurnero the Juggernaut. It is only speculation that he even has one. For defying a corrupt lord, Yurnero was exiled from the ancient Isle of Masks--a punishment that saved his life. The isle soon after vanished beneath the waves in a night of vengeful magic. He alone remains to carry on the Isle's long Juggernaut tradition, one of ritual and swordplay. The last practitioner of the art, Yurnero's confidence and courage are the result of endless practice; his inventive bladework proves that he has never stopped challenging himself. Still, his motives are as unreadable as his expression. For a hero who has lost everything twice over, he fights as if victory is a foregone conclusion.",
      imageAsset: 'images/hero-covers/juggernaut_full.png',
      imageUrls: [
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/juggernaut_blade_fury.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/juggernaut_healing_ward.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/juggernaut_blade_dance.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/juggernaut_omni_slash.png"
      ]),
  Heroes(
      name: 'Mirana',
      mainAttr: "Agility",
      strBase: 18.0,
      strGain: 2.2,
      agiBase: 18.0,
      agiGain: 3.7,
      intBase: 22.0,
      intGain: 1.9,
      description:
          "Born to a royal family, a blood princess next in line for the Solar Throne, Mirana willingly surrendered any claim to mundane land or titles when she dedicated herself completely to the service of Selemene, Goddess of the Moon. Known ever since as Princess of the Moon, Mirana prowls the sacred Nightsilver Woods searching for any who would dare poach the sacred luminous lotus from the silvery pools of the Goddess's preserve. Riding on her enormous feline familiar, she is poised, proud and fearless, attuned to the phases of the moon and the wheeling of the greater constellations. Her bow, tipped with sharp shards of lunar ore, draws on the moon's power to charge its arrows of light.",
      imageAsset: 'images/hero-covers/mirana_full.png',
      imageUrls: [
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/mirana_starfall.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/mirana_arrow.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/mirana_leap.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/mirana_invis.png"
      ]),
  Heroes(
      name: 'Shadow Fiend',
      mainAttr: "Agility",
      strBase: 19.0,
      strGain: 2.7,
      agiBase: 20.0,
      agiGain: 3.5,
      intBase: 18.0,
      intGain: 2.2,
      description:
          "It is said that Nevermore the Shadow Fiend has the soul of a poet, and in fact he has thousands of them. Over the ages he has claimed the souls of poets, priests, emperors, beggars, slaves, philosophers, criminals and (naturally) heroes; no sort of soul escapes him. What he does with them is unknown. No one has ever peered into the Abysm whence Nevermore reaches out like an eel from among astral rocks. Does he devour them one after another? Does he mount them along the halls of an eldritch temple, or pickle the souls in necromantic brine? Is he merely a puppet, pushed through the dimensional rift by a demonic puppeteer? Such is his evil, so intense his aura of darkness, that no rational mind may penetrate it. Of course, if you really want to know where the stolen souls go, there's one sure way to find out: Add your soul to his collection. Or just wait for Nevermore.",
      imageAsset: 'images/hero-covers/shadow_fiend_full.png',
      imageUrls: [
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/nevermore_shadowraze1.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/nevermore_necromastery.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/nevermore_dark_lord.png",
        "https://cdn.cloudflare.steamstatic.com/apps/dota2/images/dota_react/abilities/nevermore_requiem.png"
      ]),
];
