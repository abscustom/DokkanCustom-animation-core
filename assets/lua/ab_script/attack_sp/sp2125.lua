--1019950:セル(完全体)_必殺技：パーフェクトフラッシュ
--sp_effect_a1_00267
--sp2125

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 156516;  --上空に上がり気弾を放つ ef_001
SP_02 = 156518;  --地面爆発→かめはめ波　手前   ef_002_front
SP_03 = 156519;  --地面爆発→かめはめ波　奥    ef_002_back
SP_04 = 156521;  --かめはめ波が敵に迫る　手前   ef_003_front
SP_05 = 156522;  --かめはめ波が敵に迫る　奥    ef_003_back
SP_06 = 156523;  --フィニッシュ  ef_004

--敵側
SP_01r = 156517;  --上空に上がり気弾を放つ　反転用 ef_001_r --※不使用
SP_03r = 156520;  --地面爆発→かめはめ波　奥　反転用    ef_002_back_r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 上空に上がり気弾を放つ(156F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --上空に上がり気弾を放つ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 156, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 156, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 156, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 156, first_f, 255 );

-- ** 書き文字エントリー ** --
ctbun = entryEffectLife( spep_0 -3 + 58,  10028, 30, 0x100, -1, 0, 156.6, 405.7 ); --ブゥ...ン
setEffMoveKey( spep_0 -3 + 58, ctbun, 156.6, 405.7 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctbun, 156.5, 402.5 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctbun, 153.4, 399.3 , 0 );
setEffMoveKey( spep_0 -3 + 64, ctbun, 159.2, 404.6 , 0 );
setEffMoveKey( spep_0 -3 + 66, ctbun, 151.9, 395.8 , 0 );
setEffMoveKey( spep_0 -3 + 68, ctbun, 155.6, 402.7 , 0 );
setEffMoveKey( spep_0 -3 + 70, ctbun, 156.2, 405.7 , 0 );
setEffMoveKey( spep_0 -3 + 72, ctbun, 156.3, 395.8 , 0 );
setEffMoveKey( spep_0 -3 + 74, ctbun, 151.5, 395.6 , 0 );
setEffMoveKey( spep_0 -3 + 76, ctbun, 159.3, 404.5 , 0 );
setEffMoveKey( spep_0 -3 + 78, ctbun, 151.6, 395.2 , 0 );
setEffMoveKey( spep_0 -3 + 80, ctbun, 155.6, 402.5 , 0 );
setEffMoveKey( spep_0 -3 + 82, ctbun, 156.1, 405.7 , 0 );
setEffMoveKey( spep_0 -3 + 84, ctbun, 156.2, 392.1 , 0 );
setEffMoveKey( spep_0 -3 + 86, ctbun, 147.9, 388.9 , 0 );
setEffMoveKey( spep_0 -3 + 88, ctbun, 146.2, 385.8 , 0 );

setEffScaleKey( spep_0 -3 + 58, ctbun, 0, 0 );
setEffScaleKey( spep_0 -3 + 60, ctbun, 0.46, 0.48 );
setEffScaleKey( spep_0 -3 + 62, ctbun, 0.91, 0.95 );
setEffScaleKey( spep_0 -3 + 64, ctbun, 1.37, 1.42 );
setEffScaleKey( spep_0 -3 + 66, ctbun, 1.38, 1.44 );
setEffScaleKey( spep_0 -3 + 68, ctbun, 1.4, 1.45 );
setEffScaleKey( spep_0 -3 + 70, ctbun, 1.41, 1.47 );
setEffScaleKey( spep_0 -3 + 72, ctbun, 1.42, 1.48 );
setEffScaleKey( spep_0 -3 + 74, ctbun, 1.44, 1.5 );
setEffScaleKey( spep_0 -3 + 76, ctbun, 1.46, 1.52 );
setEffScaleKey( spep_0 -3 + 78, ctbun, 1.47, 1.53 );
setEffScaleKey( spep_0 -3 + 80, ctbun, 1.49, 1.55 );
setEffScaleKey( spep_0 -3 + 82, ctbun, 1.5, 1.56 );
setEffScaleKey( spep_0 -3 + 84, ctbun, 1.99, 2.03 );
setEffScaleKey( spep_0 -3 + 86, ctbun, 2.48, 2.5 );
setEffScaleKey( spep_0 -3 + 88, ctbun, 2.97, 2.97 );

setEffRotateKey( spep_0 -3 + 58, ctbun, -12 );
setEffRotateKey( spep_0 -3 + 88, ctbun, -12 );

setEffAlphaKey( spep_0 -3 + 58, ctbun, 255 );
setEffAlphaKey( spep_0 -3 + 82, ctbun, 255 );
setEffAlphaKey( spep_0 -3 + 84, ctbun, 170 );
setEffAlphaKey( spep_0 -3 + 86, ctbun, 85 );
setEffAlphaKey( spep_0 -3 + 88, ctbun, 0 );

ctgyuo = entryEffectLife( spep_0 -3 + 110,  10051, 42, 0x100, -1, 0, -31.1, -297.9 ); --ギュオ
setEffMoveKey( spep_0 -3 + 110, ctgyuo, -31.1, -297.9 , 0 );
setEffMoveKey( spep_0 -3 + 112, ctgyuo, -17.6, -290.3 , 0 );
setEffMoveKey( spep_0 -3 + 114, ctgyuo, -14.1, -275.2 , 0 );
setEffMoveKey( spep_0 -3 + 116, ctgyuo, 1.7, -270.3 , 0 );
setEffMoveKey( spep_0 -3 + 118, ctgyuo, 3.1, -252.2 , 0 );
setEffMoveKey( spep_0 -3 + 120, ctgyuo, 11.2, -260.3 , 0 );
setEffMoveKey( spep_0 -3 + 122, ctgyuo, 3.1, -252.2 , 0 );
setEffMoveKey( spep_0 -3 + 124, ctgyuo, 11.2, -260.4 , 0 );
setEffMoveKey( spep_0 -3 + 126, ctgyuo, 3, -252.2 , 0 );
setEffMoveKey( spep_0 -3 + 128, ctgyuo, 11.3, -260.4 , 0 );
setEffMoveKey( spep_0 -3 + 130, ctgyuo, 3, -252.2 , 0 );
setEffMoveKey( spep_0 -3 + 132, ctgyuo, 11.3, -260.5 , 0 );
setEffMoveKey( spep_0 -3 + 134, ctgyuo, 2.9, -252.1 , 0 );
setEffMoveKey( spep_0 -3 + 136, ctgyuo, 11.3, -260.5 , 0 );
setEffMoveKey( spep_0 -3 + 138, ctgyuo, 2.9, -252.1 , 0 );
setEffMoveKey( spep_0 -3 + 140, ctgyuo, 11.3, -260.6 , 0 );
setEffMoveKey( spep_0 -3 + 142, ctgyuo, 11.4, -260.6 , 0 );
setEffMoveKey( spep_0 -3 + 144, ctgyuo, 11.5, -249.3 , 0 );
setEffMoveKey( spep_0 -3 + 146, ctgyuo, 33.2, -259.7 , 0 );
setEffMoveKey( spep_0 -3 + 148, ctgyuo, 28.7, -243.8 , 0 );
setEffMoveKey( spep_0 -3 + 150, ctgyuo, 55, -258.8 , 0 );
setEffMoveKey( spep_0 -3 + 152, ctgyuo, 65.9, -258.4 , 0 );

setEffScaleKey( spep_0 -3 + 110, ctgyuo, 0.54, 0.54 );
setEffScaleKey( spep_0 -3 + 112, ctgyuo, 0.75, 0.75 );
setEffScaleKey( spep_0 -3 + 114, ctgyuo, 0.95, 0.95 );
setEffScaleKey( spep_0 -3 + 116, ctgyuo, 1.16, 1.16 );
setEffScaleKey( spep_0 -3 + 118, ctgyuo, 1.37, 1.37 );
setEffScaleKey( spep_0 -3 + 120, ctgyuo, 1.37, 1.37 );
setEffScaleKey( spep_0 -3 + 122, ctgyuo, 1.38, 1.38 );
setEffScaleKey( spep_0 -3 + 124, ctgyuo, 1.39, 1.39 );
setEffScaleKey( spep_0 -3 + 126, ctgyuo, 1.39, 1.39 );
setEffScaleKey( spep_0 -3 + 128, ctgyuo, 1.4, 1.4 );
setEffScaleKey( spep_0 -3 + 130, ctgyuo, 1.4, 1.4 );
setEffScaleKey( spep_0 -3 + 132, ctgyuo, 1.41, 1.41 );
setEffScaleKey( spep_0 -3 + 134, ctgyuo, 1.41, 1.41 );
setEffScaleKey( spep_0 -3 + 136, ctgyuo, 1.42, 1.42 );
setEffScaleKey( spep_0 -3 + 138, ctgyuo, 1.43, 1.43 );
setEffScaleKey( spep_0 -3 + 140, ctgyuo, 1.43, 1.43 );
setEffScaleKey( spep_0 -3 + 142, ctgyuo, 1.44, 1.44 );
setEffScaleKey( spep_0 -3 + 144, ctgyuo, 1.83, 1.83 );
setEffScaleKey( spep_0 -3 + 146, ctgyuo, 2.22, 2.22 );
setEffScaleKey( spep_0 -3 + 148, ctgyuo, 2.61, 2.61 );
setEffScaleKey( spep_0 -3 + 150, ctgyuo, 3.01, 3.01 );
setEffScaleKey( spep_0 -3 + 152, ctgyuo, 3.4, 3.4 );

setEffRotateKey( spep_0 -3 + 110, ctgyuo, 14 );
setEffRotateKey( spep_0 -3 + 112, ctgyuo, 17 );
setEffRotateKey( spep_0 -3 + 114, ctgyuo, 20 );
setEffRotateKey( spep_0 -3 + 116, ctgyuo, 23 );
setEffRotateKey( spep_0 -3 + 118, ctgyuo, 26 );
setEffRotateKey( spep_0 -3 + 126, ctgyuo, 26 );
setEffRotateKey( spep_0 -3 + 128, ctgyuo, 25.9 );
setEffRotateKey( spep_0 -3 + 152, ctgyuo, 25.9 );

setEffAlphaKey( spep_0 -3 + 110, ctgyuo, 255 );
setEffAlphaKey( spep_0 -3 + 142, ctgyuo, 255 );
setEffAlphaKey( spep_0 -3 + 144, ctgyuo, 204 );
setEffAlphaKey( spep_0 -3 + 146, ctgyuo, 153 );
setEffAlphaKey( spep_0 -3 + 148, ctgyuo, 102 );
setEffAlphaKey( spep_0 -3 + 150, ctgyuo, 51 );
setEffAlphaKey( spep_0 -3 + 152, ctgyuo, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 97, 906, 58, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 97, shuchusen1, 58, 20 );
setEffMoveKey( spep_0 + 97, shuchusen1, -40, 0 , 0 );
setEffMoveKey( spep_0 + 155, shuchusen1, -40, 0 , 0 );
setEffScaleKey( spep_0 + 97, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 155, shuchusen1, 1.4, 1.4 );
setEffRotateKey( spep_0 + 97, shuchusen1, 0 );
setEffRotateKey( spep_0 + 155, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 97, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 155, shuchusen1, 255 );

-- ** 音 ** --
--上昇1
SE001 = playSe( spep_0 + 0, 8 );

--上昇2
SE002 = playSe( spep_0 + 6, 1004 );

--上昇3
SE003 = playSe( spep_0 + 16, 44 );

--気弾溜め1
SE004 = playSe( spep_0 + 60, 1154 );
setSeVolumeByWorkId( spep_0 + 60, SE004, 5 );
setSeVolumeByWorkId( spep_0 + 62, SE004, 10 );
setSeVolumeByWorkId( spep_0 + 64, SE004, 25 );
setSeVolumeByWorkId( spep_0 + 66, SE004, 36 );
setSeVolumeByWorkId( spep_0 + 68, SE004, 48 );
setSeVolumeByWorkId( spep_0 + 70, SE004, 59 );
setSeVolumeByWorkId( spep_0 + 72, SE004, 70 );
stopSe( spep_0 + 110, SE004, 6 );
setStartTimeMs( SE004,  217 );
setPitch( spep_0 + 60, SE004, 500 );
setTimeStretch( SE004, 1.33, 10, 1 );

--気弾溜め2
SE005 = playSe( spep_0 + 56, 1262 );
setSeVolumeByWorkId( spep_0 + 56, SE005, 162 );
stopSe( spep_0 + 110, SE005, 6 );
setPitch( spep_0 + 56, SE005, 300 );
setTimeStretch( SE005, 1.2, 10, 1 );

--気弾溜め3
SE006 = playSe( spep_0 + 56, 1204 );
setSeVolumeByWorkId( spep_0 + 56, SE006, 166 );
stopSe( spep_0 + 110, SE006, 6 );

--気弾溜め4
SE007 = playSe( spep_0 + 56, 1252 );
setSeVolumeByWorkId( spep_0 + 56, SE007, 132 );
stopSe( spep_0 + 110, SE007, 6 );

--気弾投げ1
SE008 = playSe( spep_0 + 108, 1026 );
setSeVolumeByWorkId( spep_0 + 108, SE008, 58 );
stopSe( spep_0 +156 + 6, SE008, 0 );

--気弾投げ2
SE009 = playSe( spep_0 + 108, 1114 );
stopSe( spep_0 +156 + 6, SE009, 0 );

--気弾投げ3
SE010 = playSe( spep_0 + 110, 1236 );
stopSe( spep_0 +156 + 6, SE010, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 156, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 156;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end


-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );

--地面連続爆発1
SE012 = playSe( spep_1 + 92, 1044 );
setSeVolumeByWorkId( spep_1 + 92, SE012, 14 );
setSeVolumeByWorkId( spep_1 + 96, SE012, 28 );
setSeVolumeByWorkId( spep_1 + 100, SE012, 42 );
setSeVolumeByWorkId( spep_1 + 105, SE012, 56 );
setSeVolumeByWorkId( spep_1 + 110, SE012, 70 );
setSeVolumeByWorkId( spep_1 + 115, SE012, 84 );
setSeVolumeByWorkId( spep_1 + 120, SE012, 98 );
setSeVolumeByWorkId( spep_1 + 125, SE012, 112 );
setSeVolumeByWorkId( spep_1 + 130, SE012, 126 );
setSeVolumeByWorkId( spep_1 + 135, SE012, 146 );
setSeVolumeByWorkId( spep_1 + 140, SE012, 162 );
stopSe( spep_1 +94 + 100, SE012, 14 );

--地面連続爆発2
SE013 = playSe( spep_1 + 92, 1033 );
setSeVolumeByWorkId( spep_1 + 92, SE013, 27 );
stopSe( spep_1 +94 + 10, SE013, 8 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 地面爆発→かめはめ波(196f)
------------------------------------------------------
-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_2 + 0, SP_02, 196, 0x100, -1, 0, 0, 0 );  --地面爆発→かめはめ波　手前(ef_002_front)
setEffMoveKey( spep_2 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 196, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 196, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame_f, 0 );
setEffRotateKey( spep_2 + 196, tame_f, 0 );
setEffAlphaKey( spep_2 + 0, tame_f, 255 );
setEffAlphaKey( spep_2 + 195, tame_f, 255 );
setEffAlphaKey( spep_2 + 196, tame_f, 0 );

tame_b = entryEffectLife( spep_2 + 0, SP_03, 196, 0x80, -1, 0, 0, 0 );  --地面爆発→かめはめ波　奥(ef_002_back)
setEffMoveKey( spep_2 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 196, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 196, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame_b, 0 );
setEffRotateKey( spep_2 + 196, tame_b, 0 );
setEffAlphaKey( spep_2 + 0, tame_b, 255 );
setEffAlphaKey( spep_2 + 195, tame_b, 255 );
setEffAlphaKey( spep_2 + 196, tame_b, 0 );


-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 52, 0x100, -1, 0, -30, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 52, 20 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, -30 , 0 );
setEffMoveKey( spep_2 + 52, shuchusen2, 0, -30 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 52, shuchusen2, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 52, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 52, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_2 + 90, 906, 105, 0x100, -1, -140, -50, 0 );  --集中線
setEffShake( spep_2 + 90, shuchusen3, 40, 20 );
setEffMoveKey( spep_2 + 90, shuchusen3, -140, -50 , 0 );
setEffMoveKey( spep_2 + 195, shuchusen3, -140, -50 , 0 );
setEffScaleKey( spep_2 + 90, shuchusen3, 1.8, 1.8 );
setEffScaleKey( spep_2 + 194, shuchusen3, 1.8, 1.8 );
setEffRotateKey( spep_2 + 90, shuchusen3, 0 );
setEffRotateKey( spep_2 + 195, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 90, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 154, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 155, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 195, shuchusen3, 255 );


spep_x = spep_2 + 92;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 60, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 60, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 60, 515.5 , 0 );
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

ctdogaga = entryEffectLife( spep_2 + 0,  10017, 35, 0x100, -1, 0, -156, -377.4 ); --ドガガガッ
setEffMoveKey( spep_2 + 0, ctdogaga, -156, -377.4 , 0 );
setEffMoveKey( spep_2 + 1, ctdogaga, -145.3, -379.4 , 0 );
setEffMoveKey( spep_2 + 2, ctdogaga, -129.8, -376.7 , 0 );
setEffMoveKey( spep_2 -3 + 6, ctdogaga, -144.7, -394.3 , 0 );
setEffMoveKey( spep_2 -3 + 8, ctdogaga, -107.7, -379.7 , 0 );
setEffMoveKey( spep_2 -3 + 10, ctdogaga, -132.3, -385.8 , 0 );
setEffMoveKey( spep_2 -3 + 12, ctdogaga, -82.6, -371.5 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctdogaga, -87.7, -436.2 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctdogaga, -57.1, -381.8 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctdogaga, -19.8, -402.4 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctdogaga, -14.9, -440.7 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctdogaga, -35.7, -420.1 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctdogaga, -44.4, -420.3 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctdogaga, -33.4, -438.4 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctdogaga, -36.5, -432.8 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctdogaga, -8.8, -432.3 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctdogaga, -19.4, -404.9 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctdogaga, -10.7, -396.3 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctdogaga, -2.2, -398.4 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctdogaga, 6.3, -400.4 , 0 );

setEffScaleKey( spep_2 + 0, ctdogaga, 0, 0 );
setEffScaleKey( spep_2 + 1, ctdogaga, 0.72, 0.64 );
setEffScaleKey( spep_2 + 2, ctdogaga, 1.61, 1.42 );
setEffScaleKey( spep_2 -3 + 6, ctdogaga, 1.73, 1.57 );
setEffScaleKey( spep_2 -3 + 8, ctdogaga, 1.85, 1.71 );
setEffScaleKey( spep_2 -3 + 10, ctdogaga, 1.96, 1.86 );
setEffScaleKey( spep_2 -3 + 12, ctdogaga, 2.06, 2.01 );
setEffScaleKey( spep_2 -3 + 14, ctdogaga, 2.16, 2.16 );
setEffScaleKey( spep_2 -3 + 16, ctdogaga, 2.25, 2.3 );
setEffScaleKey( spep_2 -3 + 18, ctdogaga, 2.33, 2.45 );
setEffScaleKey( spep_2 -3 + 20, ctdogaga, 2.4, 2.6 );
setEffScaleKey( spep_2 -3 + 22, ctdogaga, 2.47, 2.74 );
setEffScaleKey( spep_2 -3 + 24, ctdogaga, 2.52, 2.89 );
setEffScaleKey( spep_2 -3 + 26, ctdogaga, 2.57, 3.04 );
setEffScaleKey( spep_2 -3 + 28, ctdogaga, 2.61, 3.19 );
setEffScaleKey( spep_2 -3 + 30, ctdogaga, 4.47, 5.45 );
setEffScaleKey( spep_2 -3 + 32, ctdogaga, 6.5, 7.92 );
setEffScaleKey( spep_2 -3 + 34, ctdogaga, 8.66, 10.56 );
setEffScaleKey( spep_2 -3 + 36, ctdogaga, 9.01, 10.98 );
setEffScaleKey( spep_2 -3 + 38, ctdogaga, 9.36, 11.41 );

setEffRotateKey( spep_2 + 0, ctdogaga, 0 );
setEffRotateKey( spep_2 -3 + 38, ctdogaga, 0 );

setEffAlphaKey( spep_2 -3 + 0, ctdogaga, 255 );
setEffAlphaKey( spep_2 -3 + 28, ctdogaga, 255 );
setEffAlphaKey( spep_2 -3 + 30, ctdogaga, 170 );
setEffAlphaKey( spep_2 -3 + 32, ctdogaga, 85 );
setEffAlphaKey( spep_2 -3 + 34, ctdogaga, 0 );
setEffAlphaKey( spep_2 -3 + 38, ctdogaga, 0 );

-- ** 敵キャラクター1 ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 -3 + 16, 1, 104 );

setMoveKey( spep_2 + 0, 1, 198.3, -41.8 , 0 );
setMoveKey( spep_2 + 1, 1, 200.1, -41.1 , 0 );
setMoveKey( spep_2 + 2, 1, 201.9, -40.5 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 203.6, -39.7 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 203.6, -39.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 201.7, -40.8 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 201.7, -40.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 199.7, -41.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 200.3, -39.8 , 0 );
setMoveKey( spep_2 -3 + 15, 1, 200.9, -37.7 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 200.9, -47.1 , 0 );

setScaleKey( spep_2 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 1, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 2, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 3, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 4, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 5, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 6, 1, 1.2, 1.2 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 1, 1, 0 );
setRotateKey( spep_2 + 2, 1, 0 );
setRotateKey( spep_2 + 3, 1, 0 );
setRotateKey( spep_2 + 4, 1, 0 );
setRotateKey( spep_2 + 5, 1, 0 );
setRotateKey( spep_2 + 6, 1, 0 );

-- ** 音 ** --
--地面連続爆発3
SE014 = playSe( spep_2 + 2, 1159 );
setSeVolumeByWorkId( spep_2 + 2, SE014, 47 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 196, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    --playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 201, -47.9 , 0 );
    setMoveKey( SP_dodge + 2, 1, 201.1, -48.8 , 0 );
    setMoveKey( SP_dodge + 4, 1, 195.4, -42.6 , 0 );
    setMoveKey( SP_dodge + 6, 1, 203.1, -44.2 , 0 );
    setMoveKey( SP_dodge + 8, 1, 199.1, -50.6 , 0 );
    setMoveKey( SP_dodge + 10, 1, 202.4, -50.6 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.2, 1.2 );
    setScaleKey( SP_dodge + 2, 1, 1.2, 1.2 );
    setScaleKey( SP_dodge + 4, 1, 1.2, 1.2 );
    setScaleKey( SP_dodge + 6, 1, 1.2, 1.2 );
    setScaleKey( SP_dodge + 8, 1, 1.2, 1.2 );
    setScaleKey( SP_dodge + 10, 1, 1.2, 1.2 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 書き文字エントリー ** --
ctbom = entryEffectLife( spep_2 -2 + 44,  10027, 29, 0x100, -1, 0, -22.3, -242.6 ); --ボンッ
setEffMoveKey( spep_2 -2 + 44, ctbom, -22.3, -242.6 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctbom, -25.9, -223.2 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctbom, 12.9, -213.9 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctbom, -41.1, -261.2 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctbom, -8.4, -228.6 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctbom, -39.9, -232.7 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctbom, -33.1, -268.9 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctbom, -15.6, -270.5 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctbom, 2.2, -221.2 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctbom, 10.8, -241.1 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctbom, 19.5, -261 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctbom, 5.5, -250.3 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctbom, -8.4, -239.5 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctbom, -11.9, -241 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctbom, -22.5, -244.1 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctbom, -22.6, -244.5 , 0 );

setEffScaleKey( spep_2 -2 + 44, ctbom, 0.02, 0.02 );
setEffScaleKey( spep_2 -3 + 46, ctbom, 1.41, 1.47 );
setEffScaleKey( spep_2 -3 + 48, ctbom, 2.81, 2.93 );
setEffScaleKey( spep_2 -3 + 68, ctbom, 2.81, 2.93 );
setEffScaleKey( spep_2 -3 + 70, ctbom, 4.28, 4.35 );
setEffScaleKey( spep_2 -3 + 72, ctbom, 5.74, 5.78 );
setEffScaleKey( spep_2 -3 + 74, ctbom, 7.21, 7.21 );

setEffRotateKey( spep_2 -2 + 44, ctbom, 0 );
setEffRotateKey( spep_2 -3 + 74, ctbom, 0 );

setEffAlphaKey( spep_2 -2 + 44, ctbom, 255 );
setEffAlphaKey( spep_2 -3 + 68, ctbom, 255 );
setEffAlphaKey( spep_2 -3 + 70, ctbom, 170 );
setEffAlphaKey( spep_2 -3 + 72, ctbom, 85 );
setEffAlphaKey( spep_2 -3 + 74, ctbom, 0 );

ctzuo = entryEffectLife( spep_2 -2 + 156,  10012, 39, 0x100, -1, 0, -125.9, -120.8 ); --ズオッ
setEffMoveKey( spep_2 -2 + 156, ctzuo, -125.9, -120.8 , 0 );
setEffMoveKey( spep_2 -3 + 158, ctzuo, -123.1, -96.9 , 0 );
setEffMoveKey( spep_2 -3 + 160, ctzuo, -76, -98.1 , 0 );
setEffMoveKey( spep_2 -3 + 162, ctzuo, -151.8, -133.9 , 0 );
setEffMoveKey( spep_2 -3 + 164, ctzuo, -104.6, -107.8 , 0 );
setEffMoveKey( spep_2 -3 + 166, ctzuo, -141.3, -102.2 , 0 );
setEffMoveKey( spep_2 -3 + 168, ctzuo, -136.5, -129.7 , 0 );
setEffMoveKey( spep_2 -3 + 170, ctzuo, -103.9, -113.3 , 0 );
setEffMoveKey( spep_2 -3 + 172, ctzuo, -132.9, -107.1 , 0 );
setEffMoveKey( spep_2 -3 + 174, ctzuo, -122, -128.1 , 0 );
setEffMoveKey( spep_2 -3 + 176, ctzuo, -121.9, -109.3 , 0 );
setEffMoveKey( spep_2 -3 + 178, ctzuo, -108.3, -110.7 , 0 );
setEffMoveKey( spep_2 -3 + 180, ctzuo, -128.9, -109.4 , 0 );
setEffMoveKey( spep_2 -3 + 182, ctzuo, -114.7, -124.8 , 0 );
setEffMoveKey( spep_2 -3 + 184, ctzuo, -124.2, -107.4 , 0 );
setEffMoveKey( spep_2 -3 + 186, ctzuo, -110.3, -106.8 , 0 );
setEffMoveKey( spep_2 -3 + 188, ctzuo, -117.3, -110.1 , 0 );
setEffMoveKey( spep_2 -3 + 190, ctzuo, -124.2, -113.4 , 0 );
setEffMoveKey( spep_2 -3 + 192, ctzuo, -119.4, -110.3 , 0 );
setEffMoveKey( spep_2 -3 + 194, ctzuo, -111.5, -107.7 , 0 );
setEffMoveKey( spep_2 -3 + 196, ctzuo, -108, -104.6 , 0 );

setEffScaleKey( spep_2 -2 + 156, ctzuo, 0.01, 0.02 );
setEffScaleKey( spep_2 -3 + 158, ctzuo, 1.06, 1.1 );
setEffScaleKey( spep_2 -3 + 160, ctzuo, 2.11, 2.19 );
setEffScaleKey( spep_2 -3 + 190, ctzuo, 2.11, 2.19 );
setEffScaleKey( spep_2 -3 + 192, ctzuo, 3.2, 3.26 );
setEffScaleKey( spep_2 -3 + 194, ctzuo, 4.3, 4.33 );
setEffScaleKey( spep_2 -3 + 196, ctzuo, 5.4, 5.4 );

setEffRotateKey( spep_2 -2 + 156, ctzuo, 18.2 );
setEffRotateKey( spep_2 -3 + 158, ctzuo, 18 );
setEffRotateKey( spep_2 -3 + 196, ctzuo, 18 );

setEffAlphaKey( spep_2 -2 + 156, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 190, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 192, ctzuo, 170 );
setEffAlphaKey( spep_2 -3 + 194, ctzuo, 85 );
setEffAlphaKey( spep_2 -3 + 196, ctzuo, 0 );


-- ** 敵キャラクター1 ** --
setDisp( spep_2 -3 + 46, 1, 0 );

setMoveKey( spep_2 -3 + 18, 1, 201, -47.9 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 201.1, -48.8 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 195.4, -42.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 203.1, -44.2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 199.1, -50.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 202.4, -50.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 202.4, -41.9 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 202.4, -49.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 194.8, -44.2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 204.9, -47.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 201.4, -50.8 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 194.8, -41.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 204.9, -47.1 , 0 );
setMoveKey( spep_2 -3 + 45, 1, 199.6, -50.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 199.6, -50.8 , 0 );

setScaleKey( spep_2 -3 + 46, 1, 1.2, 1.2 );

setRotateKey( spep_2 -3 + 46, 1, 0 );

-- ** 敵キャラクター2 ** --
setDisp( spep_2 -3 + 58, 1, 1 );
setDisp( spep_2 -3 + 122, 1, 0 );
changeAnime( spep_2 -3 + 58, 1, 106 );

setMoveKey( spep_2 -3 + 58, 1, 280.3, -212.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 250.2, -159.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 181, -66.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 207.5, -76.5 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 153.6, -12.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 164.3, -17.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 172.3, 24.7 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 143.5, 18.4 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 153.2, 62 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 129.8, 63.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 135.4, 94.8 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 127.9, 97.2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 127, 119.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 126.8, 141.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 119.6, 153.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 112.9, 163.9 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 115.2, 179.1 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 117.8, 194.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 112.8, 204.4 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 108.1, 214.4 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 109.4, 228 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 316.1, 134.7 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 501.3, 71.5 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 669.8, 40.1 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 826.6, 41.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 970, 71 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 1155.6, 18.5 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 1336.8, -39 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 1518.2, -96.5 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 1704, -148.5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 1889.8, -200.5 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 1889.2, -202 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 1888.6, -203.5 , 0 );

setScaleKey( spep_2 -3 + 58, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 60, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 62, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 64, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 66, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 68, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 70, 1, 0.92, 0.92 );
setScaleKey( spep_2 -3 + 72, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 74, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 76, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 78, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 80, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 82, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 84, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 86, 1, 1, 1 );
setScaleKey( spep_2 -3 + 88, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 90, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 92, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 94, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 96, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 98, 1, 1.06, 1.06 );
setScaleKey( spep_2 -3 + 100, 1, 1.84, 1.84 );
setScaleKey( spep_2 -3 + 102, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 104, 1, 3.38, 3.38 );
setScaleKey( spep_2 -3 + 106, 1, 4.16, 4.16 );
setScaleKey( spep_2 -3 + 108, 1, 4.93, 4.93 );
setScaleKey( spep_2 -3 + 110, 1, 5.71, 5.71 );
setScaleKey( spep_2 -3 + 112, 1, 6.48, 6.48 );
setScaleKey( spep_2 -3 + 114, 1, 7.25, 7.25 );
setScaleKey( spep_2 -3 + 116, 1, 8.03, 8.03 );
setScaleKey( spep_2 -3 + 122, 1, 8.03, 8.03 );

setRotateKey( spep_2 -3 + 58, 1, 0 );
setRotateKey( spep_2 -3 + 122, 1, 0 );

-- ** 音 ** --
--地面連続爆発4
SE015 = playSe( spep_2 + 6, 1033 );
setSeVolumeByWorkId( spep_2 + 6, SE015, 30 );
stopSe( spep_2 + 14, SE015, 14 );

--地面連続爆発5
SE016 = playSe( spep_2 + 14, 1033 );
setSeVolumeByWorkId( spep_2 + 14, SE016, 37 );
stopSe( spep_2 + 26, SE016, 14 );

--地面連続爆発6
SE017 = playSe( spep_2 + 24, 1033 );
setSeVolumeByWorkId( spep_2 + 24, SE017, 36 );
stopSe( spep_2 + 36, SE017, 12 );

--地面連続爆発7
SE018 = playSe( spep_2 + 34, 1033 );
setSeVolumeByWorkId( spep_2 + 34, SE018, 42 );
stopSe( spep_2 + 46, SE018, 10 );

--地面連続爆発8
SE019 = playSe( spep_2 + 40, 1023 );
setSeVolumeByWorkId( spep_2 + 40, SE019, 64 );

--地面連続爆発9
SE020 = playSe( spep_2 + 40, 1024 );
setSeVolumeByWorkId( spep_2 + 40, SE020, 71 );

--かめはめ波溜め1
SE021 = playSe( spep_2 + 98, 1131 );
setSeVolumeByWorkId( spep_2 + 98, SE021, 54 );
stopSe( spep_2 + 154, SE021, 6 );

--かめはめ波溜め2
SE022 = playSe( spep_2 + 98, 1132 );
setSeVolumeByWorkId( spep_2 + 98, SE022, 79 );
stopSe( spep_2 + 154, SE022, 6 );

--顔カットイン
SE023 = playSe( spep_2 + 100, 1018 );

--かめはめ波発射1
SE024 = playSe( spep_2 + 154, 1022 );
setSeVolumeByWorkId( spep_2 + 154, SE024, 72 );

--かめはめ波発射2
SE025 = playSe( spep_2 + 154, 1027 );
setSeVolumeByWorkId( spep_2 + 154, SE025, 70 );

--かめはめ波発射3
SE026 = playSe( spep_2 + 154, 1146 );
setSeVolumeByWorkId( spep_2 + 154, SE026, 87 );

-- ** 白フェード ** --
entryFade( spep_2 + 186, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 196;


------------------------------------------------------
-- かめはめ波が敵に迫る(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
shot_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --かめはめ波が敵に迫る　手前(ef_003_front)
setEffMoveKey( spep_3 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shot_f, 0 );
setEffRotateKey( spep_3 + 56, shot_f, 0 );
setEffAlphaKey( spep_3 + 0, shot_f, 255 );
setEffAlphaKey( spep_3 + 56, shot_f, 255 );

shot_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --かめはめ波が敵に迫る　奥(ef_003_back)
setEffMoveKey( spep_3 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shot_b, 0 );
setEffRotateKey( spep_3 + 56, shot_b, 0 );
setEffAlphaKey( spep_3 + 0, shot_b, 255 );
setEffAlphaKey( spep_3 + 56, shot_b, 255 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_3 + 0,  10014, 55, 0x100, -1, 0, -215.1, 95.6 ); --ズドドドッ
setEffMoveKey( spep_3 + 0, ctzudodo, -215.1, 95.6 , 0 );
setEffMoveKey( spep_3 + 1, ctzudodo, -200.3, 106.6 , 0 );
setEffMoveKey( spep_3 + 2, ctzudodo, -179, 115.9 , 0 );
setEffMoveKey( spep_3 -3 + 6, ctzudodo, -190.1, 130.5 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctzudodo, -185.3, 110.2 , 0 );
setEffMoveKey( spep_3 -3 + 10, ctzudodo, -161.8, 109.3 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctzudodo, -119.1, 148.7 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctzudodo, -110.1, 146.5 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctzudodo, -92.6, 121.5 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctzudodo, -100.5, 138.7 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctzudodo, -86.5, 166.5 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctzudodo, -70.3, 180 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctzudodo, -79.8, 183.6 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctzudodo, -61.8, 193.6 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctzudodo, -15.1, 215.1 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctzudodo, -16.3, 217.5 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctzudodo, -48.9, 207.3 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctzudodo, -36.8, 214.9 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctzudodo, 7.8, 235.5 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctzudodo, 27.4, 265.6 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctzudodo, 12.9, 283.3 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctzudodo, -0.3, 281.4 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctzudodo, 0.2, 260.2 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctzudodo, 29.3, 247.3 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctzudodo, 44.3, 270.1 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctzudodo, 41.9, 275.6 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctzudodo, 24.5, 280.3 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctzudodo, 21.2, 249.4 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctzudodo, 21.2, 249.4 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctzudodo, 38, 266.4 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctzudodo, 38, 266.4 , 0 );

setEffScaleKey( spep_3 + 0, ctzudodo, 0.01, 0.01 );
setEffScaleKey( spep_3 + 1, ctzudodo, 0.6, 0.6 );
setEffScaleKey( spep_3 + 2, ctzudodo, 1.29, 1.29 );
setEffScaleKey( spep_3 -3 + 6, ctzudodo, 1.38, 1.38 );
setEffScaleKey( spep_3 -3 + 8, ctzudodo, 1.47, 1.47 );
setEffScaleKey( spep_3 -3 + 10, ctzudodo, 1.56, 1.56 );
setEffScaleKey( spep_3 -3 + 12, ctzudodo, 1.65, 1.65 );
setEffScaleKey( spep_3 -3 + 14, ctzudodo, 1.74, 1.74 );
setEffScaleKey( spep_3 -3 + 16, ctzudodo, 1.82, 1.82 );
setEffScaleKey( spep_3 -3 + 18, ctzudodo, 1.91, 1.91 );
setEffScaleKey( spep_3 -3 + 20, ctzudodo, 2, 2 );
setEffScaleKey( spep_3 -3 + 22, ctzudodo, 2.09, 2.09 );
setEffScaleKey( spep_3 -3 + 24, ctzudodo, 2.18, 2.18 );
setEffScaleKey( spep_3 -3 + 26, ctzudodo, 2.27, 2.27 );
setEffScaleKey( spep_3 -3 + 28, ctzudodo, 2.36, 2.36 );
setEffScaleKey( spep_3 -3 + 30, ctzudodo, 2.45, 2.45 );
setEffScaleKey( spep_3 -3 + 32, ctzudodo, 2.54, 2.54 );
setEffScaleKey( spep_3 -3 + 34, ctzudodo, 2.63, 2.63 );
setEffScaleKey( spep_3 -3 + 36, ctzudodo, 2.72, 2.72 );
setEffScaleKey( spep_3 -3 + 38, ctzudodo, 2.81, 2.81 );
setEffScaleKey( spep_3 -3 + 40, ctzudodo, 2.9, 2.9 );
setEffScaleKey( spep_3 -3 + 42, ctzudodo, 2.99, 2.99 );
setEffScaleKey( spep_3 -3 + 54, ctzudodo, 2.99, 2.99 );
setEffScaleKey( spep_3 -3 + 56, ctzudodo, 2.98, 2.98 );
setEffScaleKey( spep_3 -3 + 58, ctzudodo, 2.99, 2.99 );

setEffRotateKey( spep_3 + 0, ctzudodo, 11.2 );
setEffRotateKey( spep_3 + 1, ctzudodo, 18 );
setEffRotateKey( spep_3 + 2, ctzudodo, 25 );
setEffRotateKey( spep_3 -3 + 54, ctzudodo, 25 );
setEffRotateKey( spep_3 -3 + 56, ctzudodo, 25.2 );
setEffRotateKey( spep_3 -3 + 58, ctzudodo, 25 );

setEffAlphaKey( spep_3 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_3 -3 + 58, ctzudodo, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 56, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
 
setBlendColor(spep_3 + 2, 1, 2, 0, 0, 0, 0.02 );
setBlendColor(spep_3 + 3, 1, 2, 0, 0, 0, 0.04 );
setBlendColor(spep_3 + 4, 1, 2, 0, 0, 0, 0.06 );
setBlendColor(spep_3 + 5, 1, 2, 0, 0, 0, 0.08 );
setBlendColor(spep_3 + 6, 1, 2, 0, 0, 0, 0.1 );
setBlendColor(spep_3 + 7, 1, 2, 0, 0, 0, 0.12 );
setBlendColor(spep_3 + 8, 1, 2, 0, 0, 0, 0.14 );
setBlendColor(spep_3 + 9, 1, 2, 0, 0, 0, 0.16 );
setBlendColor(spep_3 + 10, 1, 2, 0, 0, 0, 0.18 );
setBlendColor(spep_3 + 11, 1, 2, 0, 0, 0, 0.2 );
setBlendColor(spep_3 + 12, 1, 2, 0, 0, 0, 0.22 );
setBlendColor(spep_3 + 13, 1, 2, 0, 0, 0, 0.24 );
setBlendColor(spep_3 + 14, 1, 2, 0, 0, 0, 0.26 );
setBlendColor(spep_3 + 15, 1, 2, 0, 0, 0, 0.28 );
setBlendColor(spep_3 + 16, 1, 2, 0, 0, 0, 0.3 );
setBlendColor(spep_3 + 17, 1, 2, 0, 0, 0, 0.32 );
setBlendColor(spep_3 + 18, 1, 2, 0, 0, 0, 0.34 );
setBlendColor(spep_3 + 19, 1, 2, 0, 0, 0, 0.36 );
setBlendColor(spep_3 + 20, 1, 2, 0, 0, 0, 0.38 );
setBlendColor(spep_3 + 21, 1, 2, 0, 0, 0, 0.4 );
setBlendColor(spep_3 + 22, 1, 2, 0, 0, 0, 0.42 );
setBlendColor(spep_3 + 23, 1, 2, 0, 0, 0, 0.44 );
setBlendColor(spep_3 + 24, 1, 2, 0, 0, 0, 0.46 );
setBlendColor(spep_3 + 25, 1, 2, 0, 0, 0, 0.48 );
setBlendColor(spep_3 + 26, 1, 2, 0, 0, 0, 0.5 );
setBlendColor(spep_3 + 27, 1, 2, 0, 0, 0, 0.52 );
setBlendColor(spep_3 + 28, 1, 2, 0, 0, 0, 0.54 );
setBlendColor(spep_3 + 29, 1, 2, 0, 0, 0, 0.56 );
setBlendColor(spep_3 + 30, 1, 2, 0, 0, 0, 0.58 );
setBlendColor(spep_3 + 31, 1, 2, 0, 0, 0, 0.6 );
setBlendColor(spep_3 + 32, 1, 2, 0, 0, 0, 0.62 );
setBlendColor(spep_3 + 33, 1, 2, 0, 0, 0, 0.64 );
setBlendColor(spep_3 + 34, 1, 2, 0, 0, 0, 0.66 );
setBlendColor(spep_3 + 35, 1, 2, 0, 0, 0, 0.68 );
setBlendColor(spep_3 + 36, 1, 2, 0, 0, 0, 0.7 );
setBlendColor(spep_3 + 37, 1, 2, 0, 0, 0, 0.72 );
setBlendColor(spep_3 + 38, 1, 2, 0, 0, 0, 0.74 );
setBlendColor(spep_3 + 39, 1, 2, 0, 0, 0, 0.76 );
setBlendColor(spep_3 + 40, 1, 2, 0, 0, 0, 0.78 );
setBlendColor(spep_3 + 41, 1, 2, 0, 0, 0, 0.8 );
setBlendColor(spep_3 + 42, 1, 2, 0, 0, 0, 0.82 );
setBlendColor(spep_3 + 43, 1, 2, 0, 0, 0, 0.84 );
setBlendColor(spep_3 + 44, 1, 2, 0, 0, 0, 0.86 );
setBlendColor(spep_3 + 45, 1, 2, 0, 0, 0, 0.88 );
setBlendColor(spep_3 + 46, 1, 2, 0, 0, 0, 0.9 );
setBlendColor(spep_3 + 47, 1, 2, 0, 0, 0, 0.92 );
setBlendColor(spep_3 + 48, 1, 2, 0, 0, 0, 0.94 );
setBlendColor(spep_3 + 49, 1, 2, 0, 0, 0, 0.96 );
setBlendColor(spep_3 + 50, 1, 2, 0, 0, 0, 0.98 );
setBlendColor(spep_3 + 51, 1, 2, 0, 0, 0, 1 );
setBlendColor(spep_3 + 55, 1, 2, 0, 0, 0, 1 );
setBlendColor(spep_3 + 56, 1, 2, 0, 0, 0, 0 );

setMoveKey( spep_3 + 0, 1, 59.9, -86.3 , 0 );
setMoveKey( spep_3 + 1, 1, 59, -78.5 , 0 );
setMoveKey( spep_3 + 2, 1, 53.7, -81.2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 54.4, -73.4 , 0 );
setMoveKey( spep_3 -3 + 7, 1, 54.4, -73.4 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 48.2, -74.1 , 0 );
setMoveKey( spep_3 -3 + 9, 1, 48.2, -74.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 52.4, -64.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 43.3, -65.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 48.2, -58.9 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 39.9, -62 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 45.8, -53.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 34.5, -55.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 41.6, -46.8 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 32.7, -41.5 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 37.4, -46.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 29.2, -39 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 33.4, -30.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 27.9, -36.9 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 31, -21.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 21.3, -30.6 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 26.2, -15.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 19.4, -26.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 23.8, -9.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 14.6, -16 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 20, -5.6 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 11.7, -11.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 16, 2.9 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 7.4, -7.8 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 11, 9.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 5.5, -1.9 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 6.9, 8.6 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 6.9, 8.6 , 0 );

setScaleKey( spep_3 + 0, 1, 1.92, 1.92 );
setScaleKey( spep_3 + 1, 1, 1.92, 1.92 );
setScaleKey( spep_3 + 2, 1, 1.92, 1.92 );
setScaleKey( spep_3 + 3, 1, 1.92, 1.92 );
setScaleKey( spep_3 + 4, 1, 1.92, 1.92 );
setScaleKey( spep_3 + 5, 1, 1.92, 1.92 );
setScaleKey( spep_3 + 6, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 59, 1, 1.92, 1.92 );

setRotateKey( spep_3 + 0, 1, -8 );
setRotateKey( spep_3 + 1, 1, -8 );
setRotateKey( spep_3 + 2, 1, -8 );
setRotateKey( spep_3 + 3, 1, -8 );
setRotateKey( spep_3 + 4, 1, -8 );
setRotateKey( spep_3 + 5, 1, -8 );
setRotateKey( spep_3 + 6, 1, -8 );
setRotateKey( spep_3 -3 + 59, 1, -8 );

-- ** 音 ** --
--追いはめ波
SE027 = playSe( spep_3 + 2, 1021 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_3 + 44, 12, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_4 + 0, 190000, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 58, gyan, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, gyan, 1, 1 );
setEffScaleKey( spep_4 + 58, gyan, 1, 1 );

setEffRotateKey( spep_4 + 0, gyan, 0 );
setEffRotateKey( spep_4 + 58, gyan, 0 );

setEffAlphaKey( spep_4 + 0, gyan, 255 );
setEffAlphaKey( spep_4 + 58, gyan, 255 );

-- ** 書き文字エントリー ** --
ctGyan = entryEffectLife( spep_4 + 0, 10006, 58, 0x100, -1, 0, 7.1, 306.8 ); --ギャンッ
setEffMoveKey( spep_4 + 0, ctGyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_4 + 58, ctGyan, 7.1, 306.8 , 0 );

--setEffScaleKey( spep_4 -3 + 0, ctGyan, 0.6, 0.6 );
setEffScaleKey( spep_4 -3 + 3, ctGyan, 2, 2 );
setEffScaleKey( spep_4 -3 + 25, ctGyan, 3.5, 3.5 );
setEffScaleKey( spep_4 -3 + 61, ctGyan, 4, 4 );

setEffRotateKey( spep_4 + 0, ctGyan, 0 );
setEffRotateKey( spep_4 + 58, ctGyan, 0 );

setEffAlphaKey( spep_4 + 0, ctGyan, 255 );
setEffAlphaKey( spep_4 + 57, ctGyan, 255 );
setEffAlphaKey( spep_4 + 58, ctGyan, 0 );

-- ** 薄い黒フェード ** --
entryFadeBg( spep_4 + 0, 0, 58, 0, 0, 0, 0, 180 );

-- ** 白フェード ** --
entryFade( spep_4 + 20, 36, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 + 0, 1023 );  --被弾

--爆発2
SE029 = playSe( spep_4 + 56, 1025 );

--ガッ
SE030 = playSe( spep_4 + 70, 1054 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 58;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 100, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 100, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 100, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 100, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_5 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_5 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 105 );
setRotateKey( spep_5 -3 + 4, 1, 240 );
setRotateKey( spep_5 -3 + 6, 1, 405 );
setRotateKey( spep_5 -3 + 8, 1, 600 );
setRotateKey( spep_5 -3 + 10, 1, 825 );
setRotateKey( spep_5 -3 + 12, 1, 1080 );
setRotateKey( spep_5 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_5 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 音 ** --
--敵が吹っ飛ぶ
stopSe( spep_5 + 16, SE5, 0 );
stopSe( spep_5 + 16, SE6, 0 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 98 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 上空に上がり気弾を放つ(156F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0 );  --上空に上がり気弾を放つ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 156, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 156, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 156, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 156, first_f, 255 );

-- ** 書き文字エントリー ** --
ctbun = entryEffectLife( spep_0 -3 + 58,  10028, 30, 0x100, -1, 0, 156.6, 405.7 ); --ブゥ...ン
setEffMoveKey( spep_0 -3 + 58, ctbun, 156.6, 405.7 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctbun, 156.5, 402.5 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctbun, 153.4, 399.3 , 0 );
setEffMoveKey( spep_0 -3 + 64, ctbun, 159.2, 404.6 , 0 );
setEffMoveKey( spep_0 -3 + 66, ctbun, 151.9, 395.8 , 0 );
setEffMoveKey( spep_0 -3 + 68, ctbun, 155.6, 402.7 , 0 );
setEffMoveKey( spep_0 -3 + 70, ctbun, 156.2, 405.7 , 0 );
setEffMoveKey( spep_0 -3 + 72, ctbun, 156.3, 395.8 , 0 );
setEffMoveKey( spep_0 -3 + 74, ctbun, 151.5, 395.6 , 0 );
setEffMoveKey( spep_0 -3 + 76, ctbun, 159.3, 404.5 , 0 );
setEffMoveKey( spep_0 -3 + 78, ctbun, 151.6, 395.2 , 0 );
setEffMoveKey( spep_0 -3 + 80, ctbun, 155.6, 402.5 , 0 );
setEffMoveKey( spep_0 -3 + 82, ctbun, 156.1, 405.7 , 0 );
setEffMoveKey( spep_0 -3 + 84, ctbun, 156.2, 392.1 , 0 );
setEffMoveKey( spep_0 -3 + 86, ctbun, 147.9, 388.9 , 0 );
setEffMoveKey( spep_0 -3 + 88, ctbun, 146.2, 385.8 , 0 );

setEffScaleKey( spep_0 -3 + 58, ctbun, 0, 0 );
setEffScaleKey( spep_0 -3 + 60, ctbun, 0.46, 0.48 );
setEffScaleKey( spep_0 -3 + 62, ctbun, 0.91, 0.95 );
setEffScaleKey( spep_0 -3 + 64, ctbun, 1.37, 1.42 );
setEffScaleKey( spep_0 -3 + 66, ctbun, 1.38, 1.44 );
setEffScaleKey( spep_0 -3 + 68, ctbun, 1.4, 1.45 );
setEffScaleKey( spep_0 -3 + 70, ctbun, 1.41, 1.47 );
setEffScaleKey( spep_0 -3 + 72, ctbun, 1.42, 1.48 );
setEffScaleKey( spep_0 -3 + 74, ctbun, 1.44, 1.5 );
setEffScaleKey( spep_0 -3 + 76, ctbun, 1.46, 1.52 );
setEffScaleKey( spep_0 -3 + 78, ctbun, 1.47, 1.53 );
setEffScaleKey( spep_0 -3 + 80, ctbun, 1.49, 1.55 );
setEffScaleKey( spep_0 -3 + 82, ctbun, 1.5, 1.56 );
setEffScaleKey( spep_0 -3 + 84, ctbun, 1.99, 2.03 );
setEffScaleKey( spep_0 -3 + 86, ctbun, 2.48, 2.5 );
setEffScaleKey( spep_0 -3 + 88, ctbun, 2.97, 2.97 );

setEffRotateKey( spep_0 -3 + 58, ctbun, -12 );
setEffRotateKey( spep_0 -3 + 88, ctbun, -12 );

setEffAlphaKey( spep_0 -3 + 58, ctbun, 255 );
setEffAlphaKey( spep_0 -3 + 82, ctbun, 255 );
setEffAlphaKey( spep_0 -3 + 84, ctbun, 170 );
setEffAlphaKey( spep_0 -3 + 86, ctbun, 85 );
setEffAlphaKey( spep_0 -3 + 88, ctbun, 0 );

ctgyuo = entryEffectLife( spep_0 -3 + 110,  10051, 42, 0x100, -1, 0, -31.1, -297.9 ); --ギュオ
setEffMoveKey( spep_0 -3 + 110, ctgyuo, -31.1, -297.9 , 0 );
setEffMoveKey( spep_0 -3 + 112, ctgyuo, -17.6, -290.3 , 0 );
setEffMoveKey( spep_0 -3 + 114, ctgyuo, -14.1, -275.2 , 0 );
setEffMoveKey( spep_0 -3 + 116, ctgyuo, 1.7, -270.3 , 0 );
setEffMoveKey( spep_0 -3 + 118, ctgyuo, 3.1, -252.2 , 0 );
setEffMoveKey( spep_0 -3 + 120, ctgyuo, 11.2, -260.3 , 0 );
setEffMoveKey( spep_0 -3 + 122, ctgyuo, 3.1, -252.2 , 0 );
setEffMoveKey( spep_0 -3 + 124, ctgyuo, 11.2, -260.4 , 0 );
setEffMoveKey( spep_0 -3 + 126, ctgyuo, 3, -252.2 , 0 );
setEffMoveKey( spep_0 -3 + 128, ctgyuo, 11.3, -260.4 , 0 );
setEffMoveKey( spep_0 -3 + 130, ctgyuo, 3, -252.2 , 0 );
setEffMoveKey( spep_0 -3 + 132, ctgyuo, 11.3, -260.5 , 0 );
setEffMoveKey( spep_0 -3 + 134, ctgyuo, 2.9, -252.1 , 0 );
setEffMoveKey( spep_0 -3 + 136, ctgyuo, 11.3, -260.5 , 0 );
setEffMoveKey( spep_0 -3 + 138, ctgyuo, 2.9, -252.1 , 0 );
setEffMoveKey( spep_0 -3 + 140, ctgyuo, 11.3, -260.6 , 0 );
setEffMoveKey( spep_0 -3 + 142, ctgyuo, 11.4, -260.6 , 0 );
setEffMoveKey( spep_0 -3 + 144, ctgyuo, 11.5, -249.3 , 0 );
setEffMoveKey( spep_0 -3 + 146, ctgyuo, 33.2, -259.7 , 0 );
setEffMoveKey( spep_0 -3 + 148, ctgyuo, 28.7, -243.8 , 0 );
setEffMoveKey( spep_0 -3 + 150, ctgyuo, 55, -258.8 , 0 );
setEffMoveKey( spep_0 -3 + 152, ctgyuo, 65.9, -258.4 , 0 );

setEffScaleKey( spep_0 -3 + 110, ctgyuo, 0.54, 0.54 );
setEffScaleKey( spep_0 -3 + 112, ctgyuo, 0.75, 0.75 );
setEffScaleKey( spep_0 -3 + 114, ctgyuo, 0.95, 0.95 );
setEffScaleKey( spep_0 -3 + 116, ctgyuo, 1.16, 1.16 );
setEffScaleKey( spep_0 -3 + 118, ctgyuo, 1.37, 1.37 );
setEffScaleKey( spep_0 -3 + 120, ctgyuo, 1.37, 1.37 );
setEffScaleKey( spep_0 -3 + 122, ctgyuo, 1.38, 1.38 );
setEffScaleKey( spep_0 -3 + 124, ctgyuo, 1.39, 1.39 );
setEffScaleKey( spep_0 -3 + 126, ctgyuo, 1.39, 1.39 );
setEffScaleKey( spep_0 -3 + 128, ctgyuo, 1.4, 1.4 );
setEffScaleKey( spep_0 -3 + 130, ctgyuo, 1.4, 1.4 );
setEffScaleKey( spep_0 -3 + 132, ctgyuo, 1.41, 1.41 );
setEffScaleKey( spep_0 -3 + 134, ctgyuo, 1.41, 1.41 );
setEffScaleKey( spep_0 -3 + 136, ctgyuo, 1.42, 1.42 );
setEffScaleKey( spep_0 -3 + 138, ctgyuo, 1.43, 1.43 );
setEffScaleKey( spep_0 -3 + 140, ctgyuo, 1.43, 1.43 );
setEffScaleKey( spep_0 -3 + 142, ctgyuo, 1.44, 1.44 );
setEffScaleKey( spep_0 -3 + 144, ctgyuo, 1.83, 1.83 );
setEffScaleKey( spep_0 -3 + 146, ctgyuo, 2.22, 2.22 );
setEffScaleKey( spep_0 -3 + 148, ctgyuo, 2.61, 2.61 );
setEffScaleKey( spep_0 -3 + 150, ctgyuo, 3.01, 3.01 );
setEffScaleKey( spep_0 -3 + 152, ctgyuo, 3.4, 3.4 );

setEffRotateKey( spep_0 -3 + 110, ctgyuo, -14 );
setEffRotateKey( spep_0 -3 + 112, ctgyuo, -17 );
setEffRotateKey( spep_0 -3 + 114, ctgyuo, -20 );
setEffRotateKey( spep_0 -3 + 116, ctgyuo, -23 );
setEffRotateKey( spep_0 -3 + 118, ctgyuo, -26 );
setEffRotateKey( spep_0 -3 + 126, ctgyuo, -26 );
setEffRotateKey( spep_0 -3 + 128, ctgyuo, -25.9 );
setEffRotateKey( spep_0 -3 + 152, ctgyuo, -25.9 );

setEffAlphaKey( spep_0 -3 + 110, ctgyuo, 255 );
setEffAlphaKey( spep_0 -3 + 142, ctgyuo, 255 );
setEffAlphaKey( spep_0 -3 + 144, ctgyuo, 204 );
setEffAlphaKey( spep_0 -3 + 146, ctgyuo, 153 );
setEffAlphaKey( spep_0 -3 + 148, ctgyuo, 102 );
setEffAlphaKey( spep_0 -3 + 150, ctgyuo, 51 );
setEffAlphaKey( spep_0 -3 + 152, ctgyuo, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 97, 906, 58, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 97, shuchusen1, 58, 20 );
setEffMoveKey( spep_0 + 97, shuchusen1, -40, 0 , 0 );
setEffMoveKey( spep_0 + 155, shuchusen1, -40, 0 , 0 );
setEffScaleKey( spep_0 + 97, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 155, shuchusen1, 1.4, 1.4 );
setEffRotateKey( spep_0 + 97, shuchusen1, 0 );
setEffRotateKey( spep_0 + 155, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 97, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 155, shuchusen1, 255 );

-- ** 音 ** --
--上昇1
SE001 = playSe( spep_0 + 0, 8 );

--上昇2
SE002 = playSe( spep_0 + 6, 1004 );

--上昇3
SE003 = playSe( spep_0 + 16, 44 );

--気弾溜め1
SE004 = playSe( spep_0 + 60, 1154 );
setSeVolumeByWorkId( spep_0 + 60, SE004, 5 );
setSeVolumeByWorkId( spep_0 + 62, SE004, 10 );
setSeVolumeByWorkId( spep_0 + 64, SE004, 25 );
setSeVolumeByWorkId( spep_0 + 66, SE004, 36 );
setSeVolumeByWorkId( spep_0 + 68, SE004, 48 );
setSeVolumeByWorkId( spep_0 + 70, SE004, 59 );
setSeVolumeByWorkId( spep_0 + 72, SE004, 70 );
stopSe( spep_0 + 110, SE004, 6 );
setStartTimeMs( SE004,  217 );
setPitch( spep_0 + 60, SE004, 500 );
setTimeStretch( SE004, 1.33, 10, 1 );

--気弾溜め2
SE005 = playSe( spep_0 + 56, 1262 );
setSeVolumeByWorkId( spep_0 + 56, SE005, 162 );
stopSe( spep_0 + 110, SE005, 6 );
setPitch( spep_0 + 56, SE005, 300 );
setTimeStretch( SE005, 1.2, 10, 1 );

--気弾溜め3
SE006 = playSe( spep_0 + 56, 1204 );
setSeVolumeByWorkId( spep_0 + 56, SE006, 166 );
stopSe( spep_0 + 110, SE006, 6 );

--気弾溜め4
SE007 = playSe( spep_0 + 56, 1252 );
setSeVolumeByWorkId( spep_0 + 56, SE007, 132 );
stopSe( spep_0 + 110, SE007, 6 );

--気弾投げ1
SE008 = playSe( spep_0 + 108, 1026 );
setSeVolumeByWorkId( spep_0 + 108, SE008, 58 );
stopSe( spep_0 +156 + 6, SE008, 0 );

--気弾投げ2
SE009 = playSe( spep_0 + 108, 1114 );
stopSe( spep_0 +156 + 6, SE009, 0 );

--気弾投げ3
SE010 = playSe( spep_0 + 110, 1236 );
stopSe( spep_0 +156 + 6, SE010, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 156, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 156;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
SE_CUTIN = playSe( spep_1 + 0, SE_05 );

--地面連続爆発1
SE012 = playSe( spep_1 + 92, 1044 );
setSeVolumeByWorkId( spep_1 + 92, SE012, 14 );
setSeVolumeByWorkId( spep_1 + 96, SE012, 28 );
setSeVolumeByWorkId( spep_1 + 100, SE012, 42 );
setSeVolumeByWorkId( spep_1 + 105, SE012, 56 );
setSeVolumeByWorkId( spep_1 + 110, SE012, 70 );
setSeVolumeByWorkId( spep_1 + 115, SE012, 84 );
setSeVolumeByWorkId( spep_1 + 120, SE012, 98 );
setSeVolumeByWorkId( spep_1 + 125, SE012, 112 );
setSeVolumeByWorkId( spep_1 + 130, SE012, 126 );
setSeVolumeByWorkId( spep_1 + 135, SE012, 146 );
setSeVolumeByWorkId( spep_1 + 140, SE012, 162 );
stopSe( spep_1 +94 + 100, SE012, 14 );

--地面連続爆発2
SE013 = playSe( spep_1 + 92, 1033 );
setSeVolumeByWorkId( spep_1 + 92, SE013, 27 );
stopSe( spep_1 +94 + 10, SE013, 8 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 地面爆発→かめはめ波(196f)
------------------------------------------------------
-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_2 + 0, SP_02, 196, 0x100, -1, 0, 0, 0 );  --地面爆発→かめはめ波　手前(ef_002_front)
setEffMoveKey( spep_2 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 196, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 196, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame_f, 0 );
setEffRotateKey( spep_2 + 196, tame_f, 0 );
setEffAlphaKey( spep_2 + 0, tame_f, 255 );
setEffAlphaKey( spep_2 + 195, tame_f, 255 );
setEffAlphaKey( spep_2 + 196, tame_f, 0 );

tame_b = entryEffectLife( spep_2 + 0, SP_03r, 196, 0x80, -1, 0, 0, 0 );  --地面爆発→かめはめ波　奥(ef_002_back)
setEffMoveKey( spep_2 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 196, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 196, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame_b, 0 );
setEffRotateKey( spep_2 + 196, tame_b, 0 );
setEffAlphaKey( spep_2 + 0, tame_b, 255 );
setEffAlphaKey( spep_2 + 195, tame_b, 255 );
setEffAlphaKey( spep_2 + 196, tame_b, 0 );


-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 52, 0x100, -1, 0, -30, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 52, 20 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, -30 , 0 );
setEffMoveKey( spep_2 + 52, shuchusen2, 0, -30 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 52, shuchusen2, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 52, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 52, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_2 + 90, 906, 105, 0x100, -1, -140, -50, 0 );  --集中線
setEffShake( spep_2 + 90, shuchusen3, 40, 20 );
setEffMoveKey( spep_2 + 90, shuchusen3, -140, -50 , 0 );
setEffMoveKey( spep_2 + 195, shuchusen3, -140, -50 , 0 );
setEffScaleKey( spep_2 + 90, shuchusen3, 1.8, 1.8 );
setEffScaleKey( spep_2 + 194, shuchusen3, 1.8, 1.8 );
setEffRotateKey( spep_2 + 90, shuchusen3, 0 );
setEffRotateKey( spep_2 + 195, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 90, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 154, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 155, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 195, shuchusen3, 255 );


spep_x = spep_2 + 92;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 60, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 60, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 60, 515.5 , 0 );
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

ctdogaga = entryEffectLife( spep_2 + 0,  10017, 35, 0x100, -1, 0, -156, -377.4 ); --ドガガガッ
setEffMoveKey( spep_2 + 0, ctdogaga, -156, -377.4 , 0 );
setEffMoveKey( spep_2 + 1, ctdogaga, -145.3, -379.4 , 0 );
setEffMoveKey( spep_2 + 2, ctdogaga, -129.8, -376.7 , 0 );
setEffMoveKey( spep_2 -3 + 6, ctdogaga, -144.7, -394.3 , 0 );
setEffMoveKey( spep_2 -3 + 8, ctdogaga, -107.7, -379.7 , 0 );
setEffMoveKey( spep_2 -3 + 10, ctdogaga, -132.3, -385.8 , 0 );
setEffMoveKey( spep_2 -3 + 12, ctdogaga, -82.6, -371.5 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctdogaga, -87.7, -436.2 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctdogaga, -57.1, -381.8 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctdogaga, -19.8, -402.4 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctdogaga, -14.9, -440.7 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctdogaga, -35.7, -420.1 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctdogaga, -44.4, -420.3 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctdogaga, -33.4, -438.4 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctdogaga, -36.5, -432.8 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctdogaga, -8.8, -432.3 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctdogaga, -19.4, -404.9 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctdogaga, -10.7, -396.3 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctdogaga, -2.2, -398.4 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctdogaga, 6.3, -400.4 , 0 );

setEffScaleKey( spep_2 + 0, ctdogaga, 0, 0 );
setEffScaleKey( spep_2 + 1, ctdogaga, 0.72, 0.64 );
setEffScaleKey( spep_2 + 2, ctdogaga, 1.61, 1.42 );
setEffScaleKey( spep_2 -3 + 6, ctdogaga, 1.73, 1.57 );
setEffScaleKey( spep_2 -3 + 8, ctdogaga, 1.85, 1.71 );
setEffScaleKey( spep_2 -3 + 10, ctdogaga, 1.96, 1.86 );
setEffScaleKey( spep_2 -3 + 12, ctdogaga, 2.06, 2.01 );
setEffScaleKey( spep_2 -3 + 14, ctdogaga, 2.16, 2.16 );
setEffScaleKey( spep_2 -3 + 16, ctdogaga, 2.25, 2.3 );
setEffScaleKey( spep_2 -3 + 18, ctdogaga, 2.33, 2.45 );
setEffScaleKey( spep_2 -3 + 20, ctdogaga, 2.4, 2.6 );
setEffScaleKey( spep_2 -3 + 22, ctdogaga, 2.47, 2.74 );
setEffScaleKey( spep_2 -3 + 24, ctdogaga, 2.52, 2.89 );
setEffScaleKey( spep_2 -3 + 26, ctdogaga, 2.57, 3.04 );
setEffScaleKey( spep_2 -3 + 28, ctdogaga, 2.61, 3.19 );
setEffScaleKey( spep_2 -3 + 30, ctdogaga, 4.47, 5.45 );
setEffScaleKey( spep_2 -3 + 32, ctdogaga, 6.5, 7.92 );
setEffScaleKey( spep_2 -3 + 34, ctdogaga, 8.66, 10.56 );
setEffScaleKey( spep_2 -3 + 36, ctdogaga, 9.01, 10.98 );
setEffScaleKey( spep_2 -3 + 38, ctdogaga, 9.36, 11.41 );

setEffRotateKey( spep_2 + 0, ctdogaga, 0 );
setEffRotateKey( spep_2 -3 + 38, ctdogaga, 0 );

setEffAlphaKey( spep_2 -3 + 0, ctdogaga, 255 );
setEffAlphaKey( spep_2 -3 + 28, ctdogaga, 255 );
setEffAlphaKey( spep_2 -3 + 30, ctdogaga, 170 );
setEffAlphaKey( spep_2 -3 + 32, ctdogaga, 85 );
setEffAlphaKey( spep_2 -3 + 34, ctdogaga, 0 );
setEffAlphaKey( spep_2 -3 + 38, ctdogaga, 0 );

-- ** 敵キャラクター1 ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 -3 + 16, 1, 104 );

setMoveKey( spep_2 + 0, 1, 198.3, -41.8 , 0 );
setMoveKey( spep_2 + 1, 1, 200.1, -41.1 , 0 );
setMoveKey( spep_2 + 2, 1, 201.9, -40.5 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 203.6, -39.7 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 203.6, -39.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 201.7, -40.8 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 201.7, -40.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 199.7, -41.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 200.3, -39.8 , 0 );
setMoveKey( spep_2 -3 + 15, 1, 200.9, -37.7 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 200.9, -47.1 , 0 );

setScaleKey( spep_2 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 1, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 2, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 3, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 4, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 5, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 6, 1, 1.2, 1.2 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 1, 1, 0 );
setRotateKey( spep_2 + 2, 1, 0 );
setRotateKey( spep_2 + 3, 1, 0 );
setRotateKey( spep_2 + 4, 1, 0 );
setRotateKey( spep_2 + 5, 1, 0 );
setRotateKey( spep_2 + 6, 1, 0 );

-- ** 音 ** --
--地面連続爆発3
SE014 = playSe( spep_2 + 2, 1159 );
setSeVolumeByWorkId( spep_2 + 2, SE014, 47 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 196, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 201, -47.9 , 0 );
    setMoveKey( SP_dodge + 2, 1, 201.1, -48.8 , 0 );
    setMoveKey( SP_dodge + 4, 1, 195.4, -42.6 , 0 );
    setMoveKey( SP_dodge + 6, 1, 203.1, -44.2 , 0 );
    setMoveKey( SP_dodge + 8, 1, 199.1, -50.6 , 0 );
    setMoveKey( SP_dodge + 10, 1, 202.4, -50.6 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.2, 1.2 );
    setScaleKey( SP_dodge + 2, 1, 1.2, 1.2 );
    setScaleKey( SP_dodge + 4, 1, 1.2, 1.2 );
    setScaleKey( SP_dodge + 6, 1, 1.2, 1.2 );
    setScaleKey( SP_dodge + 8, 1, 1.2, 1.2 );
    setScaleKey( SP_dodge + 10, 1, 1.2, 1.2 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 書き文字エントリー ** --
ctbom = entryEffectLife( spep_2 -2 + 44,  10027, 29, 0x100, -1, 0, -22.3, -242.6 ); --ボンッ
setEffMoveKey( spep_2 -2 + 44, ctbom, -22.3, -242.6 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctbom, -25.9, -223.2 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctbom, 12.9, -213.9 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctbom, -41.1, -261.2 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctbom, -8.4, -228.6 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctbom, -39.9, -232.7 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctbom, -33.1, -268.9 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctbom, -15.6, -270.5 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctbom, 2.2, -221.2 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctbom, 10.8, -241.1 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctbom, 19.5, -261 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctbom, 5.5, -250.3 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctbom, -8.4, -239.5 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctbom, -11.9, -241 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctbom, -22.5, -244.1 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctbom, -22.6, -244.5 , 0 );

setEffScaleKey( spep_2 -2 + 44, ctbom, 0.02, 0.02 );
setEffScaleKey( spep_2 -3 + 46, ctbom, 1.41, 1.47 );
setEffScaleKey( spep_2 -3 + 48, ctbom, 2.81, 2.93 );
setEffScaleKey( spep_2 -3 + 68, ctbom, 2.81, 2.93 );
setEffScaleKey( spep_2 -3 + 70, ctbom, 4.28, 4.35 );
setEffScaleKey( spep_2 -3 + 72, ctbom, 5.74, 5.78 );
setEffScaleKey( spep_2 -3 + 74, ctbom, 7.21, 7.21 );

setEffRotateKey( spep_2 -2 + 44, ctbom, 0 );
setEffRotateKey( spep_2 -3 + 74, ctbom, 0 );

setEffAlphaKey( spep_2 -2 + 44, ctbom, 255 );
setEffAlphaKey( spep_2 -3 + 68, ctbom, 255 );
setEffAlphaKey( spep_2 -3 + 70, ctbom, 170 );
setEffAlphaKey( spep_2 -3 + 72, ctbom, 85 );
setEffAlphaKey( spep_2 -3 + 74, ctbom, 0 );

ctzuo = entryEffectLife( spep_2 -2 + 156,  10012, 39, 0x100, -1, 0, -125.9, -120.8 ); --ズオッ
setEffMoveKey( spep_2 -2 + 156, ctzuo, -125.9, -120.8 , 0 );
setEffMoveKey( spep_2 -3 + 158, ctzuo, -123.1, -96.9 , 0 );
setEffMoveKey( spep_2 -3 + 160, ctzuo, -76, -98.1 , 0 );
setEffMoveKey( spep_2 -3 + 162, ctzuo, -151.8, -133.9 , 0 );
setEffMoveKey( spep_2 -3 + 164, ctzuo, -104.6, -107.8 , 0 );
setEffMoveKey( spep_2 -3 + 166, ctzuo, -141.3, -102.2 , 0 );
setEffMoveKey( spep_2 -3 + 168, ctzuo, -136.5, -129.7 , 0 );
setEffMoveKey( spep_2 -3 + 170, ctzuo, -103.9, -113.3 , 0 );
setEffMoveKey( spep_2 -3 + 172, ctzuo, -132.9, -107.1 , 0 );
setEffMoveKey( spep_2 -3 + 174, ctzuo, -122, -128.1 , 0 );
setEffMoveKey( spep_2 -3 + 176, ctzuo, -121.9, -109.3 , 0 );
setEffMoveKey( spep_2 -3 + 178, ctzuo, -108.3, -110.7 , 0 );
setEffMoveKey( spep_2 -3 + 180, ctzuo, -128.9, -109.4 , 0 );
setEffMoveKey( spep_2 -3 + 182, ctzuo, -114.7, -124.8 , 0 );
setEffMoveKey( spep_2 -3 + 184, ctzuo, -124.2, -107.4 , 0 );
setEffMoveKey( spep_2 -3 + 186, ctzuo, -110.3, -106.8 , 0 );
setEffMoveKey( spep_2 -3 + 188, ctzuo, -117.3, -110.1 , 0 );
setEffMoveKey( spep_2 -3 + 190, ctzuo, -124.2, -113.4 , 0 );
setEffMoveKey( spep_2 -3 + 192, ctzuo, -119.4, -110.3 , 0 );
setEffMoveKey( spep_2 -3 + 194, ctzuo, -111.5, -107.7 , 0 );
setEffMoveKey( spep_2 -3 + 196, ctzuo, -108, -104.6 , 0 );

setEffScaleKey( spep_2 -2 + 156, ctzuo, 0.01, 0.02 );
setEffScaleKey( spep_2 -3 + 158, ctzuo, 1.06, 1.1 );
setEffScaleKey( spep_2 -3 + 160, ctzuo, 2.11, 2.19 );
setEffScaleKey( spep_2 -3 + 190, ctzuo, 2.11, 2.19 );
setEffScaleKey( spep_2 -3 + 192, ctzuo, 3.2, 3.26 );
setEffScaleKey( spep_2 -3 + 194, ctzuo, 4.3, 4.33 );
setEffScaleKey( spep_2 -3 + 196, ctzuo, 5.4, 5.4 );

setEffRotateKey( spep_2 -2 + 156, ctzuo, 18.2 );
setEffRotateKey( spep_2 -3 + 158, ctzuo, 18 );
setEffRotateKey( spep_2 -3 + 196, ctzuo, 18 );

setEffAlphaKey( spep_2 -2 + 156, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 190, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 192, ctzuo, 170 );
setEffAlphaKey( spep_2 -3 + 194, ctzuo, 85 );
setEffAlphaKey( spep_2 -3 + 196, ctzuo, 0 );


-- ** 敵キャラクター1 ** --
setDisp( spep_2 -3 + 46, 1, 0 );

setMoveKey( spep_2 -3 + 18, 1, 201, -47.9 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 201.1, -48.8 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 195.4, -42.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 203.1, -44.2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 199.1, -50.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 202.4, -50.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 202.4, -41.9 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 202.4, -49.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 194.8, -44.2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 204.9, -47.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 201.4, -50.8 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 194.8, -41.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 204.9, -47.1 , 0 );
setMoveKey( spep_2 -3 + 45, 1, 199.6, -50.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 199.6, -50.8 , 0 );

setScaleKey( spep_2 -3 + 46, 1, 1.2, 1.2 );

setRotateKey( spep_2 -3 + 46, 1, 0 );

-- ** 敵キャラクター2 ** --
setDisp( spep_2 -3 + 58, 1, 1 );
setDisp( spep_2 -3 + 122, 1, 0 );
changeAnime( spep_2 -3 + 58, 1, 106 );

setMoveKey( spep_2 -3 + 58, 1, 280.3, -212.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 250.2, -159.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 181, -66.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 207.5, -76.5 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 153.6, -12.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 164.3, -17.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 172.3, 24.7 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 143.5, 18.4 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 153.2, 62 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 129.8, 63.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 135.4, 94.8 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 127.9, 97.2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 127, 119.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 126.8, 141.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 119.6, 153.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 112.9, 163.9 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 115.2, 179.1 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 117.8, 194.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 112.8, 204.4 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 108.1, 214.4 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 109.4, 228 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 316.1, 134.7 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 501.3, 71.5 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 669.8, 40.1 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 826.6, 41.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 970, 71 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 1155.6, 18.5 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 1336.8, -39 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 1518.2, -96.5 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 1704, -148.5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 1889.8, -200.5 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 1889.2, -202 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 1888.6, -203.5 , 0 );

setScaleKey( spep_2 -3 + 58, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 60, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 62, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 64, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 66, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 68, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 70, 1, 0.92, 0.92 );
setScaleKey( spep_2 -3 + 72, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 74, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 76, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 78, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 80, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 82, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 84, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 86, 1, 1, 1 );
setScaleKey( spep_2 -3 + 88, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 90, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 92, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 94, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 96, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 98, 1, 1.06, 1.06 );
setScaleKey( spep_2 -3 + 100, 1, 1.84, 1.84 );
setScaleKey( spep_2 -3 + 102, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 104, 1, 3.38, 3.38 );
setScaleKey( spep_2 -3 + 106, 1, 4.16, 4.16 );
setScaleKey( spep_2 -3 + 108, 1, 4.93, 4.93 );
setScaleKey( spep_2 -3 + 110, 1, 5.71, 5.71 );
setScaleKey( spep_2 -3 + 112, 1, 6.48, 6.48 );
setScaleKey( spep_2 -3 + 114, 1, 7.25, 7.25 );
setScaleKey( spep_2 -3 + 116, 1, 8.03, 8.03 );
setScaleKey( spep_2 -3 + 122, 1, 8.03, 8.03 );

setRotateKey( spep_2 -3 + 58, 1, 0 );
setRotateKey( spep_2 -3 + 122, 1, 0 );

-- ** 音 ** --
--地面連続爆発4
SE015 = playSe( spep_2 + 6, 1033 );
setSeVolumeByWorkId( spep_2 + 6, SE015, 30 );
stopSe( spep_2 + 14, SE015, 14 );

--地面連続爆発5
SE016 = playSe( spep_2 + 14, 1033 );
setSeVolumeByWorkId( spep_2 + 14, SE016, 37 );
stopSe( spep_2 + 26, SE016, 14 );

--地面連続爆発6
SE017 = playSe( spep_2 + 24, 1033 );
setSeVolumeByWorkId( spep_2 + 24, SE017, 36 );
stopSe( spep_2 + 36, SE017, 12 );

--地面連続爆発7
SE018 = playSe( spep_2 + 34, 1033 );
setSeVolumeByWorkId( spep_2 + 34, SE018, 42 );
stopSe( spep_2 + 46, SE018, 10 );

--地面連続爆発8
SE019 = playSe( spep_2 + 40, 1023 );
setSeVolumeByWorkId( spep_2 + 40, SE019, 64 );

--地面連続爆発9
SE020 = playSe( spep_2 + 40, 1024 );
setSeVolumeByWorkId( spep_2 + 40, SE020, 71 );

--かめはめ波溜め1
SE021 = playSe( spep_2 + 98, 1131 );
setSeVolumeByWorkId( spep_2 + 98, SE021, 54 );
stopSe( spep_2 + 154, SE021, 6 );

--かめはめ波溜め2
SE022 = playSe( spep_2 + 98, 1132 );
setSeVolumeByWorkId( spep_2 + 98, SE022, 79 );
stopSe( spep_2 + 154, SE022, 6 );

--顔カットイン
SE023 = playSe( spep_2 + 100, 1018 );

--かめはめ波発射1
SE024 = playSe( spep_2 + 154, 1022 );
setSeVolumeByWorkId( spep_2 + 154, SE024, 72 );

--かめはめ波発射2
SE025 = playSe( spep_2 + 154, 1027 );
setSeVolumeByWorkId( spep_2 + 154, SE025, 70 );

--かめはめ波発射3
SE026 = playSe( spep_2 + 154, 1146 );
setSeVolumeByWorkId( spep_2 + 154, SE026, 87 );

-- ** 白フェード ** --
entryFade( spep_2 + 186, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 196;


------------------------------------------------------
-- かめはめ波が敵に迫る(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
shot_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --かめはめ波が敵に迫る　手前(ef_003_front)
setEffMoveKey( spep_3 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shot_f, 0 );
setEffRotateKey( spep_3 + 56, shot_f, 0 );
setEffAlphaKey( spep_3 + 0, shot_f, 255 );
setEffAlphaKey( spep_3 + 56, shot_f, 255 );

shot_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --かめはめ波が敵に迫る　奥(ef_003_back)
setEffMoveKey( spep_3 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shot_b, 0 );
setEffRotateKey( spep_3 + 56, shot_b, 0 );
setEffAlphaKey( spep_3 + 0, shot_b, 255 );
setEffAlphaKey( spep_3 + 56, shot_b, 255 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_3 + 0,  10014, 55, 0x100, -1, 0, -215.1, 95.6 ); --ズドドドッ
setEffMoveKey( spep_3 + 0, ctzudodo, -215.1, 95.6 , 0 );
setEffMoveKey( spep_3 + 1, ctzudodo, -200.3, 106.6 , 0 );
setEffMoveKey( spep_3 + 2, ctzudodo, -179, 115.9 , 0 );
setEffMoveKey( spep_3 -3 + 6, ctzudodo, -190.1, 130.5 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctzudodo, -185.3, 110.2 , 0 );
setEffMoveKey( spep_3 -3 + 10, ctzudodo, -161.8, 109.3 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctzudodo, -119.1, 148.7 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctzudodo, -110.1, 146.5 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctzudodo, -92.6, 121.5 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctzudodo, -100.5, 138.7 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctzudodo, -86.5, 166.5 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctzudodo, -70.3, 180 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctzudodo, -79.8, 183.6 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctzudodo, -61.8, 193.6 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctzudodo, -15.1, 215.1 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctzudodo, -16.3, 217.5 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctzudodo, -48.9, 207.3 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctzudodo, -36.8, 214.9 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctzudodo, 7.8, 235.5 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctzudodo, 27.4, 265.6 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctzudodo, 12.9, 283.3 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctzudodo, -0.3, 281.4 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctzudodo, 0.2, 260.2 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctzudodo, 29.3, 247.3 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctzudodo, 44.3, 270.1 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctzudodo, 41.9, 275.6 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctzudodo, 24.5, 280.3 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctzudodo, 21.2, 249.4 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctzudodo, 21.2, 249.4 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctzudodo, 38, 266.4 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctzudodo, 38, 266.4 , 0 );

setEffScaleKey( spep_3 + 0, ctzudodo, 0.01, 0.01 );
setEffScaleKey( spep_3 + 1, ctzudodo, 0.6, 0.6 );
setEffScaleKey( spep_3 + 2, ctzudodo, 1.29, 1.29 );
setEffScaleKey( spep_3 -3 + 6, ctzudodo, 1.38, 1.38 );
setEffScaleKey( spep_3 -3 + 8, ctzudodo, 1.47, 1.47 );
setEffScaleKey( spep_3 -3 + 10, ctzudodo, 1.56, 1.56 );
setEffScaleKey( spep_3 -3 + 12, ctzudodo, 1.65, 1.65 );
setEffScaleKey( spep_3 -3 + 14, ctzudodo, 1.74, 1.74 );
setEffScaleKey( spep_3 -3 + 16, ctzudodo, 1.82, 1.82 );
setEffScaleKey( spep_3 -3 + 18, ctzudodo, 1.91, 1.91 );
setEffScaleKey( spep_3 -3 + 20, ctzudodo, 2, 2 );
setEffScaleKey( spep_3 -3 + 22, ctzudodo, 2.09, 2.09 );
setEffScaleKey( spep_3 -3 + 24, ctzudodo, 2.18, 2.18 );
setEffScaleKey( spep_3 -3 + 26, ctzudodo, 2.27, 2.27 );
setEffScaleKey( spep_3 -3 + 28, ctzudodo, 2.36, 2.36 );
setEffScaleKey( spep_3 -3 + 30, ctzudodo, 2.45, 2.45 );
setEffScaleKey( spep_3 -3 + 32, ctzudodo, 2.54, 2.54 );
setEffScaleKey( spep_3 -3 + 34, ctzudodo, 2.63, 2.63 );
setEffScaleKey( spep_3 -3 + 36, ctzudodo, 2.72, 2.72 );
setEffScaleKey( spep_3 -3 + 38, ctzudodo, 2.81, 2.81 );
setEffScaleKey( spep_3 -3 + 40, ctzudodo, 2.9, 2.9 );
setEffScaleKey( spep_3 -3 + 42, ctzudodo, 2.99, 2.99 );
setEffScaleKey( spep_3 -3 + 54, ctzudodo, 2.99, 2.99 );
setEffScaleKey( spep_3 -3 + 56, ctzudodo, 2.98, 2.98 );
setEffScaleKey( spep_3 -3 + 58, ctzudodo, 2.99, 2.99 );

setEffRotateKey( spep_3 + 0, ctzudodo, -11.2 );
setEffRotateKey( spep_3 + 1, ctzudodo, -18 );
setEffRotateKey( spep_3 + 2, ctzudodo, -25 );
setEffRotateKey( spep_3 -3 + 54, ctzudodo, -25 );
setEffRotateKey( spep_3 -3 + 56, ctzudodo, -25.2 );
setEffRotateKey( spep_3 -3 + 58, ctzudodo, -25 );

setEffAlphaKey( spep_3 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_3 -3 + 58, ctzudodo, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 56, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
 
setBlendColor(spep_3 + 2, 1, 2, 0, 0, 0, 0.02 );
setBlendColor(spep_3 + 3, 1, 2, 0, 0, 0, 0.04 );
setBlendColor(spep_3 + 4, 1, 2, 0, 0, 0, 0.06 );
setBlendColor(spep_3 + 5, 1, 2, 0, 0, 0, 0.08 );
setBlendColor(spep_3 + 6, 1, 2, 0, 0, 0, 0.1 );
setBlendColor(spep_3 + 7, 1, 2, 0, 0, 0, 0.12 );
setBlendColor(spep_3 + 8, 1, 2, 0, 0, 0, 0.14 );
setBlendColor(spep_3 + 9, 1, 2, 0, 0, 0, 0.16 );
setBlendColor(spep_3 + 10, 1, 2, 0, 0, 0, 0.18 );
setBlendColor(spep_3 + 11, 1, 2, 0, 0, 0, 0.2 );
setBlendColor(spep_3 + 12, 1, 2, 0, 0, 0, 0.22 );
setBlendColor(spep_3 + 13, 1, 2, 0, 0, 0, 0.24 );
setBlendColor(spep_3 + 14, 1, 2, 0, 0, 0, 0.26 );
setBlendColor(spep_3 + 15, 1, 2, 0, 0, 0, 0.28 );
setBlendColor(spep_3 + 16, 1, 2, 0, 0, 0, 0.3 );
setBlendColor(spep_3 + 17, 1, 2, 0, 0, 0, 0.32 );
setBlendColor(spep_3 + 18, 1, 2, 0, 0, 0, 0.34 );
setBlendColor(spep_3 + 19, 1, 2, 0, 0, 0, 0.36 );
setBlendColor(spep_3 + 20, 1, 2, 0, 0, 0, 0.38 );
setBlendColor(spep_3 + 21, 1, 2, 0, 0, 0, 0.4 );
setBlendColor(spep_3 + 22, 1, 2, 0, 0, 0, 0.42 );
setBlendColor(spep_3 + 23, 1, 2, 0, 0, 0, 0.44 );
setBlendColor(spep_3 + 24, 1, 2, 0, 0, 0, 0.46 );
setBlendColor(spep_3 + 25, 1, 2, 0, 0, 0, 0.48 );
setBlendColor(spep_3 + 26, 1, 2, 0, 0, 0, 0.5 );
setBlendColor(spep_3 + 27, 1, 2, 0, 0, 0, 0.52 );
setBlendColor(spep_3 + 28, 1, 2, 0, 0, 0, 0.54 );
setBlendColor(spep_3 + 29, 1, 2, 0, 0, 0, 0.56 );
setBlendColor(spep_3 + 30, 1, 2, 0, 0, 0, 0.58 );
setBlendColor(spep_3 + 31, 1, 2, 0, 0, 0, 0.6 );
setBlendColor(spep_3 + 32, 1, 2, 0, 0, 0, 0.62 );
setBlendColor(spep_3 + 33, 1, 2, 0, 0, 0, 0.64 );
setBlendColor(spep_3 + 34, 1, 2, 0, 0, 0, 0.66 );
setBlendColor(spep_3 + 35, 1, 2, 0, 0, 0, 0.68 );
setBlendColor(spep_3 + 36, 1, 2, 0, 0, 0, 0.7 );
setBlendColor(spep_3 + 37, 1, 2, 0, 0, 0, 0.72 );
setBlendColor(spep_3 + 38, 1, 2, 0, 0, 0, 0.74 );
setBlendColor(spep_3 + 39, 1, 2, 0, 0, 0, 0.76 );
setBlendColor(spep_3 + 40, 1, 2, 0, 0, 0, 0.78 );
setBlendColor(spep_3 + 41, 1, 2, 0, 0, 0, 0.8 );
setBlendColor(spep_3 + 42, 1, 2, 0, 0, 0, 0.82 );
setBlendColor(spep_3 + 43, 1, 2, 0, 0, 0, 0.84 );
setBlendColor(spep_3 + 44, 1, 2, 0, 0, 0, 0.86 );
setBlendColor(spep_3 + 45, 1, 2, 0, 0, 0, 0.88 );
setBlendColor(spep_3 + 46, 1, 2, 0, 0, 0, 0.9 );
setBlendColor(spep_3 + 47, 1, 2, 0, 0, 0, 0.92 );
setBlendColor(spep_3 + 48, 1, 2, 0, 0, 0, 0.94 );
setBlendColor(spep_3 + 49, 1, 2, 0, 0, 0, 0.96 );
setBlendColor(spep_3 + 50, 1, 2, 0, 0, 0, 0.98 );
setBlendColor(spep_3 + 51, 1, 2, 0, 0, 0, 1 );
setBlendColor(spep_3 + 55, 1, 2, 0, 0, 0, 1 );
setBlendColor(spep_3 + 56, 1, 2, 0, 0, 0, 0 );

setMoveKey( spep_3 + 0, 1, 59.9, -86.3 , 0 );
setMoveKey( spep_3 + 1, 1, 59, -78.5 , 0 );
setMoveKey( spep_3 + 2, 1, 53.7, -81.2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 54.4, -73.4 , 0 );
setMoveKey( spep_3 -3 + 7, 1, 54.4, -73.4 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 48.2, -74.1 , 0 );
setMoveKey( spep_3 -3 + 9, 1, 48.2, -74.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 52.4, -64.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 43.3, -65.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 48.2, -58.9 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 39.9, -62 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 45.8, -53.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 34.5, -55.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 41.6, -46.8 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 32.7, -41.5 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 37.4, -46.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 29.2, -39 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 33.4, -30.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 27.9, -36.9 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 31, -21.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 21.3, -30.6 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 26.2, -15.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 19.4, -26.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 23.8, -9.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 14.6, -16 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 20, -5.6 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 11.7, -11.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 16, 2.9 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 7.4, -7.8 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 11, 9.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 5.5, -1.9 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 6.9, 8.6 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 6.9, 8.6 , 0 );

setScaleKey( spep_3 + 0, 1, 1.92, 1.92 );
setScaleKey( spep_3 + 1, 1, 1.92, 1.92 );
setScaleKey( spep_3 + 2, 1, 1.92, 1.92 );
setScaleKey( spep_3 + 3, 1, 1.92, 1.92 );
setScaleKey( spep_3 + 4, 1, 1.92, 1.92 );
setScaleKey( spep_3 + 5, 1, 1.92, 1.92 );
setScaleKey( spep_3 + 6, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 59, 1, 1.92, 1.92 );

setRotateKey( spep_3 + 0, 1, -8 );
setRotateKey( spep_3 + 1, 1, -8 );
setRotateKey( spep_3 + 2, 1, -8 );
setRotateKey( spep_3 + 3, 1, -8 );
setRotateKey( spep_3 + 4, 1, -8 );
setRotateKey( spep_3 + 5, 1, -8 );
setRotateKey( spep_3 + 6, 1, -8 );
setRotateKey( spep_3 -3 + 59, 1, -8 );

-- ** 音 ** --
--追いはめ波
SE027 = playSe( spep_3 + 2, 1021 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_3 + 44, 12, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_4 + 0, 190000, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 58, gyan, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, gyan, 1, 1 );
setEffScaleKey( spep_4 + 58, gyan, 1, 1 );

setEffRotateKey( spep_4 + 0, gyan, 0 );
setEffRotateKey( spep_4 + 58, gyan, 0 );

setEffAlphaKey( spep_4 + 0, gyan, 255 );
setEffAlphaKey( spep_4 + 58, gyan, 255 );

-- ** 書き文字エントリー ** --
ctGyan = entryEffectLife( spep_4 + 0, 10006, 58, 0x100, -1, 0, 7.1, 306.8 ); --ギャンッ
setEffMoveKey( spep_4 + 0, ctGyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_4 + 58, ctGyan, 7.1, 306.8 , 0 );

--setEffScaleKey( spep_4 -3 + 0, ctGyan, 0.6, 0.6 );
setEffScaleKey( spep_4 -3 + 3, ctGyan, 2, 2 );
setEffScaleKey( spep_4 -3 + 25, ctGyan, 3.5, 3.5 );
setEffScaleKey( spep_4 -3 + 61, ctGyan, 4, 4 );

setEffRotateKey( spep_4 + 0, ctGyan, 0 );
setEffRotateKey( spep_4 + 58, ctGyan, 0 );

setEffAlphaKey( spep_4 + 0, ctGyan, 255 );
setEffAlphaKey( spep_4 + 57, ctGyan, 255 );
setEffAlphaKey( spep_4 + 58, ctGyan, 0 );

-- ** 薄い黒フェード ** --
entryFadeBg( spep_4 + 0, 0, 58, 0, 0, 0, 0, 180 );

-- ** 白フェード ** --
entryFade( spep_4 + 20, 36, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 + 0, 1023 );  --被弾

--爆発2
SE029 = playSe( spep_4 + 56, 1025 );

--ガッ
SE030 = playSe( spep_4 + 70, 1054 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 58;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 100, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 100, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 100, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 100, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_5 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_5 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 105 );
setRotateKey( spep_5 -3 + 4, 1, 240 );
setRotateKey( spep_5 -3 + 6, 1, 405 );
setRotateKey( spep_5 -3 + 8, 1, 600 );
setRotateKey( spep_5 -3 + 10, 1, 825 );
setRotateKey( spep_5 -3 + 12, 1, 1080 );
setRotateKey( spep_5 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_5 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 音 ** --
--敵が吹っ飛ぶ
stopSe( spep_5 + 16, SE5, 0 );
stopSe( spep_5 + 16, SE6, 0 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 98 );

end