--1027580:LR_ピラフ&シュウ&マイ_超必殺技：ピラフマシン総攻撃
--sp_effect_a9_00115
--sp2626

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162348;	--登場台詞カットイン→合体
SP_02 = 162350;		--ef_002 敵より前　白フェード、書き文字こみ　ef_003と同時表示
SP_02b = 162352;	--ef_003 敵より後ろ　背景、キャラ　ef_002と同時表示

--エフェクト(てき)
SP_01r = 162349;	--敵側　登場台詞カットイン→合体
SP_02r = 162351;	--敵側　ef_002r 敵より前　白フェード、書き文字こみ　ef_003rと同時表示
SP_02br = 162353;	--敵側　ef_003r 敵より後ろ　背景、キャラ　ef_002rと同時表示


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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～カードまで
-------------------------------------------------

MAX_FRAME_0 = 438;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------

spep_x = spep_0 + 42;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -30, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -30, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 白フェード ** --
entryFade( spep_0 + 120, 6, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 328, 0, 206, 0.65);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--画面遷移
SE004 = playSeVer2( spep_0 + 80, 1072, "", 0, 0, 0, 0.65);
--飛んでる音
SE005 = playSeVer2( spep_0 + 122, 1019, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 122, 1268, "",spep_0 + 358, 0, 24, -1);
--ピラフ腕しまう
SE007 = playSeVer2( spep_0 + 154, 1150, "", 0, 0, 0, 0.6);
setPitch( spep_0 + 154, SE007, -800 );
setTimeStretch( SE007, 0.47, 30, 4 );
SE008 = playSeVer2( spep_0 + 154, 1295, "",spep_0 + 204, 0, 9, -1);
setSeVolumeByWorkId( spep_0 + 154, SE008, 126 );
setPitch( spep_0 + 154, SE008, -600 );
setTimeStretch( SE008, 0.6, 30, 4 );
SE009 = playSeVer2( spep_0 + 154, 1313, "",spep_0 + 204, 0, 9, -1);
setSeVolumeByWorkId( spep_0 + 154, SE009, 77 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 170; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);

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

--ピラフ腕しまう
SE010 = playSeVer2( spep_0 + 178, 1151, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 178, 1387, "", 0, 0, 0, -1);
setPitch( spep_0 + 188, SE011, -1200 );
setTimeStretch( SE011, 0.2, 30, 4 );
--飛んでる音
SE012 = playSeVer2( spep_0 + 188, 1019, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 252, 1019, "", 0, 0, 0, -1);
--マイ足しまう
SE013 = playSeVer2( spep_0 + 254, 1150, "", 0, 0, 0, 0.6);
setPitch( spep_0 + 264, SE013, -800 );
setTimeStretch( SE013, 0.47, 30, 4 );
SE014 = playSeVer2( spep_0 + 254, 1313, "",spep_0 + 309, 0, 9, -1);
setSeVolumeByWorkId( spep_0 + 254, SE014, 86 );
SE015 = playSeVer2( spep_0 + 254, 1295, "",spep_0 + 309, 0, 9, -1);
setPitch( spep_0 + 264, SE015, -600 );
setTimeStretch( SE015, 0.6, 30, 4 );
SE017 = playSeVer2( spep_0 + 276, 1151, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 276, 1387, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE018, 88 );
setPitch( spep_0 + 276, SE018, -1200 );
setTimeStretch( SE018, 0.2, 30, 4 );
--飛んでる音
SE019 = playSeVer2( spep_0 + 306, 1019, "",spep_0 + 376, 0, 10, -1);
--降ってくる
SE020 = playSeVer2( spep_0 + 306, 63, "",spep_0 + 388, 0, 14, -1);
--胴体合体
SE021 = playSeVer2( spep_0 + 354, 1438, "",spep_0 + 410, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 354, SE021, 316 );
SE022 = playSeVer2( spep_0 + 354, 1127, "",spep_0 + 410, 14, 12, -1);
setSeVolumeByWorkId( spep_0 + 354, SE022, 42 );
SE023 = playSeVer2( spep_0 + 354, 1059, "",spep_0 + 414, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 354, SE023, 76 );
--頭合体
SE024 = playSeVer2( spep_0 + 392, 1438, "",spep_0 + 468, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 392, SE024, 316 );
SE025 = playSeVer2( spep_0 + 392, 1127, "",spep_0 + 468, 18, 24, -1);
setSeVolumeByWorkId( spep_0 + 392, SE025, 54 );
SE026 = playSeVer2( spep_0 + 392, 1059, "",spep_0 + 444, 0, 14, -1);
SE027 = playSeVer2( spep_0 + 392, 1060, "",spep_0 + 462, 0, 22, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;-- 438

--------------------------------------
--カードカットイン(94F)
--------------------------------------

spep_1 = showCardCutin(spep_c, 0);

-------------------------------------------------
-- フィニッシュまで
-------------------------------------------------

MAX_FRAME_1 = 518;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1+ 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 敵キャラクター ** --

OFFSET_Y = 100 --山田さん要望で敵位置調整用 40から89F調整用
OFFSET_Z = -20 --山田さん要望で敵位置調整用 90から208F調整用


-- 敵の動き1
setDisp( spep_1 + 40 + OFFSET_X, 1, 1);
setDisp( spep_1 + 208 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 40 + OFFSET_X, 1, 104 );
changeAnime( spep_1 + 56 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 60 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 40 + OFFSET_X, 1, 165.8 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 41 + OFFSET_X, 1, 165.8 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 156.9 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 43 + OFFSET_X, 1, 156.9 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 148 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 45 + OFFSET_X, 1, 148 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 139.1 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 47 + OFFSET_X, 1, 139.1 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 130.2 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 49 + OFFSET_X, 1, 130.2 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, 121.4 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 51 + OFFSET_X, 1, 121.4 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, 112.5 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 53 + OFFSET_X, 1, 112.5 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, 133 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 55 + OFFSET_X, 1, 133 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, 129.8 + OFFSET_Y, -14.6 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_X, 1, 129.8 + OFFSET_Y, -14.6 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, 125.8 + OFFSET_Y, 2.5 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_X, 1, 125.8 + OFFSET_Y, 2.5 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 79.4 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, 79.4 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, 55.8 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, 55.8 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, 61.6 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, 61.6 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, 40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, 55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, 40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, 40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, 55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, 55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, 40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, 40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, 55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, 40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 34.6 + OFFSET_Z, 110.1 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 34.6 + OFFSET_Z, 110.1 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 31.5 + OFFSET_Z, 102 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 31.5 + OFFSET_Z, 102 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 28.3 + OFFSET_Z, 94 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 28.3 + OFFSET_Z, 94 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 25.4 + OFFSET_Z, 85.9 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 25.4 + OFFSET_Z, 85.9 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 22.6 + OFFSET_Z, 77.8 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 22.6 + OFFSET_Z, 77.8 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 20 + OFFSET_Z, 69.7 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 20 + OFFSET_Z, 69.7 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 7.8 + OFFSET_Z, 74.2 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 7.8 + OFFSET_Z, 74.2 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 5.8 + OFFSET_Z, 65.9 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 5.8 + OFFSET_Z, 65.9 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 4.2 + OFFSET_Z, 57.7 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 4.2 + OFFSET_Z, 57.7 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 2.9 + OFFSET_Z, 49.6 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 2.9 + OFFSET_Z, 49.6 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, -5.6 + OFFSET_Z, 112.4 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, -5.6 + OFFSET_Z, 112.4 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, -6.1 + OFFSET_Z, 103.2 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, -6.1 + OFFSET_Z, 103.2 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, -6.2 + OFFSET_Z, 94.1 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, -6.2 + OFFSET_Z, 94.1 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 6.3 + OFFSET_Z, 161.2 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 6.3 + OFFSET_Z, 161.2 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 6.1 + OFFSET_Z, 151.3 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 6.1 + OFFSET_Z, 151.3 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 5.9 + OFFSET_Z, 141.3 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 5.9 + OFFSET_Z, 141.3 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 12.5 + OFFSET_Z, 258.2 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 12.5 + OFFSET_Z, 258.2 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 12.1 + OFFSET_Z, 245.6 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 12.1 + OFFSET_Z, 245.6 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 11.5 + OFFSET_Z, 233.3 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 11.5 + OFFSET_Z, 233.3 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 10.8 + OFFSET_Z, 220.9 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 10.8 + OFFSET_Z, 220.9 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 102.8 + OFFSET_Z, 215.9 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 102.8 + OFFSET_Z, 215.9 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 99.7 + OFFSET_Z, 203.4 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 99.7 + OFFSET_Z, 203.4 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 96.4 + OFFSET_Z, 191 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 96.4 + OFFSET_Z, 191 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 64.6 + OFFSET_Z, 317.9 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 64.6 + OFFSET_Z, 317.9 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 76.3 + OFFSET_Z, 316.9 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 76.3 + OFFSET_Z, 316.9 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 91.1 + OFFSET_Z, 319.7 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 91.1 + OFFSET_Z, 319.7 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 105.9 + OFFSET_Z, 322.5 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 105.9 + OFFSET_Z, 322.5 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 120.7 + OFFSET_Z, 325.3 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 120.7 + OFFSET_Z, 325.3 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 126.2 + OFFSET_Z, 327.4 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 126.2 + OFFSET_Z, 327.4 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 131.6 + OFFSET_Z, 329.5 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 131.6 + OFFSET_Z, 329.5 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 137.1 + OFFSET_Z, 331.7 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 137.1 + OFFSET_Z, 331.7 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 142.5 + OFFSET_Z, 333.8 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 142.5 + OFFSET_Z, 333.8 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 148 + OFFSET_Z, 335.9 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 148 + OFFSET_Z, 335.9 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 153.4 + OFFSET_Z, 338 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, 153.4 + OFFSET_Z, 338 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 158.8 + OFFSET_Z, 340.1 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, 158.8 + OFFSET_Z, 340.1 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, 164.2 + OFFSET_Z, 342.2 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, 164.2 + OFFSET_Z, 342.2 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, 169.5 + OFFSET_Z, 344.3 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, 169.5 + OFFSET_Z, 344.3 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, 174.9 + OFFSET_Z, 346.3 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, 174.9 + OFFSET_Z, 346.3 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, 174.1 + OFFSET_Z, 346.9 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, 174.1 + OFFSET_Z, 346.9 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, 173.2 + OFFSET_Z, 347.5 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, 173.2 + OFFSET_Z, 347.5 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, 173.9 + OFFSET_Z, 348.1 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, 173.9 + OFFSET_Z, 348.1 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, 174.6 + OFFSET_Z, 348.7 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, 174.6 + OFFSET_Z, 348.7 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, 81.9 + OFFSET_Z, 364.3 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, 81.9 + OFFSET_Z, 364.3 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, 79.1 + OFFSET_Z, 386.2 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_X, 1, 79.1 + OFFSET_Z, 386.2 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, 69.5 + OFFSET_Z, 441.9 , 0 );
setMoveKey( spep_1 + 179 + OFFSET_X, 1, 69.5 + OFFSET_Z, 441.9 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, 47.1 + OFFSET_Z, 547.3 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_X, 1, 47.1 + OFFSET_Z, 547.3 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, 18.3 + OFFSET_Z, 644.2 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_X, 1, 18.3 + OFFSET_Z, 644.2 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, -2.7 + OFFSET_Z, 681.3 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_X, 1, -2.7 + OFFSET_Z, 681.3 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, -16.7 + OFFSET_Z, 681.6 , 0 );
setMoveKey( spep_1 + 187 + OFFSET_X, 1, -16.7 + OFFSET_Z, 681.6 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, -31.6 + OFFSET_Z, 680.6 , 0 );
setMoveKey( spep_1 + 189 + OFFSET_X, 1, -31.6 + OFFSET_Z, 680.6 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, -51.4 + OFFSET_Z, 692.9 , 0 );
setMoveKey( spep_1 + 191 + OFFSET_X, 1, -51.4 + OFFSET_Z, 692.9 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, -73.5 + OFFSET_Z, 711.2 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, -73.5 + OFFSET_Z, 711.2 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, -96.8 + OFFSET_Z, 731.5 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, -96.8 + OFFSET_Z, 731.5 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, -120.7 + OFFSET_Z, 751.8 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, -120.7 + OFFSET_Z, 751.8 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, -144.8 + OFFSET_Z, 770.8 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, -144.8 + OFFSET_Z, 770.8 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, -169.3 + OFFSET_Z, 788 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, -169.3 + OFFSET_Z, 788 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, -194.5 + OFFSET_Z, 803.1 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, -194.5 + OFFSET_Z, 803.1 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, -221.6 + OFFSET_Z, 816.5 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, -221.6 + OFFSET_Z, 816.5 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, -254.1 + OFFSET_Z, 829.6 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, -254.1 + OFFSET_Z, 829.6 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, -331.9 + OFFSET_Z, 859.9 , 0 );

setScaleKey( spep_1 + 40 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 123 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 129 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 130 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 131 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 143 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 173 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 174 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 175 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 176 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 177 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 178 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 179 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 180 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_1 + 181 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_1 + 182 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_1 + 183 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_1 + 184 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_1 + 185 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_1 + 186 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_1 + 187 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_1 + 188 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_1 + 189 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_1 + 190 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_1 + 191 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_1 + 192 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_1 + 193 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_1 + 194 + OFFSET_X, 1, 2.38, 2.37 );
setScaleKey( spep_1 + 195 + OFFSET_X, 1, 2.38, 2.37 );
setScaleKey( spep_1 + 196 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_1 + 197 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_1 + 198 + OFFSET_X, 1, 2.27, 2.26 );
setScaleKey( spep_1 + 199 + OFFSET_X, 1, 2.27, 2.26 );
setScaleKey( spep_1 + 200 + OFFSET_X, 1, 2.21, 2.2 );
setScaleKey( spep_1 + 201 + OFFSET_X, 1, 2.21, 2.2 );
setScaleKey( spep_1 + 202 + OFFSET_X, 1, 2.15, 2.14 );
setScaleKey( spep_1 + 203 + OFFSET_X, 1, 2.15, 2.14 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_1 + 205 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_1 + 206 + OFFSET_X, 1, 2.02, 2.01 );
setScaleKey( spep_1 + 207 + OFFSET_X, 1, 2.02, 2.01 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 1.95, 1.95 );

setRotateKey( spep_1 + 40 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_1 + 59 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_1 + 60 + OFFSET_X, 1, -53.3 );
setRotateKey( spep_1 + 89 + OFFSET_X, 1, -53.3 );
setRotateKey( spep_1 + 90 + OFFSET_X, 1, -63.9 );
setRotateKey( spep_1 + 101 + OFFSET_X, 1, -63.9 );
setRotateKey( spep_1 + 102 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_1 + 109 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_1 + 110 + OFFSET_X, 1, -58.4 );
setRotateKey( spep_1 + 115 + OFFSET_X, 1, -58.4 );
setRotateKey( spep_1 + 116 + OFFSET_X, 1, -50 );
setRotateKey( spep_1 + 121 + OFFSET_X, 1, -50 );
setRotateKey( spep_1 + 122 + OFFSET_X, 1, -50.5 );
setRotateKey( spep_1 + 129 + OFFSET_X, 1, -50.5 );
setRotateKey( spep_1 + 130 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_1 + 135 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_1 + 136 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_1 + 137 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_1 + 138 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_1 + 139 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_1 + 140 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_1 + 141 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_1 + 142 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_1 + 143 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_1 + 144 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_1 + 145 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_1 + 146 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_1 + 147 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_1 + 148 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_1 + 149 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_1 + 150 + OFFSET_X, 1, 23.8 );
setRotateKey( spep_1 + 151 + OFFSET_X, 1, 23.8 );
setRotateKey( spep_1 + 152 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_1 + 153 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_1 + 154 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_1 + 155 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_1 + 156 + OFFSET_X, 1, 31.3 );
setRotateKey( spep_1 + 157 + OFFSET_X, 1, 31.3 );
setRotateKey( spep_1 + 158 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_1 + 159 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_1 + 160 + OFFSET_X, 1, 36.2 );
setRotateKey( spep_1 + 161 + OFFSET_X, 1, 36.2 );
setRotateKey( spep_1 + 162 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_1 + 163 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_1 + 164 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_1 + 173 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_1 + 174 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_1 + 175 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_1 + 176 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_1 + 177 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_1 + 178 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_1 + 179 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_1 + 180 + OFFSET_X, 1, -41.7 );
setRotateKey( spep_1 + 181 + OFFSET_X, 1, -41.7 );
setRotateKey( spep_1 + 182 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_1 + 183 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_1 + 184 + OFFSET_X, 1, -55.4 );
setRotateKey( spep_1 + 185 + OFFSET_X, 1, -55.4 );
setRotateKey( spep_1 + 186 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_1 + 187 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_1 + 188 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_1 + 189 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_1 + 190 + OFFSET_X, 1, -65.2 );
setRotateKey( spep_1 + 191 + OFFSET_X, 1, -65.2 );
setRotateKey( spep_1 + 192 + OFFSET_X, 1, -66.7 );
setRotateKey( spep_1 + 193 + OFFSET_X, 1, -66.7 );
setRotateKey( spep_1 + 194 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_1 + 195 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_1 + 196 + OFFSET_X, 1, -69.7 );
setRotateKey( spep_1 + 197 + OFFSET_X, 1, -69.7 );
setRotateKey( spep_1 + 198 + OFFSET_X, 1, -71.2 );
setRotateKey( spep_1 + 199 + OFFSET_X, 1, -71.2 );
setRotateKey( spep_1 + 200 + OFFSET_X, 1, -72.7 );
setRotateKey( spep_1 + 201 + OFFSET_X, 1, -72.7 );
setRotateKey( spep_1 + 202 + OFFSET_X, 1, -74.2 );
setRotateKey( spep_1 + 203 + OFFSET_X, 1, -74.2 );
setRotateKey( spep_1 + 204 + OFFSET_X, 1, -75.7 );
setRotateKey( spep_1 + 205 + OFFSET_X, 1, -75.7 );
setRotateKey( spep_1 + 206 + OFFSET_X, 1, -77.2 );
setRotateKey( spep_1 + 207 + OFFSET_X, 1, -77.2 );
setRotateKey( spep_1 + 208 + OFFSET_X, 1, -78.7 );

-- 敵の動き2
setDisp( spep_1 + 330 + OFFSET_X, 1, 1);
setDisp( spep_1 + 362 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 330 + OFFSET_X, 1, 105 );

setMoveKey( spep_1 + 330 + OFFSET_X, 1, -11.9, 114.2 , 0 );
setMoveKey( spep_1 + 331 + OFFSET_X, 1, -11.9, 114.2 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, -7.4, 103.8 , 0 );
setMoveKey( spep_1 + 333 + OFFSET_X, 1, -7.4, 103.8 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, -3.8, 93.5 , 0 );
setMoveKey( spep_1 + 335 + OFFSET_X, 1, -3.8, 93.5 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, -0.9, 82.9 , 0 );
setMoveKey( spep_1 + 337 + OFFSET_X, 1, -0.9, 82.9 , 0 );
setMoveKey( spep_1 + 338 + OFFSET_X, 1, 1.4, 71.7 , 0 );
setMoveKey( spep_1 + 339 + OFFSET_X, 1, 1.4, 71.7 , 0 );
setMoveKey( spep_1 + 340 + OFFSET_X, 1, 3.1, 59.8 , 0 );
setMoveKey( spep_1 + 341 + OFFSET_X, 1, 3.1, 59.8 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, 4.3, 46.9 , 0 );
setMoveKey( spep_1 + 343 + OFFSET_X, 1, 4.3, 46.9 , 0 );
setMoveKey( spep_1 + 344 + OFFSET_X, 1, 4.9, 32.7 , 0 );
setMoveKey( spep_1 + 345 + OFFSET_X, 1, 4.9, 32.7 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, 5.1, 16.9 , 0 );
setMoveKey( spep_1 + 347 + OFFSET_X, 1, 5.1, 16.9 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, 4.6, -0.8 , 0 );
setMoveKey( spep_1 + 349 + OFFSET_X, 1, 4.6, -0.8 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, 3.6, -20.8 , 0 );
setMoveKey( spep_1 + 351 + OFFSET_X, 1, 3.6, -20.8 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, 2, -43.3 , 0 );
setMoveKey( spep_1 + 353 + OFFSET_X, 1, 2, -43.3 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, -0.1, -68.8 , 0 );
setMoveKey( spep_1 + 355 + OFFSET_X, 1, -0.1, -68.8 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, -2.9, -98.1 , 0 );
setMoveKey( spep_1 + 357 + OFFSET_X, 1, -2.9, -98.1 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, -4.2, -138.2 , 0 );
setMoveKey( spep_1 + 359 + OFFSET_X, 1, -4.2, -138.2 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, 5.3, -163.8 , 0 );
setMoveKey( spep_1 + 361 + OFFSET_X, 1, 5.3, -163.8 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, -21.8, -129 , 0 );

setScaleKey( spep_1 + 330 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 331 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 332 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 333 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 334 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 335 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 336 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 337 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 338 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 339 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 340 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 343 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 344 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 347 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 348 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 351 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 352 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 357 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 358 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 359 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 360 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 361 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 362 + OFFSET_X, 1, 0.45, 0.45 );

setRotateKey( spep_1 + 330 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_1 + 331 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_1 + 332 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_1 + 333 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_1 + 334 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_1 + 335 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_1 + 336 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_1 + 337 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_1 + 338 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_1 + 339 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_1 + 340 + OFFSET_X, 1, 24.6 );
setRotateKey( spep_1 + 341 + OFFSET_X, 1, 24.6 );
setRotateKey( spep_1 + 342 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_1 + 343 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_1 + 344 + OFFSET_X, 1, 24 );
setRotateKey( spep_1 + 345 + OFFSET_X, 1, 24 );
setRotateKey( spep_1 + 346 + OFFSET_X, 1, 23.7 );
setRotateKey( spep_1 + 347 + OFFSET_X, 1, 23.7 );
setRotateKey( spep_1 + 348 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_1 + 349 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_1 + 350 + OFFSET_X, 1, 23 );
setRotateKey( spep_1 + 351 + OFFSET_X, 1, 23 );
setRotateKey( spep_1 + 352 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_1 + 353 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_1 + 354 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_1 + 355 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_1 + 356 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_1 + 357 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_1 + 358 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_1 + 362 + OFFSET_X, 1, 21.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--手広げる
SE029 = playSeVer2( spep_1 + 0, 92, "", 0, 14, 0, -1);
SE030 = playSeVer2( spep_1 + 5, 1116, "",spep_1 + 30, 0, 5, -1);
--敵掴む
SE031 = playSeVer2( spep_1 + 39, 1438, "",spep_1 + 88, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 39, SE031, 266 );
SE032 = playSeVer2( spep_1 + 39, 1153, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_1 + 43, 1009, "", 0, 0, 0, -1);
--持ち上げる
SE034 = playSeVer2( spep_1 + 102, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE034,  67 );
SE035 = playSeVer2( spep_1 + 98, 1116, "",spep_1 + 148, 0, 14, -1);
--投げる
SE036 = playSeVer2( spep_1 + 164, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 164, SE036, 83 );
SE037 = playSeVer2( spep_1 + 164, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 164, SE037, 79 );
SE038 = playSeVer2( spep_1 + 164, 1118, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 164, SE038, 81 );
--ビーム溜める
SE039 = playSeVer2( spep_1 + 214, 1136, "",spep_1 + 280, 0, 19, -1);
setSeVolumeByWorkId( spep_1 + 214, SE039, 84 );
SE040 = playSeVer2( spep_1 + 214, 1158, "",spep_1 + 280, 0, 21, -1);
setSeVolumeByWorkId( spep_1 + 214, SE040, 83 );
SE041 = playSeVer2( spep_1 + 214, 1144, "",spep_1 + 276, 0, 17, -1);
setSeVolumeByWorkId( spep_1 + 214, SE041, 47 );
SE042 = playSeVer2( spep_1 + 214, 1043, "", 0, 0, 0, -1);
--ビーム撃つ
SE043 = playSeVer2( spep_1 + 250, 1177, "",spep_1 + 386, 0, 18, -1);
SE044 = playSeVer2( spep_1 + 250, 1338, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_1 + 250, 1193, "",spep_1 + 384, 0, 18, -1);
--爆発
SE046 = playSeVer2( spep_1 + 352, 1067, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_1 + 358, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 400); 
endPhase( spep_1 + MAX_FRAME_1 -4); -- 518

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------
spep_0 = 0;


-------------------------------------------------
-- 開幕～カードまで
-------------------------------------------------

MAX_FRAME_0 = 438;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------

spep_x = spep_0 + 42;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -30, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -30, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 白フェード ** --
entryFade( spep_0 + 120, 6, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 328, 0, 206, 0.65);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--画面遷移
SE004 = playSeVer2( spep_0 + 80, 1072, "", 0, 0, 0, 0.65);
--飛んでる音
SE005 = playSeVer2( spep_0 + 122, 1019, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 122, 1268, "",spep_0 + 358, 0, 24, -1);
--ピラフ腕しまう
SE007 = playSeVer2( spep_0 + 154, 1150, "", 0, 0, 0, 0.6);
setPitch( spep_0 + 154, SE007, -800 );
setTimeStretch( SE007, 0.47, 30, 4 );
SE008 = playSeVer2( spep_0 + 154, 1295, "",spep_0 + 204, 0, 9, -1);
setSeVolumeByWorkId( spep_0 + 154, SE008, 126 );
setPitch( spep_0 + 154, SE008, -600 );
setTimeStretch( SE008, 0.6, 30, 4 );
SE009 = playSeVer2( spep_0 + 154, 1313, "",spep_0 + 204, 0, 9, -1);
setSeVolumeByWorkId( spep_0 + 154, SE009, 77 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 170; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);

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

--ピラフ腕しまう
SE010 = playSeVer2( spep_0 + 178, 1151, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 178, 1387, "", 0, 0, 0, -1);
setPitch( spep_0 + 188, SE011, -1200 );
setTimeStretch( SE011, 0.2, 30, 4 );
--飛んでる音
SE012 = playSeVer2( spep_0 + 188, 1019, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 252, 1019, "", 0, 0, 0, -1);
--マイ足しまう
SE013 = playSeVer2( spep_0 + 254, 1150, "", 0, 0, 0, 0.6);
setPitch( spep_0 + 264, SE013, -800 );
setTimeStretch( SE013, 0.47, 30, 4 );
SE014 = playSeVer2( spep_0 + 254, 1313, "",spep_0 + 309, 0, 9, -1);
setSeVolumeByWorkId( spep_0 + 254, SE014, 86 );
SE015 = playSeVer2( spep_0 + 254, 1295, "",spep_0 + 309, 0, 9, -1);
setPitch( spep_0 + 264, SE015, -600 );
setTimeStretch( SE015, 0.6, 30, 4 );
SE017 = playSeVer2( spep_0 + 276, 1151, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 276, 1387, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE018, 88 );
setPitch( spep_0 + 276, SE018, -1200 );
setTimeStretch( SE018, 0.2, 30, 4 );
--飛んでる音
SE019 = playSeVer2( spep_0 + 306, 1019, "",spep_0 + 376, 0, 10, -1);
--降ってくる
SE020 = playSeVer2( spep_0 + 306, 63, "",spep_0 + 388, 0, 14, -1);
--胴体合体
SE021 = playSeVer2( spep_0 + 354, 1438, "",spep_0 + 410, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 354, SE021, 316 );
SE022 = playSeVer2( spep_0 + 354, 1127, "",spep_0 + 410, 14, 12, -1);
setSeVolumeByWorkId( spep_0 + 354, SE022, 42 );
SE023 = playSeVer2( spep_0 + 354, 1059, "",spep_0 + 414, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 354, SE023, 76 );
--頭合体
SE024 = playSeVer2( spep_0 + 392, 1438, "",spep_0 + 468, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 392, SE024, 316 );
SE025 = playSeVer2( spep_0 + 392, 1127, "",spep_0 + 468, 18, 24, -1);
setSeVolumeByWorkId( spep_0 + 392, SE025, 54 );
SE026 = playSeVer2( spep_0 + 392, 1059, "",spep_0 + 444, 0, 14, -1);
SE027 = playSeVer2( spep_0 + 392, 1060, "",spep_0 + 462, 0, 22, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;-- 438

--------------------------------------
--カードカットイン(94F)
--------------------------------------

spep_1 = showCardCutin(spep_c, 0);

-------------------------------------------------
-- フィニッシュまで
-------------------------------------------------

MAX_FRAME_1 = 518;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1+ 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 敵キャラクター ** --

OFFSET_Y = -100 --山田さん要望で敵位置調整用 40から89F調整用
OFFSET_Z = 20 --山田さん要望で敵位置調整用 90から208F調整用


-- 敵の動き1
setDisp( spep_1 + 40 + OFFSET_X, 1, 1);
setDisp( spep_1 + 208 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 40 + OFFSET_X, 1, 4 );
changeAnime( spep_1 + 56 + OFFSET_X, 1, 8 );
changeAnime( spep_1 + 60 + OFFSET_X, 1, 6 );

setMoveKey( spep_1 + 40 + OFFSET_X, 1, -165.8 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 41 + OFFSET_X, 1, -165.8 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, -156.9 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 43 + OFFSET_X, 1, -156.9 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, -148 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 45 + OFFSET_X, 1, -148 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, -139.1 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 47 + OFFSET_X, 1, -139.1 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, -130.2 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 49 + OFFSET_X, 1, -130.2 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, -121.4 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 51 + OFFSET_X, 1, -121.4 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, -112.5 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 53 + OFFSET_X, 1, -112.5 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, -133 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 55 + OFFSET_X, 1, -133 + OFFSET_Y, -11.2 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, -129.8 + OFFSET_Y, -14.6 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_X, 1, -129.8 + OFFSET_Y, -14.6 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, -125.8 + OFFSET_Y, 2.5 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_X, 1, -125.8 + OFFSET_Y, 2.5 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, -79.4 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, -79.4 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, -55.8 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, -55.8 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, -61.6 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, -61.6 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, -40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, -40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, -55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, -55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, -40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, -40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, -55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, -55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, -40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, -40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, -55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, -55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, -40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, -40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, -55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, -55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, -40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, -40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, -55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, -55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, -40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, -40.5 + OFFSET_Y, -38.6 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, -55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, -55.2 + OFFSET_Y, -55.7 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, -34.6 + OFFSET_Z, 110.1 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, -34.6 + OFFSET_Z, 110.1 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, -31.5 + OFFSET_Z, 102 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, -31.5 + OFFSET_Z, 102 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, -28.3 + OFFSET_Z, 94 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, -28.3 + OFFSET_Z, 94 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, -25.4 + OFFSET_Z, 85.9 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, -25.4 + OFFSET_Z, 85.9 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, -22.6 + OFFSET_Z, 77.8 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, -22.6 + OFFSET_Z, 77.8 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, -20 + OFFSET_Z, 69.7 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, -20 + OFFSET_Z, 69.7 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, -7.8 + OFFSET_Z, 74.2 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, -7.8 + OFFSET_Z, 74.2 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, -5.8 + OFFSET_Z, 65.9 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, -5.8 + OFFSET_Z, 65.9 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, -4.2 + OFFSET_Z, 57.7 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, -4.2 + OFFSET_Z, 57.7 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, -2.9 + OFFSET_Z, 49.6 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, -2.9 + OFFSET_Z, 49.6 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 5.6 + OFFSET_Z, 112.4 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 5.6 + OFFSET_Z, 112.4 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 6.1 + OFFSET_Z, 103.2 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 6.1 + OFFSET_Z, 103.2 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 6.2 + OFFSET_Z, 94.1 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 6.2 + OFFSET_Z, 94.1 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, -6.3 + OFFSET_Z, 161.2 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, -6.3 + OFFSET_Z, 161.2 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, -6.1 + OFFSET_Z, 151.3 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, -6.1 + OFFSET_Z, 151.3 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, -5.9 + OFFSET_Z, 141.3 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, -5.9 + OFFSET_Z, 141.3 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, -12.5 + OFFSET_Z, 258.2 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, -12.5 + OFFSET_Z, 258.2 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, -12.1 + OFFSET_Z, 245.6 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, -12.1 + OFFSET_Z, 245.6 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, -11.5 + OFFSET_Z, 233.3 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, -11.5 + OFFSET_Z, 233.3 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, -10.8 + OFFSET_Z, 220.9 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, -10.8 + OFFSET_Z, 220.9 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, -102.8 + OFFSET_Z, 215.9 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, -102.8 + OFFSET_Z, 215.9 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, -99.7 + OFFSET_Z, 203.4 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, -99.7 + OFFSET_Z, 203.4 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, -96.4 + OFFSET_Z, 191 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, -96.4 + OFFSET_Z, 191 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, -64.6 + OFFSET_Z, 317.9 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, -64.6 + OFFSET_Z, 317.9 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, -76.3 + OFFSET_Z, 316.9 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, -76.3 + OFFSET_Z, 316.9 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, -91.1 + OFFSET_Z, 319.7 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, -91.1 + OFFSET_Z, 319.7 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, -105.9 + OFFSET_Z, 322.5 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, -105.9 + OFFSET_Z, 322.5 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, -120.7 + OFFSET_Z, 325.3 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, -120.7 + OFFSET_Z, 325.3 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, -126.2 + OFFSET_Z, 327.4 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, -126.2 + OFFSET_Z, 327.4 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, -131.6 + OFFSET_Z, 329.5 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, -131.6 + OFFSET_Z, 329.5 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, -137.1 + OFFSET_Z, 331.7 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, -137.1 + OFFSET_Z, 331.7 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, -142.5 + OFFSET_Z, 333.8 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, -142.5 + OFFSET_Z, 333.8 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, -148 + OFFSET_Z, 335.9 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, -148 + OFFSET_Z, 335.9 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, -153.4 + OFFSET_Z, 338 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, -153.4 + OFFSET_Z, 338 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, -158.8 + OFFSET_Z, 340.1 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, -158.8 + OFFSET_Z, 340.1 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, -164.2 + OFFSET_Z, 342.2 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, -164.2 + OFFSET_Z, 342.2 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, -169.5 + OFFSET_Z, 344.3 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, -169.5 + OFFSET_Z, 344.3 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, -174.9 + OFFSET_Z, 346.3 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, -174.9 + OFFSET_Z, 346.3 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, -174.1 + OFFSET_Z, 346.9 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, -174.1 + OFFSET_Z, 346.9 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, -173.2 + OFFSET_Z, 347.5 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, -173.2 + OFFSET_Z, 347.5 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, -173.9 + OFFSET_Z, 348.1 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, -173.9 + OFFSET_Z, 348.1 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, -174.6 + OFFSET_Z, 348.7 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, -174.6 + OFFSET_Z, 348.7 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, -81.9 + OFFSET_Z, 364.3 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, -81.9 + OFFSET_Z, 364.3 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, -79.1 + OFFSET_Z, 386.2 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_X, 1, -79.1 + OFFSET_Z, 386.2 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, -69.5 + OFFSET_Z, 441.9 , 0 );
setMoveKey( spep_1 + 179 + OFFSET_X, 1, -69.5 + OFFSET_Z, 441.9 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, -47.1 + OFFSET_Z, 547.3 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_X, 1, -47.1 + OFFSET_Z, 547.3 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, -18.3 + OFFSET_Z, 644.2 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_X, 1, -18.3 + OFFSET_Z, 644.2 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 2.7 + OFFSET_Z, 681.3 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_X, 1, 2.7 + OFFSET_Z, 681.3 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 16.7 + OFFSET_Z, 681.6 , 0 );
setMoveKey( spep_1 + 187 + OFFSET_X, 1, 16.7 + OFFSET_Z, 681.6 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, 31.6 + OFFSET_Z, 680.6 , 0 );
setMoveKey( spep_1 + 189 + OFFSET_X, 1, 31.6 + OFFSET_Z, 680.6 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, 51.4 + OFFSET_Z, 692.9 , 0 );
setMoveKey( spep_1 + 191 + OFFSET_X, 1, 51.4 + OFFSET_Z, 692.9 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, 73.5 + OFFSET_Z, 711.2 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, 73.5 + OFFSET_Z, 711.2 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 96.8 + OFFSET_Z, 731.5 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, 96.8 + OFFSET_Z, 731.5 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 120.7 + OFFSET_Z, 751.8 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, 120.7 + OFFSET_Z, 751.8 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 144.8 + OFFSET_Z, 770.8 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, 144.8 + OFFSET_Z, 770.8 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 169.3 + OFFSET_Z, 788 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, 169.3 + OFFSET_Z, 788 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 194.5 + OFFSET_Z, 803.1 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 194.5 + OFFSET_Z, 803.1 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 221.6 + OFFSET_Z, 816.5 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 221.6 + OFFSET_Z, 816.5 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 254.1 + OFFSET_Z, 829.6 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 254.1 + OFFSET_Z, 829.6 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 331.9 + OFFSET_Z, 859.9 , 0 );

setScaleKey( spep_1 + 40 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 123 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 129 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 130 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 131 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 143 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 173 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 174 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 175 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 176 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 177 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 178 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 179 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 180 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_1 + 181 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_1 + 182 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_1 + 183 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_1 + 184 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_1 + 185 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_1 + 186 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_1 + 187 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_1 + 188 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_1 + 189 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_1 + 190 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_1 + 191 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_1 + 192 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_1 + 193 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_1 + 194 + OFFSET_X, 1, 2.38, 2.37 );
setScaleKey( spep_1 + 195 + OFFSET_X, 1, 2.38, 2.37 );
setScaleKey( spep_1 + 196 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_1 + 197 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_1 + 198 + OFFSET_X, 1, 2.27, 2.26 );
setScaleKey( spep_1 + 199 + OFFSET_X, 1, 2.27, 2.26 );
setScaleKey( spep_1 + 200 + OFFSET_X, 1, 2.21, 2.2 );
setScaleKey( spep_1 + 201 + OFFSET_X, 1, 2.21, 2.2 );
setScaleKey( spep_1 + 202 + OFFSET_X, 1, 2.15, 2.14 );
setScaleKey( spep_1 + 203 + OFFSET_X, 1, 2.15, 2.14 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_1 + 205 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_1 + 206 + OFFSET_X, 1, 2.02, 2.01 );
setScaleKey( spep_1 + 207 + OFFSET_X, 1, 2.02, 2.01 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 1.95, 1.95 );

setRotateKey( spep_1 + 40 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_1 + 59 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_1 + 60 + OFFSET_X, 1, 53.3 );
setRotateKey( spep_1 + 89 + OFFSET_X, 1, 53.3 );
setRotateKey( spep_1 + 90 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_1 + 101 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_1 + 102 + OFFSET_X, 1, 60.5 );
setRotateKey( spep_1 + 109 + OFFSET_X, 1, 60.5 );
setRotateKey( spep_1 + 110 + OFFSET_X, 1, 58.4 );
setRotateKey( spep_1 + 115 + OFFSET_X, 1, 58.4 );
setRotateKey( spep_1 + 116 + OFFSET_X, 1, 50 );
setRotateKey( spep_1 + 121 + OFFSET_X, 1, 50 );
setRotateKey( spep_1 + 122 + OFFSET_X, 1, 50.5 );
setRotateKey( spep_1 + 129 + OFFSET_X, 1, 50.5 );
setRotateKey( spep_1 + 130 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_1 + 135 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_1 + 136 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_1 + 137 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_1 + 138 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_1 + 139 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_1 + 140 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_1 + 141 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_1 + 142 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_1 + 143 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_1 + 144 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_1 + 145 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_1 + 146 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_1 + 147 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_1 + 148 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_1 + 149 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_1 + 150 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_1 + 151 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_1 + 152 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_1 + 153 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_1 + 154 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_1 + 155 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_1 + 156 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_1 + 157 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_1 + 158 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_1 + 159 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_1 + 160 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_1 + 161 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_1 + 162 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_1 + 163 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_1 + 164 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_1 + 173 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_1 + 174 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_1 + 175 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_1 + 176 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_1 + 177 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_1 + 178 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_1 + 179 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_1 + 180 + OFFSET_X, 1, 41.7 );
setRotateKey( spep_1 + 181 + OFFSET_X, 1, 41.7 );
setRotateKey( spep_1 + 182 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_1 + 183 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_1 + 184 + OFFSET_X, 1, 55.4 );
setRotateKey( spep_1 + 185 + OFFSET_X, 1, 55.4 );
setRotateKey( spep_1 + 186 + OFFSET_X, 1, 62.2 );
setRotateKey( spep_1 + 187 + OFFSET_X, 1, 62.2 );
setRotateKey( spep_1 + 188 + OFFSET_X, 1, 63.7 );
setRotateKey( spep_1 + 189 + OFFSET_X, 1, 63.7 );
setRotateKey( spep_1 + 190 + OFFSET_X, 1, 65.2 );
setRotateKey( spep_1 + 191 + OFFSET_X, 1, 65.2 );
setRotateKey( spep_1 + 192 + OFFSET_X, 1, 66.7 );
setRotateKey( spep_1 + 193 + OFFSET_X, 1, 66.7 );
setRotateKey( spep_1 + 194 + OFFSET_X, 1, 68.2 );
setRotateKey( spep_1 + 195 + OFFSET_X, 1, 68.2 );
setRotateKey( spep_1 + 196 + OFFSET_X, 1, 69.7 );
setRotateKey( spep_1 + 197 + OFFSET_X, 1, 69.7 );
setRotateKey( spep_1 + 198 + OFFSET_X, 1, 71.2 );
setRotateKey( spep_1 + 199 + OFFSET_X, 1, 71.2 );
setRotateKey( spep_1 + 200 + OFFSET_X, 1, 72.7 );
setRotateKey( spep_1 + 201 + OFFSET_X, 1, 72.7 );
setRotateKey( spep_1 + 202 + OFFSET_X, 1, 74.2 );
setRotateKey( spep_1 + 203 + OFFSET_X, 1, 74.2 );
setRotateKey( spep_1 + 204 + OFFSET_X, 1, 75.7 );
setRotateKey( spep_1 + 205 + OFFSET_X, 1, 75.7 );
setRotateKey( spep_1 + 206 + OFFSET_X, 1, 77.2 );
setRotateKey( spep_1 + 207 + OFFSET_X, 1, 77.2 );
setRotateKey( spep_1 + 208 + OFFSET_X, 1, 78.7 );

-- 敵の動き2
setDisp( spep_1 + 330 + OFFSET_X, 1, 1);
setDisp( spep_1 + 362 + OFFSET_X, 1, 0);

-- 敵の動き2
setDisp( spep_1 + 330 + OFFSET_X, 1, 1);
setDisp( spep_1 + 362 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 330 + OFFSET_X, 1, 105 );

setMoveKey( spep_1 + 330 + OFFSET_X, 1, -11.9, 114.2 , 0 );
setMoveKey( spep_1 + 331 + OFFSET_X, 1, -11.9, 114.2 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, -7.4, 103.8 , 0 );
setMoveKey( spep_1 + 333 + OFFSET_X, 1, -7.4, 103.8 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, -3.8, 93.5 , 0 );
setMoveKey( spep_1 + 335 + OFFSET_X, 1, -3.8, 93.5 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, -0.9, 82.9 , 0 );
setMoveKey( spep_1 + 337 + OFFSET_X, 1, -0.9, 82.9 , 0 );
setMoveKey( spep_1 + 338 + OFFSET_X, 1, 1.4, 71.7 , 0 );
setMoveKey( spep_1 + 339 + OFFSET_X, 1, 1.4, 71.7 , 0 );
setMoveKey( spep_1 + 340 + OFFSET_X, 1, 3.1, 59.8 , 0 );
setMoveKey( spep_1 + 341 + OFFSET_X, 1, 3.1, 59.8 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, 4.3, 46.9 , 0 );
setMoveKey( spep_1 + 343 + OFFSET_X, 1, 4.3, 46.9 , 0 );
setMoveKey( spep_1 + 344 + OFFSET_X, 1, 4.9, 32.7 , 0 );
setMoveKey( spep_1 + 345 + OFFSET_X, 1, 4.9, 32.7 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, 5.1, 16.9 , 0 );
setMoveKey( spep_1 + 347 + OFFSET_X, 1, 5.1, 16.9 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, 4.6, -0.8 , 0 );
setMoveKey( spep_1 + 349 + OFFSET_X, 1, 4.6, -0.8 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, 3.6, -20.8 , 0 );
setMoveKey( spep_1 + 351 + OFFSET_X, 1, 3.6, -20.8 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, 2, -43.3 , 0 );
setMoveKey( spep_1 + 353 + OFFSET_X, 1, 2, -43.3 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, -0.1, -68.8 , 0 );
setMoveKey( spep_1 + 355 + OFFSET_X, 1, -0.1, -68.8 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, -2.9, -98.1 , 0 );
setMoveKey( spep_1 + 357 + OFFSET_X, 1, -2.9, -98.1 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, -4.2, -138.2 , 0 );
setMoveKey( spep_1 + 359 + OFFSET_X, 1, -4.2, -138.2 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, 5.3, -163.8 , 0 );
setMoveKey( spep_1 + 361 + OFFSET_X, 1, 5.3, -163.8 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, -21.8, -129 , 0 );

setScaleKey( spep_1 + 330 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 331 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 332 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 333 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 334 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 335 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 336 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 337 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 338 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 339 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 340 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 343 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 344 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 347 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 348 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 351 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 352 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 357 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 358 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 359 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 360 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 361 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 362 + OFFSET_X, 1, 0.45, 0.45 );

setRotateKey( spep_1 + 330 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_1 + 331 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_1 + 332 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_1 + 333 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_1 + 334 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_1 + 335 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_1 + 336 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_1 + 337 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_1 + 338 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_1 + 339 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_1 + 340 + OFFSET_X, 1, 24.6 );
setRotateKey( spep_1 + 341 + OFFSET_X, 1, 24.6 );
setRotateKey( spep_1 + 342 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_1 + 343 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_1 + 344 + OFFSET_X, 1, 24 );
setRotateKey( spep_1 + 345 + OFFSET_X, 1, 24 );
setRotateKey( spep_1 + 346 + OFFSET_X, 1, 23.7 );
setRotateKey( spep_1 + 347 + OFFSET_X, 1, 23.7 );
setRotateKey( spep_1 + 348 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_1 + 349 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_1 + 350 + OFFSET_X, 1, 23 );
setRotateKey( spep_1 + 351 + OFFSET_X, 1, 23 );
setRotateKey( spep_1 + 352 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_1 + 353 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_1 + 354 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_1 + 355 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_1 + 356 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_1 + 357 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_1 + 358 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_1 + 362 + OFFSET_X, 1, 21.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--手広げる
SE029 = playSeVer2( spep_1 + 0, 92, "", 0, 14, 0, -1);
SE030 = playSeVer2( spep_1 + 5, 1116, "",spep_1 + 30, 0, 5, -1);
--敵掴む
SE031 = playSeVer2( spep_1 + 39, 1438, "",spep_1 + 88, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 39, SE031, 266 );
SE032 = playSeVer2( spep_1 + 39, 1153, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_1 + 43, 1009, "", 0, 0, 0, -1);
--持ち上げる
SE034 = playSeVer2( spep_1 + 102, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE034,  67 );
SE035 = playSeVer2( spep_1 + 98, 1116, "",spep_1 + 148, 0, 14, -1);
--投げる
SE036 = playSeVer2( spep_1 + 164, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 164, SE036, 83 );
SE037 = playSeVer2( spep_1 + 164, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 164, SE037, 79 );
SE038 = playSeVer2( spep_1 + 164, 1118, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 164, SE038, 81 );
--ビーム溜める
SE039 = playSeVer2( spep_1 + 214, 1136, "",spep_1 + 280, 0, 19, -1);
setSeVolumeByWorkId( spep_1 + 214, SE039, 84 );
SE040 = playSeVer2( spep_1 + 214, 1158, "",spep_1 + 280, 0, 21, -1);
setSeVolumeByWorkId( spep_1 + 214, SE040, 83 );
SE041 = playSeVer2( spep_1 + 214, 1144, "",spep_1 + 276, 0, 17, -1);
setSeVolumeByWorkId( spep_1 + 214, SE041, 47 );
SE042 = playSeVer2( spep_1 + 214, 1043, "", 0, 0, 0, -1);
--ビーム撃つ
SE043 = playSeVer2( spep_1 + 250, 1177, "",spep_1 + 386, 0, 18, -1);
SE044 = playSeVer2( spep_1 + 250, 1338, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_1 + 250, 1193, "",spep_1 + 384, 0, 18, -1);
--爆発
SE046 = playSeVer2( spep_1 + 352, 1067, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_1 + 358, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 400); 
endPhase( spep_1 + MAX_FRAME_1 -4); -- 518

end
