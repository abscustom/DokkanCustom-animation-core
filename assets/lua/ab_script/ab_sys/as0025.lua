-- 1027620: UR_超サイヤ人3孫悟空_格闘系無効
-- sp_effect_b4_00311
-- as0025

setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

print("_SPECIAL_ENERGY_COLOR_");
print(_SPECIAL_ENERGY_COLOR_);

SP_01 = 162492; -- 打撃を食らう～俯瞰構造の悟空3  ef_001

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

-----------------------------------------------------
-- 攻撃を受ける
------------------------------------------------------
flipAttackerSide(0)

spep_1 = 4;
MAX_FRAME_0 = 560;

-- ** エフェクト等 ** --
receive = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, receive, 0, 0, 0 );
setEffMoveKey( spep_1  + MAX_FRAME_0, receive, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, receive, 1.0, 1.0 );
setEffScaleKey( spep_1 + MAX_FRAME_0, receive, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, receive, 0 );
setEffRotateKey( spep_1 + MAX_FRAME_0, receive, 0 );
setEffAlphaKey( spep_1 + 0, receive, 255 );
setEffAlphaKey( spep_1 + MAX_FRAME_0, receive, 255 );

--SE
--飛行音
SE001 = playSeVer2( spep_1 + 0, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE001, 72 );
SE006 = playSeVer2( spep_1 + 58, 1019, "",spep_1 + 116, 0, 36, -1);
setSeVolumeByWorkId( spep_1 + 58, SE006, 72 );

--環境音
SE002 = playSeVer2( spep_1 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE002, 25 );

--相手打撃
SE003 = playSeVer2( spep_1 + 42, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 42, SE003, 71 );
SE004 = playSeVer2( spep_1 + 48, 1187, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 48, 1009, "", 0, 0, 0, -1);

--画面遷移
SE007 = playSeVer2( spep_1 + 72, 8, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_1 + 72, SE007, 60 );

--髪なびく
SE008 = playSeVer2( spep_1 + 88, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE008, 61 );

--セリフカットイン
SE009 = playSeVer2( spep_1 + 166, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 166, SE009, 63 );

--空力音
SE010 = playSeVer2( spep_1 + 280, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 280, SE010, 28 );

--構え直す
SE011 = playSeVer2( spep_1 + 284, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 284, SE011, 67 );
SE012 = playSeVer2( spep_1 + 284, 63, "",spep_1 + 348, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 284, SE012, 72 );
SE013 = playSeVer2( spep_1 + 312, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 312, SE013, 65 );
SE014 = playSeVer2( spep_1 + 320, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 320, SE014, 65 );

--髪なびく
SE015 = playSeVer2( spep_1 + 338, 1333, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 338, SE015, 72 );
SE016 = playSeVer2( spep_1 + 376, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 376, SE016, 75 );
SE017 = playSeVer2( spep_1 + 414, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 414, SE017, 53 );
SE018 = playSeVer2( spep_1 + 470, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 470, SE018, 33 );	
setPitch( spep_1 + 470, SE018, -300 );
setTimeStretch( SE018, 1.0, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

dealDamage( spep_1 + 376 );
endPhase( spep_1 + MAX_FRAME_0 - 2);  --560