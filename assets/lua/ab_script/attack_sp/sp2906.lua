--1031920:LR_ブロリー(怒り)_必殺技：ギガンティックインパクト
--sp_effect_b1_00345
--sp2906

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164116; --開幕、咆哮して突進 ef_001
SP_02  = 164117; --殴りから氷山突撃、スレッジハンマー ef_002
SP_02b = 164118; --↑背景部分 ef_002b

--エフェクト(敵)
SP_02r  = 164119; --敵側部分 ef_002r
SP_02br = 164120; --敵側部分 ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.72);

adjustAttackerLabel( 0, 205);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 176;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 770);  -- スキップ先フレーム指定

        SE050 = playSeVer2( spep_2 + 772, 1121, "",spep_2 + 846, 0, 30, -1);
    else
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕、咆哮して突進
-------------------------------------------------
MAX_FRAME_0 = 176;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕、咆哮して突進 ef_001
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 26;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 290, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 290, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 290, 515.5 , 0 );
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


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 210, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
--顔カットイン
--SE003 = playSeVer2( spep_0 + 12, 1018, "", 0, 0, 0, -1);
--構える
SE004 = playSeVer2( spep_0 + 22, 1330, "",spep_0 + 86, 0, 32, -1);
SE005 = playSeVer2( spep_0 + 42, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE005, 79 );
--向かってくる
SE006 = playSeVer2( spep_0 + 110, 1068, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 110, 1117, "",spep_0 + 208, 0, 22, -1);
SE008 = playSeVer2( spep_0 + 110, 1182, "",spep_0 + 208, 0, 24, -1);
SE009 = playSeVer2( spep_0 + 110, 1304, "",spep_0 + 208, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 110, SE009, 66 );
SE010 = playSeVer2( spep_0 + 140, 1066, "",spep_0 + 206, 0, 24, -1);



-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 176  

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--振りかぶる
SE013 = playSeVer2( spep_1 + 90, 1116, "",spep_1 + 168, 0, 58, -1);

-------------------------------------------------
-- 殴りから氷山突撃、スレッジハンマー
-------------------------------------------------
MAX_FRAME_2 = 924;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 殴りから氷山突撃、スレッジハンマー(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ↑背景部分(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --


--敵の動き1

setDisp( spep_2 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 122 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 74 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, -81.5, -76.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -81.5, -76.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -45.1, -6.1 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -45.1, -6.1 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -39.5, -73.3 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -39.5, -73.3 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -148.7, 13.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -148.7, 13.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -92.7, -70.5 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -92.7, -70.5 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -64.7, 13.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -64.7, 13.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -56.3, -6.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -56.3, -6.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 32.3, 63.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 32.3, 63.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 30.1, 58.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 30.1, 58.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 25.5, 47.8 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 25.5, 47.8 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 18.7, 31.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 18.7, 31.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 15.4, 24.2 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 15.4, 24.2 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 13.8, 20.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 13.8, 20.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 12.7, 17.9 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 12.7, 17.9 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 12, 16.2 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 12, 16.2 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 11.5, 15 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 11.5, 15 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 11.1, 14.1 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 11.1, 14.1 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 10.9, 13.5 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 10.9, 13.5 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 10.7, 13 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 10.7, 13 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 10.5, 12.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 10.5, 12.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 10.5, 12.5 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 10.5, 12.5 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 10.4, 12.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 10.4, 12.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 9.9, 13.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 9.9, 13.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 9.5, 13.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 9.5, 13.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 9, 14.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 9, 14.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 8.6, 15.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 8.6, 15.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 8.1, 16 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 8.1, 16 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 7.7, 16.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 7.7, 16.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 7.2, 17.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 7.2, 17.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 6.8, 18.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 6.8, 18.1 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.05, 0.05 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, -84 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, -84 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 224 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 260 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 224 + OFFSET_X, 1, 17.8, -118.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 17.8, -118.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 10.3, -77.4 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 10.3, -77.4 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 22.5, -26.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 22.5, -26.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 6.7, -42.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 6.7, -42.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 5.7, -29.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 5.7, -29.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 21.7, -42.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 21.7, -42.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 19.6, -34.5 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 19.6, -34.5 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 5.8, -43.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 5.8, -43.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 3, -44 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 3, -44 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 14.3, -37.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 14.3, -37.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 15.7, -44 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 15.7, -44 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 1.2, -58 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 1.2, -58 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 12.5, -26.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 12.5, -26.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 21.5, -32.6 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 21.5, -32.6 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 22.6, -24.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 22.6, -24.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 14.1, -35.5 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 14.1, -35.5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 16.7, -24.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 16.7, -24.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 26.6, -34.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 26.6, -34.4 , 0 );

setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_2 + 224 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 0 );

--敵の動き3
setDisp( spep_2 + 284 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 322 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 284 + OFFSET_X, 1, -294.3, 42.4 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -294.3, 42.4 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -294.3, 52.9 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -294.3, 52.9 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -302.7, 46.6 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -302.7, 46.6 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -305.8, 50.8 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -305.8, 50.8 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -301.6, 44.5 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -301.6, 44.5 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -301.6, 47.6 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -301.6, 47.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -302.7, 43.4 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -302.7, 43.4 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -318.4, 30.8 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -318.4, 30.8 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -288, 62.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -288, 62.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -311.1, 50.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -311.1, 50.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -291.1, 30.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -291.1, 30.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -315.3, 52.9 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -315.3, 52.9 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -282.7, 27.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -282.7, 27.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -298.5, 72.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -298.5, 72.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -297.4, 35 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -297.4, 35 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -303.7, 55 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -303.7, 55 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -293.2, 41.3 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -293.2, 41.3 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -294.3, 49.7 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -294.3, 49.7 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -295.3, 38.2 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -295.3, 38.2 , 0 );

setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_2 + 284 + OFFSET_X, 1, -56.4 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -56.4 );

--敵の動き4
setDisp( spep_2 + 434 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 454 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 434 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 448 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 434 + OFFSET_X, 1, 142.3, 70 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 142.3, 70 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 123.2, 62.7 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 123.2, 62.7 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 103.7, 23.6 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 103.7, 23.6 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 114.4, -5.2 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 114.4, -5.2 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 21.4, -105.7 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 21.4, -105.7 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 2.3, -161.1 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 2.3, -161.1 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -135.7, -317.7 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -135.7, -317.7 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -301, -183.8 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -301, -183.8 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -462.3, -209 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -462.3, -209 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -623.9, -238.3 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -623.9, -238.3 , 0 );

setScaleKey( spep_2 + 434 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 5.79, 5.79 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 5.79, 5.79 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 8, 8 );

setRotateKey( spep_2 + 434 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, -64 );


--敵の動き5
setDisp( spep_2 + 472 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 500 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 472 + OFFSET_X, 1, -495.2, 418.4 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -495.2, 418.4 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -194.6, 297 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -194.6, 297 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -194.6, 159 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -194.6, 159 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -194.6, 297 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -194.6, 297 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -420.1, 54.2 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -420.1, 54.2 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -269.8, -67.2 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -269.8, -67.2 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -344.9, 175.6 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -344.9, 175.6 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -344.9, 37.6 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -344.9, 37.6 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -414, 658.6 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -414, 658.6 , 0 );

setScaleKey( spep_2 + 472 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_2 + 485 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_2 + 486 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 500 + OFFSET_X, 1, 5, 5 );

setRotateKey( spep_2 + 472 + OFFSET_X, 1, -78 );
setRotateKey( spep_2 + 495 + OFFSET_X, 1, -78 );
setRotateKey( spep_2 + 496 + OFFSET_X, 1, -91 );
setRotateKey( spep_2 + 500 + OFFSET_X, 1, -91 );



--敵の動き6
setDisp( spep_2 + 562 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 596 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 562 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 572 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 562 + OFFSET_X, 1, -18.8, -11.1 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -18.8, -11.1 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -64.3, -98.3 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -64.3, -98.3 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -129.6, -244.5 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, -129.6, -244.5 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -145.3, -328.9 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, -145.3, -328.9 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -211.9, -250.8 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, -211.9, -250.8 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, -327.7, -173.9 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, -327.7, -173.9 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -404.7, -289.4 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, -404.7, -289.4 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -520.2, -250.9 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, -520.2, -250.9 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, -481.7, -289.4 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -481.7, -289.4 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -289.2, -96.9 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -289.2, -96.9 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -327.7, -173.9 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, -327.7, -173.9 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, -96.7, 18.6 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, -96.7, 18.6 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, -96.7, -31.5 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, -96.7, -31.5 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 338.4, 176.4 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 338.4, 176.4 , 0 );

setScaleKey( spep_2 + 562 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 563 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 564 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 16.5, 16.5 );
setScaleKey( spep_2 + 567 + OFFSET_X, 1, 16.5, 16.5 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 20, 20 );
setScaleKey( spep_2 + 571 + OFFSET_X, 1, 20, 20 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 573 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 574 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 596 + OFFSET_X, 1, 3.9, 3.9 );

setRotateKey( spep_2 + 562 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 571 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 572 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 596 + OFFSET_X, 1, 6.8 );


--敵の動き7
setDisp( spep_2 + 612 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 656 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 612 + OFFSET_X, 1, 492, 330.3 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 492, 330.3 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 484.3, 338 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 484.3, 338 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 141.6, 110.9 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 141.6, 110.9 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 145.5, 122.4 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, 145.5, 122.4 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, -9, 111.6 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, -9, 111.6 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 37.5, 171.3 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, 37.5, 171.3 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, 47.4, 184.2 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 47.4, 184.2 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 52.4, 190.6 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, 52.4, 190.6 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 55.3, 194.3 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 55.3, 194.3 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, 57.1, 196.7 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 57.1, 196.7 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, 58.6, 198.5 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 58.6, 198.5 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 59.9, 200.2 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 59.9, 200.2 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 61.4, 202.1 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 61.4, 202.1 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, 63.1, 204.4 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, 63.1, 204.4 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, 65.3, 207.2 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, 65.3, 207.2 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 68.1, 210.7 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, 68.1, 210.7 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, 71.4, 215.1 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, 71.4, 215.1 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, 75.5, 220.3 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 75.5, 220.3 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 80.4, 226.6 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, 80.4, 226.6 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, 86.1, 234 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, 86.1, 234 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 92.8, 242.5 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 92.8, 242.5 , 0 );

setScaleKey( spep_2 + 612 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 621 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 622 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 623 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 624 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 625 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 626 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 627 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 628 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 629 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 630 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 631 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 632 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 633 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 634 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 635 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 636 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 637 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 638 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 639 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 640 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 641 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 642 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 643 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 644 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 645 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 646 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 647 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 648 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 649 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 650 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 651 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 652 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 653 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 654 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 656 + OFFSET_X, 1, 1.1, 1.1 );

setRotateKey( spep_2 + 612 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 623 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 624 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 625 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 626 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_2 + 627 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_2 + 628 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 629 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 630 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 631 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 632 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_2 + 633 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_2 + 634 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 635 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 636 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 637 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 638 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 639 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 640 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 641 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 642 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 643 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 644 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 645 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 646 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 647 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 648 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 649 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 651 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 652 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_2 + 653 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_2 + 654 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 656 + OFFSET_X, 1, 0.5 );



--敵の動き8
setDisp( spep_2 + 702 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 720 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 702 + OFFSET_X, 1, -577.8, -1016.7 , 0 );
setMoveKey( spep_2 + 703 + OFFSET_X, 1, -577.8, -1016.7 , 0 );
setMoveKey( spep_2 + 704 + OFFSET_X, 1, -467.6, -833.3 , 0 );
setMoveKey( spep_2 + 705 + OFFSET_X, 1, -467.6, -833.3 , 0 );
setMoveKey( spep_2 + 706 + OFFSET_X, 1, -357.4, -650 , 0 );
setMoveKey( spep_2 + 707 + OFFSET_X, 1, -357.4, -650 , 0 );
setMoveKey( spep_2 + 708 + OFFSET_X, 1, -272.6, -508.9 , 0 );
setMoveKey( spep_2 + 709 + OFFSET_X, 1, -272.6, -508.9 , 0 );
setMoveKey( spep_2 + 710 + OFFSET_X, 1, -394.4, -674.2 , 0 );
setMoveKey( spep_2 + 711 + OFFSET_X, 1, -394.4, -674.2 , 0 );
setMoveKey( spep_2 + 712 + OFFSET_X, 1, -391.3, -670.6 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, -391.3, -670.6 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, -388.2, -666.9 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, -388.2, -666.9 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, -385, -663.2 , 0 );
setMoveKey( spep_2 + 717 + OFFSET_X, 1, -385, -663.2 , 0 );
setMoveKey( spep_2 + 718 + OFFSET_X, 1, -381.9, -659.6 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, -381.9, -659.6 , 0 );

setScaleKey( spep_2 + 702 + OFFSET_X, 1, 11.17, 11.15 );
setScaleKey( spep_2 + 703 + OFFSET_X, 1, 11.17, 11.15 );
setScaleKey( spep_2 + 704 + OFFSET_X, 1, 12.31, 12.3 );
setScaleKey( spep_2 + 705 + OFFSET_X, 1, 12.31, 12.3 );
setScaleKey( spep_2 + 706 + OFFSET_X, 1, 13.46, 13.44 );
setScaleKey( spep_2 + 707 + OFFSET_X, 1, 13.46, 13.44 );
setScaleKey( spep_2 + 708 + OFFSET_X, 1, 14.34, 14.32 );
setScaleKey( spep_2 + 711 + OFFSET_X, 1, 14.34, 14.32 );
setScaleKey( spep_2 + 712 + OFFSET_X, 1, 14.56, 14.54 );
setScaleKey( spep_2 + 713 + OFFSET_X, 1, 14.56, 14.54 );
setScaleKey( spep_2 + 714 + OFFSET_X, 1, 14.78, 14.76 );
setScaleKey( spep_2 + 715 + OFFSET_X, 1, 14.78, 14.76 );
setScaleKey( spep_2 + 716 + OFFSET_X, 1, 15, 14.98 );
setScaleKey( spep_2 + 717 + OFFSET_X, 1, 15, 14.98 );
setScaleKey( spep_2 + 718 + OFFSET_X, 1, 15.22, 15.2 );
setScaleKey( spep_2 + 720 + OFFSET_X, 1, 15.22, 15.2 );

setRotateKey( spep_2 + 702 + OFFSET_X, 1, -51 );
setRotateKey( spep_2 + 720 + OFFSET_X, 1, -51 );

--敵の動き9
setDisp( spep_2 + 730 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 742 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 730 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 730 + OFFSET_X, 1, -96.5, -10.6 , 0 );
setMoveKey( spep_2 + 731 + OFFSET_X, 1, -96.5, -10.6 , 0 );
setMoveKey( spep_2 + 732 + OFFSET_X, 1, -122.4, 81.6 , 0 );
setMoveKey( spep_2 + 733 + OFFSET_X, 1, -122.4, 81.6 , 0 );
setMoveKey( spep_2 + 734 + OFFSET_X, 1, -256.8, -211 , 0 );
setMoveKey( spep_2 + 735 + OFFSET_X, 1, -256.8, -211 , 0 );
setMoveKey( spep_2 + 736 + OFFSET_X, 1, -473.7, -322.9 , 0 );
setMoveKey( spep_2 + 737 + OFFSET_X, 1, -473.7, -322.9 , 0 );
setMoveKey( spep_2 + 738 + OFFSET_X, 1, -782.8, -735.4 , 0 );
setMoveKey( spep_2 + 739 + OFFSET_X, 1, -782.8, -735.4 , 0 );
setMoveKey( spep_2 + 740 + OFFSET_X, 1, -1266.1, -1266 , 0 );
setMoveKey( spep_2 + 742 + OFFSET_X, 1, -1266.1, -1266 , 0 );

setScaleKey( spep_2 + 730 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 733 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 734 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 735 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 736 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 737 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 738 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 739 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 740 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 742 + OFFSET_X, 1, 3.49, 3.49 );

setRotateKey( spep_2 + 730 + OFFSET_X, 1, -58.4 );
setRotateKey( spep_2 + 742 + OFFSET_X, 1, -58.4 );

--敵の動き10
setDisp( spep_2 + 760 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 798 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 760 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 760 + OFFSET_X, 1, -323.6, 122.5 , 0 );
setMoveKey( spep_2 + 761 + OFFSET_X, 1, -323.6, 122.5 , 0 );
setMoveKey( spep_2 + 762 + OFFSET_X, 1, -154, 47.1 , 0 );
setMoveKey( spep_2 + 763 + OFFSET_X, 1, -154, 47.1 , 0 );
setMoveKey( spep_2 + 764 + OFFSET_X, 1, -106.4, 25.8 , 0 );
setMoveKey( spep_2 + 765 + OFFSET_X, 1, -106.4, 25.8 , 0 );
setMoveKey( spep_2 + 766 + OFFSET_X, 1, -77.3, 12.9 , 0 );
setMoveKey( spep_2 + 767 + OFFSET_X, 1, -77.3, 12.9 , 0 );
setMoveKey( spep_2 + 768 + OFFSET_X, 1, -57.3, 4 , 0 );
setMoveKey( spep_2 + 769 + OFFSET_X, 1, -57.3, 4 , 0 );
setMoveKey( spep_2 + 770 + OFFSET_X, 1, -42.8, -2.5 , 0 );
setMoveKey( spep_2 + 771 + OFFSET_X, 1, -42.8, -2.5 , 0 );
setMoveKey( spep_2 + 772 + OFFSET_X, 1, -31.9, -7.3 , 0 );
setMoveKey( spep_2 + 773 + OFFSET_X, 1, -31.9, -7.3 , 0 );
setMoveKey( spep_2 + 774 + OFFSET_X, 1, -23.6, -11 , 0 );
setMoveKey( spep_2 + 775 + OFFSET_X, 1, -23.6, -11 , 0 );
setMoveKey( spep_2 + 776 + OFFSET_X, 1, -17.2, -13.9 , 0 );
setMoveKey( spep_2 + 777 + OFFSET_X, 1, -17.2, -13.9 , 0 );
setMoveKey( spep_2 + 778 + OFFSET_X, 1, -12.2, -16.1 , 0 );
setMoveKey( spep_2 + 779 + OFFSET_X, 1, -12.2, -16.1 , 0 );
setMoveKey( spep_2 + 780 + OFFSET_X, 1, -8.4, -17.8 , 0 );
setMoveKey( spep_2 + 781 + OFFSET_X, 1, -8.4, -17.8 , 0 );
setMoveKey( spep_2 + 782 + OFFSET_X, 1, -5.4, -19.1 , 0 );
setMoveKey( spep_2 + 783 + OFFSET_X, 1, -5.4, -19.1 , 0 );
setMoveKey( spep_2 + 784 + OFFSET_X, 1, -3.1, -20.1 , 0 );
setMoveKey( spep_2 + 785 + OFFSET_X, 1, -3.1, -20.1 , 0 );
setMoveKey( spep_2 + 786 + OFFSET_X, 1, -1.4, -20.9 , 0 );
setMoveKey( spep_2 + 787 + OFFSET_X, 1, -1.4, -20.9 , 0 );
setMoveKey( spep_2 + 788 + OFFSET_X, 1, -0.2, -21.5 , 0 );
setMoveKey( spep_2 + 789 + OFFSET_X, 1, -0.2, -21.5 , 0 );
setMoveKey( spep_2 + 790 + OFFSET_X, 1, 0.8, -21.9 , 0 );
setMoveKey( spep_2 + 791 + OFFSET_X, 1, 0.8, -21.9 , 0 );
setMoveKey( spep_2 + 792 + OFFSET_X, 1, 1.4, -22.2 , 0 );
setMoveKey( spep_2 + 793 + OFFSET_X, 1, 1.4, -22.2 , 0 );
setMoveKey( spep_2 + 794 + OFFSET_X, 1, 1.9, -22.4 , 0 );
setMoveKey( spep_2 + 795 + OFFSET_X, 1, 1.9, -22.4 , 0 );
setMoveKey( spep_2 + 796 + OFFSET_X, 1, 2.1, -22.5 , 0 );
setMoveKey( spep_2 + 797 + OFFSET_X, 1, 2.1, -22.5 , 0 );
setMoveKey( spep_2 + 798 + OFFSET_X, 1, 2.3, -22.6 , 0 );

setScaleKey( spep_2 + 760 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_2 + 761 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_2 + 762 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 763 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 764 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 765 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 766 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 767 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 768 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 769 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 770 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 771 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 772 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 773 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 774 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 775 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 776 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 777 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 778 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 779 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 780 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 781 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 782 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 783 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 784 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 785 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 786 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 787 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 788 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 789 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 790 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 791 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 792 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 793 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 794 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 797 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 798 + OFFSET_X, 1, 0.02, 0.02 );

setRotateKey( spep_2 + 760 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 761 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 762 + OFFSET_X, 1, 89.9 );
setRotateKey( spep_2 + 765 + OFFSET_X, 1, 89.9 );
setRotateKey( spep_2 + 766 + OFFSET_X, 1, 89.8 );
setRotateKey( spep_2 + 798 + OFFSET_X, 1, 89.8 );

-- ** 音 ** --

--振りかぶる
SE014 = playSeVer2( spep_2 + 6, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 14, 1182, "", 0, 14, 0, -1);
setStartTimeMs( SE015, 133 );
SE016 = playSeVer2( spep_2 + 6, 1497, "", 0, 0, 0, -1);
setPitch( spep_2 + 6, SE016, -1200 );
setTimeStretch( SE016, 0.2, 30, 4 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);

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

--敵飛んでいく
SE012 = playSeVer2( spep_2 + 66, 1278, "",spep_2 + 170, 30, 50, -1);
setSeVolumeByWorkId( spep_2 + 66, SE012, 71 );
setStartTimeMs( SE012, 1300 );
--殴る
SE017 = playSeVer2( spep_2 + 56, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE017, 155 );
SE018 = playSeVer2( spep_2 + 62, 1187, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 62, 1359, "", 0, 0, 0, -1);
--敵飛んでいく
SE020 = playSeVer2( spep_2 + 84, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE020, 141 );
--雪山中
SE021 = playSeVer2( spep_2 + 118, 1250, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE021, 178 );
setStartTimeMs( SE021, 333 );
--雪山激突
SE022 = playSeVer2( spep_2 + 120, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE022, 89 );
SE023 = playSeVer2( spep_2 + 120, 1159, "", 660, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 120, SE023, 63 );
--雪山中
SE024 = playSeVer2( spep_2 + 148, 1226, "",spep_2 + 564, 0, 78, -1);
--追いかける
SE025 = playSeVer2( spep_2 + 204, 1304, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 204, 1182, "", 0, 0, 0, -1);
--雪山中
SE027 = playSeVer2( spep_2 + 248, 1250, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_2 + 248, SE027, 178 );
setStartTimeMs( SE027, 333 );
--追いかける
SE028 = playSeVer2( spep_2 + 250, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE028, 79 );
--加速
SE029 = playSeVer2( spep_2 + 302, 1277, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 302, 1002, "", 0, 0, 0, -1);
--追いかける２
SE031 = playSeVer2( spep_2 + 310, 1183, "", 710, 0, 20, -1);
SE032 = playSeVer2( spep_2 + 334, 1167, "", 710, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 334, SE032, 50 );
setTimeStretch( SE032, 2, 30, 4 );
--振りかぶる
SE033 = playSeVer2( spep_2 + 416, 1004, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 446, 1116, "",spep_2 + 496, 0, 26, -1);
--パンチ
SE035 = playSeVer2( spep_2 + 490, 1153, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 490, 1187, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 490, 1359, "", 0, 0, 0, -1);
--雪山から出る
SE038 = playSeVer2( spep_2 + 518, 1061, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 518, 1159, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 562, 1067, "", 0, 0, 0, -1);
--瞬間移動
SE041 = playSeVer2( spep_2 + 594, 1109, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 594, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 594, SE042, 71 );
SE043 = playSeVer2( spep_2 + 628, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 628, SE043, 71 );
SE044 = playSeVer2( spep_2 + 628, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 628, SE044, 71 );
--振りかぶる
SE045 = playSeVer2( spep_2 + 662, 1167, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 662, 1117, "",spep_2 + 736, 0, 32, -1);
--叩きつける
SE047 = playSeVer2( spep_2 + 714, 1123, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 714, 1049, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 718, 1187, "", 0, 0, 0, -1);
--敵落ちていく
SE050 = playSeVer2( spep_2 + 752, 1121, "",spep_2 + 846, 0, 30, -1);
--地面激突
SE051 = playSeVer2( spep_2 + 810, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 808); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 924

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕、咆哮して突進
-------------------------------------------------
MAX_FRAME_0 = 176;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕、咆哮して突進 ef_001
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 26;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -100, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -100, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -100, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 210, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
--顔カットイン
--SE003 = playSeVer2( spep_0 + 12, 1018, "", 0, 0, 0, -1);
--構える
SE004 = playSeVer2( spep_0 + 22, 1330, "",spep_0 + 86, 0, 32, -1);
SE005 = playSeVer2( spep_0 + 42, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE005, 79 );
--向かってくる
SE006 = playSeVer2( spep_0 + 110, 1068, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 110, 1117, "",spep_0 + 208, 0, 22, -1);
SE008 = playSeVer2( spep_0 + 110, 1182, "",spep_0 + 208, 0, 24, -1);
SE009 = playSeVer2( spep_0 + 110, 1304, "",spep_0 + 208, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 110, SE009, 66 );
SE010 = playSeVer2( spep_0 + 140, 1066, "",spep_0 + 206, 0, 24, -1);



-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 176

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--振りかぶる
SE013 = playSeVer2( spep_1 + 88, 1116, "",spep_1 + 166, 0, 58, -1);

-------------------------------------------------
-- 殴りから氷山突撃、スレッジハンマー
-------------------------------------------------
MAX_FRAME_2 = 924;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 殴りから氷山突撃、スレッジハンマー(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ↑背景部分(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --


--敵の動き1

setDisp( spep_2 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 122 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 74 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, 81.5, -76.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 81.5, -76.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 45.1, -6.1 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 45.1, -6.1 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 39.5, -73.3 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 39.5, -73.3 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 148.7, 13.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 148.7, 13.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 92.7, -70.5 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 92.7, -70.5 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 64.7, 13.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 64.7, 13.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 56.3, -6.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 56.3, -6.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -32.3, 63.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -32.3, 63.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -30.1, 58.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -30.1, 58.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -25.5, 47.8 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -25.5, 47.8 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -18.7, 31.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -18.7, 31.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -15.4, 24.2 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -15.4, 24.2 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -13.8, 20.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -13.8, 20.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -12.7, 17.9 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -12.7, 17.9 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -12, 16.2 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -12, 16.2 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -11.5, 15 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -11.5, 15 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -11.1, 14.1 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -11.1, 14.1 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -10.9, 13.5 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -10.9, 13.5 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -10.7, 13 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -10.7, 13 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -10.5, 12.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -10.5, 12.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -10.5, 12.5 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -10.5, 12.5 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -10.4, 12.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -10.4, 12.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -9.9, 13.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -9.9, 13.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -9.5, 13.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -9.5, 13.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -9, 14.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -9, 14.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -8.6, 15.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -8.6, 15.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -8.1, 16 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -8.1, 16 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -7.7, 16.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -7.7, 16.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -7.2, 17.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -7.2, 17.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -6.8, 18.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -6.8, 18.1 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.05, 0.05 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, 84 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 84 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 224 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 260 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 224 + OFFSET_X, 1, -17.8, -118.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -17.8, -118.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -10.3, -77.4 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -10.3, -77.4 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -22.5, -26.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -22.5, -26.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -6.7, -42.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -6.7, -42.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -5.7, -29.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -5.7, -29.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -21.7, -42.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -21.7, -42.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -19.6, -34.5 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -19.6, -34.5 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -5.8, -43.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -5.8, -43.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -3, -44 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -3, -44 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -14.3, -37.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -14.3, -37.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -15.7, -44 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -15.7, -44 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -1.2, -58 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -1.2, -58 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -12.5, -26.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -12.5, -26.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -21.5, -32.6 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -21.5, -32.6 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -22.6, -24.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -22.6, -24.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -14.1, -35.5 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -14.1, -35.5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -16.7, -24.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -16.7, -24.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -26.6, -34.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -26.6, -34.4 , 0 );

setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_2 + 224 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 0 );

--敵の動き3
setDisp( spep_2 + 284 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 322 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 284 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 284 + OFFSET_X, 1, -294.3, 42.4 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -294.3, 42.4 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -294.3, 52.9 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -294.3, 52.9 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -302.7, 46.6 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -302.7, 46.6 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -305.8, 50.8 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -305.8, 50.8 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -301.6, 44.5 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -301.6, 44.5 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -301.6, 47.6 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -301.6, 47.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -302.7, 43.4 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -302.7, 43.4 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -318.4, 30.8 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -318.4, 30.8 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -288, 62.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -288, 62.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -311.1, 50.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -311.1, 50.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -291.1, 30.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -291.1, 30.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -315.3, 52.9 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -315.3, 52.9 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -282.7, 27.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -282.7, 27.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -298.5, 72.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -298.5, 72.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -297.4, 35 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -297.4, 35 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -303.7, 55 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -303.7, 55 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -293.2, 41.3 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -293.2, 41.3 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -294.3, 49.7 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -294.3, 49.7 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -295.3, 38.2 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -295.3, 38.2 , 0 );

setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_2 + 284 + OFFSET_X, 1, -56.4 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -56.4 );

--敵の動き4
setDisp( spep_2 + 434 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 454 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 434 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 448 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 434 + OFFSET_X, 1, 142.3, 70 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 142.3, 70 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 123.2, 62.7 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 123.2, 62.7 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 103.7, 23.6 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 103.7, 23.6 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 114.4, -5.2 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 114.4, -5.2 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 21.4, -105.7 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 21.4, -105.7 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 2.3, -161.1 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 2.3, -161.1 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -135.7, -317.7 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -135.7, -317.7 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -301, -183.8 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -301, -183.8 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -462.3, -209 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -462.3, -209 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -623.9, -238.3 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -623.9, -238.3 , 0 );

setScaleKey( spep_2 + 434 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 5.79, 5.79 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 5.79, 5.79 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 8, 8 );

setRotateKey( spep_2 + 434 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, -64 );


--敵の動き5
setDisp( spep_2 + 472 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 500 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 472 + OFFSET_X, 1, -495.2, 418.4 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -495.2, 418.4 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -194.6, 297 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -194.6, 297 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -194.6, 159 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -194.6, 159 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -194.6, 297 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -194.6, 297 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -420.1, 54.2 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -420.1, 54.2 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -269.8, -67.2 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -269.8, -67.2 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -344.9, 175.6 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -344.9, 175.6 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -344.9, 37.6 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -344.9, 37.6 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -414, 658.6 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -414, 658.6 , 0 );

setScaleKey( spep_2 + 472 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_2 + 485 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_2 + 486 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 500 + OFFSET_X, 1, 5, 5 );

setRotateKey( spep_2 + 472 + OFFSET_X, 1, -78 );
setRotateKey( spep_2 + 495 + OFFSET_X, 1, -78 );
setRotateKey( spep_2 + 496 + OFFSET_X, 1, -91 );
setRotateKey( spep_2 + 500 + OFFSET_X, 1, -91 );



--敵の動き6
setDisp( spep_2 + 562 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 596 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 562 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 572 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 562 + OFFSET_X, 1, -18.8, -11.1 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -18.8, -11.1 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -64.3, -98.3 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -64.3, -98.3 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -129.6, -244.5 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, -129.6, -244.5 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -145.3, -328.9 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, -145.3, -328.9 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -211.9, -250.8 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, -211.9, -250.8 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, -327.7, -173.9 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, -327.7, -173.9 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -404.7, -289.4 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, -404.7, -289.4 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -520.2, -250.9 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, -520.2, -250.9 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, -481.7, -289.4 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -481.7, -289.4 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -289.2, -96.9 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -289.2, -96.9 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -327.7, -173.9 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, -327.7, -173.9 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, -96.7, 18.6 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, -96.7, 18.6 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, -96.7, -31.5 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, -96.7, -31.5 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 338.4, 176.4 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 338.4, 176.4 , 0 );

setScaleKey( spep_2 + 562 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 563 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 564 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 16.5, 16.5 );
setScaleKey( spep_2 + 567 + OFFSET_X, 1, 16.5, 16.5 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 20, 20 );
setScaleKey( spep_2 + 571 + OFFSET_X, 1, 20, 20 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 573 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 574 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 596 + OFFSET_X, 1, 3.9, 3.9 );

setRotateKey( spep_2 + 562 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 571 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 572 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 596 + OFFSET_X, 1, 6.8 );


--敵の動き7
setDisp( spep_2 + 612 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 656 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 612 + OFFSET_X, 1, 492, 330.3 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 492, 330.3 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 484.3, 338 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 484.3, 338 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 141.6, 110.9 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 141.6, 110.9 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 145.5, 122.4 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, 145.5, 122.4 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, -9, 111.6 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, -9, 111.6 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 37.5, 171.3 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, 37.5, 171.3 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, 47.4, 184.2 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 47.4, 184.2 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 52.4, 190.6 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, 52.4, 190.6 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 55.3, 194.3 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 55.3, 194.3 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, 57.1, 196.7 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 57.1, 196.7 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, 58.6, 198.5 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 58.6, 198.5 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 59.9, 200.2 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 59.9, 200.2 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 61.4, 202.1 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 61.4, 202.1 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, 63.1, 204.4 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, 63.1, 204.4 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, 65.3, 207.2 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, 65.3, 207.2 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 68.1, 210.7 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, 68.1, 210.7 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, 71.4, 215.1 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, 71.4, 215.1 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, 75.5, 220.3 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 75.5, 220.3 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 80.4, 226.6 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, 80.4, 226.6 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, 86.1, 234 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, 86.1, 234 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 92.8, 242.5 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 92.8, 242.5 , 0 );

setScaleKey( spep_2 + 612 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 621 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 622 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 623 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 624 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 625 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 626 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 627 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 628 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 629 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 630 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 631 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 632 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 633 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 634 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 635 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 636 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 637 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 638 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 639 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 640 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 641 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 642 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 643 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 644 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 645 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 646 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 647 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 648 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 649 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 650 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 651 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 652 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 653 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 654 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 656 + OFFSET_X, 1, 1.1, 1.1 );

setRotateKey( spep_2 + 612 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 623 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 624 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 625 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 626 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_2 + 627 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_2 + 628 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 629 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 630 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 631 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 632 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_2 + 633 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_2 + 634 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 635 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 636 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 637 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 638 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 639 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 640 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 641 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 642 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 643 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 644 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 645 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 646 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 647 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 648 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 649 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 651 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 652 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_2 + 653 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_2 + 654 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 656 + OFFSET_X, 1, 0.5 );



--敵の動き8
setDisp( spep_2 + 702 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 720 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 702 + OFFSET_X, 1, -577.8, -1016.7 , 0 );
setMoveKey( spep_2 + 703 + OFFSET_X, 1, -577.8, -1016.7 , 0 );
setMoveKey( spep_2 + 704 + OFFSET_X, 1, -467.6, -833.3 , 0 );
setMoveKey( spep_2 + 705 + OFFSET_X, 1, -467.6, -833.3 , 0 );
setMoveKey( spep_2 + 706 + OFFSET_X, 1, -357.4, -650 , 0 );
setMoveKey( spep_2 + 707 + OFFSET_X, 1, -357.4, -650 , 0 );
setMoveKey( spep_2 + 708 + OFFSET_X, 1, -272.6, -508.9 , 0 );
setMoveKey( spep_2 + 709 + OFFSET_X, 1, -272.6, -508.9 , 0 );
setMoveKey( spep_2 + 710 + OFFSET_X, 1, -394.4, -674.2 , 0 );
setMoveKey( spep_2 + 711 + OFFSET_X, 1, -394.4, -674.2 , 0 );
setMoveKey( spep_2 + 712 + OFFSET_X, 1, -391.3, -670.6 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, -391.3, -670.6 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, -388.2, -666.9 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, -388.2, -666.9 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, -385, -663.2 , 0 );
setMoveKey( spep_2 + 717 + OFFSET_X, 1, -385, -663.2 , 0 );
setMoveKey( spep_2 + 718 + OFFSET_X, 1, -381.9, -659.6 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, -381.9, -659.6 , 0 );

setScaleKey( spep_2 + 702 + OFFSET_X, 1, 11.17, 11.15 );
setScaleKey( spep_2 + 703 + OFFSET_X, 1, 11.17, 11.15 );
setScaleKey( spep_2 + 704 + OFFSET_X, 1, 12.31, 12.3 );
setScaleKey( spep_2 + 705 + OFFSET_X, 1, 12.31, 12.3 );
setScaleKey( spep_2 + 706 + OFFSET_X, 1, 13.46, 13.44 );
setScaleKey( spep_2 + 707 + OFFSET_X, 1, 13.46, 13.44 );
setScaleKey( spep_2 + 708 + OFFSET_X, 1, 14.34, 14.32 );
setScaleKey( spep_2 + 711 + OFFSET_X, 1, 14.34, 14.32 );
setScaleKey( spep_2 + 712 + OFFSET_X, 1, 14.56, 14.54 );
setScaleKey( spep_2 + 713 + OFFSET_X, 1, 14.56, 14.54 );
setScaleKey( spep_2 + 714 + OFFSET_X, 1, 14.78, 14.76 );
setScaleKey( spep_2 + 715 + OFFSET_X, 1, 14.78, 14.76 );
setScaleKey( spep_2 + 716 + OFFSET_X, 1, 15, 14.98 );
setScaleKey( spep_2 + 717 + OFFSET_X, 1, 15, 14.98 );
setScaleKey( spep_2 + 718 + OFFSET_X, 1, 15.22, 15.2 );
setScaleKey( spep_2 + 720 + OFFSET_X, 1, 15.22, 15.2 );

setRotateKey( spep_2 + 702 + OFFSET_X, 1, -51 );
setRotateKey( spep_2 + 720 + OFFSET_X, 1, -51 );

--敵の動き9
setDisp( spep_2 + 730 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 742 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 730 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 730 + OFFSET_X, 1, -96.5, -10.6 , 0 );
setMoveKey( spep_2 + 731 + OFFSET_X, 1, -96.5, -10.6 , 0 );
setMoveKey( spep_2 + 732 + OFFSET_X, 1, -122.4, 81.6 , 0 );
setMoveKey( spep_2 + 733 + OFFSET_X, 1, -122.4, 81.6 , 0 );
setMoveKey( spep_2 + 734 + OFFSET_X, 1, -256.8, -211 , 0 );
setMoveKey( spep_2 + 735 + OFFSET_X, 1, -256.8, -211 , 0 );
setMoveKey( spep_2 + 736 + OFFSET_X, 1, -473.7, -322.9 , 0 );
setMoveKey( spep_2 + 737 + OFFSET_X, 1, -473.7, -322.9 , 0 );
setMoveKey( spep_2 + 738 + OFFSET_X, 1, -782.8, -735.4 , 0 );
setMoveKey( spep_2 + 739 + OFFSET_X, 1, -782.8, -735.4 , 0 );
setMoveKey( spep_2 + 740 + OFFSET_X, 1, -1266.1, -1266 , 0 );
setMoveKey( spep_2 + 742 + OFFSET_X, 1, -1266.1, -1266 , 0 );

setScaleKey( spep_2 + 730 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 733 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 734 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 735 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 736 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 737 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 738 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 739 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 740 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 742 + OFFSET_X, 1, 3.49, 3.49 );

setRotateKey( spep_2 + 730 + OFFSET_X, 1, -58.4 );
setRotateKey( spep_2 + 742 + OFFSET_X, 1, -58.4 );

--敵の動き10
setDisp( spep_2 + 760 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 798 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 760 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 760 + OFFSET_X, 1, -323.6, 122.5 , 0 );
setMoveKey( spep_2 + 761 + OFFSET_X, 1, -323.6, 122.5 , 0 );
setMoveKey( spep_2 + 762 + OFFSET_X, 1, -154, 47.1 , 0 );
setMoveKey( spep_2 + 763 + OFFSET_X, 1, -154, 47.1 , 0 );
setMoveKey( spep_2 + 764 + OFFSET_X, 1, -106.4, 25.8 , 0 );
setMoveKey( spep_2 + 765 + OFFSET_X, 1, -106.4, 25.8 , 0 );
setMoveKey( spep_2 + 766 + OFFSET_X, 1, -77.3, 12.9 , 0 );
setMoveKey( spep_2 + 767 + OFFSET_X, 1, -77.3, 12.9 , 0 );
setMoveKey( spep_2 + 768 + OFFSET_X, 1, -57.3, 4 , 0 );
setMoveKey( spep_2 + 769 + OFFSET_X, 1, -57.3, 4 , 0 );
setMoveKey( spep_2 + 770 + OFFSET_X, 1, -42.8, -2.5 , 0 );
setMoveKey( spep_2 + 771 + OFFSET_X, 1, -42.8, -2.5 , 0 );
setMoveKey( spep_2 + 772 + OFFSET_X, 1, -31.9, -7.3 , 0 );
setMoveKey( spep_2 + 773 + OFFSET_X, 1, -31.9, -7.3 , 0 );
setMoveKey( spep_2 + 774 + OFFSET_X, 1, -23.6, -11 , 0 );
setMoveKey( spep_2 + 775 + OFFSET_X, 1, -23.6, -11 , 0 );
setMoveKey( spep_2 + 776 + OFFSET_X, 1, -17.2, -13.9 , 0 );
setMoveKey( spep_2 + 777 + OFFSET_X, 1, -17.2, -13.9 , 0 );
setMoveKey( spep_2 + 778 + OFFSET_X, 1, -12.2, -16.1 , 0 );
setMoveKey( spep_2 + 779 + OFFSET_X, 1, -12.2, -16.1 , 0 );
setMoveKey( spep_2 + 780 + OFFSET_X, 1, -8.4, -17.8 , 0 );
setMoveKey( spep_2 + 781 + OFFSET_X, 1, -8.4, -17.8 , 0 );
setMoveKey( spep_2 + 782 + OFFSET_X, 1, -5.4, -19.1 , 0 );
setMoveKey( spep_2 + 783 + OFFSET_X, 1, -5.4, -19.1 , 0 );
setMoveKey( spep_2 + 784 + OFFSET_X, 1, -3.1, -20.1 , 0 );
setMoveKey( spep_2 + 785 + OFFSET_X, 1, -3.1, -20.1 , 0 );
setMoveKey( spep_2 + 786 + OFFSET_X, 1, -1.4, -20.9 , 0 );
setMoveKey( spep_2 + 787 + OFFSET_X, 1, -1.4, -20.9 , 0 );
setMoveKey( spep_2 + 788 + OFFSET_X, 1, -0.2, -21.5 , 0 );
setMoveKey( spep_2 + 789 + OFFSET_X, 1, -0.2, -21.5 , 0 );
setMoveKey( spep_2 + 790 + OFFSET_X, 1, 0.8, -21.9 , 0 );
setMoveKey( spep_2 + 791 + OFFSET_X, 1, 0.8, -21.9 , 0 );
setMoveKey( spep_2 + 792 + OFFSET_X, 1, 1.4, -22.2 , 0 );
setMoveKey( spep_2 + 793 + OFFSET_X, 1, 1.4, -22.2 , 0 );
setMoveKey( spep_2 + 794 + OFFSET_X, 1, 1.9, -22.4 , 0 );
setMoveKey( spep_2 + 795 + OFFSET_X, 1, 1.9, -22.4 , 0 );
setMoveKey( spep_2 + 796 + OFFSET_X, 1, 2.1, -22.5 , 0 );
setMoveKey( spep_2 + 797 + OFFSET_X, 1, 2.1, -22.5 , 0 );
setMoveKey( spep_2 + 798 + OFFSET_X, 1, 2.3, -22.6 , 0 );

setScaleKey( spep_2 + 760 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_2 + 761 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_2 + 762 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 763 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 764 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 765 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 766 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 767 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 768 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 769 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 770 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 771 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 772 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 773 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 774 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 775 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 776 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 777 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 778 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 779 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 780 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 781 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 782 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 783 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 784 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 785 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 786 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 787 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 788 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 789 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 790 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 791 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 792 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 793 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 794 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 797 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 798 + OFFSET_X, 1, 0.02, 0.02 );

setRotateKey( spep_2 + 760 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 761 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 762 + OFFSET_X, 1, 89.9 );
setRotateKey( spep_2 + 765 + OFFSET_X, 1, 89.9 );
setRotateKey( spep_2 + 766 + OFFSET_X, 1, 89.8 );
setRotateKey( spep_2 + 798 + OFFSET_X, 1, 89.8 );

-- ** 音 ** --

--振りかぶる
SE014 = playSeVer2( spep_2 + 6, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 14, 1182, "", 0, 14, 0, -1);
setStartTimeMs( SE015, 133 );
SE016 = playSeVer2( spep_2 + 6, 1497, "", 0, 0, 0, -1);
setPitch( spep_2 + 6, SE016, -1200 );
setTimeStretch( SE016, 0.2, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);

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

--敵飛んでいく
SE012 = playSeVer2( spep_2 + 66, 1278, "",spep_2 + 170, 30, 50, -1);
setSeVolumeByWorkId( spep_2 + 66, SE012, 71 );
setStartTimeMs( SE012, 1300 );
--殴る
SE017 = playSeVer2( spep_2 + 56, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE017, 155 );
SE018 = playSeVer2( spep_2 + 62, 1187, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 62, 1359, "", 0, 0, 0, -1);
--敵飛んでいく
SE020 = playSeVer2( spep_2 + 84, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE020, 141 );
--雪山中
SE021 = playSeVer2( spep_2 + 118, 1250, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE021, 178 );
setStartTimeMs( SE021, 333 );
--雪山激突
SE022 = playSeVer2( spep_2 + 120, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE022, 89 );
SE023 = playSeVer2( spep_2 + 120, 1159, "", 660, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 120, SE023, 63 );
--雪山中
SE024 = playSeVer2( spep_2 + 148, 1226, "",spep_2 + 564, 0, 78, -1);
--追いかける
SE025 = playSeVer2( spep_2 + 204, 1304, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 204, 1182, "", 0, 0, 0, -1);
--雪山中
SE027 = playSeVer2( spep_2 + 248, 1250, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_2 + 248, SE027, 178 );
setStartTimeMs( SE027, 333 );
--追いかける
SE028 = playSeVer2( spep_2 + 250, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE028, 79 );
--加速
SE029 = playSeVer2( spep_2 + 302, 1277, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 302, 1002, "", 0, 0, 0, -1);
--追いかける２
SE031 = playSeVer2( spep_2 + 310, 1183, "", 710, 0, 20, -1);
SE032 = playSeVer2( spep_2 + 334, 1167, "", 710, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 334, SE032, 50 );
setTimeStretch( SE032, 2, 30, 4 );
--振りかぶる
SE033 = playSeVer2( spep_2 + 416, 1004, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 446, 1116, "",spep_2 + 496, 0, 26, -1);
--パンチ
SE035 = playSeVer2( spep_2 + 490, 1153, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 490, 1187, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 490, 1359, "", 0, 0, 0, -1);
--雪山から出る
SE038 = playSeVer2( spep_2 + 518, 1061, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 518, 1159, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 562, 1067, "", 0, 0, 0, -1);
--瞬間移動
SE041 = playSeVer2( spep_2 + 594, 1109, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 594, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 594, SE042, 71 );
SE043 = playSeVer2( spep_2 + 628, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 628, SE043, 71 );
SE044 = playSeVer2( spep_2 + 628, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 628, SE044, 71 );
--振りかぶる
SE045 = playSeVer2( spep_2 + 662, 1167, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 662, 1117, "",spep_2 + 736, 0, 32, -1);
--叩きつける
SE047 = playSeVer2( spep_2 + 714, 1123, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 714, 1049, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 718, 1187, "", 0, 0, 0, -1);
--敵落ちていく
SE050 = playSeVer2( spep_2 + 752, 1121, "",spep_2 + 846, 0, 30, -1);
--地面激突
SE051 = playSeVer2( spep_2 + 810, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 808); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 924


end