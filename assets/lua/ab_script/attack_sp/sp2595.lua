--4027130:LR_超サイヤ人ゴッドSSベジット_必殺技：ファイナルフラッシュ
--sp_effect_a3_00104
--sp2595

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162176; --開幕〜蹴りコンボ〜ファイナルフラッシュ ef_001
--SP_01b = 162177; --開幕〜蹴りコンボ〜ファイナルフラッシュ_背景 ef_001b
SP_02 = 162178; --ファイナルフラッシュ発射 ef_002

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
--]]

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 886;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 0);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 0, SP_01, spep_2 + 0 -1 + 2, 1);
        
    else

        setupMovie(0 , SP_01, 0, 1);
    end
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜蹴りコンボ〜ファイナルフラッシュ(886F)
-------------------------------------------------
MAX_FRAME_0 = 886;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕〜蹴りコンボ〜ファイナルフラッシュ ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
--[[
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕〜蹴りコンボ〜ファイナルフラッシュ ef_001ｂ
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);
]]
--[[
-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 181, 906, 41, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 181, shuchusen_0, 41, 20 );
setEffMoveKey( spep_0 + 181, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 223, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 181, shuchusen_0, 2.0, 2.0 );
setEffScaleKey( spep_0 + 223, shuchusen_0, 2.0, 2.0 );
setEffRotateKey( spep_0 + 181, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 223, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 181, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 223, shuchusen_0, 255 );

shuchusen_1 = entryEffectLife( spep_0 + 397, 906, 99, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 397, shuchusen_1, 99, 20 );
setEffMoveKey( spep_0 + 397, shuchusen_1, 0, 0, 0 );
setEffMoveKey( spep_0 + 496, shuchusen_1, 0, 0, 0 );
setEffScaleKey( spep_0 + 397, shuchusen_1, 2.0, 2.0 );
setEffScaleKey( spep_0 + 496, shuchusen_1, 2.0, 2.0 );
setEffRotateKey( spep_0 + 397, shuchusen_1, 0 );
setEffRotateKey( spep_0 + 496, shuchusen_1, 0 );
setEffAlphaKey( spep_0 + 397, shuchusen_1, 255 );
setEffAlphaKey( spep_0 + 496, shuchusen_1, 255 );

shuchusen_2 = entryEffectLife( spep_0 + 625, 906, 19, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 625, shuchusen_2, 19, 20 );
setEffMoveKey( spep_0 + 625, shuchusen_2, 0, 0, 0 );
setEffMoveKey( spep_0 + 644, shuchusen_2, 0, 0, 0 );
setEffScaleKey( spep_0 + 625, shuchusen_2, 2.0, 2.0 );
setEffScaleKey( spep_0 + 644, shuchusen_2, 2.0, 2.0 );
setEffRotateKey( spep_0 + 625, shuchusen_2, 0 );
setEffRotateKey( spep_0 + 644, shuchusen_2, 0 );
setEffAlphaKey( spep_0 + 625, shuchusen_2, 255 );
setEffAlphaKey( spep_0 + 644, shuchusen_2, 255 );
]]

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 768;
  
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
  
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -80, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -80, 520.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -80, 520.5 , 0 );
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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き_01
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 222 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );
changeAnime( spep_0 + 114 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 136 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 176 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 182 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 0, 1, 231.3, 388.2 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 230.9, 388.2 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 230.9, 388.2 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 230.5, 388.2 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 230.5, 388.2 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 230, 388.2 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 230, 388.2 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 229.6, 388.2 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 229.6, 388.2 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 229.2, 388.2 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 229.2, 388.2 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 228.8, 388.2 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 228.8, 388.2 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 228.3, 388.2 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 228.3, 388.2 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 227.9, 388.2 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 227.9, 388.2 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 227.5, 388.2 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 227.5, 388.2 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 227.1, 388.2 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 227.1, 388.2 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 226.6, 388.2 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 226.6, 388.2 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 226.2, 388.2 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 226.2, 388.2 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 225.8, 388.2 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 225.8, 388.2 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 225.4, 388.2 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 225.4, 388.2 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 224.9, 388.2 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 224.9, 388.2 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 224.5, 388.2 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 224.5, 388.2 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 224.1, 388.2 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 224.1, 388.2 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 223.7, 388.2 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 223.7, 388.2 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 223.2, 388.2 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 223.2, 388.2 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 222.8, 388.2 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 222.8, 388.2 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 222.4, 388.2 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 222.4, 388.2 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 222, 388.2 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 222, 388.2 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 221.5, 388.2 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 221.5, 388.2 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 221.1, 388.2 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 221.1, 388.2 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 220.7, 388.2 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 220.7, 388.2 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 220.3, 388.2 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 220.3, 388.2 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 219.8, 388.2 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 219.8, 388.2 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 219.4, 388.2 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 219.4, 388.2 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 219, 388.2 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 219, 388.2 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 218.6, 388.2 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 218.6, 388.2 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 218.1, 388.2 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 218.1, 388.2 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 217.7, 388.2 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 217.7, 388.2 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 217.3, 388.2 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 217.3, 388.2 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 216.9, 388.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 216.9, 388.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 216.4, 388.2 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 216.4, 388.2 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 216, 388.2 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 216, 388.2 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 215.6, 388.2 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 215.6, 388.2 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 215.2, 388.2 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 215.2, 388.2 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 214.7, 388.2 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 214.7, 388.2 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 214.3, 388.2 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 214.3, 388.2 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 213.9, 388.2 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 213.9, 388.2 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 213.5, 388.2 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 213.5, 388.2 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 213, 388.2 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 213, 388.2 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 212.6, 388.2 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 212.6, 388.2 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 254.2, 278.1 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 254.2, 278.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 244.5, 266.6 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 244.5, 266.6 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 234.7, 255.1 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 234.7, 255.1 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 225, 243.6 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 225, 243.6 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 215.3, 232.2 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 215.3, 232.2 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 205.5, 220.7 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 205.5, 220.7 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 195.8, 209.2 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 195.8, 209.2 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 186.1, 197.7 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 186.1, 197.7 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 176.3, 186.2 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 176.3, 186.2 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 166.6, 174.7 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 166.6, 174.7 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 156.9, 163.3 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 156.9, 163.3 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 147.1, 151.8 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 147.1, 151.8 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -284.9, -157.5 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -284.9, -157.5 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -42.3, 43.4 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -42.3, 43.4 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -17.8, 18.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -17.8, 18.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -159.9, 121.8 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -159.9, 121.8 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -123.2, -37.5 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -123.2, -37.5 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -3.1, 43.4 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -3.1, 43.4 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -10.5, 82.6 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -10.5, 82.6 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -52.1, 89.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -52.1, 89.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -49.7, -0.7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -49.7, -0.7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -59.5, 48.3 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -59.5, 48.3 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -71.7, 14 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -71.7, 14 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 102.6, 36.6 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 102.6, 36.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 87.1, 21.1 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 87.1, 21.1 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 118.1, 52.1 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 118.1, 52.1 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 113.5, 49 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 113.5, 49 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 106.3, 41.3 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 106.3, 41.3 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 103.2, 38.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 103.2, 38.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 98.5, 33.5 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 98.5, 33.5 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 95.4, 30.4 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 95.4, 30.4 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 120.2, 56.8 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 120.2, 56.8 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 120.2, 87.8 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 120.2, 87.8 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 118.7, 87.8 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 118.7, 87.8 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 115.6, 89.3 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 115.6, 89.3 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 123.3, 90.9 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 123.3, 90.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 121.8, 92.4 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 121.8, 92.4 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 186.9, 76.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 186.9, 76.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 171.4, 45.9 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 171.4, 45.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 171.4, 45.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 137.3, -2.1 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 137.3, -2.1 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 149.7, 16.5 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 149.7, 16.5 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 155.9, 18 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 457.7, 344.3 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 636, 491.5 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 822, 631 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 822, 631 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 76.5, 59 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 79.1, 72.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 81.5, 85.3 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 83.7, 96.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 85.7, 107.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 87.5, 116.5 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 89.2, 124.8 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 90.6, 132 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 91.8, 138.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 92.8, 143 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 93.6, 146.9 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 94.2, 149.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 94.5, 151.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 94.6, 151.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 94.6, 153.3 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 94.6, 154.7 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 94.6, 156.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 94.6, 157.5 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 94.6, 158.9 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 94.6, 160.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 94.6, 161.7 , 0 );

setScaleKey( spep_0 + 0, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.03, 0.03 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 113 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 114 + OFFSET_X, 1, -67 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, -67 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, 33.6 );

--敵の動き_02
setDisp( spep_0 + 224 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 264 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 224 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 246 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 224 + OFFSET_X, 1, -24.5, -454.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -24.5, -426.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -24.5, -384.2 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -24.5, -372.5 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -24.5, -329.8 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -24.5, -302.6 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -24.5, -263 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -24.5, -238.4 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -24.5, -200.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -24.5, -175.1 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -25, -191.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -25, -191.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -25, -157.3 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -25, -157.3 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -25, -59.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -25, -59.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -25, -207.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -25, -207.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -25, -198.5 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -25, -198.5 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -25, -357 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -25, -357 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -25, -376.5 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -25, -458.6 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 50.2, -799.7 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 50.1, -1001.2 , 0 );

setScaleKey( spep_0 + 224 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2.7, 2.7 );

setRotateKey( spep_0 + 224 + OFFSET_X, 1, -88.4 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -88.4 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -148.9 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -148.9 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 127.8 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 127.8 );

--敵の動き_03
setDisp( spep_0 + 282 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 498 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 302 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 318 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 356 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 382 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 386 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 398 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 282 + OFFSET_X, 1, -160.3, 451 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -160.3, 451.1 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -160.3, 451.1 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -34.7, 314.7 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -34.7, 314.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 31.9, 235.6 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 31.9, 235.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 118.7, 145.7 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 118.7, 145.7 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 100.8, 162.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 100.8, 162.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 100.8, 142.2 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 100.8, 142.2 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 72.9, 163.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 72.9, 163.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 77.6, 157.7 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 77.6, 157.7 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -1.5, 260 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -1.5, 260 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -303.7, 628.9 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -303.7, 628.9 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 1272.2, -806.6 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 1125.6, -718.7 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 993.3, -639.4 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 874.3, -568 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 767.4, -503.9 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 671.8, -446.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 586.4, -395.2 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 510.4, -349.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 442.9, -309 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 383.1, -273.1 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 330.2, -241.3 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 283.4, -213.2 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 242.2, -188.4 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 205.8, -166.6 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 173.7, -147.3 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 145.4, -130.3 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 120.2, -115.3 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 97.8, -101.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 77.8, -89.9 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 77.8, -89.9 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 105.3, -25.4 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 105.3, -25.4 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 144.2, -5.9 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 144.2, -5.9 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 157.3, 0.6 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 157.3, 0.6 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 170.3, 7.1 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 170.3, 7.1 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 183.3, 13.6 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 183.3, 13.6 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 163.8, -5.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 163.8, -5.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 142.4, -23.4 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 142.4, -23.4 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 161.9, -3.9 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 161.9, -3.9 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 156.1, -3.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 156.1, -3.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 148.3, -7.8 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 148.3, -7.8 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 167.8, 11.7 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 167.8, 11.7 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 148.3, -7.8 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 215.2, 48.7 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 215.2, 48.7 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 240.1, 48.4 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 240.1, 48.4 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 148.9, 63.3 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 148.9, 63.3 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 149.3, 66.7 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 149.3, 66.7 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 149.8, 70.2 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 149.8, 70.2 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 150.3, 73.6 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 150.3, 73.6 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 150.8, 77.1 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 150.8, 77.1 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 151.3, 80.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 151.3, 80.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 272.3, -13.7 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 272.3, -13.7 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 275.5, -13.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 275.5, -13.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 272.3, -13.7 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 272.3, -13.7 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 266.9, -13.2 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 266.9, -13.2 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 277.8, 111.9 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 277.8, 111.9 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 282.3, 113.7 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 282.3, 113.7 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 278.9, 111.8 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 278.9, 111.8 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 275.6, 111 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 275.6, 111 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 276, -99.7 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 276, -99.7 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 280.2, -101.1 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 280.2, -101.1 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 278.1, -99.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 278.1, -99.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 272.3, -13.7 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 272.3, -13.7 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 275.5, -13.9 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 275.5, -13.9 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 272.3, -13.7 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 272.3, -13.7 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 266.9, -13.2 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 266.9, -13.2 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 277.8, 111.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 277.8, 111.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 282.3, 113.7 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 282.3, 113.7 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 278.9, 111.8 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 278.9, 111.8 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 275.6, 111 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 275.6, 111 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 276, -99.7 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 276, -99.7 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 280.2, -101.1 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 280.2, -101.1 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 278.1, -99.9 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 278.1, -99.9 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 272.3, -13.7 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 272.3, -13.7 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 275.5, -13.9 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 275.5, -13.9 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 272.3, -13.7 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 272.3, -13.7 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 266.9, -13.2 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 266.9, -13.2 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 277.8, 111.9 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 277.8, 111.9 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 282.3, 113.7 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 282.3, 113.7 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 278.9, 111.8 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 278.9, 111.8 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 275.6, 111 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 275.6, 111 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 276, -99.7 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 276, -99.7 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 280.2, -101.1 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 280.2, -101.1 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 278.1, -99.9 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 278.1, -99.9 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 272.3, -13.7 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 272.3, -13.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 275.5, -13.9 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 275.5, -13.9 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 272.3, -13.7 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 272.3, -13.7 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 266.9, -13.2 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 266.9, -13.2 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 254.9, -13.7 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 254.9, -13.7 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 249.5, -13.2 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 249.5, -13.2 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 260.5, 112 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 260.5, 112 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 258.3, 111.1 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 258.3, 111.1 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 258.6, -99.5 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 258.6, -99.5 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 260.7, -99.7 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 260.7, -99.7 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 254.9, -13.7 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 254.9, -13.7 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 249.5, -13.2 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 249.5, -13.2 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 260.5, 112 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 260.5, 112 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 258.3, 111.1 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 258.3, 111.1 , 0 );

setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 20.97, 20.97 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 18.71, 18.71 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 16.67, 16.67 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 14.83, 14.83 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 13.17, 13.17 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 11.69, 11.69 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 10.37, 10.37 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 9.19, 9.19 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 8.14, 8.14 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 7.21, 7.21 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 6.38, 6.38 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 2.32, 2.32 );

setRotateKey( spep_0 + 282 + OFFSET_X, 1, 70.2 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 70.2 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -64 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, -64 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, -65.8 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, -65.8 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, -59.7 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, -59.7 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -57.6 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -57.6 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 487 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 493 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 498 + OFFSET_X, 1, -12.9 );

--敵の動き_04
setDisp( spep_0 + 600 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 642 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 600 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 626 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 600 + OFFSET_X, 1, 431.4, -328.7 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 388, -273.1 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 344.6, -217.4 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 301.1, -161.8 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 257.7, -106.2 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 214.3, -50.5 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 156.5, 3.5 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 180.4, 26.6 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 138.2, 49.6 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 133.8, 27.6 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 119.2, 35 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 104.5, 42.3 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 89.8, 49.6 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 25.6, 45 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 25.6, 45 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 77.6, -41.6 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 117.6, -101.6 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 179.6, -205.8 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 439.6, -475.8 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 699.6, -745.8 , 0 );

setScaleKey( spep_0 + 600 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 6.34, 6.34 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_0 + 610 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 614 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 616 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 625 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 632 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 634 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 636 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 638 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 642 + OFFSET_X, 1, 1.95, 1.95 );

setRotateKey( spep_0 + 600 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_0 + 625 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_0 + 626 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 638 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 642 + OFFSET_X, 1, 0.8 );

--敵の動き_05
setDisp( spep_0 + 646 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 694 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 646 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 646 + OFFSET_X, 1, -132.9, 30.6 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, -115.5, 20.6 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -99, 11 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, -83.3, 1.9 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, -68.3, -6.8 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, -54.2, -15.1 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, -40.8, -22.9 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, -28.2, -30.3 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, -16.4, -37.2 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, -5.3, -43.7 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, 5, -49.7 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, 14.5, -55.3 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, 23.3, -60.5 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, 31.2, -65.2 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, 38.5, -69.5 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, 44.9, -73.3 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, 50.6, -76.6 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, 55.5, -79.6 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, 59.7, -82 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, 63.1, -84.1 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 65.8, -85.6 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, 67.7, -86.7 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 68.8, -87.4 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, 69.2, -87.6 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, 69.2, -87.6 , 0 );

setScaleKey( spep_0 + 646 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 648 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 650 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 652 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 654 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 656 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 658 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 660 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 662 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 664 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 666 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 668 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 670 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 672 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 674 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 676 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 678 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 680 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 682 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 684 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 686 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 688 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 690 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 692 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 694 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_0 + 646 + OFFSET_X, 1, 37.1 );
setRotateKey( spep_0 + 694 + OFFSET_X, 1, 37.1 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 144, 0, 38, 0.6);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 75 );

--振りかぶる
SE003 = playSeVer2( spep_0 + 88, 1003, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 88, 1117, "",spep_0 + 122, 0, 20, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 102; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
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
--蹴り
SE005 = playSeVer2( spep_0 + 112, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE005, 81 );
SE006 = playSeVer2( spep_0 + 114, 1187, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 114, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE007, 86 );

--敵吹き飛ぶ
SE008 = playSeVer2( spep_0 + 164, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE008, 84 );
SE009 = playSeVer2( spep_0 + 164, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE009, 72 );
SE010 = playSeVer2( spep_0 + 164, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE010, 93 );

--敵飛んでいく
SE011 = playSeVer2( spep_0 + 182, 1121, "",spep_0 + 260, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 182, SE011, 73 );
SE012 = playSeVer2( spep_0 + 182, 1183, "",spep_0 + 262, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 182, SE012, 65 );

--瞬間移動
SE013 = playSeVer2( spep_0 + 228, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE013, 122 );

--蹴り落とす
SE014 = playSeVer2( spep_0 + 246, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 246, 1187, "", 0, 0, 0, -1);

--瞬間移動
SE016 = playSeVer2( spep_0 + 266, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE016, 122 );

--蹴り上げる
SE017 = playSeVer2( spep_0 + 302, 1120, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 302, 1187, "", 0, 0, 0, -1);

--瞬間移動
SE019 = playSeVer2( spep_0 + 324, 1109, "", 0, 0, 0, -1);

--ライダーキック
SE020 = playSeVer2( spep_0 + 348, 1004, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 356, 1153, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 356, 1187, "",spep_0 + 386, 0, 18, -1);
SE023 = playSeVer2( spep_0 + 362, 1110, "", 0, 0, 0, -1);

--足にエネルギー溜まる
SE025 = playSeVer2( spep_0 + 398, 1158, "",spep_0 + 652, 0, 44, 0.6);
SE024 = playSeVer2( spep_0 + 420, 1210, "",spep_0 + 652, 76, 38, 0.6);
setSeVolumeByWorkId( spep_0 + 420, SE024, 65 );
setStartTimeMs( SE024,  733 );
setPitch( spep_0 + 420, SE024, 400 );
setTimeStretch( SE024, 1.27, 30, 4 );

--連続蹴り
SE026 = playSeVer2( spep_0 + 400, 1425, "",0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 400, SE026, 80 );

SE027 = playSeVer2( spep_0 + 400, 1009, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 424, 1010, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_0 + 424, SE031 );

--足にエネルギー溜まる
SE034 = playSeVer2( spep_0 + 438, 1148, "", spep_0 + 544, 0, 10, -1);

--連続蹴り
SE036 = playSeVer2( spep_0 + 450, 1009, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 478, 1010, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_0 + 478, SE041 );

--画面遷移
SE043 = playSeVer2( spep_0 + 498, 1232, "", 0, 0, 0, -1);

--気弾発射前溜め
SE044 = playSeVer2( spep_0 + 530, 1116, "",spep_0 + 576, 0, 22, -1);
SE045 = playSeVer2( spep_0 + 546, 1282, "",spep_0 + 638, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 546, SE045, 58 );
SE046 = playSeVer2( spep_0 + 552, 1390, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE046, 72 );
SE047 = playSeVer2( spep_0 + 554, 1254, "", 0, 0, 0, -1);

--気弾蹴り飛ばす
SE048 = playSeVer2( spep_0 + 622, 1120, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 622, 1145, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 622, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 622, SE050, 79 );

--気弾飛んでいく
SE051 = playSeVer2( spep_0 + 646, 1121, "",spep_0 + 722, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 646, SE051, 89 );
SE052 = playSeVer2( spep_0 + 652, 1277, "", 0, 0, 0, -1);

--地面激突
SE053 = playSeVer2( spep_0 + 694, 1159, "", spep_0 + 906, 0, 10, -1);

--手前に出す
SE054 = playSeVer2( spep_0 + 772, 1004, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 772, 1233, "", 0, 0, 0, -1);

--ファイナルフラッシュ溜め
SE056 = playSeVer2( spep_0 + 776, 1274, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_0 + 780, 1334, "",spep_0 + 906, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 780, SE058, 112 );
SE059 = playSeVer2( spep_0 + 780, 1345, "",spep_0 + 908, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 780, SE059, 158 );
SE060 = playSeVer2( spep_0 + 782, 1148, "",spep_0 + 904, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 782, SE060, 71 );
SE061 = playSeVer2( spep_0 + 782, 1296, "",spep_0 + 902, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 782, SE061, 107 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 886F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- ファイナルフラッシュ発射 (198F)
------------------------------------------------------
MAX_FRAME_2 = 198;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ファイナルフラッシュ発射 ef_002
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish, 0);
setEffAlphaKey( spep_2 + 0, finish, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish, 255);

-- ** 音 ** --
--発射前溜め
SE063 = playSeVer2( spep_2 + 0, 1296, "",spep_2 + 46, 12, 12, -1);
setStartTimeMs( SE063,  633 );
SE064 = playSeVer2( spep_2 + 6, 1148, "",spep_2 + 50, 12, 18, -1);
setStartTimeMs( SE064,  500 );
SE065 = playSeVer2( spep_2 + 4, 1334, "",spep_2 + 44, 10, 12, -1);
setStartTimeMs( SE065,  367 );
SE066 = playSeVer2( spep_2 + 6, 1345, "",spep_2 + 42, 10, 12, -1);
setStartTimeMs( SE066,  400 );

--ファイナルフラッシュ発射
SE067 = playSeVer2( spep_2 + 16, 1146, "", 0, 0, 0, 0.6);
SE068 = playSeVer2( spep_2 + 16, 1133, "", 0, 0, 0, 0.6);
SE069 = playSeVer2( spep_2 + 16, 1284, "", 0, 0, 0, 0.6);

--爆発
SE070 = playSeVer2( spep_2 + 74, 1159, "", 0, 0, 0, -1);
SE071 = playSeVer2( spep_2 + 78, 1067, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_2 + 84, 1137, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 60); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 2); -- 終了フレーム 198F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 開幕〜蹴りコンボ〜ファイナルフラッシュ(886F)
-------------------------------------------------
MAX_FRAME_0 = 886;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕〜蹴りコンボ〜ファイナルフラッシュ ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
--[[
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕〜蹴りコンボ〜ファイナルフラッシュ ef_001ｂ
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);
]]
-- ** 集中線 ** --
--[[
shuchusen_0 = entryEffectLife( spep_0 + 181, 906, 41, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 181, shuchusen_0, 41, 20 );
setEffMoveKey( spep_0 + 181, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 223, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 181, shuchusen_0, 2.0, 2.0 );
setEffScaleKey( spep_0 + 223, shuchusen_0, 2.0, 2.0 );
setEffRotateKey( spep_0 + 181, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 223, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 181, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 223, shuchusen_0, 255 );

shuchusen_1 = entryEffectLife( spep_0 + 397, 906, 99, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 397, shuchusen_1, 99, 20 );
setEffMoveKey( spep_0 + 397, shuchusen_1, 0, 0, 0 );
setEffMoveKey( spep_0 + 496, shuchusen_1, 0, 0, 0 );
setEffScaleKey( spep_0 + 397, shuchusen_1, 2.0, 2.0 );
setEffScaleKey( spep_0 + 496, shuchusen_1, 2.0, 2.0 );
setEffRotateKey( spep_0 + 397, shuchusen_1, 0 );
setEffRotateKey( spep_0 + 496, shuchusen_1, 0 );
setEffAlphaKey( spep_0 + 397, shuchusen_1, 255 );
setEffAlphaKey( spep_0 + 496, shuchusen_1, 255 );

shuchusen_2 = entryEffectLife( spep_0 + 625, 906, 19, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 625, shuchusen_2, 19, 20 );
setEffMoveKey( spep_0 + 625, shuchusen_2, 0, 0, 0 );
setEffMoveKey( spep_0 + 644, shuchusen_2, 0, 0, 0 );
setEffScaleKey( spep_0 + 625, shuchusen_2, 2.0, 2.0 );
setEffScaleKey( spep_0 + 644, shuchusen_2, 2.0, 2.0 );
setEffRotateKey( spep_0 + 625, shuchusen_2, 0 );
setEffRotateKey( spep_0 + 644, shuchusen_2, 0 );
setEffAlphaKey( spep_0 + 625, shuchusen_2, 255 );
setEffAlphaKey( spep_0 + 644, shuchusen_2, 255 );
]]

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 768;
  
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
  
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -80, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -80, 520.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -80, 520.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き_01
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 222 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 17 );
changeAnime( spep_0 + 114 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 136 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 176 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 182 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 0, 1, -231.3, 388.2 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -230.9, 388.2 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -230.9, 388.2 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -230.5, 388.2 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -230.5, 388.2 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -230, 388.2 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -230, 388.2 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -229.6, 388.2 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -229.6, 388.2 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -229.2, 388.2 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -229.2, 388.2 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -228.8, 388.2 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -228.8, 388.2 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -228.3, 388.2 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -228.3, 388.2 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -227.9, 388.2 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -227.9, 388.2 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -227.5, 388.2 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -227.5, 388.2 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -227.1, 388.2 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -227.1, 388.2 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -226.6, 388.2 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -226.6, 388.2 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -226.2, 388.2 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -226.2, 388.2 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -225.8, 388.2 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -225.8, 388.2 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -225.4, 388.2 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -225.4, 388.2 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -224.9, 388.2 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -224.9, 388.2 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -224.5, 388.2 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -224.5, 388.2 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -224.1, 388.2 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -224.1, 388.2 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -223.7, 388.2 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -223.7, 388.2 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -223.2, 388.2 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -223.2, 388.2 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -222.8, 388.2 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -222.8, 388.2 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -222.4, 388.2 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -222.4, 388.2 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -222, 388.2 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -222, 388.2 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -221.5, 388.2 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -221.5, 388.2 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -221.1, 388.2 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -221.1, 388.2 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -220.7, 388.2 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -220.7, 388.2 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -220.3, 388.2 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -220.3, 388.2 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -219.8, 388.2 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -219.8, 388.2 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -219.4, 388.2 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -219.4, 388.2 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -219, 388.2 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -219, 388.2 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -218.6, 388.2 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -218.6, 388.2 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -218.1, 388.2 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -218.1, 388.2 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -217.7, 388.2 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -217.7, 388.2 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -217.3, 388.2 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -217.3, 388.2 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -216.9, 388.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -216.9, 388.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -216.4, 388.2 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -216.4, 388.2 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -216, 388.2 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -216, 388.2 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -215.6, 388.2 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -215.6, 388.2 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -215.2, 388.2 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -215.2, 388.2 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -214.7, 388.2 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -214.7, 388.2 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -214.3, 388.2 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -214.3, 388.2 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -213.9, 388.2 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -213.9, 388.2 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -213.5, 388.2 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -213.5, 388.2 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -213, 388.2 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -213, 388.2 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -212.6, 388.2 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -212.6, 388.2 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -254.2, 278.1 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -254.2, 278.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -244.5, 266.6 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -244.5, 266.6 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -234.7, 255.1 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -234.7, 255.1 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -225, 243.6 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -225, 243.6 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -215.3, 232.2 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -215.3, 232.2 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -205.5, 220.7 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -205.5, 220.7 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -195.8, 209.2 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -195.8, 209.2 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -186.1, 197.7 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -186.1, 197.7 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -176.3, 186.2 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -176.3, 186.2 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -166.6, 174.7 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -166.6, 174.7 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -156.9, 163.3 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -156.9, 163.3 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -147.1, 151.8 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -147.1, 151.8 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 284.9, -157.5 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 284.9, -157.5 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 42.3, 43.4 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 42.3, 43.4 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 17.8, 18.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 17.8, 18.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 159.9, 121.8 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 159.9, 121.8 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 123.2, -37.5 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 123.2, -37.5 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 3.1, 43.4 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 3.1, 43.4 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 10.5, 82.6 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 10.5, 82.6 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 52.1, 89.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 52.1, 89.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 49.7, -0.7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 49.7, -0.7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 59.5, 48.3 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 59.5, 48.3 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 71.7, 14 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 71.7, 14 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -102.6, 36.6 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -102.6, 36.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -87.1, 21.1 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -87.1, 21.1 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -118.1, 52.1 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -118.1, 52.1 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -113.5, 49 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -113.5, 49 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -106.3, 41.3 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -106.3, 41.3 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -103.2, 38.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -103.2, 38.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -98.5, 33.5 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -98.5, 33.5 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -95.4, 30.4 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -95.4, 30.4 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -120.2, 56.8 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -120.2, 56.8 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -120.2, 87.8 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -120.2, 87.8 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -118.7, 87.8 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -118.7, 87.8 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -115.6, 89.3 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -115.6, 89.3 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -123.3, 90.9 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -123.3, 90.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -121.8, 92.4 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -121.8, 92.4 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -186.9, 76.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -186.9, 76.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -171.4, 45.9 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -171.4, 45.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -171.4, 45.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -137.3, -2.1 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -137.3, -2.1 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -149.7, 16.5 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -149.7, 16.5 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -155.9, 18 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -457.7, 344.3 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -636, 491.5 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -822, 631 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -822, 631 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -76.5, 59 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -79.1, 72.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -81.5, 85.3 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -83.7, 96.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -85.7, 107.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -87.5, 116.5 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -89.2, 124.8 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -90.6, 132 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -91.8, 138.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -92.8, 143 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -93.6, 146.9 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -94.2, 149.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -94.5, 151.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -94.6, 151.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -94.6, 153.3 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -94.6, 154.7 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -94.6, 156.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -94.6, 157.5 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -94.6, 158.9 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -94.6, 160.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -94.6, 161.7 , 0 );

setScaleKey( spep_0 + 0, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.03, 0.03 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 113 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 114 + OFFSET_X, 1, 67 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, 67 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -33.6 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -33.6 );

--敵の動き_02
setDisp( spep_0 + 224 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 264 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 224 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 246 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 224 + OFFSET_X, 1, 24.5, -454.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 24.5, -426.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 24.5, -384.2 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 24.5, -372.5 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 24.5, -329.8 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 24.5, -302.6 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 24.5, -263 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 24.5, -238.4 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 24.5, -200.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 24.5, -175.1 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 25, -191.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 25, -191.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 25, -157.3 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 25, -157.3 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 25, -59.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 25, -59.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 25, -207.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 25, -207.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 25, -198.5 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 25, -198.5 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 25, -357 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 25, -357 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 25, -376.5 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 25, -458.6 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -50.2, -799.7 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -50.1, -1001.2 , 0 );

setScaleKey( spep_0 + 224 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2.7, 2.7 );

setRotateKey( spep_0 + 224 + OFFSET_X, 1, 88.4 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, 88.4 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 148.9 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 148.9 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -127.8 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -127.8 );

--敵の動き_03
setDisp( spep_0 + 282 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 498 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 302 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 318 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 356 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 382 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 386 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 398 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 282 + OFFSET_X, 1, 160.3, 451 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 160.3, 451.1 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 160.3, 451.1 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 34.7, 314.7 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 34.7, 314.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -31.9, 235.6 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -31.9, 235.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -118.7, 145.7 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -118.7, 145.7 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -100.8, 162.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -100.8, 162.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -100.8, 142.2 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -100.8, 142.2 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -72.9, 163.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -72.9, 163.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -77.6, 157.7 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -77.6, 157.7 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 1.5, 260 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 1.5, 260 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 303.7, 628.9 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 303.7, 628.9 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -1272.2, -806.6 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -1125.6, -718.7 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -993.3, -639.4 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -874.3, -568 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -767.4, -503.9 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -671.8, -446.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -586.4, -395.2 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -510.4, -349.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -442.9, -309 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -383.1, -273.1 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -330.2, -241.3 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -283.4, -213.2 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -242.2, -188.4 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -205.8, -166.6 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -173.7, -147.3 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -145.4, -130.3 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -120.2, -115.3 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -97.8, -101.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -77.8, -89.9 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -77.8, -89.9 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -105.3, -25.4 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -105.3, -25.4 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -144.2, -5.9 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -144.2, -5.9 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -157.3, 0.6 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -157.3, 0.6 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -170.3, 7.1 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -170.3, 7.1 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -183.3, 13.6 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -183.3, 13.6 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -163.8, -5.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -163.8, -5.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -142.4, -23.4 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -142.4, -23.4 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -161.9, -3.9 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -161.9, -3.9 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -156.1, -3.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -156.1, -3.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -148.3, -7.8 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -148.3, -7.8 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -167.8, 11.7 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -167.8, 11.7 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -148.3, -7.8 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -215.2, 48.7 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -215.2, 48.7 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -240.1, 48.4 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -240.1, 48.4 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -148.9, 63.3 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -148.9, 63.3 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -149.3, 66.7 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -149.3, 66.7 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -149.8, 70.2 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -149.8, 70.2 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -150.3, 73.6 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -150.3, 73.6 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -150.8, 77.1 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -150.8, 77.1 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -151.3, 80.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -151.3, 80.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -272.3, -13.7 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -272.3, -13.7 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -275.5, -13.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -275.5, -13.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -272.3, -13.7 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -272.3, -13.7 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -266.9, -13.2 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -266.9, -13.2 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -277.8, 111.9 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -277.8, 111.9 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -282.3, 113.7 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -282.3, 113.7 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -278.9, 111.8 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -278.9, 111.8 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -275.6, 111 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -275.6, 111 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -276, -99.7 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -276, -99.7 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -280.2, -101.1 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -280.2, -101.1 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -278.1, -99.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -278.1, -99.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -272.3, -13.7 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -272.3, -13.7 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -275.5, -13.9 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -275.5, -13.9 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -272.3, -13.7 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -272.3, -13.7 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -266.9, -13.2 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -266.9, -13.2 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -277.8, 111.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -277.8, 111.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -282.3, 113.7 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -282.3, 113.7 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -278.9, 111.8 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -278.9, 111.8 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -275.6, 111 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -275.6, 111 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -276, -99.7 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -276, -99.7 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -280.2, -101.1 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -280.2, -101.1 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -278.1, -99.9 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -278.1, -99.9 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -272.3, -13.7 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -272.3, -13.7 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -275.5, -13.9 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -275.5, -13.9 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -272.3, -13.7 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -272.3, -13.7 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -266.9, -13.2 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -266.9, -13.2 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -277.8, 111.9 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -277.8, 111.9 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -282.3, 113.7 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -282.3, 113.7 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -278.9, 111.8 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -278.9, 111.8 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -275.6, 111 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -275.6, 111 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -276, -99.7 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -276, -99.7 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -280.2, -101.1 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -280.2, -101.1 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -278.1, -99.9 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -278.1, -99.9 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -272.3, -13.7 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -272.3, -13.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -275.5, -13.9 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -275.5, -13.9 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -272.3, -13.7 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -272.3, -13.7 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -266.9, -13.2 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -266.9, -13.2 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -254.9, -13.7 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -254.9, -13.7 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -249.5, -13.2 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -249.5, -13.2 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -260.5, 112 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -260.5, 112 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -258.3, 111.1 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -258.3, 111.1 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -258.6, -99.5 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -258.6, -99.5 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -260.7, -99.7 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -260.7, -99.7 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -254.9, -13.7 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -254.9, -13.7 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -249.5, -13.2 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, -249.5, -13.2 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -260.5, 112 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -260.5, 112 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -258.3, 111.1 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -258.3, 111.1 , 0 );

setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 20.97, 20.97 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 18.71, 18.71 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 16.67, 16.67 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 14.83, 14.83 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 13.17, 13.17 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 11.69, 11.69 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 10.37, 10.37 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 9.19, 9.19 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 8.14, 8.14 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 7.21, 7.21 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 6.38, 6.38 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 2.32, 2.32 );

setRotateKey( spep_0 + 282 + OFFSET_X, 1, -70.2 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -70.2 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 31.6 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, 31.6 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 64 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 64 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 65.8 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, 65.8 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 63.8 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 63.8 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 61.7 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, 61.7 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, 59.7 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 59.7 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 57.6 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, 57.6 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 487 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 493 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_0 + 498 + OFFSET_X, 1, 12.9 );

--敵の動き_04
setDisp( spep_0 + 600 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 642 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 600 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 626 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 600 + OFFSET_X, 1, -431.4, -328.7 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, -388, -273.1 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, -344.6, -217.4 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, -301.1, -161.8 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, -257.7, -106.2 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, -214.3, -50.5 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, -156.5, 3.5 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, -180.4, 26.6 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, -138.2, 49.6 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, -133.8, 27.6 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, -119.2, 35 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, -104.5, 42.3 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, -89.8, 49.6 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, -25.6, 45 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, -25.6, 45 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, -77.6, -41.6 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, -117.6, -101.6 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, -179.6, -205.8 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, -439.6, -475.8 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, -699.6, -745.8 , 0 );

setScaleKey( spep_0 + 600 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 6.34, 6.34 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_0 + 610 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 614 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 616 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 625 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 632 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 634 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 636 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 638 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 642 + OFFSET_X, 1, 1.95, 1.95 );

setRotateKey( spep_0 + 600 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_0 + 625 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_0 + 626 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 638 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_0 + 642 + OFFSET_X, 1, -0.8 );

--敵の動き_05
setDisp( spep_0 + 646 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 694 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 646 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 646 + OFFSET_X, 1, 132.9, 30.6 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 115.5, 20.6 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 99, 11 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, 83.3, 1.9 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, 68.3, -6.8 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, 54.2, -15.1 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, 40.8, -22.9 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, 28.2, -30.3 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, 16.4, -37.2 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, 5.3, -43.7 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, -5, -49.7 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, -14.5, -55.3 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, -23.3, -60.5 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, -31.2, -65.2 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, -38.5, -69.5 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, -44.9, -73.3 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, -50.6, -76.6 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, -55.5, -79.6 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, -59.7, -82 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, -63.1, -84.1 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, -65.8, -85.6 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, -67.7, -86.7 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, -68.8, -87.4 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, -69.2, -87.6 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, -69.2, -87.6 , 0 );

setScaleKey( spep_0 + 646 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 648 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 650 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 652 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 654 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 656 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 658 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 660 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 662 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 664 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 666 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 668 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 670 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 672 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 674 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 676 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 678 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 680 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 682 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 684 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 686 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 688 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 690 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 692 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 694 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_0 + 646 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_0 + 694 + OFFSET_X, 1, -37.1 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 144, 0, 38, 0.6);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 75 );

--振りかぶる
SE003 = playSeVer2( spep_0 + 88, 1003, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 88, 1117, "",spep_0 + 122, 0, 20, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 102; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
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
--蹴り
SE005 = playSeVer2( spep_0 + 112, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE005, 81 );
SE006 = playSeVer2( spep_0 + 114, 1187, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 114, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE007, 86 );

--敵吹き飛ぶ
SE008 = playSeVer2( spep_0 + 164, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE008, 84 );
SE009 = playSeVer2( spep_0 + 164, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE009, 72 );
SE010 = playSeVer2( spep_0 + 164, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE010, 93 );

--敵飛んでいく
SE011 = playSeVer2( spep_0 + 182, 1121, "",spep_0 + 260, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 182, SE011, 73 );
SE012 = playSeVer2( spep_0 + 182, 1183, "",spep_0 + 262, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 182, SE012, 65 );

--瞬間移動
SE013 = playSeVer2( spep_0 + 228, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE013, 122 );

--蹴り落とす
SE014 = playSeVer2( spep_0 + 246, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 246, 1187, "", 0, 0, 0, -1);

--瞬間移動
SE016 = playSeVer2( spep_0 + 266, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE016, 122 );

--蹴り上げる
SE017 = playSeVer2( spep_0 + 302, 1120, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 302, 1187, "", 0, 0, 0, -1);

--瞬間移動
SE019 = playSeVer2( spep_0 + 324, 1109, "", 0, 0, 0, -1);

--ライダーキック
SE020 = playSeVer2( spep_0 + 348, 1004, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 356, 1153, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 356, 1187, "",spep_0 + 386, 0, 18, -1);
SE023 = playSeVer2( spep_0 + 362, 1110, "", 0, 0, 0, -1);

--足にエネルギー溜まる
SE025 = playSeVer2( spep_0 + 398, 1158, "",spep_0 + 652, 0, 44, 0.6);
SE024 = playSeVer2( spep_0 + 420, 1210, "",spep_0 + 652, 76, 38, 0.6);
setSeVolumeByWorkId( spep_0 + 420, SE024, 65 );
setStartTimeMs( SE024,  733 );
setPitch( spep_0 + 420, SE024, 400 );
setTimeStretch( SE024, 1.27, 30, 4 );

--連続蹴り
SE026 = playSeVer2( spep_0 + 400, 1425, "",0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 400, SE026, 80 );

SE027 = playSeVer2( spep_0 + 400, 1009, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 424, 1010, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_0 + 424, SE031 );

--足にエネルギー溜まる
SE034 = playSeVer2( spep_0 + 438, 1148, "", spep_0 + 544, 0, 10, -1);

--連続蹴り
SE036 = playSeVer2( spep_0 + 450, 1009, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 478, 1010, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_0 + 478, SE041 );

--画面遷移
SE043 = playSeVer2( spep_0 + 498, 1232, "", 0, 0, 0, -1);

--気弾発射前溜め
SE044 = playSeVer2( spep_0 + 530, 1116, "",spep_0 + 576, 0, 22, -1);
SE045 = playSeVer2( spep_0 + 546, 1282, "",spep_0 + 638, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 546, SE045, 58 );
SE046 = playSeVer2( spep_0 + 552, 1390, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE046, 72 );
SE047 = playSeVer2( spep_0 + 554, 1254, "", 0, 0, 0, -1);

--気弾蹴り飛ばす
SE048 = playSeVer2( spep_0 + 622, 1120, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 622, 1145, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 622, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 622, SE050, 79 );

--気弾飛んでいく
SE051 = playSeVer2( spep_0 + 646, 1121, "",spep_0 + 722, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 646, SE051, 89 );
SE052 = playSeVer2( spep_0 + 652, 1277, "", 0, 0, 0, -1);

--地面激突
SE053 = playSeVer2( spep_0 + 694, 1159, "", spep_0 + 906, 0, 10, -1);

--手前に出す
SE054 = playSeVer2( spep_0 + 772, 1004, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 772, 1233, "", 0, 0, 0, -1);

--ファイナルフラッシュ溜め
SE056 = playSeVer2( spep_0 + 776, 1274, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_0 + 780, 1334, "",spep_0 + 906, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 780, SE058, 112 );
SE059 = playSeVer2( spep_0 + 780, 1345, "",spep_0 + 908, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 780, SE059, 158 );
SE060 = playSeVer2( spep_0 + 782, 1148, "",spep_0 + 904, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 782, SE060, 71 );
SE061 = playSeVer2( spep_0 + 782, 1296, "",spep_0 + 902, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 782, SE061, 107 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 886F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- ファイナルフラッシュ発射 (198F)
------------------------------------------------------
MAX_FRAME_2 = 198;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ファイナルフラッシュ発射 ef_002
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish, 0);
setEffAlphaKey( spep_2 + 0, finish, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish, 255);

-- ** 音 ** --
--発射前溜め
SE063 = playSeVer2( spep_2 + 0, 1296, "",spep_2 + 46, 12, 12, -1);
setStartTimeMs( SE063,  633 );
SE064 = playSeVer2( spep_2 + 6, 1148, "",spep_2 + 50, 12, 18, -1);
setStartTimeMs( SE064,  500 );
SE065 = playSeVer2( spep_2 + 4, 1334, "",spep_2 + 44, 10, 12, -1);
setStartTimeMs( SE065,  367 );
SE066 = playSeVer2( spep_2 + 6, 1345, "",spep_2 + 42, 10, 12, -1);
setStartTimeMs( SE066,  400 );

--ファイナルフラッシュ発射
SE067 = playSeVer2( spep_2 + 16, 1146, "", 0, 0, 0, 0.6);
SE068 = playSeVer2( spep_2 + 16, 1133, "", 0, 0, 0, 0.6);
SE069 = playSeVer2( spep_2 + 16, 1284, "", 0, 0, 0, 0.6);

--爆発
SE070 = playSeVer2( spep_2 + 74, 1159, "", 0, 0, 0, -1);
SE071 = playSeVer2( spep_2 + 78, 1067, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_2 + 84, 1137, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 60); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 2); -- 終了フレーム 198F


end