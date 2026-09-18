--1029360:LR_超サイヤ人孫悟空&超サイヤ人トランクス(青年期)&超サイヤ人孫悟飯(少年期)_必殺技：激烈円舞
--sp_effect_b4_00354
--sp2765

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163161;  --ef_001 開幕〜カードカットインまで
SP_02  = 163163;  --ef_002 悟空蹴り～最後まで


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

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------
if (_IS_PLAYER_SIDE_ == 1) then

   if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 68;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 820 );  -- スキップ先フレーム指定
        setupMovie(spep_2 + 820 , SP_01, spep_2 + 820 -1 + 2, 1);

        -- ** 音 ** --
        -- 再生させるSEを追加してください。

    else 
        setupMovie(0, SP_01, 0, 1);
    end


spep_0 = 0;

MAX_FRAME_0=68;

-------------------------------------------------
-- 開幕〜カードカットインまで
-------------------------------------------------

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 70 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 133.3, 46 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X , 1, 133.4, 45.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X , 1, 133.4, 45.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X , 1, 133.4, 45 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X , 1, 133.4, 45 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X , 1, 133.4, 44.5 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X , 1, 133.4, 44.5 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X , 1, 133.4, 44 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X , 1, 133.4, 44 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X , 1, 133.4, 43.4 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X , 1, 133.4, 43.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X , 1, 133.4, 42.9 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X , 1, 133.4, 42.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X , 1, 133.4, 42.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X , 1, 133.4, 42.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X , 1, 133.4, 42 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X , 1, 133.4, 42 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X , 1, 133.4, 41.5 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X , 1, 133.4, 41.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X , 1, 133.4, 41 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X , 1, 133.4, 41 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X , 1, 133.4, 40.6 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X , 1, 133.4, 40.6 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X , 1, 133.4, 40.1 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X , 1, 133.4, 40.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X , 1, 133.4, 39.7 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X , 1, 133.4, 39.7 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X , 1, 133.4, 39.3 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X , 1, 133.4, 39.3 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X , 1, 133.4, 39 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X , 1, 133.4, 39 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X , 1, 133.4, 38.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X , 1, 133.4, 38.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X , 1, 133.4, 38.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X , 1, 133.4, 38.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X , 1, 133.4, 37.9 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X , 1, 133.4, 37.9 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X , 1, 133.4, 37.6 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X , 1, 133.4, 37.6 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X , 1, 133.4, 37.4 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X , 1, 133.4, 37.4 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X , 1, 133.4, 37.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X , 1, 133.4, 37.1 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X , 1, 133.4, 36.8 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X , 1, 133.4, 36.8 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X , 1, 133.4, 36.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X , 1, 133.4, 36.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X , 1, 133.4, 36.4 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X , 1, 133.4, 36.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X , 1, 133.4, 36.2 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X , 1, 133.4, 36.2 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X , 1, 133.4, 36 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X , 1, 133.4, 36 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X , 1, 133.4, 35.8 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X , 1, 133.4, 35.8 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X , 1, 133.4, 35.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X , 1, 133.4, 35.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X , 1, 133.4, 35.5 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X , 1, 133.4, 35.5 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X , 1, 133.4, 35.3 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X , 1, 133.4, 35.3 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X , 1, 133.4, 35.2 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X , 1, 133.4, 35.2 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X , 1, 133.4, 35.1 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X , 1, 133.4, 35.1 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X , 1, 133.4, 34.9 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X , 1, 133.4, 34.9 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X , 1, 133.4, 34.8 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X , 1, 133.4, 34.8 , 0 );

setScaleKey( spep_0 + 0, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 2 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 3 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 4 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 5 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 6 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 7 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 70 + OFFSET_X , 1, 0.47, 0.47 );

setRotateKey( spep_0 + 0, 1, 1 );
setRotateKey( spep_0 + 2 + OFFSET_X , 1, 1 );
setRotateKey( spep_0 + 3 + OFFSET_X , 1, 1 );
setRotateKey( spep_0 + 4 + OFFSET_X , 1, 1 );
setRotateKey( spep_0 + 5 + OFFSET_X , 1, 1 );
setRotateKey( spep_0 + 6 + OFFSET_X , 1, 1 );
setRotateKey( spep_0 + 7 + OFFSET_X , 1, 1 );
setRotateKey( spep_0 + 70 + OFFSET_X , 1, 1 );

-- ** 音 ** --
--飛び上がる
SE001 = playSeVer2( spep_0 + 0, 63, "", spep_0 + 0 + 104, 0, 66, 0.7);
SE002 = playSeVer2( spep_0 + 2, 44, "", 0, 0, 0, 0.7);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --68f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--悟空向かってくる
SE004 = playSeVer2( spep_1 + 82, 63, "", spep_1 + 82 + 62, 0, 26, -1);

-------------------------------------------------
-- 悟空蹴り～最後まで
-------------------------------------------------
MAX_FRAME_2 = 1032;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 悟空蹴り～最後まで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 720;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -40, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -40, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -40, 515.5 , 0 );
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
setDisp( spep_2 + 48 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 98 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 48 + OFFSET_X , 1, 7 );

setMoveKey( spep_2 + 48 + OFFSET_X , 1, 403.7, 63.4 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X , 1, 403.7, 63.4 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X , 1, -363, 47.1 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X , 1, -363, 47.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X , 1, 419.9, 58.4 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X , 1, 419.9, 58.4 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X , 1, -274, 55.2 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X , 1, -274, 55.2 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X , 1, 343.4, 68 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X , 1, 343.4, 68 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X , 1, 106.9, 56.8 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X , 1, 106.9, 56.8 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X , 1, 315.4, 61.7 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X , 1, 315.4, 61.7 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X , 1, 111, 60 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X , 1, 111, 60 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X , 1, 281.6, 56.7 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X , 1, 281.6, 56.7 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X , 1, 204, 63.3 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X , 1, 204, 63.3 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X , 1, 275.5, 61.7 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X , 1, 275.5, 61.7 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X , 1, 239.8, 60 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X , 1, 239.8, 60 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X , 1, 271.7, 55.1 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X , 1, 271.7, 55.1 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X , 1, 246, 61.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X , 1, 246, 61.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X , 1, 266.8, 58.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X , 1, 266.8, 58.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X , 1, 265.4, 60.1 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X , 1, 265.4, 60.1 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X , 1, 262.5, 60.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X , 1, 262.5, 60.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X , 1, 263.1, 56.8 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X , 1, 263.1, 56.8 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X , 1, 262.1, 60.1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X , 1, 262.1, 60.1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X , 1, 259.6, 60.1 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X , 1, 259.6, 60.1 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X , 1, 263.9, 58.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X , 1, 263.9, 58.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X , 1, 258.5, 60.1 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X , 1, 258.5, 60.1 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X , 1, 259.7, 58.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X , 1, 259.7, 58.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X , 1, 259.5, 58.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X , 1, 259.5, 58.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X , 1, 259.4, 58.4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X , 1, 259.4, 58.4 , 0 );

setScaleKey( spep_2 + 48 + OFFSET_X , 1, 5.66, 5.66 );
setScaleKey( spep_2 + 98 + OFFSET_X , 1, 5.66, 5.66 );

setRotateKey( spep_2 + 48 + OFFSET_X , 1, 53.2 );
setRotateKey( spep_2 + 98 + OFFSET_X , 1, 53.2 );


--敵の動き2
setDisp( spep_2 + 218 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 278 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 218 + OFFSET_X , 1, 6 );

setMoveKey( spep_2 + 218 + OFFSET_X , 1, 4.3, 139 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X , 1, 4.3, 139 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X , 1, 4.1, 140.7 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X , 1, 4.1, 140.7 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X , 1, 3.1, 146 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X , 1, 3.1, 146 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X , 1, 1.6, 154.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X , 1, 1.6, 154.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X , 1, -0.6, 166.7 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X , 1, -0.6, 166.7 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X , 1, -3.3, 182.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X , 1, -3.3, 182.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X , 1, -3.3, 182.3 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X , 1, -3.3, 182.3 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X , 1, -6.7, 201.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X , 1, -6.7, 201.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X , 1, -10.7, 223.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X , 1, -10.7, 223.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X , 1, -15.2, 249.7 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X , 1, -15.2, 249.7 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X , 1, -18, 263.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X , 1, -18, 263.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X , 1, -18, 264 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X , 1, -18, 264 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X , 1, -18, 264.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X , 1, -18, 264.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X , 1, -17.9, 264.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X , 1, -17.9, 264.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X , 1, -18, 264.2 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X , 1, -18, 264.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X , 1, -18, 264.3 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X , 1, -18, 264.3 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X , 1, -18, 264.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X , 1, -18, 264.4 , 0 );

setScaleKey( spep_2 + 218 + OFFSET_X , 1, 3.43, 3.43 );
setScaleKey( spep_2 + 221 + OFFSET_X , 1, 3.43, 3.43 );
setScaleKey( spep_2 + 222 + OFFSET_X , 1, 3.4, 3.4 );
setScaleKey( spep_2 + 225 + OFFSET_X , 1, 3.4, 3.4 );
setScaleKey( spep_2 + 226 + OFFSET_X , 1, 3.3, 3.3 );
setScaleKey( spep_2 + 229 + OFFSET_X , 1, 3.3, 3.3 );
setScaleKey( spep_2 + 230 + OFFSET_X , 1, 3.13, 3.13 );
setScaleKey( spep_2 + 233 + OFFSET_X , 1, 3.13, 3.13 );
setScaleKey( spep_2 + 234 + OFFSET_X , 1, 2.9, 2.9 );
setScaleKey( spep_2 + 237 + OFFSET_X , 1, 2.9, 2.9 );
setScaleKey( spep_2 + 238 + OFFSET_X , 1, 2.6, 2.6 );
setScaleKey( spep_2 + 241 + OFFSET_X , 1, 2.6, 2.6 );
setScaleKey( spep_2 + 242 + OFFSET_X , 1, 2.23, 2.23 );
setScaleKey( spep_2 + 245 + OFFSET_X , 1, 2.23, 2.23 );
setScaleKey( spep_2 + 246 + OFFSET_X , 1, 1.8, 1.8 );
setScaleKey( spep_2 + 249 + OFFSET_X , 1, 1.8, 1.8 );
setScaleKey( spep_2 + 250 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 253 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 254 + OFFSET_X , 1, 1.02, 1.02 );
setScaleKey( spep_2 + 257 + OFFSET_X , 1, 1.02, 1.02 );
setScaleKey( spep_2 + 258 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 261 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 262 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_2 + 265 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_2 + 266 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_2 + 269 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_2 + 270 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_2 + 273 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_2 + 274 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 278 + OFFSET_X , 1, 0.94, 0.94 );

setRotateKey( spep_2 + 218 + OFFSET_X , 1, 83.2 );
setRotateKey( spep_2 + 278 + OFFSET_X , 1, 83.2 );


--敵の動き3
setDisp( spep_2 + 326 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 394 + OFFSET_X , 1, 0 );

--changeAnime( spep_2 + 326 + OFFSET_X , 1, 6 );

setMoveKey( spep_2 + 326 + OFFSET_X , 1, 6.5, 118.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X , 1, 6.5, 118.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X , 1, 4.7, 91.5 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X , 1, 4.7, 91.5 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X , 1, 5.9, 109.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X , 1, 5.9, 109.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X , 1, 4.8, 91.5 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X , 1, 4.8, 91.5 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X , 1, 5.4, 100.4 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X , 1, 5.4, 100.4 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X , 1, 4.7, 91.3 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X , 1, 4.7, 91.3 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X , 1, 5, 95.7 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X , 1, 5, 95.7 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X , 1, 4.7, 91.2 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X , 1, 4.7, 91.2 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X , 1, 4.9, 93.7 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X , 1, 4.9, 93.7 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X , 1, 4.7, 91 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X , 1, 4.7, 91 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X , 1, 4.7, 90.9 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X , 1, 4.7, 90.9 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X , 1, 4.7, 90.8 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X , 1, 4.7, 90.8 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X , 1, 4.6, 90.8 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X , 1, 4.6, 90.8 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X , 1, 4.6, 90.7 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X , 1, 4.6, 90.7 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X , 1, 4.6, 90.6 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X , 1, 4.6, 90.6 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X , 1, 4.6, 90.5 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X , 1, 4.6, 90.5 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X , 1, 4.6, 90.4 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X , 1, 4.6, 90.4 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X , 1, 4.5, 90.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X , 1, 4.5, 90.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X , 1, 4.5, 90.3 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X , 1, 4.5, 90.3 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X , 1, 4.5, 90.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X , 1, 4.5, 90.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X , 1, 4.5, 90.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X , 1, 4.5, 90.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X , 1, 4.4, 90.1 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X , 1, 4.4, 90.1 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X , 1, 4.4, 90 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X , 1, 4.4, 90 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X , 1, 4.4, 89.9 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X , 1, 4.4, 89.9 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X , 1, 4.4, 89.8 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X , 1, 4.4, 89.8 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X , 1, 4.4, 89.7 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X , 1, 4.4, 89.7 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X , 1, 4.4, 89.6 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X , 1, 4.4, 89.6 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X , 1, 4.4, 89.5 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X , 1, 4.4, 89.5 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X , 1, 4.3, 89.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X , 1, 4.3, 89.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X , 1, 4.3, 89.3 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X , 1, 4.3, 89.3 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X , 1, 4.3, 89.2 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X , 1, 4.3, 89.2 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X , 1, 5.1, 89.1 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X , 1, 5.1, 89.1 , 0 );

setScaleKey( spep_2 + 326 + OFFSET_X , 1, 2.75, 2.75 );
setScaleKey( spep_2 + 327 + OFFSET_X , 1, 2.75, 2.75 );
setScaleKey( spep_2 + 328 + OFFSET_X , 1, 2.11, 2.11 );
setScaleKey( spep_2 + 329 + OFFSET_X , 1, 2.11, 2.11 );
setScaleKey( spep_2 + 330 + OFFSET_X , 1, 2.53, 2.53 );
setScaleKey( spep_2 + 331 + OFFSET_X , 1, 2.53, 2.53 );
setScaleKey( spep_2 + 332 + OFFSET_X , 1, 2.11, 2.11 );
setScaleKey( spep_2 + 333 + OFFSET_X , 1, 2.11, 2.11 );
setScaleKey( spep_2 + 334 + OFFSET_X , 1, 2.31, 2.31 );
setScaleKey( spep_2 + 335 + OFFSET_X , 1, 2.31, 2.31 );
setScaleKey( spep_2 + 336 + OFFSET_X , 1, 2.1, 2.1 );
setScaleKey( spep_2 + 337 + OFFSET_X , 1, 2.1, 2.1 );
setScaleKey( spep_2 + 338 + OFFSET_X , 1, 2.21, 2.21 );
setScaleKey( spep_2 + 339 + OFFSET_X , 1, 2.21, 2.21 );
setScaleKey( spep_2 + 340 + OFFSET_X , 1, 2.1, 2.1 );
setScaleKey( spep_2 + 341 + OFFSET_X , 1, 2.1, 2.1 );
setScaleKey( spep_2 + 342 + OFFSET_X , 1, 2.16, 2.16 );
setScaleKey( spep_2 + 343 + OFFSET_X , 1, 2.16, 2.16 );
setScaleKey( spep_2 + 344 + OFFSET_X , 1, 2.09, 2.09 );
setScaleKey( spep_2 + 353 + OFFSET_X , 1, 2.09, 2.09 );
setScaleKey( spep_2 + 354 + OFFSET_X , 1, 2.08, 2.08 );
setScaleKey( spep_2 + 363 + OFFSET_X , 1, 2.08, 2.08 );
setScaleKey( spep_2 + 364 + OFFSET_X , 1, 2.07, 2.07 );
setScaleKey( spep_2 + 373 + OFFSET_X , 1, 2.07, 2.07 );
setScaleKey( spep_2 + 374 + OFFSET_X , 1, 2.06, 2.06 );
setScaleKey( spep_2 + 381 + OFFSET_X , 1, 2.06, 2.06 );
setScaleKey( spep_2 + 382 + OFFSET_X , 1, 2.05, 2.05 );
setScaleKey( spep_2 + 391 + OFFSET_X , 1, 2.05, 2.05 );
setScaleKey( spep_2 + 392 + OFFSET_X , 1, 2.04, 2.04 );
setScaleKey( spep_2 + 394 + OFFSET_X , 1, 2.04, 2.04 );

setRotateKey( spep_2 + 326 + OFFSET_X , 1, 66 );
setRotateKey( spep_2 + 331 + OFFSET_X , 1, 66 );
setRotateKey( spep_2 + 332 + OFFSET_X , 1, 65.2 );
--setRotateKey( spep_2 + 391 + OFFSET_X , 1, 65.2 );
setRotateKey( spep_2 + 392 + OFFSET_X , 1, 59.8 );
setRotateKey( spep_2 + 394 + OFFSET_X , 1, 59.8 );


--敵の動き4
setDisp( spep_2 + 412 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 432 + OFFSET_X , 1, 0 );

--changeAnime( spep_2 + 412 + OFFSET_X , 1, 6 );

setMoveKey( spep_2 + 412 + OFFSET_X , 1, 99.5, -1939.2 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X , 1, 99.5, -1939.2 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X , 1, -154.3, -875.9 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X , 1, -154.3, -875.9 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X , 1, -154.4, -875.8 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X , 1, -154.4, -875.8 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X , 1, -118.2, -868.2 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X , 1, -118.2, -868.2 , 0 );

setScaleKey( spep_2 + 412 + OFFSET_X , 1, 16.14, 16.14 );
setScaleKey( spep_2 + 415 + OFFSET_X , 1, 16.14, 16.14 );
setScaleKey( spep_2 + 416 + OFFSET_X , 1, 9.4, 9.4 );
setScaleKey( spep_2 + 432 + OFFSET_X , 1, 9.4, 9.4 );

setRotateKey( spep_2 + 412 + OFFSET_X , 1, 73.5 );
setRotateKey( spep_2 + 415 + OFFSET_X , 1, 73.5 );
setRotateKey( spep_2 + 416 + OFFSET_X , 1, 76.7 );
setRotateKey( spep_2 + 425 + OFFSET_X , 1, 76.7 );
setRotateKey( spep_2 + 426 + OFFSET_X , 1, 75 );
setRotateKey( spep_2 + 432 + OFFSET_X , 1, 75 );

--敵の動き5
setDisp( spep_2 + 440 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 508 + OFFSET_X , 1, 0 );

--changeAnime( spep_2 + 440 + OFFSET_X , 1, 6 );
changeAnime( spep_2 + 472 + OFFSET_X , 1, 105 );

setMoveKey( spep_2 + 440 + OFFSET_X , 1, 217.5, -1247.9 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X , 1, 217.5, -1247.9 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X , 1, 224.1, -1251.1 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X , 1, 224.1, -1251.1 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X , 1, 599, -1468.1 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X , 1, 599, -1468.1 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X , 1, 217.9, -1239 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X , 1, 217.9, -1239 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X , 1, -29.1, -1113.5 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X , 1, -29.1, -1113.5 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X , 1, 231.5, -1247.5 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X , 1, 231.5, -1247.5 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X , 1, 262.8, -1276.6 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X , 1, 262.8, -1276.6 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X , 1, 241.5, -1253.2 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X , 1, 241.5, -1253.2 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X , 1, 268.3, -1278.3 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X , 1, 268.3, -1278.3 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X , 1, 249.6, -1258.2 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X , 1, 249.6, -1258.2 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X , 1, 271.9, -1279.1 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X , 1, 271.9, -1279.1 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X , 1, 255.9, -1262.1 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X , 1, 255.9, -1262.1 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X , 1, 273.7, -1279.1 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X , 1, 273.7, -1279.1 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X , 1, 260.5, -1265.2 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X , 1, 260.5, -1265.2 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X , 1, 271.9, -1276.4 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X , 1, 271.9, -1276.4 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X , 1, 268.5, -1272.8 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X , 1, 268.5, -1272.8 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X , 1, -681.1, 1143.1 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X , 1, -681.1, 1143.1 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X , 1, -430.4, 593.2 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X , 1, -430.4, 593.2 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X , 1, -268.7, 244.1 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X , 1, -268.7, 244.1 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X , 1, -164.7, 21.5 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X , 1, -164.7, 21.5 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X , 1, -96.8, -123 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X , 1, -96.8, -123 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X , 1, -54.9, -211.8 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X , 1, -54.9, -211.8 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X , 1, -23.9, -277.2 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X , 1, -23.9, -277.2 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X , 1, -1.1, -325.4 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X , 1, -1.1, -325.4 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X , 1, 15.5, -360.7 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X , 1, 15.5, -360.7 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X , 1, 18.1, -366.1 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X , 1, 18.1, -366.1 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X , 1, 20.3, -371.1 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X , 1, 20.3, -371.1 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X , 1, 22.4, -375.6 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X , 1, 22.4, -375.6 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X , 1, 24.3, -379.6 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X , 1, 24.3, -379.6 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X , 1, 26, -383.1 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X , 1, 26, -383.1 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X , 1, 27.5, -386.3 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X , 1, 27.5, -386.3 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X , 1, 28.8, -389.2 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X , 1, 28.8, -389.2 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X , 1, 30, -391.7 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X , 1, 30, -391.7 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X , 1, 31, -394.1 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X , 1, 31, -394.1 , 0 );

setScaleKey( spep_2 + 440 + OFFSET_X , 1, 19.68, 19.68 );
setScaleKey( spep_2 + 471 + OFFSET_X , 1, 19.68, 19.68 );
setScaleKey( spep_2 + 472 + OFFSET_X , 1, 8.05, 8.05 );
setScaleKey( spep_2 + 473 + OFFSET_X , 1, 8.05, 8.05 );
setScaleKey( spep_2 + 474 + OFFSET_X , 1, 5.38, 5.38 );
setScaleKey( spep_2 + 475 + OFFSET_X , 1, 5.38, 5.38 );
setScaleKey( spep_2 + 476 + OFFSET_X , 1, 3.67, 3.67 );
setScaleKey( spep_2 + 477 + OFFSET_X , 1, 3.67, 3.67 );
setScaleKey( spep_2 + 478 + OFFSET_X , 1, 2.57, 2.57 );
setScaleKey( spep_2 + 479 + OFFSET_X , 1, 2.57, 2.57 );
setScaleKey( spep_2 + 480 + OFFSET_X , 1, 1.86, 1.86 );
setScaleKey( spep_2 + 481 + OFFSET_X , 1, 1.86, 1.86 );
setScaleKey( spep_2 + 482 + OFFSET_X , 1, 1.43, 1.43 );
setScaleKey( spep_2 + 483 + OFFSET_X , 1, 1.43, 1.43 );
setScaleKey( spep_2 + 484 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_2 + 485 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_2 + 486 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_2 + 487 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_2 + 488 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_2 + 489 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_2 + 490 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_2 + 491 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_2 + 492 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_2 + 493 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_2 + 494 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_2 + 495 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_2 + 496 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_2 + 497 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_2 + 498 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_2 + 499 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_2 + 500 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_2 + 501 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_2 + 502 + OFFSET_X , 1, 0.57, 0.57 );
setScaleKey( spep_2 + 503 + OFFSET_X , 1, 0.57, 0.57 );
setScaleKey( spep_2 + 504 + OFFSET_X , 1, 0.55, 0.55 );
setScaleKey( spep_2 + 505 + OFFSET_X , 1, 0.55, 0.55 );
setScaleKey( spep_2 + 506 + OFFSET_X , 1, 0.54, 0.54 );
setScaleKey( spep_2 + 508 + OFFSET_X , 1, 0.54, 0.54 );

setRotateKey( spep_2 + 440 + OFFSET_X , 1, 58.2 );
setRotateKey( spep_2 + 441 + OFFSET_X , 1, 58.2 );
setRotateKey( spep_2 + 442 + OFFSET_X , 1, 58.9 );
setRotateKey( spep_2 + 443 + OFFSET_X , 1, 58.9 );
setRotateKey( spep_2 + 444 + OFFSET_X , 1, 59.6 );
setRotateKey( spep_2 + 445 + OFFSET_X , 1, 59.6 );
setRotateKey( spep_2 + 446 + OFFSET_X , 1, 60.2 );
setRotateKey( spep_2 + 447 + OFFSET_X , 1, 60.2 );
setRotateKey( spep_2 + 448 + OFFSET_X , 1, 60.7 );
setRotateKey( spep_2 + 449 + OFFSET_X , 1, 60.7 );
setRotateKey( spep_2 + 450 + OFFSET_X , 1, 61.2 );
setRotateKey( spep_2 + 451 + OFFSET_X , 1, 61.2 );
setRotateKey( spep_2 + 452 + OFFSET_X , 1, 61.7 );
setRotateKey( spep_2 + 453 + OFFSET_X , 1, 61.7 );
setRotateKey( spep_2 + 454 + OFFSET_X , 1, 62.1 );
setRotateKey( spep_2 + 455 + OFFSET_X , 1, 62.1 );
setRotateKey( spep_2 + 456 + OFFSET_X , 1, 62.5 );
setRotateKey( spep_2 + 457 + OFFSET_X , 1, 62.5 );
setRotateKey( spep_2 + 458 + OFFSET_X , 1, 62.8 );
setRotateKey( spep_2 + 459 + OFFSET_X , 1, 62.8 );
setRotateKey( spep_2 + 460 + OFFSET_X , 1, 63.1 );
setRotateKey( spep_2 + 461 + OFFSET_X , 1, 63.1 );
setRotateKey( spep_2 + 462 + OFFSET_X , 1, 63.3 );
setRotateKey( spep_2 + 463 + OFFSET_X , 1, 63.3 );
setRotateKey( spep_2 + 464 + OFFSET_X , 1, 63.4 );
setRotateKey( spep_2 + 465 + OFFSET_X , 1, 63.4 );
setRotateKey( spep_2 + 466 + OFFSET_X , 1, 63.6 );
setRotateKey( spep_2 + 469 + OFFSET_X , 1, 63.6 );
setRotateKey( spep_2 + 470 + OFFSET_X , 1, 63.7 );
setRotateKey( spep_2 + 471 + OFFSET_X , 1, 63.7 );
setRotateKey( spep_2 + 472 + OFFSET_X , 1, 70.1 );
setRotateKey( spep_2 + 473 + OFFSET_X , 1, 70.1 );
setRotateKey( spep_2 + 474 + OFFSET_X , 1, 84.1 );
setRotateKey( spep_2 + 475 + OFFSET_X , 1, 84.1 );
setRotateKey( spep_2 + 476 + OFFSET_X , 1, 93.7 );
setRotateKey( spep_2 + 477 + OFFSET_X , 1, 93.7 );
setRotateKey( spep_2 + 478 + OFFSET_X , 1, 100.6 );
setRotateKey( spep_2 + 479 + OFFSET_X , 1, 100.6 );
setRotateKey( spep_2 + 480 + OFFSET_X , 1, 105.5 );
setRotateKey( spep_2 + 481 + OFFSET_X , 1, 105.5 );
setRotateKey( spep_2 + 482 + OFFSET_X , 1, 109.1 );
setRotateKey( spep_2 + 483 + OFFSET_X , 1, 109.1 );
setRotateKey( spep_2 + 484 + OFFSET_X , 1, 111.8 );
setRotateKey( spep_2 + 485 + OFFSET_X , 1, 111.8 );
setRotateKey( spep_2 + 486 + OFFSET_X , 1, 113.8 );
setRotateKey( spep_2 + 487 + OFFSET_X , 1, 113.8 );
setRotateKey( spep_2 + 488 + OFFSET_X , 1, 115.3 );
setRotateKey( spep_2 + 489 + OFFSET_X , 1, 115.3 );
setRotateKey( spep_2 + 490 + OFFSET_X , 1, 119.3 );
setRotateKey( spep_2 + 491 + OFFSET_X , 1, 119.3 );
setRotateKey( spep_2 + 492 + OFFSET_X , 1, 122.9 );
setRotateKey( spep_2 + 493 + OFFSET_X , 1, 122.9 );
setRotateKey( spep_2 + 494 + OFFSET_X , 1, 126.2 );
setRotateKey( spep_2 + 495 + OFFSET_X , 1, 126.2 );
setRotateKey( spep_2 + 496 + OFFSET_X , 1, 129.2 );
setRotateKey( spep_2 + 497 + OFFSET_X , 1, 129.2 );
setRotateKey( spep_2 + 498 + OFFSET_X , 1, 131.9 );
setRotateKey( spep_2 + 499 + OFFSET_X , 1, 131.9 );
setRotateKey( spep_2 + 500 + OFFSET_X , 1, 134.3 );
setRotateKey( spep_2 + 501 + OFFSET_X , 1, 134.3 );
setRotateKey( spep_2 + 502 + OFFSET_X , 1, 136.5 );
setRotateKey( spep_2 + 503 + OFFSET_X , 1, 136.5 );
setRotateKey( spep_2 + 504 + OFFSET_X , 1, 138.4 );
setRotateKey( spep_2 + 505 + OFFSET_X , 1, 138.4 );
setRotateKey( spep_2 + 506 + OFFSET_X , 1, 140.1 );
setRotateKey( spep_2 + 508 + OFFSET_X , 1, 140.1 );


--敵の動き6
setDisp( spep_2 + 844 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 970 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 844 + OFFSET_X , 1, 106 );
changeAnime( spep_2 + 860 + OFFSET_X , 1, 108 );

--敵のX位置調整
a = 100;

setMoveKey( spep_2 + 844 + OFFSET_X , 1, 701 + a, -108.1 , 0 );
setMoveKey( spep_2 + 845 + OFFSET_X , 1, 701 + a, -108.1 , 0 );
setMoveKey( spep_2 + 846 + OFFSET_X , 1, 606 + a, -101.5 , 0 );
setMoveKey( spep_2 + 847 + OFFSET_X , 1, 606 + a, -101.5 , 0 );
setMoveKey( spep_2 + 848 + OFFSET_X , 1, 535.7 + a, -117.3 , 0 );
setMoveKey( spep_2 + 849 + OFFSET_X , 1, 535.7 + a, -117.3 , 0 );
setMoveKey( spep_2 + 850 + OFFSET_X , 1, 453.9 + a, -101.6 , 0 );
setMoveKey( spep_2 + 851 + OFFSET_X , 1, 453.9 + a, -101.6 , 0 );
setMoveKey( spep_2 + 852 + OFFSET_X , 1, 366 + a, -106.2 , 0 );
setMoveKey( spep_2 + 853 + OFFSET_X , 1, 366 + a, -106.2 , 0 );
setMoveKey( spep_2 + 854 + OFFSET_X , 1, 303 + a, -113 , 0 );
setMoveKey( spep_2 + 855 + OFFSET_X , 1, 303 + a, -113 , 0 );
setMoveKey( spep_2 + 856 + OFFSET_X , 1, 310.4 + a, -104.1 , 0 );
setMoveKey( spep_2 + 857 + OFFSET_X , 1, 310.4 + a, -104.1 , 0 );
setMoveKey( spep_2 + 858 + OFFSET_X , 1, 304.3 + a, -104.2 , 0 );
setMoveKey( spep_2 + 859 + OFFSET_X , 1, 304.3 + a, -104.2 , 0 );
setMoveKey( spep_2 + 860 + OFFSET_X , 1, 342.5 + a, -109.8 , 0 );
setMoveKey( spep_2 + 861 + OFFSET_X , 1, 342.5 + a, -109.8 , 0 );
setMoveKey( spep_2 + 862 + OFFSET_X , 1, 334.5 + a, -100.5 , 0 );
setMoveKey( spep_2 + 863 + OFFSET_X , 1, 334.5 + a, -100.5 , 0 );
setMoveKey( spep_2 + 864 + OFFSET_X , 1, 344.5 + a, -100.3 , 0 );
setMoveKey( spep_2 + 865 + OFFSET_X , 1, 344.5 + a, -100.3 , 0 );
setMoveKey( spep_2 + 866 + OFFSET_X , 1, 336.5 + a, -106.7 , 0 );
setMoveKey( spep_2 + 867 + OFFSET_X , 1, 336.5 + a, -106.7 , 0 );
setMoveKey( spep_2 + 868 + OFFSET_X , 1, 337.5 + a, -102 , 0 );
setMoveKey( spep_2 + 869 + OFFSET_X , 1, 337.5 + a, -102 , 0 );
setMoveKey( spep_2 + 870 + OFFSET_X , 1, 345.2 + a, -99.5 , 0 );
setMoveKey( spep_2 + 871 + OFFSET_X , 1, 345.2 + a, -99.5 , 0 );
setMoveKey( spep_2 + 872 + OFFSET_X , 1, 346 + a, -108.2 , 0 );
setMoveKey( spep_2 + 873 + OFFSET_X , 1, 346 + a, -108.2 , 0 );
setMoveKey( spep_2 + 874 + OFFSET_X , 1, 340.1 + a, -99 , 0 );
setMoveKey( spep_2 + 875 + OFFSET_X , 1, 340.1 + a, -99 , 0 );
setMoveKey( spep_2 + 876 + OFFSET_X , 1, 347.6 + a, -98.8 , 0 );
setMoveKey( spep_2 + 877 + OFFSET_X , 1, 347.6 + a, -98.8 , 0 );
setMoveKey( spep_2 + 878 + OFFSET_X , 1, 341.5 + a, -100.8 , 0 );
setMoveKey( spep_2 + 879 + OFFSET_X , 1, 341.5 + a, -100.8 , 0 );
setMoveKey( spep_2 + 880 + OFFSET_X , 1, 351 + a, -107.4 , 0 );
setMoveKey( spep_2 + 881 + OFFSET_X , 1, 351 + a, -107.4 , 0 );
setMoveKey( spep_2 + 882 + OFFSET_X , 1, 342.5 + a, -98.2 , 0 );
setMoveKey( spep_2 + 883 + OFFSET_X , 1, 342.5 + a, -98.2 , 0 );
setMoveKey( spep_2 + 884 + OFFSET_X , 1, 351.9 + a, -107 , 0 );
setMoveKey( spep_2 + 885 + OFFSET_X , 1, 351.9 + a, -107 , 0 );
setMoveKey( spep_2 + 886 + OFFSET_X , 1, 343.2 + a, -97.9 , 0 );
setMoveKey( spep_2 + 887 + OFFSET_X , 1, 343.2 + a, -97.9 , 0 );
setMoveKey( spep_2 + 888 + OFFSET_X , 1, 352.4 + a, -95.5 , 0 );
setMoveKey( spep_2 + 889 + OFFSET_X , 1, 352.4 + a, -95.5 , 0 );
setMoveKey( spep_2 + 890 + OFFSET_X , 1, 343.6 + a, -106.6 , 0 );
setMoveKey( spep_2 + 891 + OFFSET_X , 1, 343.6 + a, -106.6 , 0 );
setMoveKey( spep_2 + 892 + OFFSET_X , 1, 346 + a, -99.8 , 0 );
setMoveKey( spep_2 + 893 + OFFSET_X , 1, 346 + a, -99.8 , 0 );
setMoveKey( spep_2 + 894 + OFFSET_X , 1, 352.8 + a, -102 , 0 );
setMoveKey( spep_2 + 895 + OFFSET_X , 1, 352.8 + a, -102 , 0 );
setMoveKey( spep_2 + 896 + OFFSET_X , 1, 346 + a, -97.4 , 0 );
setMoveKey( spep_2 + 897 + OFFSET_X , 1, 346 + a, -97.4 , 0 );
setMoveKey( spep_2 + 898 + OFFSET_X , 1, 348.2 + a, -104.1 , 0 );
setMoveKey( spep_2 + 899 + OFFSET_X , 1, 348.2 + a, -104.1 , 0 );
setMoveKey( spep_2 + 900 + OFFSET_X , 1, 348.1 + a, -101.7 , 0 );
setMoveKey( spep_2 + 901 + OFFSET_X , 1, 348.1 + a, -101.7 , 0 );
setMoveKey( spep_2 + 902 + OFFSET_X , 1, 345.7 + a, -99.4 , 0 );
setMoveKey( spep_2 + 903 + OFFSET_X , 1, 345.7 + a, -99.4 , 0 );
setMoveKey( spep_2 + 904 + OFFSET_X , 1, 350 + a, -106.1 , 0 );
setMoveKey( spep_2 + 905 + OFFSET_X , 1, 350 + a, -106.1 , 0 );
setMoveKey( spep_2 + 906 + OFFSET_X , 1, 349.8 + a, -97.1 , 0 );
setMoveKey( spep_2 + 907 + OFFSET_X , 1, 349.8 + a, -97.1 , 0 );
setMoveKey( spep_2 + 908 + OFFSET_X , 1, 342.7 + a, -99.3 , 0 );
setMoveKey( spep_2 + 909 + OFFSET_X , 1, 342.7 + a, -99.3 , 0 );
setMoveKey( spep_2 + 910 + OFFSET_X , 1, 344.7 + a, -106.1 , 0 );
setMoveKey( spep_2 + 911 + OFFSET_X , 1, 344.7 + a, -106.1 , 0 );
setMoveKey( spep_2 + 912 + OFFSET_X , 1, 346.2 + a, -97.1 , 0 );
setMoveKey( spep_2 + 913 + OFFSET_X , 1, 346.2 + a, -97.1 , 0 );
setMoveKey( spep_2 + 914 + OFFSET_X , 1, -34.1, -156.4 , 0 );
setMoveKey( spep_2 + 915 + OFFSET_X , 1, -34.1, -156.4 , 0 );
setMoveKey( spep_2 + 916 + OFFSET_X , 1, -31.5, -154 , 0 );
setMoveKey( spep_2 + 917 + OFFSET_X , 1, -31.5, -154 , 0 );
setMoveKey( spep_2 + 918 + OFFSET_X , 1, -24.5, -160.6 , 0 );
setMoveKey( spep_2 + 919 + OFFSET_X , 1, -24.5, -160.6 , 0 );
setMoveKey( spep_2 + 920 + OFFSET_X , 1, -24.2, -153.7 , 0 );
setMoveKey( spep_2 + 921 + OFFSET_X , 1, -24.2, -153.7 , 0 );
setMoveKey( spep_2 + 922 + OFFSET_X , 1, -32.9, -153.6 , 0 );
setMoveKey( spep_2 + 923 + OFFSET_X , 1, -32.9, -153.6 , 0 );
setMoveKey( spep_2 + 924 + OFFSET_X , 1, -25.9, -160.2 , 0 );
setMoveKey( spep_2 + 925 + OFFSET_X , 1, -25.9, -160.2 , 0 );
setMoveKey( spep_2 + 926 + OFFSET_X , 1, -23.4, -151.1 , 0 );
setMoveKey( spep_2 + 927 + OFFSET_X , 1, -23.4, -151.1 , 0 );
setMoveKey( spep_2 + 928 + OFFSET_X , 1, -32.2, -153.2 , 0 );
setMoveKey( spep_2 + 929 + OFFSET_X , 1, -32.2, -153.2 , 0 );
setMoveKey( spep_2 + 930 + OFFSET_X , 1, -25.2, -159.8 , 0 );
setMoveKey( spep_2 + 931 + OFFSET_X , 1, -25.2, -159.8 , 0 );
setMoveKey( spep_2 + 932 + OFFSET_X , 1, -31.8, -153 , 0 );
setMoveKey( spep_2 + 933 + OFFSET_X , 1, -31.8, -153 , 0 );
setMoveKey( spep_2 + 934 + OFFSET_X , 1, -22.6, -159.6 , 0 );
setMoveKey( spep_2 + 935 + OFFSET_X , 1, -22.6, -159.6 , 0 );
setMoveKey( spep_2 + 936 + OFFSET_X , 1, -24.6, -150.5 , 0 );
setMoveKey( spep_2 + 937 + OFFSET_X , 1, -24.6, -150.5 , 0 );
setMoveKey( spep_2 + 938 + OFFSET_X , 1, -31.2, -152.7 , 0 );
setMoveKey( spep_2 + 939 + OFFSET_X , 1, -31.2, -152.7 , 0 );
setMoveKey( spep_2 + 940 + OFFSET_X , 1, -22, -159.3 , 0 );
setMoveKey( spep_2 + 941 + OFFSET_X , 1, -22, -159.3 , 0 );
setMoveKey( spep_2 + 942 + OFFSET_X , 1, -28.6, -150.2 , 0 );
setMoveKey( spep_2 + 943 + OFFSET_X , 1, -28.6, -150.2 , 0 );
setMoveKey( spep_2 + 944 + OFFSET_X , 1, -26.2, -159.2 , 0 );
setMoveKey( spep_2 + 945 + OFFSET_X , 1, -26.2, -159.2 , 0 );
setMoveKey( spep_2 + 946 + OFFSET_X , 1, -30.6, -150.1 , 0 );
setMoveKey( spep_2 + 947 + OFFSET_X , 1, -30.6, -150.1 , 0 );
setMoveKey( spep_2 + 948 + OFFSET_X , 1, -23.7, -159 , 0 );
setMoveKey( spep_2 + 949 + OFFSET_X , 1, -23.7, -159 , 0 );
setMoveKey( spep_2 + 950 + OFFSET_X , 1, -21.4, -150 , 0 );
setMoveKey( spep_2 + 951 + OFFSET_X , 1, -21.4, -150 , 0 );
setMoveKey( spep_2 + 952 + OFFSET_X , 1, -30.3, -158.9 , 0 );
setMoveKey( spep_2 + 953 + OFFSET_X , 1, -30.3, -158.9 , 0 );
setMoveKey( spep_2 + 954 + OFFSET_X , 1, -27.9, -149.9 , 0 );
setMoveKey( spep_2 + 955 + OFFSET_X , 1, -27.9, -149.9 , 0 );
setMoveKey( spep_2 + 956 + OFFSET_X , 1, -21.1, -158.8 , 0 );
setMoveKey( spep_2 + 957 + OFFSET_X , 1, -21.1, -158.8 , 0 );
setMoveKey( spep_2 + 958 + OFFSET_X , 1, -21.1, -152.1 , 0 );
setMoveKey( spep_2 + 959 + OFFSET_X , 1, -21.1, -152.1 , 0 );
setMoveKey( spep_2 + 960 + OFFSET_X , 1, -30, -152 , 0 );
setMoveKey( spep_2 + 961 + OFFSET_X , 1, -30, -152 , 0 );
setMoveKey( spep_2 + 962 + OFFSET_X , 1, -21, -158.8 , 0 );
setMoveKey( spep_2 + 963 + OFFSET_X , 1, -21, -158.8 , 0 );
setMoveKey( spep_2 + 964 + OFFSET_X , 1, -23.2, -149.7 , 0 );
setMoveKey( spep_2 + 965 + OFFSET_X , 1, -23.2, -149.7 , 0 );
setMoveKey( spep_2 + 966 + OFFSET_X , 1, -29.9, -149.7 , 0 );
setMoveKey( spep_2 + 967 + OFFSET_X , 1, -29.9, -149.7 , 0 );
setMoveKey( spep_2 + 968 + OFFSET_X , 1, -20.9, -158.7 , 0 );
setMoveKey( spep_2 + 970 + OFFSET_X , 1, -20.9, -158.7 , 0 );

setScaleKey( spep_2 + 844 + OFFSET_X , 1, 3.1, 3.1 );
setScaleKey( spep_2 + 913 + OFFSET_X , 1, 3.1, 3.1 );
setScaleKey( spep_2 + 914 + OFFSET_X , 1, 0.7, 0.7 );
setScaleKey( spep_2 + 917 + OFFSET_X , 1, 0.7, 0.7 );
setScaleKey( spep_2 + 918 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_2 + 921 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_2 + 922 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_2 + 927 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_2 + 928 + OFFSET_X , 1, 0.73, 0.73 );
setScaleKey( spep_2 + 935 + OFFSET_X , 1, 0.73, 0.73 );
setScaleKey( spep_2 + 936 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_2 + 945 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_2 + 946 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_2 + 963 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_2 + 964 + OFFSET_X , 1, 0.76, 0.76 );
setScaleKey( spep_2 + 970 + OFFSET_X , 1, 0.76, 0.76 );

setRotateKey( spep_2 + 844 + OFFSET_X , 1, -45.9 );
setRotateKey( spep_2 + 845 + OFFSET_X , 1, -45.9 );
setRotateKey( spep_2 + 846 + OFFSET_X , 1, -45.5 );
setRotateKey( spep_2 + 847 + OFFSET_X , 1, -45.5 );
setRotateKey( spep_2 + 848 + OFFSET_X , 1, -45.1 );
setRotateKey( spep_2 + 849 + OFFSET_X , 1, -45.1 );
setRotateKey( spep_2 + 850 + OFFSET_X , 1, -44.7 );
setRotateKey( spep_2 + 851 + OFFSET_X , 1, -44.7 );
setRotateKey( spep_2 + 852 + OFFSET_X , 1, -44.2 );
setRotateKey( spep_2 + 853 + OFFSET_X , 1, -44.2 );
setRotateKey( spep_2 + 854 + OFFSET_X , 1, -43.8 );
setRotateKey( spep_2 + 855 + OFFSET_X , 1, -43.8 );
setRotateKey( spep_2 + 856 + OFFSET_X , 1, -43.4 );
setRotateKey( spep_2 + 857 + OFFSET_X , 1, -43.4 );
setRotateKey( spep_2 + 858 + OFFSET_X , 1, -43 );
setRotateKey( spep_2 + 859 + OFFSET_X , 1, -43 );
setRotateKey( spep_2 + 860 + OFFSET_X , 1, -26.5 );
setRotateKey( spep_2 + 861 + OFFSET_X , 1, -26.5 );
setRotateKey( spep_2 + 862 + OFFSET_X , 1, -26.1 );
setRotateKey( spep_2 + 863 + OFFSET_X , 1, -26.1 );
setRotateKey( spep_2 + 864 + OFFSET_X , 1, -25.6 );
setRotateKey( spep_2 + 865 + OFFSET_X , 1, -25.6 );
setRotateKey( spep_2 + 866 + OFFSET_X , 1, -25.2 );
setRotateKey( spep_2 + 867 + OFFSET_X , 1, -25.2 );
setRotateKey( spep_2 + 868 + OFFSET_X , 1, -24.8 );
setRotateKey( spep_2 + 869 + OFFSET_X , 1, -24.8 );
setRotateKey( spep_2 + 870 + OFFSET_X , 1, -24.4 );
setRotateKey( spep_2 + 871 + OFFSET_X , 1, -24.4 );
setRotateKey( spep_2 + 872 + OFFSET_X , 1, -24 );
setRotateKey( spep_2 + 873 + OFFSET_X , 1, -24 );
setRotateKey( spep_2 + 874 + OFFSET_X , 1, -23.6 );
setRotateKey( spep_2 + 875 + OFFSET_X , 1, -23.6 );
setRotateKey( spep_2 + 876 + OFFSET_X , 1, -23.2 );
setRotateKey( spep_2 + 877 + OFFSET_X , 1, -23.2 );
setRotateKey( spep_2 + 878 + OFFSET_X , 1, -22.9 );
setRotateKey( spep_2 + 879 + OFFSET_X , 1, -22.9 );
setRotateKey( spep_2 + 880 + OFFSET_X , 1, -22.6 );
setRotateKey( spep_2 + 881 + OFFSET_X , 1, -22.6 );
setRotateKey( spep_2 + 882 + OFFSET_X , 1, -22.3 );
setRotateKey( spep_2 + 883 + OFFSET_X , 1, -22.3 );
setRotateKey( spep_2 + 884 + OFFSET_X , 1, -22.1 );
setRotateKey( spep_2 + 885 + OFFSET_X , 1, -22.1 );
setRotateKey( spep_2 + 886 + OFFSET_X , 1, -21.9 );
setRotateKey( spep_2 + 887 + OFFSET_X , 1, -21.9 );
setRotateKey( spep_2 + 888 + OFFSET_X , 1, -21.7 );
setRotateKey( spep_2 + 889 + OFFSET_X , 1, -21.7 );
setRotateKey( spep_2 + 890 + OFFSET_X , 1, -21.5 );
setRotateKey( spep_2 + 891 + OFFSET_X , 1, -21.5 );
setRotateKey( spep_2 + 892 + OFFSET_X , 1, -21.3 );
setRotateKey( spep_2 + 893 + OFFSET_X , 1, -21.3 );
setRotateKey( spep_2 + 894 + OFFSET_X , 1, -21.2 );
setRotateKey( spep_2 + 895 + OFFSET_X , 1, -21.2 );
setRotateKey( spep_2 + 896 + OFFSET_X , 1, -21.1 );
setRotateKey( spep_2 + 897 + OFFSET_X , 1, -21.1 );
setRotateKey( spep_2 + 898 + OFFSET_X , 1, -20.9 );
setRotateKey( spep_2 + 899 + OFFSET_X , 1, -20.9 );
setRotateKey( spep_2 + 900 + OFFSET_X , 1, -20.8 );
setRotateKey( spep_2 + 903 + OFFSET_X , 1, -20.8 );
setRotateKey( spep_2 + 904 + OFFSET_X , 1, -20.7 );
setRotateKey( spep_2 + 905 + OFFSET_X , 1, -20.7 );
setRotateKey( spep_2 + 906 + OFFSET_X , 1, -20.6 );
setRotateKey( spep_2 + 909 + OFFSET_X , 1, -20.6 );
setRotateKey( spep_2 + 910 + OFFSET_X , 1, -20.5 );
setRotateKey( spep_2 + 911 + OFFSET_X , 1, -20.5 );
setRotateKey( spep_2 + 912 + OFFSET_X , 1, -20.6 );
setRotateKey( spep_2 + 913 + OFFSET_X , 1, -20.6 );
setRotateKey( spep_2 + 914 + OFFSET_X , 1, -5 );
setRotateKey( spep_2 + 915 + OFFSET_X , 1, -5 );
setRotateKey( spep_2 + 916 + OFFSET_X , 1, -4.6 );
setRotateKey( spep_2 + 917 + OFFSET_X , 1, -4.6 );
setRotateKey( spep_2 + 918 + OFFSET_X , 1, -4.2 );
setRotateKey( spep_2 + 919 + OFFSET_X , 1, -4.2 );
setRotateKey( spep_2 + 920 + OFFSET_X , 1, -3.8 );
setRotateKey( spep_2 + 921 + OFFSET_X , 1, -3.8 );
setRotateKey( spep_2 + 922 + OFFSET_X , 1, -3.5 );
setRotateKey( spep_2 + 923 + OFFSET_X , 1, -3.5 );
setRotateKey( spep_2 + 924 + OFFSET_X , 1, -3.2 );
setRotateKey( spep_2 + 925 + OFFSET_X , 1, -3.2 );
setRotateKey( spep_2 + 926 + OFFSET_X , 1, -2.8 );
setRotateKey( spep_2 + 927 + OFFSET_X , 1, -2.8 );
setRotateKey( spep_2 + 928 + OFFSET_X , 1, -2.5 );
setRotateKey( spep_2 + 929 + OFFSET_X , 1, -2.5 );
setRotateKey( spep_2 + 930 + OFFSET_X , 1, -2.2 );
setRotateKey( spep_2 + 931 + OFFSET_X , 1, -2.2 );
setRotateKey( spep_2 + 932 + OFFSET_X , 1, -1.9 );
setRotateKey( spep_2 + 933 + OFFSET_X , 1, -1.9 );
setRotateKey( spep_2 + 934 + OFFSET_X , 1, -1.7 );
setRotateKey( spep_2 + 935 + OFFSET_X , 1, -1.7 );
setRotateKey( spep_2 + 936 + OFFSET_X , 1, -1.4 );
setRotateKey( spep_2 + 937 + OFFSET_X , 1, -1.4 );
setRotateKey( spep_2 + 938 + OFFSET_X , 1, -1.2 );
setRotateKey( spep_2 + 939 + OFFSET_X , 1, -1.2 );
setRotateKey( spep_2 + 940 + OFFSET_X , 1, -1 );
setRotateKey( spep_2 + 941 + OFFSET_X , 1, -1 );
setRotateKey( spep_2 + 942 + OFFSET_X , 1, -0.8 );
setRotateKey( spep_2 + 943 + OFFSET_X , 1, -0.8 );
setRotateKey( spep_2 + 944 + OFFSET_X , 1, -0.6 );
setRotateKey( spep_2 + 945 + OFFSET_X , 1, -0.6 );
setRotateKey( spep_2 + 946 + OFFSET_X , 1, -0.4 );
setRotateKey( spep_2 + 947 + OFFSET_X , 1, -0.4 );
setRotateKey( spep_2 + 948 + OFFSET_X , 1, -0.3 );
setRotateKey( spep_2 + 949 + OFFSET_X , 1, -0.3 );
setRotateKey( spep_2 + 950 + OFFSET_X , 1, -0.1 );
setRotateKey( spep_2 + 951 + OFFSET_X , 1, -0.1 );
setRotateKey( spep_2 + 952 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 953 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 954 + OFFSET_X , 1, 0.1 );
setRotateKey( spep_2 + 955 + OFFSET_X , 1, 0.1 );
setRotateKey( spep_2 + 956 + OFFSET_X , 1, 0.2 );
setRotateKey( spep_2 + 957 + OFFSET_X , 1, 0.2 );
setRotateKey( spep_2 + 958 + OFFSET_X , 1, 0.3 );
setRotateKey( spep_2 + 959 + OFFSET_X , 1, 0.3 );
setRotateKey( spep_2 + 960 + OFFSET_X , 1, 0.4 );
setRotateKey( spep_2 + 963 + OFFSET_X , 1, 0.4 );
setRotateKey( spep_2 + 964 + OFFSET_X , 1, 0.5 );
setRotateKey( spep_2 + 970 + OFFSET_X , 1, 0.5 );

setBlendColor( spep_2 + 844 + OFFSET_X , 1, 3, 0.67, 0.62, 1.0, 1.0 );
setBlendColor( spep_2 + 969 + OFFSET_X , 1, 3, 0.67, 0.62, 1.0, 1.0 );
setBlendColor( spep_2 + 970 + OFFSET_X , 1, 3, 0.0, 0.0, 0.0, 0.0 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 16; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--悟空向かってくる
SE005 = playSeVer2( spep_1 + 82, 1117, "", spep_1 + 82 + 62, 0, 26, -1);

--キック
SE006 = playSeVer2( spep_2 + 20, 1004, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 32, 1187, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 32, 1359, "", 0, 0, 0, -1);

--悟空翻る
SE009 = playSeVer2( spep_2 + 86, 44, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 86, 1117, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 102, 1019, "",spep_2 + 172, 0, 22, -1);

--画面遷移
SE012 = playSeVer2( spep_2 + 152, 1232, "", 0, 0, 0, -1);

--トランクスと悟飯向かってくる
SE013 = playSeVer2( spep_2 + 174, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 174, 1277, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 174, 1117, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 208, 1277, "", 0, 0, 0, -1);
setPitch( spep_2 + 208, SE016, 200 );
setTimeStretch( SE016, 1.13, 30, 4 );
SE017 = playSeVer2( spep_2 + 216, 63, "",spep_2 + 304, 0, 22, -1);

--振りかぶる
SE018 = playSeVer2( spep_2 + 274, 1116, "",spep_2 + 334, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 274, SE018, 80 );
SE019 = playSeVer2( spep_2 + 274, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 300, 1003, "", 0, 0, 0, -1);

--二人打撃ヒット
SE021 = playSeVer2( spep_2 + 314, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE021, 80 );
SE022 = playSeVer2( spep_2 + 314, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE022, 80 );
SE023 = playSeVer2( spep_2 + 316, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 316, SE023, 80 );

--悟飯振りかぶる
SE024 = playSeVer2( spep_2 + 382, 1116, "",spep_2 + 424, 0, 14, -1);
SE025 = playSeVer2( spep_2 + 400, 1004, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 416, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 416, SE026, 141 );

--悟飯蹴り飛ばす
SE027 = playSeVer2( spep_2 + 426, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 426, SE027, 80 );
SE028 = playSeVer2( spep_2 + 426, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 426, SE028, 80 );
SE029 = playSeVer2( spep_2 + 430, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 430, SE029, 80 );

--敵飛んでいく
SE030 = playSeVer2( spep_2 + 462, 1121, "",spep_2 + 538, 0, 30, -1);
setPitch( spep_2 + 462, SE030, 200 );
setTimeStretch( SE030, 1.13, 30, 4 );

--地面激突
SE031 = playSeVer2( spep_2 + 498, 1159, "",spep_2 + 752, 0, 204, -1);

--両手出す
SE032 = playSeVer2( spep_2 + 552, 1189, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 560, 1006, "", 0, 0, 0, -1);

--構える
SE034 = playSeVer2( spep_2 + 596, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 596, SE034, 56 );

--かめはめ波溜め
SE035 = playSeVer2( spep_2 + 636, 1328, "", 0, 4, 0, -1);
setStartTimeMs( SE035,  133 );
SE036 = playSeVer2( spep_2 + 640, 1209, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 640, 1210, "",spep_2 + 872, 0, 36, -1);

--画面遷移
SE039 = playSeVer2( spep_2 + 780, 1072, "", 0, 10, 0, -1);
setStartTimeMs( SE039,  300 );

--かめはめ波発射
SE040 = playSeVer2( spep_2 + 826, 1133, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 826, 1146, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 826, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 826, SE042, 62 );
SE043 = playSeVer2( spep_2 + 852, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 852, SE043, 76 );

--膨れ上がっていく
SE044 = playSeVer2( spep_2 + 880, 1215, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 952, 1159, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 952, 1044, "", 0, 38, 0, -1);
setSeVolumeByWorkId( spep_2 + 952, SE046, 204 );
SE047 = playSeVer2( spep_2 + 974, 1168, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_2 + 974, SE047, 145 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 912); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  1032f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

MAX_FRAME_0=68;

-------------------------------------------------
-- 開幕〜カードカットインまで
-------------------------------------------------

setupMovie(0, SP_01, 0, 1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 70 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 0, 1, 17 );

setMoveKey( spep_0 + 0, 1, -133.3, 46 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X , 1, -133.4, 45.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X , 1, -133.4, 45.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X , 1, -133.4, 45 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X , 1, -133.4, 45 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X , 1, -133.4, 44.5 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X , 1, -133.4, 44.5 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X , 1, -133.4, 44 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X , 1, -133.4, 44 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X , 1, -133.4, 43.4 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X , 1, -133.4, 43.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X , 1, -133.4, 42.9 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X , 1, -133.4, 42.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X , 1, -133.4, 42.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X , 1, -133.4, 42.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X , 1, -133.4, 42 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X , 1, -133.4, 42 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X , 1, -133.4, 41.5 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X , 1, -133.4, 41.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X , 1, -133.4, 41 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X , 1, -133.4, 41 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X , 1, -133.4, 40.6 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X , 1, -133.4, 40.6 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X , 1, -133.4, 40.1 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X , 1, -133.4, 40.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X , 1, -133.4, 39.7 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X , 1, -133.4, 39.7 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X , 1, -133.4, 39.3 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X , 1, -133.4, 39.3 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X , 1, -133.4, 39 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X , 1, -133.4, 39 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X , 1, -133.4, 38.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X , 1, -133.4, 38.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X , 1, -133.4, 38.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X , 1, -133.4, 38.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X , 1, -133.4, 37.9 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X , 1, -133.4, 37.9 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X , 1, -133.4, 37.6 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X , 1, -133.4, 37.6 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X , 1, -133.4, 37.4 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X , 1, -133.4, 37.4 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X , 1, -133.4, 37.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X , 1, -133.4, 37.1 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X , 1, -133.4, 36.8 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X , 1, -133.4, 36.8 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X , 1, -133.4, 36.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X , 1, -133.4, 36.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X , 1, -133.4, 36.4 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X , 1, -133.4, 36.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X , 1, -133.4, 36.2 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X , 1, -133.4, 36.2 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X , 1, -133.4, 36 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X , 1, -133.4, 36 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X , 1, -133.4, 35.8 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X , 1, -133.4, 35.8 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X , 1, -133.4, 35.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X , 1, -133.4, 35.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X , 1, -133.4, 35.5 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X , 1, -133.4, 35.5 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X , 1, -133.4, 35.3 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X , 1, -133.4, 35.3 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X , 1, -133.4, 35.2 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X , 1, -133.4, 35.2 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X , 1, -133.4, 35.1 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X , 1, -133.4, 35.1 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X , 1, -133.4, 34.9 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X , 1, -133.4, 34.9 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X , 1, -133.4, 34.8 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X , 1, -133.4, 34.8 , 0 );

setScaleKey( spep_0 + 0, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 2 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 3 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 4 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 5 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 6 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 7 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 70 + OFFSET_X , 1, 0.47, 0.47 );

setRotateKey( spep_0 + 0, 1, -1 );
setRotateKey( spep_0 + 2 + OFFSET_X , 1, -1 );
setRotateKey( spep_0 + 3 + OFFSET_X , 1, -1 );
setRotateKey( spep_0 + 4 + OFFSET_X , 1, -1 );
setRotateKey( spep_0 + 5 + OFFSET_X , 1, -1 );
setRotateKey( spep_0 + 6 + OFFSET_X , 1, -1 );
setRotateKey( spep_0 + 7 + OFFSET_X , 1, -1 );
setRotateKey( spep_0 + 70 + OFFSET_X , 1, -1 );

-- ** 音 ** --
--飛び上がる
SE001 = playSeVer2( spep_0 + 0, 63, "", spep_0 + 0 + 104, 0, 66, 0.7);
SE002 = playSeVer2( spep_0 + 2, 44, "", 0, 0, 0, 0.7);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --68f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--悟空向かってくる
SE004 = playSeVer2( spep_1 + 82, 63, "", spep_1 + 82 + 62, 0, 26, -1);

-------------------------------------------------
-- 悟空蹴り～最後まで
-------------------------------------------------
MAX_FRAME_2 = 1032;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 悟空蹴り～最後まで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 720;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -40, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -40, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -40, 515.5 , 0 );
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
setDisp( spep_2 + 48 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 98 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 48 + OFFSET_X , 1, 107 );

setMoveKey( spep_2 + 48 + OFFSET_X , 1, -403.7, 63.4 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X , 1, -403.7, 63.4 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X , 1, 363, 47.1 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X , 1, 363, 47.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X , 1, -419.9, 58.4 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X , 1, -419.9, 58.4 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X , 1, 274, 55.2 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X , 1, 274, 55.2 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X , 1, -343.4, 68 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X , 1, -343.4, 68 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X , 1, -106.9, 56.8 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X , 1, -106.9, 56.8 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X , 1, -315.4, 61.7 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X , 1, -315.4, 61.7 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X , 1, -111, 60 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X , 1, -111, 60 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X , 1, -281.6, 56.7 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X , 1, -281.6, 56.7 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X , 1, -204, 63.3 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X , 1, -204, 63.3 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X , 1, -275.5, 61.7 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X , 1, -275.5, 61.7 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X , 1, -239.8, 60 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X , 1, -239.8, 60 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X , 1, -271.7, 55.1 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X , 1, -271.7, 55.1 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X , 1, -246, 61.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X , 1, -246, 61.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X , 1, -266.8, 58.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X , 1, -266.8, 58.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X , 1, -265.4, 60.1 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X , 1, -265.4, 60.1 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X , 1, -262.5, 60.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X , 1, -262.5, 60.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X , 1, -263.1, 56.8 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X , 1, -263.1, 56.8 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X , 1, -262.1, 60.1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X , 1, -262.1, 60.1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X , 1, -259.6, 60.1 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X , 1, -259.6, 60.1 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X , 1, -263.9, 58.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X , 1, -263.9, 58.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X , 1, -258.5, 60.1 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X , 1, -258.5, 60.1 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X , 1, -259.7, 58.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X , 1, -259.7, 58.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X , 1, -259.5, 58.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X , 1, -259.5, 58.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X , 1, -259.4, 58.4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X , 1, -259.4, 58.4 , 0 );

setScaleKey( spep_2 + 48 + OFFSET_X , 1, 5.66, 5.66 );
setScaleKey( spep_2 + 98 + OFFSET_X , 1, 5.66, 5.66 );

setRotateKey( spep_2 + 48 + OFFSET_X , 1, -53.2 );
setRotateKey( spep_2 + 98 + OFFSET_X , 1, -53.2 );


--敵の動き2
setDisp( spep_2 + 218 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 278 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 218 + OFFSET_X , 1, 106 );

setMoveKey( spep_2 + 218 + OFFSET_X , 1, -4.3, 139 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X , 1, -4.3, 139 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X , 1, -4.1, 140.7 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X , 1, -4.1, 140.7 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X , 1, -3.1, 146 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X , 1, -3.1, 146 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X , 1, -1.6, 154.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X , 1, -1.6, 154.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X , 1, 0.6, 166.7 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X , 1, 0.6, 166.7 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X , 1, 3.3, 182.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X , 1, 3.3, 182.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X , 1, 3.3, 182.3 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X , 1, 3.3, 182.3 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X , 1, 6.7, 201.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X , 1, 6.7, 201.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X , 1, 10.7, 223.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X , 1, 10.7, 223.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X , 1, 15.2, 249.7 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X , 1, 15.2, 249.7 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X , 1, 18, 263.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X , 1, 18, 263.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X , 1, 18, 264 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X , 1, 18, 264 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X , 1, 18, 264.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X , 1, 18, 264.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X , 1, 17.9, 264.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X , 1, 17.9, 264.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X , 1, 18, 264.2 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X , 1, 18, 264.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X , 1, 18, 264.3 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X , 1, 18, 264.3 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X , 1, 18, 264.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X , 1, 18, 264.4 , 0 );

setScaleKey( spep_2 + 218 + OFFSET_X , 1, 3.43, 3.43 );
setScaleKey( spep_2 + 221 + OFFSET_X , 1, 3.43, 3.43 );
setScaleKey( spep_2 + 222 + OFFSET_X , 1, 3.4, 3.4 );
setScaleKey( spep_2 + 225 + OFFSET_X , 1, 3.4, 3.4 );
setScaleKey( spep_2 + 226 + OFFSET_X , 1, 3.3, 3.3 );
setScaleKey( spep_2 + 229 + OFFSET_X , 1, 3.3, 3.3 );
setScaleKey( spep_2 + 230 + OFFSET_X , 1, 3.13, 3.13 );
setScaleKey( spep_2 + 233 + OFFSET_X , 1, 3.13, 3.13 );
setScaleKey( spep_2 + 234 + OFFSET_X , 1, 2.9, 2.9 );
setScaleKey( spep_2 + 237 + OFFSET_X , 1, 2.9, 2.9 );
setScaleKey( spep_2 + 238 + OFFSET_X , 1, 2.6, 2.6 );
setScaleKey( spep_2 + 241 + OFFSET_X , 1, 2.6, 2.6 );
setScaleKey( spep_2 + 242 + OFFSET_X , 1, 2.23, 2.23 );
setScaleKey( spep_2 + 245 + OFFSET_X , 1, 2.23, 2.23 );
setScaleKey( spep_2 + 246 + OFFSET_X , 1, 1.8, 1.8 );
setScaleKey( spep_2 + 249 + OFFSET_X , 1, 1.8, 1.8 );
setScaleKey( spep_2 + 250 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 253 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 254 + OFFSET_X , 1, 1.02, 1.02 );
setScaleKey( spep_2 + 257 + OFFSET_X , 1, 1.02, 1.02 );
setScaleKey( spep_2 + 258 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 261 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 262 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_2 + 265 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_2 + 266 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_2 + 269 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_2 + 270 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_2 + 273 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_2 + 274 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 278 + OFFSET_X , 1, 0.94, 0.94 );

setRotateKey( spep_2 + 218 + OFFSET_X , 1, -83.2 );
setRotateKey( spep_2 + 278 + OFFSET_X , 1, -83.2 );


--敵の動き3
setDisp( spep_2 + 326 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 394 + OFFSET_X , 1, 0 );

--changeAnime( spep_2 + 326 + OFFSET_X , 1, 6 );

setMoveKey( spep_2 + 326 + OFFSET_X , 1, -6.5, 118.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X , 1, -6.5, 118.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X , 1, -4.7, 91.5 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X , 1, -4.7, 91.5 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X , 1, -5.9, 109.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X , 1, -5.9, 109.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X , 1, -4.8, 91.5 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X , 1, -4.8, 91.5 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X , 1, -5.4, 100.4 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X , 1, -5.4, 100.4 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X , 1, -4.7, 91.3 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X , 1, -4.7, 91.3 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X , 1, -5, 95.7 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X , 1, -5, 95.7 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X , 1, -4.7, 91.2 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X , 1, -4.7, 91.2 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X , 1, -4.9, 93.7 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X , 1, -4.9, 93.7 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X , 1, -4.7, 91 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X , 1, -4.7, 91 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X , 1, -4.7, 90.9 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X , 1, -4.7, 90.9 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X , 1, -4.7, 90.8 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X , 1, -4.7, 90.8 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X , 1, -4.6, 90.8 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X , 1, -4.6, 90.8 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X , 1, -4.6, 90.7 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X , 1, -4.6, 90.7 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X , 1, -4.6, 90.6 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X , 1, -4.6, 90.6 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X , 1, -4.6, 90.5 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X , 1, -4.6, 90.5 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X , 1, -4.6, 90.4 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X , 1, -4.6, 90.4 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X , 1, -4.5, 90.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X , 1, -4.5, 90.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X , 1, -4.5, 90.3 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X , 1, -4.5, 90.3 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X , 1, -4.5, 90.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X , 1, -4.5, 90.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X , 1, -4.5, 90.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X , 1, -4.5, 90.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X , 1, -4.4, 90.1 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X , 1, -4.4, 90.1 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X , 1, -4.4, 90 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X , 1, -4.4, 90 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X , 1, -4.4, 89.9 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X , 1, -4.4, 89.9 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X , 1, -4.4, 89.8 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X , 1, -4.4, 89.8 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X , 1, -4.4, 89.7 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X , 1, -4.4, 89.7 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X , 1, -4.4, 89.6 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X , 1, -4.4, 89.6 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X , 1, -4.4, 89.5 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X , 1, -4.4, 89.5 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X , 1, -4.3, 89.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X , 1, -4.3, 89.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X , 1, -4.3, 89.3 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X , 1, -4.3, 89.3 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X , 1, -4.3, 89.2 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X , 1, -4.3, 89.2 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X , 1, -5.1, 89.1 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X , 1, -5.1, 89.1 , 0 );

setScaleKey( spep_2 + 326 + OFFSET_X , 1, 2.75, 2.75 );
setScaleKey( spep_2 + 327 + OFFSET_X , 1, 2.75, 2.75 );
setScaleKey( spep_2 + 328 + OFFSET_X , 1, 2.11, 2.11 );
setScaleKey( spep_2 + 329 + OFFSET_X , 1, 2.11, 2.11 );
setScaleKey( spep_2 + 330 + OFFSET_X , 1, 2.53, 2.53 );
setScaleKey( spep_2 + 331 + OFFSET_X , 1, 2.53, 2.53 );
setScaleKey( spep_2 + 332 + OFFSET_X , 1, 2.11, 2.11 );
setScaleKey( spep_2 + 333 + OFFSET_X , 1, 2.11, 2.11 );
setScaleKey( spep_2 + 334 + OFFSET_X , 1, 2.31, 2.31 );
setScaleKey( spep_2 + 335 + OFFSET_X , 1, 2.31, 2.31 );
setScaleKey( spep_2 + 336 + OFFSET_X , 1, 2.1, 2.1 );
setScaleKey( spep_2 + 337 + OFFSET_X , 1, 2.1, 2.1 );
setScaleKey( spep_2 + 338 + OFFSET_X , 1, 2.21, 2.21 );
setScaleKey( spep_2 + 339 + OFFSET_X , 1, 2.21, 2.21 );
setScaleKey( spep_2 + 340 + OFFSET_X , 1, 2.1, 2.1 );
setScaleKey( spep_2 + 341 + OFFSET_X , 1, 2.1, 2.1 );
setScaleKey( spep_2 + 342 + OFFSET_X , 1, 2.16, 2.16 );
setScaleKey( spep_2 + 343 + OFFSET_X , 1, 2.16, 2.16 );
setScaleKey( spep_2 + 344 + OFFSET_X , 1, 2.09, 2.09 );
setScaleKey( spep_2 + 353 + OFFSET_X , 1, 2.09, 2.09 );
setScaleKey( spep_2 + 354 + OFFSET_X , 1, 2.08, 2.08 );
setScaleKey( spep_2 + 363 + OFFSET_X , 1, 2.08, 2.08 );
setScaleKey( spep_2 + 364 + OFFSET_X , 1, 2.07, 2.07 );
setScaleKey( spep_2 + 373 + OFFSET_X , 1, 2.07, 2.07 );
setScaleKey( spep_2 + 374 + OFFSET_X , 1, 2.06, 2.06 );
setScaleKey( spep_2 + 381 + OFFSET_X , 1, 2.06, 2.06 );
setScaleKey( spep_2 + 382 + OFFSET_X , 1, 2.05, 2.05 );
setScaleKey( spep_2 + 391 + OFFSET_X , 1, 2.05, 2.05 );
setScaleKey( spep_2 + 392 + OFFSET_X , 1, 2.04, 2.04 );
setScaleKey( spep_2 + 394 + OFFSET_X , 1, 2.04, 2.04 );

setRotateKey( spep_2 + 326 + OFFSET_X , 1, -66 );
setRotateKey( spep_2 + 331 + OFFSET_X , 1, -66 );
setRotateKey( spep_2 + 332 + OFFSET_X , 1, -65.2 );
--setRotateKey( spep_2 + 391 + OFFSET_X , 1, -65.2 );
setRotateKey( spep_2 + 392 + OFFSET_X , 1, -59.8 );
setRotateKey( spep_2 + 394 + OFFSET_X , 1, -59.8 );


--敵の動き4
setDisp( spep_2 + 412 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 432 + OFFSET_X , 1, 0 );

--changeAnime( spep_2 + 412 + OFFSET_X , 1, 6 );

setMoveKey( spep_2 + 412 + OFFSET_X , 1, -99.5, -1939.2 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X , 1, -99.5, -1939.2 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X , 1, 154.3, -875.9 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X , 1, 154.3, -875.9 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X , 1, 154.4, -875.8 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X , 1, 154.4, -875.8 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X , 1, 118.2, -868.2 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X , 1, 118.2, -868.2 , 0 );

setScaleKey( spep_2 + 412 + OFFSET_X , 1, 16.14, 16.14 );
setScaleKey( spep_2 + 415 + OFFSET_X , 1, 16.14, 16.14 );
setScaleKey( spep_2 + 416 + OFFSET_X , 1, 9.4, 9.4 );
setScaleKey( spep_2 + 432 + OFFSET_X , 1, 9.4, 9.4 );

setRotateKey( spep_2 + 412 + OFFSET_X , 1, -73.5 );
setRotateKey( spep_2 + 415 + OFFSET_X , 1, -73.5 );
setRotateKey( spep_2 + 416 + OFFSET_X , 1, -76.7 );
setRotateKey( spep_2 + 425 + OFFSET_X , 1, -76.7 );
setRotateKey( spep_2 + 426 + OFFSET_X , 1, -75 );
setRotateKey( spep_2 + 432 + OFFSET_X , 1, -75 );

--敵の動き5
setDisp( spep_2 + 440 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 508 + OFFSET_X , 1, 0 );

--changeAnime( spep_2 + 440 + OFFSET_X , 1, 6 );
changeAnime( spep_2 + 472 + OFFSET_X , 1, 5 );

setMoveKey( spep_2 + 440 + OFFSET_X , 1, -217.5, -1247.9 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X , 1, -217.5, -1247.9 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X , 1, -224.1, -1251.1 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X , 1, -224.1, -1251.1 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X , 1, -599, -1468.1 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X , 1, -599, -1468.1 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X , 1, -217.9, -1239 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X , 1, -217.9, -1239 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X , 1, 29.1, -1113.5 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X , 1, 29.1, -1113.5 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X , 1, -231.5, -1247.5 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X , 1, -231.5, -1247.5 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X , 1, -262.8, -1276.6 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X , 1, -262.8, -1276.6 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X , 1, -241.5, -1253.2 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X , 1, -241.5, -1253.2 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X , 1, -268.3, -1278.3 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X , 1, -268.3, -1278.3 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X , 1, -249.6, -1258.2 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X , 1, -249.6, -1258.2 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X , 1, -271.9, -1279.1 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X , 1, -271.9, -1279.1 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X , 1, -255.9, -1262.1 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X , 1, -255.9, -1262.1 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X , 1, -273.7, -1279.1 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X , 1, -273.7, -1279.1 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X , 1, -260.5, -1265.2 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X , 1, -260.5, -1265.2 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X , 1, -271.9, -1276.4 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X , 1, -271.9, -1276.4 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X , 1, -268.5, -1272.8 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X , 1, -268.5, -1272.8 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X , 1, 681.1, 1143.1 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X , 1, 681.1, 1143.1 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X , 1, 430.4, 593.2 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X , 1, 430.4, 593.2 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X , 1, 268.7, 244.1 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X , 1, 268.7, 244.1 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X , 1, 164.7, 21.5 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X , 1, 164.7, 21.5 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X , 1, 96.8, -123 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X , 1, 96.8, -123 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X , 1, 54.9, -211.8 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X , 1, 54.9, -211.8 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X , 1, 23.9, -277.2 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X , 1, 23.9, -277.2 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X , 1, 1.1, -325.4 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X , 1, 1.1, -325.4 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X , 1, -15.5, -360.7 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X , 1, -15.5, -360.7 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X , 1, -18.1, -366.1 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X , 1, -18.1, -366.1 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X , 1, -20.3, -371.1 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X , 1, -20.3, -371.1 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X , 1, -22.4, -375.6 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X , 1, -22.4, -375.6 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X , 1, -24.3, -379.6 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X , 1, -24.3, -379.6 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X , 1, -26, -383.1 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X , 1, -26, -383.1 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X , 1, -27.5, -386.3 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X , 1, -27.5, -386.3 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X , 1, -28.8, -389.2 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X , 1, -28.8, -389.2 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X , 1, -30, -391.7 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X , 1, -30, -391.7 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X , 1, -31, -394.1 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X , 1, -31, -394.1 , 0 );

setScaleKey( spep_2 + 440 + OFFSET_X , 1, 19.68, 19.68 );
setScaleKey( spep_2 + 471 + OFFSET_X , 1, 19.68, 19.68 );
setScaleKey( spep_2 + 472 + OFFSET_X , 1, 8.05, 8.05 );
setScaleKey( spep_2 + 473 + OFFSET_X , 1, 8.05, 8.05 );
setScaleKey( spep_2 + 474 + OFFSET_X , 1, 5.38, 5.38 );
setScaleKey( spep_2 + 475 + OFFSET_X , 1, 5.38, 5.38 );
setScaleKey( spep_2 + 476 + OFFSET_X , 1, 3.67, 3.67 );
setScaleKey( spep_2 + 477 + OFFSET_X , 1, 3.67, 3.67 );
setScaleKey( spep_2 + 478 + OFFSET_X , 1, 2.57, 2.57 );
setScaleKey( spep_2 + 479 + OFFSET_X , 1, 2.57, 2.57 );
setScaleKey( spep_2 + 480 + OFFSET_X , 1, 1.86, 1.86 );
setScaleKey( spep_2 + 481 + OFFSET_X , 1, 1.86, 1.86 );
setScaleKey( spep_2 + 482 + OFFSET_X , 1, 1.43, 1.43 );
setScaleKey( spep_2 + 483 + OFFSET_X , 1, 1.43, 1.43 );
setScaleKey( spep_2 + 484 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_2 + 485 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_2 + 486 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_2 + 487 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_2 + 488 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_2 + 489 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_2 + 490 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_2 + 491 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_2 + 492 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_2 + 493 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_2 + 494 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_2 + 495 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_2 + 496 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_2 + 497 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_2 + 498 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_2 + 499 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_2 + 500 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_2 + 501 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_2 + 502 + OFFSET_X , 1, 0.57, 0.57 );
setScaleKey( spep_2 + 503 + OFFSET_X , 1, 0.57, 0.57 );
setScaleKey( spep_2 + 504 + OFFSET_X , 1, 0.55, 0.55 );
setScaleKey( spep_2 + 505 + OFFSET_X , 1, 0.55, 0.55 );
setScaleKey( spep_2 + 506 + OFFSET_X , 1, 0.54, 0.54 );
setScaleKey( spep_2 + 508 + OFFSET_X , 1, 0.54, 0.54 );

setRotateKey( spep_2 + 440 + OFFSET_X , 1, -58.2 );
setRotateKey( spep_2 + 441 + OFFSET_X , 1, -58.2 );
setRotateKey( spep_2 + 442 + OFFSET_X , 1, -58.9 );
setRotateKey( spep_2 + 443 + OFFSET_X , 1, -58.9 );
setRotateKey( spep_2 + 444 + OFFSET_X , 1, -59.6 );
setRotateKey( spep_2 + 445 + OFFSET_X , 1, -59.6 );
setRotateKey( spep_2 + 446 + OFFSET_X , 1, -60.2 );
setRotateKey( spep_2 + 447 + OFFSET_X , 1, -60.2 );
setRotateKey( spep_2 + 448 + OFFSET_X , 1, -60.7 );
setRotateKey( spep_2 + 449 + OFFSET_X , 1, -60.7 );
setRotateKey( spep_2 + 450 + OFFSET_X , 1, -61.2 );
setRotateKey( spep_2 + 451 + OFFSET_X , 1, -61.2 );
setRotateKey( spep_2 + 452 + OFFSET_X , 1, -61.7 );
setRotateKey( spep_2 + 453 + OFFSET_X , 1, -61.7 );
setRotateKey( spep_2 + 454 + OFFSET_X , 1, -62.1 );
setRotateKey( spep_2 + 455 + OFFSET_X , 1, -62.1 );
setRotateKey( spep_2 + 456 + OFFSET_X , 1, -62.5 );
setRotateKey( spep_2 + 457 + OFFSET_X , 1, -62.5 );
setRotateKey( spep_2 + 458 + OFFSET_X , 1, -62.8 );
setRotateKey( spep_2 + 459 + OFFSET_X , 1, -62.8 );
setRotateKey( spep_2 + 460 + OFFSET_X , 1, -63.1 );
setRotateKey( spep_2 + 461 + OFFSET_X , 1, -63.1 );
setRotateKey( spep_2 + 462 + OFFSET_X , 1, -63.3 );
setRotateKey( spep_2 + 463 + OFFSET_X , 1, -63.3 );
setRotateKey( spep_2 + 464 + OFFSET_X , 1, -63.4 );
setRotateKey( spep_2 + 465 + OFFSET_X , 1, -63.4 );
setRotateKey( spep_2 + 466 + OFFSET_X , 1, -63.6 );
setRotateKey( spep_2 + 469 + OFFSET_X , 1, -63.6 );
setRotateKey( spep_2 + 470 + OFFSET_X , 1, -63.7 );
setRotateKey( spep_2 + 471 + OFFSET_X , 1, -63.7 );
setRotateKey( spep_2 + 472 + OFFSET_X , 1, -70.1 );
setRotateKey( spep_2 + 473 + OFFSET_X , 1, -70.1 );
setRotateKey( spep_2 + 474 + OFFSET_X , 1, -84.1 );
setRotateKey( spep_2 + 475 + OFFSET_X , 1, -84.1 );
setRotateKey( spep_2 + 476 + OFFSET_X , 1, -93.7 );
setRotateKey( spep_2 + 477 + OFFSET_X , 1, -93.7 );
setRotateKey( spep_2 + 478 + OFFSET_X , 1, -100.6 );
setRotateKey( spep_2 + 479 + OFFSET_X , 1, -100.6 );
setRotateKey( spep_2 + 480 + OFFSET_X , 1, -105.5 );
setRotateKey( spep_2 + 481 + OFFSET_X , 1, -105.5 );
setRotateKey( spep_2 + 482 + OFFSET_X , 1, -109.1 );
setRotateKey( spep_2 + 483 + OFFSET_X , 1, -109.1 );
setRotateKey( spep_2 + 484 + OFFSET_X , 1, -111.8 );
setRotateKey( spep_2 + 485 + OFFSET_X , 1, -111.8 );
setRotateKey( spep_2 + 486 + OFFSET_X , 1, -113.8 );
setRotateKey( spep_2 + 487 + OFFSET_X , 1, -113.8 );
setRotateKey( spep_2 + 488 + OFFSET_X , 1, -115.3 );
setRotateKey( spep_2 + 489 + OFFSET_X , 1, -115.3 );
setRotateKey( spep_2 + 490 + OFFSET_X , 1, -119.3 );
setRotateKey( spep_2 + 491 + OFFSET_X , 1, -119.3 );
setRotateKey( spep_2 + 492 + OFFSET_X , 1, -122.9 );
setRotateKey( spep_2 + 493 + OFFSET_X , 1, -122.9 );
setRotateKey( spep_2 + 494 + OFFSET_X , 1, -126.2 );
setRotateKey( spep_2 + 495 + OFFSET_X , 1, -126.2 );
setRotateKey( spep_2 + 496 + OFFSET_X , 1, -129.2 );
setRotateKey( spep_2 + 497 + OFFSET_X , 1, -129.2 );
setRotateKey( spep_2 + 498 + OFFSET_X , 1, -131.9 );
setRotateKey( spep_2 + 499 + OFFSET_X , 1, -131.9 );
setRotateKey( spep_2 + 500 + OFFSET_X , 1, -134.3 );
setRotateKey( spep_2 + 501 + OFFSET_X , 1, -134.3 );
setRotateKey( spep_2 + 502 + OFFSET_X , 1, -136.5 );
setRotateKey( spep_2 + 503 + OFFSET_X , 1, -136.5 );
setRotateKey( spep_2 + 504 + OFFSET_X , 1, -138.4 );
setRotateKey( spep_2 + 505 + OFFSET_X , 1, -138.4 );
setRotateKey( spep_2 + 506 + OFFSET_X , 1, -140.1 );
setRotateKey( spep_2 + 508 + OFFSET_X , 1, -140.1 );


--敵の動き6
setDisp( spep_2 + 844 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 970 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 844 + OFFSET_X , 1, 6 );
changeAnime( spep_2 + 860 + OFFSET_X , 1, 8 );

--敵のX位置調整
a = -100;

setMoveKey( spep_2 + 844 + OFFSET_X , 1, -701 + a, -108.1 , 0 );
setMoveKey( spep_2 + 845 + OFFSET_X , 1, -701 + a, -108.1 , 0 );
setMoveKey( spep_2 + 846 + OFFSET_X , 1, -606 + a, -101.5 , 0 );
setMoveKey( spep_2 + 847 + OFFSET_X , 1, -606 + a, -101.5 , 0 );
setMoveKey( spep_2 + 848 + OFFSET_X , 1, -535.7 + a, -117.3 , 0 );
setMoveKey( spep_2 + 849 + OFFSET_X , 1, -535.7 + a, -117.3 , 0 );
setMoveKey( spep_2 + 850 + OFFSET_X , 1, -453.9 + a, -101.6 , 0 );
setMoveKey( spep_2 + 851 + OFFSET_X , 1, -453.9 + a, -101.6 , 0 );
setMoveKey( spep_2 + 852 + OFFSET_X , 1, -366 + a, -106.2 , 0 );
setMoveKey( spep_2 + 853 + OFFSET_X , 1, -366 + a, -106.2 , 0 );
setMoveKey( spep_2 + 854 + OFFSET_X , 1, -303 + a, -113 , 0 );
setMoveKey( spep_2 + 855 + OFFSET_X , 1, -303 + a, -113 , 0 );
setMoveKey( spep_2 + 856 + OFFSET_X , 1, -310.4 + a, -104.1 , 0 );
setMoveKey( spep_2 + 857 + OFFSET_X , 1, -310.4 + a, -104.1 , 0 );
setMoveKey( spep_2 + 858 + OFFSET_X , 1, -304.3 + a, -104.2 , 0 );
setMoveKey( spep_2 + 859 + OFFSET_X , 1, -304.3 + a, -104.2 , 0 );
setMoveKey( spep_2 + 860 + OFFSET_X , 1, -342.5 + a, -109.8 , 0 );
setMoveKey( spep_2 + 861 + OFFSET_X , 1, -342.5 + a, -109.8 , 0 );
setMoveKey( spep_2 + 862 + OFFSET_X , 1, -334.5 + a, -100.5 , 0 );
setMoveKey( spep_2 + 863 + OFFSET_X , 1, -334.5 + a, -100.5 , 0 );
setMoveKey( spep_2 + 864 + OFFSET_X , 1, -344.5 + a, -100.3 , 0 );
setMoveKey( spep_2 + 865 + OFFSET_X , 1, -344.5 + a, -100.3 , 0 );
setMoveKey( spep_2 + 866 + OFFSET_X , 1, -336.5 + a, -106.7 , 0 );
setMoveKey( spep_2 + 867 + OFFSET_X , 1, -336.5 + a, -106.7 , 0 );
setMoveKey( spep_2 + 868 + OFFSET_X , 1, -337.5 + a, -102 , 0 );
setMoveKey( spep_2 + 869 + OFFSET_X , 1, -337.5 + a, -102 , 0 );
setMoveKey( spep_2 + 870 + OFFSET_X , 1, -345.2 + a, -99.5 , 0 );
setMoveKey( spep_2 + 871 + OFFSET_X , 1, -345.2 + a, -99.5 , 0 );
setMoveKey( spep_2 + 872 + OFFSET_X , 1, -346 + a, -108.2 , 0 );
setMoveKey( spep_2 + 873 + OFFSET_X , 1, -346 + a, -108.2 , 0 );
setMoveKey( spep_2 + 874 + OFFSET_X , 1, -340.1 + a, -99 , 0 );
setMoveKey( spep_2 + 875 + OFFSET_X , 1, -340.1 + a, -99 , 0 );
setMoveKey( spep_2 + 876 + OFFSET_X , 1, -347.6 + a, -98.8 , 0 );
setMoveKey( spep_2 + 877 + OFFSET_X , 1, -347.6 + a, -98.8 , 0 );
setMoveKey( spep_2 + 878 + OFFSET_X , 1, -341.5 + a, -100.8 , 0 );
setMoveKey( spep_2 + 879 + OFFSET_X , 1, -341.5 + a, -100.8 , 0 );
setMoveKey( spep_2 + 880 + OFFSET_X , 1, -351 + a, -107.4 , 0 );
setMoveKey( spep_2 + 881 + OFFSET_X , 1, -351 + a, -107.4 , 0 );
setMoveKey( spep_2 + 882 + OFFSET_X , 1, -342.5 + a, -98.2 , 0 );
setMoveKey( spep_2 + 883 + OFFSET_X , 1, -342.5 + a, -98.2 , 0 );
setMoveKey( spep_2 + 884 + OFFSET_X , 1, -351.9 + a, -107 , 0 );
setMoveKey( spep_2 + 885 + OFFSET_X , 1, -351.9 + a, -107 , 0 );
setMoveKey( spep_2 + 886 + OFFSET_X , 1, -343.2 + a, -97.9 , 0 );
setMoveKey( spep_2 + 887 + OFFSET_X , 1, -343.2 + a, -97.9 , 0 );
setMoveKey( spep_2 + 888 + OFFSET_X , 1, -352.4 + a, -95.5 , 0 );
setMoveKey( spep_2 + 889 + OFFSET_X , 1, -352.4 + a, -95.5 , 0 );
setMoveKey( spep_2 + 890 + OFFSET_X , 1, -343.6 + a, -106.6 , 0 );
setMoveKey( spep_2 + 891 + OFFSET_X , 1, -343.6 + a, -106.6 , 0 );
setMoveKey( spep_2 + 892 + OFFSET_X , 1, -346 + a, -99.8 , 0 );
setMoveKey( spep_2 + 893 + OFFSET_X , 1, -346 + a, -99.8 , 0 );
setMoveKey( spep_2 + 894 + OFFSET_X , 1, -352.8 + a, -102 , 0 );
setMoveKey( spep_2 + 895 + OFFSET_X , 1, -352.8 + a, -102 , 0 );
setMoveKey( spep_2 + 896 + OFFSET_X , 1, -346 + a, -97.4 , 0 );
setMoveKey( spep_2 + 897 + OFFSET_X , 1, -346 + a, -97.4 , 0 );
setMoveKey( spep_2 + 898 + OFFSET_X , 1, -348.2 + a, -104.1 , 0 );
setMoveKey( spep_2 + 899 + OFFSET_X , 1, -348.2 + a, -104.1 , 0 );
setMoveKey( spep_2 + 900 + OFFSET_X , 1, -348.1 + a, -101.7 , 0 );
setMoveKey( spep_2 + 901 + OFFSET_X , 1, -348.1 + a, -101.7 , 0 );
setMoveKey( spep_2 + 902 + OFFSET_X , 1, -345.7 + a, -99.4 , 0 );
setMoveKey( spep_2 + 903 + OFFSET_X , 1, -345.7 + a, -99.4 , 0 );
setMoveKey( spep_2 + 904 + OFFSET_X , 1, -350 + a, -106.1 , 0 );
setMoveKey( spep_2 + 905 + OFFSET_X , 1, -350 + a, -106.1 , 0 );
setMoveKey( spep_2 + 906 + OFFSET_X , 1, -349.8 + a, -97.1 , 0 );
setMoveKey( spep_2 + 907 + OFFSET_X , 1, -349.8 + a, -97.1 , 0 );
setMoveKey( spep_2 + 908 + OFFSET_X , 1, -342.7 + a, -99.3 , 0 );
setMoveKey( spep_2 + 909 + OFFSET_X , 1, -342.7 + a, -99.3 , 0 );
setMoveKey( spep_2 + 910 + OFFSET_X , 1, -344.7 + a, -106.1 , 0 );
setMoveKey( spep_2 + 911 + OFFSET_X , 1, -344.7 + a, -106.1 , 0 );
setMoveKey( spep_2 + 912 + OFFSET_X , 1, -346.2 + a, -97.1 , 0 );
setMoveKey( spep_2 + 913 + OFFSET_X , 1, -346.2 + a, -97.1 , 0 );
setMoveKey( spep_2 + 914 + OFFSET_X , 1, 34.1, -156.4 , 0 );
setMoveKey( spep_2 + 915 + OFFSET_X , 1, 34.1, -156.4 , 0 );
setMoveKey( spep_2 + 916 + OFFSET_X , 1, 31.5, -154 , 0 );
setMoveKey( spep_2 + 917 + OFFSET_X , 1, 31.5, -154 , 0 );
setMoveKey( spep_2 + 918 + OFFSET_X , 1, 24.5, -160.6 , 0 );
setMoveKey( spep_2 + 919 + OFFSET_X , 1, 24.5, -160.6 , 0 );
setMoveKey( spep_2 + 920 + OFFSET_X , 1, 24.2, -153.7 , 0 );
setMoveKey( spep_2 + 921 + OFFSET_X , 1, 24.2, -153.7 , 0 );
setMoveKey( spep_2 + 922 + OFFSET_X , 1, 32.9, -153.6 , 0 );
setMoveKey( spep_2 + 923 + OFFSET_X , 1, 32.9, -153.6 , 0 );
setMoveKey( spep_2 + 924 + OFFSET_X , 1, 25.9, -160.2 , 0 );
setMoveKey( spep_2 + 925 + OFFSET_X , 1, 25.9, -160.2 , 0 );
setMoveKey( spep_2 + 926 + OFFSET_X , 1, 23.4, -151.1 , 0 );
setMoveKey( spep_2 + 927 + OFFSET_X , 1, 23.4, -151.1 , 0 );
setMoveKey( spep_2 + 928 + OFFSET_X , 1, 32.2, -153.2 , 0 );
setMoveKey( spep_2 + 929 + OFFSET_X , 1, 32.2, -153.2 , 0 );
setMoveKey( spep_2 + 930 + OFFSET_X , 1, 25.2, -159.8 , 0 );
setMoveKey( spep_2 + 931 + OFFSET_X , 1, 25.2, -159.8 , 0 );
setMoveKey( spep_2 + 932 + OFFSET_X , 1, 31.8, -153 , 0 );
setMoveKey( spep_2 + 933 + OFFSET_X , 1, 31.8, -153 , 0 );
setMoveKey( spep_2 + 934 + OFFSET_X , 1, 22.6, -159.6 , 0 );
setMoveKey( spep_2 + 935 + OFFSET_X , 1, 22.6, -159.6 , 0 );
setMoveKey( spep_2 + 936 + OFFSET_X , 1, 24.6, -150.5 , 0 );
setMoveKey( spep_2 + 937 + OFFSET_X , 1, 24.6, -150.5 , 0 );
setMoveKey( spep_2 + 938 + OFFSET_X , 1, 31.2, -152.7 , 0 );
setMoveKey( spep_2 + 939 + OFFSET_X , 1, 31.2, -152.7 , 0 );
setMoveKey( spep_2 + 940 + OFFSET_X , 1, 22, -159.3 , 0 );
setMoveKey( spep_2 + 941 + OFFSET_X , 1, 22, -159.3 , 0 );
setMoveKey( spep_2 + 942 + OFFSET_X , 1, 28.6, -150.2 , 0 );
setMoveKey( spep_2 + 943 + OFFSET_X , 1, 28.6, -150.2 , 0 );
setMoveKey( spep_2 + 944 + OFFSET_X , 1, 26.2, -159.2 , 0 );
setMoveKey( spep_2 + 945 + OFFSET_X , 1, 26.2, -159.2 , 0 );
setMoveKey( spep_2 + 946 + OFFSET_X , 1, 30.6, -150.1 , 0 );
setMoveKey( spep_2 + 947 + OFFSET_X , 1, 30.6, -150.1 , 0 );
setMoveKey( spep_2 + 948 + OFFSET_X , 1, 23.7, -159 , 0 );
setMoveKey( spep_2 + 949 + OFFSET_X , 1, 23.7, -159 , 0 );
setMoveKey( spep_2 + 950 + OFFSET_X , 1, 21.4, -150 , 0 );
setMoveKey( spep_2 + 951 + OFFSET_X , 1, 21.4, -150 , 0 );
setMoveKey( spep_2 + 952 + OFFSET_X , 1, 30.3, -158.9 , 0 );
setMoveKey( spep_2 + 953 + OFFSET_X , 1, 30.3, -158.9 , 0 );
setMoveKey( spep_2 + 954 + OFFSET_X , 1, 27.9, -149.9 , 0 );
setMoveKey( spep_2 + 955 + OFFSET_X , 1, 27.9, -149.9 , 0 );
setMoveKey( spep_2 + 956 + OFFSET_X , 1, 21.1, -158.8 , 0 );
setMoveKey( spep_2 + 957 + OFFSET_X , 1, 21.1, -158.8 , 0 );
setMoveKey( spep_2 + 958 + OFFSET_X , 1, 21.1, -152.1 , 0 );
setMoveKey( spep_2 + 959 + OFFSET_X , 1, 21.1, -152.1 , 0 );
setMoveKey( spep_2 + 960 + OFFSET_X , 1, 30, -152 , 0 );
setMoveKey( spep_2 + 961 + OFFSET_X , 1, 30, -152 , 0 );
setMoveKey( spep_2 + 962 + OFFSET_X , 1, 21, -158.8 , 0 );
setMoveKey( spep_2 + 963 + OFFSET_X , 1, 21, -158.8 , 0 );
setMoveKey( spep_2 + 964 + OFFSET_X , 1, 23.2, -149.7 , 0 );
setMoveKey( spep_2 + 965 + OFFSET_X , 1, 23.2, -149.7 , 0 );
setMoveKey( spep_2 + 966 + OFFSET_X , 1, 29.9, -149.7 , 0 );
setMoveKey( spep_2 + 967 + OFFSET_X , 1, 29.9, -149.7 , 0 );
setMoveKey( spep_2 + 968 + OFFSET_X , 1, 20.9, -158.7 , 0 );
setMoveKey( spep_2 + 970 + OFFSET_X , 1, 20.9, -158.7 , 0 );

setScaleKey( spep_2 + 844 + OFFSET_X , 1, 3.1, 3.1 );
setScaleKey( spep_2 + 913 + OFFSET_X , 1, 3.1, 3.1 );
setScaleKey( spep_2 + 914 + OFFSET_X , 1, 0.7, 0.7 );
setScaleKey( spep_2 + 917 + OFFSET_X , 1, 0.7, 0.7 );
setScaleKey( spep_2 + 918 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_2 + 921 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_2 + 922 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_2 + 927 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_2 + 928 + OFFSET_X , 1, 0.73, 0.73 );
setScaleKey( spep_2 + 935 + OFFSET_X , 1, 0.73, 0.73 );
setScaleKey( spep_2 + 936 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_2 + 945 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_2 + 946 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_2 + 963 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_2 + 964 + OFFSET_X , 1, 0.76, 0.76 );
setScaleKey( spep_2 + 970 + OFFSET_X , 1, 0.76, 0.76 );

setRotateKey( spep_2 + 844 + OFFSET_X , 1, 45.9 );
setRotateKey( spep_2 + 845 + OFFSET_X , 1, 45.9 );
setRotateKey( spep_2 + 846 + OFFSET_X , 1, 45.5 );
setRotateKey( spep_2 + 847 + OFFSET_X , 1, 45.5 );
setRotateKey( spep_2 + 848 + OFFSET_X , 1, 45.1 );
setRotateKey( spep_2 + 849 + OFFSET_X , 1, 45.1 );
setRotateKey( spep_2 + 850 + OFFSET_X , 1, 44.7 );
setRotateKey( spep_2 + 851 + OFFSET_X , 1, 44.7 );
setRotateKey( spep_2 + 852 + OFFSET_X , 1, 44.2 );
setRotateKey( spep_2 + 853 + OFFSET_X , 1, 44.2 );
setRotateKey( spep_2 + 854 + OFFSET_X , 1, 43.8 );
setRotateKey( spep_2 + 855 + OFFSET_X , 1, 43.8 );
setRotateKey( spep_2 + 856 + OFFSET_X , 1, 43.4 );
setRotateKey( spep_2 + 857 + OFFSET_X , 1, 43.4 );
setRotateKey( spep_2 + 858 + OFFSET_X , 1, 43 );
setRotateKey( spep_2 + 859 + OFFSET_X , 1, 43 );
setRotateKey( spep_2 + 860 + OFFSET_X , 1, 26.5 );
setRotateKey( spep_2 + 861 + OFFSET_X , 1, 26.5 );
setRotateKey( spep_2 + 862 + OFFSET_X , 1, 26.1 );
setRotateKey( spep_2 + 863 + OFFSET_X , 1, 26.1 );
setRotateKey( spep_2 + 864 + OFFSET_X , 1, 25.6 );
setRotateKey( spep_2 + 865 + OFFSET_X , 1, 25.6 );
setRotateKey( spep_2 + 866 + OFFSET_X , 1, 25.2 );
setRotateKey( spep_2 + 867 + OFFSET_X , 1, 25.2 );
setRotateKey( spep_2 + 868 + OFFSET_X , 1, 24.8 );
setRotateKey( spep_2 + 869 + OFFSET_X , 1, 24.8 );
setRotateKey( spep_2 + 870 + OFFSET_X , 1, 24.4 );
setRotateKey( spep_2 + 871 + OFFSET_X , 1, 24.4 );
setRotateKey( spep_2 + 872 + OFFSET_X , 1, 24 );
setRotateKey( spep_2 + 873 + OFFSET_X , 1, 24 );
setRotateKey( spep_2 + 874 + OFFSET_X , 1, 23.6 );
setRotateKey( spep_2 + 875 + OFFSET_X , 1, 23.6 );
setRotateKey( spep_2 + 876 + OFFSET_X , 1, 23.2 );
setRotateKey( spep_2 + 877 + OFFSET_X , 1, 23.2 );
setRotateKey( spep_2 + 878 + OFFSET_X , 1, 22.9 );
setRotateKey( spep_2 + 879 + OFFSET_X , 1, 22.9 );
setRotateKey( spep_2 + 880 + OFFSET_X , 1, 22.6 );
setRotateKey( spep_2 + 881 + OFFSET_X , 1, 22.6 );
setRotateKey( spep_2 + 882 + OFFSET_X , 1, 22.3 );
setRotateKey( spep_2 + 883 + OFFSET_X , 1, 22.3 );
setRotateKey( spep_2 + 884 + OFFSET_X , 1, 22.1 );
setRotateKey( spep_2 + 885 + OFFSET_X , 1, 22.1 );
setRotateKey( spep_2 + 886 + OFFSET_X , 1, 21.9 );
setRotateKey( spep_2 + 887 + OFFSET_X , 1, 21.9 );
setRotateKey( spep_2 + 888 + OFFSET_X , 1, 21.7 );
setRotateKey( spep_2 + 889 + OFFSET_X , 1, 21.7 );
setRotateKey( spep_2 + 890 + OFFSET_X , 1, 21.5 );
setRotateKey( spep_2 + 891 + OFFSET_X , 1, 21.5 );
setRotateKey( spep_2 + 892 + OFFSET_X , 1, 21.3 );
setRotateKey( spep_2 + 893 + OFFSET_X , 1, 21.3 );
setRotateKey( spep_2 + 894 + OFFSET_X , 1, 21.2 );
setRotateKey( spep_2 + 895 + OFFSET_X , 1, 21.2 );
setRotateKey( spep_2 + 896 + OFFSET_X , 1, 21.1 );
setRotateKey( spep_2 + 897 + OFFSET_X , 1, 21.1 );
setRotateKey( spep_2 + 898 + OFFSET_X , 1, 20.9 );
setRotateKey( spep_2 + 899 + OFFSET_X , 1, 20.9 );
setRotateKey( spep_2 + 900 + OFFSET_X , 1, 20.8 );
setRotateKey( spep_2 + 903 + OFFSET_X , 1, 20.8 );
setRotateKey( spep_2 + 904 + OFFSET_X , 1, 20.7 );
setRotateKey( spep_2 + 905 + OFFSET_X , 1, 20.7 );
setRotateKey( spep_2 + 906 + OFFSET_X , 1, 20.6 );
setRotateKey( spep_2 + 909 + OFFSET_X , 1, 20.6 );
setRotateKey( spep_2 + 910 + OFFSET_X , 1, 20.5 );
setRotateKey( spep_2 + 911 + OFFSET_X , 1, 20.5 );
setRotateKey( spep_2 + 912 + OFFSET_X , 1, 20.6 );
setRotateKey( spep_2 + 913 + OFFSET_X , 1, 20.6 );
setRotateKey( spep_2 + 914 + OFFSET_X , 1, 5 );
setRotateKey( spep_2 + 915 + OFFSET_X , 1, 5 );
setRotateKey( spep_2 + 916 + OFFSET_X , 1, 4.6 );
setRotateKey( spep_2 + 917 + OFFSET_X , 1, 4.6 );
setRotateKey( spep_2 + 918 + OFFSET_X , 1, 4.2 );
setRotateKey( spep_2 + 919 + OFFSET_X , 1, 4.2 );
setRotateKey( spep_2 + 920 + OFFSET_X , 1, 3.8 );
setRotateKey( spep_2 + 921 + OFFSET_X , 1, 3.8 );
setRotateKey( spep_2 + 922 + OFFSET_X , 1, 3.5 );
setRotateKey( spep_2 + 923 + OFFSET_X , 1, 3.5 );
setRotateKey( spep_2 + 924 + OFFSET_X , 1, 3.2 );
setRotateKey( spep_2 + 925 + OFFSET_X , 1, 3.2 );
setRotateKey( spep_2 + 926 + OFFSET_X , 1, 2.8 );
setRotateKey( spep_2 + 927 + OFFSET_X , 1, 2.8 );
setRotateKey( spep_2 + 928 + OFFSET_X , 1, 2.5 );
setRotateKey( spep_2 + 929 + OFFSET_X , 1, 2.5 );
setRotateKey( spep_2 + 930 + OFFSET_X , 1, 2.2 );
setRotateKey( spep_2 + 931 + OFFSET_X , 1, 2.2 );
setRotateKey( spep_2 + 932 + OFFSET_X , 1, 1.9 );
setRotateKey( spep_2 + 933 + OFFSET_X , 1, 1.9 );
setRotateKey( spep_2 + 934 + OFFSET_X , 1, 1.7 );
setRotateKey( spep_2 + 935 + OFFSET_X , 1, 1.7 );
setRotateKey( spep_2 + 936 + OFFSET_X , 1, 1.4 );
setRotateKey( spep_2 + 937 + OFFSET_X , 1, 1.4 );
setRotateKey( spep_2 + 938 + OFFSET_X , 1, 1.2 );
setRotateKey( spep_2 + 939 + OFFSET_X , 1, 1.2 );
setRotateKey( spep_2 + 940 + OFFSET_X , 1, 1 );
setRotateKey( spep_2 + 941 + OFFSET_X , 1, 1 );
setRotateKey( spep_2 + 942 + OFFSET_X , 1, 0.8 );
setRotateKey( spep_2 + 943 + OFFSET_X , 1, 0.8 );
setRotateKey( spep_2 + 944 + OFFSET_X , 1, 0.6 );
setRotateKey( spep_2 + 945 + OFFSET_X , 1, 0.6 );
setRotateKey( spep_2 + 946 + OFFSET_X , 1, 0.4 );
setRotateKey( spep_2 + 947 + OFFSET_X , 1, 0.4 );
setRotateKey( spep_2 + 948 + OFFSET_X , 1, 0.3 );
setRotateKey( spep_2 + 949 + OFFSET_X , 1, 0.3 );
setRotateKey( spep_2 + 950 + OFFSET_X , 1, 0.1 );
setRotateKey( spep_2 + 951 + OFFSET_X , 1, 0.1 );
setRotateKey( spep_2 + 952 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 953 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 954 + OFFSET_X , 1, -0.1 );
setRotateKey( spep_2 + 955 + OFFSET_X , 1, -0.1 );
setRotateKey( spep_2 + 956 + OFFSET_X , 1, -0.2 );
setRotateKey( spep_2 + 957 + OFFSET_X , 1, -0.2 );
setRotateKey( spep_2 + 958 + OFFSET_X , 1, -0.3 );
setRotateKey( spep_2 + 959 + OFFSET_X , 1, -0.3 );
setRotateKey( spep_2 + 960 + OFFSET_X , 1, -0.4 );
setRotateKey( spep_2 + 963 + OFFSET_X , 1, -0.4 );
setRotateKey( spep_2 + 964 + OFFSET_X , 1, -0.5 );
setRotateKey( spep_2 + 970 + OFFSET_X , 1, -0.5 );

setBlendColor( spep_2 + 844 + OFFSET_X , 1, 3, 0.67, 0.62, 1.0, 1.0 );
setBlendColor( spep_2 + 969 + OFFSET_X , 1, 3, 0.67, 0.62, 1.0, 1.0 );
setBlendColor( spep_2 + 970 + OFFSET_X , 1, 3, 0.0, 0.0, 0.0, 0.0 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 16; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--悟空向かってくる
SE005 = playSeVer2( spep_1 + 82, 1117, "", spep_1 + 82 + 62, 0, 26, -1);

--キック
SE006 = playSeVer2( spep_2 + 20, 1004, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 32, 1187, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 32, 1359, "", 0, 0, 0, -1);

--悟空翻る
SE009 = playSeVer2( spep_2 + 86, 44, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 86, 1117, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 102, 1019, "",spep_2 + 172, 0, 22, -1);

--画面遷移
SE012 = playSeVer2( spep_2 + 152, 1232, "", 0, 0, 0, -1);

--トランクスと悟飯向かってくる
SE013 = playSeVer2( spep_2 + 174, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 174, 1277, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 174, 1117, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 208, 1277, "", 0, 0, 0, -1);
setPitch( spep_2 + 208, SE016, 200 );
setTimeStretch( SE016, 1.13, 30, 4 );
SE017 = playSeVer2( spep_2 + 216, 63, "",spep_2 + 304, 0, 22, -1);

--振りかぶる
SE018 = playSeVer2( spep_2 + 274, 1116, "",spep_2 + 334, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 274, SE018, 80 );
SE019 = playSeVer2( spep_2 + 274, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 300, 1003, "", 0, 0, 0, -1);

--二人打撃ヒット
SE021 = playSeVer2( spep_2 + 314, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE021, 80 );
SE022 = playSeVer2( spep_2 + 314, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE022, 80 );
SE023 = playSeVer2( spep_2 + 316, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 316, SE023, 80 );

--悟飯振りかぶる
SE024 = playSeVer2( spep_2 + 382, 1116, "",spep_2 + 424, 0, 14, -1);
SE025 = playSeVer2( spep_2 + 400, 1004, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 416, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 416, SE026, 141 );

--悟飯蹴り飛ばす
SE027 = playSeVer2( spep_2 + 426, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 426, SE027, 80 );
SE028 = playSeVer2( spep_2 + 426, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 426, SE028, 80 );
SE029 = playSeVer2( spep_2 + 430, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 430, SE029, 80 );

--敵飛んでいく
SE030 = playSeVer2( spep_2 + 462, 1121, "",spep_2 + 538, 0, 30, -1);
setPitch( spep_2 + 462, SE030, 200 );
setTimeStretch( SE030, 1.13, 30, 4 );

--地面激突
SE031 = playSeVer2( spep_2 + 498, 1159, "",spep_2 + 752, 0, 204, -1);

--両手出す
SE032 = playSeVer2( spep_2 + 552, 1189, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 560, 1006, "", 0, 0, 0, -1);

--構える
SE034 = playSeVer2( spep_2 + 596, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 596, SE034, 56 );

--かめはめ波溜め
SE035 = playSeVer2( spep_2 + 636, 1328, "", 0, 4, 0, -1);
setStartTimeMs( SE035,  133 );
SE036 = playSeVer2( spep_2 + 640, 1209, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 640, 1210, "",spep_2 + 872, 0, 36, -1);

--画面遷移
SE039 = playSeVer2( spep_2 + 780, 1072, "", 0, 10, 0, -1);
setStartTimeMs( SE039,  300 );

--かめはめ波発射
SE040 = playSeVer2( spep_2 + 826, 1133, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 826, 1146, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 826, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 826, SE042, 62 );
SE043 = playSeVer2( spep_2 + 852, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 852, SE043, 76 );

--膨れ上がっていく
SE044 = playSeVer2( spep_2 + 880, 1215, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 952, 1159, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 952, 1044, "", 0, 38, 0, -1);
setSeVolumeByWorkId( spep_2 + 952, SE046, 204 );
SE047 = playSeVer2( spep_2 + 974, 1168, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_2 + 974, SE047, 145 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 912); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  1032f -4


end