--1033640:UR_トワ&ミラ_必殺技：歴史の侵略
--sp_effect_a1_00531
--sp3016

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164472; --セリフカットイン ef_001
SP_02  = 164474; --ミラ〜トワ〜ミラ攻撃〜爆発 ef_002

--エフェクト(敵)
SP_01r  = 164473; --セリフカットイン(セリフ表示なし) ef_001r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 292;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        timing_skip = 428;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_2 + timing_skip , SP_01, spep_2 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --ミラ気弾を体から出す
        SE029 = playSeVer2( spep_2 + 428 + 3, 1184, "",spep_2 + 446, 0, 62, -1);
        SE030 = playSeVer2( spep_2 + 428 + 3, 1022, "", 0, 0, 0, -1);
        SE031 = playSeVer2( spep_2 + 428 + 3, 1240, "",spep_2 + 484, 0, 26, -1);
        SE032 = playSeVer2( spep_2 + 428 + 3, 1441, "",spep_2 + 484, 0, 22, -1);
        SE033 = playSeVer2( spep_2 + 428 + 3, 1513, "",spep_2 + 484, 0, 20, -1);

    else
        setupMovie(0, SP_01, 0, 1);
    end

else

    setupMovie(0, SP_01, 0, 1);

    mirror = -1;

    SP_01  = SP_01r;

end

------------------------------------------------------------------------------------------------------------
-- 共通演出
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- セリフカットイン (冒頭　〜　カードカットイン前まで)
-------------------------------------------------
MAX_FRAME_0 = 292;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- セリフカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   --speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   --setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

--[[
ctgogo_x = 0; -- 演出によって白目にかからないように調整

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, ctgogo_x * mirror, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0 * mirror, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09 * mirror, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39 * mirror, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69 * mirror, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 324, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--顔カットイン
--SE002 = playSeVer2( spep_0 + 14, 1018, "", 0, 0, 0, -1);
--画面遷移
SE003 = playSeVer2( spep_0 + 80, 1232, "", 0, 0, 0, -1);
--ミラ気ダメ
SE004 = playSeVer2( spep_0 + 244, 1271, "",spep_0 + 308, 6, 12, -1);
setSeVolumeByWorkId( spep_0 + 244, SE004, 122 );
setStartTimeMs( SE004,  533 );
SE005 = playSeVer2( spep_0 + 248, 1274, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE005, 124 );
setStartTimeMs( SE005,  333 );
SE006 = playSeVer2( spep_0 + 246, 1037, "",spep_0 + 300, 0, 30, -1);
SE007 = playSeVer2( spep_0 + 246, 1291, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE007, 116 );
SE008 = playSeVer2( spep_0 + 248, 1313, "",spep_0 + 314, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 248, SE008, 66 );
--カードカットイン
--SE009 = playSeVer2( spep_1 + 6, 1035, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 292

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- ミラ〜トワ〜ミラ攻撃〜爆発
-------------------------------------------------
MAX_FRAME_2 = 638;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0 + 4, SP_02, 0x100, -1, 0, 0, 0); -- ミラ〜トワ〜ミラ攻撃〜爆発(ef_002)
setEffMoveKey( spep_2 + 0 + 4, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0 + 4, finish_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_2 + 0 + 4, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0 + 4, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 34 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 96 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 34 + OFFSET_X, 1, 102 );
changeAnimeBySide( spep_2 + 46 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_2 + 82 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 34 + OFFSET_X, 1, 128 * mirror, -220.7 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 128 * mirror, -220.7 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 160 * mirror, -140.4 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 160 * mirror, -140.4 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 189.9 * mirror, -134.3 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 189.9 * mirror, -134.3 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 137.2 * mirror, -134 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 137.2 * mirror, -134 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 163.5 * mirror, -112.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 163.5 * mirror, -112.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 151.1 * mirror, -123 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 151.1 * mirror, -123 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 164.1 * mirror, -126.7 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 164.1 * mirror, -126.7 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 157 * mirror, -120.4 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 157 * mirror, -120.4 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 155.3 * mirror, -126.2 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 155.3 * mirror, -126.2 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 158.9 * mirror, -126 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 158.9 * mirror, -126 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 155.9 * mirror, -121.8 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 155.9 * mirror, -121.8 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 162.7 * mirror, -125.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 162.7 * mirror, -125.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 161.7 * mirror, -118.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 161.7 * mirror, -118.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 160 * mirror, -123.3 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 160 * mirror, -123.3 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 163.6 * mirror, -121.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 163.6 * mirror, -121.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 168.4 * mirror, -117.5 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 168.4 * mirror, -117.5 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 165.5 * mirror, -121.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 165.5 * mirror, -121.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 174.5 * mirror, -118.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 174.5 * mirror, -118.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 170.2 * mirror, -118.5 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 170.2 * mirror, -118.5 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 218.2 * mirror, 43.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 218.2 * mirror, 43.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 260.6 * mirror, 165.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 260.6 * mirror, 165.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 363.8 * mirror, 352.5 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 363.8 * mirror, 352.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 425 * mirror, 488.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 425 * mirror, 488.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 486.4 * mirror, 613.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 486.4 * mirror, 613.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 537.4 * mirror, 706.6 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 537.4 * mirror, 706.6 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 575 * mirror, 784.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 575 * mirror, 784.7 , 0 );

setScaleKey( spep_2 + 34 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.9, 1.9 );

setRotateKey( spep_2 + 34 + OFFSET_X, 1, 19 * mirror );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, 19 * mirror );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, 56.4 * mirror );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, 56.4 * mirror );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, 57 * mirror );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, 57 * mirror );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, 57.5 * mirror );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, 57.5 * mirror );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, 58.1 * mirror );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, 58.1 * mirror );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 58.6 * mirror );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, 58.6 * mirror );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, 59.2 * mirror );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 59.2 * mirror );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 59.7 * mirror );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, 59.7 * mirror );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, 60.3 * mirror );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, 60.3 * mirror );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 60.8 * mirror );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, 60.8 * mirror );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, 61.4 * mirror );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 61.4 * mirror );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 61.9 * mirror );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 61.9 * mirror );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 62.5 * mirror );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 62.5 * mirror );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 63 * mirror );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 63 * mirror );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 63.6 * mirror );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 63.6 * mirror );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 64.2 * mirror );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 64.2 * mirror );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 64.7 * mirror );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 64.7 * mirror );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 65.3 * mirror );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 65.3 * mirror );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 65.8 * mirror );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 65.8 * mirror );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -23.8 * mirror );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -23.8 * mirror );


--敵の動き2
setDisp( spep_2 + 128 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 164 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 128 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 128 + OFFSET_X, 1, 501.1 * mirror, -621.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 501.1 * mirror, -621.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 490.2 * mirror, -605.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 490.2 * mirror, -605.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 478.9 * mirror, -588.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 478.9 * mirror, -588.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 467 * mirror, -571.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 467 * mirror, -571.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 454.4 * mirror, -552.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 454.4 * mirror, -552.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 441.1 * mirror, -533.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 441.1 * mirror, -533.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 426.9 * mirror, -512.5 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 426.9 * mirror, -512.5 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 411.8 * mirror, -490.3 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 411.8 * mirror, -490.3 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 395.6 * mirror, -466.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 395.6 * mirror, -466.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 378.2 * mirror, -441 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 378.2 * mirror, -441 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 359.5 * mirror, -413.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 359.5 * mirror, -413.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 339.2 * mirror, -383.7 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 339.2 * mirror, -383.7 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 317.1 * mirror, -351.3 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 317.1 * mirror, -351.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 293.1 * mirror, -316.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 293.1 * mirror, -316.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 266.9 * mirror, -277.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 266.9 * mirror, -277.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 238.2 * mirror, -235.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 238.2 * mirror, -235.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 206.7 * mirror, -189.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 206.7 * mirror, -189.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 172 * mirror, -138.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 172 * mirror, -138.2 , 0 );

setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.65, 0.65 );

setRotateKey( spep_2 + 128 + OFFSET_X, 1, 27.4 * mirror );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 27.4 * mirror );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 27.3 * mirror );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 27.3 * mirror );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 27.2 * mirror );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 27.2 * mirror );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 27.1 * mirror );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 27.1 * mirror );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 27 * mirror );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 27 * mirror );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 26.9 * mirror );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 26.9 * mirror );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 26.8 * mirror );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 26.8 * mirror );


--敵の動き3
setDisp( spep_2 + 246 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 326 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 246 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_2 + 264 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 246 + OFFSET_X, 1, 233.3 * mirror, -169.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 233.3 * mirror, -169.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 237.3 * mirror, -165.3 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 237.3 * mirror, -165.3 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 230.6 * mirror, -177.3 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 230.6 * mirror, -177.3 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 235.9 * mirror, -165.3 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 235.9 * mirror, -165.3 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 238.6 * mirror, -176 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 238.6 * mirror, -176 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 226.6 * mirror, -158.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 226.6 * mirror, -158.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 228 * mirror, -176 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 228 * mirror, -176 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 238.6 * mirror, -161.4 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 238.6 * mirror, -161.4 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 232 * mirror, -172 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 232 * mirror, -172 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 203.8 * mirror, -139.8 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 203.8 * mirror, -139.8 , 0 );

setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 1.15, 1.15 );

setRotateKey( spep_2 + 246 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -34.3 * mirror );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -34.3 * mirror );


--敵の動き4
setDisp( spep_2 + 480 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 638 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 480 + OFFSET_X, 1, 195.2 * mirror, 4.2 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 195.2 * mirror, 4.2 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 211.2 * mirror, 28.2 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 211.2 * mirror, 28.2 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 191.2 * mirror, -23.9 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 191.2 * mirror, -23.9 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 183.2 * mirror, 8.1 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 183.2 * mirror, 8.1 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 195.2 * mirror, -3.9 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 195.2 * mirror, -3.9 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 195.2 * mirror, 4.2 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 195.2 * mirror, 4.2 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 203.2 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 203.2 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 185.2 * mirror, -7.8 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 185.2 * mirror, -7.8 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 179.2 * mirror, 22.2 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 179.2 * mirror, 22.2 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 207.2 * mirror, -15.8 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 207.2 * mirror, -15.8 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 215.2 * mirror, 18.2 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 215.2 * mirror, 18.2 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 181.2 * mirror, -15.8 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 181.2 * mirror, -15.8 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 181.2 * mirror, 18.2 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 181.2 * mirror, 18.2 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 205.2 * mirror, -11.8 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 205.2 * mirror, -11.8 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 209.2 * mirror, 14.2 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 209.2 * mirror, 14.2 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 187.2 * mirror, -17.7 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 187.2 * mirror, -17.7 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 213.2 * mirror, 18.2 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 213.2 * mirror, 18.2 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 209.3 * mirror, -17.7 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 209.3 * mirror, -17.7 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 179.3 * mirror, 28.3 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 179.3 * mirror, 28.3 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 177.3 * mirror, -13.7 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 177.3 * mirror, -13.7 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 205.3 * mirror, 20.3 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 205.3 * mirror, 20.3 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 207.3 * mirror, -11.7 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 207.3 * mirror, -11.7 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 185.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 185.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 185.3 * mirror, -13.7 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 185.3 * mirror, -13.7 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 207.3 * mirror, 18.3 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 207.3 * mirror, 18.3 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 203.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 203.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 189.3 * mirror, 14.3 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 187.3 * mirror, -5.7 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 201.3 * mirror, 12.3 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 201.3 * mirror, -3.7 , 0 );

setScaleKey( spep_2 + 480 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 638 + OFFSET_X, 1, 0.75, 0.75 );

setRotateKey( spep_2 + 480 + OFFSET_X, 1, -35.1 * mirror );
setRotateKey( spep_2 + 638 + OFFSET_X, 1, -35.1 * mirror );

-- ** 音 ** --
--気が弾ける
SE010 = playSeVer2( spep_2 + 4, 1415, "",spep_2 + 30, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 4, SE010, 65 );
SE011 = playSeVer2( spep_2 + 4, 22, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 4, 1026, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 20; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);

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
--パンチ
SE013 = playSeVer2( spep_2 + 38, 1003, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 44, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 44, 1153, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 48, 1110, "", 0, 0, 0, -1);
--蹴り飛ばす
SE017 = playSeVer2( spep_2 + 74, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE017, 141 );
SE018 = playSeVer2( spep_2 + 82, 1187, "", 0, 0, 0, -1);
--敵飛んでいく
SE019 = playSeVer2( spep_2 + 102, 1121, "",spep_2 + 196, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 102, SE019, 41 );
--瞬間移動
SE020 = playSeVer2( spep_2 + 108, 1235, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE020, 77 );
--腕前に出す
SE021 = playSeVer2( spep_2 + 194, 1272, "", 0, 0, 0, -1);
setPitch( spep_2 + 194, SE021, 900 );
setTimeStretch( SE021, 1.6, 30, 4 );
SE022 = playSeVer2( spep_2 + 200, 1117, "",spep_2 + 280, 0, 50, -1);
setSeVolumeByWorkId( spep_2 + 200, SE022, 73 );
SE023 = playSeVer2( spep_2 + 200, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 200, SE023, 124 );
--敵拘束する
SE024 = playSeVer2( spep_2 + 244, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 244, SE024, 120 );
SE025 = playSeVer2( spep_2 + 244, 1424, "",spep_2 + 346, 0, 26, -1);
SE026 = playSeVer2( spep_2 + 244, 1406, "",spep_2 + 344, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 244, SE026, 68 );
SE027 = playSeVer2( spep_2 + 244, 1353, "",spep_2 + 344, 0, 22, -1);
SE028 = playSeVer2( spep_2 + 244, 1176, "",spep_2 + 344, 0, 20, -1);
--ミラ気弾を体から出す
SE029 = playSeVer2( spep_2 + 326, 1184, "",spep_2 + 446, 0, 62, -1);
SE030 = playSeVer2( spep_2 + 326, 1022, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 326, 1240, "",spep_2 + 484, 0, 26, -1);
SE032 = playSeVer2( spep_2 + 326, 1441, "",spep_2 + 484, 0, 22, -1);
SE033 = playSeVer2( spep_2 + 366, 1513, "",spep_2 + 484, 0, 20, -1);
--気弾発射
SE034 = playSeVer2( spep_2 + 460, 1145, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 460, 1027, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 460, 1193, "",spep_2 + 542, 0, 18, -1);
--爆発
SE037 = playSeVer2( spep_2 + 522, 1159, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 530, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 530, SE038, 79 );
SE039 = playSeVer2( spep_2 + 536, 1188, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 520); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 638