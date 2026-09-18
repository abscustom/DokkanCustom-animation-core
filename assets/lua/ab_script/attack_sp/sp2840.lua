-- 4030500: LR_超ゴジータ_超必殺技：ファイナルフラッシュ
-- sp_effect_b4_00376
-- sp2840

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163638;  -- 開幕～気合いためまで ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

ENABLE_AUTO_TIME_STRETCH(0.68);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
   if(_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        MAX_FRAME_0 = 748;

        spep_2 = MAX_FRAME_0 + 94;

        skipFrame(0, spep_2 + 74);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 74 , SP_001, spep_2 + 74, 1);

        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --気弾発射
        SE058 = playSeVer2( spep_2 + 72+3, 1133, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 72+3, SE058, 80 );
        SE059 = playSeVer2( spep_2 + 72+3, 1027, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 72+3, SE059, 80 );
        SE060 = playSeVer2( spep_2 + 72+3, 1223, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 72+3, SE060, 130 );
        SE061 = playSeVer2( spep_2 + 72+3, 1213, "",spep_2 + 292, 0, 62, -1);
        setSeVolumeByWorkId( spep_2 + 72+3, SE061, 58 );
        SE062 = playSeVer2( spep_2 + 72+3, 1284, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 72+3, SE062, 73 );
        SE063 = playSeVer2( spep_2 + 72+3, 1212, "",spep_2 + 200, 0, 26, -1);
        setSeVolumeByWorkId( spep_2 + 72+3, SE063, 64 );


    else
        setupMovie(0 , SP_001, 0, 1);
    end


------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕～気合いためまで ef_001
------------------------------------------------------
MAX_FRAME_0 = 748;
MAX_FRAME_2 = 450;

MAX_FRAME_ALL = MAX_FRAME_0 + 94 + MAX_FRAME_2;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 開幕～気合いためまで ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_ALL, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_ALL, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_ALL, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_ALL, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 266 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 292 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 266 + OFFSET_X , 1, 2 );

setMoveKey( spep_0 + 266 + OFFSET_X , 1, -625.2, -1028.2 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X , 1, -625.2, -1028.2 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X , 1, -515.6, -870.1 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X , 1, -515.6, -870.1 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X , 1, -426.8, -736.7 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X , 1, -426.8, -736.7 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X , 1, -355.8, -626.3 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X , 1, -355.8, -626.3 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X , 1, -300, -537.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X , 1, -300, -537.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X , 1, -257.3, -467.4 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X , 1, -257.3, -467.4 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X , 1, -225.6, -414.6 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X , 1, -225.6, -414.6 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X , 1, -203.1, -376.7 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X , 1, -203.1, -376.7 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X , 1, -188.1, -351.3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X , 1, -188.1, -351.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X , 1, -179.1, -335.8 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X , 1, -179.1, -335.8 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X , 1, -174.4, -327.8 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X , 1, -174.4, -327.8 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X , 1, -172.7, -324.9 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X , 1, -172.7, -324.9 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X , 1, -172.5, -324.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X , 1, -172.5, -324.5 , 0 );

setScaleKey( spep_0 + 266 + OFFSET_X , 1, 6.99, 6.99 );
setScaleKey( spep_0 + 267 + OFFSET_X , 1, 6.99, 6.99 );
setScaleKey( spep_0 + 268 + OFFSET_X , 1, 6.21, 6.21 );
setScaleKey( spep_0 + 269 + OFFSET_X , 1, 6.21, 6.21 );
setScaleKey( spep_0 + 270 + OFFSET_X , 1, 5.56, 5.56 );
setScaleKey( spep_0 + 271 + OFFSET_X , 1, 5.56, 5.56 );
setScaleKey( spep_0 + 272 + OFFSET_X , 1, 5.03, 5.03 );
setScaleKey( spep_0 + 273 + OFFSET_X , 1, 5.03, 5.03 );
setScaleKey( spep_0 + 274 + OFFSET_X , 1, 4.6, 4.6 );
setScaleKey( spep_0 + 275 + OFFSET_X , 1, 4.6, 4.6 );
setScaleKey( spep_0 + 276 + OFFSET_X , 1, 4.27, 4.27 );
setScaleKey( spep_0 + 277 + OFFSET_X , 1, 4.27, 4.27 );
setScaleKey( spep_0 + 278 + OFFSET_X , 1, 4.02, 4.02 );
setScaleKey( spep_0 + 279 + OFFSET_X , 1, 4.02, 4.02 );
setScaleKey( spep_0 + 280 + OFFSET_X , 1, 3.84, 3.84 );
setScaleKey( spep_0 + 281 + OFFSET_X , 1, 3.84, 3.84 );
setScaleKey( spep_0 + 282 + OFFSET_X , 1, 3.72, 3.72 );
setScaleKey( spep_0 + 283 + OFFSET_X , 1, 3.72, 3.72 );
setScaleKey( spep_0 + 284 + OFFSET_X , 1, 3.65, 3.65 );
setScaleKey( spep_0 + 285 + OFFSET_X , 1, 3.65, 3.65 );
setScaleKey( spep_0 + 286 + OFFSET_X , 1, 3.61, 3.61 );
setScaleKey( spep_0 + 287 + OFFSET_X , 1, 3.61, 3.61 );
setScaleKey( spep_0 + 288 + OFFSET_X , 1, 3.6, 3.6 );
setScaleKey( spep_0 + 292 + OFFSET_X , 1, 3.6, 3.6 );

setRotateKey( spep_0 + 266 + OFFSET_X , 1, 0.2 );
setRotateKey( spep_0 + 267 + OFFSET_X , 1, 0.2 );
setRotateKey( spep_0 + 268 + OFFSET_X , 1, -0.4 );
setRotateKey( spep_0 + 269 + OFFSET_X , 1, -0.4 );
setRotateKey( spep_0 + 270 + OFFSET_X , 1, -0.9 );
setRotateKey( spep_0 + 271 + OFFSET_X , 1, -0.9 );
setRotateKey( spep_0 + 272 + OFFSET_X , 1, -1.3 );
setRotateKey( spep_0 + 273 + OFFSET_X , 1, -1.3 );
setRotateKey( spep_0 + 274 + OFFSET_X , 1, -1.6 );
setRotateKey( spep_0 + 275 + OFFSET_X , 1, -1.6 );
setRotateKey( spep_0 + 276 + OFFSET_X , 1, -1.9 );
setRotateKey( spep_0 + 277 + OFFSET_X , 1, -1.9 );
setRotateKey( spep_0 + 278 + OFFSET_X , 1, -2.1 );
setRotateKey( spep_0 + 279 + OFFSET_X , 1, -2.1 );
setRotateKey( spep_0 + 280 + OFFSET_X , 1, -2.2 );
setRotateKey( spep_0 + 281 + OFFSET_X , 1, -2.2 );
setRotateKey( spep_0 + 282 + OFFSET_X , 1, -2.3 );
setRotateKey( spep_0 + 283 + OFFSET_X , 1, -2.3 );
setRotateKey( spep_0 + 284 + OFFSET_X , 1, -2.4 );
setRotateKey( spep_0 + 292 + OFFSET_X , 1, -2.4 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 172, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--帯なびく
SE002 = playSeVer2( spep_0 + 0, 1332, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 6, 1331, "", 0, 0, 0, -1);

--構える
SE005 = playSeVer2( spep_0 + 80, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE005, 71 );
SE006 = playSeVer2( spep_0 + 98, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE006, 68 );
SE007 = playSeVer2( spep_0 + 104, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE007, 135 );

--飛び上がる
SE008 = playSeVer2( spep_0 + 128, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 128, 1452, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 152, 1117, "", 0, 0, 0, -1);

--回転する
SE011 = playSeVer2( spep_0 + 208, 1116, "",spep_0 + 256, 0, 20, -1);
SE012 = playSeVer2( spep_0 + 218, 1182, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE012, 76 );
setStartTimeMs( SE012,  67 );
SE013 = playSeVer2( spep_0 + 252, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE013, 60 );

--気ダメ
SE014 = playSeVer2( spep_0 + 298, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 298, SE014, 135 );
SE015 = playSeVer2( spep_0 + 298, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 298, SE015, 68 );
SE016 = playSeVer2( spep_0 + 298, 1427, "",spep_0 + 442, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 298, SE016, 80 );

--オーラ
SE017 = playSeVer2( spep_0 + 314, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE017, 71 );
SE019 = playSeVer2( spep_0 + 336, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE019, 71 );
SE020 = playSeVer2( spep_0 + 360, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE020, 71 );
SE022 = playSeVer2( spep_0 + 384, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE022, 71 );

--イナヅマ
SE018 = playSeVer2( spep_0 + 316, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE018, 71 );

--腕前に出す
SE021 = playSeVer2( spep_0 + 378, 1189, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 386, 1006, "", 0, 0, 0, -1);

--気弾溜め
SE101 = playSeVer2( spep_0 + 392, 1488, "", 0, 0, 0, 0.5);
--SE024 = playSeVer2( spep_0 + 392, 1209, "",spep_0 + 514, 0, 38, 0.5);
SE104 = playSeVer2( spep_0 + 392, 1490, "",spep_0 + 770, 0, 24, 0.5);
setSeVolumeByWorkId( spep_0 + 392, SE104, 90 );
--SE025 = playSeVer2( spep_0 + 392, 1210, "",spep_0 + 770, 0, 24, 0.5);
--setSeVolumeByWorkId( spep_0 + 392, SE025, 79 );
--SE026 = playSeVer2( spep_0 + 392, 1296, "", 0, 0, 0, 0.5);
--SE027 = playSeVer2( spep_0 + 392, 1224, "",spep_0 + 472, 0, 22, 0.5);
SE102 = playSeVer2( spep_0 + 398, 1489, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 398, SE102, 123 );
--SE028 = playSeVer2( spep_0 + 398, 1328, "", 0, 0, 0, 0.5);
--setSeVolumeByWorkId( spep_0 + 398, SE028, 123 );
--SE029 = playSeVer2( spep_0 + 406, 1338, "", 0, 0, 0, 0.5);
--SE031 = playSeVer2( spep_0 + 410, 1273, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 410, 1356, "",spep_0 + 784, 0, 28, 0.5);
setSeVolumeByWorkId( spep_0 + 410, SE032, 85 );

--オーラ
SE030 = playSeVer2( spep_0 + 408, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 408, SE030, 71 );
SE033 = playSeVer2( spep_0 + 432, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 432, SE033, 71 );
SE034 = playSeVer2( spep_0 + 456, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 456, SE034, 71 );
SE036 = playSeVer2( spep_0 + 480, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 480, SE036, 71 );
SE037 = playSeVer2( spep_0 + 504, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 504, SE037, 71 );
SE039 = playSeVer2( spep_0 + 528, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 528, SE039, 71 );
SE041 = playSeVer2( spep_0 + 552, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 552, SE041, 71 );

--地響き
SE035 = playSeVer2( spep_0 + 462, 1226, "",spep_0 + 786, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 462, SE035, 69 );

--風圧
SE038 = playSeVer2( spep_0 + 508, 1427, "", 610, 0, 10, -1);
stopSeIfDoubleSpeed( spep_0 + 508, SE038 );
SE043 = playSeVer2( spep_0 + 560, 1258, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_0 + 560, SE043 );

--発射前溜め
--SE040 = playSeVer2( spep_0 + 830, 1210, "",spep_0 + 966, 6, 36, 0.5);
--setSeVolumeByWorkId( spep_0 + 830, SE040, 79 );
--setStartTimeMs( SE040,  5000 );

--気弾溜め
--SE042 = playSeVer2( spep_0 + 584, 1296, "", 0, 6, 0, 0.5);
--setStartTimeMs( SE042,  400 );

--オーラ
SE044 = playSeVer2( spep_0 + 576, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 576, SE044, 71 );
SE045 = playSeVer2( spep_0 + 600, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 600, SE045, 71 );
SE046 = playSeVer2( spep_0 + 622, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 622, SE046, 71 );
SE048 = playSeVer2( spep_0 + 646, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 646, SE048, 71 );
SE050 = playSeVer2( spep_0 + 670, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 670, SE050, 71 );
SE051 = playSeVer2( spep_0 + 694, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 694, SE051, 71 );
SE052 = playSeVer2( spep_0 + 718, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 718, SE052, 71 );

--画面遷移
SE047 = playSeVer2( spep_0 + 638, 8, "", 0, 0, 0, -1);

--イナヅマ
SE049 = playSeVer2( spep_0 + 656, 1147, "",spep_0 + 764, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 656, SE049, 71 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 748

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE103 = playSeVer2( spep_1 + 86, 1490, "",spep_2 + 122, 6, 36, 0.5);
setStartTimeMs( SE103,  5000 );
--SE055 = playSeVer2( spep_1 + 82, 1356, "",spep_2 + 126, 0, 42, -1);
SE056 = playSeVer2( spep_1 + 86, 1226, "",spep_2 + 124, 0, 40, -1);
SE057 = playSeVer2( spep_1 + 86, 1147, "",spep_2 + 124, 0, 26, -1);
setSeVolumeByWorkId( spep_1 + 86, SE057, 81 );

--発射前溜め
--SE054 = playSeVer2( spep_1 + 88, 1296, "",spep_2 + 132, 6, 40, -1);
--setStartTimeMs( SE054,  400 );

------------------------------------------------------
-- 叫び～爆発まで ef_002
------------------------------------------------------
--MAX_FRAME_2 = 450;

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 156 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 170 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 156 + OFFSET_X, 1, 117 );

setMoveKey( spep_2 + 156 + OFFSET_X, 1, 64.9, -53.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 64.9, -53.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 63.2, -57.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 63.2, -57.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 61.1, -54.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 61.1, -54.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 69.4, -64.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 69.4, -64.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 91, -81.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 91, -81.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 65.6, -52.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 65.6, -52.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 52.5, -27.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 52.5, -27.4 , 0 );

setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.71, 2.71 );

setRotateKey( spep_2 + 156 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 10.3 );

-- ** 音 ** --
--気弾発射
SE058 = playSeVer2( spep_2 + 72, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE058, 80 );
SE059 = playSeVer2( spep_2 + 72, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE059, 80 );
SE060 = playSeVer2( spep_2 + 72, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE060, 130 );
SE061 = playSeVer2( spep_2 + 72, 1213, "",spep_2 + 292, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 72, SE061, 58 );
SE062 = playSeVer2( spep_2 + 72, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE062, 73 );
SE063 = playSeVer2( spep_2 + 72, 1212, "",spep_2 + 200, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 72, SE063, 64 );

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 140;  -- エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE103, 0);
    --stopSe( SP_dodge - 12, SE055, 0);
    stopSe( SP_dodge - 12, SE056, 0);
    stopSe( SP_dodge - 12, SE057, 0);
    stopSe( SP_dodge - 12, SE058, 0);
    stopSe( SP_dodge - 12, SE059, 0);
    stopSe( SP_dodge - 12, SE060, 0);
    stopSe( SP_dodge - 12, SE061, 0);
    stopSe( SP_dodge - 12, SE062, 0);
    stopSe( SP_dodge - 12, SE063, 0);

    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

    endPhase( SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--気弾地面にささる
SE064 = playSeVer2( spep_2 + 164, 1423, "",spep_2 + 312, 0, 58, -1);
SE065 = playSeVer2( spep_2 + 164, 1159, "",spep_2 + 308, 0, 52, -1);
SE066 = playSeVer2( spep_2 + 176, 1304, "",spep_2 + 298, 0, 38, -1);
SE067 = playSeVer2( spep_2 + 184, 1044, "",spep_2 + 298, 0, 38, -1);

--爆発予兆
SE068 = playSeVer2( spep_2 + 228, 1216, "",spep_2 + 324, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 228, SE068, 81 );
SE069 = playSeVer2( spep_2 + 250, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE069, 62 );

--爆発
SE070 = playSeVer2( spep_2 + 296, 1069, "", 0, 4, 0, -1);
setStartTimeMs( SE070,  233 );
SE071 = playSeVer2( spep_2 + 304, 1024, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_2 + 326, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 314 );
endPhase( spep_2 + MAX_FRAME_2-6);  -- 450

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕～気合いためまで ef_001
------------------------------------------------------
MAX_FRAME_0 = 748;
MAX_FRAME_2 = 450;

MAX_FRAME_ALL = MAX_FRAME_0 + 94 + MAX_FRAME_2;

setupMovie(0 , SP_001, 0, 1);

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 開幕～気合いためまで ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_ALL, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_ALL, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_ALL, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_ALL, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 266 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 292 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 266 + OFFSET_X , 1, 102 );

setMoveKey( spep_0 + 266 + OFFSET_X , 1, 625.2, -1028.2 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X , 1, 625.2, -1028.2 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X , 1, 515.6, -870.1 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X , 1, 515.6, -870.1 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X , 1, 426.8, -736.7 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X , 1, 426.8, -736.7 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X , 1, 355.8, -626.3 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X , 1, 355.8, -626.3 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X , 1, 300, -537.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X , 1, 300, -537.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X , 1, 257.3, -467.4 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X , 1, 257.3, -467.4 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X , 1, 225.6, -414.6 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X , 1, 225.6, -414.6 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X , 1, 203.1, -376.7 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X , 1, 203.1, -376.7 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X , 1, 188.1, -351.3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X , 1, 188.1, -351.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X , 1, 179.1, -335.8 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X , 1, 179.1, -335.8 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X , 1, 174.4, -327.8 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X , 1, 174.4, -327.8 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X , 1, 172.7, -324.9 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X , 1, 172.7, -324.9 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X , 1, 172.5, -324.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X , 1, 172.5, -324.5 , 0 );

setScaleKey( spep_0 + 266 + OFFSET_X , 1, 6.99, 6.99 );
setScaleKey( spep_0 + 267 + OFFSET_X , 1, 6.99, 6.99 );
setScaleKey( spep_0 + 268 + OFFSET_X , 1, 6.21, 6.21 );
setScaleKey( spep_0 + 269 + OFFSET_X , 1, 6.21, 6.21 );
setScaleKey( spep_0 + 270 + OFFSET_X , 1, 5.56, 5.56 );
setScaleKey( spep_0 + 271 + OFFSET_X , 1, 5.56, 5.56 );
setScaleKey( spep_0 + 272 + OFFSET_X , 1, 5.03, 5.03 );
setScaleKey( spep_0 + 273 + OFFSET_X , 1, 5.03, 5.03 );
setScaleKey( spep_0 + 274 + OFFSET_X , 1, 4.6, 4.6 );
setScaleKey( spep_0 + 275 + OFFSET_X , 1, 4.6, 4.6 );
setScaleKey( spep_0 + 276 + OFFSET_X , 1, 4.27, 4.27 );
setScaleKey( spep_0 + 277 + OFFSET_X , 1, 4.27, 4.27 );
setScaleKey( spep_0 + 278 + OFFSET_X , 1, 4.02, 4.02 );
setScaleKey( spep_0 + 279 + OFFSET_X , 1, 4.02, 4.02 );
setScaleKey( spep_0 + 280 + OFFSET_X , 1, 3.84, 3.84 );
setScaleKey( spep_0 + 281 + OFFSET_X , 1, 3.84, 3.84 );
setScaleKey( spep_0 + 282 + OFFSET_X , 1, 3.72, 3.72 );
setScaleKey( spep_0 + 283 + OFFSET_X , 1, 3.72, 3.72 );
setScaleKey( spep_0 + 284 + OFFSET_X , 1, 3.65, 3.65 );
setScaleKey( spep_0 + 285 + OFFSET_X , 1, 3.65, 3.65 );
setScaleKey( spep_0 + 286 + OFFSET_X , 1, 3.61, 3.61 );
setScaleKey( spep_0 + 287 + OFFSET_X , 1, 3.61, 3.61 );
setScaleKey( spep_0 + 288 + OFFSET_X , 1, 3.6, 3.6 );
setScaleKey( spep_0 + 292 + OFFSET_X , 1, 3.6, 3.6 );

setRotateKey( spep_0 + 266 + OFFSET_X , 1, -0.2 );
setRotateKey( spep_0 + 267 + OFFSET_X , 1, -0.2 );
setRotateKey( spep_0 + 268 + OFFSET_X , 1, 0.4 );
setRotateKey( spep_0 + 269 + OFFSET_X , 1, 0.4 );
setRotateKey( spep_0 + 270 + OFFSET_X , 1, 0.9 );
setRotateKey( spep_0 + 271 + OFFSET_X , 1, 0.9 );
setRotateKey( spep_0 + 272 + OFFSET_X , 1, 1.3 );
setRotateKey( spep_0 + 273 + OFFSET_X , 1, 1.3 );
setRotateKey( spep_0 + 274 + OFFSET_X , 1, 1.6 );
setRotateKey( spep_0 + 275 + OFFSET_X , 1, 1.6 );
setRotateKey( spep_0 + 276 + OFFSET_X , 1, 1.9 );
setRotateKey( spep_0 + 277 + OFFSET_X , 1, 1.9 );
setRotateKey( spep_0 + 278 + OFFSET_X , 1, 2.1 );
setRotateKey( spep_0 + 279 + OFFSET_X , 1, 2.1 );
setRotateKey( spep_0 + 280 + OFFSET_X , 1, 2.2 );
setRotateKey( spep_0 + 281 + OFFSET_X , 1, 2.2 );
setRotateKey( spep_0 + 282 + OFFSET_X , 1, 2.3 );
setRotateKey( spep_0 + 283 + OFFSET_X , 1, 2.3 );
setRotateKey( spep_0 + 284 + OFFSET_X , 1, 2.4 );
setRotateKey( spep_0 + 292 + OFFSET_X , 1, 2.4 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 172, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--帯なびく
SE002 = playSeVer2( spep_0 + 0, 1332, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 6, 1331, "", 0, 0, 0, -1);

--構える
SE005 = playSeVer2( spep_0 + 80, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE005, 71 );
SE006 = playSeVer2( spep_0 + 98, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE006, 68 );
SE007 = playSeVer2( spep_0 + 104, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE007, 135 );

--飛び上がる
SE008 = playSeVer2( spep_0 + 128, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 128, 1452, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 152, 1117, "", 0, 0, 0, -1);

--回転する
SE011 = playSeVer2( spep_0 + 208, 1116, "",spep_0 + 256, 0, 20, -1);
SE012 = playSeVer2( spep_0 + 218, 1182, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE012, 76 );
setStartTimeMs( SE012,  67 );
SE013 = playSeVer2( spep_0 + 252, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE013, 60 );

--気ダメ
SE014 = playSeVer2( spep_0 + 298, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 298, SE014, 135 );
SE015 = playSeVer2( spep_0 + 298, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 298, SE015, 68 );
SE016 = playSeVer2( spep_0 + 298, 1427, "",spep_0 + 442, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 298, SE016, 80 );

--オーラ
SE017 = playSeVer2( spep_0 + 314, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE017, 71 );
SE019 = playSeVer2( spep_0 + 336, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE019, 71 );
SE020 = playSeVer2( spep_0 + 360, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE020, 71 );
SE022 = playSeVer2( spep_0 + 384, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE022, 71 );

--イナヅマ
SE018 = playSeVer2( spep_0 + 316, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE018, 71 );

--腕前に出す
SE021 = playSeVer2( spep_0 + 378, 1189, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 386, 1006, "", 0, 0, 0, -1);

--気弾溜め
SE101 = playSeVer2( spep_0 + 392, 1488, "", 0, 0, 0, 0.5);
--SE024 = playSeVer2( spep_0 + 392, 1209, "",spep_0 + 514, 0, 38, 0.5);
SE104 = playSeVer2( spep_0 + 392, 1490, "",spep_0 + 770, 0, 24, 0.5);
setSeVolumeByWorkId( spep_0 + 392, SE104, 90 );
--SE025 = playSeVer2( spep_0 + 392, 1210, "",spep_0 + 770, 0, 24, 0.5);
--setSeVolumeByWorkId( spep_0 + 392, SE025, 79 );
--SE026 = playSeVer2( spep_0 + 392, 1296, "", 0, 0, 0, 0.5);
--SE027 = playSeVer2( spep_0 + 392, 1224, "",spep_0 + 472, 0, 22, 0.5);
SE102 = playSeVer2( spep_0 + 398, 1489, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 398, SE102, 123 );
--SE028 = playSeVer2( spep_0 + 398, 1328, "", 0, 0, 0, 0.5);
--setSeVolumeByWorkId( spep_0 + 398, SE028, 123 );
--SE029 = playSeVer2( spep_0 + 406, 1338, "", 0, 0, 0, 0.5);
--SE031 = playSeVer2( spep_0 + 410, 1273, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 410, 1356, "",spep_0 + 784, 0, 28, 0.5);
setSeVolumeByWorkId( spep_0 + 410, SE032, 85 );

--オーラ
SE030 = playSeVer2( spep_0 + 408, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 408, SE030, 71 );
SE033 = playSeVer2( spep_0 + 432, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 432, SE033, 71 );
SE034 = playSeVer2( spep_0 + 456, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 456, SE034, 71 );
SE036 = playSeVer2( spep_0 + 480, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 480, SE036, 71 );
SE037 = playSeVer2( spep_0 + 504, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 504, SE037, 71 );
SE039 = playSeVer2( spep_0 + 528, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 528, SE039, 71 );
SE041 = playSeVer2( spep_0 + 552, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 552, SE041, 71 );

--地響き
SE035 = playSeVer2( spep_0 + 462, 1226, "",spep_0 + 786, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 462, SE035, 69 );

--風圧
SE038 = playSeVer2( spep_0 + 508, 1427, "", 610, 0, 10, -1);
stopSeIfDoubleSpeed( spep_0 + 508, SE038 );
SE043 = playSeVer2( spep_0 + 560, 1258, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_0 + 560, SE043 );

--発射前溜め
--SE040 = playSeVer2( spep_0 + 830, 1210, "",spep_0 + 966, 6, 36, 0.5);
--setSeVolumeByWorkId( spep_0 + 830, SE040, 79 );
--setStartTimeMs( SE040,  5000 );

--気弾溜め
--SE042 = playSeVer2( spep_0 + 584, 1296, "", 0, 6, 0, 0.5);
--setStartTimeMs( SE042,  400 );

--オーラ
SE044 = playSeVer2( spep_0 + 576, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 576, SE044, 71 );
SE045 = playSeVer2( spep_0 + 600, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 600, SE045, 71 );
SE046 = playSeVer2( spep_0 + 622, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 622, SE046, 71 );
SE048 = playSeVer2( spep_0 + 646, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 646, SE048, 71 );
SE050 = playSeVer2( spep_0 + 670, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 670, SE050, 71 );
SE051 = playSeVer2( spep_0 + 694, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 694, SE051, 71 );
SE052 = playSeVer2( spep_0 + 718, 1036, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 718, SE052, 71 );

--画面遷移
SE047 = playSeVer2( spep_0 + 638, 8, "", 0, 0, 0, -1);

--イナヅマ
SE049 = playSeVer2( spep_0 + 656, 1147, "",spep_0 + 764, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 656, SE049, 71 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 748

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE103 = playSeVer2( spep_1 + 86, 1490, "",spep_2 + 122, 6, 36, 0.5);
setStartTimeMs( SE103,  5000 );
--SE055 = playSeVer2( spep_1 + 82, 1356, "",spep_2 + 126, 0, 42, -1);
SE056 = playSeVer2( spep_1 + 86, 1226, "",spep_2 + 124, 0, 40, -1);
SE057 = playSeVer2( spep_1 + 86, 1147, "",spep_2 + 124, 0, 26, -1);
setSeVolumeByWorkId( spep_1 + 86, SE057, 81 );

--発射前溜め
--SE054 = playSeVer2( spep_1 + 88, 1296, "",spep_2 + 132, 6, 40, -1);
--setStartTimeMs( SE054,  400 );

------------------------------------------------------
-- 叫び～爆発まで ef_002
------------------------------------------------------
--MAX_FRAME_2 = 450;

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 156 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 170 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 156 + OFFSET_X, 1, 17 );

setMoveKey( spep_2 + 156 + OFFSET_X, 1, -64.9, -53.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -64.9, -53.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -63.2, -57.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -63.2, -57.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -61.1, -54.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -61.1, -54.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -69.4, -64.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -69.4, -64.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -91, -81.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -91, -81.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -65.6, -52.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -65.6, -52.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -52.5, -27.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -52.5, -27.4 , 0 );

setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.71, 2.71 );

setRotateKey( spep_2 + 156 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -10.3 );

-- ** 音 ** --
--気弾発射
SE058 = playSeVer2( spep_2 + 72, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE058, 80 );
SE059 = playSeVer2( spep_2 + 72, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE059, 80 );
SE060 = playSeVer2( spep_2 + 72, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE060, 130 );
SE061 = playSeVer2( spep_2 + 72, 1213, "",spep_2 + 292, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 72, SE061, 58 );
SE062 = playSeVer2( spep_2 + 72, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE062, 73 );
SE063 = playSeVer2( spep_2 + 72, 1212, "",spep_2 + 200, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 72, SE063, 64 );

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 140;  -- エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE103, 0);
    --stopSe( SP_dodge - 12, SE055, 0);
    stopSe( SP_dodge - 12, SE056, 0);
    stopSe( SP_dodge - 12, SE057, 0);
    stopSe( SP_dodge - 12, SE058, 0);
    stopSe( SP_dodge - 12, SE059, 0);
    stopSe( SP_dodge - 12, SE060, 0);
    stopSe( SP_dodge - 12, SE061, 0);
    stopSe( SP_dodge - 12, SE062, 0);
    stopSe( SP_dodge - 12, SE063, 0);

    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

    endPhase( SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--気弾地面にささる
SE064 = playSeVer2( spep_2 + 164, 1423, "",spep_2 + 312, 0, 58, -1);
SE065 = playSeVer2( spep_2 + 164, 1159, "",spep_2 + 308, 0, 52, -1);
SE066 = playSeVer2( spep_2 + 176, 1304, "",spep_2 + 298, 0, 38, -1);
SE067 = playSeVer2( spep_2 + 184, 1044, "",spep_2 + 298, 0, 38, -1);

--爆発予兆
SE068 = playSeVer2( spep_2 + 228, 1216, "",spep_2 + 324, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 228, SE068, 81 );
SE069 = playSeVer2( spep_2 + 250, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE069, 62 );

--爆発
SE070 = playSeVer2( spep_2 + 296, 1069, "", 0, 4, 0, -1);
setStartTimeMs( SE070,  233 );
SE071 = playSeVer2( spep_2 + 304, 1024, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_2 + 326, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 314 );
endPhase( spep_2 + MAX_FRAME_2-6);  -- 450

end
