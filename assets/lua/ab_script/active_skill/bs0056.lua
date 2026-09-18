-- 1031500:LR_超一星龍_アクティブフィールド展開：崩壊のマイナスエネルギー
-- battle_301329
-- bs0056

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3275; -- アクティブフィールド展開 ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- アクティブフィールド展開
-------------------------------------------------

MAX_FRAME_0 = 1224;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
base = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- アクティブフィールド展開(ef_001)
setEffMoveKey( spep_0 + 0, base, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base, 0);
setEffAlphaKey( spep_0 + 0, base, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--おりてくる
SE002 = playSeVer2( spep_0 + 38, 63, "",spep_0 + 108, 0, 14, -1);
SE003 = playSeVer2( spep_0 + 38, 1508, "",spep_0 + 104, 0, 8, -1);
SE005 = playSeVer2( spep_0 + 88, 1472, "", 0, 0, 0, -1);

--オーラ湧き出る
SE004 = playSeVer2( spep_0 + 74, 1266, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 96, 1263, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE006, 77 );
setPitch( spep_0 + 96, SE006, -1200 );
setTimeStretch( SE006, 0.2, 30, 4 );
SE007 = playSeVer2( spep_0 + 96, 1397, "",spep_0 + 534, 0, 172, -1);

--暗雲立ち込める
SE008 = playSeVer2( spep_0 + 276, 1391, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE008, 84 );
SE009 = playSeVer2( spep_0 + 276, 1214, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 282, 1118, "", 0, 0, 0, -1);
setPitch( spep_0 + 282, SE010, -1200 );
setTimeStretch( SE010, 0.2, 30, 4 );
SE013 = playSeVer2( spep_0 + 424, 1457, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE013, 63 );

--環境音
SE011 = playSeVer2( spep_0 + 340, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE011, 25 );

--セリフカットイン
SE012 = playSeVer2( spep_0 + 352, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE012, 63 );

--爆発
SE014 = playSeVer2( spep_0 + 670, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 670, SE014, 51 );
SE018 = playSeVer2( spep_0 + 734, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 734, SE018, 66 );

--雷
SE015 = playSeVer2( spep_0 + 686, 1230, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 686, 1231, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 864, 1231, "", 0, 0, 0, -1);

--地響き
SE017 = playSeVer2( spep_0 + 716, 1226, "",spep_0 + 958, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 716, SE017, 40 );

--炎
SE019 = playSeVer2( spep_0 + 814, 1268, "",spep_0 + 956, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 814, SE019, 178 );

--空気音
SE021 = playSeVer2( spep_0 + 866, 1266, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 866, SE021, 65 );
SE022 = playSeVer2( spep_0 + 920, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 920, SE022, 32 );

--画面遷移
SE023 = playSeVer2( spep_0 + 920, 8, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「今度こそマイナスエネルギーが地球全体を覆いつくし地球は崩壊する」
playVoice( spep_0 + 346, 1046 );
setVoiceVolume( spep_0 + 346, 1046, 142 );

--「ハハハ！こんな星消えてなくなってしまえ！」
playVoice( spep_0 + 926, 1047 );
setVoiceVolume( spep_0 + 926, 1047, 142 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 1224f

else end