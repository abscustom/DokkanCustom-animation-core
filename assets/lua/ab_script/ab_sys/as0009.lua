--1023490:魔人ブウ(純粋)_格闘無効
--sp_effect_b4_00210

setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

print("_SPECIAL_ENERGY_COLOR_");
print(_SPECIAL_ENERGY_COLOR_);

SP_01 = 158812; --攻撃を受ける    ef_001
SP_02 = 158813; --攻撃を受ける    ef_001_back
SP_03 = 158816; --受け身を取る    ef_002

-- ズーム許可
setEnvZoomEnable(0, 0);
setVisibleUI(0, 0);
removeAllEffect(2);--必要

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

-- ** 冒頭に白フェードを出す ** --
entryFade(4, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fadeシーン切り替わり予定

------------------------------------------------------
-- 攻撃を受ける
------------------------------------------------------
flipAttackerSide(0)

spep_1 = 4;

-- ** エフェクト等 ** --
receive_f = entryEffect( spep_1 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, receive_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 94, receive_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, receive_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 94, receive_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, receive_f, 0 );
setEffRotateKey( spep_1 + 94, receive_f, 0 );
setEffAlphaKey( spep_1 + 0, receive_f, 255 );
setEffAlphaKey( spep_1 + 94, receive_f, 255 );

receive_b = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, receive_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 94, receive_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, receive_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 94, receive_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, receive_b, 0 );
setEffRotateKey( spep_1 + 94, receive_b, 0 );
setEffAlphaKey( spep_1 + 0, receive_b, 255 );
setEffAlphaKey( spep_1 + 94, receive_b, 255 );

-- ** 敵キャラクター ** --
--[[setDisp( spep_1 -3 + 20, 1, 1 );
setDisp( spep_1 -3 + 24, 1, 0 );
changeAnime( spep_1 -3 + 20, 1, 109 );

a1 = 200;
b1 = 20;
setMoveKey( spep_1 -3 + 20, 1, 1754.1 - a1, -90.7 + b1, 0 );
setMoveKey( spep_1 -3 + 21, 1, 1754.1 - a1, -90.7 + b1, 0 );
setMoveKey( spep_1 -3 + 22, 1, 1083.1 - a1, -21.2 + b1, 0 );
setMoveKey( spep_1 -3 + 24, 1, 1083.1 - a1, -21.2 + b1, 0 );

setScaleKey( spep_1 -3 + 20, 1, 10.536, 10.536 );
setScaleKey( spep_1 -3 + 21, 1, 10.536, 10.536 );
setScaleKey( spep_1 -3 + 22, 1, 7.68, 7.68 );
setScaleKey( spep_1 -3 + 24, 1, 7.68, 7.68 );

setRotateKey( spep_1 -3 + 20, 1, -25.8 );
setRotateKey( spep_1 -3 + 24, 1, -25.8 );
]]

setDisp( spep_1 -3 + 20, 0, 1 );
setDisp( spep_1 -3 + 24, 0, 0 );
changeAnime( spep_1 -3 + 20, 0, 109 );

a1 = 200;
b1 = 20;
setMoveKey( spep_1 -3 + 20, 0, 1754.1 - a1, -90.7 + b1, 0 );
setMoveKey( spep_1 -3 + 21, 0, 1754.1 - a1, -90.7 + b1, 0 );
setMoveKey( spep_1 -3 + 22, 0, 1083.1 - a1, -21.2 + b1, 0 );
setMoveKey( spep_1 -3 + 24, 0, 1083.1 - a1, -21.2 + b1, 0 );

setScaleKey( spep_1 -3 + 20, 0, 10.536, 10.536 );
setScaleKey( spep_1 -3 + 21, 0, 10.536, 10.536 );
setScaleKey( spep_1 -3 + 22, 0, 7.68, 7.68 );
setScaleKey( spep_1 -3 + 24, 0, 7.68, 7.68 );

setRotateKey( spep_1 -3 + 20, 0, -25.8 );
setRotateKey( spep_1 -3 + 24, 0, -25.8 );

--SE
--入り
SE001 = playSeVer2( spep_1 + 0, 1232, "", 0, 0, 0, 0.6);

--気弾ヒット
SE002 = playSeVer2( spep_1 + 18, 1017, "", 0, 0, 0, -1);

--[[SE003 = playSeVer2( spep_1 + 18, 1145, "",spep_1 + 70, 0, 8, -1);]]
SE003 = playSeVer2( spep_1 + 18, 1145, "", 0, 0, 0, -1);--
stopSe( spep_1 + 62, SE003, 8 );--

--吹っ飛ぶ
SE004 = playSeVer2( spep_1 + 62, 1002, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 62, 1027, "", 0, 0, 0, -1);

--[[SE006 = playSeVer2( spep_1 + 62, 1183, "",spep_1 +94 + 58, 0, 14, -1);]]
SE006 = playSeVer2( spep_1 + 62, 1183, "", 0, 0, 0, -1);--
stopSe( spep_1 +94 + 44, SE006, 14 );--

SE007 = playSeVer2( spep_1 + 66, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 66, SE007, 61 );

-- ** 背景 ** --
entryFadeBg( spep_1+0, 0, 98, 0, 0, 0, 0, 120);       --ベース暗め　背景

spep_2 =spep_1 + 94;

------------------------------------------------------
-- 受け身を取る
------------------------------------------------------
--spep_2 = 4;
-- ** エフェクト等 ** --
ukemi = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, ukemi, 0, 0, 0 );
setEffMoveKey( spep_2 + 196, ukemi, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, ukemi, 1.0, 1.0 );
setEffScaleKey( spep_2 + 196, ukemi, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ukemi, 0 );
setEffRotateKey( spep_2 + 196, ukemi, 0 );
setEffAlphaKey( spep_2 + 0, ukemi, 255 );
setEffAlphaKey( spep_2 + 196, ukemi, 255 );

--SE
--膨らむ
SE008 = playSeVer2( spep_2 + 36, 1313, "", 0, 4, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 36, SE008, 79 );
setStartTimeMs( SE008,  200 );
setPitch( spep_2 + 36, SE008, -500 );
setTimeStretch( SE008, 0.67, 30, 4 );
setBandpassFilter( spep_2 + 36, SE008, 24, 700 );

SE009 = playSeVer2( spep_2 + 36, 1291, "", 0, 0, 0, -1);--
setSeVolumeByWorkId( spep_2 + 36, SE009, 122 );--
stopSe( spep_2 + 68, SE009, 14 );--
SE010 = playSeVer2( spep_2 + 36, 1153, "", 0, 0, 0, -1);--
setSeVolumeByWorkId( spep_2 + 36, SE010, 77 );--
stopSe( spep_2 + 46, SE010, 10 );--
SE011 = playSeVer2( spep_2 + 36, 1312, "", 0, 0, 0, 0.6);--
setSeVolumeByWorkId( spep_2 + 36, SE011, 87 );--
stopSe( spep_2 + 52, SE011, 14 );--

SE012 = playSeVer2( spep_2 + 36, 1338, "", 0, 0, 0, -1);

--飛ぶ
SE013 = playSeVer2( spep_2 + 56, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE013, 30 );

--風が吹く
SE014 = playSeVer2( spep_2 + 80, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE014, 75 );
SE015 = playSeVer2( spep_2 + 112, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE015, 47 );

--飛ぶ
SE016 = playSeVer2( spep_2 + 120, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE016, 30 );

-- ダメージ表示
dealDamage(spep_2 + 34);

-- ** 背景 ** --
entryFadeBg( spep_2+0, 0, 200, 0, 0, 0, 0, 120);       --ベース暗め　背景

endPhase(spep_2 + 186);