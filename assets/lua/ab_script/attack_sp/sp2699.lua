--1028810:UR_魔人ブウ(善)_必殺技：かめはめ波
--sp_effect_a1_00436
--sp2699
 
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
 
--エフェクト(味方)
SP_01 = 162851; --開幕　両手上げ　気弾　ズームパンチ ef_001
SP_02 = 162853; --開幕　両手上げ　気弾　ズームパンチ(背景) ef_001_b
SP_03 = 162854; --かめはめ波発射 ef_002
SP_04 = 162856; --かめはめ波発射(背景) ef_002_b
 
--エフェクト(てき)
SP_01r = 162852; --開幕　両手上げ　気弾　ズームパンチ(敵側) ef_001_r
SP_03r = 162855; --かめはめ波発射(敵側) ef_002_r
SP_04r = 162857; --かめはめ波発射(敵側)(背景) ef_002_b_r
 
 
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
 
setVisibleUI( 0, 0);
 
changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);
 
setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );
--[[
setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );
]]
ENABLE_AUTO_TIME_STRETCH(0.86);
 
OFFSET_X = -1;
 
if (_IS_PLAYER_SIDE_ == 1) then
 
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 0;
 

-------------------------------------------------
-- 開幕　両手上げ　気弾　ズームパンチ
-------------------------------------------------
MAX_FRAME_0 = 678;
 
-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); --開幕　両手上げ　気弾　ズームパンチ ef_001
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_0 + 0, base_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255);
base_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); --開幕　両手上げ　気弾　ズームパンチ(背景) ef_001_b
setEffMoveKey( spep_0 + 0, base_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_b, 0);
setEffAlphaKey( spep_0 + 0, base_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_b, 255); 

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 82;
 
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 30, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 30, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
 
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 80 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 158.6, 272.9 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 159.1, 274.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 159.1, 274.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 159.6, 276.3 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 159.6, 276.3 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 160, 277.9 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 160, 277.9 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 160.5, 279.6 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 160.5, 279.6 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 161, 281.3 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 161, 281.3 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 161.5, 282.9 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 161.5, 282.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 161.9, 284.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 161.9, 284.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 162.4, 286.3 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 162.4, 286.3 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 162.9, 287.9 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 162.9, 287.9 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 163.4, 289.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 163.4, 289.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 163.8, 291.3 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 163.8, 291.3 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 164.3, 292.9 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 164.3, 292.9 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 164.8, 294.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 164.8, 294.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 165.3, 296.3 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 165.3, 296.3 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 165.8, 297.9 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 165.8, 297.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 166.2, 299.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 166.2, 299.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 166.7, 301.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 166.7, 301.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 167.2, 302.9 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 167.2, 302.9 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 167.7, 304.6 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 167.7, 304.6 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 168.1, 306.3 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 168.1, 306.3 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 168.6, 307.9 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 168.6, 307.9 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 169.1, 309.6 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 169.1, 309.6 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 169.6, 311.3 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 169.6, 311.3 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 170, 312.9 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 170, 312.9 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 170.5, 314.6 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 170.5, 314.6 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 171, 316.3 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 171, 316.3 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 171.5, 317.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 171.5, 317.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 172, 319.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 172, 319.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 172.4, 321.3 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 172.4, 321.3 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 172.9, 322.9 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 172.9, 322.9 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 173.4, 324.6 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 173.4, 324.6 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 173.9, 326.3 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 173.9, 326.3 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 174.3, 327.9 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 174.3, 327.9 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 174.8, 329.6 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 174.8, 329.6 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 175.3, 331.3 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 175.3, 331.3 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 175.8, 332.9 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 175.8, 332.9 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 176.2, 334.6 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 176.2, 334.6 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 176.7, 336.3 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 176.7, 336.3 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 177.2, 337.9 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 177.2, 337.9 , 0 );

setScaleKey( spep_0 + 0, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 2.63, 2.63 );

setRotateKey( spep_0 + 0, 1, -14 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 80 + OFFSET_X, 1, -14 );

--敵の動き2
setDisp( spep_0 + 230 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 340 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 230 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 268 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 294 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 314 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 230 + OFFSET_X, 1, 748.7, 351 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 748.7, 351 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 705.2, 331 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 705.2, 331 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 661.7, 311 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 661.7, 311 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 618.2, 291 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 618.2, 291 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 574.7, 270.9 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 574.7, 270.9 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 531.2, 250.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 531.2, 250.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 487.7, 230.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 487.7, 230.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 444.2, 210.9 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 444.2, 210.9 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 400.7, 190.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 400.7, 190.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 357.2, 170.9 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 357.2, 170.9 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 313.7, 150.9 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 313.7, 150.9 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 311.8, 149.6 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 311.8, 149.6 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 309.8, 148.3 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 309.8, 148.3 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 308, 147 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 308, 147 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 306, 145.7 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 306, 145.7 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 304.2, 144.4 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 304.2, 144.4 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 302.2, 143.1 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 302.2, 143.1 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 300.3, 141.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 300.3, 141.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 298.4, 140.5 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 298.4, 140.5 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -10.5, -40.3 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -10.5, -40.3 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -10.5, -46.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -10.5, -46.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -13.9, -35.3 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -13.9, -35.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -11.2, -48.5 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -11.2, -48.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -11.5, -34.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -11.5, -34.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 56, -0.3 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 56, -0.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 53.9, 15.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 53.9, 15.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 60.1, 0.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 60.1, 0.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 58.7, 21.5 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 58.7, 21.5 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 61.7, 20.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 61.7, 20.9 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 55.4, 20.6 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 55.4, 20.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 54.4, 22.5 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 54.4, 22.5 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 58.4, 17.1 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 58.4, 17.1 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 44.4, 23 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 44.4, 23 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 46.4, 11 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 46.4, 11 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 40, 21.9 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 40, 21.9 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 46, 29.9 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 46, 29.9 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 47.2, -51.5 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 47.2, -51.5 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 104.6, 1.8 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 104.6, 1.8 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 162.1, 55.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 162.1, 55.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 219.5, 108.5 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 219.5, 108.5 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 277, 161.9 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 277, 161.9 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 334.4, 215.2 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 334.4, 215.2 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 391.9, 268.6 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 391.9, 268.6 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 449.3, 322 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 449.3, 322 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 506.8, 375.3 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 506.8, 375.3 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 564.2, 428.7 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 564.2, 428.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 621.7, 482 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 621.7, 482 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -944.1, -967.8 , 0 );

setScaleKey( spep_0 + 230 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 2.8, 2.8 );

setRotateKey( spep_0 + 230 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -28 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -28 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -22 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -22 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -11.8 );

--敵の動き3
setDisp( spep_0 + 342 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 374 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 342 + OFFSET_X, 1, -835.1, -880.3 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -835.1, -880.3 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -726.2, -792.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -726.2, -792.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -617.3, -705.3 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -617.3, -705.3 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -508.4, -617.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -508.4, -617.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -399.5, -530.3 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -399.5, -530.3 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -290.6, -442.8 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -290.6, -442.8 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -181.7, -355.3 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -181.7, -355.3 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -72.8, -267.8 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -72.8, -267.8 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 36.1, -180.3 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 36.1, -180.3 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 145, -92.8 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 145, -92.8 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 253.9, -5.3 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 253.9, -5.3 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 362.8, 82.2 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 362.8, 82.2 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 471.7, 169.7 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 471.7, 169.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 580.6, 257.3 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 580.6, 257.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 689.6, 344.8 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 689.6, 344.8 , 0 );

setScaleKey( spep_0 + 342 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 2.8, 2.8 );

setRotateKey( spep_0 + 342 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, -11.8 );

--敵の動き4
setDisp( spep_0 + 438 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 500 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 438 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 458 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 438 + OFFSET_X, 1, 138.4, 49.4 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 138.4, 49.4 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 169.3, 87.3 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 169.3, 87.3 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 175.7, 74.3 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 175.7, 74.3 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 173.1, 55.2 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 173.1, 55.2 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 170.4, 54.5 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 170.4, 54.5 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 169.9, 41.4 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 169.9, 41.4 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 184.3, 31.7 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 184.3, 31.7 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 171.2, 49.5 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 171.2, 49.5 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 171.9, 21.5 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 171.9, 21.5 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 154.3, 60.6 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 154.3, 60.6 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 45.5, 32.1 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 45.5, 32.1 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -17.1, 3.9 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -17.1, 3.9 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -81.7, -25.6 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -81.7, -25.6 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -148.5, -56.7 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -148.5, -56.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -146.1, -55.1 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -146.1, -55.1 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -143.8, -53.4 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -143.8, -53.4 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -141.4, -51.8 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -141.4, -51.8 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -139.1, -50.2 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -139.1, -50.2 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -136.7, -48.5 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -136.7, -48.5 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -109.1, 17.2 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -109.1, 17.2 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -81, 135.1 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -81, 135.1 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -52.9, 253.1 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -52.9, 253.1 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 24.8, 400.7 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 24.8, 400.7 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 102.5, 548.2 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 102.5, 548.2 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 227.6, 731.5 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 227.6, 731.5 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 352.8, 914.9 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 352.8, 914.9 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 485.7, 1174.8 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 485.7, 1174.8 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 618.6, 1434.9 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 618.6, 1434.9 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 751.6, 1694.8 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 751.6, 1694.8 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 884.5, 1954.9 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 884.5, 1954.9 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 1017.4, 2214.9 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 1017.4, 2214.9 , 0 );

setScaleKey( spep_0 + 438 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 8.78, 8.78 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 8.78, 8.78 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 9.88, 9.88 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 9.88, 9.88 );

setRotateKey( spep_0 + 438 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -67.5 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -67.5 );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, -67.5 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 214, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--マント翻る
SE002 = playSeVer2( spep_0 + 8, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE002, 63 );
SE003 = playSeVer2( spep_0 + 42, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE003, 56 );
setPitch( spep_0 + 42, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );

--腕上げる
SE005 = playSeVer2( spep_0 + 96, 1004, "", 0, 0, 0, -1);

--画面遷移
SE006 = playSeVer2( spep_0 + 160, 8, "", 0, 0, 0, -1);

--連続気弾
SE007 = playSeVer2( spep_0 + 174, 1409, "",spep_0 + 316, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 174, SE007, 141 );
SE008 = playSeVer2( spep_0 + 174, 1401, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 184, 1401, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 196, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE010, 83 );
SE011 = playSeVer2( spep_0 + 208, 1401, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
  SP_dodge = spep_0 + 222; --エンドフェイズのフレーム数を置き換える
   
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE006, 0);
  stopSe( SP_dodge - 12, SE007, 0);
  stopSe( SP_dodge - 12, SE008, 0);
  stopSe( SP_dodge - 12, SE009, 0);
  stopSe( SP_dodge - 12, SE010, 0);
  stopSe( SP_dodge - 12, SE011, 0);

  pauseAll( SP_dodge, 67);
   
  speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
  setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
   
  kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
   
  entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
  endPhase(SP_dodge+10);
   
  do return end
  else end
   
-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--連続気弾
SE012 = playSeVer2( spep_0 + 218, 1401, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 228, 1401, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 240, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE014, 88 );
SE015 = playSeVer2( spep_0 + 254, 1401, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 264, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE016, 87 );
SE017 = playSeVer2( spep_0 + 274, 1401, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 286, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 286, SE019, 85 );
SE020 = playSeVer2( spep_0 + 296, 1401, "", 0, 0, 0, -1);

--気弾ヒット
SE018 = playSeVer2( spep_0 + 280, 1024, "", 0, 0, 0, -1);

--敵飛んでいく
SE022 = playSeVer2( spep_0 + 334, 1183, "",spep_0 + 458, 0, 56, -1);

--瞬間移動
SE023 = playSeVer2( spep_0 + 334, 1109, "", 0, 0, 0, -1);

--マントはためく
SE024 = playSeVer2( spep_0 + 378, 1332, "", 0, 0, 0, -1);

--腕伸びる
SE025 = playSeVer2( spep_0 + 410, 1237, "", 0, 4, 0, -1);
setStartTimeMs( SE025,  200 );
SE026 = playSeVer2( spep_0 + 410, 1326, "",spep_0 + 452, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 410, SE026, 155 );
SE021 = playSeVer2( spep_0 + 412, 1336, "",spep_0 + 452, 6, 10, -1);
setStartTimeMs( SE021,  1600 );

--敵ヒット
SE027 = playSeVer2( spep_0 + 428, 1414, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 428, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE029 = playSeVer2( spep_0 + 452, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE029, 72 );

--画面遷移
SE030 = playSeVer2( spep_0 + 488, 1072, "", 0, 0, 0, -1);

--かめはめ波溜め
SE031 = playSeVer2( spep_0 + 562, 1131, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 562, SE031, 114 );
SE032 = playSeVer2( spep_0 + 562, 1132, "",spep_0 + 698, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 562, SE032, 115 );
SE033 = playSeVer2( spep_0 + 562, 1157, "",spep_0 + 698, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 562, SE033, 79 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --678F
 
--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-- ** 音 ** --
--かめはめ波発射
SE035 = playSeVer2( spep_c + 90, 1223, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_c + 90, 1178, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_c + 90, 1146, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_c + 90, 1284, "",spep_1 + 194, 0, 60, -1);
SE039 = playSeVer2( spep_c + 90, 1213, "",spep_1 + 206, 0, 34, -1);
setSeVolumeByWorkId( spep_c + 90, SE039, 63 );

-------------------------------------------------
-- かめはめ波発射
-------------------------------------------------
MAX_FRAME_1 = 346;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0); --かめはめ波発射 ef_002
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_f, 0);
setEffAlphaKey( spep_1 + 0, finish_f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_f, 255);
finish_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0); --かめはめ波発射(背景) ef_002_b
setEffMoveKey( spep_1 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_b, 0);
setEffAlphaKey( spep_1 + 0, finish_b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_b, 255); 

-- ** 敵キャラクター ** --
setDisp( spep_1 + 56 + OFFSET_X, 1, 1)
setDisp( spep_1 + 156 + OFFSET_X, 1, 0)

changeAnime( spep_1 + 56 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 116 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 56 + OFFSET_X, 1, 533.2, -138.9 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_X, 1, 533.2, -138.9 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, 537, -140.1 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_X, 1, 537, -140.1 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 541, -141.5 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, 541, -141.5 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, 545.4, -142.9 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, 545.4, -142.9 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, 549.9, -144.5 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, 549.9, -144.5 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 554.8, -146.1 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, 554.8, -146.1 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 559.8, -147.8 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, 559.8, -147.8 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, 530, -149.6 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, 530, -149.6 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, 500.4, -151.5 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, 500.4, -151.5 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, 471.1, -153.5 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, 471.1, -153.5 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 442, -155.5 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 442, -155.5 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 413.2, -157.7 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 413.2, -157.7 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 384.6, -159.9 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, 384.6, -159.9 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 356.3, -162.2 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, 356.3, -162.2 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 328.3, -164.6 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 328.3, -164.6 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 300.5, -167.1 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 300.5, -167.1 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 273, -169.7 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 273, -169.7 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 245.7, -172.4 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 245.7, -172.4 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 218.7, -175.2 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 218.7, -175.2 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 192, -178 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 192, -178 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 165.5, -180.9 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 165.5, -180.9 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 174.5, -184 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 174.5, -184 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 183.7, -187.1 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 183.7, -187.1 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 193.3, -190.3 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 193.3, -190.3 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 203, -193.6 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 203, -193.6 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 213.1, -196.9 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 213.1, -196.9 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 223.4, -200.4 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 223.4, -200.4 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 234, -204 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 234, -204 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 64.3, -25.4 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 64.3, -25.4 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 66, -26.3 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 66, -26.3 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 67.6, -27.2 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 67.6, -27.2 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 69.2, -28.1 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 69.2, -28.1 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 70.9, -29 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 70.9, -29 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 72.5, -29.9 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 72.5, -29.9 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 74.1, -30.8 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 74.1, -30.8 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 75.7, -31.7 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 75.7, -31.7 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 77.4, -32.6 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 77.4, -32.6 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 79, -33.5 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 79, -33.5 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 80.6, -34.4 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 80.6, -34.4 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 82.3, -35.3 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 82.3, -35.3 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 83.9, -36.2 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 83.9, -36.2 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 85.5, -37.1 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 85.5, -37.1 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 87.1, -38 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 87.1, -38 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 88.8, -38.9 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 88.8, -38.9 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 90.4, -39.8 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 90.4, -39.8 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 92, -40.7 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 92, -40.7 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 93.7, -41.6 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 93.7, -41.6 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 95.3, -42.5 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 95.3, -42.5 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 96.9, -43.4 , 0 );

setScaleKey( spep_1 + 56 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 123 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 129 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 130 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 131 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 137 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 138 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 139 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 140 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 141 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 142 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 143 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 145 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 146 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 147 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 148 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 149 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 150 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 151 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 152 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 153 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 154 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 155 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 156 + OFFSET_X, 1, 1.23, 1.23 );

setRotateKey( spep_1 + 56 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_1 + 115 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_1 + 116 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 156 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--かめはめ波飛んでいく
SE040 = playSeVer2( spep_1 + 14, 1215, "",spep_1 + 206, 0, 62, -1);
SE041 = playSeVer2( spep_1 + 38, 1021, "", 0, 0, 0, -1);

--爆発
SE042 = playSeVer2( spep_1 + 202, 1069, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 220, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 246); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1); -- 346F
 
else
 
------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 0;
 

-------------------------------------------------
-- 開幕　両手上げ　気弾　ズームパンチ
-------------------------------------------------
MAX_FRAME_0 = 678;
 
-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); --開幕　両手上げ　気弾　ズームパンチ(敵側) ef_001_r
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_0 + 0, base_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255);
base_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); --開幕　両手上げ　気弾　ズームパンチ(背景) ef_001_b
setEffMoveKey( spep_0 + 0, base_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_b, 0);
setEffAlphaKey( spep_0 + 0, base_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_b, 255); 

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 82;

--[[
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
]]
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 30, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 30, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
 
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 80 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 158.6, 272.9 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 159.1, 274.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 159.1, 274.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 159.6, 276.3 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 159.6, 276.3 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 160, 277.9 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 160, 277.9 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 160.5, 279.6 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 160.5, 279.6 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 161, 281.3 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 161, 281.3 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 161.5, 282.9 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 161.5, 282.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 161.9, 284.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 161.9, 284.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 162.4, 286.3 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 162.4, 286.3 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 162.9, 287.9 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 162.9, 287.9 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 163.4, 289.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 163.4, 289.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 163.8, 291.3 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 163.8, 291.3 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 164.3, 292.9 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 164.3, 292.9 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 164.8, 294.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 164.8, 294.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 165.3, 296.3 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 165.3, 296.3 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 165.8, 297.9 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 165.8, 297.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 166.2, 299.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 166.2, 299.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 166.7, 301.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 166.7, 301.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 167.2, 302.9 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 167.2, 302.9 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 167.7, 304.6 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 167.7, 304.6 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 168.1, 306.3 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 168.1, 306.3 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 168.6, 307.9 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 168.6, 307.9 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 169.1, 309.6 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 169.1, 309.6 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 169.6, 311.3 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 169.6, 311.3 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 170, 312.9 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 170, 312.9 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 170.5, 314.6 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 170.5, 314.6 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 171, 316.3 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 171, 316.3 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 171.5, 317.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 171.5, 317.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 172, 319.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 172, 319.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 172.4, 321.3 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 172.4, 321.3 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 172.9, 322.9 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 172.9, 322.9 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 173.4, 324.6 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 173.4, 324.6 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 173.9, 326.3 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 173.9, 326.3 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 174.3, 327.9 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 174.3, 327.9 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 174.8, 329.6 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 174.8, 329.6 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 175.3, 331.3 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 175.3, 331.3 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 175.8, 332.9 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 175.8, 332.9 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 176.2, 334.6 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 176.2, 334.6 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 176.7, 336.3 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 176.7, 336.3 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 177.2, 337.9 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 177.2, 337.9 , 0 );

setScaleKey( spep_0 + 0, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 2.63, 2.63 );

setRotateKey( spep_0 + 0, 1, -14 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 80 + OFFSET_X, 1, -14 );

--敵の動き2
setDisp( spep_0 + 230 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 340 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 230 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 268 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 294 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 314 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 230 + OFFSET_X, 1, 748.7, 351 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 748.7, 351 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 705.2, 331 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 705.2, 331 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 661.7, 311 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 661.7, 311 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 618.2, 291 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 618.2, 291 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 574.7, 270.9 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 574.7, 270.9 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 531.2, 250.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 531.2, 250.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 487.7, 230.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 487.7, 230.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 444.2, 210.9 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 444.2, 210.9 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 400.7, 190.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 400.7, 190.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 357.2, 170.9 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 357.2, 170.9 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 313.7, 150.9 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 313.7, 150.9 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 311.8, 149.6 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 311.8, 149.6 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 309.8, 148.3 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 309.8, 148.3 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 308, 147 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 308, 147 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 306, 145.7 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 306, 145.7 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 304.2, 144.4 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 304.2, 144.4 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 302.2, 143.1 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 302.2, 143.1 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 300.3, 141.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 300.3, 141.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 298.4, 140.5 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 298.4, 140.5 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -10.5, -40.3 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -10.5, -40.3 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -10.5, -46.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -10.5, -46.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -13.9, -35.3 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -13.9, -35.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -11.2, -48.5 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -11.2, -48.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -11.5, -34.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -11.5, -34.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 56, -0.3 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 56, -0.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 53.9, 15.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 53.9, 15.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 60.1, 0.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 60.1, 0.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 58.7, 21.5 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 58.7, 21.5 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 61.7, 20.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 61.7, 20.9 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 55.4, 20.6 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 55.4, 20.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 54.4, 22.5 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 54.4, 22.5 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 58.4, 17.1 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 58.4, 17.1 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 44.4, 23 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 44.4, 23 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 46.4, 11 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 46.4, 11 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 40, 21.9 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 40, 21.9 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 46, 29.9 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 46, 29.9 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 47.2, -51.5 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 47.2, -51.5 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 104.6, 1.8 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 104.6, 1.8 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 162.1, 55.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 162.1, 55.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 219.5, 108.5 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 219.5, 108.5 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 277, 161.9 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 277, 161.9 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 334.4, 215.2 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 334.4, 215.2 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 391.9, 268.6 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 391.9, 268.6 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 449.3, 322 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 449.3, 322 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 506.8, 375.3 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 506.8, 375.3 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 564.2, 428.7 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 564.2, 428.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 621.7, 482 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 621.7, 482 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -944.1, -967.8 , 0 );

setScaleKey( spep_0 + 230 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 2.8, 2.8 );

setRotateKey( spep_0 + 230 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -28 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -28 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -22 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -22 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -11.8 );

--敵の動き3
setDisp( spep_0 + 342 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 374 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 342 + OFFSET_X, 1, -835.1, -880.3 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -835.1, -880.3 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -726.2, -792.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -726.2, -792.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -617.3, -705.3 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -617.3, -705.3 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -508.4, -617.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -508.4, -617.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -399.5, -530.3 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -399.5, -530.3 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -290.6, -442.8 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -290.6, -442.8 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -181.7, -355.3 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -181.7, -355.3 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -72.8, -267.8 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -72.8, -267.8 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 36.1, -180.3 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 36.1, -180.3 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 145, -92.8 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 145, -92.8 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 253.9, -5.3 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 253.9, -5.3 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 362.8, 82.2 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 362.8, 82.2 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 471.7, 169.7 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 471.7, 169.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 580.6, 257.3 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 580.6, 257.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 689.6, 344.8 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 689.6, 344.8 , 0 );

setScaleKey( spep_0 + 342 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 2.8, 2.8 );

setRotateKey( spep_0 + 342 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, -11.8 );

--敵の動き4
setDisp( spep_0 + 438 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 500 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 438 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 458 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 438 + OFFSET_X, 1, 138.4, 49.4 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 138.4, 49.4 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 169.3, 87.3 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 169.3, 87.3 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 175.7, 74.3 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 175.7, 74.3 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 173.1, 55.2 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 173.1, 55.2 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 170.4, 54.5 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 170.4, 54.5 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 169.9, 41.4 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 169.9, 41.4 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 184.3, 31.7 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 184.3, 31.7 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 171.2, 49.5 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 171.2, 49.5 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 171.9, 21.5 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 171.9, 21.5 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 154.3, 60.6 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 154.3, 60.6 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 45.5, 32.1 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 45.5, 32.1 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -17.1, 3.9 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -17.1, 3.9 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -81.7, -25.6 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -81.7, -25.6 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -148.5, -56.7 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -148.5, -56.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -146.1, -55.1 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -146.1, -55.1 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -143.8, -53.4 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -143.8, -53.4 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -141.4, -51.8 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -141.4, -51.8 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -139.1, -50.2 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -139.1, -50.2 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -136.7, -48.5 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -136.7, -48.5 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -109.1, 17.2 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -109.1, 17.2 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -81, 135.1 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -81, 135.1 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -52.9, 253.1 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -52.9, 253.1 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 24.8, 400.7 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 24.8, 400.7 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 102.5, 548.2 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 102.5, 548.2 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 227.6, 731.5 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 227.6, 731.5 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 352.8, 914.9 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 352.8, 914.9 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 485.7, 1174.8 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 485.7, 1174.8 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 618.6, 1434.9 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 618.6, 1434.9 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 751.6, 1694.8 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 751.6, 1694.8 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 884.5, 1954.9 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 884.5, 1954.9 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 1017.4, 2214.9 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 1017.4, 2214.9 , 0 );

setScaleKey( spep_0 + 438 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 8.78, 8.78 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 8.78, 8.78 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 9.88, 9.88 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 9.88, 9.88 );

setRotateKey( spep_0 + 438 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -67.5 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -67.5 );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, -67.5 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 214, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--マント翻る
SE002 = playSeVer2( spep_0 + 8, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE002, 63 );
SE003 = playSeVer2( spep_0 + 42, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE003, 56 );
setPitch( spep_0 + 42, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );

--腕上げる
SE005 = playSeVer2( spep_0 + 96, 1004, "", 0, 0, 0, -1);

--画面遷移
SE006 = playSeVer2( spep_0 + 160, 8, "", 0, 0, 0, -1);

--連続気弾
SE007 = playSeVer2( spep_0 + 174, 1409, "",spep_0 + 316, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 174, SE007, 141 );
SE008 = playSeVer2( spep_0 + 174, 1401, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 184, 1401, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 196, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE010, 83 );
SE011 = playSeVer2( spep_0 + 208, 1401, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
  SP_dodge = spep_0 + 222; --エンドフェイズのフレーム数を置き換える
   
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE006, 0);
  stopSe( SP_dodge - 12, SE007, 0);
  stopSe( SP_dodge - 12, SE008, 0);
  stopSe( SP_dodge - 12, SE009, 0);
  stopSe( SP_dodge - 12, SE010, 0);
  stopSe( SP_dodge - 12, SE011, 0);

  pauseAll( SP_dodge, 67);
   
  speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
  setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
   
  kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
   
  entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
  endPhase(SP_dodge+10);
   
  do return end
  else end
   
-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--連続気弾
SE012 = playSeVer2( spep_0 + 218, 1401, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 228, 1401, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 240, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE014, 88 );
SE015 = playSeVer2( spep_0 + 254, 1401, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 264, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE016, 87 );
SE017 = playSeVer2( spep_0 + 274, 1401, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 286, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 286, SE019, 85 );
SE020 = playSeVer2( spep_0 + 296, 1401, "", 0, 0, 0, -1);

--気弾ヒット
SE018 = playSeVer2( spep_0 + 280, 1024, "", 0, 0, 0, -1);

--敵飛んでいく
SE022 = playSeVer2( spep_0 + 334, 1183, "",spep_0 + 458, 0, 56, -1);

--瞬間移動
SE023 = playSeVer2( spep_0 + 334, 1109, "", 0, 0, 0, -1);

--マントはためく
SE024 = playSeVer2( spep_0 + 378, 1332, "", 0, 0, 0, -1);

--腕伸びる
SE025 = playSeVer2( spep_0 + 410, 1237, "", 0, 4, 0, -1);
setStartTimeMs( SE025,  200 );
SE026 = playSeVer2( spep_0 + 410, 1326, "",spep_0 + 452, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 410, SE026, 155 );
SE021 = playSeVer2( spep_0 + 412, 1336, "",spep_0 + 452, 6, 10, -1);
setStartTimeMs( SE021,  1600 );

--敵ヒット
SE027 = playSeVer2( spep_0 + 428, 1414, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 428, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE029 = playSeVer2( spep_0 + 452, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE029, 72 );

--画面遷移
SE030 = playSeVer2( spep_0 + 488, 1072, "", 0, 0, 0, -1);

--かめはめ波溜め
SE031 = playSeVer2( spep_0 + 562, 1131, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 562, SE031, 114 );
SE032 = playSeVer2( spep_0 + 562, 1132, "",spep_0 + 698, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 562, SE032, 115 );
SE033 = playSeVer2( spep_0 + 562, 1157, "",spep_0 + 698, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 562, SE033, 79 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --678F
 
--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-- ** 音 ** --
--かめはめ波発射
SE035 = playSeVer2( spep_c + 90, 1223, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_c + 90, 1178, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_c + 90, 1146, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_c + 90, 1284, "",spep_1 + 194, 0, 60, -1);
SE039 = playSeVer2( spep_c + 90, 1213, "",spep_1 + 206, 0, 34, -1);
setSeVolumeByWorkId( spep_c + 90, SE039, 63 );

-------------------------------------------------
-- かめはめ波発射
-------------------------------------------------
MAX_FRAME_1 = 346;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_03r, 0x100, -1, 0, 0, 0); --かめはめ波発射(敵側) ef_002_r
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_f, 0);
setEffAlphaKey( spep_1 + 0, finish_f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_f, 255);
finish_b = entryEffect( spep_1 + 0, SP_04r, 0x80, -1, 0, 0, 0); --かめはめ波発射(背景)(敵側) ef_002_b_r
setEffMoveKey( spep_1 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_b, 0);
setEffAlphaKey( spep_1 + 0, finish_b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_b, 255); 

-- ** 敵キャラクター ** --
setDisp( spep_1 + 56 + OFFSET_X, 1, 1)
setDisp( spep_1 + 156 + OFFSET_X, 1, 0)

changeAnime( spep_1 + 56 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 116 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 56 + OFFSET_X, 1, 533.2, -138.9 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_X, 1, 533.2, -138.9 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, 537, -140.1 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_X, 1, 537, -140.1 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 541, -141.5 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, 541, -141.5 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, 545.4, -142.9 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, 545.4, -142.9 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, 549.9, -144.5 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, 549.9, -144.5 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 554.8, -146.1 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, 554.8, -146.1 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 559.8, -147.8 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, 559.8, -147.8 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, 530, -149.6 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, 530, -149.6 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, 500.4, -151.5 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, 500.4, -151.5 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, 471.1, -153.5 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, 471.1, -153.5 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 442, -155.5 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 442, -155.5 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 413.2, -157.7 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 413.2, -157.7 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 384.6, -159.9 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, 384.6, -159.9 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 356.3, -162.2 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, 356.3, -162.2 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 328.3, -164.6 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 328.3, -164.6 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 300.5, -167.1 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 300.5, -167.1 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 273, -169.7 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 273, -169.7 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 245.7, -172.4 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 245.7, -172.4 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 218.7, -175.2 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 218.7, -175.2 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 192, -178 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 192, -178 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 165.5, -180.9 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 165.5, -180.9 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 174.5, -184 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 174.5, -184 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 183.7, -187.1 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 183.7, -187.1 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 193.3, -190.3 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 193.3, -190.3 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 203, -193.6 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 203, -193.6 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 213.1, -196.9 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 213.1, -196.9 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 223.4, -200.4 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 223.4, -200.4 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 234, -204 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 234, -204 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 64.3, -25.4 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 64.3, -25.4 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 66, -26.3 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 66, -26.3 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 67.6, -27.2 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 67.6, -27.2 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 69.2, -28.1 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 69.2, -28.1 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 70.9, -29 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 70.9, -29 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 72.5, -29.9 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 72.5, -29.9 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 74.1, -30.8 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 74.1, -30.8 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 75.7, -31.7 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 75.7, -31.7 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 77.4, -32.6 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 77.4, -32.6 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 79, -33.5 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 79, -33.5 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 80.6, -34.4 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 80.6, -34.4 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 82.3, -35.3 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 82.3, -35.3 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 83.9, -36.2 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 83.9, -36.2 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 85.5, -37.1 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 85.5, -37.1 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 87.1, -38 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 87.1, -38 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 88.8, -38.9 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 88.8, -38.9 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 90.4, -39.8 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 90.4, -39.8 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 92, -40.7 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 92, -40.7 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 93.7, -41.6 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 93.7, -41.6 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 95.3, -42.5 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 95.3, -42.5 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 96.9, -43.4 , 0 );

setScaleKey( spep_1 + 56 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 123 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 129 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 130 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 131 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 137 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 138 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 139 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 140 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 141 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 142 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 143 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 145 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 146 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 147 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 148 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 149 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 150 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 151 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 152 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 153 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 154 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 155 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 156 + OFFSET_X, 1, 1.23, 1.23 );

setRotateKey( spep_1 + 56 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_1 + 115 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_1 + 116 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 156 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--かめはめ波飛んでいく
SE040 = playSeVer2( spep_1 + 14, 1215, "",spep_1 + 206, 0, 62, -1);
SE041 = playSeVer2( spep_1 + 38, 1021, "", 0, 0, 0, -1);

--爆発
SE042 = playSeVer2( spep_1 + 202, 1069, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 220, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 246); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1); -- 346F

end