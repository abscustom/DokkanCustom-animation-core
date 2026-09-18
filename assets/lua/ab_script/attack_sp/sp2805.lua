--4030490:LR_超サイヤ人孫悟空(天使)+超サイヤ人ベジータ(天使)_超必殺技：超龍双拳
--sp_effect_a1_00476
--sp2805

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163513;  -- 冒頭～カットインまで ef_001
SP_02 = 163514;  -- 上昇～フィニッシュ：手前 ef_002
--SP_02b = 163515;  -- 上昇～フィニッシュ：手前 ef_002b


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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 冒頭～カットインまで
-------------------------------------------------
MAX_FRAME_0 = 660;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 冒頭～カットインまで(ef_001)
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
spep_x = spep_0 + 568;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);

--地響き
SE002 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 406, 0, 114, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 62 );

--オーラ
SE003 = playSeVer2( spep_0 + 14, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE004 = playSeVer2( spep_0 + 14, 1147, "",spep_0 + 112, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 14, SE004, 71 );

--オーラ
SE005 = playSeVer2( spep_0 + 38, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 62, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE007 = playSeVer2( spep_0 + 80, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE007, 41 );

--画面遷移
SE008 = playSeVer2( spep_0 + 80, 1232, "", 0, 0, 0, -1);

--気が高まる
SE009 = playSeVer2( spep_0 + 80, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE009, 60 );
SE010 = playSeVer2( spep_0 + 80, 1227, "",spep_0 + 458, 0, 150, -1);

--オーラ
SE011 = playSeVer2( spep_0 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE011, 40 );
SE012 = playSeVer2( spep_0 + 110, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE012, 40 );
SE013 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE013, 40 );
SE014 = playSeVer2( spep_0 + 158, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE014, 71 );

--イナヅマ
SE015 = playSeVer2( spep_0 + 170, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE015, 71 );

--気が高まる
SE016 = playSeVer2( spep_0 + 176, 1184, "", 0, 0, 0, -1);

--オーラ
SE017 = playSeVer2( spep_0 + 182, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE017, 71 );

--爆発する
SE018 = playSeVer2( spep_0 + 202, 1060, "", 0, 0, 0, -1);

--オーラ
SE019 = playSeVer2( spep_0 + 206, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE019, 71 );

--煙あける
SE020 = playSeVer2( spep_0 + 300, 1168, "", 0, 40, 0, -1);
setStartTimeMs( SE020,  1333 );

--オーラ
SE021 = playSeVer2( spep_0 + 230, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE021, 71 );
SE022 = playSeVer2( spep_0 + 254, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE022, 71 );

--気が高まる
SE023 = playSeVer2( spep_0 + 260, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE023, 60 );
SE024 = playSeVer2( spep_0 + 260, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE024, 74 );

--オーラ
SE025 = playSeVer2( spep_0 + 278, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE025, 71 );
SE026 = playSeVer2( spep_0 + 302, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE026, 71 );

--気が爆発する
SE027 = playSeVer2( spep_0 + 308, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE027, 145 );

--煙あける
SE028 = playSeVer2( spep_0 + 322, 1219, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE028, 136 );
setPitch( spep_0 + 322, SE028, -500 );
setTimeStretch( SE028, 0.67, 30, 4 );

--オーラ
SE029 = playSeVer2( spep_0 + 326, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE029, 71 );
SE030 = playSeVer2( spep_0 + 350, 1036, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 374, 1036, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 398, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE033 = playSeVer2( spep_0 + 408, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE033, 71 );

--オーラ
SE034 = playSeVer2( spep_0 + 422, 1036, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 446, 1036, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 470, 1036, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 494, 1036, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 518, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE039 = playSeVer2( spep_0 + 518, 1147, "",spep_0 + 688, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 518, SE039, 71 );

--オーラ
SE040 = playSeVer2( spep_0 + 542, 1036, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 566, 1036, "", 0, 0, 0, -1);

--雷落ちる
SE042 = playSeVer2( spep_0 + 566, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 566, SE042, 158 );
SE043 = playSeVer2( spep_0 + 566, 1023, "", 0, 0, 0, -1);

--オーラ
SE045 = playSeVer2( spep_0 + 590, 1036, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 614, 1036, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 638, 1036, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --660F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--上昇する
SE049 = playSeVer2( spep_1 + 86, 1116, "",spep_1 + 130, 0, 20, -1);
SE050 = playSeVer2( spep_1 + 88, 1117, "", 0, 0, 0, -1);

-------------------------------------------------
-- 上昇～フィニッシュ：手前
-------------------------------------------------
MAX_FRAME_2 = 392;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 上昇～フィニッシュ：手前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

--finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 上昇～フィニッシュ：手前(ef_002b)
--setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
--setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
--setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
--setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
--setEffRotateKey( spep_2 + 0, finish_b, 0);
--setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
--setEffAlphaKey( spep_2 + 0, finish_b, 255);
--setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 190 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 210 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 190 + OFFSET_X , 1, 104 );

setMoveKey( spep_2 + 190 + OFFSET_X , 1, -1.5, -511.6 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X , 1, -1.5, -511.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X , 1, -1.5, -474.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X , 1, -1.5, -474.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X , 1, -1.5, -436.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X , 1, -1.5, -436.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X , 1, -1.5, -399.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X , 1, -1.5, -399.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X , 1, -1.5, -361.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X , 1, -1.5, -361.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X , 1, -1.5, -324.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X , 1, -1.5, -324.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X , 1, -1.5, -286.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X , 1, -1.5, -286.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X , 1, -1.5, -249.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X , 1, -1.5, -249.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X , 1, -1.5, -211.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X , 1, -1.5, -211.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X , 1, -1.5, -174.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X , 1, -1.5, -174.1 , 0 );

setScaleKey( spep_2 + 190 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_2 + 210 + OFFSET_X , 1, 0.42, 0.42 );

setRotateKey( spep_2 + 190 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 210 + OFFSET_X , 1, 0 );

-- ** 音 ** --

--上昇する
SE051 = playSeVer2( spep_2 + 0, 1452, "", 0, 0, 0, -1);

--オーラ
SE052 = playSeVer2( spep_2 + 6, 1036, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 30, 1036, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 54, 1036, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 78, 1036, "", 0, 0, 0, -1);

--気が弾ける
SE056 = playSeVer2( spep_2 + 82, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE056, 120 );
SE057 = playSeVer2( spep_2 + 82, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE057, 96 );

--突っ込んでくる
SE058 = playSeVer2( spep_2 + 112, 1182, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 112, 1068, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 112, 1355, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE060, 58 );
setPitch( spep_2 + 112, SE060, 500 );
setTimeStretch( SE060, 1.33, 30, 4 );
SE061 = playSeVer2( spep_2 + 128, 1304, "",spep_2 + 262, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 128, SE061, 79 );
SE062 = playSeVer2( spep_2 + 166, 1422, "",spep_2 + 278, 0, 66, -1);
setPitch( spep_2 + 172, SE062, 300 );
setTimeStretch( SE062, 1.2, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 196; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE056, 0);
    stopSe( SP_dodge - 12, SE057, 0);
    stopSe( SP_dodge - 12, SE058, 0);
    stopSe( SP_dodge - 12, SE059, 0);
    stopSe( SP_dodge - 12, SE060, 0);
    stopSe( SP_dodge - 12, SE061, 0);
    stopSe( SP_dodge - 12, SE062, 0);
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

--爆発
SE063 = playSeVer2( spep_2 + 200, 1159, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_2 + 250, 1067, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 250, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE065, 76 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 272); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 392F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 冒頭～カットインまで
-------------------------------------------------
MAX_FRAME_0 = 660;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 冒頭～カットインまで(ef_001)
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
spep_x = spep_0 + 568;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);

--地響き
SE002 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 406, 0, 114, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 62 );

--オーラ
SE003 = playSeVer2( spep_0 + 14, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE004 = playSeVer2( spep_0 + 14, 1147, "",spep_0 + 112, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 14, SE004, 71 );

--オーラ
SE005 = playSeVer2( spep_0 + 38, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 62, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE007 = playSeVer2( spep_0 + 80, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE007, 41 );

--画面遷移
SE008 = playSeVer2( spep_0 + 80, 1232, "", 0, 0, 0, -1);

--気が高まる
SE009 = playSeVer2( spep_0 + 80, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE009, 60 );
SE010 = playSeVer2( spep_0 + 80, 1227, "",spep_0 + 458, 0, 150, -1);

--オーラ
SE011 = playSeVer2( spep_0 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE011, 40 );
SE012 = playSeVer2( spep_0 + 110, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE012, 40 );
SE013 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE013, 40 );
SE014 = playSeVer2( spep_0 + 158, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE014, 71 );

--イナヅマ
SE015 = playSeVer2( spep_0 + 170, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE015, 71 );

--気が高まる
SE016 = playSeVer2( spep_0 + 176, 1184, "", 0, 0, 0, -1);

--オーラ
SE017 = playSeVer2( spep_0 + 182, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE017, 71 );

--爆発する
SE018 = playSeVer2( spep_0 + 202, 1060, "", 0, 0, 0, -1);

--オーラ
SE019 = playSeVer2( spep_0 + 206, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE019, 71 );

--煙あける
SE020 = playSeVer2( spep_0 + 300, 1168, "", 0, 40, 0, -1);
setStartTimeMs( SE020,  1333 );

--オーラ
SE021 = playSeVer2( spep_0 + 230, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE021, 71 );
SE022 = playSeVer2( spep_0 + 254, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE022, 71 );

--気が高まる
SE023 = playSeVer2( spep_0 + 260, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE023, 60 );
SE024 = playSeVer2( spep_0 + 260, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE024, 74 );

--オーラ
SE025 = playSeVer2( spep_0 + 278, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE025, 71 );
SE026 = playSeVer2( spep_0 + 302, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE026, 71 );

--気が爆発する
SE027 = playSeVer2( spep_0 + 308, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE027, 145 );

--煙あける
SE028 = playSeVer2( spep_0 + 322, 1219, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE028, 136 );
setPitch( spep_0 + 322, SE028, -500 );
setTimeStretch( SE028, 0.67, 30, 4 );

--オーラ
SE029 = playSeVer2( spep_0 + 326, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE029, 71 );
SE030 = playSeVer2( spep_0 + 350, 1036, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 374, 1036, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 398, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE033 = playSeVer2( spep_0 + 408, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE033, 71 );

--オーラ
SE034 = playSeVer2( spep_0 + 422, 1036, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 446, 1036, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 470, 1036, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 494, 1036, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 518, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE039 = playSeVer2( spep_0 + 518, 1147, "",spep_0 + 688, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 518, SE039, 71 );

--オーラ
SE040 = playSeVer2( spep_0 + 542, 1036, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 566, 1036, "", 0, 0, 0, -1);

--雷落ちる
SE042 = playSeVer2( spep_0 + 566, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 566, SE042, 158 );
SE043 = playSeVer2( spep_0 + 566, 1023, "", 0, 0, 0, -1);

--オーラ
SE045 = playSeVer2( spep_0 + 590, 1036, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 614, 1036, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 638, 1036, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --660F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--上昇する
SE049 = playSeVer2( spep_1 + 86, 1116, "",spep_1 + 130, 0, 20, -1);
SE050 = playSeVer2( spep_1 + 88, 1117, "", 0, 0, 0, -1);

-------------------------------------------------
-- 上昇～フィニッシュ：手前
-------------------------------------------------
MAX_FRAME_2 = 392;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 上昇～フィニッシュ：手前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

--finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 上昇～フィニッシュ：手前(ef_002b)
--setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
--setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
--setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
--setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
--setEffRotateKey( spep_2 + 0, finish_b, 0);
--setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
--setEffAlphaKey( spep_2 + 0, finish_b, 255);
--setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 190 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 210 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 190 + OFFSET_X , 1, 4 );

setMoveKey( spep_2 + 190 + OFFSET_X , 1, 1.5, -511.6 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X , 1, 1.5, -511.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X , 1, 1.5, -474.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X , 1, 1.5, -474.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X , 1, 1.5, -436.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X , 1, 1.5, -436.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X , 1, 1.5, -399.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X , 1, 1.5, -399.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X , 1, 1.5, -361.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X , 1, 1.5, -361.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X , 1, 1.5, -324.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X , 1, 1.5, -324.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X , 1, 1.5, -286.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X , 1, 1.5, -286.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X , 1, 1.5, -249.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X , 1, 1.5, -249.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X , 1, 1.5, -211.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X , 1, 1.5, -211.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X , 1, 1.5, -174.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X , 1, 1.5, -174.1 , 0 );

setScaleKey( spep_2 + 190 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_2 + 210 + OFFSET_X , 1, 0.42, 0.42 );

setRotateKey( spep_2 + 190 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 210 + OFFSET_X , 1, 0 );

-- ** 音 ** --

--上昇する
SE051 = playSeVer2( spep_2 + 0, 1452, "", 0, 0, 0, -1);

--オーラ
SE052 = playSeVer2( spep_2 + 6, 1036, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 30, 1036, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 54, 1036, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 78, 1036, "", 0, 0, 0, -1);

--気が弾ける
SE056 = playSeVer2( spep_2 + 82, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE056, 120 );
SE057 = playSeVer2( spep_2 + 82, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE057, 96 );

--突っ込んでくる
SE058 = playSeVer2( spep_2 + 112, 1182, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 112, 1068, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 112, 1355, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE060, 58 );
setPitch( spep_2 + 112, SE060, 500 );
setTimeStretch( SE060, 1.33, 30, 4 );
SE061 = playSeVer2( spep_2 + 128, 1304, "",spep_2 + 262, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 128, SE061, 79 );
SE062 = playSeVer2( spep_2 + 166, 1422, "",spep_2 + 278, 0, 66, -1);
setPitch( spep_2 + 172, SE062, 300 );
setTimeStretch( SE062, 1.2, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 196; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE056, 0);
    stopSe( SP_dodge - 12, SE057, 0);
    stopSe( SP_dodge - 12, SE058, 0);
    stopSe( SP_dodge - 12, SE059, 0);
    stopSe( SP_dodge - 12, SE060, 0);
    stopSe( SP_dodge - 12, SE061, 0);
    stopSe( SP_dodge - 12, SE062, 0);
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

--爆発
SE063 = playSeVer2( spep_2 + 200, 1159, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_2 + 250, 1067, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 250, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE065, 76 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 272); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 392F


end