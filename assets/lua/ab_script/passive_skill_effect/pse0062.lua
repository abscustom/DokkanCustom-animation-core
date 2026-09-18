--1029570:UR_ベジータ_登場時演出
--battle_301301
--pse0062

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3240;  --登場時演出ef_001

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

ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

------------------------------------------------------
-- 登場時演出
------------------------------------------------------
MAX_FRAME_0 = 728;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 86, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE002, 63 );

--フレームイン
SE003 = playSeVer2( spep_0 + 210, 8, "", 0, 0, 0, -1);

--拳握る
SE004 = playSeVer2( spep_0 + 258, 1348, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 262, 1344, "",spep_0 + 342, 0, 30, -1);

--画面遷移
SE006 = playSeVer2( spep_0 + 326, 44, "", 0, 0, 0, -1);

--足開く
SE007 = playSeVer2( spep_0 + 386, 1347, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 386, 1301, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE008, 168 );
SE009 = playSeVer2( spep_0 + 392, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 392, SE009, 168 );

--気を高める
SE010 = playSeVer2( spep_0 + 502, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 502, SE010, 40 );
SE011 = playSeVer2( spep_0 + 510, 1214, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 510, SE011, 170 );
SE012 = playSeVer2( spep_0 + 510, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 510, SE012, 168 );
SE013 = playSeVer2( spep_0 + 510, 1449, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 510, SE013, 68 );

--力こめる
SE014 = playSeVer2( spep_0 + 622, 1330, "", 0, 0, 0, -1);

--ラスト決め
SE015 = playSeVer2( spep_0 + 622, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 622, SE015, 77 );
SE016 = playSeVer2( spep_0 + 622, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 622, SE016, 60 );

-- ** ボイス ** --

--「くっくっく……じゃあ、いいものをみせてやろう……」
playVoice( spep_0 + 4, 845 );
setVoiceVolume( spep_0 + 4, 845, 100 );

--「このオレが地球に行ったとき、やつらから、おもしろいことを学んだ……」
playVoice( spep_0 + 222, 846 );
setVoiceVolume( spep_0 + 222, 846, 100 );

--「戦闘力のコントロールだ！！！！」
playVoice( spep_0 + 490, 847 );
setVoiceVolume( spep_0 + 490, 847, 120 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --728f

else end
