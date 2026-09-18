--4032130:LR_超サイヤ人トランクス(少年期)(未来)_必殺技：バーニングラッシュ
--sp_effect_b1_00349
--sp2928

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164290;  -- 敵と対峙～ダッシュまで ef_001
SP_01b = 164291;  -- 敵と対峙～ダッシュまで ef_001b
SP_02 = 164292;  -- トランクスアップ～フィニッシュまで ef_002
SP_02b = 164293;  -- トランクスアップ～フィニッシュまで ef_002b

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
ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 248;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 598- 1);  -- スキップ先フレーム指定
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
        SE047 = playSeVer2( spep_2 + 598, 44, "", 0, 0, 0, -1);

    else end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 敵と対峙～ダッシュまで
-------------------------------------------------
MAX_FRAME_0 = 248;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵と対峙～ダッシュまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 敵と対峙～ダッシュまで(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 112;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 55, 515.5 , 0 );
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
setDisp( spep_0 + 120 + OFFSET_X, 1, 1 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 33.8, -209 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 33.8, -209 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 33.8, -209 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 33.8, -209 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 33.8, -209 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 33.8, -209 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 33.8, -209 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 34.3, -209.1 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 34.3, -209.1 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 35, -209.2 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 35, -209.2 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 36.2, -209.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 36.2, -209.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 40.5, -209.9 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 40.5, -209.9 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 50, -211.3 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 50, -211.3 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 98.3, -218.1 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 98.3, -218.1 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 105.6, -219.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 105.6, -219.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 107.7, -219.7 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 107.7, -219.7 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 109.3, -219.9 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 109.3, -219.9 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 110.5, -220 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 110.5, -220 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 111.1, -220.1 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 111.1, -220.1 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 111.3, -220.1 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 111.3, -220.1 , 0 );

setScaleKey( spep_0 + 0, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.81, 0.81 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 262, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--カメラズーム
SE002 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);

--走り出し
SE004 = playSeVer2( spep_0 + 184, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 184, SE004, 141 );
SE005 = playSeVer2( spep_0 + 188, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 188, SE005, 151 );
SE006 = playSeVer2( spep_0 + 190, 1192, "",spep_0 + 210, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 190, SE006, 148 );

--走る
SE007 = playSeVer2( spep_0 + 214, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE007, 61 );
SE008 = playSeVer2( spep_0 + 214, 1182, "",spep_0 + 248, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 214, SE008, 54 );
SE009 = playSeVer2( spep_0 + 214, 1117, "",spep_0 + 246, 0, 8, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --248F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- トランクスアップ～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 826;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- トランクスアップ～フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- トランクスアップ～フィニッシュまで(ef_002b)
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

setDisp( spep_2 + 108 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 142 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 108 + OFFSET_X, 1, 117 );

setMoveKey( spep_2 + 108 + OFFSET_X, 1, 376.8, 37.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 376.8, 37.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 378.2, 39.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 378.2, 39.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 379.9, 42.5 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 379.9, 42.5 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 380.9, 44.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 380.9, 44.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 380.9, 44.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 380.9, 44.9 , 0 );

setScaleKey( spep_2 + 108 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.69, 3.69 );

setRotateKey( spep_2 + 108 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -7.5 );

--敵の動き2

setDisp( spep_2 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 160 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 160 + OFFSET_X, 1, 113.5, -201.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 113.5, -201.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 66.7, -268.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 66.7, -268.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 139.8, -161.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 139.8, -161.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 121.8, -306.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 121.8, -306.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 68, -168.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 68, -168.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 156.6, -258.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 156.6, -258.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 147.9, -186.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 147.9, -186.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 87.5, -192.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 87.5, -192.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 84.6, -205.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 84.6, -205.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 86.5, -206.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 86.5, -206.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 73.8, -195 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 73.8, -195 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 77.8, -196.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 77.8, -196.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 98.6, -200.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 98.6, -200.1 , 0 );

setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 160 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -21.6 );

setBlendColor( spep_2 + 160 + OFFSET_X, 1, 0, 1, 1, 1, 0.25 );

--敵の動き3

setDisp( spep_2 + 280 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 472 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 280 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 338 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 350 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 370 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 388 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 280 + OFFSET_X, 1, 5, 189.3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 5, 189.3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 0.6, 199.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 0.6, 199.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -55.6, 206.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -55.6, 206.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -56.2, 230.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -56.2, 230.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -71.8, 215.4 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -71.8, 215.4 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -76.2, 200.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -76.2, 200.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -74.9, 189.2 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -74.9, 189.2 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -92.6, 192.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -92.6, 192.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -92.4, 191.7 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -92.4, 191.7 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -98.3, 193.5 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -98.3, 193.5 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -101.8, 194.6 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -101.8, 194.6 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -104.7, 210.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -104.7, 210.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -83, 222.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -83, 222.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -61.3, 238.2 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -61.3, 238.2 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -58.2, 241.3 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -58.2, 241.3 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 146.6, 35.3 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 146.6, 35.3 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 110.4, 25 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 110.4, 25 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 116, 33.1 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 116, 33.1 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 105.2, -8.1 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 105.2, -8.1 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 9.1, -11.2 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 9.1, -11.2 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -5.5, -0.4 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -5.5, -0.4 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 108.6, 87.8 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 108.6, 87.8 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 105.5, 82 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 105.5, 82 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 105.5, 84 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 105.5, 84 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 116.5, 80.8 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 116.5, 80.8 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 123.8, 78.6 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 123.8, 78.6 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 134.8, 75.1 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 134.8, 75.1 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 134.6, 28 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 134.6, 28 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 63.2, 58.4 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 63.2, 58.4 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 63.4, 58.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 63.4, 58.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 321.7, 123.3 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 321.7, 123.3 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 329.7, 130.5 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 329.7, 130.5 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 314.8, 110.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 314.8, 110.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 359.6, 98.1 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 359.6, 98.1 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 355.6, 101.8 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 355.6, 101.8 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 366.2, 98 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 366.2, 98 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 352, 133.9 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 352, 133.9 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 353.9, 134.9 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 353.9, 134.9 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 354.8, 119.7 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 354.8, 119.7 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 355.3, 109.6 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 355.3, 109.6 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 333.7, 114.5 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 333.7, 114.5 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 324.8, 113.2 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 324.8, 113.2 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 311.5, 111.4 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 311.5, 111.4 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 293.5, 109.2 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 293.5, 109.2 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 288.5, 109.2 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 288.5, 109.2 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 376.3, 213.6 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 376.3, 213.6 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 372, 219.9 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 372, 219.9 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 359, 198.6 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 359, 198.6 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 371.9, 207.1 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 371.9, 207.1 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 388.3, 216.2 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 388.3, 216.2 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 366.6, 217.8 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 366.6, 217.8 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 362.6, 213.5 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 362.6, 213.5 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 351.8, 213.3 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 351.8, 213.3 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 351.8, 209.8 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 351.8, 209.8 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 402, 209.8 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 402, 209.8 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 820.9, 209.8 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 820.9, 209.8 , 0 );

setScaleKey( spep_2 + 280 + OFFSET_X, 1, 6.88, 6.88 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 6.88, 6.88 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 3.72, 3.72 );

setRotateKey( spep_2 + 280 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, -30.8 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -30.8 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 453 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 472 + OFFSET_X, 1, -3.8 );

setBlendColor( spep_2 + 280 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--敵の動き4

setDisp( spep_2 + 508 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 574 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 508 + OFFSET_X, 1, -406.4, -207.1 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -406.4, -207.1 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -374.3, -272.2 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -374.3, -272.2 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -345.4, -288.6 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, -345.4, -288.6 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, -92.2, 182.8 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -92.2, 182.8 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, -47, 200.1 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -47, 200.1 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -13.9, 139.9 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, -13.9, 139.9 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 66.4, 29.6 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 66.4, 29.6 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -36.4, -348.5 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -36.4, -348.5 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 75.3, -287.5 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 75.3, -287.5 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 475.1, -57.7 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 475.1, -57.7 , 0 );

setScaleKey( spep_2 + 508 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 533 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 534 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 539 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 540 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 545 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 571 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_2 + 574 + OFFSET_X, 1, 3.93, 3.93 );

setRotateKey( spep_2 + 508 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 574 + OFFSET_X, 1, -3.8 );

setBlendColor( spep_2 + 508 + OFFSET_X, 1, 3, 0, 0, 0, 1 );

--敵の動き5

setDisp( spep_2 + 638 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 708 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 638 + OFFSET_X, 1, 44.9, -622.1 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, 44.9, -622.1 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 95.7, -459.2 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 95.7, -459.2 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 86.9, -374.7 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 86.9, -374.7 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 70.3, -280.3 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, 70.3, -280.3 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, -42.8, -150.4 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, -42.8, -150.4 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, -105, 22.1 , 0 );
setMoveKey( spep_2 + 673 + OFFSET_X, 1, -105, 22.1 , 0 );
setMoveKey( spep_2 + 674 + OFFSET_X, 1, -170.4, -38.4 , 0 );
setMoveKey( spep_2 + 679 + OFFSET_X, 1, -170.4, -38.4 , 0 );
setMoveKey( spep_2 + 680 + OFFSET_X, 1, -74.4, -42.3 , 0 );
setMoveKey( spep_2 + 703 + OFFSET_X, 1, -74.4, -42.3 , 0 );
setMoveKey( spep_2 + 704 + OFFSET_X, 1, -38.3, 59.6 , 0 );
setMoveKey( spep_2 + 705 + OFFSET_X, 1, -38.3, 59.6 , 0 );
setMoveKey( spep_2 + 706 + OFFSET_X, 1, -38.3, -273.9 , 0 );
setMoveKey( spep_2 + 708 + OFFSET_X, 1, -38.3, -273.9 , 0 );

setScaleKey( spep_2 + 638 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 643 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 644 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 649 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 650 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 655 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 656 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 661 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 662 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 667 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 668 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 673 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 674 + OFFSET_X, 1, 8.18, 8.18 );
setScaleKey( spep_2 + 679 + OFFSET_X, 1, 8.18, 8.18 );
setScaleKey( spep_2 + 680 + OFFSET_X, 1, 15.15, 15.15 );
setScaleKey( spep_2 + 703 + OFFSET_X, 1, 15.15, 15.15 );
setScaleKey( spep_2 + 704 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 708 + OFFSET_X, 1, 3.02, 3.02 );

setRotateKey( spep_2 + 638 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 643 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 644 + OFFSET_X, 1, -65.9 );
setRotateKey( spep_2 + 649 + OFFSET_X, 1, -65.9 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, -72.9 );
setRotateKey( spep_2 + 655 + OFFSET_X, 1, -72.9 );
setRotateKey( spep_2 + 656 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 661 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 662 + OFFSET_X, 1, -131.3 );
setRotateKey( spep_2 + 667 + OFFSET_X, 1, -131.3 );
setRotateKey( spep_2 + 668 + OFFSET_X, 1, -132.1 );
setRotateKey( spep_2 + 673 + OFFSET_X, 1, -132.1 );
setRotateKey( spep_2 + 674 + OFFSET_X, 1, -178.9 );
setRotateKey( spep_2 + 679 + OFFSET_X, 1, -178.9 );
setRotateKey( spep_2 + 680 + OFFSET_X, 1, -204 );
setRotateKey( spep_2 + 703 + OFFSET_X, 1, -204 );
setRotateKey( spep_2 + 704 + OFFSET_X, 1, 159.4 );
setRotateKey( spep_2 + 708 + OFFSET_X, 1, 159.4 );

setBlendColor( spep_2 + 638 + OFFSET_X, 1, 0, 1, 1, 0.1, 0.2 );
setBlendColor( spep_2 + 704 + OFFSET_X, 1, 3, 0, 1, 1, 0.08 );
setBlendColor( spep_2 + 708 + OFFSET_X, 1, 3, 1, 1, 1, 0 );

-- ** 音 ** --

--向かっていく
SE011 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 66, 0, 40, -1);
SE012 = playSeVer2( spep_2 + 4, 1182, "", 0, 16, 0, -1);
SE013 = playSeVer2( spep_2 + 4, 1278, "",spep_2 + 280, 0, 130, -1);
setSeVolumeByWorkId( spep_2 + 4, SE013, 56 );
SE014 = playSeVer2( spep_2 + 16, 1019, "", 0, 0, 0, -1);

--風圧
SE015 = playSeVer2( spep_2 + 48, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE015, 68 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 90; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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

--向かっていく
SE016 = playSeVer2( spep_2 + 80, 1019, "", 0, 0, 0, -1);

--パンチ
SE017 = playSeVer2( spep_2 + 136, 1189, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 142, 1187, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 142, 1009, "", 0, 0, 0, -1);

--画面モノラルに
SE020 = playSeVer2( spep_2 + 172, 1179, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 172, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 172, SE021, 145 );
SE022 = playSeVer2( spep_2 + 180, 9, "", 0, 0, 0, -1);
setPitch( spep_2 + 180, SE022, -1200 );
setTimeStretch( SE022, 0.7, 30, 4 );
setSeVolumeByWorkId( spep_2 + 180, SE022, 120 );

--パンチ２
SE023 = playSeVer2( spep_2 + 266, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 274, 1153, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 274, 1187, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 278, 1110, "", 0, 0, 0, -1);

--移動中音
SE027 = playSeVer2( spep_2 + 322, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 322, SE027, 40 );

--パンチ３
SE028 = playSeVer2( spep_2 + 330, 1189, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 338, 1009, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 338, 1414, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 342, 1110, "", 0, 0, 0, -1);

--パンチ４
SE032 = playSeVer2( spep_2 + 378, 1004, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 384, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 384, SE033, 79 );
SE034 = playSeVer2( spep_2 + 388, 1010, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 388, 1110, "", 0, 0, 0, -1);

--振りかぶる
SE036 = playSeVer2( spep_2 + 400, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 400, SE036, 153 );
setPitch( spep_2 + 400, SE036, -400 );
setTimeStretch( SE036, 0.73, 30, 4 );

--蹴り飛ばす
SE037 = playSeVer2( spep_2 + 438, 1114, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 438, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 438, SE038, 68 );
SE039 = playSeVer2( spep_2 + 438, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 438, SE039, 60 );

--敵飛んでいく
SE040 = playSeVer2( spep_2 + 448, 1019, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 448, 1304, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 500, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 500, SE042, 58 );
SE043 = playSeVer2( spep_2 + 500, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 500, SE043, 56 );
SE044 = playSeVer2( spep_2 + 512, 1019, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 576, 1019, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 640, 1019, "",spep_2 + 704, 0, 26, -1);

--画面遷移
SE045 = playSeVer2( spep_2 + 572, 1232, "", 0, 0, 0, -1);

--トランクス回転
SE047 = playSeVer2( spep_2 + 576, 44, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 608, 1116, "",spep_2 + 688, 0, 42, -1);
SE049 = playSeVer2( spep_2 + 636, 1332, "", 0, 0, 0, -1);

--叩きつける
SE051 = playSeVer2( spep_2 + 676, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 676, SE051, 82 );
SE052 = playSeVer2( spep_2 + 676, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 676, SE052, 79 );
SE053 = playSeVer2( spep_2 + 688, 1159, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 704, 1168, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_2 + 692); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 826F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 敵と対峙～ダッシュまで
-------------------------------------------------
MAX_FRAME_0 = 248;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵と対峙～ダッシュまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 敵と対峙～ダッシュまで(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 112;
--[[
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--]]
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 55, 515.5 , 0 );
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
setDisp( spep_0 + 120 + OFFSET_X, 1, 1 );

changeAnime( spep_0 + 0, 1, 17 );

setMoveKey( spep_0 + 0, 1, -33.8, -209 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -33.8, -209 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -33.8, -209 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -33.8, -209 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -33.8, -209 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -33.8, -209 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -33.8, -209 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -34.3, -209.1 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -34.3, -209.1 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -35, -209.2 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -35, -209.2 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -36.2, -209.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -36.2, -209.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -40.5, -209.9 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -40.5, -209.9 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -50, -211.3 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -50, -211.3 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -98.3, -218.1 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -98.3, -218.1 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -105.6, -219.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -105.6, -219.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -107.7, -219.7 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -107.7, -219.7 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -109.3, -219.9 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -109.3, -219.9 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -110.5, -220 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -110.5, -220 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -111.1, -220.1 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -111.1, -220.1 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -111.3, -220.1 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -111.3, -220.1 , 0 );

setScaleKey( spep_0 + 0, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.81, 0.81 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 262, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--カメラズーム
SE002 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);

--走り出し
SE004 = playSeVer2( spep_0 + 184, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 184, SE004, 141 );
SE005 = playSeVer2( spep_0 + 188, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 188, SE005, 151 );
SE006 = playSeVer2( spep_0 + 190, 1192, "",spep_0 + 210, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 190, SE006, 148 );

--走る
SE007 = playSeVer2( spep_0 + 214, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE007, 61 );
SE008 = playSeVer2( spep_0 + 214, 1182, "",spep_0 + 248, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 214, SE008, 54 );
SE009 = playSeVer2( spep_0 + 214, 1117, "",spep_0 + 246, 0, 8, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --248F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- トランクスアップ～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 826;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- トランクスアップ～フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- トランクスアップ～フィニッシュまで(ef_002b)
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

setDisp( spep_2 + 108 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 142 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 108 + OFFSET_X, 1, 17 );

setMoveKey( spep_2 + 108 + OFFSET_X, 1, -376.8, 37.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -376.8, 37.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -378.2, 39.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -378.2, 39.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -379.9, 42.5 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -379.9, 42.5 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -380.9, 44.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -380.9, 44.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -380.9, 44.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -380.9, 44.9 , 0 );

setScaleKey( spep_2 + 108 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.69, 3.69 );

setRotateKey( spep_2 + 108 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 7.5 );

--敵の動き2

setDisp( spep_2 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 160 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 160 + OFFSET_X, 1, -113.5, -201.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -113.5, -201.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -66.7, -268.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -66.7, -268.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -139.8, -161.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -139.8, -161.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -121.8, -306.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -121.8, -306.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -68, -168.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -68, -168.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -156.6, -258.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -156.6, -258.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -147.9, -186.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -147.9, -186.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -87.5, -192.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -87.5, -192.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -84.6, -205.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -84.6, -205.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -86.5, -206.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -86.5, -206.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -73.8, -195 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -73.8, -195 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -77.8, -196.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -77.8, -196.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -98.6, -200.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -98.6, -200.1 , 0 );

setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 160 + OFFSET_X, 1, 21.6 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 21.6 );

setBlendColor( spep_2 + 160 + OFFSET_X, 1, 0, 1, 1, 1, 0.25 );

--敵の動き3

setDisp( spep_2 + 280 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 472 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 280 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 338 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 350 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 370 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 388 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 280 + OFFSET_X, 1, -5, 189.3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -5, 189.3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -0.6, 199.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -0.6, 199.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 55.6, 206.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 55.6, 206.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 56.2, 230.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 56.2, 230.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 71.8, 215.4 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 71.8, 215.4 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 76.2, 200.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 76.2, 200.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 74.9, 189.2 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 74.9, 189.2 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 92.6, 192.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 92.6, 192.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 92.4, 191.7 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 92.4, 191.7 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 98.3, 193.5 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 98.3, 193.5 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 101.8, 194.6 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 101.8, 194.6 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 104.7, 210.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 104.7, 210.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 83, 222.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 83, 222.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 61.3, 238.2 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 61.3, 238.2 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 58.2, 241.3 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 58.2, 241.3 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -146.6, 35.3 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -146.6, 35.3 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -110.4, 25 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -110.4, 25 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -116, 33.1 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -116, 33.1 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -105.2, -8.1 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -105.2, -8.1 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -9.1, -11.2 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -9.1, -11.2 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 5.5, -0.4 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 5.5, -0.4 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -108.6, 87.8 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -108.6, 87.8 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -105.5, 82 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -105.5, 82 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -105.5, 84 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -105.5, 84 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -116.5, 80.8 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -116.5, 80.8 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -123.8, 78.6 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -123.8, 78.6 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -134.8, 75.1 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -134.8, 75.1 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -134.6, 28 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -134.6, 28 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -63.2, 58.4 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -63.2, 58.4 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -63.4, 58.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -63.4, 58.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -321.7, 123.3 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -321.7, 123.3 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -329.7, 130.5 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -329.7, 130.5 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -314.8, 110.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -314.8, 110.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -359.6, 98.1 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -359.6, 98.1 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -355.6, 101.8 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -355.6, 101.8 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -366.2, 98 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -366.2, 98 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -352, 133.9 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -352, 133.9 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -353.9, 134.9 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -353.9, 134.9 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -354.8, 119.7 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -354.8, 119.7 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -355.3, 109.6 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -355.3, 109.6 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -333.7, 114.5 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -333.7, 114.5 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -324.8, 113.2 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -324.8, 113.2 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -311.5, 111.4 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -311.5, 111.4 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -293.5, 109.2 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -293.5, 109.2 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -288.5, 109.2 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -288.5, 109.2 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -376.3, 213.6 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -376.3, 213.6 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -372, 219.9 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -372, 219.9 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -359, 198.6 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -359, 198.6 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -371.9, 207.1 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -371.9, 207.1 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -388.3, 216.2 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -388.3, 216.2 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -366.6, 217.8 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -366.6, 217.8 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -362.6, 213.5 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -362.6, 213.5 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -351.8, 213.3 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -351.8, 213.3 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -351.8, 209.8 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -351.8, 209.8 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -402, 209.8 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -402, 209.8 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -820.9, 209.8 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -820.9, 209.8 , 0 );

setScaleKey( spep_2 + 280 + OFFSET_X, 1, 6.88, 6.88 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 6.88, 6.88 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 3.72, 3.72 );

setRotateKey( spep_2 + 280 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 8.6 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 8.6 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 30.8 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, 30.8 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, 46.9 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, 46.9 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_2 + 453 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 472 + OFFSET_X, 1, 3.8 );

setBlendColor( spep_2 + 280 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--敵の動き4

setDisp( spep_2 + 508 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 574 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 508 + OFFSET_X, 1, 406.4, -207.1 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 406.4, -207.1 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 374.3, -272.2 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 374.3, -272.2 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 345.4, -288.6 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 345.4, -288.6 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 92.2, 182.8 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 92.2, 182.8 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 47, 200.1 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 47, 200.1 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 13.9, 139.9 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 13.9, 139.9 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -66.4, 29.6 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, -66.4, 29.6 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 36.4, -348.5 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 36.4, -348.5 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -75.3, -287.5 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, -75.3, -287.5 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -475.1, -57.7 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, -475.1, -57.7 , 0 );

setScaleKey( spep_2 + 508 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 533 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 534 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 539 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 540 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 545 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 571 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_2 + 574 + OFFSET_X, 1, 3.93, 3.93 );

setRotateKey( spep_2 + 508 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 574 + OFFSET_X, 1, 3.8 );

setBlendColor( spep_2 + 508 + OFFSET_X, 1, 3, 0, 0, 0, 1 );

--敵の動き5

setDisp( spep_2 + 638 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 708 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 638 + OFFSET_X, 1, -44.9, -622.1 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, -44.9, -622.1 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, -95.7, -459.2 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, -95.7, -459.2 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, -86.9, -374.7 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, -86.9, -374.7 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, -70.3, -280.3 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, -70.3, -280.3 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, 42.8, -150.4 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, 42.8, -150.4 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, 105, 22.1 , 0 );
setMoveKey( spep_2 + 673 + OFFSET_X, 1, 105, 22.1 , 0 );
setMoveKey( spep_2 + 674 + OFFSET_X, 1, 170.4, -38.4 , 0 );
setMoveKey( spep_2 + 679 + OFFSET_X, 1, 170.4, -38.4 , 0 );
setMoveKey( spep_2 + 680 + OFFSET_X, 1, 74.4, -42.3 , 0 );
setMoveKey( spep_2 + 703 + OFFSET_X, 1, 74.4, -42.3 , 0 );
setMoveKey( spep_2 + 704 + OFFSET_X, 1, 38.3, 59.6 , 0 );
setMoveKey( spep_2 + 705 + OFFSET_X, 1, 38.3, 59.6 , 0 );
setMoveKey( spep_2 + 706 + OFFSET_X, 1, 38.3, -273.9 , 0 );
setMoveKey( spep_2 + 708 + OFFSET_X, 1, 38.3, -273.9 , 0 );

setScaleKey( spep_2 + 638 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 643 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 644 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 649 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 650 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 655 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 656 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 661 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 662 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 667 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 668 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 673 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 674 + OFFSET_X, 1, 8.18, 8.18 );
setScaleKey( spep_2 + 679 + OFFSET_X, 1, 8.18, 8.18 );
setScaleKey( spep_2 + 680 + OFFSET_X, 1, 15.15, 15.15 );
setScaleKey( spep_2 + 703 + OFFSET_X, 1, 15.15, 15.15 );
setScaleKey( spep_2 + 704 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 708 + OFFSET_X, 1, 3.02, 3.02 );

setRotateKey( spep_2 + 638 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_2 + 643 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_2 + 644 + OFFSET_X, 1, 65.9 );
setRotateKey( spep_2 + 649 + OFFSET_X, 1, 65.9 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, 72.9 );
setRotateKey( spep_2 + 655 + OFFSET_X, 1, 72.9 );
setRotateKey( spep_2 + 656 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 661 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 662 + OFFSET_X, 1, 131.3 );
setRotateKey( spep_2 + 667 + OFFSET_X, 1, 131.3 );
setRotateKey( spep_2 + 668 + OFFSET_X, 1, 132.1 );
setRotateKey( spep_2 + 673 + OFFSET_X, 1, 132.1 );
setRotateKey( spep_2 + 674 + OFFSET_X, 1, 178.9 );
setRotateKey( spep_2 + 679 + OFFSET_X, 1, 178.9 );
setRotateKey( spep_2 + 680 + OFFSET_X, 1, 204 );
setRotateKey( spep_2 + 703 + OFFSET_X, 1, 204 );
setRotateKey( spep_2 + 704 + OFFSET_X, 1, -159.4 );
setRotateKey( spep_2 + 708 + OFFSET_X, 1, -159.4 );

setBlendColor( spep_2 + 638 + OFFSET_X, 1, 0, 1, 1, 0.1, 0.2 );
setBlendColor( spep_2 + 704 + OFFSET_X, 1, 3, 0, 1, 1, 0.08 );
setBlendColor( spep_2 + 708 + OFFSET_X, 1, 3, 1, 1, 1, 0 );

-- ** 音 ** --

--向かっていく
SE011 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 66, 0, 40, -1);
SE012 = playSeVer2( spep_2 + 4, 1182, "", 0, 16, 0, -1);
SE013 = playSeVer2( spep_2 + 4, 1278, "",spep_2 + 280, 0, 130, -1);
setSeVolumeByWorkId( spep_2 + 4, SE013, 56 );
SE014 = playSeVer2( spep_2 + 16, 1019, "", 0, 0, 0, -1);

--風圧
SE015 = playSeVer2( spep_2 + 48, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE015, 68 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 90; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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

--向かっていく
SE016 = playSeVer2( spep_2 + 80, 1019, "", 0, 0, 0, -1);

--パンチ
SE017 = playSeVer2( spep_2 + 136, 1189, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 142, 1187, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 142, 1009, "", 0, 0, 0, -1);

--画面モノラルに
SE020 = playSeVer2( spep_2 + 172, 1179, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 172, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 172, SE021, 145 );
SE022 = playSeVer2( spep_2 + 180, 9, "", 0, 0, 0, -1);
setPitch( spep_2 + 180, SE022, -1200 );
setTimeStretch( SE022, 0.7, 30, 4 );
setSeVolumeByWorkId( spep_2 + 180, SE022, 120 );

--パンチ２
SE023 = playSeVer2( spep_2 + 266, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 274, 1153, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 274, 1187, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 278, 1110, "", 0, 0, 0, -1);

--移動中音
SE027 = playSeVer2( spep_2 + 322, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 322, SE027, 40 );

--パンチ３
SE028 = playSeVer2( spep_2 + 330, 1189, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 338, 1009, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 338, 1414, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 342, 1110, "", 0, 0, 0, -1);

--パンチ４
SE032 = playSeVer2( spep_2 + 378, 1004, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 384, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 384, SE033, 79 );
SE034 = playSeVer2( spep_2 + 388, 1010, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 388, 1110, "", 0, 0, 0, -1);

--振りかぶる
SE036 = playSeVer2( spep_2 + 400, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 400, SE036, 153 );
setPitch( spep_2 + 400, SE036, -400 );
setTimeStretch( SE036, 0.73, 30, 4 );

--蹴り飛ばす
SE037 = playSeVer2( spep_2 + 438, 1114, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 438, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 438, SE038, 68 );
SE039 = playSeVer2( spep_2 + 438, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 438, SE039, 60 );

--敵飛んでいく
SE040 = playSeVer2( spep_2 + 448, 1019, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 448, 1304, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 500, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 500, SE042, 58 );
SE043 = playSeVer2( spep_2 + 500, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 500, SE043, 56 );
SE044 = playSeVer2( spep_2 + 512, 1019, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 576, 1019, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 640, 1019, "",spep_2 + 704, 0, 26, -1);

--画面遷移
SE045 = playSeVer2( spep_2 + 572, 1232, "", 0, 0, 0, -1);

--トランクス回転
SE047 = playSeVer2( spep_2 + 576, 44, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 608, 1116, "",spep_2 + 688, 0, 42, -1);
SE049 = playSeVer2( spep_2 + 636, 1332, "", 0, 0, 0, -1);

--叩きつける
SE051 = playSeVer2( spep_2 + 676, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 676, SE051, 82 );
SE052 = playSeVer2( spep_2 + 676, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 676, SE052, 79 );
SE053 = playSeVer2( spep_2 + 688, 1159, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 704, 1168, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_2 + 692); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 826F


end
