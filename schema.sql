DROP TABLE IF EXISTS games;

CREATE TABLE games 
(
    game_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(25) NOT NULL,
    genre VARCHAR(20) NOT NULL,
    release_date DATE NOT NULL,
    developer VARCHAR(30) NOT NULL,
    publisher VARCHAR(30) NOT NULL,
    avg_score INTEGER,
    image VARCHAR(30) NOT NULL,
    description TEXT NOT NULL
);

INSERT INTO games (name, genre, release_date, developer, publisher, avg_score, image, description)
VALUES 
    ("The Last Of Us", "Action-Adventure", "2013-06-14", "Naughty Dog", "Sony Computer Entertainment", 95, "tlou.jpg", "Fungus Zombies"),
    ("Mario Kart 8 Deluxe", "Racing", "2017-04-28", "Nintendo", "Nintendo", 92, "mario-kart.jpg", "Mario in a car"),
    ("Hollow Knight", "Metroidvania", "2017-02-24", "Team Cherry", "Team Cherry", 90, "hollow-knight.jpg", "Little bug kills big bugs"),
    ("Red Dead Redemption 2", "Action-Adventure", "2018-10-26", "Rockstar", "Rockstar", 97, "rdr2.jpg", "Cowboy mischief"),
    ("Grand Theft Auto V", "Action-Adventure", "2013-09-17", "Rockstar", "Rockstar", 97, "gtav.jpg", "A bunch of regular guys commit crimes"),
    ("Elden Ring", "RPG", "2022-02-25", "FromSoftware", "Bandai Namco Entertainment", 96, "elden-ring.jpg", "Super hard fantasy game"),
    ("Portal 2", "Puzzle", "2011-04-18", "Valve", "Valve", 95, "portal2.jpg", "Walk through portals in a lab"),
    ("Minecraft", "Sandbox", "2011-11-18", "Mojang Studios", "Mojang Studios", 93, "minecraft.jpg", "Build anything with cubes"),
    ("The Elder Scrolls V: Skyrim", "RPG", "2011-11-11", "Bethesda", "Bethesda", 96, "skyrim.jpg", "Kill dragons with swords and magic"),
    ("Balan Wonderworld", "Platformer", "2021-03-26", "Arzest", "Square Enix", 44, "balan-wonderworld.jpg", "I don't know, I just know it is bad")
;

DROP TABLE IF EXISTS users;

CREATE TABLE users 
(
    user_id VARCHAR(20) PRIMARY KEY,
    password VARCHAR(20) NOT NULL
);

INSERT INTO users (user_id, password)
VALUES
    ("joe12345", "pbkdf2:sha256:260000$En5C5TUagW6seS3G$e665fddb7409ce77adcc96856877206337ee0af3352dfbab59140465c71f6abc"),
    ("jack54321", "pbkdf2:sha256:260000$EwRObuQqpjOqsj7f$ed7e38db24cb61c241cd80f999dfea03cc8479ef582bd548d2fd9a4ebcf5979d")
;

DROP TABLE IF EXISTS admins;

CREATE TABLE admins
(
    admin_id VARCHAR(20) PRIMARY KEY,
    password VARCHAR(20) NOT NULL
);

INSERT INTO admins (admin_id, password)
VALUES
    ("admin1", "pbkdf2:sha256:260000$teELqU9wd4In6pLm$e879fc4dbecc34617019ce491f5dde2d96e123327eb73a4881358ca4ecd9f79c")
;

DROP TABLE IF EXISTS reviews;

CREATE TABLE reviews 
(
    review_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id VARCHAR(20),
    game_id INTEGER,
    date DATE,
    description TEXT NOT NULL,
    score INTEGER,
    helpfulness INTEGER
);

INSERT INTO reviews (user_id, game_id, date, description, score, helpfulness)
VALUES
    ("joe12345", 1, "2018-02-28", "Pretty good", 10, 5),
    ("joe12345", 6, "2023-02-28", "Hard", 9, 1),
    ("jack54321", 6, "2022-06-15", "Horrible", 4, -3)
;
