[1mdiff --git a/src/main/java/entities/PlayerCharacter.java b/src/main/java/entities/PlayerCharacter.java[m
[1mindex ce65674..870ff08 100644[m
[1m--- a/src/main/java/entities/PlayerCharacter.java[m
[1m+++ b/src/main/java/entities/PlayerCharacter.java[m
[36m@@ -71,17 +71,17 @@[m [mpublic class PlayerCharacter extends Entity {[m
     public void testWall(int[][] wallPositions) {[m
         for (int i = 0; i < wallPositions.length; i++) {[m
             if ([m
[31m-                    position[1] > wallPositions[i][1]-40 && position[1] < wallPositions[i][1]+48[m
[31m-                    && position[0] < wallPositions[i][0]+48 && position[0] > wallPositions[i][0]-40[m
[32m+[m[32m                    position[1] > wallPositions[i][1]-30 && position[1] < wallPositions[i][1]+36[m
[32m+[m[32m                    && position[0] < wallPositions[i][0]+36 && position[0] > wallPositions[i][0]-30[m
             ) {[m
                 if (playerDirection == 1) {[m
[31m-                    position[0] = wallPositions[i][0]+48;[m
[32m+[m[32m                    position[0] = wallPositions[i][0]+36;[m
                 } else if (playerDirection == 2) {[m
[31m-                    position[1] = wallPositions[i][1]+48;[m
[32m+[m[32m                    position[1] = wallPositions[i][1]+36;[m
                 } else if (playerDirection == 3) {[m
[31m-                    position[0] = wallPositions[i][0]-40;[m
[32m+[m[32m                    position[0] = wallPositions[i][0]-30;[m
                 } else {[m
[31m-                    position[1] = wallPositions[i][1]-40;[m
[32m+[m[32m                    position[1] = wallPositions[i][1]-30;[m
                 }[m
             }[m
         }[m
[1mdiff --git a/src/main/java/screens/LoseScreen.java b/src/main/java/screens/LoseScreen.java[m
[1mindex fa88eda..d4a04d4 100644[m
[1m--- a/src/main/java/screens/LoseScreen.java[m
[1m+++ b/src/main/java/screens/LoseScreen.java[m
[36m@@ -53,6 +53,7 @@[m [mpublic class LoseScreen extends Screen{[m
         String action = e.getActionCommand();[m
         if(action.equals("Replay")) {[m
             cl.show(screenContainer, "GAME");[m
[32m+[m[32m            level.reInitLevels(level.getLevelID());[m
         }else if(action.equals("Back")){[m
             cl.show(screenContainer, "MENU");[m
         }[m
