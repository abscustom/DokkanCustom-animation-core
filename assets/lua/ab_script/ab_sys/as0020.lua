--4026910:超サイヤ人4孫悟空&スーパーウーブ_格闘無効
--sp_effect_b4_00288
--as0020

setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

print("_SPECIAL_ENERGY_COLOR_");
print(_SPECIAL_ENERGY_COLOR_);

SP_01 = 161968; --攻撃を受ける    ef_001

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

ENABLE_AUTO_TIME_STRETCH(0.9);

------------------------------------------------------
-- 攻撃を受ける
------------------------------------------------------
flipAttackerSide(0)

spep_1 = 4;

-- ** エフェクト等 ** --
receive = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, receive, 0, 0, 0 );
setEffMoveKey( spep_1 + 298, receive, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, receive, 1.0, 1.0 );
setEffScaleKey( spep_1 + 298, receive, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, receive, 0 );
setEffRotateKey( spep_1 + 298, receive, 0 );
setEffAlphaKey( spep_1 + 0, receive, 255 );
setEffAlphaKey( spep_1 + 298, receive, 255 );

--SE
--バリア音
SE001 = playSeVer2( spep_1 + 0, 1295, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE001, 100 );
setPitch( spep_1 + 0, SE001, 1200 );
setTimeStretch( SE001, 1.8, 30, 4 );
SE002 = playSeVer2( spep_1 + 0, 1362, "",spep_1 + 254, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 0, SE002, 100 );
setPitch( spep_1 + 0, SE002, -100 );
setTimeStretch( SE002, 0.93, 30, 4 );
SE003 = playSeVer2( spep_1 + 0, 1313, "",spep_1 + 54, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 0, SE003, 100 );

--相手連続打撃
SE004 = playSeVer2( spep_1 + 20, 1008, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 20, 1110, "", spep_1 + 20 +40, 0, 20, -1);
setBandpassFilter( spep_1 + 20, SE005, 24, 3580 );
SE006 = playSeVer2( spep_1 + 54, 1011, "", spep_1 + 136, 0, 20, -1);
SE007 = playSeVer2( spep_1 + 54, 1110, "", spep_1 + 54 +40, 0, 20, -1);
setBandpassFilter( spep_1 + 54, SE007, 24, 3580 );
SE008 = playSeVer2( spep_1 + 74, 1017, "", spep_1 + 136, 0, 20, -1);
SE009 = playSeVer2( spep_1 + 74, 1110, "", spep_1 + 74 +40, 0, 20, -1);
setBandpassFilter( spep_1 + 74, SE009, 24, 3580 );
SE010 = playSeVer2( spep_1 + 90, 1110, "", spep_1 + 90 +40, 0, 20, -1);
setBandpassFilter( spep_1 + 90, SE010, 24, 3580 );
SE011 = playSeVer2( spep_1 + 114, 1011, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_1 + 114, SE011 );
SE012 = playSeVer2( spep_1 + 114, 1110, "", spep_1 + 114 +40, 0, 20, -1);
setBandpassFilter( spep_1 + 114, SE012, 24, 3580 );

--画面アップ
SE013 = playSeVer2( spep_1 + 122, 1072, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 122, SE013, 148 );

--相手連続打撃
SE014 = playSeVer2( spep_1 + 136, 1110, "", spep_1 + 136 +40, 0, 20, -1);
setBandpassFilter( spep_1 + 136, SE014, 24, 3580 );

--画面アップ
SE015 = playSeVer2( spep_1 + 142, 1116, "",spep_1 + 188, 0, 26, 0.5);
setSeVolumeByWorkId( spep_1 + 142, SE015, 168 );

--バリア音
SE016 = playSeVer2( spep_1 + 148, 1295, "",spep_1 + 254, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 148, SE016, 79 );
setPitch( spep_1 + 148, SE016, 1200 );
setTimeStretch( SE016, 1.8, 30, 4 );

--相手連続打撃
SE017 = playSeVer2( spep_1 + 162, 1110, "", spep_1 + 162 +40, 0, 20, -1);
setBandpassFilter( spep_1 + 162, SE017, 24, 3580 );
SE018 = playSeVer2( spep_1 + 188, 1008, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 188, 1110, "", spep_1 + 188 +40, 0, 20, -1);
setBandpassFilter( spep_1 + 188, SE019, 24, 3580 );
SE020 = playSeVer2( spep_1 + 208, 1110, "", spep_1 + 208 +40, 0, 20, -1);
setBandpassFilter( spep_1 + 208, SE020, 24, 3580 );

--弾く予兆
SE021 = playSeVer2( spep_1 + 220, 1056, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 228, 1004, "", 0, 0, 0, -1);

--相手連続打撃
SE023 = playSeVer2( spep_1 + 230, 1017, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 230, 1110, "", spep_1 + 230 +40, 0, 20, -1);
setBandpassFilter( spep_1 + 230, SE024, 24, 3580 );

--弾く
SE025 = playSeVer2( spep_1 + 238, 1126, "",spep_1 + 320, 0, 40, -1);
setSeVolumeByWorkId( spep_1 + 238, SE025, 80 );

--相手連続打撃
SE026 = playSeVer2( spep_1 + 248, 1110, "", spep_1 + 248 +40, 0, 20, -1);
setBandpassFilter( spep_1 + 248, SE026, 24, 3580 );

--弾く
SE027 = playSeVer2( spep_1 + 246, 1114, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_1 + 246, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 246, SE028, 83 );
SE029 = playSeVer2( spep_1 + 246, 1027, "", 0, 0, 0, -1);

dealDamage( spep_1 + 198 );
endPhase(spep_1 + 298);