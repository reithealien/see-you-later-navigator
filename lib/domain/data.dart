import 'package:seeyoulaternavigator/domain/movie.dart';

class Data {
  Data._();

  static List<Movie> starWarsMovies = [
    Movie(
      id: 0,
      title: "A New Hope",
      director: "George Lucas",
      releaseDate: DateTime(1977, 05, 25),
      posterUrl:
          "https://kbimages1-a.akamaihd.net/ea6a1631-34e8-4369-b777-cf342521d3e0/1200/1200/False/a-new-hope-star-wars-episode-iv.jpg",
      openingCrawl:
          "It is a period of civil war.\r\nRebel spaceships, striking\r\nfrom a hidden base, have won\r\ntheir first victory against\r\nthe evil Galactic Empire.\r\n\r\nDuring the battle, Rebel\r\nspies managed to steal secret\r\nplans to the Empire's\r\nultimate weapon, the DEATH\r\nSTAR, an armored space\r\nstation with enough power\r\nto destroy an entire planet.\r\n\r\nPursued by the Empire's\r\nsinister agents, Princess\r\nLeia races home aboard her\r\nstarship, custodian of the\r\nstolen plans that can save her\r\npeople and restore\r\nfreedom to the galaxy....",
    ),
    Movie(
      id: 1,
      title: "The Empire Strikes Back",
      director: "Irvin Kershner",
      releaseDate: DateTime(1980, 05, 17),
      posterUrl: "https://flxt.tmsimg.com/assets/p8884_p_v8_ae.jpg",
      openingCrawl:
          "It is a dark time for the\r\nRebellion\r\nAlthough the Death\r\nStar has been destroyed,\r\nImperial troops have driven the\r\nRebel forces from their hidden\r\nbase and pursued them across\r\nthe galaxy.\r\n\r\nEvading the dreaded Imperial\r\nStarfleet, a group of freedom\r\nfighters led by Luke Skywalker\r\nhas established a new secret\r\nbase on the remote ice world\r\nof Hoth.\r\n\r\nThe evil lord Darth Vader,\r\nobsessed with finding young\r\nSkywalker, has dispatched\r\nthousands of remote probes into\r\nthe far reaches of space....",
    ),
    Movie(
      id: 2,
      title: "Return of the Jedi",
      director: "Richard Marquand",
      releaseDate: DateTime(1983, 05, 25),
      posterUrl: "https://flxt.tmsimg.com/assets/p8890_p_v8_ae.jpg",
      openingCrawl:
          "Luke Skywalker has returned to\r\nhis home planet of Tatooine in\r\nan attempt to rescue his\r\nfriend Han Solo from the\r\nclutches of the vile gangster\r\nJabba the Hutt.\r\n\r\nLittle does Luke know that the\r\nGALACTIC EMPIRE has secretly\r\nbegun construction on a new\r\narmored space station even\r\nmore powerful than the first\r\ndreaded Death Star.\r\n\r\nWhen completed, this ultimate\r\nweapon will spell certain doom\r\nfor the small band of rebels\r\nstruggling to restore freedom\r\nto the galaxy...",
    ),
    Movie(
      id: 3,
      title: "The Phantom Menace",
      director: "George Lucas",
      releaseDate: DateTime(1999, 05, 19),
      posterUrl:
          "https://m.media-amazon.com/images/M/MV5BYTRhNjcwNWQtMGJmMi00NmQyLWE2YzItODVmMTdjNWI0ZDA2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg",
      openingCrawl:
          "Turmoil has engulfed the\r\nGalactic Republic\r\nThe taxation\r\nof trade routes to outlying star\r\nsystems is in dispute.\r\n\r\nHoping to resolve the matter\r\nwith a blockade of deadly\r\nbattleships, the greedy Trade\r\nFederation has stopped all\r\nshipping to the small planet\r\nof Naboo.\r\n\r\nWhile the Congress of the\r\nRepublic endlessly debates\r\nthis alarming chain of events,\r\nthe Supreme Chancellor has\r\nsecretly dispatched two Jedi\r\nKnights, the guardians of\r\npeace and justice in the\r\ngalaxy, to settle the conflict....",
    ),
    Movie(
      id: 4,
      title: "Attack of the Clones",
      director: "George Lucas",
      releaseDate: DateTime(2002, 05, 16),
      posterUrl:
          "https://m.media-amazon.com/images/M/MV5BMDAzM2M0Y2UtZjRmZi00MzVlLTg4MjEtOTE3NzU5ZDVlMTU5XkEyXkFqcGdeQXVyNDUyOTg3Njg@._V1_.jpg",
      openingCrawl:
          "There is unrest in the Galactic\r\nSenate\r\nSeveral thousand solar\r\nsystems have declared their\r\nintentions to leave the Republic.\r\n\r\nThis separatist movement,\r\nunder the leadership of the\r\nmysterious Count Dooku, has\r\nmade it difficult for the limited\r\nnumber of Jedi Knights to maintain \r\npeace and order in the galaxy.\r\n\r\nSenator Amidala, the former\r\nQueen of Naboo, is returning\r\nto the Galactic Senate to vote\r\non the critical issue of creating\r\nan ARMY OF THE REPUBLIC\r\nto assist the overwhelmed\r\nJedi....",
    ),
    Movie(
      id: 5,
      title: "Revenge of the Sith",
      director: "George Lucas",
      releaseDate: DateTime(2005, 05, 19),
      posterUrl: "https://m.media-amazon.com/images/M/MV5BNTc4MTc3NTQ5OF5BMl5BanBnXkFtZTcwOTg0NjI4NA@@._V1_.jpg",
      openingCrawl:
          "War! The Republic is crumbling\r\nunder attacks by the ruthless\r\nSith Lord, Count Dooku.\r\nThere are heroes on both sides.\r\nEvil is everywhere.\r\n\r\nIn a stunning move, the\r\nfiendish droid leader, General\r\nGrievous, has swept into the\r\nRepublic capital and kidnapped\r\nChancellor Palpatine, leader of\r\nthe Galactic Senate.\r\n\r\nAs the Separatist Droid Army\r\nattempts to flee the besieged\r\ncapital with their valuable\r\nhostage, two Jedi Knights lead a\r\ndesperate mission to rescue the\r\ncaptive Chancellor....",
    ),
    Movie(
      id: 6,
      title: "The Force Awakens",
      director: "J. J. Abrams",
      releaseDate: DateTime(2015, 12, 11),
      posterUrl: "https://m.media-amazon.com/images/M/MV5BOTAzODEzNDAzMl5BMl5BanBnXkFtZTgwMDU1MTgzNzE@._V1_.jpg",
      openingCrawl:
          "Luke Skywalker has vanished.\r\nIn his absence, the sinister\r\nFIRST ORDER has risen from\r\nthe ashes of the Empire\r\nand will not rest until\r\nSkywalker, the last Jedi,\r\nhas been destroyed.\r\n \r\nWith the support of the\r\nREPUBLIC, General Leia Organa\r\nleads a brave RESISTANCE.\r\nShe is desperate to find her\r\nbrother Luke and gain his\r\nhelp in restoring peace and\r\njustice to the galaxy.\r\n \r\nLeia has sent her most daring\r\npilot on a secret mission\r\nto Jakku, where an old ally\r\nhas discovered a clue to\r\nLuke's whereabouts....",
    ),
    Movie(
      id: 7,
      title: "The Last Jedi",
      director: "Rian Johnson",
      releaseDate: DateTime(2017, 12, 17),
      posterUrl: "https://m.media-amazon.com/images/M/MV5BMjQ1MzcxNjg4N15BMl5BanBnXkFtZTgwNzgwMjY4MzI@._V1_.jpg",
      openingCrawl:
          "The FIRST ORDER reigns.\r\nHaving decimated the peaceful\r\nRepublic, Supreme Leader Snoke\r\nnow deploys his merciless\r\nlegions to seize military\r\ncontrol of the galaxy.\r\n\r\nOnly General Leia Organa's\r\nband of RESISTANCE fighters\r\nstand against the rising\r\ntyranny, certain that Jedi\r\nMaster Luke Skywalker will\r\nreturn and restore a spark of\r\nhope to the fight.\r\n\r\nBut the Resistance has been\r\nexposed. As the First Order\r\nspeeds toward the rebel base,\r\nthe brave heroes mount a\r\ndesperate escape....",
    ),
    Movie(
      id: 8,
      title: "The Rise of Skywalker",
      director: "J.J. Abrams",
      releaseDate: DateTime(2019, 12, 20),
      posterUrl:
          "https://m.media-amazon.com/images/M/MV5BMDljNTQ5ODItZmQwMy00M2ExLTljOTQtZTVjNGE2NTg0NGIxXkEyXkFqcGdeQXVyODkzNTgxMDg@._V1_.jpg",
      openingCrawl:
          "The dead speak! The galaxy has\r\nheard a mysterious broadcast,\r\na threat of REVENGE in the\r\nsinister voice of the late\r\nEMPEROR PALPATINE.\r\n\r\nGENERAL LEIA ORGANA\r\ndispatches secret agents to\r\ngather intelligence, while REY,\r\nthe last hope of the Jedi, trains\r\nfor battle against the diabolical\r\nFIRST ORDER.\r\n\r\nMeanwhile, Supreme Leader\r\nKYLO REN rages in search\r\nof the phantom Emperor,\r\ndetermined to destroy any\r\nthreat to his power....",
    ),
  ];

  static List<Movie> lotrMovies = [
    Movie(
      id: 0,
      title: "The Fellowship of the Ring",
      director: "Peter Jackson",
      releaseDate: DateTime(2001, 12, 21),
      posterUrl:
          "https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_FMjpg_UX1000_.jpg",
    ),
    Movie(
      id: 1,
      title: "The Two Towers",
      director: "Peter Jackson",
      releaseDate: DateTime(2002, 12, 20),
      posterUrl:
          "https://m.media-amazon.com/images/M/MV5BZGMxZTdjZmYtMmE2Ni00ZTdkLWI5NTgtNjlmMjBiNzU2MmI5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg",
    ),
    Movie(
      id: 2,
      title: "The Return of the King",
      director: "Peter Jackson",
      releaseDate: DateTime(2003, 12, 19),
      posterUrl:
          "https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_FMjpg_UX1000_.jpg",
    ),
  ];
}
