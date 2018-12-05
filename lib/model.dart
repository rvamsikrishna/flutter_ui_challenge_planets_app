import 'package:flutter/material.dart';

List<Planet> planets = <Planet>[
  Planet(
    name: 'Mercury',
    color: Colors.blueGrey,
    diameter: 0.383,
    moons: [],
    description:
        'Mercury is the smallest and innermost planet in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods.',
    intro:
        'Mercury is the smallest planet in our solar system. It’s just a little bigger than Earth’s moon. It is the closest planet to the sun, but it’s actually not the hottest. Venus is hotter. Along with Venus, Earth, and Mars, Mercury is one of the rocky planets. It has a solid surface that is covered with craters.',
    formation:
        'Mercury appears to have a solid silicate crust and mantle overlying a solid, iron sulfide outer core layer, a deeper liquid core layer, and possibly a solid inner core.Mercury is one of four terrestrial planets in the Solar System, and is a rocky body like Earth. It is the smallest planet in the Solar System, with an equatorial radius of 2,439.7 kilometres (1,516.0 mi).[2] Mercury is also smaller—albeit more massive—than the largest natural satellites in the Solar System, Ganymede and Titan. Mercury consists of approximately 70% metallic and 30% silicate material.[22] Mercury\'s density is the second highest in the Solar System at 5.427 g/cm3, only slightly less than Earth\'s density of 5.515 g/cm3.[2] If the effect of gravitational compression were to be factored out from both planets, the materials of which Mercury is made would be denser than those of Earth, with an uncompressed density of 5.3 g/cm3 versus Earth\'s 4.4 g/cm3.',
    history:
        'The earliest known recorded observations of Mercury are from the Mul.Apin tablets. These observations were most likely made by an Assyrian astronomer around the 14th century BC.[119] The cuneiform name used to designate Mercury on the Mul.Apin tablets is transcribed as Udu.Idim.Guu4.Ud ("the jumping planet"). Babylonian records of Mercury date back to the 1st millennium BC. The Babylonians called the planet Nabu after the messenger to the gods in their mythology.',
    imgAssetPath: 'assets/mercury.jpg',
    vidAssetPath: 'assets/mercury.webp',
  ),
  Planet(
    name: 'Venus',
    color: Colors.orangeAccent,
    diameter: 0.949,
    moons: [],
    description:
        'Venus is the second planet from the Sun, orbiting it every 224.7 Earth days. It is a terrestrial planet.',
    intro:
        'Venus is the second planet from the Sun, orbiting it every 224.7 Earth days.[13] It has the longest rotation period (243 days) of any planet in the Solar System and rotates in the opposite direction to most other planets (meaning the Sun would rise in the west and set in the east).[14] It does not have any natural satellites. It is named after the Roman goddess of love and beauty.',
    formation:
        'The Venusian surface was a subject of speculation until some of its secrets were revealed by planetary science in the 20th century. Venera landers in 1975 and 1982 returned images of a surface covered in sediment and relatively angular rocks.[24] The surface was mapped in detail by Magellan in 1990–91. The ground shows evidence of extensive volcanism, and the sulfur in the atmosphere may indicate that there have been some recent eruptions.',
    history:
        'Though some ancient civilizations referred to Venus both as the "morning star" and as the "evening star", names that reflect the assumption that these were two separate objects, the earliest recorded observations of Venus by the ancient Sumerians show that they recognized Venus as a single object,[128] associated it with the goddess Inanna.[128][129][130] Inanna\'s movements in several of her myths, including Inanna and Shukaletuda and Inanna\'s Descent into the Underworld appear to parallel the motion of the planet Venus.[128] The Venus tablet of Ammisaduqa, believed to have been compiled around the mid-seventeenth century BCE,[131] shows the Babylonians understood the two were a single object, referred to in the tablet as the "bright queen of the sky", and could support this view with detailed observations.',
    imgAssetPath: 'assets/venus.jpg',
    vidAssetPath: 'assets/venus.webp',
  ),
  Planet(
    name: 'Earth',
    color: Colors.blue,
    moons: [
      Moon(
        name: 'Moon',
        description:
            'The Moon is an astronomical body that orbits planet Earth and is Earth\'s only permanent natural satellite.',
        intro:
            'The Moon is an astronomical body that orbits planet Earth and is Earth\'s only permanent natural satellite. It is the fifth-largest natural satellite in the Solar System, and the largest among planetary satellites relative to the size of the planet that it orbits (its primary). ',
        formation:
            'The Moon formed 4.51 billion years ago,[f] some 60 million years after the origin of the Solar System. Several forming mechanisms have been proposed,[29] including the fission of the Moon from Earth\'s crust through centrifugal force[30] (which would require too great an initial spin of Earth),[31] the gravitational capture of a pre-formed Moon[32] (which would require an unfeasibly extended atmosphere of Earth to dissipate the energy of the passing Moon),[31] and the co-formation of Earth and the Moon together in the primordial accretion disk (which does not explain the depletion of metals in the Moon).[31] These hypotheses also cannot account for the high angular momentum of the Earth–Moon system.',
        history:
            'Understanding of the Moon\'s cycles was an early development of astronomy: by the 5th century BC, Babylonian astronomers had recorded the 18-year Saros cycle of lunar eclipses,[169] and Indian astronomers had described the Moon\'s monthly elongation.[170] The Chinese astronomer Shi Shen (fl. 4th century BC) gave instructions for predicting solar and lunar eclipses.[171] Later, the physical form of the Moon and the cause of moonlight became understood. The ancient Greek philosopher Anaxagoras (d. 428 BC) reasoned that the Sun and Moon were both giant spherical rocks, and that the latter reflected the light of the former.[172][173] Although the Chinese of the Han Dynasty believed the Moon to be energy equated to qi, their radiating influence theory also recognized that the light of the Moon was merely a reflection of the Sun, and Jing Fang (78–37 BC) noted the sphericity of the Moon.[174] In the 2nd century AD, Lucian wrote the novel A True Story, in which the heroes travel to the Moon and meet its inhabitants. In 499 AD, the Indian astronomer Aryabhata mentioned in his Aryabhatiya that reflected sunlight is the cause of the shining of the Moon.[175] The astronomer and physicist Alhazen (965–1039) found that sunlight was not reflected from the Moon like a mirror, but that light was emitted from every part of the Moon\'s sunlit surface in all directions.[176] Shen Kuo (1031–1095) of the Song dynasty created an allegory equating the waxing and waning of the Moon to a round ball of reflective silver that, when doused with white powder and viewed from the side, would appear to be a crescent.',
        imgAssetPath: 'assets/moon.jpg',
        vidAssetPath: 'assets/moon.webp',
      )
    ],
    diameter: 1.0,
    description:
        'Earth is the third planet from the Sun and the only astronomical object known to harbor life.',
    intro:
        'Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating and other sources of evidence, Earth formed over 4.5 billion years ago.',
    formation:
        'The oldest material found in the Solar System is dated to 4.5672±0.0006 billion years ago (Bya). By 4.54±0.04 Bya the primordial Earth had formed. The bodies in the Solar System formed and evolved with the Sun. In theory, a solar nebula partitions a volume out of a molecular cloud by gravitational collapse, which begins to spin and flatten into a circumstellar disk, and then the planets grow out of that disk with the Sun. A nebula contains gas, ice grains, and dust (including primordial nuclides). According to nebular theory, planetesimals formed by accretion, with the primordial Earth taking 10–20 million years (Mys) to form.',
    history:
        'Earth\'s atmosphere and oceans were formed by volcanic activity and outgassing. Water vapor from these sources condensed into the oceans, augmented by water and ice from asteroids, protoplanets, and comets.[60] In this model, atmospheric "greenhouse gases" kept the oceans from freezing when the newly forming Sun had only 70% of its current luminosity.[61] By 3.5 Bya, Earth\'s magnetic field was established, which helped prevent the atmosphere from being stripped away by the solar wind.',
    imgAssetPath: 'assets/earth.jpg',
    vidAssetPath: 'assets/earth.webp',
  ),
  Planet(
    name: 'Mars',
    moons: [
      Moon(
        name: 'Deimos',
        description:
            'Deimos is the smaller and outermost of the two natural satellites of the planet Mars, the other being Phobos.',
        intro:
            'Deimos is the smaller and outermost of the two natural satellites of the planet Mars, the other being Phobos. Deimos has a mean radius of 6.2 km (3.9 mi) and takes 30.3 hours to orbit Mars.[2] Deimos is 23,460 km (14,580 mi) from Mars, much further than Mars\'s other moon, Phobos.',
        formation:
            'Deimos, like Mars\'s other moon, Phobos, has spectra, albedos, and densities similar to those of a C- or D-type asteroid[citation needed]. Like most bodies of its size, Deimos is highly non-spherical with triaxial dimensions of 15 × 12.2 × 11 km,[4] making it 56% of the size of Phobos. Deimos is composed of rock rich in carbonaceous material, much like C-type asteroids and carbonaceous chondrite meteorites[citation needed]. It is cratered, but the surface is noticeably smoother than that of Phobos, caused by the partial filling of craters with regolith[citation needed]. The regolith is highly porous and has a radar-estimated density of only 1.471 g/cm3.',
        history:
            'The origin of Mars\'s moons is unknown and the hypotheses are controversial. The main hypotheses are that they formed either by capture or by accretion. Because of the similarity to the composition of C- or D-type asteroids, one hypothesis is that the moons may be objects captured into Martian orbit from the asteroid belt, with orbits that have been circularized either by atmospheric drag or tidal forces,[23] as capture requires dissipation of energy. The current Martian atmosphere is too thin to capture a Phobos-sized object by atmospheric braking.[19] Geoffrey Landis has pointed out that the capture could have occurred if the original body was a binary asteroid that separated due to tidal forces.[24] The main alternative hypothesis is that the moons accreted in the present position. Another hypothesis is that Mars was once surrounded by many Phobos- and Deimos-sized bodies, perhaps ejected into orbit around it by a collision with a planetesimal',
        imgAssetPath: 'assets/deimos.jpg',
        vidAssetPath: 'assets/deimos.webp',
      ),
      Moon(
        name: 'Phobos',
        description:
            'Phobos is the innermost and larger of the two natural satellites of Mars',
        intro:
            'Phobos is a small, irregularly shaped object with a mean radius of 11 km (7 mi)[1] and is seven times as massive as the outer moon, Deimos. Phobos is named after the Greek god Phobos, a son of Ares (Mars) and Aphrodite (Venus) and the personification of horror.',
        formation:
            'Phobos has dimensions of 27 km × 22 km × 18 km,[1] and retains too little mass to be rounded under its own gravity. Phobos does not have an atmosphere due to its low mass and low gravity.[15] It is one of the least reflective bodies in the Solar System, with an albedo of about 0.071.[2] Infrared spectra show that it has carbon-rich material found in carbonaceous chondrites. Instead, its composition shows similarities to that of Mars’ surface.[16] Phobos\'s density is too low to be solid rock, and it is known to have significant porosity.[17][18][19] These results led to the suggestion that Phobos might contain a substantial reservoir of ice. Spectral observations indicate that the surface regolith layer lacks hydration, but ice below the regolith is not ruled out.',
        history:
            'The origin of the Martian moons is still controversial.[44] Phobos and Deimos both have much in common with carbonaceous C-type asteroids, with spectra, albedo, and density very similar to those of C- or D-type asteroids.[45] Based on their similarity, one hypothesis is that both moons may be captured main-belt asteroids.[46][47] Both moons have very circular orbits which lie almost exactly in Mars\'s equatorial plane, and hence a capture origin requires a mechanism for circularizing the initially highly eccentric orbit, and adjusting its inclination into the equatorial plane, most probably by a combination of atmospheric drag and tidal forces,[48] although it is not clear that sufficient time is available for this to occur for Deimos.[44] Capture also requires dissipation of energy. The current Martian atmosphere is too thin to capture a Phobos-sized object by atmospheric braking.[44] Geoffrey A. Landis has pointed out that the capture could have occurred if the original body was a binary asteroid that separated under tidal forces.',
        imgAssetPath: 'assets/phobos.jpg',
        vidAssetPath: 'assets/phobos.webp',
      )
    ],
    color: Colors.red,
    diameter: 0.532,
    description:
        'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System after Mercury.',
    intro:
        'Mars is a terrestrial planet with a thin atmosphere, having surface features reminiscent both of the impact craters of the Moon and the valleys, deserts, and polar ice caps of Earth.',
    formation:
        'Like Earth, Mars has differentiated into a dense metallic core overlaid by less dense materials.[38] Current models of its interior imply a core with a radius of about 1,794 ± 65 kilometers (1,115 ± 40 mi), consisting primarily of iron and nickel with about 16–17% sulfur.[39] This iron(II) sulfide core is thought to be twice as rich in lighter elements as Earth\'s.[40] The core is surrounded by a silicate mantle that formed many of the tectonic and volcanic features on the planet, but it appears to be dormant. Besides silicon and oxygen, the most abundant elements in the Martian crust are iron, magnesium, aluminum, calcium, and potassium. The average thickness of the planet\'s crust is about 50 km (31 mi), with a maximum thickness of 125 km (78 mi).[40] Earth\'s crust averages 40 km (25 mi).',
    history:
        'The ancient Sumerians believed that Mars was Nergal, the god of war and plague.[258] During Sumerian times, Nergal was a minor deity of little significance,[258] but, during later times, his main cult center was the city of Nineveh.[258] In Mesopotamian texts, Mars is referred to as the "star of judgement of the fate of the dead".[259] The existence of Mars as a wandering object in the night sky was recorded by the ancient Egyptian astronomers and, by 1534 BCE, they were familiar with the retrograde motion of the planet.[260] By the period of the Neo-Babylonian Empire, the Babylonian astronomers were making regular records of the positions of the planets and systematic observations of their behavior. For Mars, they knew that the planet made 37 synodic periods, or 42 circuits of the zodiac, every 79 years. They invented arithmetic methods for making minor corrections to the predicted positions of the planets.[261][262] In Ancient Greek, the planet was known as Πυρόεις.',
    imgAssetPath: 'assets/mars.jpg',
    vidAssetPath: 'assets/mars.webp',
  ),
  Planet(
    name: 'Jupiter',
    color: Colors.brown,
    diameter: 1.7,
    moons: [],
    description:
        'Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a giant planet.',
    intro:
        'Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a giant planet with a mass one-thousandth that of the Sun, but two-and-a-half times that of all the other planets in the Solar System combined. Jupiter and Saturn are gas giants; the other two giant planets, Uranus and Neptune, are ice giants.',
    formation:
        'Astronomers have discovered nearly 500 planetary systems with multiple planets. Regularly these systems include a few planets with masses several times greater than Earth\'s (super-Earths), orbiting closer to their star than Mercury is to the Sun, and sometimes also Jupiter-mass gas giants close to their star. Earth and its neighbor planets may have formed from fragments of planets after collisions with Jupiter destroyed those super-Earths near the Sun. As Jupiter came toward the inner Solar System, in what theorists call the grand tack hypothesis, gravitational tugs and pulls occurred causing a series of collisions between the super-Earths as their orbits began to overlap. Jupiter moving out of the inner Solar System would have allowed the formation of inner planets, including Earth.',
    history:
        'The observation of Jupiter dates back to at least the Babylonian astronomers of the 7th or 8th century BC.[102] The ancient Chinese also observed the orbit of Suìxīng (歲星) and established their cycle of 12 earthly branches based on its approximate number of years; the Chinese language still uses its name (simplified as 岁) when referring to years of age. By the 4th century BC, these observations had developed into the Chinese zodiac,[103] with each year associated with a Tai Sui star and god controlling the region of the heavens opposite Jupiter\'s position in the night sky; these beliefs survive in some Taoist religious practices and in the East Asian zodiac\'s twelve animals, now often popularly assumed to be related to the arrival of the animals before Buddha. The Chinese historian Xi Zezong has claimed that Gan De, an ancient Chinese astronomer, discovered one of Jupiter\'s moons in 362 BC with the unaided eye. If accurate, this would predate Galileo\'s discovery by nearly two millennia.[104][105] In his 2nd century work the Almagest, the Hellenistic astronomer Claudius Ptolemaeus constructed a geocentric planetary model based on deferents and epicycles to explain Jupiter\'s motion relative to Earth, giving its orbital period around Earth as 4332.38 days, or 11.86 years.',
    imgAssetPath: 'assets/jupiter.jpg',
    vidAssetPath: 'assets/jupiter.webp',
  ),
  Planet(
    name: 'Saturn',
    color: Colors.lime,
    diameter: 1.55,
    moons: [],
    description:
        'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter.',
    intro:
        'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius about nine times that of Earth.[12][13] It has only one-eighth the average density of Earth, but with its larger volume Saturn is over 95 times more massive.',
    formation:
        'Saturn is a gas giant because it is predominantly composed of hydrogen and helium. It lacks a definite surface, though it may have a solid core.[21] Saturn\'s rotation causes it to have the shape of an oblate spheroid; that is, it is flattened at the poles and bulges at its equator. Its equatorial and polar radii differ by almost 10%: 60,268 km versus 54,364 km.[2] Jupiter, Uranus, and Neptune, the other giant planets in the Solar System, are also oblate but to a lesser extent. The combination of the bulge and rotation rate means that the effective surface gravity along the equator, 8.96 m/s2, is 74% that at the poles and is lower than the surface gravity of Earth. However, the equatorial escape velocity of nearly 36 km/s is much higher than that for Earth.',
    history:
        'The observation and exploration of Saturn can be divided into three main phases. The first era was ancient observations (such as with the naked eye), before the invention of the modern telescopes. Starting in the 17th century, progressively more advanced telescopic observations from Earth have been made. The third phase is visitation by space probes, by either orbiting or flyby. In the 21st century, observations continue from Earth (including Earth-orbiting observatories like the Hubble Space Telescope) and, until its 2017 retirement, from the Cassini orbiter around Saturn.',
    imgAssetPath: 'assets/saturn.jpg',
    vidAssetPath: 'assets/saturn.webp',
  ),
  Planet(
    name: 'Uranus',
    color: Colors.teal,
    diameter: 1.3,
    moons: [],
    description:
        'Uranus is the seventh planet from the Sun. It has the third-largest planet',
    intro:
        'Uranus is the seventh planet from the Sun. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. Uranus is similar in composition to Neptune, and both have bulk chemical compositions which differ from that of the larger gas giants Jupiter and Saturn.',
    formation:
        'Many argue that the differences between the ice giants and the gas giants extend to their formation.[116][117] The Solar System is hypothesised to have formed from a giant rotating ball of gas and dust known as the presolar nebula. Much of the nebula\'s gas, primarily hydrogen and helium, formed the Sun, and the dust grains collected together to form the first protoplanets. As the planets grew, some of them eventually accreted enough matter for their gravity to hold on to the nebula\'s leftover gas.[116][117] The more gas they held onto, the larger they became; the larger they became, the more gas they held onto until a critical point was reached, and their size began to increase exponentially. The ice giants, with only a few Earth masses of nebular gas, never reached that critical point.[116][117][118] Recent simulations of planetary migration have suggested that both ice giants formed closer to the Sun than their present positions, and moved outwards after formation.',
    history:
        'Like the classical planets, Uranus is visible to the naked eye, but it was never recognised as a planet by ancient observers because of its dimness and slow orbit.[21] Sir William Herschel announced its discovery on 13 March 1781, expanding the known boundaries of the Solar System for the first time in history and making Uranus the first planet discovered with a telescope.',
    imgAssetPath: 'assets/uranus.jpg',
    vidAssetPath: 'assets/uranus.webp',
  ),
  Planet(
    name: 'Neptune',
    color: Colors.lightBlueAccent,
    diameter: 1.2,
    moons: [],
    description:
        'Neptune is the eighth and farthest known planet from the Sun in the Solar System. ',
    intro:
        'Neptune is the eighth and farthest known planet from the Sun in the Solar System. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. ',
    formation:
        'The formation of the ice giants, Neptune and Uranus, has proven difficult to model precisely. Current models suggest that the matter density in the outer regions of the Solar System was too low to account for the formation of such large bodies from the traditionally accepted method of core accretion, and various hypotheses have been advanced to explain their formation. One is that the ice giants were not formed by core accretion but from instabilities within the original protoplanetary disc and later had their atmospheres blasted away by radiation from a nearby massive OB star.',
    history:
        'Some of the earliest recorded observations ever made through a telescope, Galileo\'s drawings on 28 December 1612 and 27 January 1613 contain plotted points that match up with what is now known to be the position of Neptune. On both occasions, Galileo seems to have mistaken Neptune for a fixed star when it appeared close—in conjunction—to Jupiter in the night sky;[22] hence, he is not credited with Neptune\'s discovery. At his first observation in December 1612, Neptune was almost stationary in the sky because it had just turned retrograde that day. This apparent backward motion is created when Earth\'s orbit takes it past an outer planet. Because Neptune was only beginning its yearly retrograde cycle, the motion of the planet was far too slight to be detected with Galileo\'s small telescope.[23] In July 2009, University of Melbourne physicist David Jamieson announced new evidence suggesting that Galileo was at least aware that the "star" he had observed had moved relative to the fixed stars.',
    imgAssetPath: 'assets/neptune.jpg',
    vidAssetPath: 'assets/neptune.webp',
  ),
];

class Planet extends CelestialBody {
  final List<Moon> moons;

  Planet({
    String name,
    this.moons = const [],
    Color color,
    double diameter,
    String description,
    String intro,
    String formation,
    String history,
    String imgAssetPath,
    String vidAssetPath,
  }) : super(
          name: name,
          diameter: diameter,
          color: color,
          description: description,
          intro: intro,
          formation: formation,
          history: history,
          imgAssetPath: imgAssetPath,
          vidAssetPath: vidAssetPath,
        );
}

class Moon extends CelestialBody {
  Moon(
      {String name,
      String description,
      String intro,
      String formation,
      String history,
      String imgAssetPath,
      String vidAssetPath})
      : super(
          name: name,
          diameter: 0.28,
          color: Colors.grey,
          description: description,
          intro: intro,
          formation: formation,
          history: history,
          imgAssetPath: imgAssetPath,
          vidAssetPath: vidAssetPath,
        );
}

class CelestialBody {
  final String name;
  final double diameter;
  final Color color;
  final String description;
  final String intro;
  final String formation;
  final String history;
  final String imgAssetPath;
  final String vidAssetPath;

  CelestialBody({
    @required this.name,
    @required this.diameter,
    @required this.color,
    this.description,
    this.intro,
    this.formation,
    this.history,
    this.imgAssetPath,
    this.vidAssetPath,
  });
}
