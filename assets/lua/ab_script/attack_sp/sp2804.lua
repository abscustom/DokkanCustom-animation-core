--1030400:SSR_孫悟空_必殺技：かめはめ波
--sp_effect_a1_00469
--sp2804

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 163436; --登場〜ため ef_001
SP_02  = 163437; --かめはめ波 ef_002
SP_02b = 163438; --かめはめ波_裏側 ef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_1 = spep_0 + 184;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 100- 1);  -- スキップ先フレーム指定

        --かめはめ波飛んでいく
        SE010 = playSeVer2( spep_2 + 100 + 1, 1133, "", 0, 0, 0, -1);
        SE011 = playSeVer2( spep_2 + 100 + 1, 1146, "",spep_2 + 190, 0, 20, -1);
        setStartTimeMs(SE011,600);
        SE012 = playSeVer2( spep_2 + 100 + 1, 1213, "",spep_2 + 196, 0, 26, -1);
        setStartTimeMs(SE012,600);
        SE013 = playSeVer2( spep_2 + 100 + 1, 1211, "",spep_2 + 184, 0, 16, -1);
        setSeVolumeByWorkId( spep_2 + 100 + 1, SE013, 257 );
        SE014 = playSeVer2( spep_2 + 100 + 1, 1021, "", 0, 0, 0, -1);

    else end
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場〜ため
-------------------------------------------------
MAX_FRAME_0 = 184;

-- ** エフェクト等 ** --
start_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場〜ため(ef_001)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 115, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 115, 515.5 , 0 );
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


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 206, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--ズーム
SE003 = playSeVer2( spep_0 + 40, 1072, "", 0, 0, 0, -1);

--かめはめ波溜め
SE004 = playSeVer2( spep_0 + 76, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 76, 1209, "",spep_0 + 204, 0, 14, -1);
SE006 = playSeVer2( spep_0 + 76, 1210, "",spep_0 + 202, 0, 12, -1);
SE007 = playSeVer2( spep_0 + 76, 1356, "",spep_0 + 202, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 76, SE007, 65 );
SE008 = playSeVer2( spep_0 + 76, 1176, "",spep_0 + 202, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 76, SE008, 72 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 184f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- かめはめ波
-------------------------------------------------
MAX_FRAME_2 = 290;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ波_裏側(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 146 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 100 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 126 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, 74.3, -68.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 74.3, -68.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 78.2, -64 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 78.2, -64 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 82.1, -59.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 82.1, -59.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 85.9, -55.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 85.9, -55.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 89.8, -51.7 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 89.8, -51.7 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 93.7, -47.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 93.7, -47.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 97.6, -43.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 97.6, -43.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 101.4, -39.5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 101.4, -39.5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 105.3, -35.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 105.3, -35.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 109.2, -31.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 109.2, -31.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 113.1, -27.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 113.1, -27.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 116.9, -23.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 116.9, -23.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 120.8, -19.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 120.8, -19.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 190.3, 55.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 190.3, 55.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 167.6, 20 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 167.6, 20 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 179.7, 57.6 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 179.7, 57.6 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 163.9, 29.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 163.9, 29.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 209, 53.1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 209, 53.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 181.1, 17.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 181.1, 17.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 170.5, 64.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 170.5, 64.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 213.9, 30.6 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 213.9, 30.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 214.1, 65 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 214.1, 65 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 157.4, 30.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 157.4, 30.9 , 0 );

setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.82, 0.82 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -16.6 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -16.6 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -18 );

-- ** 音 ** --
--かめはめ波発射
SE010 = playSeVer2( spep_2 + 8, 1133, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 8, 1146, "",spep_2 + 190, 0, 20, -1);
SE012 = playSeVer2( spep_2 + 8, 1213, "",spep_2 + 196, 0, 26, -1);

--かめはめ波飛んでいく
SE013 = playSeVer2( spep_2 + 40, 1211, "",spep_2 + 184, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 40, SE013, 257 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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
--かめはめ波飛んでいく
SE014 = playSeVer2( spep_2 + 96, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE015 = playSeVer2( spep_2 + 122, 1011, "", 0, 0, 0, -1);

--爆発予兆
SE016 = playSeVer2( spep_2 + 150, 1157, "",spep_2 + 216, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 150, SE016, 75 );
SE017 = playSeVer2( spep_2 + 162, 1305, "",spep_2 + 212, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 162, SE017, 79 );
SE018 = playSeVer2( spep_2 + 198, 1067, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 198, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 194); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 290f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場〜ため
-------------------------------------------------
MAX_FRAME_0 = 184;

-- ** エフェクト等 ** --
start_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場〜ため(ef_001)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -115, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -115, 515.5 , 0 );
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


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 206, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--ズーム
SE003 = playSeVer2( spep_0 + 40, 1072, "", 0, 0, 0, -1);

--かめはめ波溜め
SE004 = playSeVer2( spep_0 + 76, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 76, 1209, "",spep_0 + 204, 0, 14, -1);
SE006 = playSeVer2( spep_0 + 76, 1210, "",spep_0 + 202, 0, 12, -1);
SE007 = playSeVer2( spep_0 + 76, 1356, "",spep_0 + 202, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 76, SE007, 65 );
SE008 = playSeVer2( spep_0 + 76, 1176, "",spep_0 + 202, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 76, SE008, 72 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 184f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- かめはめ波
-------------------------------------------------
MAX_FRAME_2 = 290;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ波_裏側(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 146 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 100 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 126 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, -74.3, -68.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -74.3, -68.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -78.2, -64 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -78.2, -64 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -82.1, -59.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -82.1, -59.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -85.9, -55.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -85.9, -55.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -89.8, -51.7 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -89.8, -51.7 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -93.7, -47.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -93.7, -47.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -97.6, -43.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -97.6, -43.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -101.4, -39.5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -101.4, -39.5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -105.3, -35.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -105.3, -35.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -109.2, -31.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -109.2, -31.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -113.1, -27.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -113.1, -27.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -116.9, -23.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -116.9, -23.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -120.8, -19.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -120.8, -19.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -190.3, 55.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -190.3, 55.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -167.6, 20 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -167.6, 20 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -179.7, 57.6 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -179.7, 57.6 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -163.9, 29.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -163.9, 29.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -209, 53.1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -209, 53.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -181.1, 17.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -181.1, 17.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -170.5, 64.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -170.5, 64.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -213.9, 30.6 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -213.9, 30.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -214.1, 65 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -214.1, 65 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -157.4, 30.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -157.4, 30.9 , 0 );

setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.82, 0.82 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 18 );

-- ** 音 ** --
--かめはめ波発射
SE010 = playSeVer2( spep_2 + 8, 1133, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 8, 1146, "",spep_2 + 190, 0, 20, -1);
SE012 = playSeVer2( spep_2 + 8, 1213, "",spep_2 + 196, 0, 26, -1);

--かめはめ波飛んでいく
SE013 = playSeVer2( spep_2 + 40, 1211, "",spep_2 + 184, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 40, SE013, 257 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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
--かめはめ波飛んでいく
SE014 = playSeVer2( spep_2 + 96, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE015 = playSeVer2( spep_2 + 122, 1011, "", 0, 0, 0, -1);

--爆発予兆
SE016 = playSeVer2( spep_2 + 150, 1157, "",spep_2 + 216, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 150, SE016, 75 );
SE017 = playSeVer2( spep_2 + 162, 1305, "",spep_2 + 212, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 162, SE017, 79 );
SE018 = playSeVer2( spep_2 + 198, 1067, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 198, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 194); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 290f

end