--1032550:LR_超サイヤ人4孫悟空(DAIMA)_EX必殺技：龍撃牙咆
--sp_effect_b4_00412
--sp2968

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164366;  -- 超4悟空が咆哮をあげている ef_001
SP_02 = 164367;  -- 敵に向かう超4悟空～フィニッシュ ef_002


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

ENABLE_AUTO_TIME_STRETCH(0.74);

DISABLE_VOICE_IF_DOUBLE_SPEED();

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 116;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 832 );  -- スキップ先フレーム指定
        setupMovie(spep_2 + 832, SP_01, spep_2 + 832 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --壁ひきずる
        SE059 = playSeVer2( spep_2 + 832 + 3, 1226, "",spep_2 + 1006, 0, 42, -1);
        setSeVolumeByWorkId( spep_2 + 832 + 3, SE059, 59 );

        --セリフカットイン
        SE060 = playSeVer2( spep_2 + 832 + 3, 1018, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 822 + 3, SE060, 63 );

        --「おりゃあああっ！！」
        playVoice( spep_2 + 832 + 3, 1136 );
        setVoiceVolume( spep_2 + 832 + 3, 1136, 100 );
    else

        setupMovie(0 , SP_01, 0, 1);
    end


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 超4悟空が咆哮をあげている
-------------------------------------------------
MAX_FRAME_0 = 116;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 超4悟空が咆哮をあげている(ef_001)
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

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 134, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 59 );
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 32 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 40 );
SE008 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE008, 50 );
SE009 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 63 );

--入り
SE003 = playSeVer2( spep_0 + 0, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );

--ズーム
SE004 = playSeVer2( spep_0 + 6, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE004, 79 );
SE007 = playSeVer2( spep_0 + 42, 1072, "",spep_0 + 102, 0, 8, -1);
setTimeStretch( SE007, 1.65, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --116F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinEx(spep_1, 0);

-- ** 音 ** --
--向かっていく
SE011 = playSeVer2( spep_1 + 90, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE011, 67 );

-------------------------------------------------
-- 敵に向かう超4悟空～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 1166;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 敵に向かう超4悟空～フィニッシュ(ef_002)
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 824;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 56 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );

--敵位置調整
a = 240;
b = -500;

setMoveKey( spep_2 + 0, 1, 344.9 + a, 101.2 + b, 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 344.9 + a, 101.2 + b, 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 345.1 + a, 101.3 + b, 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 345.1 + a, 101.3 + b, 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 345.7 + a, 101.4 + b, 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 345.7 + a, 101.4 + b, 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 346.9 + a, 101.6 + b, 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 346.9 + a, 101.6 + b, 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 348.9 + a, 102 + b, 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 348.9 + a, 102 + b, 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 351.9 + a, 102.6 + b, 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 351.9 + a, 102.6 + b, 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 356.1 + a, 103.5 + b, 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 356.1 + a, 103.5 + b, 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 361.6 + a, 104.6 + b, 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 361.6 + a, 104.6 + b, 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 368.8 + a, 106 + b, 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 368.8 + a, 106 + b, 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 377.6 + a, 107.8 + b, 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 377.6 + a, 107.8 + b, 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 388.5 + a, 110 + b, 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 388.5 + a, 110 + b, 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 401.5 + a, 112.7 + b, 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 401.5 + a, 112.7 + b, 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 416.9 + a, 115.8 + b, 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 416.9 + a, 115.8 + b, 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 434.8 + a, 119.4 + b, 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 434.8 + a, 119.4 + b, 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 455.5 + a, 123.6 + b, 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 455.5 + a, 123.6 + b, 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 479.1 + a, 128.4 + b, 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 479.1 + a, 128.4 + b, 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 505.9 + a, 133.8 + b, 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 505.9 + a, 133.8 + b, 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 536.1 + a, 139.9 + b, 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 536.1 + a, 139.9 + b, 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 569.7 + a, 146.7 + b, 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 569.7 + a, 146.7 + b, 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 607.1 + a, 154.2 + b, 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 607.1 + a, 154.2 + b, 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 648.5 + a, 162.6 + b, 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 648.5 + a, 162.6 + b, 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 693.9 + a, 171.8 + b, 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 693.9 + a, 171.8 + b, 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 743.7 + a, 181.9 + b, 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 743.7 + a, 181.9 + b, 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 798.1 + a, 192.9 + b, 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 798.1 + a, 192.9 + b, 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 857.1 + a, 204.8 + b, 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 857.1 + a, 204.8 + b, 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 921.1 + a, 217.7 + b, 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 921.1 + a, 217.7 + b, 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 990.2 + a, 231.7 + b, 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 990.2 + a, 231.7 + b, 0 );

setScaleKey( spep_2 + 0, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 6.07, 6.07 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 6.07, 6.07 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 6.55, 6.55 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 6.55, 6.55 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 6.82, 6.82 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 6.82, 6.82 );

setRotateKey( spep_2 + 0, 1, -5 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -5 );

--敵の動き2
setDisp( spep_2 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 156 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 74 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, 530.3, 52.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 530.3, 52.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -2.5, 9.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -2.5, 9.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 34.4, 0.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 34.4, 0.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 165.7, 25.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 165.7, 25.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 131.6, 3 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 131.6, 3 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -231.4, -75.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -231.4, -75.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -191.9, -113.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -191.9, -113.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 63.3, 52.6 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 63.3, 52.6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 63.2, 50.7 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 63.2, 50.7 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 102.8, -100.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 102.8, -100.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 104.6, -100.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 104.6, -100.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 212.5, 50.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 212.5, 50.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 212.4, 50.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 212.4, 50.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 185.3, 146.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 185.3, 146.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 187.2, 148.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 187.2, 148.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 142.1, 43.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 142.1, 43.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 142.1, 43.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 142.1, 43.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -34.4, 335.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -34.4, 335.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 167.2, 144.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 167.2, 144.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 167.2, 144.3 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 167.2, 144.3 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 167.2, 140.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 167.2, 140.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 11, 34.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 11, 34.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 7.3, 30.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 7.3, 30.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 11.3, 76.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 11.3, 76.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 12.2, 78.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 12.2, 78.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 13.2, 80.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 13.2, 80.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -107.8, 82.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -107.8, 82.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -102, 71 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -102, 71 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -267.6, 167.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -267.6, 167.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -265.9, 165 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -265.9, 165 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -188.2, 105.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -188.2, 105.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 482.7, 117.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 482.7, 117.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 478.9, 116.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 478.9, 116.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 478.9, 116.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 478.9, 116.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 478.9, 114.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 478.9, 114.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 478.9, 112.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 478.9, 112.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 246.4, 14.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 246.4, 14.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 250.1, 10.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 250.1, 10.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 250, 22.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 250, 22.5 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 9.5, 9.5 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 9.5, 9.5 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 15.47, 15.47 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 15.47, 15.47 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 10.41, 10.41 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 10.41, 10.41 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 11.91, 11.91 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 11.91, 11.91 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 15.47, 15.47 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 15.47, 15.47 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 4.75, 4.75 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, -8 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, -8 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -14 );

--敵の動き3
setDisp( spep_2 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 266 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 160 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 210 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 256 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 160 + OFFSET_X, 1, 12.5, -9.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 12.5, -9.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 10.8, -37.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 10.8, -37.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 11.1, 3.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 11.1, 3.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 11.3, 3.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 11.3, 3.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 11.5, -8.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 11.5, -8.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 42.1, 16.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 42.1, 16.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 78.4, 30 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 78.4, 30 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 93.8, 81.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 93.8, 81.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 113.9, 95 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 113.9, 95 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 131.5, 85.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 131.5, 85.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 153.5, 126.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 153.5, 126.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 136.4, 114.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 136.4, 114.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 144.2, 143.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 144.2, 143.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 150.6, 152.8 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 150.6, 152.8 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 161.7, 141.5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 161.7, 141.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 167.5, 153.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 167.5, 153.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 178.2, 144.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 178.2, 144.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 183.6, 153.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 183.6, 153.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 188.2, 148.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 188.2, 148.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 195.6, 140.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 195.6, 140.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 192.1, 145 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 192.1, 145 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 194.5, 142.4 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 194.5, 142.4 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 192.1, 143.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 192.1, 143.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 191.9, 142 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 191.9, 142 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 191.5, 138.3 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 191.5, 138.3 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 173.9, 74.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 173.9, 74.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 175.9, 78.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 175.9, 78.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 173.9, 72.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 173.9, 72.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 173.9, 76.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 173.9, 76.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 175.9, 72.3 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 175.9, 72.3 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 175.9, 76.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 175.9, 76.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 175.9, 74.3 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 175.9, 74.3 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 173.8, 70.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 173.8, 70.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 176.6, 74.3 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 176.6, 74.3 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 185.4, 74 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 185.4, 74 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 244.9, 77.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 244.9, 77.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 791.1, -82.6 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 791.1, -82.6 , 0 );

setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_2 + 160 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 75 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 75 );

--敵の動き4
setDisp( spep_2 + 310 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 348 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 310 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 310 + OFFSET_X, 1, -115.6, -177.4 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -115.6, -177.4 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -124, -178.7 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -124, -178.7 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -132.7, -187.4 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -132.7, -187.4 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -140.8, -189 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -140.8, -189 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -151.6, -194.5 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -151.6, -194.5 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -157.8, -198.1 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -157.8, -198.1 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -168.1, -202.1 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -168.1, -202.1 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -173.2, -206.3 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -173.2, -206.3 , 0 );

setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 310 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -54.2 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -54.2 );

--敵の動き5
setDisp( spep_2 + 464 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 552 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 464 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 508 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 464 + OFFSET_X, 1, -34.8, 87.3 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -34.8, 87.3 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -34.8, 87.2 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -34.8, 87.2 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -34.7, 87.2 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -34.7, 87.2 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -44.3, 76 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -44.3, 76 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -37.9, 87.2 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -37.9, 87.2 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -36.3, 79.2 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -36.3, 79.2 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -42.7, 85.6 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -42.7, 85.6 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -42.7, 80.8 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -42.7, 80.8 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -42.7, 85.6 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -42.7, 85.6 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -39.5, 80.8 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -39.5, 80.8 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -41.1, 77.6 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -41.1, 77.6 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -39.5, 76 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -39.5, 76 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -39.5, 77.6 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -39.5, 77.6 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -38.7, 79.2 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -38.7, 79.2 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -37.9, 80.8 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -37.9, 80.8 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -37.1, 82.4 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -37.1, 82.4 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -36.3, 84 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -36.3, 84 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -35.5, 85.6 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -35.5, 85.6 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -176.3, 50.5 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -176.3, 50.5 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -187.5, 74.5 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -187.5, 74.5 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -272.3, 48.9 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -272.3, 48.9 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -294.7, 61.7 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -294.7, 61.7 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -312.3, 44.1 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -312.3, 44.1 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -319.8, 52.1 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -319.8, 52.1 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -332.6, 39.3 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, -332.6, 39.3 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, -316.6, 53.7 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, -316.6, 53.7 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, -370.5, 39.3 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, -370.5, 39.3 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, -373.7, 48.9 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, -373.7, 48.9 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, -395.8, 36.1 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, -395.8, 36.1 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -405.4, 47.3 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -405.4, 47.3 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, -413.4, 42.5 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -413.4, 42.5 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, -420.3, 39.3 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, -420.3, 39.3 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, -420.3, 44.1 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, -420.3, 44.1 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, -441.4, 40.9 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -441.4, 40.9 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -443, 45.7 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, -443, 45.7 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -444.6, 47.3 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, -444.6, 47.3 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, -399.8, 50.5 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, -399.8, 50.5 , 0 );

setScaleKey( spep_2 + 464 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 469 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 464 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 552 + OFFSET_X, 1, 8.5 );

--敵の動き6
setDisp( spep_2 + 624 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 756 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 624 + OFFSET_X, 1, 283.6, 136.3 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, 283.6, 136.3 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, 285.2, 133.1 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 285.2, 133.1 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 285.2, 136.4 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, 285.2, 136.4 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 285.2, 136.3 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 285.2, 136.3 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, 145, 88.6 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 145, 88.6 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, 143.4, 90.2 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 143.4, 90.2 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 11.7, 49.1 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 11.7, 49.1 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 10.1, 50.7 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, 10.1, 50.7 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, -112.3, 18.7 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, -112.3, 18.7 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, -107.6, 31.5 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, -107.6, 31.5 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, -104.4, 10.5 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, -104.4, 10.5 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, -104.5, 23.4 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, -104.5, 23.4 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, -104.7, 23.3 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, -104.7, 23.3 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, -108, 15.3 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, -108, 15.3 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, -112.8, 29.7 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, -112.8, 29.7 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, -104.8, 19.9 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, -104.8, 19.9 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, -101.7, 31.1 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, -101.7, 31.1 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, -101.9, 30.8 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, -101.9, 30.8 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, -106.9, 24.2 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, -106.9, 24.2 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, -105.4, 28.8 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, -105.4, 28.8 , 0 );
setMoveKey( spep_2 + 666 + OFFSET_X, 1, -102.3, 23.8 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, -102.3, 23.8 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, -104.1, 28.5 , 0 );
setMoveKey( spep_2 + 669 + OFFSET_X, 1, -104.1, 28.5 , 0 );
setMoveKey( spep_2 + 670 + OFFSET_X, 1, -104.3, 28.3 , 0 );
setMoveKey( spep_2 + 671 + OFFSET_X, 1, -104.3, 28.3 , 0 );
setMoveKey( spep_2 + 672 + OFFSET_X, 1, -106, 23.2 , 0 );
setMoveKey( spep_2 + 673 + OFFSET_X, 1, -106, 23.2 , 0 );
setMoveKey( spep_2 + 674 + OFFSET_X, 1, -110.9, 27.9 , 0 );
setMoveKey( spep_2 + 675 + OFFSET_X, 1, -110.9, 27.9 , 0 );
setMoveKey( spep_2 + 676 + OFFSET_X, 1, -112.5, 21.3 , 0 );
setMoveKey( spep_2 + 677 + OFFSET_X, 1, -112.5, 21.3 , 0 );
setMoveKey( spep_2 + 678 + OFFSET_X, 1, -112.6, 29.3 , 0 );
setMoveKey( spep_2 + 679 + OFFSET_X, 1, -112.6, 29.3 , 0 );
setMoveKey( spep_2 + 680 + OFFSET_X, 1, -112.6, 29 , 0 );
setMoveKey( spep_2 + 681 + OFFSET_X, 1, -112.6, 29 , 0 );
setMoveKey( spep_2 + 682 + OFFSET_X, 1, -112.5, 25.5 , 0 );
setMoveKey( spep_2 + 683 + OFFSET_X, 1, -112.5, 25.5 , 0 );
setMoveKey( spep_2 + 684 + OFFSET_X, 1, -112.5, 31.7 , 0 );
setMoveKey( spep_2 + 685 + OFFSET_X, 1, -112.5, 31.7 , 0 );
setMoveKey( spep_2 + 686 + OFFSET_X, 1, -109.3, 26.6 , 0 );
setMoveKey( spep_2 + 687 + OFFSET_X, 1, -109.3, 26.6 , 0 );
setMoveKey( spep_2 + 688 + OFFSET_X, 1, -109.3, 26.3 , 0 );
setMoveKey( spep_2 + 689 + OFFSET_X, 1, -109.3, 26.3 , 0 );
setMoveKey( spep_2 + 690 + OFFSET_X, 1, -114.1, 29.3 , 0 );
setMoveKey( spep_2 + 691 + OFFSET_X, 1, -114.1, 29.3 , 0 );
setMoveKey( spep_2 + 692 + OFFSET_X, 1, -110.8, 24.2 , 0 );
setMoveKey( spep_2 + 693 + OFFSET_X, 1, -110.8, 24.2 , 0 );
setMoveKey( spep_2 + 694 + OFFSET_X, 1, -109.3, 30.4 , 0 );
setMoveKey( spep_2 + 695 + OFFSET_X, 1, -109.3, 30.4 , 0 );
setMoveKey( spep_2 + 696 + OFFSET_X, 1, -110.9, 26.8 , 0 );
setMoveKey( spep_2 + 697 + OFFSET_X, 1, -110.9, 26.8 , 0 );
setMoveKey( spep_2 + 698 + OFFSET_X, 1, -110.9, 26.5 , 0 );
setMoveKey( spep_2 + 699 + OFFSET_X, 1, -110.9, 26.5 , 0 );
setMoveKey( spep_2 + 700 + OFFSET_X, 1, -107.7, 31 , 0 );
setMoveKey( spep_2 + 701 + OFFSET_X, 1, -107.7, 31 , 0 );
setMoveKey( spep_2 + 702 + OFFSET_X, 1, -112.6, 24.2 , 0 );
setMoveKey( spep_2 + 703 + OFFSET_X, 1, -112.6, 24.2 , 0 );
setMoveKey( spep_2 + 704 + OFFSET_X, 1, -114.1, 30.4 , 0 );
setMoveKey( spep_2 + 705 + OFFSET_X, 1, -114.1, 30.4 , 0 );
setMoveKey( spep_2 + 706 + OFFSET_X, 1, -117.2, 25.1 , 0 );
setMoveKey( spep_2 + 707 + OFFSET_X, 1, -117.2, 25.1 , 0 );
setMoveKey( spep_2 + 708 + OFFSET_X, 1, -116.9, 24.8 , 0 );
setMoveKey( spep_2 + 709 + OFFSET_X, 1, -116.9, 24.8 , 0 );
setMoveKey( spep_2 + 710 + OFFSET_X, 1, -118.2, 29.3 , 0 );
setMoveKey( spep_2 + 711 + OFFSET_X, 1, -118.2, 29.3 , 0 );
setMoveKey( spep_2 + 712 + OFFSET_X, 1, -119.5, 25.7 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, -119.5, 25.7 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, -115.9, 31.7 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, -115.9, 31.7 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, -117.2, 26.3 , 0 );
setMoveKey( spep_2 + 717 + OFFSET_X, 1, -117.2, 26.3 , 0 );
setMoveKey( spep_2 + 718 + OFFSET_X, 1, -116.9, 25.9 , 0 );
setMoveKey( spep_2 + 719 + OFFSET_X, 1, -116.9, 25.9 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, -118.1, 28.7 , 0 );
setMoveKey( spep_2 + 721 + OFFSET_X, 1, -118.1, 28.7 , 0 );
setMoveKey( spep_2 + 722 + OFFSET_X, 1, -112.9, 26.5 , 0 );
setMoveKey( spep_2 + 723 + OFFSET_X, 1, -112.9, 26.5 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, -117.5, 34 , 0 );
setMoveKey( spep_2 + 725 + OFFSET_X, 1, -117.5, 34 , 0 );
setMoveKey( spep_2 + 726 + OFFSET_X, 1, -120.3, 28.1 , 0 );
setMoveKey( spep_2 + 729 + OFFSET_X, 1, -120.3, 28.1 , 0 );
setMoveKey( spep_2 + 730 + OFFSET_X, 1, -113.1, 37 , 0 );
setMoveKey( spep_2 + 731 + OFFSET_X, 1, -113.1, 37 , 0 );
setMoveKey( spep_2 + 732 + OFFSET_X, 1, -120.9, 27.5 , 0 );
setMoveKey( spep_2 + 733 + OFFSET_X, 1, -120.9, 27.5 , 0 );
setMoveKey( spep_2 + 734 + OFFSET_X, 1, -112, 36.3 , 0 );
setMoveKey( spep_2 + 735 + OFFSET_X, 1, -112, 36.3 , 0 );
setMoveKey( spep_2 + 736 + OFFSET_X, 1, -123.1, 24.9 , 0 );
setMoveKey( spep_2 + 739 + OFFSET_X, 1, -123.1, 24.9 , 0 );
setMoveKey( spep_2 + 740 + OFFSET_X, 1, -116.4, 42.8 , 0 );
setMoveKey( spep_2 + 741 + OFFSET_X, 1, -116.4, 42.8 , 0 );
setMoveKey( spep_2 + 742 + OFFSET_X, 1, -113.2, 35.8 , 0 );
setMoveKey( spep_2 + 743 + OFFSET_X, 1, -113.2, 35.8 , 0 );
setMoveKey( spep_2 + 744 + OFFSET_X, 1, -107.2, 37.4 , 0 );
setMoveKey( spep_2 + 745 + OFFSET_X, 1, -107.2, 37.4 , 0 );
setMoveKey( spep_2 + 746 + OFFSET_X, 1, -97.4, 20.8 , 0 );
setMoveKey( spep_2 + 747 + OFFSET_X, 1, -97.4, 20.8 , 0 );
setMoveKey( spep_2 + 748 + OFFSET_X, 1, -97.1, 19.4 , 0 );
setMoveKey( spep_2 + 749 + OFFSET_X, 1, -97.1, 19.4 , 0 );
setMoveKey( spep_2 + 750 + OFFSET_X, 1, -87.7, 30.8 , 0 );
setMoveKey( spep_2 + 751 + OFFSET_X, 1, -87.7, 30.8 , 0 );
setMoveKey( spep_2 + 752 + OFFSET_X, 1, -101.5, 16.6 , 0 );
setMoveKey( spep_2 + 753 + OFFSET_X, 1, -101.5, 16.6 , 0 );
setMoveKey( spep_2 + 754 + OFFSET_X, 1, -97.7, 13.1 , 0 );
setMoveKey( spep_2 + 756 + OFFSET_X, 1, -97.7, 13.1 , 0 );

setScaleKey( spep_2 + 624 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 631 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 632 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 635 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 636 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 739 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 740 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 745 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 746 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 753 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 754 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 756 + OFFSET_X, 1, 1.21, 1.21 );

setRotateKey( spep_2 + 624 + OFFSET_X, 1, -37.6 );
setRotateKey( spep_2 + 756 + OFFSET_X, 1, -37.6 );

--敵の動き7
setDisp( spep_2 + 952 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 1042 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 952 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 980 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 952 + OFFSET_X, 1, -239.9, 2.6 , 0 );
setMoveKey( spep_2 + 953 + OFFSET_X, 1, -239.9, 2.6 , 0 );
setMoveKey( spep_2 + 954 + OFFSET_X, 1, -240.4, 2.3 , 0 );
setMoveKey( spep_2 + 955 + OFFSET_X, 1, -240.4, 2.3 , 0 );
setMoveKey( spep_2 + 956 + OFFSET_X, 1, -237.2, 7.5 , 0 );
setMoveKey( spep_2 + 957 + OFFSET_X, 1, -237.2, 7.5 , 0 );
setMoveKey( spep_2 + 958 + OFFSET_X, 1, -242.5, 9.6 , 0 );
setMoveKey( spep_2 + 959 + OFFSET_X, 1, -242.5, 9.6 , 0 );
setMoveKey( spep_2 + 960 + OFFSET_X, 1, -237.4, 3.4 , 0 );
setMoveKey( spep_2 + 961 + OFFSET_X, 1, -237.4, 3.4 , 0 );
setMoveKey( spep_2 + 962 + OFFSET_X, 1, -236.7, 0.7 , 0 );
setMoveKey( spep_2 + 963 + OFFSET_X, 1, -236.7, 0.7 , 0 );
setMoveKey( spep_2 + 964 + OFFSET_X, 1, -239.9, 3.9 , 0 );
setMoveKey( spep_2 + 965 + OFFSET_X, 1, -239.9, 3.9 , 0 );
setMoveKey( spep_2 + 966 + OFFSET_X, 1, -235.7, -4 , 0 );
setMoveKey( spep_2 + 967 + OFFSET_X, 1, -235.7, -4 , 0 );
setMoveKey( spep_2 + 968 + OFFSET_X, 1, -241.4, 2.5 , 0 );
setMoveKey( spep_2 + 969 + OFFSET_X, 1, -241.4, 2.5 , 0 );
setMoveKey( spep_2 + 970 + OFFSET_X, 1, -247.2, 4 , 0 );
setMoveKey( spep_2 + 971 + OFFSET_X, 1, -247.2, 4 , 0 );
setMoveKey( spep_2 + 972 + OFFSET_X, 1, -252, 3.5 , 0 );
setMoveKey( spep_2 + 973 + OFFSET_X, 1, -252, 3.5 , 0 );
setMoveKey( spep_2 + 974 + OFFSET_X, 1, -253.2, 2.8 , 0 );
setMoveKey( spep_2 + 975 + OFFSET_X, 1, -253.2, 2.8 , 0 );
setMoveKey( spep_2 + 976 + OFFSET_X, 1, -251.2, 0.2 , 0 );
setMoveKey( spep_2 + 977 + OFFSET_X, 1, -251.2, 0.2 , 0 );
setMoveKey( spep_2 + 978 + OFFSET_X, 1, -253.5, -0.4 , 0 );
setMoveKey( spep_2 + 979 + OFFSET_X, 1, -253.5, -0.4 , 0 );
setMoveKey( spep_2 + 980 + OFFSET_X, 1, 166.7, 100.3 , 0 );
setMoveKey( spep_2 + 987 + OFFSET_X, 1, 166.7, 100.3 , 0 );
setMoveKey( spep_2 + 988 + OFFSET_X, 1, -143.8, -80.6 , 0 );
setMoveKey( spep_2 + 989 + OFFSET_X, 1, -143.8, -80.6 , 0 );
setMoveKey( spep_2 + 990 + OFFSET_X, 1, -151.2, -108 , 0 );
setMoveKey( spep_2 + 991 + OFFSET_X, 1, -151.2, -108 , 0 );
setMoveKey( spep_2 + 992 + OFFSET_X, 1, -243.6, -213 , 0 );
setMoveKey( spep_2 + 993 + OFFSET_X, 1, -243.6, -213 , 0 );
setMoveKey( spep_2 + 994 + OFFSET_X, 1, -242.4, -220.3 , 0 );
setMoveKey( spep_2 + 995 + OFFSET_X, 1, -242.4, -220.3 , 0 );
setMoveKey( spep_2 + 996 + OFFSET_X, 1, -260.5, -237.8 , 0 );
setMoveKey( spep_2 + 997 + OFFSET_X, 1, -260.5, -237.8 , 0 );
setMoveKey( spep_2 + 998 + OFFSET_X, 1, -314.2, -286.1 , 0 );
setMoveKey( spep_2 + 999 + OFFSET_X, 1, -314.2, -286.1 , 0 );
setMoveKey( spep_2 + 1000 + OFFSET_X, 1, -336, -304.9 , 0 );
setMoveKey( spep_2 + 1001 + OFFSET_X, 1, -336, -304.9 , 0 );
setMoveKey( spep_2 + 1002 + OFFSET_X, 1, -232.1, -157.6 , 0 );
setMoveKey( spep_2 + 1003 + OFFSET_X, 1, -232.1, -157.6 , 0 );
setMoveKey( spep_2 + 1004 + OFFSET_X, 1, -232.1, -166.6 , 0 );
setMoveKey( spep_2 + 1005 + OFFSET_X, 1, -232.1, -166.6 , 0 );
setMoveKey( spep_2 + 1006 + OFFSET_X, 1, -232.1, -179.2 , 0 );
setMoveKey( spep_2 + 1007 + OFFSET_X, 1, -232.1, -179.2 , 0 );
setMoveKey( spep_2 + 1008 + OFFSET_X, 1, -12.4, -28.2 , 0 );
setMoveKey( spep_2 + 1009 + OFFSET_X, 1, -12.4, -28.2 , 0 );
setMoveKey( spep_2 + 1010 + OFFSET_X, 1, -16.1, -38.4 , 0 );
setMoveKey( spep_2 + 1011 + OFFSET_X, 1, -16.1, -38.4 , 0 );
setMoveKey( spep_2 + 1012 + OFFSET_X, 1, 193.1, -29.3 , 0 );
setMoveKey( spep_2 + 1013 + OFFSET_X, 1, 193.1, -29.3 , 0 );
setMoveKey( spep_2 + 1014 + OFFSET_X, 1, 193.1, -37.5 , 0 );
setMoveKey( spep_2 + 1015 + OFFSET_X, 1, 193.1, -37.5 , 0 );
setMoveKey( spep_2 + 1016 + OFFSET_X, 1, 195, -49.2 , 0 );
setMoveKey( spep_2 + 1017 + OFFSET_X, 1, 195, -49.2 , 0 );
setMoveKey( spep_2 + 1018 + OFFSET_X, 1, 219.9, 75.2 , 0 );
setMoveKey( spep_2 + 1019 + OFFSET_X, 1, 219.9, 75.2 , 0 );
setMoveKey( spep_2 + 1020 + OFFSET_X, 1, 211.9, 64.4 , 0 );
setMoveKey( spep_2 + 1021 + OFFSET_X, 1, 211.9, 64.4 , 0 );
setMoveKey( spep_2 + 1022 + OFFSET_X, 1, 83.7, -44.9 , 0 );
setMoveKey( spep_2 + 1023 + OFFSET_X, 1, 83.7, -44.9 , 0 );
setMoveKey( spep_2 + 1024 + OFFSET_X, 1, 86.3, -53 , 0 );
setMoveKey( spep_2 + 1025 + OFFSET_X, 1, 86.3, -53 , 0 );
setMoveKey( spep_2 + 1026 + OFFSET_X, 1, 87.5, -68.8 , 0 );
setMoveKey( spep_2 + 1027 + OFFSET_X, 1, 87.5, -68.8 , 0 );
setMoveKey( spep_2 + 1028 + OFFSET_X, 1, 223.7, 16.2 , 0 );
setMoveKey( spep_2 + 1029 + OFFSET_X, 1, 223.7, 16.2 , 0 );
setMoveKey( spep_2 + 1030 + OFFSET_X, 1, 227.5, -6.3 , 0 );
setMoveKey( spep_2 + 1031 + OFFSET_X, 1, 227.5, -6.3 , 0 );
setMoveKey( spep_2 + 1032 + OFFSET_X, 1, 231, -39.6 , 0 );
setMoveKey( spep_2 + 1035 + OFFSET_X, 1, 231, -39.6 , 0 );
setMoveKey( spep_2 + 1036 + OFFSET_X, 1, 244.7, -34.1 , 0 );
setMoveKey( spep_2 + 1037 + OFFSET_X, 1, 244.7, -34.1 , 0 );
setMoveKey( spep_2 + 1038 + OFFSET_X, 1, 338.4, 52.4 , 0 );
setMoveKey( spep_2 + 1039 + OFFSET_X, 1, 338.4, 52.4 , 0 );
setMoveKey( spep_2 + 1040 + OFFSET_X, 1, 336.7, 67.3 , 0 );
setMoveKey( spep_2 + 1042 + OFFSET_X, 1, 336.7, 67.3 , 0 );

setScaleKey( spep_2 + 952 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 957 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 958 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 963 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 964 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 969 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 970 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 973 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 974 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 977 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 978 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 979 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 980 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 1042 + OFFSET_X, 1, 0.36, 0.36 );

setRotateKey( spep_2 + 952 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_2 + 953 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_2 + 954 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 955 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 956 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 957 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 958 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_2 + 959 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_2 + 960 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_2 + 961 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_2 + 962 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 963 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 964 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 965 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 966 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 967 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 968 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 969 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 970 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 971 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 972 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_2 + 973 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_2 + 974 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_2 + 975 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_2 + 976 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_2 + 977 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_2 + 978 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 979 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 980 + OFFSET_X, 1, -37 );
setRotateKey( spep_2 + 1039 + OFFSET_X, 1, -37 );
setRotateKey( spep_2 + 1040 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_2 + 1042 + OFFSET_X, 1, -42.6 );

-- ** 音 ** --
--向かっていく
SE012 = playSeVer2( spep_2 + 2, 1117, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 14, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE013, 46 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 48; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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
--パンチヒット
SE014 = playSeVer2( spep_2 + 50, 1003, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 60, 1359, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 60, 1049, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 64, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 82, 1011, "", 0, 20, 0, -1);

--敵吹き飛ばす
SE019 = playSeVer2( spep_2 + 146, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 146, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 146, SE020, 63 );

--敵飛んでいく
SE021 = playSeVer2( spep_2 + 164, 1121, "",spep_2 + 334, 0, 66, -1);

--追いつく
SE022 = playSeVer2( spep_2 + 200, 1452, "",spep_2 + 258, 0, 24, -1);
SE023 = playSeVer2( spep_2 + 200, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 200, SE023, 178 );

--蹴り飛ばす
SE024 = playSeVer2( spep_2 + 242, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 242, SE024, 138 );
SE025 = playSeVer2( spep_2 + 250, 1153, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 250, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE026, 79 );
SE027 = playSeVer2( spep_2 + 256, 1110, "", 0, 0, 0, -1);

--回り込む
SE028 = playSeVer2( spep_2 + 272, 1117, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 272, 1116, "",spep_2 + 322, 0, 20, -1);

--気弾溜め
SE030 = playSeVer2( spep_2 + 340, 1489, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 346, 1443, "",spep_2 + 478, 0, 30, -1);
SE032 = playSeVer2( spep_2 + 346, 1440, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 346, 1490, "",spep_2 + 472, 0, 20, -1);

--振りかぶる
SE034 = playSeVer2( spep_2 + 386, 1116, "",spep_2 + 450, 0, 34, -1);

--気弾投げ
SE035 = playSeVer2( spep_2 + 444, 1027, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 444, 1021, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 444, 1511, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 444, SE037, 58 );

--爆発
SE038 = playSeVer2( spep_2 + 470, 1024, "", 0, 0, 0, -1);

--移動する
SE039 = playSeVer2( spep_2 + 474, 1245, "", spep_2 + 528, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 474, SE039, 71 );
SE040 = playSeVer2( spep_2 + 482, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 482, SE040, 141 );

--パンチ
SE041 = playSeVer2( spep_2 + 500, 1153, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 500, 1187, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 500, 1278, "",spep_2 + 732, 0, 94, -1);
setSeVolumeByWorkId( spep_2 + 500, SE043, 76 );

--オーラ
SE044 = playSeVer2( spep_2 + 530, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 530, SE044, 50 );
SE045 = playSeVer2( spep_2 + 554, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 554, SE045, 50 );
SE047 = playSeVer2( spep_2 + 578, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 578, SE047, 50 );
SE048 = playSeVer2( spep_2 + 602, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 602, SE048, 50 );
SE050 = playSeVer2( spep_2 + 626, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 636, SE050, 50 );
SE054 = playSeVer2( spep_2 + 650, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 650, SE054, 50 );
SE055 = playSeVer2( spep_2 + 674, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 674, SE055, 50 );
SE056 = playSeVer2( spep_2 + 698, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 698, SE056, 50 );
SE058 = playSeVer2( spep_2 + 722, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 722, SE058, 50 );

--カメラズーム
SE046 = playSeVer2( spep_2 + 554, 1116, "",spep_2 + 634, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 554, SE046, 65 );

--壁激突
SE049 = playSeVer2( spep_2 + 618, 1004, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 636, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 636, SE051, 77 );
SE052 = playSeVer2( spep_2 + 636, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 636, SE052, 77 );
SE053 = playSeVer2( spep_2 + 636, 1044, "",spep_2 + 990, 0, 24, -1);

--壁ひきずる
SE057 = playSeVer2( spep_2 + 718, 1011, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 722, 1226, "",spep_2 + 1006, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 722, SE059, 59 );

--セリフカットイン
SE060 = playSeVer2( spep_2 + 822, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 822, SE060, 63 );

--敵投げ捨てる
SE061 = playSeVer2( spep_2 + 940, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 940, SE061, 77 );
SE062 = playSeVer2( spep_2 + 940, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 940, SE062, 108 );
SE063 = playSeVer2( spep_2 + 940, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 940, SE063, 61 );
SE064 = playSeVer2( spep_2 + 962, 1121, "",spep_2 + 1072, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 962, SE064, 76 );
setPitch( spep_2 + 962, SE064, 200 );
setTimeStretch( SE064, 1.13, 30, 4 );
SE065 = playSeVer2( spep_2 + 976, 1027, "", 0, 0, 0, -1);

--爆発
SE066 = playSeVer2( spep_2 + 1036, 1067, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_2 + 1036, 1159, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「おりゃあああっ！！」
playVoice( spep_2 + 826, 1136 );
setVoiceVolume( spep_2 + 826, 1136, 100 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 1046); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 1166F -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 超4悟空が咆哮をあげている
-------------------------------------------------
MAX_FRAME_0 = 116;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 超4悟空が咆哮をあげている(ef_001)
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

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 134, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 59 );
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 32 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 40 );
SE008 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE008, 50 );
SE009 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 63 );

--入り
SE003 = playSeVer2( spep_0 + 0, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );

--ズーム
SE004 = playSeVer2( spep_0 + 6, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE004, 79 );
SE007 = playSeVer2( spep_0 + 42, 1072, "",spep_0 + 102, 0, 8, -1);
setTimeStretch( SE007, 1.65, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --116F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinEx(spep_1, 0);

-- ** 音 ** --
--向かっていく
SE011 = playSeVer2( spep_1 + 90, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE011, 67 );

-------------------------------------------------
-- 敵に向かう超4悟空～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 1166;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 敵に向かう超4悟空～フィニッシュ(ef_002)
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 824;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 56 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 18 );

--敵位置調整
a = -240;
b = -500;

setMoveKey( spep_2 + 0, 1, -344.9 + a, 101.2 + b, 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -344.9 + a, 101.2 + b, 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -345.1 + a, 101.3 + b, 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -345.1 + a, 101.3 + b, 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -345.7 + a, 101.4 + b, 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -345.7 + a, 101.4 + b, 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -346.9 + a, 101.6 + b, 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -346.9 + a, 101.6 + b, 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -348.9 + a, 102 + b, 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -348.9 + a, 102 + b, 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -351.9 + a, 102.6 + b, 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -351.9 + a, 102.6 + b, 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -356.1 + a, 103.5 + b, 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -356.1 + a, 103.5 + b, 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -361.6 + a, 104.6 + b, 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -361.6 + a, 104.6 + b, 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -368.8 + a, 106 + b, 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -368.8 + a, 106 + b, 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -377.6 + a, 107.8 + b, 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -377.6 + a, 107.8 + b, 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -388.5 + a, 110 + b, 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -388.5 + a, 110 + b, 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -401.5 + a, 112.7 + b, 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -401.5 + a, 112.7 + b, 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -416.9 + a, 115.8 + b, 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -416.9 + a, 115.8 + b, 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -434.8 + a, 119.4 + b, 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -434.8 + a, 119.4 + b, 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -455.5 + a, 123.6 + b, 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -455.5 + a, 123.6 + b, 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -479.1 + a, 128.4 + b, 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -479.1 + a, 128.4 + b, 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -505.9 + a, 133.8 + b, 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -505.9 + a, 133.8 + b, 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -536.1 + a, 139.9 + b, 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -536.1 + a, 139.9 + b, 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -569.7 + a, 146.7 + b, 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -569.7 + a, 146.7 + b, 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -607.1 + a, 154.2 + b, 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -607.1 + a, 154.2 + b, 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -648.5 + a, 162.6 + b, 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -648.5 + a, 162.6 + b, 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -693.9 + a, 171.8 + b, 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -693.9 + a, 171.8 + b, 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -743.7 + a, 181.9 + b, 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -743.7 + a, 181.9 + b, 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -798.1 + a, 192.9 + b, 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -798.1 + a, 192.9 + b, 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -857.1 + a, 204.8 + b, 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -857.1 + a, 204.8 + b, 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -921.1 + a, 217.7 + b, 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -921.1 + a, 217.7 + b, 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -990.2 + a, 231.7 + b, 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -990.2 + a, 231.7 + b, 0 );

setScaleKey( spep_2 + 0, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 6.07, 6.07 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 6.07, 6.07 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 6.55, 6.55 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 6.55, 6.55 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 6.82, 6.82 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 6.82, 6.82 );

setRotateKey( spep_2 + 0, 1, 5 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, 5 );

--敵の動き2
setDisp( spep_2 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 156 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X, 1, 17 );
changeAnime( spep_2 + 74 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, -530.3, 52.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -530.3, 52.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 2.5, 9.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 2.5, 9.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -34.4, 0.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -34.4, 0.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -165.7, 25.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -165.7, 25.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -131.6, 3 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -131.6, 3 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 231.4, -75.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 231.4, -75.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 191.9, -113.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 191.9, -113.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -63.3, 52.6 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -63.3, 52.6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -63.2, 50.7 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -63.2, 50.7 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -102.8, -100.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -102.8, -100.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -104.6, -100.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -104.6, -100.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -212.5, 50.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -212.5, 50.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -212.4, 50.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -212.4, 50.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -185.3, 146.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -185.3, 146.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -187.2, 148.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -187.2, 148.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -142.1, 43.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -142.1, 43.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -142.1, 43.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -142.1, 43.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 34.4, 335.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 34.4, 335.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -167.2, 144.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -167.2, 144.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -167.2, 144.3 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -167.2, 144.3 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -167.2, 140.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -167.2, 140.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -11, 34.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -11, 34.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -7.3, 30.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -7.3, 30.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -11.3, 76.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -11.3, 76.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -12.2, 78.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -12.2, 78.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -13.2, 80.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -13.2, 80.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 107.8, 82.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 107.8, 82.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 102, 71 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 102, 71 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 267.6, 167.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 267.6, 167.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 265.9, 165 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 265.9, 165 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 188.2, 105.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 188.2, 105.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -482.7, 117.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -482.7, 117.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -478.9, 116.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -478.9, 116.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -478.9, 116.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -478.9, 116.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -478.9, 114.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -478.9, 114.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -478.9, 112.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -478.9, 112.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -246.4, 14.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -246.4, 14.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -250.1, 10.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -250.1, 10.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -250, 22.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -250, 22.5 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 9.5, 9.5 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 9.5, 9.5 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 15.47, 15.47 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 15.47, 15.47 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 10.41, 10.41 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 10.41, 10.41 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 11.91, 11.91 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 11.91, 11.91 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 15.47, 15.47 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 15.47, 15.47 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 4.75, 4.75 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 14 );

--敵の動き3
setDisp( spep_2 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 266 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 160 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 210 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 256 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 160 + OFFSET_X, 1, -12.5, -9.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -12.5, -9.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -10.8, -37.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -10.8, -37.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -11.1, 3.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -11.1, 3.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -11.3, 3.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -11.3, 3.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -11.5, -8.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -11.5, -8.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -42.1, 16.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -42.1, 16.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -78.4, 30 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -78.4, 30 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -93.8, 81.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -93.8, 81.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -113.9, 95 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -113.9, 95 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -131.5, 85.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -131.5, 85.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -153.5, 126.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -153.5, 126.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -136.4, 114.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -136.4, 114.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -144.2, 143.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -144.2, 143.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -150.6, 152.8 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -150.6, 152.8 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -161.7, 141.5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -161.7, 141.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -167.5, 153.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -167.5, 153.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -178.2, 144.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -178.2, 144.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -183.6, 153.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -183.6, 153.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -188.2, 148.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -188.2, 148.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -195.6, 140.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -195.6, 140.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -192.1, 145 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -192.1, 145 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -194.5, 142.4 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -194.5, 142.4 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -192.1, 143.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -192.1, 143.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -191.9, 142 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -191.9, 142 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -191.5, 138.3 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -191.5, 138.3 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -173.9, 74.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -173.9, 74.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -175.9, 78.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -175.9, 78.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -173.9, 72.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -173.9, 72.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -173.9, 76.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -173.9, 76.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -175.9, 72.3 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -175.9, 72.3 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -175.9, 76.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -175.9, 76.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -175.9, 74.3 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -175.9, 74.3 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -173.8, 70.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -173.8, 70.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -176.6, 74.3 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -176.6, 74.3 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -185.4, 74 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -185.4, 74 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -244.9, 77.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -244.9, 77.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -791.1, -82.6 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -791.1, -82.6 , 0 );

setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_2 + 160 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -75 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -75 );

--敵の動き4
setDisp( spep_2 + 310 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 348 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 310 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 310 + OFFSET_X, 1, 115.6, -177.4 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 115.6, -177.4 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 124, -178.7 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 124, -178.7 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 132.7, -187.4 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 132.7, -187.4 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 140.8, -189 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 140.8, -189 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 151.6, -194.5 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 151.6, -194.5 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 157.8, -198.1 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 157.8, -198.1 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 168.1, -202.1 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 168.1, -202.1 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 173.2, -206.3 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 173.2, -206.3 , 0 );

setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 310 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 54.2 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 54.2 );

--敵の動き5
setDisp( spep_2 + 464 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 552 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 464 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 508 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 464 + OFFSET_X, 1, 34.8, 87.3 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 34.8, 87.3 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 34.8, 87.2 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 34.8, 87.2 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 34.7, 87.2 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 34.7, 87.2 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 44.3, 76 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 44.3, 76 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 37.9, 87.2 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 37.9, 87.2 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 36.3, 79.2 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 36.3, 79.2 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 42.7, 85.6 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 42.7, 85.6 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 42.7, 80.8 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 42.7, 80.8 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 42.7, 85.6 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 42.7, 85.6 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 39.5, 80.8 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 39.5, 80.8 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 41.1, 77.6 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 41.1, 77.6 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 39.5, 76 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 39.5, 76 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 39.5, 77.6 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 39.5, 77.6 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 38.7, 79.2 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 38.7, 79.2 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 37.9, 80.8 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 37.9, 80.8 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 37.1, 82.4 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 37.1, 82.4 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 36.3, 84 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 36.3, 84 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 35.5, 85.6 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 35.5, 85.6 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 176.3, 50.5 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 176.3, 50.5 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 187.5, 74.5 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 187.5, 74.5 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 272.3, 48.9 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 272.3, 48.9 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 294.7, 61.7 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 294.7, 61.7 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 312.3, 44.1 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 312.3, 44.1 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 319.8, 52.1 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 319.8, 52.1 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 332.6, 39.3 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 332.6, 39.3 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 316.6, 53.7 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 316.6, 53.7 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 370.5, 39.3 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 370.5, 39.3 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 373.7, 48.9 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 373.7, 48.9 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 395.8, 36.1 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 395.8, 36.1 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 405.4, 47.3 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 405.4, 47.3 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 413.4, 42.5 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 413.4, 42.5 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 420.3, 39.3 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 420.3, 39.3 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 420.3, 44.1 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 420.3, 44.1 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 441.4, 40.9 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 441.4, 40.9 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 443, 45.7 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 443, 45.7 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 444.6, 47.3 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 444.6, 47.3 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 399.8, 50.5 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 399.8, 50.5 , 0 );

setScaleKey( spep_2 + 464 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 469 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 464 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_2 + 552 + OFFSET_X, 1, -8.5 );

--敵の動き6
setDisp( spep_2 + 624 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 756 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 624 + OFFSET_X, 1, -283.6, 136.3 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, -283.6, 136.3 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, -285.2, 133.1 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, -285.2, 133.1 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, -285.2, 136.4 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, -285.2, 136.4 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, -285.2, 136.3 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, -285.2, 136.3 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, -145, 88.6 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, -145, 88.6 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, -143.4, 90.2 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, -143.4, 90.2 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, -11.7, 49.1 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, -11.7, 49.1 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, -10.1, 50.7 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, -10.1, 50.7 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, 112.3, 18.7 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, 112.3, 18.7 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 107.6, 31.5 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, 107.6, 31.5 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, 104.4, 10.5 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, 104.4, 10.5 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, 104.5, 23.4 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 104.5, 23.4 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 104.7, 23.3 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, 104.7, 23.3 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, 108, 15.3 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, 108, 15.3 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 112.8, 29.7 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 112.8, 29.7 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 104.8, 19.9 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, 104.8, 19.9 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, 101.7, 31.1 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, 101.7, 31.1 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, 101.9, 30.8 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, 101.9, 30.8 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, 106.9, 24.2 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, 106.9, 24.2 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, 105.4, 28.8 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, 105.4, 28.8 , 0 );
setMoveKey( spep_2 + 666 + OFFSET_X, 1, 102.3, 23.8 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, 102.3, 23.8 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, 104.1, 28.5 , 0 );
setMoveKey( spep_2 + 669 + OFFSET_X, 1, 104.1, 28.5 , 0 );
setMoveKey( spep_2 + 670 + OFFSET_X, 1, 104.3, 28.3 , 0 );
setMoveKey( spep_2 + 671 + OFFSET_X, 1, 104.3, 28.3 , 0 );
setMoveKey( spep_2 + 672 + OFFSET_X, 1, 106, 23.2 , 0 );
setMoveKey( spep_2 + 673 + OFFSET_X, 1, 106, 23.2 , 0 );
setMoveKey( spep_2 + 674 + OFFSET_X, 1, 110.9, 27.9 , 0 );
setMoveKey( spep_2 + 675 + OFFSET_X, 1, 110.9, 27.9 , 0 );
setMoveKey( spep_2 + 676 + OFFSET_X, 1, 112.5, 21.3 , 0 );
setMoveKey( spep_2 + 677 + OFFSET_X, 1, 112.5, 21.3 , 0 );
setMoveKey( spep_2 + 678 + OFFSET_X, 1, 112.6, 29.3 , 0 );
setMoveKey( spep_2 + 679 + OFFSET_X, 1, 112.6, 29.3 , 0 );
setMoveKey( spep_2 + 680 + OFFSET_X, 1, 112.6, 29 , 0 );
setMoveKey( spep_2 + 681 + OFFSET_X, 1, 112.6, 29 , 0 );
setMoveKey( spep_2 + 682 + OFFSET_X, 1, 112.5, 25.5 , 0 );
setMoveKey( spep_2 + 683 + OFFSET_X, 1, 112.5, 25.5 , 0 );
setMoveKey( spep_2 + 684 + OFFSET_X, 1, 112.5, 31.7 , 0 );
setMoveKey( spep_2 + 685 + OFFSET_X, 1, 112.5, 31.7 , 0 );
setMoveKey( spep_2 + 686 + OFFSET_X, 1, 109.3, 26.6 , 0 );
setMoveKey( spep_2 + 687 + OFFSET_X, 1, 109.3, 26.6 , 0 );
setMoveKey( spep_2 + 688 + OFFSET_X, 1, 109.3, 26.3 , 0 );
setMoveKey( spep_2 + 689 + OFFSET_X, 1, 109.3, 26.3 , 0 );
setMoveKey( spep_2 + 690 + OFFSET_X, 1, 114.1, 29.3 , 0 );
setMoveKey( spep_2 + 691 + OFFSET_X, 1, 114.1, 29.3 , 0 );
setMoveKey( spep_2 + 692 + OFFSET_X, 1, 110.8, 24.2 , 0 );
setMoveKey( spep_2 + 693 + OFFSET_X, 1, 110.8, 24.2 , 0 );
setMoveKey( spep_2 + 694 + OFFSET_X, 1, 109.3, 30.4 , 0 );
setMoveKey( spep_2 + 695 + OFFSET_X, 1, 109.3, 30.4 , 0 );
setMoveKey( spep_2 + 696 + OFFSET_X, 1, 110.9, 26.8 , 0 );
setMoveKey( spep_2 + 697 + OFFSET_X, 1, 110.9, 26.8 , 0 );
setMoveKey( spep_2 + 698 + OFFSET_X, 1, 110.9, 26.5 , 0 );
setMoveKey( spep_2 + 699 + OFFSET_X, 1, 110.9, 26.5 , 0 );
setMoveKey( spep_2 + 700 + OFFSET_X, 1, 107.7, 31 , 0 );
setMoveKey( spep_2 + 701 + OFFSET_X, 1, 107.7, 31 , 0 );
setMoveKey( spep_2 + 702 + OFFSET_X, 1, 112.6, 24.2 , 0 );
setMoveKey( spep_2 + 703 + OFFSET_X, 1, 112.6, 24.2 , 0 );
setMoveKey( spep_2 + 704 + OFFSET_X, 1, 114.1, 30.4 , 0 );
setMoveKey( spep_2 + 705 + OFFSET_X, 1, 114.1, 30.4 , 0 );
setMoveKey( spep_2 + 706 + OFFSET_X, 1, 117.2, 25.1 , 0 );
setMoveKey( spep_2 + 707 + OFFSET_X, 1, 117.2, 25.1 , 0 );
setMoveKey( spep_2 + 708 + OFFSET_X, 1, 116.9, 24.8 , 0 );
setMoveKey( spep_2 + 709 + OFFSET_X, 1, 116.9, 24.8 , 0 );
setMoveKey( spep_2 + 710 + OFFSET_X, 1, 118.2, 29.3 , 0 );
setMoveKey( spep_2 + 711 + OFFSET_X, 1, 118.2, 29.3 , 0 );
setMoveKey( spep_2 + 712 + OFFSET_X, 1, 119.5, 25.7 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, 119.5, 25.7 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, 115.9, 31.7 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, 115.9, 31.7 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, 117.2, 26.3 , 0 );
setMoveKey( spep_2 + 717 + OFFSET_X, 1, 117.2, 26.3 , 0 );
setMoveKey( spep_2 + 718 + OFFSET_X, 1, 116.9, 25.9 , 0 );
setMoveKey( spep_2 + 719 + OFFSET_X, 1, 116.9, 25.9 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, 118.1, 28.7 , 0 );
setMoveKey( spep_2 + 721 + OFFSET_X, 1, 118.1, 28.7 , 0 );
setMoveKey( spep_2 + 722 + OFFSET_X, 1, 112.9, 26.5 , 0 );
setMoveKey( spep_2 + 723 + OFFSET_X, 1, 112.9, 26.5 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, 117.5, 34 , 0 );
setMoveKey( spep_2 + 725 + OFFSET_X, 1, 117.5, 34 , 0 );
setMoveKey( spep_2 + 726 + OFFSET_X, 1, 120.3, 28.1 , 0 );
setMoveKey( spep_2 + 729 + OFFSET_X, 1, 120.3, 28.1 , 0 );
setMoveKey( spep_2 + 730 + OFFSET_X, 1, 113.1, 37 , 0 );
setMoveKey( spep_2 + 731 + OFFSET_X, 1, 113.1, 37 , 0 );
setMoveKey( spep_2 + 732 + OFFSET_X, 1, 120.9, 27.5 , 0 );
setMoveKey( spep_2 + 733 + OFFSET_X, 1, 120.9, 27.5 , 0 );
setMoveKey( spep_2 + 734 + OFFSET_X, 1, 112, 36.3 , 0 );
setMoveKey( spep_2 + 735 + OFFSET_X, 1, 112, 36.3 , 0 );
setMoveKey( spep_2 + 736 + OFFSET_X, 1, 123.1, 24.9 , 0 );
setMoveKey( spep_2 + 739 + OFFSET_X, 1, 123.1, 24.9 , 0 );
setMoveKey( spep_2 + 740 + OFFSET_X, 1, 116.4, 42.8 , 0 );
setMoveKey( spep_2 + 741 + OFFSET_X, 1, 116.4, 42.8 , 0 );
setMoveKey( spep_2 + 742 + OFFSET_X, 1, 113.2, 35.8 , 0 );
setMoveKey( spep_2 + 743 + OFFSET_X, 1, 113.2, 35.8 , 0 );
setMoveKey( spep_2 + 744 + OFFSET_X, 1, 107.2, 37.4 , 0 );
setMoveKey( spep_2 + 745 + OFFSET_X, 1, 107.2, 37.4 , 0 );
setMoveKey( spep_2 + 746 + OFFSET_X, 1, 97.4, 20.8 , 0 );
setMoveKey( spep_2 + 747 + OFFSET_X, 1, 97.4, 20.8 , 0 );
setMoveKey( spep_2 + 748 + OFFSET_X, 1, 97.1, 19.4 , 0 );
setMoveKey( spep_2 + 749 + OFFSET_X, 1, 97.1, 19.4 , 0 );
setMoveKey( spep_2 + 750 + OFFSET_X, 1, 87.7, 30.8 , 0 );
setMoveKey( spep_2 + 751 + OFFSET_X, 1, 87.7, 30.8 , 0 );
setMoveKey( spep_2 + 752 + OFFSET_X, 1, 101.5, 16.6 , 0 );
setMoveKey( spep_2 + 753 + OFFSET_X, 1, 101.5, 16.6 , 0 );
setMoveKey( spep_2 + 754 + OFFSET_X, 1, 97.7, 13.1 , 0 );
setMoveKey( spep_2 + 756 + OFFSET_X, 1, 97.7, 13.1 , 0 );

setScaleKey( spep_2 + 624 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 631 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 632 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 635 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 636 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 739 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 740 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 745 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 746 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 753 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 754 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 756 + OFFSET_X, 1, 1.21, 1.21 );

setRotateKey( spep_2 + 624 + OFFSET_X, 1, 37.6 );
setRotateKey( spep_2 + 756 + OFFSET_X, 1, 37.6 );

--敵の動き7
setDisp( spep_2 + 952 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 1042 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 952 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 980 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 952 + OFFSET_X, 1, 239.9, 2.6 , 0 );
setMoveKey( spep_2 + 953 + OFFSET_X, 1, 239.9, 2.6 , 0 );
setMoveKey( spep_2 + 954 + OFFSET_X, 1, 240.4, 2.3 , 0 );
setMoveKey( spep_2 + 955 + OFFSET_X, 1, 240.4, 2.3 , 0 );
setMoveKey( spep_2 + 956 + OFFSET_X, 1, 237.2, 7.5 , 0 );
setMoveKey( spep_2 + 957 + OFFSET_X, 1, 237.2, 7.5 , 0 );
setMoveKey( spep_2 + 958 + OFFSET_X, 1, 242.5, 9.6 , 0 );
setMoveKey( spep_2 + 959 + OFFSET_X, 1, 242.5, 9.6 , 0 );
setMoveKey( spep_2 + 960 + OFFSET_X, 1, 237.4, 3.4 , 0 );
setMoveKey( spep_2 + 961 + OFFSET_X, 1, 237.4, 3.4 , 0 );
setMoveKey( spep_2 + 962 + OFFSET_X, 1, 236.7, 0.7 , 0 );
setMoveKey( spep_2 + 963 + OFFSET_X, 1, 236.7, 0.7 , 0 );
setMoveKey( spep_2 + 964 + OFFSET_X, 1, 239.9, 3.9 , 0 );
setMoveKey( spep_2 + 965 + OFFSET_X, 1, 239.9, 3.9 , 0 );
setMoveKey( spep_2 + 966 + OFFSET_X, 1, 235.7, -4 , 0 );
setMoveKey( spep_2 + 967 + OFFSET_X, 1, 235.7, -4 , 0 );
setMoveKey( spep_2 + 968 + OFFSET_X, 1, 241.4, 2.5 , 0 );
setMoveKey( spep_2 + 969 + OFFSET_X, 1, 241.4, 2.5 , 0 );
setMoveKey( spep_2 + 970 + OFFSET_X, 1, 247.2, 4 , 0 );
setMoveKey( spep_2 + 971 + OFFSET_X, 1, 247.2, 4 , 0 );
setMoveKey( spep_2 + 972 + OFFSET_X, 1, 252, 3.5 , 0 );
setMoveKey( spep_2 + 973 + OFFSET_X, 1, 252, 3.5 , 0 );
setMoveKey( spep_2 + 974 + OFFSET_X, 1, 253.2, 2.8 , 0 );
setMoveKey( spep_2 + 975 + OFFSET_X, 1, 253.2, 2.8 , 0 );
setMoveKey( spep_2 + 976 + OFFSET_X, 1, 251.2, 0.2 , 0 );
setMoveKey( spep_2 + 977 + OFFSET_X, 1, 251.2, 0.2 , 0 );
setMoveKey( spep_2 + 978 + OFFSET_X, 1, 253.5, -0.4 , 0 );
setMoveKey( spep_2 + 979 + OFFSET_X, 1, 253.5, -0.4 , 0 );
setMoveKey( spep_2 + 980 + OFFSET_X, 1, -166.7, 100.3 , 0 );
setMoveKey( spep_2 + 987 + OFFSET_X, 1, -166.7, 100.3 , 0 );
setMoveKey( spep_2 + 988 + OFFSET_X, 1, 143.8, -80.6 , 0 );
setMoveKey( spep_2 + 989 + OFFSET_X, 1, 143.8, -80.6 , 0 );
setMoveKey( spep_2 + 990 + OFFSET_X, 1, 151.2, -108 , 0 );
setMoveKey( spep_2 + 991 + OFFSET_X, 1, 151.2, -108 , 0 );
setMoveKey( spep_2 + 992 + OFFSET_X, 1, 243.6, -213 , 0 );
setMoveKey( spep_2 + 993 + OFFSET_X, 1, 243.6, -213 , 0 );
setMoveKey( spep_2 + 994 + OFFSET_X, 1, 242.4, -220.3 , 0 );
setMoveKey( spep_2 + 995 + OFFSET_X, 1, 242.4, -220.3 , 0 );
setMoveKey( spep_2 + 996 + OFFSET_X, 1, 260.5, -237.8 , 0 );
setMoveKey( spep_2 + 997 + OFFSET_X, 1, 260.5, -237.8 , 0 );
setMoveKey( spep_2 + 998 + OFFSET_X, 1, 314.2, -286.1 , 0 );
setMoveKey( spep_2 + 999 + OFFSET_X, 1, 314.2, -286.1 , 0 );
setMoveKey( spep_2 + 1000 + OFFSET_X, 1, 336, -304.9 , 0 );
setMoveKey( spep_2 + 1001 + OFFSET_X, 1, 336, -304.9 , 0 );
setMoveKey( spep_2 + 1002 + OFFSET_X, 1, 232.1, -157.6 , 0 );
setMoveKey( spep_2 + 1003 + OFFSET_X, 1, 232.1, -157.6 , 0 );
setMoveKey( spep_2 + 1004 + OFFSET_X, 1, 232.1, -166.6 , 0 );
setMoveKey( spep_2 + 1005 + OFFSET_X, 1, 232.1, -166.6 , 0 );
setMoveKey( spep_2 + 1006 + OFFSET_X, 1, 232.1, -179.2 , 0 );
setMoveKey( spep_2 + 1007 + OFFSET_X, 1, 232.1, -179.2 , 0 );
setMoveKey( spep_2 + 1008 + OFFSET_X, 1, 12.4, -28.2 , 0 );
setMoveKey( spep_2 + 1009 + OFFSET_X, 1, 12.4, -28.2 , 0 );
setMoveKey( spep_2 + 1010 + OFFSET_X, 1, 16.1, -38.4 , 0 );
setMoveKey( spep_2 + 1011 + OFFSET_X, 1, 16.1, -38.4 , 0 );
setMoveKey( spep_2 + 1012 + OFFSET_X, 1, -193.1, -29.3 , 0 );
setMoveKey( spep_2 + 1013 + OFFSET_X, 1, -193.1, -29.3 , 0 );
setMoveKey( spep_2 + 1014 + OFFSET_X, 1, -193.1, -37.5 , 0 );
setMoveKey( spep_2 + 1015 + OFFSET_X, 1, -193.1, -37.5 , 0 );
setMoveKey( spep_2 + 1016 + OFFSET_X, 1, -195, -49.2 , 0 );
setMoveKey( spep_2 + 1017 + OFFSET_X, 1, -195, -49.2 , 0 );
setMoveKey( spep_2 + 1018 + OFFSET_X, 1, -219.9, 75.2 , 0 );
setMoveKey( spep_2 + 1019 + OFFSET_X, 1, -219.9, 75.2 , 0 );
setMoveKey( spep_2 + 1020 + OFFSET_X, 1, -211.9, 64.4 , 0 );
setMoveKey( spep_2 + 1021 + OFFSET_X, 1, -211.9, 64.4 , 0 );
setMoveKey( spep_2 + 1022 + OFFSET_X, 1, -83.7, -44.9 , 0 );
setMoveKey( spep_2 + 1023 + OFFSET_X, 1, -83.7, -44.9 , 0 );
setMoveKey( spep_2 + 1024 + OFFSET_X, 1, -86.3, -53 , 0 );
setMoveKey( spep_2 + 1025 + OFFSET_X, 1, -86.3, -53 , 0 );
setMoveKey( spep_2 + 1026 + OFFSET_X, 1, -87.5, -68.8 , 0 );
setMoveKey( spep_2 + 1027 + OFFSET_X, 1, -87.5, -68.8 , 0 );
setMoveKey( spep_2 + 1028 + OFFSET_X, 1, -223.7, 16.2 , 0 );
setMoveKey( spep_2 + 1029 + OFFSET_X, 1, -223.7, 16.2 , 0 );
setMoveKey( spep_2 + 1030 + OFFSET_X, 1, -227.5, -6.3 , 0 );
setMoveKey( spep_2 + 1031 + OFFSET_X, 1, -227.5, -6.3 , 0 );
setMoveKey( spep_2 + 1032 + OFFSET_X, 1, -231, -39.6 , 0 );
setMoveKey( spep_2 + 1035 + OFFSET_X, 1, -231, -39.6 , 0 );
setMoveKey( spep_2 + 1036 + OFFSET_X, 1, -244.7, -34.1 , 0 );
setMoveKey( spep_2 + 1037 + OFFSET_X, 1, -244.7, -34.1 , 0 );
setMoveKey( spep_2 + 1038 + OFFSET_X, 1, -338.4, 52.4 , 0 );
setMoveKey( spep_2 + 1039 + OFFSET_X, 1, -338.4, 52.4 , 0 );
setMoveKey( spep_2 + 1040 + OFFSET_X, 1, -336.7, 67.3 , 0 );
setMoveKey( spep_2 + 1042 + OFFSET_X, 1, -336.7, 67.3 , 0 );

setScaleKey( spep_2 + 952 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 957 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 958 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 963 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 964 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 969 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 970 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 973 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 974 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 977 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 978 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 979 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 980 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 1042 + OFFSET_X, 1, 0.36, 0.36 );

setRotateKey( spep_2 + 952 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 953 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 954 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 955 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 956 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 957 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 958 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_2 + 959 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_2 + 960 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_2 + 961 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_2 + 962 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 963 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 964 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 965 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 966 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 967 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 968 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 969 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 970 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 971 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 972 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 973 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 974 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 975 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 976 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_2 + 977 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_2 + 978 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 979 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 980 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 1039 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 1040 + OFFSET_X, 1, 42.6 );
setRotateKey( spep_2 + 1042 + OFFSET_X, 1, 42.6 );

-- ** 音 ** --
--向かっていく
SE012 = playSeVer2( spep_2 + 2, 1117, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 14, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE013, 46 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 48; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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
--パンチヒット
SE014 = playSeVer2( spep_2 + 50, 1003, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 60, 1359, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 60, 1049, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 64, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 82, 1011, "", 0, 20, 0, -1);

--敵吹き飛ばす
SE019 = playSeVer2( spep_2 + 146, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 146, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 146, SE020, 63 );

--敵飛んでいく
SE021 = playSeVer2( spep_2 + 164, 1121, "",spep_2 + 334, 0, 66, -1);

--追いつく
SE022 = playSeVer2( spep_2 + 200, 1452, "",spep_2 + 258, 0, 24, -1);
SE023 = playSeVer2( spep_2 + 200, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 200, SE023, 178 );

--蹴り飛ばす
SE024 = playSeVer2( spep_2 + 242, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 242, SE024, 138 );
SE025 = playSeVer2( spep_2 + 250, 1153, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 250, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE026, 79 );
SE027 = playSeVer2( spep_2 + 256, 1110, "", 0, 0, 0, -1);

--回り込む
SE028 = playSeVer2( spep_2 + 272, 1117, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 272, 1116, "",spep_2 + 322, 0, 20, -1);

--気弾溜め
SE030 = playSeVer2( spep_2 + 340, 1489, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 346, 1443, "",spep_2 + 478, 0, 30, -1);
SE032 = playSeVer2( spep_2 + 346, 1440, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 346, 1490, "",spep_2 + 472, 0, 20, -1);

--振りかぶる
SE034 = playSeVer2( spep_2 + 386, 1116, "",spep_2 + 450, 0, 34, -1);

--気弾投げ
SE035 = playSeVer2( spep_2 + 444, 1027, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 444, 1021, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 444, 1511, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 444, SE037, 58 );

--爆発
SE038 = playSeVer2( spep_2 + 470, 1024, "", 0, 0, 0, -1);

--移動する
SE039 = playSeVer2( spep_2 + 474, 1245, "", spep_2 + 528, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 474, SE039, 71 );
SE040 = playSeVer2( spep_2 + 482, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 482, SE040, 141 );

--パンチ
SE041 = playSeVer2( spep_2 + 500, 1153, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 500, 1187, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 500, 1278, "",spep_2 + 732, 0, 94, -1);
setSeVolumeByWorkId( spep_2 + 500, SE043, 76 );

--オーラ
SE044 = playSeVer2( spep_2 + 530, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 530, SE044, 50 );
SE045 = playSeVer2( spep_2 + 554, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 554, SE045, 50 );
SE047 = playSeVer2( spep_2 + 578, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 578, SE047, 50 );
SE048 = playSeVer2( spep_2 + 602, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 602, SE048, 50 );
SE050 = playSeVer2( spep_2 + 626, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 636, SE050, 50 );
SE054 = playSeVer2( spep_2 + 650, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 650, SE054, 50 );
SE055 = playSeVer2( spep_2 + 674, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 674, SE055, 50 );
SE056 = playSeVer2( spep_2 + 698, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 698, SE056, 50 );
SE058 = playSeVer2( spep_2 + 722, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 722, SE058, 50 );

--カメラズーム
SE046 = playSeVer2( spep_2 + 554, 1116, "",spep_2 + 634, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 554, SE046, 65 );

--壁激突
SE049 = playSeVer2( spep_2 + 618, 1004, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 636, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 636, SE051, 77 );
SE052 = playSeVer2( spep_2 + 636, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 636, SE052, 77 );
SE053 = playSeVer2( spep_2 + 636, 1044, "",spep_2 + 990, 0, 24, -1);

--壁ひきずる
SE057 = playSeVer2( spep_2 + 718, 1011, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 722, 1226, "",spep_2 + 1006, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 722, SE059, 59 );

--セリフカットイン
SE060 = playSeVer2( spep_2 + 822, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 822, SE060, 63 );

--敵投げ捨てる
SE061 = playSeVer2( spep_2 + 940, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 940, SE061, 77 );
SE062 = playSeVer2( spep_2 + 940, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 940, SE062, 108 );
SE063 = playSeVer2( spep_2 + 940, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 940, SE063, 61 );
SE064 = playSeVer2( spep_2 + 962, 1121, "",spep_2 + 1072, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 962, SE064, 76 );
setPitch( spep_2 + 962, SE064, 200 );
setTimeStretch( SE064, 1.13, 30, 4 );
SE065 = playSeVer2( spep_2 + 976, 1027, "", 0, 0, 0, -1);

--爆発
SE066 = playSeVer2( spep_2 + 1036, 1067, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_2 + 1036, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 1046); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 1166F -4

end
