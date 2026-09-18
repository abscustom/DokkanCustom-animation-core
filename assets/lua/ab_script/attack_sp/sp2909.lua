--1031720:LR_ゴールデンフリーザ+ゴジータ_必殺技：サイコキネシス
--sp_effect_a9_00148
--sp2909

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164046;  --ef_001 開始 フリーザ背面セリフカットイン～カードカットイン
SP_01b = 164047;  --ef_001b 開始 フリーザ背面セリフカットイン～カードカットイン
SP_02  = 164048;  --ef_002 カードカットイン～フィニッシュ
SP_02b = 164049;  --ef_002b カードカットイン～フィニッシュ

--エフェクト(敵)
SP_02r  = 164050;  --ef_002r カードカットイン～フィニッシュ
SP_02br = 164051;  --ef_002br カードカットイン～フィニッシュ


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
ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 86;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 450);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 450, SP_01, spep_2 + 450 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
        SE017 = playSeVer2( spep_2 + 450 + 3, 1179, "", 0, 0, 0, -1);
        SE018 = playSeVer2( spep_2 + 450 + 3, 1187, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 450 + 3, SE018, 63 );
        SE019 = playSeVer2( spep_2 + 450 + 3, 1258, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 450 + 3, SE019, 63 );
        SE020 = playSeVer2( spep_2 + 450 + 3, 1118, "",spep_2 + 510, 0, 20, -1);
        setSeVolumeByWorkId( spep_2 + 450 + 3, SE020, 66 );
    else

        setupMovie(0 , SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開始 フリーザ背面セリフカットイン～カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始 フリーザ背面セリフカットイン～カードカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 90 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

--敵位置調整用
a = 12;

setMoveKey( spep_0 + 0, 1, -2 + a, 160 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -2 + a, 158.7 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -2 + a, 158.7 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -2 + a, 157.5 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -2 + a, 157.5 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -2 + a, 156.2 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -2 + a, 156.2 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -2 + a, 155 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -2 + a, 155 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -2 + a, 153.8 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -2 + a, 153.8 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -2 + a, 152.6 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -2 + a, 152.6 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -2 + a, 151.5 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -2 + a, 151.5 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -2 + a, 150.3 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -2 + a, 150.3 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -2 + a, 149.2 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -2 + a, 149.2 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -2 + a, 148.1 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -2 + a, 148.1 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -2 + a, 147.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -2 + a, 147.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -2 + a, 146.1 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -2 + a, 146.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -2 + a, 145.1 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -2 + a, 145.1 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -2 + a, 144.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -2 + a, 144.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -2 + a, 143.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -2 + a, 143.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -2 + a, 142.2 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -2 + a, 142.2 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -2 + a, 141.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -2 + a, 141.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -2 + a, 140.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -2 + a, 140.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -2 + a, 139.5 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -2 + a, 139.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -2 + a, 138.7 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -2 + a, 138.7 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -2 + a, 137.9 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -2 + a, 137.9 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -2 + a, 137.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -2 + a, 137.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -2 + a, 136.3 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -2 + a, 136.3 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -2 + a, 135.6 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -2 + a, 135.6 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -2 + a, 134.9 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -2 + a, 134.9 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -2 + a, 134.2 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -2 + a, 134.2 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -2 + a, 133.5 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -2 + a, 133.5 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -2 + a, 132.9 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -2 + a, 132.9 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -2 + a, 132.3 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -2 + a, 132.3 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -2 + a, 131.7 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -2 + a, 131.7 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -2 + a, 131.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -2 + a, 131.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -2 + a, 130.6 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -2 + a, 130.6 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -2 + a, 130.1 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -2 + a, 130.1 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -2 + a, 129.6 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -2 + a, 129.6 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -2 + a, 129.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -2 + a, 129.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -2 + a, 128.7 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -2 + a, 128.7 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -2 + a, 128.3 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -2 + a, 128.3 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -2 + a, 127.9 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -2 + a, 127.9 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -2 + a, 127.5 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -2 + a, 127.5 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -2 + a, 127.2 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -2 + a, 127.2 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -2 + a, 126.9 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -2 + a, 126.9 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -2 + a, 126.6 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -2 + a, 126.6 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -2 + a, 126.3 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -2 + a, 126.3 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -2 + a, 126 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -2 + a, 126 , 0 );

setScaleKey( spep_0 + 0, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 114, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--尻尾まわす
SE003 = playSeVer2( spep_0 + 6, 1485, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 141 );
SE004 = playSeVer2( spep_0 + 42, 1485, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE004, 123 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --86f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--岩巻き上げる
SE006 = playSeVer2( spep_1 + 90, 1168, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE006, 71 );
setStartTimeMs( SE006,  1067 );
SE007 = playSeVer2( spep_1 + 90, 63, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 90, 1255, "",spep_1 + 396, 0, 50, -1);
SE009 = playSeVer2( spep_1 + 90, 1240, "", 0, 0, 0, -1);


-------------------------------------------------
-- カードカットイン～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 602;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 306 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 348 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 306 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 314 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 306 + OFFSET_X, 1, 118.4, 166.4 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 118.4, 166.4 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 83.2, 185.6 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 83.2, 185.6 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 163.1, 128 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 163.1, 128 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 156.8, 200 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 156.8, 200 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 126.3, 131.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 126.3, 131.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 139.1, 156.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 139.1, 156.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 156.7, 167.9 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 156.7, 167.9 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 142.3, 172.7 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 142.3, 172.7 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 335.9, 63.8 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 335.9, 63.8 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 406.9, 24.4 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 406.9, 24.4 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 459, -45.4 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 459, -45.4 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 519.3, -70.4 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 519.3, -70.4 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 581.4, -127.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 581.4, -127.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 610.1, -166.8 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 610.1, -166.8 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 667.8, -186.9 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 667.8, -186.9 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 687.4, -208.6 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 687.4, -208.6 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 731.2, -244.7 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 731.2, -244.7 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 752.8, -245.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 752.8, -245.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 755.4, -276.8 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 755.4, -276.8 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 766.3, -263.2 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 766.3, -263.2 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 779, -281.7 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 779, -281.7 , 0 );

setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.77, 0.77 );

setRotateKey( spep_2 + 306 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 7 );

--敵の動き2
setDisp( spep_2 + 438 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 602 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 438 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 438 + OFFSET_X, 1, 70.4, 25.6 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 70.4, 25.6 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 73.1, 23.4 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 73.1, 23.4 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 75.7, 21.3 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 75.7, 21.3 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 78.2, 19.3 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 78.2, 19.3 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 80.6, 17.5 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 80.6, 17.5 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 82.8, 15.7 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 82.8, 15.7 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 84.9, 14 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 84.9, 14 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 86.9, 12.4 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 86.9, 12.4 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 88.8, 10.9 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 88.8, 10.9 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 55.3, 28.7 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 55.3, 28.7 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 137, -30.3 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 137, -30.3 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 132.1, 40.5 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 132.1, 40.5 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 71.1, -29.4 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 71.1, -29.4 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 85.2, -4.8 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 85.2, -4.8 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 103.9, 5.5 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 103.9, 5.5 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 90.5, 9.5 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 90.5, 9.5 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 107.4, -5.7 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 107.4, -5.7 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 108.2, 9.7 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 108.2, 9.7 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 96.1, -10 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 96.1, -10 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 98.2, 10.3 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 98.2, 10.3 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 108.3, -6 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 108.3, -6 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 91, -9.5 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 91, -9.5 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 108.7, 1.6 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 108.7, 1.6 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 108.8, -6.5 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 108.8, -6.5 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 91.2, -9.6 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 91.2, -9.6 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 108.8, 1.6 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 108.8, 1.6 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 110.4, 8 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 110.4, 8 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 97.6, -11.2 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 97.6, -11.2 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 99.2, 9.6 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 99.2, 9.6 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 108.8, -6.4 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 108.8, -6.4 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 91.2, -9.6 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 91.2, -9.6 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 108.8, 1.6 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 108.8, 1.6 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 94.4, 6.4 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 94.4, 6.4 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 110.4, -8 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 110.4, -8 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 110.4, 8 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 110.4, 8 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 97.6, -11.2 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 97.6, -11.2 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 99.2, 9.6 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 99.2, 9.6 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 108.8, -6.4 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 108.8, -6.4 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 91.2, -9.6 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 91.2, -9.6 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 116.8, 24 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 116.8, 24 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 86.4, -17.6 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 86.4, -17.6 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 83.2, 38.4 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 83.2, 38.4 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 131.2, -16 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 131.2, -16 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 97.6, -11.2 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 97.6, -11.2 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 99.2, 9.6 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 99.2, 9.6 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 108.8, -6.4 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 108.8, -6.4 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 91.2, -9.6 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 91.2, -9.6 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 108.8, 1.6 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 108.8, 1.6 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 94.4, 6.4 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 94.4, 6.4 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 110.4, -8 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 110.4, -8 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 110.4, 8 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 110.4, 8 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 97.6, -11.2 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 97.6, -11.2 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 99.2, 9.6 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 99.2, 9.6 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 108.8, -6.4 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 108.8, -6.4 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 91.2, -9.6 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 91.2, -9.6 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 108.8, 1.6 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 108.8, 1.6 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 94.4, 6.4 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 94.4, 6.4 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 110.4, -8 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 110.4, -8 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 110.4, 8 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 110.4, 8 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 97.6, -11.2 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 97.6, -11.2 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 99.2, 9.6 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 99.2, 9.6 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 108.8, -6.4 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 108.8, -6.4 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 91.2, -9.6 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 91.2, -9.6 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 108.8, 1.6 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 108.8, 1.6 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 94.4, 6.4 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 94.4, 6.4 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 110.4, -8 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 110.4, -8 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 110.4, 8 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 110.4, 8 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 97.6, -11.2 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 97.6, -11.2 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 99.2, 9.6 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 99.2, 9.6 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 108.8, -6.4 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 108.8, -6.4 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 91.2, -9.6 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 91.2, -9.6 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 108.8, 1.6 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 108.8, 1.6 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 94.4, 6.4 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 94.4, 6.4 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 110.4, -8 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 110.4, -8 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 110.4, 8 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 110.4, 8 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 97.6, -11.2 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, 97.6, -11.2 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, 99.2, 9.6 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 99.2, 9.6 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 108.8, -6.4 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, 108.8, -6.4 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 91.2, -9.6 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 91.2, -9.6 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 108.8, 1.6 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, 108.8, 1.6 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, 94.4, 6.4 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 94.4, 6.4 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 110.4, -8 , 0 );

setScaleKey( spep_2 + 438 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 469 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 473 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 474 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 477 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 481 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 485 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 486 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 487 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 488 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 493 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 494 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 495 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 496 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 497 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 498 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 499 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 500 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 501 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 502 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 503 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 505 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 506 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 509 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 510 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 517 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 518 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 527 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 529 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 530 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 602 + OFFSET_X, 1, 0.33, 0.33 );

setRotateKey( spep_2 + 438 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 602 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--岩巻き上げる
SE010 = playSeVer2( spep_2 + 0, 1334, "", 0, 0, 0, -1);

--岩投げ飛ばす
SE011 = playSeVer2( spep_2 + 266, 1027, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 266, 1145, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 276, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 286; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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
--敵ヒット
SE014 = playSeVer2( spep_2 + 306, 1014, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 318, 1023, "", 0, 0, 0, -1);

--画面遷移
SE016 = playSeVer2( spep_2 + 360, 44, "", 0, 0, 0, -1);

--岩投げ飛ばす２
SE017 = playSeVer2( spep_2 + 416, 1179, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 416, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 416, SE018, 63 );
SE019 = playSeVer2( spep_2 + 416, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 416, SE019, 63 );
SE020 = playSeVer2( spep_2 + 434, 1118, "",spep_2 + 510, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 434, SE020, 66 );

--爆発
SE021 = playSeVer2( spep_2 + 466, 1395, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 484, 1159, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 492, 1259, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 484 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム  602f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 開始 フリーザ背面セリフカットイン～カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始 フリーザ背面セリフカットイン～カードカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 90 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 0 );

--敵位置調整用
a = -12;

setMoveKey( spep_0 + 0, 1, 2 + a, 160 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 2 + a, 158.7 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 2 + a, 158.7 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 2 + a, 157.5 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 2 + a, 157.5 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 2 + a, 156.2 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 2 + a, 156.2 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 2 + a, 155 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 2 + a, 155 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 2 + a, 153.8 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 2 + a, 153.8 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 2 + a, 152.6 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 2 + a, 152.6 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 2 + a, 151.5 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 2 + a, 151.5 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 2 + a, 150.3 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 2 + a, 150.3 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 2 + a, 149.2 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 2 + a, 149.2 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 2 + a, 148.1 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 2 + a, 148.1 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 2 + a, 147.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 2 + a, 147.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 2 + a, 146.1 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 2 + a, 146.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 2 + a, 145.1 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 2 + a, 145.1 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 2 + a, 144.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 2 + a, 144.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 2 + a, 143.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 2 + a, 143.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 2 + a, 142.2 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 2 + a, 142.2 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 2 + a, 141.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 2 + a, 141.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 2 + a, 140.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 2 + a, 140.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 2 + a, 139.5 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 2 + a, 139.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 2 + a, 138.7 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 2 + a, 138.7 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 2 + a, 137.9 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 2 + a, 137.9 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 2 + a, 137.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 2 + a, 137.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 2 + a, 136.3 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 2 + a, 136.3 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 2 + a, 135.6 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 2 + a, 135.6 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 2 + a, 134.9 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 2 + a, 134.9 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 2 + a, 134.2 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 2 + a, 134.2 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 2 + a, 133.5 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 2 + a, 133.5 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 2 + a, 132.9 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 2 + a, 132.9 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 2 + a, 132.3 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 2 + a, 132.3 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 2 + a, 131.7 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 2 + a, 131.7 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 2 + a, 131.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 2 + a, 131.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 2 + a, 130.6 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 2 + a, 130.6 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 2 + a, 130.1 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 2 + a, 130.1 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 2 + a, 129.6 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 2 + a, 129.6 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 2 + a, 129.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 2 + a, 129.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 2 + a, 128.7 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 2 + a, 128.7 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 2 + a, 128.3 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 2 + a, 128.3 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 2 + a, 127.9 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 2 + a, 127.9 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 2 + a, 127.5 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 2 + a, 127.5 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 2 + a, 127.2 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 2 + a, 127.2 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 2 + a, 126.9 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 2 + a, 126.9 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 2 + a, 126.6 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 2 + a, 126.6 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 2 + a, 126.3 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 2 + a, 126.3 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 2 + a, 126 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 2 + a, 126 , 0 );

setScaleKey( spep_0 + 0, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 114, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--尻尾まわす
SE003 = playSeVer2( spep_0 + 6, 1485, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 141 );
SE004 = playSeVer2( spep_0 + 42, 1485, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE004, 123 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --86f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--岩巻き上げる
SE006 = playSeVer2( spep_1 + 90, 1168, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE006, 71 );
setStartTimeMs( SE006,  1067 );
SE007 = playSeVer2( spep_1 + 90, 63, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 90, 1255, "",spep_1 + 396, 0, 50, -1);
SE009 = playSeVer2( spep_1 + 90, 1240, "", 0, 0, 0, -1);


-------------------------------------------------
-- カードカットイン～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 602;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン～フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 306 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 348 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 306 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 314 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 306 + OFFSET_X, 1, -118.4, 166.4 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -118.4, 166.4 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -83.2, 185.6 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -83.2, 185.6 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -163.1, 128 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -163.1, 128 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -156.8, 200 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -156.8, 200 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -126.3, 131.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -126.3, 131.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -139.1, 156.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -139.1, 156.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -156.7, 167.9 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -156.7, 167.9 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -142.3, 172.7 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -142.3, 172.7 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -335.9, 63.8 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -335.9, 63.8 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -406.9, 24.4 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -406.9, 24.4 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -459, -45.4 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -459, -45.4 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -519.3, -70.4 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -519.3, -70.4 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -581.4, -127.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -581.4, -127.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -610.1, -166.8 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -610.1, -166.8 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -667.8, -186.9 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -667.8, -186.9 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -687.4, -208.6 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -687.4, -208.6 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -731.2, -244.7 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -731.2, -244.7 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -752.8, -245.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -752.8, -245.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -755.4, -276.8 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -755.4, -276.8 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -766.3, -263.2 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -766.3, -263.2 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -779, -281.7 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -779, -281.7 , 0 );

setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.77, 0.77 );

setRotateKey( spep_2 + 306 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -6.3 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -6.3 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -7 );

--敵の動き2
setDisp( spep_2 + 438 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 602 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 438 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 438 + OFFSET_X, 1, -70.4, 25.6 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -70.4, 25.6 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -73.1, 23.4 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -73.1, 23.4 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -75.7, 21.3 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -75.7, 21.3 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -78.2, 19.3 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -78.2, 19.3 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -80.6, 17.5 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -80.6, 17.5 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -82.8, 15.7 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -82.8, 15.7 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -84.9, 14 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -84.9, 14 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -86.9, 12.4 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -86.9, 12.4 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -88.8, 10.9 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -88.8, 10.9 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -55.3, 28.7 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -55.3, 28.7 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -137, -30.3 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -137, -30.3 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -132.1, 40.5 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -132.1, 40.5 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -71.1, -29.4 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -71.1, -29.4 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -85.2, -4.8 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -85.2, -4.8 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -103.9, 5.5 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -103.9, 5.5 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -90.5, 9.5 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -90.5, 9.5 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -107.4, -5.7 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -107.4, -5.7 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -108.2, 9.7 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -108.2, 9.7 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -96.1, -10 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -96.1, -10 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -98.2, 10.3 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -98.2, 10.3 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -108.3, -6 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -108.3, -6 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -91, -9.5 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -91, -9.5 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -108.7, 1.6 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -108.7, 1.6 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -108.8, -6.5 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -108.8, -6.5 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -91.2, -9.6 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -91.2, -9.6 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -108.8, 1.6 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -108.8, 1.6 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -110.4, 8 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -110.4, 8 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -97.6, -11.2 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -97.6, -11.2 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -99.2, 9.6 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -99.2, 9.6 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -108.8, -6.4 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -108.8, -6.4 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -91.2, -9.6 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -91.2, -9.6 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -108.8, 1.6 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -108.8, 1.6 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -94.4, 6.4 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -94.4, 6.4 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -110.4, -8 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -110.4, -8 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -110.4, 8 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -110.4, 8 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -97.6, -11.2 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, -97.6, -11.2 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, -99.2, 9.6 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -99.2, 9.6 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -108.8, -6.4 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -108.8, -6.4 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -91.2, -9.6 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -91.2, -9.6 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -116.8, 24 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -116.8, 24 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -86.4, -17.6 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -86.4, -17.6 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -83.2, 38.4 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -83.2, 38.4 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -131.2, -16 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -131.2, -16 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -97.6, -11.2 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, -97.6, -11.2 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, -99.2, 9.6 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, -99.2, 9.6 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, -108.8, -6.4 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, -108.8, -6.4 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, -91.2, -9.6 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, -91.2, -9.6 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, -108.8, 1.6 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, -108.8, 1.6 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, -94.4, 6.4 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, -94.4, 6.4 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -110.4, -8 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -110.4, -8 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, -110.4, 8 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -110.4, 8 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, -97.6, -11.2 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, -97.6, -11.2 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, -99.2, 9.6 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, -99.2, 9.6 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, -108.8, -6.4 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -108.8, -6.4 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -91.2, -9.6 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, -91.2, -9.6 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -108.8, 1.6 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, -108.8, 1.6 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, -94.4, 6.4 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, -94.4, 6.4 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, -110.4, -8 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, -110.4, -8 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, -110.4, 8 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, -110.4, 8 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -97.6, -11.2 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, -97.6, -11.2 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -99.2, 9.6 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, -99.2, 9.6 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, -108.8, -6.4 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, -108.8, -6.4 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -91.2, -9.6 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -91.2, -9.6 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -108.8, 1.6 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -108.8, 1.6 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -94.4, 6.4 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, -94.4, 6.4 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -110.4, -8 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, -110.4, -8 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, -110.4, 8 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, -110.4, 8 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -97.6, -11.2 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, -97.6, -11.2 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, -99.2, 9.6 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, -99.2, 9.6 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -108.8, -6.4 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, -108.8, -6.4 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -91.2, -9.6 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, -91.2, -9.6 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, -108.8, 1.6 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, -108.8, 1.6 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, -94.4, 6.4 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -94.4, 6.4 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -110.4, -8 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -110.4, -8 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -110.4, 8 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, -110.4, 8 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, -97.6, -11.2 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, -97.6, -11.2 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, -99.2, 9.6 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, -99.2, 9.6 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, -108.8, -6.4 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, -108.8, -6.4 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, -91.2, -9.6 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, -91.2, -9.6 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, -108.8, 1.6 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, -108.8, 1.6 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, -94.4, 6.4 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, -94.4, 6.4 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, -110.4, -8 , 0 );

setScaleKey( spep_2 + 438 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 469 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 473 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 474 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 477 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 481 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 485 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 486 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 487 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 488 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 493 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 494 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 495 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 496 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 497 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 498 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 499 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 500 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 501 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 502 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 503 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 505 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 506 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 509 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 510 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 517 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 518 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 527 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 529 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 530 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 602 + OFFSET_X, 1, 0.33, 0.33 );

setRotateKey( spep_2 + 438 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 602 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--岩巻き上げる
SE010 = playSeVer2( spep_2 + 0, 1334, "", 0, 0, 0, -1);

--岩投げ飛ばす
SE011 = playSeVer2( spep_2 + 266, 1027, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 266, 1145, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 276, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_2 + 286; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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
--敵ヒット
SE014 = playSeVer2( spep_2 + 306, 1014, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 318, 1023, "", 0, 0, 0, -1);

--画面遷移
SE016 = playSeVer2( spep_2 + 360, 44, "", 0, 0, 0, -1);

--岩投げ飛ばす２
SE017 = playSeVer2( spep_2 + 416, 1179, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 416, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 416, SE018, 63 );
SE019 = playSeVer2( spep_2 + 416, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 416, SE019, 63 );
SE020 = playSeVer2( spep_2 + 434, 1118, "",spep_2 + 510, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 434, SE020, 66 );

--爆発
SE021 = playSeVer2( spep_2 + 466, 1395, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 484, 1159, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 492, 1259, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 484 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム  602f

end
