--4025650:LRハッチヒャック(巨大化)_フルチャージリベンジャーカノン_sp2438
--sp_effect_a3_00097

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
SP_01 = 161045;  --開幕　巨大化＿キャラ    ef_001_bg
SP_02 = 161046;  --開幕　巨大化＿キャラ    ef_001
SP_03 = 161047;  --口上から構えて初撃、2発目充填    ef_002_bg
SP_04 = 161048;  --口上から構えて初撃、2発目充填    ef_002
SP_05 = 161049;  --とどめの追撃　遠景爆発    ef_003
SP_06 = 161097;  --開幕　巨大化＿キャラ    ef_001_drawtext

--敵側
SP_03r = 161099;  --口上から構えて初撃、2発目充填　敵側    ef_002_bg_r
SP_04r = 161100;  --口上から構えて初撃、2発目充填　敵側    ef_002_r
SP_05r = 161101;  --とどめの追撃　遠景爆発　敵側    ef_003_r
SP_06r = 161098;  --開幕　巨大化＿キャラ　敵側    ef_001_drawtext_r


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開幕　巨大化＿キャラ(198F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --開幕　巨大化＿キャラ    ef_001_b
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 196, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 196 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 196 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 196, first_f, 0 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --開幕　巨大化＿キャラ    ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 196, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 196 -2, first_b, 255 );
setEffAlphaKey( spep_0 + 196 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 196, first_b, 0 );

first_b2 = entryEffect( spep_0 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --開幕　巨大化＿キャラ    ef_001_drawtext
setEffMoveKey( spep_0 + 0, first_b2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, first_b2, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b2, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, first_b2, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b2, 0 );
setEffRotateKey( spep_0 + 196, first_b2, 0 );
setEffAlphaKey( spep_0 + 0, first_b2, 255 );
setEffAlphaKey( spep_0 + 196 -2, first_b2, 255 );
setEffAlphaKey( spep_0 + 196 -1, first_b2, 255 );
setEffAlphaKey( spep_0 + 196, first_b2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 199 , 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );
changeAnime( spep_0 -3 + 104, 1, 102 );

setMoveKey( spep_0 + 0, 1, 136.3, -180.7 , 0 );
setMoveKey( spep_0 + 1, 1, 136.3, -180.7 , 0 );
setMoveKey( spep_0 + 2, 1, 136.3, -180.7 , 0 );
setMoveKey( spep_0 + 3, 1, 136.3, -180.7 , 0 );
setMoveKey( spep_0 + 4, 1, 136.3, -180.7 , 0 );
setMoveKey( spep_0 + 5, 1, 136.3, -180.7 , 0 );
setMoveKey( spep_0 + 6, 1, 136.3, -180.7 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 136.3, -180.6 , 0 );
setMoveKey( spep_0 -3 + 45, 1, 136.3, -180.6 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 136.3, -196.1 , 0 );
setMoveKey( spep_0 -3 + 47, 1, 136.3, -196.1 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 136.3, -185.3 , 0 );
setMoveKey( spep_0 -3 + 49, 1, 136.3, -185.3 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 136.3, -169.8 , 0 );
setMoveKey( spep_0 -3 + 53, 1, 136.3, -169.8 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 136.3, -186.8 , 0 );
setMoveKey( spep_0 -3 + 59, 1, 136.3, -186.8 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 136.3, -171.4 , 0 );
setMoveKey( spep_0 -3 + 63, 1, 136.3, -171.4 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 136.3, -182.2 , 0 );
setMoveKey( spep_0 -3 + 69, 1, 136.3, -182.2 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 136.3, -169.8 , 0 );
setMoveKey( spep_0 -3 + 75, 1, 136.3, -169.8 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 136.3, -183.7 , 0 );
setMoveKey( spep_0 -3 + 79, 1, 136.3, -183.7 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 136.3, -171.4 , 0 );
setMoveKey( spep_0 -3 + 83, 1, 136.3, -171.4 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 136.3, -183.7 , 0 );
setMoveKey( spep_0 -3 + 91, 1, 136.3, -183.7 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 136.3, -168.3 , 0 );
setMoveKey( spep_0 -3 + 95, 1, 136.3, -168.3 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 136.3, -182.2 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 136.3, -182.2 , 0 );
setMoveKey( spep_0 -3 + 99, 1, 136.3, -182.2 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 136.3, -162.2 , 0 );
setMoveKey( spep_0 -3 + 103, 1, 136.3, -162.2 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 133.3, -266.2 , 0 );
setMoveKey( spep_0 -3 + 105, 1, 133.3, -266.2 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 156.9, -274.6 , 0 );
setMoveKey( spep_0 -3 + 107, 1, 156.9, -274.6 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 123.5, -283 , 0 );
setMoveKey( spep_0 -3 + 109, 1, 123.5, -283 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 148, -291.5 , 0 );
setMoveKey( spep_0 -3 + 111, 1, 148, -291.5 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 128.4, -300 , 0 );
setMoveKey( spep_0 -3 + 113, 1, 128.4, -300 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 142, -308.5 , 0 );
setMoveKey( spep_0 -3 + 115, 1, 142, -308.5 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 141.8, -336.7 , 0 );
setMoveKey( spep_0 -3 + 117, 1, 141.8, -336.7 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 143.7, -330.3 , 0 );
setMoveKey( spep_0 -3 + 119, 1, 143.7, -330.3 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 131.7, -358.5 , 0 );
setMoveKey( spep_0 -3 + 121, 1, 131.7, -358.5 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 138.5, -357.2 , 0 );
setMoveKey( spep_0 -3 + 123, 1, 138.5, -357.2 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 131.5, -372.1 , 0 );
setMoveKey( spep_0 -3 + 125, 1, 131.5, -372.1 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 133.5, -382.1 , 0 );
setMoveKey( spep_0 -3 + 127, 1, 133.5, -382.1 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 137.5, -382.2 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 137.5, -382.3 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 137.5, -382.4 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 137.4, -382.4 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 137.4, -382.5 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 137.4, -382.6 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 137.4, -382.7 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 137.4, -382.8 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 137.4, -382.9 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 137.4, -383 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 137.4, -383.1 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 137.4, -383.1 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 137.4, -383.2 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 137.4, -383.3 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 137.4, -383.4 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 137.4, -383.5 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 137.4, -383.6 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 137.4, -383.7 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 137.4, -383.8 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 137.4, -383.9 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 137.4, -383.9 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 137.4, -384 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 137.4, -384.1 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 137.4, -384.2 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 137.4, -384.3 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 137.4, -384.4 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 137.4, -384.5 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 137.4, -384.6 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 137.4, -384.6 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 137.4, -384.7 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 137.4, -384.8 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 137.4, -384.9 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 137.4, -385 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 137.4, -385.1 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 137.4, -385.2 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 137.4, -385.3 , 0 );
setMoveKey( spep_0 -3 + 199, 1, 137.4, -385.3 , 0 );

setScaleKey( spep_0 + 0, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 1, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 2, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 3, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 4, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 5, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 6, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 103, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 104, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 105, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 106, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 107, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 108, 1, 0.69, 0.69 );
setScaleKey( spep_0 -3 + 109, 1, 0.69, 0.69 );
setScaleKey( spep_0 -3 + 110, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 111, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 112, 1, 0.73, 0.73 );
setScaleKey( spep_0 -3 + 113, 1, 0.73, 0.73 );
setScaleKey( spep_0 -3 + 114, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 115, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 116, 1, 0.77, 0.77 );
setScaleKey( spep_0 -3 + 117, 1, 0.77, 0.77 );
setScaleKey( spep_0 -3 + 118, 1, 0.79, 0.79 );
setScaleKey( spep_0 -3 + 119, 1, 0.79, 0.79 );
setScaleKey( spep_0 -3 + 120, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 121, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 122, 1, 0.83, 0.83 );
setScaleKey( spep_0 -3 + 199, 1, 0.83, 0.83 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 103, 1, 0 );
setRotateKey( spep_0 -3 + 104, 1, 18.3 );
setRotateKey( spep_0 -3 + 106, 1, 17.8 );
setRotateKey( spep_0 -3 + 108, 1, 17.3 );
setRotateKey( spep_0 -3 + 110, 1, 16.8 );
setRotateKey( spep_0 -3 + 112, 1, 16.2 );
setRotateKey( spep_0 -3 + 114, 1, 15.7 );
setRotateKey( spep_0 -3 + 116, 1, 15.2 );
setRotateKey( spep_0 -3 + 118, 1, 14.7 );
setRotateKey( spep_0 -3 + 120, 1, 14.2 );
setRotateKey( spep_0 -3 + 122, 1, 13.7 );
setRotateKey( spep_0 -3 + 140, 1, 13.7 );
setRotateKey( spep_0 -3 + 142, 1, 13.6 );
setRotateKey( spep_0 -3 + 199, 1, 13.6 );

-- ** 音 ** --
--巨大化する
SE001 = playSeVer2( spep_0 + 10, 1334, "",spep_0 + 156, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 10, SE001, 130 );         
SE002 = playSeVer2( spep_0 + 10, 1158, "",spep_0 + 156, 0, 32, -1);             
SE003 = playSeVer2( spep_0 + 14, 1320, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 71 );          
SE004 = playSeVer2( spep_0 + 14, 1144, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE004, 71 );
setPitch( spep_0 + 14, SE004, 400 );
setTimeStretch( SE004, 1.27, 30, 4 );

--巨大化する２
SE005 = playSeVer2( spep_0 + 46, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE005, 81 );
SE006 = playSeVer2( spep_0 + 46, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE006, 78 );
SE007 = playSeVer2( spep_0 + 46, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE007, 79 );

--咆哮
SE008 = playSeVer2( spep_0 + 114, 1067, "",spep_0 + 254, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 114, SE008, 86 );
SE009 = playSeVer2( spep_0 + 114, 1066, "",spep_0 + 254, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 114, SE009, 95 );
SE010 = playSeVer2( spep_0 + 114, 1321, "",spep_0 + 254, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 114, SE010, 87 );

--画面遷移
SE011 = playSeVer2( spep_0 + 178, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 196, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 196;


--------------------------------------
-- 口上から構えて初撃、2発目充填(664F)
--------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
charge_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --口上から構えて初撃、2発目充填    ef_002
setEffMoveKey( spep_1 + 0, charge_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 662, charge_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, charge_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 662, charge_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, charge_f, 0 );
setEffRotateKey( spep_1 + 662, charge_f, 0 );
setEffAlphaKey( spep_1 + 0, charge_f, 255 );
setEffAlphaKey( spep_1 + 662 -2, charge_f, 255 );
setEffAlphaKey( spep_1 + 662 -1, charge_f, 255 );
setEffAlphaKey( spep_1 + 662, charge_f, 0 );

charge_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --口上から構えて初撃、2発目充填    ef_002_b
setEffMoveKey( spep_1 + 0, charge_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 662, charge_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, charge_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 662, charge_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, charge_b, 0 );
setEffRotateKey( spep_1 + 662, charge_b, 0 );
setEffAlphaKey( spep_1 + 0, charge_b, 255 );
setEffAlphaKey( spep_1 + 662 -2, charge_b, 255 );
setEffAlphaKey( spep_1 + 662 -1, charge_b, 255 );
setEffAlphaKey( spep_1 + 662, charge_b, 0 );

spep_x = spep_1 + 60;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
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

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 150, 1, 1 );
setDisp( spep_1 -3 + 270, 1, 0 );
setDisp( spep_1 -3 + 420, 1, 1 );

changeAnime( spep_1 -3 + 150, 1, 118 );

setMoveKey( spep_1 -3 + 150, 1, 195, -360.7 , 0 );
setMoveKey( spep_1 -3 + 419, 1, 195, -360.7 , 0 );
setMoveKey( spep_1 -3 + 420, 1, 195, -391.7 , 0 );

setScaleKey( spep_1 -3 + 150, 1, 0.55, 0.55 );
setScaleKey( spep_1 -3 + 420, 1, 0.55, 0.55 );

setRotateKey( spep_1 -3 + 150, 1, 0 );
setRotateKey( spep_1 -3 + 420, 1, 0 );

-- ** 音 ** --
--顔カットイン
SE012 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE013 = playSeVer2( spep_1 + 146, 1153, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_1 + 146, SE013, 86 );
SE014 = playSeVer2( spep_1 + 146, 1004, "", 0, 0, 0, -1);

--手クロスする
SE015 = playSeVer2( spep_1 + 204, 1116, "",spep_1 + 244, 0, 14, -1);
SE016 = playSeVer2( spep_1 + 210, 1182, "",spep_1 + 254, 10, 10, -1);
setStartTimeMs( SE016,  100 );

--拳光る
SE017 = playSeVer2( spep_1 + 264, 1356, "",spep_1 + 494, 10, 20, -1);
setStartTimeMs( SE017,  450 );

--手クロスする
SE018 = playSeVer2( spep_1 + 238, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 238, 1190, "",spep_1 + 282, 22, 14, -1);
SE020 = playSeVer2( spep_1 + 240, 1007, "", 0, 0, 0, -1);

--拳光る
SE021 = playSeVer2( spep_1 + 258, 1345, "",spep_1 + 494, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 258, SE021, 141 );
setPitch( spep_1 + 258, SE021, 1100 );
setTimeStretch( SE021, 1.73, 30, 4 );
SE022 = playSeVer2( spep_1 + 258, 1305, "", 0, 0, 0, -1);
setPitch( spep_1 + 258, SE022, 1000 );
setTimeStretch( SE022, 1.67, 30, 4 );
SE023 = playSeVer2( spep_1 + 266, 1128, "",spep_1 + 404, 0, 34, 0.8);
setSeVolumeByWorkId( spep_1 + 266, SE023, 76 );

--光放つ
SE024 = playSeVer2( spep_1 + 336, 1336, "",spep_1 + 490, 0, 20, 0.5);
setPitch( spep_1 + 336, SE024, 1200 );
setTimeStretch( SE024, 1.8, 30, 4 );
SE025 = playSeVer2( spep_1 + 362, 1275, "", 0, 0, 0, 0.5);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 450 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE024, 0);
    stopSe( SP_dodge - 12, SE025, 0);

    setMoveKey( SP_dodge + 0, 1, 195, -391.7 , 0 );
    setMoveKey( SP_dodge + 10, 1, 195, -391.7 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.55, 0.55 );
    setScaleKey( SP_dodge + 10, 1, 0.55, 0.55 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
   
    pauseAll( SP_dodge, 67);  
    
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

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 532, 1, 0 );

changeAnime( spep_1 -3 + 523, 1, 106 );

setMoveKey( spep_1 -3 + 505, 1, 195, -391.7 , 0 );
setMoveKey( spep_1 -3 + 506, 1, 397.6, -3.6 , 0 );
setMoveKey( spep_1 -3 + 511, 1, 397.6, -3.6 , 0 );
setMoveKey( spep_1 -3 + 512, 1, 307.6, -3.6 , 0 );
setMoveKey( spep_1 -3 + 513, 1, 307.6, -3.6 , 0 );
setMoveKey( spep_1 -3 + 514, 1, 217.6, -3.6 , 0 );
setMoveKey( spep_1 -3 + 515, 1, 217.6, -3.6 , 0 );
setMoveKey( spep_1 -3 + 516, 1, 143.4, -3.6 , 0 );
setMoveKey( spep_1 -3 + 517, 1, 143.4, -3.6 , 0 );
setMoveKey( spep_1 -3 + 518, 1, 69.1, -3.6 , 0 );
setMoveKey( spep_1 -3 + 532, 1, 69.1, -3.6 , 0 );

setScaleKey( spep_1 -3 + 505, 1, 0.55, 0.55 );
setScaleKey( spep_1 -3 + 506, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 532, 1, 0.65, 0.65 );

setRotateKey( spep_1 -3 + 506, 1, 0 );
setRotateKey( spep_1 -3 + 532, 1, 0 );

-- ** 音 ** --
--アップでビーム溜める
SE026 = playSeVer2( spep_1 + 564, 1336, "",spep_1 + 680, 14, 20, -1);
setStartTimeMs( SE026,  2567 );
setPitch( spep_1 + 564, SE026, 1200 );
setTimeStretch( SE026, 1.8, 30, 4 );

--ビーム放つ
SE027 = playSeVer2( spep_1 + 470, 1201, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_1 + 470, 1179, "",spep_1 + 554, 0, 36, -1);
SE029 = playSeVer2( spep_1 + 470, 1127, "",spep_1 + 554, 0, 36, -1);
SE030 = playSeVer2( spep_1 + 470, 1145, "",spep_1 + 560, 0, 26, -1);
SE031 = playSeVer2( spep_1 + 474, 1155, "", 0, 0, 0, -1);

--敵ヒット
SE032 = playSeVer2( spep_1 + 514, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 514, SE032, 72 );
SE033 = playSeVer2( spep_1 + 518, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 518, SE033, 81 );
SE034 = playSeVer2( spep_1 + 518, 1159, "",spep_1 + 644, 0, 62, -1);
setSeVolumeByWorkId( spep_1 + 518, SE034, 75 );

--アップでビーム溜める
SE035 = playSeVer2( spep_1 + 568, 1356, "",spep_1 + 680, 10, 20, -1);
setStartTimeMs( SE035,  467 );      
SE036 = playSeVer2( spep_1 + 570, 1305, "",spep_1 + 680, 14, 20, -1);
setSeVolumeByWorkId( spep_1 + 570, SE036, 126 );
setStartTimeMs( SE036,  317 );
setPitch( spep_1 + 570, SE036, 900 );
setTimeStretch( SE036, 1.6, 30, 4 );
SE037 = playSeVer2( spep_1 + 572, 1345, "",spep_1 + 680, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 572, SE037, 146 );
setPitch( spep_1 + 572, SE037, 1200 );
setTimeStretch( SE037, 1.8, 30, 4 );
SE038 = playSeVer2( spep_1 + 572, 1128, "",spep_1 + 680, 0, 20, 0.6);
setSeVolumeByWorkId( spep_1 + 572, SE038, 59 );         

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 662, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 662;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_2 = 0;

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- とどめの追撃　遠景爆発(326F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
last = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --とどめの追撃　遠景爆発    ef_003
setEffMoveKey( spep_3 + 0, last, 0, 0 , 0 );
setEffMoveKey( spep_3 + 324, last, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, last, 1.0, 1.0 );
setEffScaleKey( spep_3 + 324, last, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, last, 0 );
setEffRotateKey( spep_3 + 324, last, 0 );
setEffAlphaKey( spep_3 + 0, last, 255 );
setEffAlphaKey( spep_3 + 324 , last, 255 );

-- ** 音 ** --
--発射前溜め
SE039 = playSeVer2( spep_3 + 0, 1336, "",spep_3 + 112, 12, 26, -1);
setStartTimeMs( SE039,  2567 );
setPitch( spep_3 + 0, SE039, 900 );
setTimeStretch( SE039, 1.6, 30, 4 );
SE041 = playSeVer2( spep_3 + 0, 1356, "",spep_3 + 112, 10, 18, -1);
setStartTimeMs( SE041,  450 );
setPitch( spep_3 + 0, SE041, 900 );
setTimeStretch( SE041, 1.6, 30, 4 );
SE042 = playSeVer2( spep_3 + 0, 1305, "",spep_3 + 112, 14, 20, -1);
setStartTimeMs( SE042,  333 );
setPitch( spep_3 + 0, SE042, 900 );
setTimeStretch( SE042, 1.6, 30, 4 );
SE043 = playSeVer2( spep_3 + 0, 1345, "",spep_3 + 112, 0, 20, -1);
setPitch( spep_3 + 0, SE043, 900 );
setTimeStretch( SE043, 1.6, 30, 4 );
SE044 = playSeVer2( spep_3 + 0, 1274, "", spep_3 + 76, 0, 10, 0.6);
SE045 = playSeVer2( spep_3 + 0, 1195, "",spep_3 + 52, 0, 20, 0.6);

--ビーム発射
SE046 = playSeVer2( spep_3 + 78, 1201, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_3 + 78, 1179, "",spep_3 + 160, 0, 34, -1);
setSeVolumeByWorkId( spep_3 + 78, SE047, 79 );
SE048 = playSeVer2( spep_3 + 78, 1127, "",spep_3 + 160, 0, 34, -1);
setSeVolumeByWorkId( spep_3 + 78, SE048, 79 );
SE049 = playSeVer2( spep_3 + 78, 1145, "",spep_3 + 166, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 78, SE049, 83 );
SE050 = playSeVer2( spep_3 + 82, 1155, "", 0, 0, 0, -1);

--爆発
SE051 = playSeVer2( spep_3 + 110, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 110, SE051, 81 );
SE052 = playSeVer2( spep_3 + 110, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 110, SE052, 89 );
SE053 = playSeVer2( spep_3 + 110, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 110, SE053, 88 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 324, 0, 0, 0, 0, 30);       -- ベース暗め　背景


-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 156 ); -- ダメージ表示フレーム
endPhase( spep_3 + 314 ); -- 終了フレーム

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕　巨大化＿キャラ(198F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --開幕　巨大化＿キャラ    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 196, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 196 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 196 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 196, first_f, 0 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --開幕　巨大化＿キャラ    ef_001_b
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 196, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 196 -2, first_b, 255 );
setEffAlphaKey( spep_0 + 196 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 196, first_b, 0 );

first_b2 = entryEffect( spep_0 + 0, SP_06r, 0x100, -1, 0, 0, 0 );  --開幕　巨大化＿キャラ    ef_001_drawtext_r
setEffMoveKey( spep_0 + 0, first_b2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, first_b2, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b2, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, first_b2, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b2, 0 );
setEffRotateKey( spep_0 + 196, first_b2, 0 );
setEffAlphaKey( spep_0 + 0, first_b2, 255 );
setEffAlphaKey( spep_0 + 196 -2, first_b2, 255 );
setEffAlphaKey( spep_0 + 196 -1, first_b2, 255 );
setEffAlphaKey( spep_0 + 196, first_b2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 199 , 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );
changeAnime( spep_0 -3 + 104, 1, 102 );

setMoveKey( spep_0 + 0, 1, 136.3, -180.7 , 0 );
setMoveKey( spep_0 + 1, 1, 136.3, -180.7 , 0 );
setMoveKey( spep_0 + 2, 1, 136.3, -180.7 , 0 );
setMoveKey( spep_0 + 3, 1, 136.3, -180.7 , 0 );
setMoveKey( spep_0 + 4, 1, 136.3, -180.7 , 0 );
setMoveKey( spep_0 + 5, 1, 136.3, -180.7 , 0 );
setMoveKey( spep_0 + 6, 1, 136.3, -180.7 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 136.3, -180.6 , 0 );
setMoveKey( spep_0 -3 + 45, 1, 136.3, -180.6 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 136.3, -196.1 , 0 );
setMoveKey( spep_0 -3 + 47, 1, 136.3, -196.1 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 136.3, -185.3 , 0 );
setMoveKey( spep_0 -3 + 49, 1, 136.3, -185.3 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 136.3, -169.8 , 0 );
setMoveKey( spep_0 -3 + 53, 1, 136.3, -169.8 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 136.3, -186.8 , 0 );
setMoveKey( spep_0 -3 + 59, 1, 136.3, -186.8 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 136.3, -171.4 , 0 );
setMoveKey( spep_0 -3 + 63, 1, 136.3, -171.4 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 136.3, -182.2 , 0 );
setMoveKey( spep_0 -3 + 69, 1, 136.3, -182.2 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 136.3, -169.8 , 0 );
setMoveKey( spep_0 -3 + 75, 1, 136.3, -169.8 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 136.3, -183.7 , 0 );
setMoveKey( spep_0 -3 + 79, 1, 136.3, -183.7 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 136.3, -171.4 , 0 );
setMoveKey( spep_0 -3 + 83, 1, 136.3, -171.4 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 136.3, -183.7 , 0 );
setMoveKey( spep_0 -3 + 91, 1, 136.3, -183.7 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 136.3, -168.3 , 0 );
setMoveKey( spep_0 -3 + 95, 1, 136.3, -168.3 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 136.3, -182.2 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 136.3, -182.2 , 0 );
setMoveKey( spep_0 -3 + 99, 1, 136.3, -182.2 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 136.3, -162.2 , 0 );
setMoveKey( spep_0 -3 + 103, 1, 136.3, -162.2 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 133.3, -266.2 , 0 );
setMoveKey( spep_0 -3 + 105, 1, 133.3, -266.2 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 156.9, -274.6 , 0 );
setMoveKey( spep_0 -3 + 107, 1, 156.9, -274.6 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 123.5, -283 , 0 );
setMoveKey( spep_0 -3 + 109, 1, 123.5, -283 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 148, -291.5 , 0 );
setMoveKey( spep_0 -3 + 111, 1, 148, -291.5 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 128.4, -300 , 0 );
setMoveKey( spep_0 -3 + 113, 1, 128.4, -300 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 142, -308.5 , 0 );
setMoveKey( spep_0 -3 + 115, 1, 142, -308.5 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 141.8, -336.7 , 0 );
setMoveKey( spep_0 -3 + 117, 1, 141.8, -336.7 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 143.7, -330.3 , 0 );
setMoveKey( spep_0 -3 + 119, 1, 143.7, -330.3 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 131.7, -358.5 , 0 );
setMoveKey( spep_0 -3 + 121, 1, 131.7, -358.5 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 138.5, -357.2 , 0 );
setMoveKey( spep_0 -3 + 123, 1, 138.5, -357.2 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 131.5, -372.1 , 0 );
setMoveKey( spep_0 -3 + 125, 1, 131.5, -372.1 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 133.5, -382.1 , 0 );
setMoveKey( spep_0 -3 + 127, 1, 133.5, -382.1 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 137.5, -382.2 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 137.5, -382.3 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 137.5, -382.4 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 137.4, -382.4 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 137.4, -382.5 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 137.4, -382.6 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 137.4, -382.7 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 137.4, -382.8 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 137.4, -382.9 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 137.4, -383 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 137.4, -383.1 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 137.4, -383.1 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 137.4, -383.2 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 137.4, -383.3 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 137.4, -383.4 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 137.4, -383.5 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 137.4, -383.6 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 137.4, -383.7 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 137.4, -383.8 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 137.4, -383.9 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 137.4, -383.9 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 137.4, -384 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 137.4, -384.1 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 137.4, -384.2 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 137.4, -384.3 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 137.4, -384.4 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 137.4, -384.5 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 137.4, -384.6 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 137.4, -384.6 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 137.4, -384.7 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 137.4, -384.8 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 137.4, -384.9 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 137.4, -385 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 137.4, -385.1 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 137.4, -385.2 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 137.4, -385.3 , 0 );
setMoveKey( spep_0 -3 + 199, 1, 137.4, -385.3 , 0 );

setScaleKey( spep_0 + 0, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 1, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 2, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 3, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 4, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 5, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 6, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 103, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 104, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 105, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 106, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 107, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 108, 1, 0.69, 0.69 );
setScaleKey( spep_0 -3 + 109, 1, 0.69, 0.69 );
setScaleKey( spep_0 -3 + 110, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 111, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 112, 1, 0.73, 0.73 );
setScaleKey( spep_0 -3 + 113, 1, 0.73, 0.73 );
setScaleKey( spep_0 -3 + 114, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 115, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 116, 1, 0.77, 0.77 );
setScaleKey( spep_0 -3 + 117, 1, 0.77, 0.77 );
setScaleKey( spep_0 -3 + 118, 1, 0.79, 0.79 );
setScaleKey( spep_0 -3 + 119, 1, 0.79, 0.79 );
setScaleKey( spep_0 -3 + 120, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 121, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 122, 1, 0.83, 0.83 );
setScaleKey( spep_0 -3 + 199, 1, 0.83, 0.83 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 103, 1, 0 );
setRotateKey( spep_0 -3 + 104, 1, 18.3 );
setRotateKey( spep_0 -3 + 106, 1, 17.8 );
setRotateKey( spep_0 -3 + 108, 1, 17.3 );
setRotateKey( spep_0 -3 + 110, 1, 16.8 );
setRotateKey( spep_0 -3 + 112, 1, 16.2 );
setRotateKey( spep_0 -3 + 114, 1, 15.7 );
setRotateKey( spep_0 -3 + 116, 1, 15.2 );
setRotateKey( spep_0 -3 + 118, 1, 14.7 );
setRotateKey( spep_0 -3 + 120, 1, 14.2 );
setRotateKey( spep_0 -3 + 122, 1, 13.7 );
setRotateKey( spep_0 -3 + 140, 1, 13.7 );
setRotateKey( spep_0 -3 + 142, 1, 13.6 );
setRotateKey( spep_0 -3 + 199, 1, 13.6 );

-- ** 音 ** --
--巨大化する
SE001 = playSeVer2( spep_0 + 10, 1334, "",spep_0 + 156, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 10, SE001, 130 );         
SE002 = playSeVer2( spep_0 + 10, 1158, "",spep_0 + 156, 0, 32, -1);             
SE003 = playSeVer2( spep_0 + 14, 1320, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 71 );          
SE004 = playSeVer2( spep_0 + 14, 1144, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE004, 71 );
setPitch( spep_0 + 14, SE004, 400 );
setTimeStretch( SE004, 1.27, 30, 4 );

--巨大化する２
SE005 = playSeVer2( spep_0 + 46, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE005, 81 );
SE006 = playSeVer2( spep_0 + 46, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE006, 78 );
SE007 = playSeVer2( spep_0 + 46, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE007, 79 );

--咆哮
SE008 = playSeVer2( spep_0 + 114, 1067, "",spep_0 + 254, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 114, SE008, 86 );
SE009 = playSeVer2( spep_0 + 114, 1066, "",spep_0 + 254, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 114, SE009, 95 );
SE010 = playSeVer2( spep_0 + 114, 1321, "",spep_0 + 254, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 114, SE010, 87 );

--画面遷移
SE011 = playSeVer2( spep_0 + 178, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 196, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 196;


--------------------------------------
-- 口上から構えて初撃、2発目充填(664F)
--------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
charge_f = entryEffect( spep_1 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --口上から構えて初撃、2発目充填    ef_002_r
setEffMoveKey( spep_1 + 0, charge_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 662, charge_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, charge_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 662, charge_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, charge_f, 0 );
setEffRotateKey( spep_1 + 662, charge_f, 0 );
setEffAlphaKey( spep_1 + 0, charge_f, 255 );
setEffAlphaKey( spep_1 + 662 -2, charge_f, 255 );
setEffAlphaKey( spep_1 + 662 -1, charge_f, 255 );
setEffAlphaKey( spep_1 + 662, charge_f, 0 );

charge_b = entryEffect( spep_1 + 0, SP_04r, 0x80, -1, 0, 0, 0 );  --口上から構えて初撃、2発目充填    ef_002_b_r
setEffMoveKey( spep_1 + 0, charge_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 662, charge_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, charge_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 662, charge_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, charge_b, 0 );
setEffRotateKey( spep_1 + 662, charge_b, 0 );
setEffAlphaKey( spep_1 + 0, charge_b, 255 );
setEffAlphaKey( spep_1 + 662 -2, charge_b, 255 );
setEffAlphaKey( spep_1 + 662 -1, charge_b, 255 );
setEffAlphaKey( spep_1 + 662, charge_b, 0 );

spep_x = spep_1 + 60;

-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
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

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 150, 1, 1 );
setDisp( spep_1 -3 + 270, 1, 0 );
setDisp( spep_1 -3 + 420, 1, 1 );

changeAnime( spep_1 -3 + 150, 1, 118 );

setMoveKey( spep_1 -3 + 150, 1, 195, -360.7 , 0 );
setMoveKey( spep_1 -3 + 419, 1, 195, -360.7 , 0 );
setMoveKey( spep_1 -3 + 420, 1, 195, -391.7 , 0 );

setScaleKey( spep_1 -3 + 150, 1, 0.55, 0.55 );
setScaleKey( spep_1 -3 + 420, 1, 0.55, 0.55 );

setRotateKey( spep_1 -3 + 150, 1, 0 );
setRotateKey( spep_1 -3 + 420, 1, 0 );

-- ** 音 ** --
--顔カットイン
SE012 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE013 = playSeVer2( spep_1 + 146, 1153, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_1 + 146, SE013, 86 );
SE014 = playSeVer2( spep_1 + 146, 1004, "", 0, 0, 0, -1);

--手クロスする
SE015 = playSeVer2( spep_1 + 204, 1116, "",spep_1 + 244, 0, 14, -1);
SE016 = playSeVer2( spep_1 + 210, 1182, "",spep_1 + 254, 10, 10, -1);
setStartTimeMs( SE016,  100 );

--拳光る
SE017 = playSeVer2( spep_1 + 264, 1356, "",spep_1 + 494, 10, 20, -1);
setStartTimeMs( SE017,  450 );

--手クロスする
SE018 = playSeVer2( spep_1 + 238, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 238, 1190, "",spep_1 + 282, 22, 14, -1);
SE020 = playSeVer2( spep_1 + 240, 1007, "", 0, 0, 0, -1);

--拳光る
SE021 = playSeVer2( spep_1 + 258, 1345, "",spep_1 + 494, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 258, SE021, 141 );
setPitch( spep_1 + 258, SE021, 1100 );
setTimeStretch( SE021, 1.73, 30, 4 );
SE022 = playSeVer2( spep_1 + 258, 1305, "", 0, 0, 0, -1);
setPitch( spep_1 + 258, SE022, 1000 );
setTimeStretch( SE022, 1.67, 30, 4 );
SE023 = playSeVer2( spep_1 + 266, 1128, "",spep_1 + 404, 0, 34, 0.8);
setSeVolumeByWorkId( spep_1 + 266, SE023, 76 );

--光放つ
SE024 = playSeVer2( spep_1 + 336, 1336, "",spep_1 + 490, 0, 20, 0.5);
setPitch( spep_1 + 336, SE024, 1200 );
setTimeStretch( SE024, 1.8, 30, 4 );
SE025 = playSeVer2( spep_1 + 362, 1275, "", 0, 0, 0, 0.5);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 450 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE024, 0);
    stopSe( SP_dodge - 12, SE025, 0);

    setMoveKey( SP_dodge + 0, 1, 195, -391.7 , 0 );
    setMoveKey( SP_dodge + 10, 1, 195, -391.7 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.55, 0.55 );
    setScaleKey( SP_dodge + 10, 1, 0.55, 0.55 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
   
    pauseAll( SP_dodge, 67);  
    
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

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 532, 1, 0 );

changeAnime( spep_1 -3 + 523, 1, 106 );

setMoveKey( spep_1 -3 + 505, 1, 195, -391.7 , 0 );
setMoveKey( spep_1 -3 + 506, 1, 397.6, -3.6 , 0 );
setMoveKey( spep_1 -3 + 511, 1, 397.6, -3.6 , 0 );
setMoveKey( spep_1 -3 + 512, 1, 307.6, -3.6 , 0 );
setMoveKey( spep_1 -3 + 513, 1, 307.6, -3.6 , 0 );
setMoveKey( spep_1 -3 + 514, 1, 217.6, -3.6 , 0 );
setMoveKey( spep_1 -3 + 515, 1, 217.6, -3.6 , 0 );
setMoveKey( spep_1 -3 + 516, 1, 143.4, -3.6 , 0 );
setMoveKey( spep_1 -3 + 517, 1, 143.4, -3.6 , 0 );
setMoveKey( spep_1 -3 + 518, 1, 69.1, -3.6 , 0 );
setMoveKey( spep_1 -3 + 532, 1, 69.1, -3.6 , 0 );

setScaleKey( spep_1 -3 + 505, 1, 0.55, 0.55 );
setScaleKey( spep_1 -3 + 506, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 532, 1, 0.65, 0.65 );

setRotateKey( spep_1 -3 + 506, 1, 0 );
setRotateKey( spep_1 -3 + 532, 1, 0 );

-- ** 音 ** --
--アップでビーム溜める
SE026 = playSeVer2( spep_1 + 564, 1336, "",spep_1 + 680, 14, 20, -1);
setStartTimeMs( SE026,  2567 );
setPitch( spep_1 + 564, SE026, 1200 );
setTimeStretch( SE026, 1.8, 30, 4 );

--ビーム放つ
SE027 = playSeVer2( spep_1 + 470, 1201, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_1 + 470, 1179, "",spep_1 + 554, 0, 36, -1);
SE029 = playSeVer2( spep_1 + 470, 1127, "",spep_1 + 554, 0, 36, -1);
SE030 = playSeVer2( spep_1 + 470, 1145, "",spep_1 + 560, 0, 26, -1);
SE031 = playSeVer2( spep_1 + 474, 1155, "", 0, 0, 0, -1);

--敵ヒット
SE032 = playSeVer2( spep_1 + 514, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 514, SE032, 72 );
SE033 = playSeVer2( spep_1 + 518, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 518, SE033, 81 );
SE034 = playSeVer2( spep_1 + 518, 1159, "",spep_1 + 644, 0, 62, -1);
setSeVolumeByWorkId( spep_1 + 518, SE034, 75 );

--アップでビーム溜める
SE035 = playSeVer2( spep_1 + 568, 1356, "",spep_1 + 680, 10, 20, -1);
setStartTimeMs( SE035,  467 );      
SE036 = playSeVer2( spep_1 + 570, 1305, "",spep_1 + 680, 14, 20, -1);
setSeVolumeByWorkId( spep_1 + 570, SE036, 126 );
setStartTimeMs( SE036,  317 );
setPitch( spep_1 + 570, SE036, 900 );
setTimeStretch( SE036, 1.6, 30, 4 );
SE037 = playSeVer2( spep_1 + 572, 1345, "",spep_1 + 680, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 572, SE037, 146 );
setPitch( spep_1 + 572, SE037, 1200 );
setTimeStretch( SE037, 1.8, 30, 4 );
SE038 = playSeVer2( spep_1 + 572, 1128, "",spep_1 + 680, 0, 20, 0.6);
setSeVolumeByWorkId( spep_1 + 572, SE038, 59 );         

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 662, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 662;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_2 = 0;

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- とどめの追撃　遠景爆発(326F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
last = entryEffect( spep_3 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --とどめの追撃　遠景爆発    ef_003_r
setEffMoveKey( spep_3 + 0, last, 0, 0 , 0 );
setEffMoveKey( spep_3 + 324, last, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, last, 1.0, 1.0 );
setEffScaleKey( spep_3 + 324, last, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, last, 0 );
setEffRotateKey( spep_3 + 324, last, 0 );
setEffAlphaKey( spep_3 + 0, last, 255 );
setEffAlphaKey( spep_3 + 324 , last, 255 );

-- ** 音 ** --
--発射前溜め
SE039 = playSeVer2( spep_3 + 0, 1336, "",spep_3 + 112, 12, 26, -1);
setStartTimeMs( SE039,  2567 );
setPitch( spep_3 + 0, SE039, 900 );
setTimeStretch( SE039, 1.6, 30, 4 );
SE041 = playSeVer2( spep_3 + 0, 1356, "",spep_3 + 112, 10, 18, -1);
setStartTimeMs( SE041,  450 );
setPitch( spep_3 + 0, SE041, 900 );
setTimeStretch( SE041, 1.6, 30, 4 );
SE042 = playSeVer2( spep_3 + 0, 1305, "",spep_3 + 112, 14, 20, -1);
setStartTimeMs( SE042,  333 );
setPitch( spep_3 + 0, SE042, 900 );
setTimeStretch( SE042, 1.6, 30, 4 );
SE043 = playSeVer2( spep_3 + 0, 1345, "",spep_3 + 112, 0, 20, -1);
setPitch( spep_3 + 0, SE043, 900 );
setTimeStretch( SE043, 1.6, 30, 4 );
SE044 = playSeVer2( spep_3 + 0, 1274, "", spep_3 + 76, 0, 10, 0.6);
SE045 = playSeVer2( spep_3 + 0, 1195, "",spep_3 + 52, 0, 20, 0.6);

--ビーム発射
SE046 = playSeVer2( spep_3 + 78, 1201, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_3 + 78, 1179, "",spep_3 + 160, 0, 34, -1);
setSeVolumeByWorkId( spep_3 + 78, SE047, 79 );
SE048 = playSeVer2( spep_3 + 78, 1127, "",spep_3 + 160, 0, 34, -1);
setSeVolumeByWorkId( spep_3 + 78, SE048, 79 );
SE049 = playSeVer2( spep_3 + 78, 1145, "",spep_3 + 166, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 78, SE049, 83 );
SE050 = playSeVer2( spep_3 + 82, 1155, "", 0, 0, 0, -1);

--爆発
SE051 = playSeVer2( spep_3 + 110, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 110, SE051, 81 );
SE052 = playSeVer2( spep_3 + 110, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 110, SE052, 89 );
SE053 = playSeVer2( spep_3 + 110, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 110, SE053, 88 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 324, 0, 0, 0, 0, 30);       -- ベース暗め　背景


-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 156 ); -- ダメージ表示フレーム
endPhase( spep_3 + 314 ); -- 終了フレーム

end