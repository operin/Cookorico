

/* -------------------- INSERT MEMBER -------------------- */
INSERT INTO MEMBER(USERNAME,EMAIL,PASSWORD) VALUES('user','user@user.be','test');
INSERT INTO MEMBER(USERNAME,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,SALT,BIRTHDAY,GENDER,CITY) VALUES('dufaux','johan','dufaux','johan.dufaux@etudiant.univ-lille1.fr','password','salt','1993-05-28','M','Lille');
INSERT INTO MEMBER(USERNAME,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,SALT,BIRTHDAY,GENDER,CITY) VALUES('cookorico','cookorico','cookorico','cookorico@yopmail.com','cookorico','salt','2015-08-31','M','Villeneuve d''Ascq');
INSERT INTO MEMBER(USERNAME,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,GENDER) VALUES('Dieulin','Dieulin','Mambouana','dieulin@cookorico.com','Dieulin','M');
INSERT INTO MEMBER(USERNAME,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,GENDER) VALUES('Ly4m','William','Leemans','Ly4m@cookorico.com','Ly4m','M');
INSERT INTO MEMBER(USERNAME,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,GENDER) VALUES('Mandrivia','Antoine','Philippe','Mandrivia@cookorico.com','Mandrivia','M');
INSERT INTO MEMBER(USERNAME,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,GENDER) VALUES('ouams','Ouamar','Sais','ouams@cookorico.com','ouams','M');
INSERT INTO MEMBER(USERNAME,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,GENDER) VALUES('sallareznov','Salla','Diagne','sallareznov@cookorico.com','sallareznov','M');
INSERT INTO MEMBER(USERNAME,FIRSTNAME,LASTNAME,EMAIL,PASSWORD,GENDER) VALUES('sofianekabylino','Sofiane','Yousfi','sofianekabylino@cookorico.com','sofianekabylino','M');


/* -------------------- INSERT INGREDIENT -------------------- */
INSERT INTO INGREDIENT(NAME,DESCRIPTION) VALUES('Banane','Fruit courbé et de couleur jaune');
INSERT INTO INGREDIENT(NAME,DESCRIPTION) VALUES('Citron','Fruit presque rond et de couleur jaune');
INSERT INTO INGREDIENT(NAME,DESCRIPTION) VALUES('Viande hachée','De la viande, hachée... et de boeuf... (sauf pour les chinois)');
INSERT INTO INGREDIENT(NAME,DESCRIPTION) VALUES('Pied de porcs','Pour ceux qui aiment');
INSERT INTO INGREDIENT(NAME,DESCRIPTION) VALUES('Oeuf','Un truc ovale et qui sort d''on ne sait où');
INSERT INTO INGREDIENT(NAME,DESCRIPTION) VALUES('Sel','Du sel');
INSERT INTO INGREDIENT(NAME,DESCRIPTION) VALUES('Sucre','Du sucre');
INSERT INTO INGREDIENT(NAME,DESCRIPTION) VALUES('Poivre','Du poivre');
INSERT INTO INGREDIENT(NAME,DESCRIPTION) VALUES('Huile d''Olive','De l''huile qui vient des olives');
INSERT INTO INGREDIENT(NAME,DESCRIPTION) VALUES('Beurre','Du beurre, les produits laitiers sont nos amis pour la vie');




/* -------------------- INSERT TAG -------------------- */
/* TYPE TAG_TYPE AS ENUM ('Origine','Type de nourriture','Saveur') */
INSERT INTO TAG(NAME,TAG_TYPE) VALUES('Sucré','Saveur');
INSERT INTO TAG(NAME,TAG_TYPE) VALUES('Salé','Saveur');
INSERT INTO TAG(NAME,TAG_TYPE) VALUES('Amer','Saveur');
INSERT INTO TAG(NAME,TAG_TYPE) VALUES('Acide','Saveur');
INSERT INTO TAG(NAME,TAG_TYPE) VALUES('Umami','Saveur');

INSERT INTO TAG(NAME,TAG_TYPE) VALUES('Végétarien','Type de nourriture');
INSERT INTO TAG(NAME,TAG_TYPE) VALUES('Végétalien','Type de nourriture');

INSERT INTO TAG(NAME,TAG_TYPE) VALUES('Italien','Origine');
INSERT INTO TAG(NAME,TAG_TYPE) VALUES('Japonais','Origine');

INSERT INTO TAG(NAME,TAG_TYPE) VALUES('Agrume','Type de nourriture');
INSERT INTO TAG(NAME,TAG_TYPE) VALUES('Boeuf','Type de nourriture');
INSERT INTO TAG(NAME,TAG_TYPE) VALUES('Porc','Type de nourriture');





/* -------------------- INSERT TASTE -------------------- */
INSERT INTO TASTE(FK_ID_MEMBER,FK_ID_INGREDIENT,GRADING) VALUES('1','1','9');
INSERT INTO TASTE(FK_ID_MEMBER,FK_ID_INGREDIENT,GRADING) VALUES('1','5','6');
INSERT INTO TASTE(FK_ID_MEMBER,FK_ID_INGREDIENT,GRADING) VALUES('1','4','10');
INSERT INTO TASTE(FK_ID_MEMBER,FK_ID_INGREDIENT,GRADING) VALUES('1','2','1');
INSERT INTO TASTE(FK_ID_MEMBER,FK_ID_INGREDIENT,GRADING) VALUES('2','1','6');
INSERT INTO TASTE(FK_ID_MEMBER,FK_ID_INGREDIENT,GRADING) VALUES('2','2','8');
INSERT INTO TASTE(FK_ID_MEMBER,FK_ID_INGREDIENT,GRADING) VALUES('2','3','9');
INSERT INTO TASTE(FK_ID_MEMBER,FK_ID_INGREDIENT,GRADING) VALUES('2','3','0');




/* -------------------- INSERT RECIPE -------------------- */
/* CREATE TYPE DISH_TYPE AS ENUM ('Dessert','Entree','Plat') */
/* CREATE TYPE DIFFICULTY AS ENUM ('Facile','Moyen','Difficile') */
INSERT INTO RECIPE(NAME,DESCRIPTION,PREPARATION_TIME,COOKING_TIME,FK_CREATOR,DISH_TYPE,DIFFICULTY) VALUES('Omelette','Une superbe omelette baveuse',300,360,1,'Plat','Facile');




/* -------------------- INSERT TAG_TO_INGREDIENT -------------------- */
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('1','7');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('2','6');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('4','2');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('6','1');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('6','2');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('6','5');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('6','6');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('6','7');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('6','8');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('6','9');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('6','10');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('7','1');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('7','2');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('7','6');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('7','7');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('7','8');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('7','9');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('10','2');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('11','3');
INSERT INTO TAG_TO_INGREDIENT(FK_ID_TAG,FK_ID_INGREDIENT) VALUES('12','4');




/* -------------------- INSERT INGREDIENT_IN_RECIPE -------------------- */

INSERT INTO INGREDIENT_IN_RECIPE(FK_ID_INGREDIENT,FK_ID_RECIPE,QUANTITY,MEASUREMENT) VALUES('5','1',3,'nombre');
INSERT INTO INGREDIENT_IN_RECIPE(FK_ID_INGREDIENT,FK_ID_RECIPE,QUANTITY,MEASUREMENT) VALUES('6','1',4,'gramme');
INSERT INTO INGREDIENT_IN_RECIPE(FK_ID_INGREDIENT,FK_ID_RECIPE,QUANTITY,MEASUREMENT) VALUES('8','1',2,'gramme');


/* -------------------- INSERT PHOTO  -------------------- */




/* -------------------- INSERT RECIPE_STEP -------------------- */
INSERT INTO RECIPE_STEP(FK_ID_RECIPE,RANK,NAME,DESCRIPTION,DURATION_TIME) VALUES(1,1,'Preparation','Battre les oeufs dans un saladier',180);
INSERT INTO RECIPE_STEP(FK_ID_RECIPE,RANK,NAME,DESCRIPTION,DURATION_TIME) VALUES(1,2,'Assaisonner','Ajouter sel et poivre à votre convenance',100);
INSERT INTO RECIPE_STEP(FK_ID_RECIPE,RANK,NAME,DESCRIPTION,DURATION_TIME) VALUES(1,3,'Verser','Verser les oeufs dans une poele chaude',20);
INSERT INTO RECIPE_STEP(FK_ID_RECIPE,RANK,NAME,DESCRIPTION,DURATION_TIME) VALUES(1,4,'Cuisson','Quand les bords coagulent, les rabattre vers le centre. <br> Une fois l''omelette cuite, la servir dans une assiette. ',300);




/* -------------------- INSERT TAG_TO_RECIPE -------------------- */
INSERT INTO TAG_TO_RECIPE(FK_ID_TAG,FK_ID_RECIPE) VALUES('6','1');




/* -------------------- INSERT COMMENT -------------------- */
INSERT INTO COMMENT(FK_ID_RECIPE,FK_ID_MEMBER,TITLE,DESCRIPTION) VALUES('1','2','NON!','J''aime pas baveuse. nul!');
INSERT INTO COMMENT(FK_ID_RECIPE,FK_ID_MEMBER,TITLE,DESCRIPTION) VALUES('1','1','OSEF','Mdr t''as qu''à la laisser plus longtemps');



/* -------------------- INSERT NOTE -------------------- */
INSERT INTO NOTE(FK_ID_MEMBER,FK_ID_RECIPE,FK_ID_COMMENT,RATING) VALUES('2','1','1',2)




/* -------------------- INSERT PHOTO_IN_RECIPE -------------------- */




/* -------------------- INSERT ADMINISTRATOR -------------------- */
/* CREATE TYPE ADMIN_RANK AS ENUM ('Administrateur','Moderateur') */
INSERT INTO ADMINISTRATOR(ID_ADMINISTRATOR,RANK) VALUES(3,'Administrateur');
INSERT INTO ADMINISTRATOR(ID_ADMINISTRATOR,RANK) VALUES(2,'Moderateur');




/* -------------------- INSERT PHOTO_OF_INGREDIENT -------------------- */




/* -------------------- INSERT PHOTO_OF_USER -------------------- */













