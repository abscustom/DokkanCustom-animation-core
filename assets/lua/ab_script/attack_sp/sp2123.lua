--1021350:アルティメット孫悟飯&ピッコロ_かめはめ波&魔貫光殺砲_sp2123
--sp_effect_a1_00277

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
SP_01 = 156743;   --敵との対峙   ef_001
SP_02 = 156744;   --振り返り→セリフカットイン   ef_002
SP_03 = 156745;   --魔貫光殺砲構え ef_003
SP_04 = 156747;   --かめはめ波構え①    ef_004
SP_05 = 156748;   --かめはめ波構え②    ef_005
SP_06 = 156750;   --かめはめ波構え→発射  ef_006
SP_07 = 156751;   --かめはめ波発射→敵直撃 ef_007
SP_08 = 156753;   --悟飯の後、ピッコロ追撃 ef_008
SP_09 = 156754;   --魔貫光殺砲発射→貫通  ef_009
SP_10 = 156755;   --↑上のレーザー部分   ef_009_shot
SP_11 = 156758;   --俯瞰でラスト  ef_010

--敵側
SP_01r = 156783;   --敵との対峙敵側	ef_001_r
SP_03r = 156746;   --魔貫光殺砲構え_敵側  ef_003_r
SP_05r = 156749;   --かめはめ波構え②_敵側 ef_005_r
SP_07r = 156752;   --かめはめ波発射→敵直撃_敵側  ef_007_r
SP_09r = 156756;   --魔貫光殺砲発射→貫通_敵側   ef_009_r
SP_10r = 156757;   --↑上のレーザー部分   ef_009_shot_r
SP_11r = 156759;   --俯瞰でラスト  ef_010_r

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
-- 敵との対峙44F
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 44, 0x80, -1, 0, 0, 0 );  --敵との対峙(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 44, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 44, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 44, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 44 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 44, first_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 44, 1, 0 );
changeAnime( spep_0 + 0, 1, 102 );

a1=40;
b1=50;
setMoveKey( spep_0 + 0, 1, 144.7 +a1, -68.4 +b1, 0 );
setMoveKey( spep_0 + 1, 1, 144.3 +a1, -68.5 +b1 , 0 );
setMoveKey( spep_0 + 2, 1, 143.9 +a1, -68.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 143.4 +a1, -68.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 143.4 +a1, -68.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 143 +a1, -68.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 143 +a1, -68.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 142.6 +a1, -68.9 +b1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 142.1 +a1, -69 +b1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 141.7 +a1, -69.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 141.3 +a1, -69.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 140.8 +a1, -69.3 +b1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 140.4 +a1, -69.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 140 +a1, -69.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 139.6 +a1, -69.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 139.1 +a1, -69.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 138.7 +a1, -69.9 +b1 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 138.3 +a1, -70 +b1 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 137.8 +a1, -70.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 137.4 +a1, -70.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 137 +a1, -70.3 +b1 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 136.5 +a1, -70.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 136.1 +a1, -70.5 +b1 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 135.7 +a1, -70.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 135.3 +a1, -70.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 45, 1, 135.3 +a1, -70.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 47, 1, 135.3 +a1, -70.7 +b1 , 0 );
--setMoveKey( spep_0 -3 + 46, 1, 134.8, -70.8 , 0 );

setScaleKey( spep_0 + 0, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 1, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 2, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 3, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 4, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 5, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 6, 1, 1.62, 1.62 );
setScaleKey( spep_0 -3 + 38, 1, 1.62, 1.62 );
setScaleKey( spep_0 -3 + 40, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 47, 1, 1.61, 1.61 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 -3 + 47, 1, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSe( spep_0 + 0, 1036,"",0.7 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--環境音
SE002 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 18 );
stopSe( spep_0 +44 +120 +156 +28 + 36, SE002, 0 );

--オーラ
SE003 = playSe( spep_0 + 24, 1036,"",0.7 );
setSeVolumeByWorkId( spep_0 + 24, SE003, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 44 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 44;


------------------------------------------------------
-- 振り返り→セリフカットイン(120F)
------------------------------------------------------
-- ** エフェクト等 ** --
cutin = entryEffectLife( spep_1 + 0, SP_02, 120, 0x100, -1, 0, 0, 0 );  --振り返り→セリフカットイン(ef_002)
setEffMoveKey( spep_1 + 0, cutin, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, cutin, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, cutin, 1.0, 1.0 );
setEffScaleKey( spep_1 + 120, cutin, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, cutin, 0 );
setEffRotateKey( spep_1 + 120, cutin, 0 );
setEffAlphaKey( spep_1 + 0, cutin, 255 );
setEffAlphaKey( spep_1 + 120 -1, cutin, 255 );
setEffAlphaKey( spep_1 + 120, cutin, 0 );

spep_x = spep_1 + 16;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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

-- ** 音 ** --
--オーラ
SE004 = playSe( spep_1 + 4, 1036,"",0.7 );
setSeVolumeByWorkId( spep_1 + 4, SE004, 79 );

--オーラ
SE005 = playSe( spep_1 + 28, 1036,"",0.7 );
setSeVolumeByWorkId( spep_1 + 28, SE005, 79 );

--顔カットイン
SE006 = playSe( spep_1 + 22, 1018 );

--オーラ
SE007 = playSe( spep_1 + 52, 1036,"",0.7 );
setSeVolumeByWorkId( spep_1 + 52, SE007, 79 );

--オーラ
SE008 = playSe( spep_1 + 76, 1036,"",0.7 );
setSeVolumeByWorkId( spep_1 + 76, SE008, 79 );

--オーラ
SE009 = playSe( spep_1 + 100, 1036,"",0.7 );
setSeVolumeByWorkId( spep_1 + 100, SE009, 79 );

--オーラ
SE010 = playSe( spep_1 + 116, 1036,"",0.7 );
setSeVolumeByWorkId( spep_1 + 116, SE010, 50 );

--ピッコロ構える
SE011 = playSe( spep_1 + 118, 1004 );
setTimeStretch( SE011, 1.25, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 120 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_1 + 102, 6, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 120;


------------------------------------------------------
-- 魔貫光殺砲構え(156F)
------------------------------------------------------
-- ** エフェクト等 ** --
ppause = entryEffectLife( spep_2 + 0, SP_03, 156, 0x100, -1, 0, 0, 0 );  --魔貫光殺砲構え(ef_003)
setEffMoveKey( spep_2 + 0, ppause, 0, 0 , 0 );
setEffMoveKey( spep_2 + 156, ppause, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, ppause, 1.0, 1.0 );
setEffScaleKey( spep_2 + 156, ppause, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ppause, 0 );
setEffRotateKey( spep_2 + 156, ppause, 0 );
setEffAlphaKey( spep_2 + 0, ppause, 255 );
setEffAlphaKey( spep_2 + 156 -1, ppause, 255 );
setEffAlphaKey( spep_2 + 156, ppause, 0 );

-- ** 音 ** --
--オーラ
SE012 = playSe( spep_2 + 20, 1036,"",0.7 );
setSeVolumeByWorkId( spep_2 + 20, SE012, 25 );

--ピッコロ構える
SE013 = playSe( spep_2 + 32, 1003 );

--オーラ
SE014 = playSe( spep_2 + 40, 1036,"",0.7 );
setSeVolumeByWorkId( spep_2 + 40, SE014, 25 );

--オーラ
SE015 = playSe( spep_2 + 64, 1036,"",0.7 );
setSeVolumeByWorkId( spep_2 + 64, SE015, 25 );

--オーラ
SE016 = playSe( spep_2 + 88, 1036,"",0.7 );
setSeVolumeByWorkId( spep_2 + 88, SE016, 25 );

--ピッコロ気溜め
SE017 = playSe( spep_2 + 110, 1122 );
setSeVolumeByWorkId( spep_2 + 110, SE017, 86 );

--オーラ
SE018 = playSe( spep_2 + 112, 1036,"",0.7 );
setSeVolumeByWorkId( spep_2 + 112, SE018, 25 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 156 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 146, 2, 8, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 156;


------------------------------------------------------
-- かめはめ波構え(28F)
------------------------------------------------------
-- ** エフェクト等 ** --
gpause = entryEffectLife( spep_3 + 0, SP_04, 28, 0x100, -1, 0, 0, 0 );  --かめはめ波構え①(ef_004)
setEffMoveKey( spep_3 + 0, gpause, 0, 0 , 0 );
setEffMoveKey( spep_3 + 28, gpause, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gpause, 1.0, 1.0 );
setEffScaleKey( spep_3 + 28, gpause, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gpause, 0 );
setEffRotateKey( spep_3 + 28, gpause, 0 );
setEffAlphaKey( spep_3 + 0, gpause, 255 );
setEffAlphaKey( spep_3 + 28 -1, gpause, 255 );
setEffAlphaKey( spep_3 + 28, gpause, 0 );

-- ** 音 ** --
--ピッコロ裏オーラ
SE019 = playSe( spep_3 + 0, 1036,"",0.7 );
setSeVolumeByWorkId( spep_3 + 0, SE019, 71 );

--ピッコロ裏オーラ
SE020 = playSe( spep_3 + 24, 1036,"",0.7 );
setSeVolumeByWorkId( spep_3 + 24, SE020, 71 );

--かめはめ波溜め
SE021 = playSe( spep_3 + 20, 1210,"",0.6 );
stopSe( spep_3 +28 +42 + 68, SE021, 42 );

--かめはめ波溜め
SE022 = playSe( spep_3 + 26, 1209 );
setSeVolumeByWorkId( spep_3 + 26, SE022, 60 );

--かめはめ波溜め
SE023 = playSe( spep_3 + 36, 1307 );
setSeVolumeByWorkId( spep_3 + 26, SE023, 251 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 28 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 28;


------------------------------------------------------
-- かめはめ波構え②(42F)
------------------------------------------------------
-- ** エフェクト等 ** --
gtame = entryEffectLife( spep_4 + 0, SP_05, 42, 0x100, -1, 0, 0, 0 );  --かめはめ波構え②(ef_005)
setEffMoveKey( spep_4 + 0, gtame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 42, gtame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, gtame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 42, gtame, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, gtame, 0 );
setEffRotateKey( spep_4 + 42, gtame, 0 );
setEffAlphaKey( spep_4 + 0, gtame, 255 );
setEffAlphaKey( spep_4 + 42 -1, gtame, 255 );
setEffAlphaKey( spep_4 + 42, gtame, 0 );

-- ** 音 ** --
--ピッコロ裏オーラ
SE024 = playSe( spep_4 + 12, 1036,"",0.7 );
setSeVolumeByWorkId( spep_4 + 12, SE024, 71 );

--ピッコロ裏オーラ
SE025 = playSe( spep_4 + 34, 1036,"",0.7 );
setSeVolumeByWorkId( spep_4 + 34, SE025, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 42 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 42;


------------------------------------------------------
-- かめはめ波構え→発射(126F)
------------------------------------------------------
-- ** エフェクト等 ** --
gshot = entryEffectLife( spep_5 + 0, SP_06, 126, 0x100, -1, 0, 0, 0 );  --かめはめ波構え→発射(ef_006)
setEffMoveKey( spep_5 + 0, gshot, 0, 0 , 0 );
setEffMoveKey( spep_5 + 126, gshot, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gshot, 1.0, 1.0 );
setEffScaleKey( spep_5 + 126, gshot, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gshot, 0 );
setEffRotateKey( spep_5 + 126, gshot, 0 );
setEffAlphaKey( spep_5 + 0, gshot, 255 );
setEffAlphaKey( spep_5 + 126 -1, gshot, 255 );
setEffAlphaKey( spep_5 + 126, gshot, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_5 -3 + 68,  10012, 47, 0x100, -1, 0, -22.4, 379.8 ); --ズオッ
setEffMoveKey( spep_5 -3 + 68, ctzuo, -22.4, 379.8 , 0 );
setEffMoveKey( spep_5 -3 + 70, ctzuo, -19.2, 374.7 , 0 );
setEffMoveKey( spep_5 -3 + 72, ctzuo, -24.5, 375.3 , 0 );
setEffMoveKey( spep_5 -3 + 74, ctzuo, -15, 369 , 0 );
setEffMoveKey( spep_5 -3 + 76, ctzuo, -18.7, 383.5 , 0 );
setEffMoveKey( spep_5 -3 + 78, ctzuo, -18.6, 369.2 , 0 );
setEffMoveKey( spep_5 -3 + 80, ctzuo, -19, 382.6 , 0 );
setEffMoveKey( spep_5 -3 + 82, ctzuo, -17.1, 368.5 , 0 );
setEffMoveKey( spep_5 -3 + 84, ctzuo, -18.8, 380.2 , 0 );
setEffMoveKey( spep_5 -3 + 86, ctzuo, -21.7, 364.9 , 0 );
setEffMoveKey( spep_5 -3 + 88, ctzuo, -18.7, 384.4 , 0 );
setEffMoveKey( spep_5 -3 + 90, ctzuo, -24.5, 371.1 , 0 );
setEffMoveKey( spep_5 -3 + 92, ctzuo, -13.8, 377 , 0 );
setEffMoveKey( spep_5 -3 + 94, ctzuo, -21.5, 365.9 , 0 );
setEffMoveKey( spep_5 -3 + 96, ctzuo, -15.2, 383.2 , 0 );
setEffMoveKey( spep_5 -3 + 98, ctzuo, -25.5, 369.5 , 0 );
setEffMoveKey( spep_5 -3 + 100, ctzuo, -11.1, 377.9 , 0 );
setEffMoveKey( spep_5 -3 + 102, ctzuo, -23.1, 371.4 , 0 );
setEffMoveKey( spep_5 -3 + 104, ctzuo, -11, 372.4 , 0 );
setEffMoveKey( spep_5 -3 + 106, ctzuo, -24.3, 375.2 , 0 );
setEffMoveKey( spep_5 -3 + 108, ctzuo, -10.9, 376.7 , 0 );
setEffMoveKey( spep_5 -3 + 110, ctzuo, -19.2, 374.7 , 0 );
setEffMoveKey( spep_5 -3 + 112, ctzuo, -24.5, 375.3 , 0 );
setEffMoveKey( spep_5 -3 + 114, ctzuo, -15, 369 , 0 );
setEffMoveKey( spep_5 -3 + 115, ctzuo, -15, 369 , 0 );

setEffScaleKey( spep_5 -3 + 68, ctzuo, 1.65, 1.65 );
setEffScaleKey( spep_5 -3 + 70, ctzuo, 1.95, 1.950 );
setEffScaleKey( spep_5 -3 + 115, ctzuo, 1.95, 1.950 );

setEffRotateKey( spep_5 -3 + 68, ctzuo, 25 );
setEffRotateKey( spep_5 -3 + 115, ctzuo, 25 );

setEffAlphaKey( spep_5 -3 + 68, ctzuo, 128 );
setEffAlphaKey( spep_5 -3 + 70, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 115, ctzuo, 255 );

-- ** 音 ** --
--ピッコロ裏オーラ
SE026 = playSe( spep_5 + 12, 1036,"",0.7 );
setSeVolumeByWorkId( spep_5 + 12, SE026, 71 );

--ピッコロ裏オーラ
SE027 = playSe( spep_5 + 36, 1036,"",0.7 );
setSeVolumeByWorkId( spep_5 + 36, SE027, 71 );

--かめはめ波発射
SE028 = playSe( spep_5 + 62, 1258 );
setSeVolumeByWorkId( spep_5 + 62, SE028, 62 );
stopSe( spep_5 +126 +116, SE028, 0 );

--かめはめ波発射
SE029 = playSe( spep_5 + 62, 1213 );
setSeVolumeByWorkId( spep_5 + 62, SE029, 70 );
stopSe( spep_5 +126 +116, SE029, 0 );

--かめはめ波発射
SE030 = playSe( spep_5 + 70, 1022 );

-- ** 黒背景 ** --
--entryFadeBg( spep_5 + 0, 0, 126 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_5 + 104, 14, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 126;


------------------------------------------------------
-- かめはめ波発射→敵直撃(116F)
------------------------------------------------------
-- ** エフェクト等 ** --
ghit = entryEffectLife( spep_6 + 0, SP_07, 116, 0x80, -1, 0, 0, 0 );  --かめはめ波発射→敵直撃(ef_007)
setEffMoveKey( spep_6 + 0, ghit, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, ghit, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, ghit, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, ghit, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, ghit, 0 );
setEffRotateKey( spep_6 + 116, ghit, 0 );
setEffAlphaKey( spep_6 + 0, ghit, 255 );
setEffAlphaKey( spep_6 + 116 -1, ghit, 255 );
setEffAlphaKey( spep_6 + 116, ghit, 0 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_6 + 0,  10014, 49 -3, 0x100, -1, 0, 85.2, 348.8 ); --ズドドドッ
setEffMoveKey( spep_6 + 0, ctzudodo, 85.2, 348.8 , 0 );
setEffMoveKey( spep_6 + 1, ctzudodo, 59.6, 315 , 0 );
setEffMoveKey( spep_6 + 2, ctzudodo, 18.5, 296.8 , 0 );
setEffMoveKey( spep_6 -3 + 6, ctzudodo, -7.5, 263.5 , 0 );
setEffMoveKey( spep_6 -3 + 8, ctzudodo, -48.1, 244.7 , 0 );
setEffMoveKey( spep_6 -3 + 10, ctzudodo, -74.5, 211.9 , 0 );
setEffMoveKey( spep_6 -3 + 12, ctzudodo, -114.7, 192.7 , 0 );
setEffMoveKey( spep_6 -3 + 14, ctzudodo, -141.7, 160.3 , 0 );
setEffMoveKey( spep_6 -3 + 16, ctzudodo, -116.7, 205.1 , 0 );
setEffMoveKey( spep_6 -3 + 18, ctzudodo, -116.3, 172.4 , 0 );
setEffMoveKey( spep_6 -3 + 20, ctzudodo, -118.7, 205 , 0 );
setEffMoveKey( spep_6 -3 + 22, ctzudodo, -120.8, 223.6 , 0 );
setEffMoveKey( spep_6 -3 + 24, ctzudodo, -135.2, 197.5 , 0 );
setEffMoveKey( spep_6 -3 + 26, ctzudodo, -134, 216.6 , 0 );
setEffMoveKey( spep_6 -3 + 28, ctzudodo, -142.9, 198.2 , 0 );
setEffMoveKey( spep_6 -3 + 30, ctzudodo, -124.2, 217.4 , 0 );
setEffMoveKey( spep_6 -3 + 32, ctzudodo, -133.7, 196.4 , 0 );
setEffMoveKey( spep_6 -3 + 34, ctzudodo, -125.4, 215.9 , 0 );
setEffMoveKey( spep_6 -3 + 36, ctzudodo, -130.1, 197.3 , 0 );
setEffMoveKey( spep_6 -3 + 38, ctzudodo, -127.1, 217 , 0 );
setEffMoveKey( spep_6 -3 + 40, ctzudodo, -131.8, 198.3 , 0 );
setEffMoveKey( spep_6 -3 + 42, ctzudodo, -129.5, 208 , 0 );
setEffMoveKey( spep_6 -3 + 44, ctzudodo, -137.5, 231.6 , 0 );
setEffMoveKey( spep_6 -3 + 46, ctzudodo, -129.5, 208 , 0 );
setEffMoveKey( spep_6 -3 + 49, ctzudodo, -134.4, 231.6 , 0 );

setEffScaleKey( spep_6 + 0, ctzudodo, 2.40, 2.40 );
setEffScaleKey( spep_6 + 1, ctzudodo, 2.34, 2.34 );
setEffScaleKey( spep_6 + 2, ctzudodo, 2.25, 2.25 );
setEffScaleKey( spep_6 -3 + 6, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_6 -3 + 8, ctzudodo, 2.13, 2.13 );
setEffScaleKey( spep_6 -3 + 10, ctzudodo, 2.07, 2.07 );
setEffScaleKey( spep_6 -3 + 12, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_6 -3 + 14, ctzudodo, 1.92, 1.92 );
setEffScaleKey( spep_6 -3 + 49, ctzudodo, 1.92, 1.92 );

setEffRotateKey( spep_6 + 0, ctzudodo, 17 );
setEffRotateKey( spep_6 -3 + 49, ctzudodo, 17 );

setEffAlphaKey( spep_6 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_6 -3 + 49, ctzudodo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 -3 + 50, 1, 1 );
changeAnime( spep_6 -3 + 50, 1, 102 );

a2=31;
b2=42;
setMoveKey( spep_6 -3 + 50, 1, 168.1 +a2, -87.5 +b2 , 0 );

setScaleKey( spep_6 -3 + 50, 1, 1.61, 1.61 );

setRotateKey( spep_6 -3 + 50, 1, 0 );

-- ** 音 ** --
--横向き発射
SE031 = playSe( spep_6 + 0, 1022 );
stopSe( spep_6 +114, SE031, 0 );

--横向き発射
SE032 = playSe( spep_6 + 0, 1146 );
stopSe( spep_6 +114, SE032, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_6 + 60 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE028, 0);
    stopSe( SP_dodge - 12, SE029, 0);
    stopSe( SP_dodge - 12, SE030, 0);
    stopSe( SP_dodge - 12, SE031, 0);
    stopSe( SP_dodge - 12, SE032, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 168.1 +a2, -87.5 +b2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 168.1 +a2, -87.5 +b2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.61, 1.61 );
    setScaleKey( SP_dodge + 10, 1, 1.61, 1.61 );

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

-- ** 敵キャラクター ** --
setDisp( spep_6 -3 + 82, 1, 0 );

setBlendColor( spep_6 -3 + 72, 1, 3, 0.16, 0.46, 0.80, 0.2 );
setBlendColor( spep_6 -3 + 74, 1, 3, 0.16, 0.46, 0.80, 0.3 );
setBlendColor( spep_6 -3 + 76, 1, 3, 0.16, 0.46, 0.80, 0.4 );
setBlendColor( spep_6 -3 + 78, 1, 3, 0.16, 0.46, 0.80, 0.5 );
setBlendColor( spep_6 -3 + 80, 1, 3, 0.16, 0.46, 0.80, 0.6 );
setBlendColor( spep_6 -3 + 81, 1, 3, 0.16, 0.46, 0.80, 0.6 );
setBlendColor( spep_6 -3 + 82, 1, 3, 0.16, 0.46, 0.80, 0 );


setMoveKey( spep_6 -3 + 70, 1, 168.1 +a2, -87.5 +b2 , 0 );
setMoveKey( spep_6 -3 + 72, 1, 164.3 +a2, -85 +b2 , 0 );
setMoveKey( spep_6 -3 + 74, 1, 160.5 +a2, -82.6 +b2 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 156.7 +a2, -80.1 +b2 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 152.9 +a2, -77.6 +b2 , 0 );
setMoveKey( spep_6 -3 + 80, 1, 149.1 +a2, -75.2 +b2 , 0 );
setMoveKey( spep_6 -3 + 82, 1, 149.1 +a2, -75.2 +b2 , 0 );

setScaleKey( spep_6 -3 + 74, 1, 1.61, 1.61 );
setScaleKey( spep_6 -3 + 76, 1, 1.60, 1.60 );
setScaleKey( spep_6 -3 + 82, 1, 1.60, 1.60 );

setRotateKey( spep_6 -3 + 82, 1, 0 );

-- ** 音 ** --

--岩崩れる
SE033 = playSe( spep_6 + 72, 1168 );
stopSe( spep_6 +114, SE033, 0 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 116;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_7 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 90, shuchusen, 0 );
setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_7 + 0, SE_05 );

--かめはめ波中
SE035 = playSe( spep_7 + 90, 1213 );
setSeVolumeByWorkId( spep_7 + 90, SE035, 4 );
setSeVolumeByWorkId( spep_7 + 92, SE035, 10 );
setSeVolumeByWorkId( spep_7 + 94, SE035, 16 );
setSeVolumeByWorkId( spep_7 + 96, SE035, 22 );
setSeVolumeByWorkId( spep_7 + 98, SE035, 28 );
stopSe( spep_7 +94 + 50, SE035, 36 );
setStartTimeMs( SE035,  167 );

--かめはめ波中
SE036 = playSe( spep_7 + 92, 1161 );
setSeVolumeByWorkId( spep_7 + 92, SE036, 32 );
stopSe( spep_7 +94 + 52, SE036, 28 );

-- ** 白背景 ** --
entryFadeBg( spep_7 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_7 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 94;


------------------------------------------------------
-- 悟飯の後、ピッコロ追撃(94F)
------------------------------------------------------
-- ** エフェクト等 ** --
ptame = entryEffectLife( spep_8 + 0, SP_08, 94, 0x100, -1, 0, 0, 0 );  --悟飯の後、ピッコロ追撃(ef_008)
setEffMoveKey( spep_8 + 0, ptame, 0, 0 , 0 );
setEffMoveKey( spep_8 + 94, ptame, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, ptame, 1.0, 1.0 );
setEffScaleKey( spep_8 + 94, ptame, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, ptame, 0 );
setEffRotateKey( spep_8 + 94, ptame, 0 );
setEffAlphaKey( spep_8 + 0, ptame, 255 );
setEffAlphaKey( spep_8 + 94 -1, ptame, 255 );
setEffAlphaKey( spep_8 + 94, ptame, 0 );

-- ** 書き文字エントリー ** --
ctzuobi = entryEffectLife( spep_8 -3 + 74,  10034, 21, 0x100, -1, 0, 168.3, 107.4 ); --ズォビッ
setEffMoveKey( spep_8 -3 + 74, ctzuobi, 168.3, 107.4 , 0 );
setEffMoveKey( spep_8 -3 + 76, ctzuobi, 172.1, 82.2 , 0 );
setEffMoveKey( spep_8 -3 + 78, ctzuobi, 173.6, 72.2 , 0 );
setEffMoveKey( spep_8 -3 + 80, ctzuobi, 174.5, 66 , 0 );
setEffMoveKey( spep_8 -3 + 82, ctzuobi, 175.1, 61.7 , 0 );
setEffMoveKey( spep_8 -3 + 84, ctzuobi, 175.6, 58.6 , 0 );
setEffMoveKey( spep_8 -3 + 86, ctzuobi, 175.9, 56.6 , 0 );
setEffMoveKey( spep_8 -3 + 88, ctzuobi, 176.1, 55.2 , 0 );
setEffMoveKey( spep_8 -3 + 90, ctzuobi, 176.2, 54.5 , 0 );
setEffMoveKey( spep_8 -3 + 92, ctzuobi, 176.8, 54.5 , 0 );
setEffMoveKey( spep_8 -3 + 94, ctzuobi, 169.9, 45.9 , 0 );
setEffMoveKey( spep_8 -3 + 95, ctzuobi, 169.9, 45.9 , 0 );

setEffScaleKey( spep_8 -3 + 74, ctzuobi, 1.02, 1.02 );
setEffScaleKey( spep_8 -3 + 76, ctzuobi, 1.15, 1.15 );
setEffScaleKey( spep_8 -3 + 78, ctzuobi, 1.2, 1.2 );
setEffScaleKey( spep_8 -3 + 80, ctzuobi, 1.23, 1.23 );
setEffScaleKey( spep_8 -3 + 82, ctzuobi, 1.26, 1.26 );
setEffScaleKey( spep_8 -3 + 84, ctzuobi, 1.27, 1.27 );
setEffScaleKey( spep_8 -3 + 86, ctzuobi, 1.28, 1.28 );
setEffScaleKey( spep_8 -3 + 88, ctzuobi, 1.29, 1.29 );
setEffScaleKey( spep_8 -3 + 92, ctzuobi, 1.29, 1.29 );
setEffScaleKey( spep_8 -3 + 94, ctzuobi, 1.36, 1.36 );
setEffScaleKey( spep_8 -3 + 95, ctzuobi, 1.36, 1.36 );

setEffRotateKey( spep_8 -3 + 74, ctzuobi, 45.2 );
setEffRotateKey( spep_8 -3 + 82, ctzuobi, 45.2 );
setEffRotateKey( spep_8 -3 + 84, ctzuobi, 45.1 );
setEffRotateKey( spep_8 -3 + 92, ctzuobi, 45.1 );
setEffRotateKey( spep_8 -3 + 94, ctzuobi, 45.2 );
setEffRotateKey( spep_8 -3 + 95, ctzuobi, 45.2 );

setEffAlphaKey( spep_8 -3 + 74, ctzuobi, 255 );
setEffAlphaKey( spep_8 -3 + 92, ctzuobi, 255 );
setEffAlphaKey( spep_8 -3 + 94, ctzuobi, 28 );
setEffAlphaKey( spep_8 -3 + 95, ctzuobi, 28 );

-- ** 音 ** --
--ピッコロアップ
SE037 = playSe( spep_8 + 40, 44 );

--ピッコロ腕前へ
SE039 = playSe( spep_8 + 68, 1003 );

--魔貫光殺砲発射
SE040 = playSe( spep_8 + 80, 1256 );
setSeVolumeByWorkId( spep_8 + 80, SE040, 141 );
setPitch( spep_8 + 80, SE040, 100 );
setTimeStretch( SE040, 1.07, 10, 1 );

--魔貫光殺砲発射
SE041 = playSe( spep_8 + 80, 1145 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 94 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 94;


------------------------------------------------------
-- 魔貫光殺砲発射→貫通(150F)
------------------------------------------------------
-- ** エフェクト等 ** --
pshot_f = entryEffectLife( spep_9 + 0, SP_09, 132, 0x80, -1, 0, 0, 0 );  --魔貫光殺砲発射→貫通(ef_009)
setEffMoveKey( spep_9 + 0, pshot_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 132, pshot_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, pshot_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 132, pshot_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, pshot_f, 0 );
setEffRotateKey( spep_9 + 132, pshot_f, 0 );
setEffAlphaKey( spep_9 + 0, pshot_f, 255 );
setEffAlphaKey( spep_9 + 132 -1, pshot_f, 255 );
setEffAlphaKey( spep_9 + 132, pshot_f, 0 );

pshot_b = entryEffectLife( spep_9 + 0, SP_10, 132, 0x100, -1, 0, 0, 0 );  --↑上のレーザー部分(ef_009_shot)
setEffMoveKey( spep_9 + 0, pshot_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 132, pshot_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, pshot_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 132, pshot_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, pshot_b, 0 );
setEffRotateKey( spep_9 + 132, pshot_b, 0 );
setEffAlphaKey( spep_9 + 0, pshot_b, 255 );
setEffAlphaKey( spep_9 + 132 -1, pshot_b, 255 );
setEffAlphaKey( spep_9 + 132, pshot_b, 0 );

-- ** 書き文字エントリー ** --
ctgyaruru = entryEffectLife( spep_9 +1 + 46,  10030, 85, 0x100, -1, 0, -126.5, 316.4 ); --ギャルルル
setEffMoveKey( spep_9 +1 + 46, ctgyaruru, -126.5, 316.4 , 0 );
setEffMoveKey( spep_9 +1 + 48, ctgyaruru, -118.9, 311.9 , 0 );
setEffMoveKey( spep_9 +1 + 50, ctgyaruru, -107.6, 313.9 , 0 );
setEffMoveKey( spep_9 +1 + 52, ctgyaruru, -107.9, 314.1 , 0 );
setEffMoveKey( spep_9 +1 + 54, ctgyaruru, -97.4, 311.9 , 0 );
setEffMoveKey( spep_9 +1 + 56, ctgyaruru, -101.1, 311.1 , 0 );
setEffMoveKey( spep_9 +1 + 58, ctgyaruru, -102.8, 307.6 , 0 );
setEffMoveKey( spep_9 +1 + 60, ctgyaruru, -97.5, 311.9 , 0 );
setEffMoveKey( spep_9 +1 + 62, ctgyaruru, -103.3, 313 , 0 );
setEffMoveKey( spep_9 +1 + 64, ctgyaruru, -95.4, 311.2 , 0 );
setEffMoveKey( spep_9 +1 + 66, ctgyaruru, -103.3, 306.7 , 0 );
setEffMoveKey( spep_9 +1 + 68, ctgyaruru, -97.1, 309.7 , 0 );
setEffMoveKey( spep_9 +1 + 70, ctgyaruru, -103.9, 312.2 , 0 );
setEffMoveKey( spep_9 +1 + 72, ctgyaruru, -96.7, 310.3 , 0 );
setEffMoveKey( spep_9 +1 + 74, ctgyaruru, -102.4, 310 , 0 );
setEffMoveKey( spep_9 +1 + 76, ctgyaruru, -95.2, 311.6 , 0 );
setEffMoveKey( spep_9 +1 + 78, ctgyaruru, -102.4, 307.4 , 0 );
setEffMoveKey( spep_9 +1 + 80, ctgyaruru, -98.6, 313 , 0 );
setEffMoveKey( spep_9 +1 + 82, ctgyaruru, -94.9, 307 , 0 );
setEffMoveKey( spep_9 +1 + 84, ctgyaruru, -99.7, 312.8 , 0 );
setEffMoveKey( spep_9 +1 + 86, ctgyaruru, -98.7, 304.3 , 0 );
setEffMoveKey( spep_9 +1 + 88, ctgyaruru, -95, 311.8 , 0 );
setEffMoveKey( spep_9 +1 + 90, ctgyaruru, -102.1, 308.7 , 0 );
setEffMoveKey( spep_9 +1 + 92, ctgyaruru, -93.8, 306.8 , 0 );
setEffMoveKey( spep_9 +1 + 94, ctgyaruru, -97.3, 313.3 , 0 );
setEffMoveKey( spep_9 +1 + 96, ctgyaruru, -95.3, 305 , 0 );
setEffMoveKey( spep_9 +1 + 98, ctgyaruru, -97.4, 311 , 0 );
setEffMoveKey( spep_9 +1 + 100, ctgyaruru, -92.4, 304.9 , 0 );
setEffMoveKey( spep_9 +1 + 102, ctgyaruru, -96.5, 311.4 , 0 );
setEffMoveKey( spep_9 +1 + 104, ctgyaruru, -91.2, 305.5 , 0 );
setEffMoveKey( spep_9 +1 + 106, ctgyaruru, -99.9, 305.2 , 0 );
setEffMoveKey( spep_9 +1 + 108, ctgyaruru, -92.3, 308.3 , 0 );
setEffMoveKey( spep_9 +1 + 110, ctgyaruru, -95.8, 304.4 , 0 );
setEffMoveKey( spep_9 +1 + 112, ctgyaruru, -92, 310.3 , 0 );
setEffMoveKey( spep_9 +1 + 114, ctgyaruru, -94.5, 304.6 , 0 );
setEffMoveKey( spep_9 +1 + 116, ctgyaruru, -94.3, 307 , 0 );
setEffMoveKey( spep_9 +1 + 118, ctgyaruru, -96.1, 303.4 , 0 );
setEffMoveKey( spep_9 +1 + 120, ctgyaruru, -90.7, 307.7 , 0 );
setEffMoveKey( spep_9 +1 + 122, ctgyaruru, -96.6, 308.8 , 0 );
setEffMoveKey( spep_9 +1 + 124, ctgyaruru, -88.7, 307 , 0 );
setEffMoveKey( spep_9 +1 + 126, ctgyaruru, -96.6, 302.6 , 0 );
setEffMoveKey( spep_9 +1 + 128, ctgyaruru, -90.3, 305.6 , 0 );
setEffMoveKey( spep_9 +1 + 130, ctgyaruru, -97.1, 308.1 , 0 );
setEffMoveKey( spep_9 +1 + 131, ctgyaruru, -97.1, 308.1 , 0 );
--setEffMoveKey( spep_9 +1 + 132, ctgyaruru, -90, 306.2 , 0 );
--setEffMoveKey( spep_9 +1 + 134, ctgyaruru, -95.6, 305.8 , 0 );
--setEffMoveKey( spep_9 +1 + 136, ctgyaruru, -88.4, 307.5 , 0 );
--setEffMoveKey( spep_9 +1 + 138, ctgyaruru, -95.6, 303.3 , 0 );
--setEffMoveKey( spep_9 +1 + 140, ctgyaruru, -91.8, 308.8 , 0 );
--setEffMoveKey( spep_9 +1 + 142, ctgyaruru, -88.1, 302.8 , 0 );
--setEffMoveKey( spep_9 +1 + 144, ctgyaruru, -92.9, 308.6 , 0 );
--setEffMoveKey( spep_9 +1 + 146, ctgyaruru, -91.9, 300.2 , 0 );
--setEffMoveKey( spep_9 +1 + 148, ctgyaruru, -88.2, 307.7 , 0 );
--setEffMoveKey( spep_9 +1 + 150, ctgyaruru, -95.3, 304.5 , 0 );
--setEffMoveKey( spep_9 +1 + 152, ctgyaruru, -90.3, 304.5 , 0 );

setEffScaleKey( spep_9 +1 + 46, ctgyaruru, 1.63, 1.63 );
setEffScaleKey( spep_9 +1 + 48, ctgyaruru, 1.98, 1.98 );
setEffScaleKey( spep_9 +1 + 50, ctgyaruru, 2.25, 2.25 );
setEffScaleKey( spep_9 +1 + 52, ctgyaruru, 2.44, 2.44 );
setEffScaleKey( spep_9 +1 + 54, ctgyaruru, 2.56, 2.56 );
setEffScaleKey( spep_9 +1 + 56, ctgyaruru, 2.6, 2.6 );
setEffScaleKey( spep_9 +1 + 131, ctgyaruru, 2.6, 2.6 );

setEffRotateKey( spep_9 +1 + 46, ctgyaruru, -7.2 );
setEffRotateKey( spep_9 +1 + 48, ctgyaruru, -7.2 );
setEffRotateKey( spep_9 +1 + 50, ctgyaruru, -7.1 );
setEffRotateKey( spep_9 +1 + 131, ctgyaruru, -7.1 );

setEffAlphaKey( spep_9 +1 + 46, ctgyaruru, 255 );
setEffAlphaKey( spep_9 +1 + 131, ctgyaruru, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_9 +1 + 36, 1, 1 );
setDisp( spep_9 +1 + 131, 1, 0 );
changeAnime( spep_9 +1 + 36, 1, 108 );

setBlendColor( spep_9 +1 + 36, 1, 3, 0.16, 0.46, 0.80, 0.6 );
setBlendColor( spep_9 +1 + 130, 1, 3, 0.16, 0.46, 0.80, 0.6 );
setBlendColor( spep_9 +1 + 131, 1, 3, 0.16, 0.46, 0.80, 0 );

a3=60;
b3=10;
setMoveKey( spep_9 +1 + 36, 1, 45 +a3, 5.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 38, 1, 44.9 +a3, 5.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 58, 1, 44.9 +a3, 5.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 60, 1, 44.4 +a3, -20.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 62, 1, -2.9 +a3, -20.7 -b3 , 0 );
setMoveKey( spep_9 +1 + 64, 1, 0.6 +a3, -15.1 -b3 , 0 );
setMoveKey( spep_9 +1 + 66, 1, -9.8 +a3, -23.2 -b3 , 0 );
setMoveKey( spep_9 +1 + 68, 1, -10.3 +a3, -11.6 -b3 , 0 );
setMoveKey( spep_9 +1 + 70, 1, -18.8 +a3, -19.7 -b3 , 0 );
setMoveKey( spep_9 +1 + 72, 1, -11.5 +a3, -12.1 -b3 , 0 );
setMoveKey( spep_9 +1 + 74, 1, -21.9 +a3, -22.1 -b3 , 0 );
setMoveKey( spep_9 +1 + 76, 1, -14.7 +a3, -14.5 -b3 , 0 );
setMoveKey( spep_9 +1 + 78, 1, -9.4 +a3, -20.6 -b3 , 0 );
setMoveKey( spep_9 +1 + 80, 1, -13.9 +a3, -9 -b3 , 0 );
setMoveKey( spep_9 +1 + 82, 1, -10.5 +a3, -19 -b3 , 0 );
setMoveKey( spep_9 +1 + 84, 1, -16.9 +a3, -9.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 86, 1, -7.7 +a3, -19.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 88, 1, 5.6 +a3, -7.8 -b3 , 0 );
setMoveKey( spep_9 +1 + 90, 1, -2.6 +a3, -17.8 -b3 , 0 );
setMoveKey( spep_9 +1 + 92, 1, -3.1 +a3, -4.2 -b3 , 0 );
setMoveKey( spep_9 +1 + 94, 1, 6.3 +a3, -14.1 -b3 , 0 );
setMoveKey( spep_9 +1 + 96, 1, -1.9 +a3, -0.5 -b3 , 0 );
setMoveKey( spep_9 +1 + 98, 1, -0.4 +a3, -12.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 100, 1, 7.1 +a3, -0.7 -b3 , 0 );
setMoveKey( spep_9 +1 + 102, 1, 2.8 +a3, -14.5 -b3 , 0 );
setMoveKey( spep_9 +1 + 104, 1, 2.5 +a3, 1 -b3 , 0 );
setMoveKey( spep_9 +1 + 106, 1, 10 +a3, -6.9 -b3 , 0 );
setMoveKey( spep_9 +1 + 108, 1, 15.6 +a3, -3.1 -b3 , 0 );
setMoveKey( spep_9 +1 + 110, 1, 15.3 +a3, 6.7 -b3 , 0 );
setMoveKey( spep_9 +1 + 112, 1, 9.2 +a3, -1.1 -b3 , 0 );
setMoveKey( spep_9 +1 + 114, 1, 23.7 +a3, -6.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 116, 1, -3.2 +a3, 5.1 -b3 , 0 );
setMoveKey( spep_9 +1 + 118, 1, 0.6 +a3, -21.8 -b3 , 0 );
setMoveKey( spep_9 +1 + 120, 1, -18.6 +a3, -10.3 -b3 , 0 );
setMoveKey( spep_9 +1 + 122, 1, 0.6 +a3, -25.7 -b3 , 0 );
setMoveKey( spep_9 +1 + 124, 1, -3.2 +a3, -2.6 -b3 , 0 );
setMoveKey( spep_9 +1 + 126, 1, 0.6 +a3, -29.5 -b3 , 0 );
setMoveKey( spep_9 +1 + 128, 1, 8.3 +a3, -6.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 130, 1, 23.7 +a3, -18 -b3 , 0 );
setMoveKey( spep_9 +1 + 131, 1, 23.7 +a3, -18 -b3 , 0 );
--setMoveKey( spep_9 +1 + 132, 1, 8.3 +a3, 1.3 , 0 );
--setMoveKey( spep_9 +1 + 134, 1, 27.6 +a3, -21.8 , 0 );
--setMoveKey( spep_9 +1 + 136, 1, 43 +a3, -2.6 , 0 );
--setMoveKey( spep_9 +1 + 138, 1, 23.7 +a3, -21.8 , 0 );
--setMoveKey( spep_9 +1 + 140, 1, 39.1 +a3, -2.6 , 0 );
--setMoveKey( spep_9 +1 + 142, 1, 23.7 +a3, -18 , 0 );
--setMoveKey( spep_9 +1 + 144, 1, 38.9 +a3, -2.8 , 0 );
--setMoveKey( spep_9 +1 + 146, 1, 27.5 +a3, -25.6 , 0 );
--setMoveKey( spep_9 +1 + 148, 1, 23.7 +a3, 1 , 0 );
--setMoveKey( spep_9 +1 + 150, 1, 38.9 +a3, -18 , 0 );
--setMoveKey( spep_9 +1 + 152, 1, 19.9, 4.8 , 0 );

s1=0.4
setScaleKey( spep_9 +1 + 36, 1, 3 +s1, 3 +s1 );
setScaleKey( spep_9 +1 + 131, 1, 3 +s1, 3 +s1 );

setRotateKey( spep_9 +1 + 36, 1, 0 );
setRotateKey( spep_9 +1 + 131, 1, 0 );

-- ** 音 ** --
--敵つらぬく
SE038 = playSe( spep_9 + 28, 1255 );
setSeVolumeByWorkId( spep_9 + 28, SE038, 14 );
setSeVolumeByWorkId( spep_9 + 32, SE038, 28 );
setSeVolumeByWorkId( spep_9 + 36, SE038, 42 );
setSeVolumeByWorkId( spep_9 + 40, SE038, 56 );
setSeVolumeByWorkId( spep_9 + 44, SE038, 70 );
setSeVolumeByWorkId( spep_9 + 48, SE038, 84 );
setSeVolumeByWorkId( spep_9 + 52, SE038, 96 );
setSeVolumeByWorkId( spep_9 + 54, SE038, 100 );
stopSe( spep_9 + 118, SE038, 50 );
setStartTimeMs( SE038,  1117 );

--敵つらぬく
SE042 = playSe( spep_9 + 34, 1296 );
setSeVolumeByWorkId( spep_9 + 34, SE042, 7 );
setSeVolumeByWorkId( spep_9 + 37, SE042, 14 );
setSeVolumeByWorkId( spep_9 + 40, SE042, 21 );
setSeVolumeByWorkId( spep_9 + 43, SE042, 28 );
setSeVolumeByWorkId( spep_9 + 46, SE042, 35 );
setSeVolumeByWorkId( spep_9 + 49, SE042, 42 );
setSeVolumeByWorkId( spep_9 + 52, SE042, 46 );
setSeVolumeByWorkId( spep_9 + 56, SE042, 51 );
stopSe( spep_9 + 118, SE042, 50 );
setStartTimeMs( SE042,  367 );

--敵つらぬく
SE043 = playSe( spep_9 + 34, 1021 );
setSeVolumeByWorkId( spep_9 + 34, SE043, 72 );

--敵つらぬく
SE044 = playSe( spep_9 + 58, 1114 );

--気弾とんでいく
SE045 = playSe( spep_9 + 124, 1212 );
setSeVolumeByWorkId( spep_9 + 124, SE045, 7 );
setSeVolumeByWorkId( spep_9 + 126, SE045, 14 );
setSeVolumeByWorkId( spep_9 + 128, SE045, 21 );
setSeVolumeByWorkId( spep_9 + 130, SE045, 28 );
setSeVolumeByWorkId( spep_9 + 132, SE045, 35 );
setSeVolumeByWorkId( spep_9 + 134, SE045, 41 );
setStartTimeMs( SE045,  750 );

--気弾とんでいく
SE046 = playSe( spep_9 + 124, 44 );

--気弾とんでいく
SE047 = playSe( spep_9 + 124, 1278 );
setSeVolumeByWorkId( spep_9 + 124, SE047, 83 );
stopSe( spep_9 +128 + 56, SE047, 34 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 132 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_9 + 122, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_10 = spep_9 + 132;


------------------------------------------------------
-- 俯瞰でラスト(116F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_10 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --俯瞰でラスト(ef_010)
setEffMoveKey( spep_10 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 116, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 116, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, finish_f, 0 );
setEffRotateKey( spep_10 + 116, finish_f, 0 );
setEffAlphaKey( spep_10 + 0, finish_f, 255 );
setEffAlphaKey( spep_10 + 116, finish_f, 255 );

-- ** 音 ** --
--気弾とんでいく
SE048 = playSe( spep_10 + 12, 1304,"",0.6 );
setSeVolumeByWorkId( spep_10 + 12, SE048, 141 );
setPitch( spep_10 + 12, SE048, 300 );
setTimeStretch( SE048, 1.2, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_10 + 94, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_10 + 6 );
endPhase( spep_10 + 106 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 敵との対峙44F
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 44, 0x80, -1, 0, 0, 0 );  --敵との対峙(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 44, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 44, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 44, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 44 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 44, first_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 44, 1, 0 );
changeAnime( spep_0 + 0, 1, 102 );

a1=40;
b1=50;
setMoveKey( spep_0 + 0, 1, 144.7 +a1, -68.4 +b1, 0 );
setMoveKey( spep_0 + 1, 1, 144.3 +a1, -68.5 +b1 , 0 );
setMoveKey( spep_0 + 2, 1, 143.9 +a1, -68.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 143.4 +a1, -68.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 143.4 +a1, -68.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 143 +a1, -68.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 143 +a1, -68.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 142.6 +a1, -68.9 +b1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 142.1 +a1, -69 +b1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 141.7 +a1, -69.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 141.3 +a1, -69.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 140.8 +a1, -69.3 +b1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 140.4 +a1, -69.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 140 +a1, -69.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 139.6 +a1, -69.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 139.1 +a1, -69.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 138.7 +a1, -69.9 +b1 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 138.3 +a1, -70 +b1 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 137.8 +a1, -70.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 137.4 +a1, -70.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 137 +a1, -70.3 +b1 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 136.5 +a1, -70.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 136.1 +a1, -70.5 +b1 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 135.7 +a1, -70.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 135.3 +a1, -70.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 45, 1, 135.3 +a1, -70.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 47, 1, 135.3 +a1, -70.7 +b1 , 0 );
--setMoveKey( spep_0 -3 + 46, 1, 134.8, -70.8 , 0 );

setScaleKey( spep_0 + 0, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 1, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 2, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 3, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 4, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 5, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 6, 1, 1.62, 1.62 );
setScaleKey( spep_0 -3 + 38, 1, 1.62, 1.62 );
setScaleKey( spep_0 -3 + 40, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 47, 1, 1.61, 1.61 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 -3 + 47, 1, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSe( spep_0 + 0, 1036,"",0.7 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--環境音
SE002 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 18 );
stopSe( spep_0 +44 +120 +156 +28 + 36, SE002, 0 );

--オーラ
SE003 = playSe( spep_0 + 24, 1036,"",0.7 );
setSeVolumeByWorkId( spep_0 + 24, SE003, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 44 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 44;


------------------------------------------------------
-- 振り返り→セリフカットイン(120F)
------------------------------------------------------
-- ** エフェクト等 ** --
cutin = entryEffectLife( spep_1 + 0, SP_02, 120, 0x100, -1, 0, 0, 0 );  --振り返り→セリフカットイン(ef_002)
setEffMoveKey( spep_1 + 0, cutin, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, cutin, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, cutin, -1.0, 1.0 );
setEffScaleKey( spep_1 + 120, cutin, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, cutin, 0 );
setEffRotateKey( spep_1 + 120, cutin, 0 );
setEffAlphaKey( spep_1 + 0, cutin, 255 );
setEffAlphaKey( spep_1 + 120 -1, cutin, 255 );
setEffAlphaKey( spep_1 + 120, cutin, 0 );

spep_x = spep_1 + 16;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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

-- ** 音 ** --
--オーラ
SE004 = playSe( spep_1 + 4, 1036,"",0.7 );
setSeVolumeByWorkId( spep_1 + 4, SE004, 79 );

--オーラ
SE005 = playSe( spep_1 + 28, 1036,"",0.7 );
setSeVolumeByWorkId( spep_1 + 28, SE005, 79 );

--顔カットイン
SE006 = playSe( spep_1 + 22, 1018 );

--オーラ
SE007 = playSe( spep_1 + 52, 1036,"",0.7 );
setSeVolumeByWorkId( spep_1 + 52, SE007, 79 );

--オーラ
SE008 = playSe( spep_1 + 76, 1036,"",0.7 );
setSeVolumeByWorkId( spep_1 + 76, SE008, 79 );

--オーラ
SE009 = playSe( spep_1 + 100, 1036,"",0.7 );
setSeVolumeByWorkId( spep_1 + 100, SE009, 79 );

--オーラ
SE010 = playSe( spep_1 + 116, 1036,"",0.7 );
setSeVolumeByWorkId( spep_1 + 116, SE010, 50 );

--ピッコロ構える
SE011 = playSe( spep_1 + 118, 1004 );
setTimeStretch( SE011, 1.25, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 120 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_1 + 102, 6, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 120;


------------------------------------------------------
-- 魔貫光殺砲構え(156F)
------------------------------------------------------
-- ** エフェクト等 ** --
ppause = entryEffectLife( spep_2 + 0, SP_03r, 156, 0x100, -1, 0, 0, 0 );  --魔貫光殺砲構え(ef_003)
setEffMoveKey( spep_2 + 0, ppause, 0, 0 , 0 );
setEffMoveKey( spep_2 + 156, ppause, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, ppause, -1.0, 1.0 );
setEffScaleKey( spep_2 + 156, ppause, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ppause, 0 );
setEffRotateKey( spep_2 + 156, ppause, 0 );
setEffAlphaKey( spep_2 + 0, ppause, 255 );
setEffAlphaKey( spep_2 + 156 -1, ppause, 255 );
setEffAlphaKey( spep_2 + 156, ppause, 0 );

-- ** 音 ** --
--オーラ
SE012 = playSe( spep_2 + 20, 1036,"",0.7 );
setSeVolumeByWorkId( spep_2 + 20, SE012, 25 );

--ピッコロ構える
SE013 = playSe( spep_2 + 32, 1003 );

--オーラ
SE014 = playSe( spep_2 + 40, 1036,"",0.7 );
setSeVolumeByWorkId( spep_2 + 40, SE014, 25 );

--オーラ
SE015 = playSe( spep_2 + 64, 1036,"",0.7 );
setSeVolumeByWorkId( spep_2 + 64, SE015, 25 );

--オーラ
SE016 = playSe( spep_2 + 88, 1036,"",0.7 );
setSeVolumeByWorkId( spep_2 + 88, SE016, 25 );

--ピッコロ気溜め
SE017 = playSe( spep_2 + 110, 1122 );
setSeVolumeByWorkId( spep_2 + 110, SE017, 86 );

--オーラ
SE018 = playSe( spep_2 + 112, 1036,"",0.7 );
setSeVolumeByWorkId( spep_2 + 112, SE018, 25 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 156 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 146, 2, 8, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 156;


------------------------------------------------------
-- かめはめ波構え(28F)
------------------------------------------------------
-- ** エフェクト等 ** --
gpause = entryEffectLife( spep_3 + 0, SP_04, 28, 0x100, -1, 0, 0, 0 );  --かめはめ波構え①(ef_004)
setEffMoveKey( spep_3 + 0, gpause, 0, 0 , 0 );
setEffMoveKey( spep_3 + 28, gpause, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gpause, -1.0, 1.0 );
setEffScaleKey( spep_3 + 28, gpause, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gpause, 0 );
setEffRotateKey( spep_3 + 28, gpause, 0 );
setEffAlphaKey( spep_3 + 0, gpause, 255 );
setEffAlphaKey( spep_3 + 28 -1, gpause, 255 );
setEffAlphaKey( spep_3 + 28, gpause, 0 );

-- ** 音 ** --
--ピッコロ裏オーラ
SE019 = playSe( spep_3 + 0, 1036,"",0.7 );
setSeVolumeByWorkId( spep_3 + 0, SE019, 71 );

--ピッコロ裏オーラ
SE020 = playSe( spep_3 + 24, 1036,"",0.7 );
setSeVolumeByWorkId( spep_3 + 24, SE020, 71 );

--かめはめ波溜め
SE021 = playSe( spep_3 + 20, 1210,"",0.6 );
stopSe( spep_3 +28 +42 + 68, SE021, 42 );

--かめはめ波溜め
SE022 = playSe( spep_3 + 26, 1209 );
setSeVolumeByWorkId( spep_3 + 26, SE022, 60 );

--かめはめ波溜め
SE023 = playSe( spep_3 + 36, 1307 );
setSeVolumeByWorkId( spep_3 + 26, SE023, 251 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 28 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 28;


------------------------------------------------------
-- かめはめ波構え②(42F)
------------------------------------------------------
-- ** エフェクト等 ** --
gtame = entryEffectLife( spep_4 + 0, SP_05r, 42, 0x100, -1, 0, 0, 0 );  --かめはめ波構え②(ef_005)
setEffMoveKey( spep_4 + 0, gtame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 42, gtame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, gtame, -1.0, 1.0 );
setEffScaleKey( spep_4 + 42, gtame, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, gtame, 0 );
setEffRotateKey( spep_4 + 42, gtame, 0 );
setEffAlphaKey( spep_4 + 0, gtame, 255 );
setEffAlphaKey( spep_4 + 42 -1, gtame, 255 );
setEffAlphaKey( spep_4 + 42, gtame, 0 );

-- ** 音 ** --
--ピッコロ裏オーラ
SE024 = playSe( spep_4 + 12, 1036,"",0.7 );
setSeVolumeByWorkId( spep_4 + 12, SE024, 71 );

--ピッコロ裏オーラ
SE025 = playSe( spep_4 + 34, 1036,"",0.7 );
setSeVolumeByWorkId( spep_4 + 34, SE025, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 42 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 42;


------------------------------------------------------
-- かめはめ波構え→発射(126F)
------------------------------------------------------
-- ** エフェクト等 ** --
gshot = entryEffectLife( spep_5 + 0, SP_06, 126, 0x100, -1, 0, 0, 0 );  --かめはめ波構え→発射(ef_006)
setEffMoveKey( spep_5 + 0, gshot, 0, 0 , 0 );
setEffMoveKey( spep_5 + 126, gshot, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gshot, -1.0, 1.0 );
setEffScaleKey( spep_5 + 126, gshot, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gshot, 0 );
setEffRotateKey( spep_5 + 126, gshot, 0 );
setEffAlphaKey( spep_5 + 0, gshot, 255 );
setEffAlphaKey( spep_5 + 126 -1, gshot, 255 );
setEffAlphaKey( spep_5 + 126, gshot, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_5 -3 + 68,  10012, 47, 0x100, -1, 0, -22.4, 379.8 ); --ズオッ
setEffMoveKey( spep_5 -3 + 68, ctzuo, -22.4, 379.8 , 0 );
setEffMoveKey( spep_5 -3 + 70, ctzuo, -19.2, 374.7 , 0 );
setEffMoveKey( spep_5 -3 + 72, ctzuo, -24.5, 375.3 , 0 );
setEffMoveKey( spep_5 -3 + 74, ctzuo, -15, 369 , 0 );
setEffMoveKey( spep_5 -3 + 76, ctzuo, -18.7, 383.5 , 0 );
setEffMoveKey( spep_5 -3 + 78, ctzuo, -18.6, 369.2 , 0 );
setEffMoveKey( spep_5 -3 + 80, ctzuo, -19, 382.6 , 0 );
setEffMoveKey( spep_5 -3 + 82, ctzuo, -17.1, 368.5 , 0 );
setEffMoveKey( spep_5 -3 + 84, ctzuo, -18.8, 380.2 , 0 );
setEffMoveKey( spep_5 -3 + 86, ctzuo, -21.7, 364.9 , 0 );
setEffMoveKey( spep_5 -3 + 88, ctzuo, -18.7, 384.4 , 0 );
setEffMoveKey( spep_5 -3 + 90, ctzuo, -24.5, 371.1 , 0 );
setEffMoveKey( spep_5 -3 + 92, ctzuo, -13.8, 377 , 0 );
setEffMoveKey( spep_5 -3 + 94, ctzuo, -21.5, 365.9 , 0 );
setEffMoveKey( spep_5 -3 + 96, ctzuo, -15.2, 383.2 , 0 );
setEffMoveKey( spep_5 -3 + 98, ctzuo, -25.5, 369.5 , 0 );
setEffMoveKey( spep_5 -3 + 100, ctzuo, -11.1, 377.9 , 0 );
setEffMoveKey( spep_5 -3 + 102, ctzuo, -23.1, 371.4 , 0 );
setEffMoveKey( spep_5 -3 + 104, ctzuo, -11, 372.4 , 0 );
setEffMoveKey( spep_5 -3 + 106, ctzuo, -24.3, 375.2 , 0 );
setEffMoveKey( spep_5 -3 + 108, ctzuo, -10.9, 376.7 , 0 );
setEffMoveKey( spep_5 -3 + 110, ctzuo, -19.2, 374.7 , 0 );
setEffMoveKey( spep_5 -3 + 112, ctzuo, -24.5, 375.3 , 0 );
setEffMoveKey( spep_5 -3 + 114, ctzuo, -15, 369 , 0 );
setEffMoveKey( spep_5 -3 + 115, ctzuo, -15, 369 , 0 );

setEffScaleKey( spep_5 -3 + 68, ctzuo, 1.65, 1.65 );
setEffScaleKey( spep_5 -3 + 70, ctzuo, 1.95, 1.950 );
setEffScaleKey( spep_5 -3 + 115, ctzuo, 1.95, 1.950 );

setEffRotateKey( spep_5 -3 + 68, ctzuo, -25 );
setEffRotateKey( spep_5 -3 + 115, ctzuo, -25 );

setEffAlphaKey( spep_5 -3 + 68, ctzuo, 128 );
setEffAlphaKey( spep_5 -3 + 70, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 115, ctzuo, 255 );

-- ** 音 ** --
--ピッコロ裏オーラ
SE026 = playSe( spep_5 + 12, 1036,"",0.7 );
setSeVolumeByWorkId( spep_5 + 12, SE026, 71 );

--ピッコロ裏オーラ
SE027 = playSe( spep_5 + 36, 1036,"",0.7 );
setSeVolumeByWorkId( spep_5 + 36, SE027, 71 );

--かめはめ波発射
SE028 = playSe( spep_5 + 62, 1258 );
setSeVolumeByWorkId( spep_5 + 62, SE028, 62 );
stopSe( spep_5 +126 +116, SE028, 0 );

--かめはめ波発射
SE029 = playSe( spep_5 + 62, 1213 );
setSeVolumeByWorkId( spep_5 + 62, SE029, 70 );
stopSe( spep_5 +126 +116, SE029, 0 );

--かめはめ波発射
SE030 = playSe( spep_5 + 70, 1022 );

-- ** 黒背景 ** --
--entryFadeBg( spep_5 + 0, 0, 126 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_5 + 104, 14, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 126;


------------------------------------------------------
-- かめはめ波発射→敵直撃(116F)
------------------------------------------------------
-- ** エフェクト等 ** --
ghit = entryEffectLife( spep_6 + 0, SP_07r, 116, 0x80, -1, 0, 0, 0 );  --かめはめ波発射→敵直撃(ef_007)
setEffMoveKey( spep_6 + 0, ghit, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, ghit, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, ghit, -1.0, 1.0 );
setEffScaleKey( spep_6 + 116, ghit, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, ghit, 0 );
setEffRotateKey( spep_6 + 116, ghit, 0 );
setEffAlphaKey( spep_6 + 0, ghit, 255 );
setEffAlphaKey( spep_6 + 116 -1, ghit, 255 );
setEffAlphaKey( spep_6 + 116, ghit, 0 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_6 + 0,  10014, 49 -3, 0x100, -1, 0, 85.2, 348.8 ); --ズドドドッ
setEffMoveKey( spep_6 + 0, ctzudodo, 85.2, 348.8 , 0 );
setEffMoveKey( spep_6 + 1, ctzudodo, 59.6, 315 , 0 );
setEffMoveKey( spep_6 + 2, ctzudodo, 18.5, 296.8 , 0 );
setEffMoveKey( spep_6 -3 + 6, ctzudodo, -7.5, 263.5 , 0 );
setEffMoveKey( spep_6 -3 + 8, ctzudodo, -48.1, 244.7 , 0 );
setEffMoveKey( spep_6 -3 + 10, ctzudodo, -74.5, 211.9 , 0 );
setEffMoveKey( spep_6 -3 + 12, ctzudodo, -114.7, 192.7 , 0 );
setEffMoveKey( spep_6 -3 + 14, ctzudodo, -141.7, 160.3 , 0 );
setEffMoveKey( spep_6 -3 + 16, ctzudodo, -116.7, 205.1 , 0 );
setEffMoveKey( spep_6 -3 + 18, ctzudodo, -116.3, 172.4 , 0 );
setEffMoveKey( spep_6 -3 + 20, ctzudodo, -118.7, 205 , 0 );
setEffMoveKey( spep_6 -3 + 22, ctzudodo, -120.8, 223.6 , 0 );
setEffMoveKey( spep_6 -3 + 24, ctzudodo, -135.2, 197.5 , 0 );
setEffMoveKey( spep_6 -3 + 26, ctzudodo, -134, 216.6 , 0 );
setEffMoveKey( spep_6 -3 + 28, ctzudodo, -142.9, 198.2 , 0 );
setEffMoveKey( spep_6 -3 + 30, ctzudodo, -124.2, 217.4 , 0 );
setEffMoveKey( spep_6 -3 + 32, ctzudodo, -133.7, 196.4 , 0 );
setEffMoveKey( spep_6 -3 + 34, ctzudodo, -125.4, 215.9 , 0 );
setEffMoveKey( spep_6 -3 + 36, ctzudodo, -130.1, 197.3 , 0 );
setEffMoveKey( spep_6 -3 + 38, ctzudodo, -127.1, 217 , 0 );
setEffMoveKey( spep_6 -3 + 40, ctzudodo, -131.8, 198.3 , 0 );
setEffMoveKey( spep_6 -3 + 42, ctzudodo, -129.5, 208 , 0 );
setEffMoveKey( spep_6 -3 + 44, ctzudodo, -137.5, 231.6 , 0 );
setEffMoveKey( spep_6 -3 + 46, ctzudodo, -129.5, 208 , 0 );
setEffMoveKey( spep_6 -3 + 49, ctzudodo, -134.4, 231.6 , 0 );

setEffScaleKey( spep_6 + 0, ctzudodo, 2.40, 2.40 );
setEffScaleKey( spep_6 + 1, ctzudodo, 2.34, 2.34 );
setEffScaleKey( spep_6 + 2, ctzudodo, 2.25, 2.25 );
setEffScaleKey( spep_6 -3 + 6, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_6 -3 + 8, ctzudodo, 2.13, 2.13 );
setEffScaleKey( spep_6 -3 + 10, ctzudodo, 2.07, 2.07 );
setEffScaleKey( spep_6 -3 + 12, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_6 -3 + 14, ctzudodo, 1.92, 1.92 );
setEffScaleKey( spep_6 -3 + 49, ctzudodo, 1.92, 1.92 );

setEffRotateKey( spep_6 + 0, ctzudodo, -17 );
setEffRotateKey( spep_6 -3 + 49, ctzudodo, -17 );

setEffAlphaKey( spep_6 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_6 -3 + 49, ctzudodo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 -3 + 50, 1, 1 );
changeAnime( spep_6 -3 + 50, 1, 102 );

a2=31;
b2=42;
setMoveKey( spep_6 -3 + 50, 1, 168.1 +a2, -87.5 +b2 , 0 );

setScaleKey( spep_6 -3 + 50, 1, 1.61, 1.61 );

setRotateKey( spep_6 -3 + 50, 1, 0 );

-- ** 音 ** --
--横向き発射
SE031 = playSe( spep_6 + 0, 1022 );
stopSe( spep_6 +114, SE031, 0 );

--横向き発射
SE032 = playSe( spep_6 + 0, 1146 );
stopSe( spep_6 +114, SE032, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_6 + 60 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE028, 0);
    stopSe( SP_dodge - 12, SE029, 0);
    stopSe( SP_dodge - 12, SE030, 0);
    stopSe( SP_dodge - 12, SE031, 0);
    stopSe( SP_dodge - 12, SE032, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 168.1 +a2, -87.5 +b2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 168.1 +a2, -87.5 +b2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.61, 1.61 );
    setScaleKey( SP_dodge + 10, 1, 1.61, 1.61 );

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

-- ** 敵キャラクター ** --
setDisp( spep_6 -3 + 82, 1, 0 );

setBlendColor( spep_6 -3 + 72, 1, 3, 0.16, 0.46, 0.80, 0.2 );
setBlendColor( spep_6 -3 + 74, 1, 3, 0.16, 0.46, 0.80, 0.3 );
setBlendColor( spep_6 -3 + 76, 1, 3, 0.16, 0.46, 0.80, 0.4 );
setBlendColor( spep_6 -3 + 78, 1, 3, 0.16, 0.46, 0.80, 0.5 );
setBlendColor( spep_6 -3 + 80, 1, 3, 0.16, 0.46, 0.80, 0.6 );
setBlendColor( spep_6 -3 + 81, 1, 3, 0.16, 0.46, 0.80, 0.6 );
setBlendColor( spep_6 -3 + 82, 1, 3, 0.16, 0.46, 0.80, 0 );


setMoveKey( spep_6 -3 + 70, 1, 168.1 +a2, -87.5 +b2 , 0 );
setMoveKey( spep_6 -3 + 72, 1, 164.3 +a2, -85 +b2 , 0 );
setMoveKey( spep_6 -3 + 74, 1, 160.5 +a2, -82.6 +b2 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 156.7 +a2, -80.1 +b2 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 152.9 +a2, -77.6 +b2 , 0 );
setMoveKey( spep_6 -3 + 80, 1, 149.1 +a2, -75.2 +b2 , 0 );
setMoveKey( spep_6 -3 + 82, 1, 149.1 +a2, -75.2 +b2 , 0 );

setScaleKey( spep_6 -3 + 74, 1, 1.61, 1.61 );
setScaleKey( spep_6 -3 + 76, 1, 1.60, 1.60 );
setScaleKey( spep_6 -3 + 82, 1, 1.60, 1.60 );

setRotateKey( spep_6 -3 + 82, 1, 0 );

-- ** 音 ** --

--岩崩れる
SE033 = playSe( spep_6 + 72, 1168 );
stopSe( spep_6 +114, SE033, 0 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 116;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_7 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 90, shuchusen, 0 );
setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_7 + 0, SE_05 );

--かめはめ波中
SE035 = playSe( spep_7 + 90, 1213 );
setSeVolumeByWorkId( spep_7 + 90, SE035, 4 );
setSeVolumeByWorkId( spep_7 + 92, SE035, 10 );
setSeVolumeByWorkId( spep_7 + 94, SE035, 16 );
setSeVolumeByWorkId( spep_7 + 96, SE035, 22 );
setSeVolumeByWorkId( spep_7 + 98, SE035, 28 );
stopSe( spep_7 +94 + 50, SE035, 36 );
setStartTimeMs( SE035,  167 );

--かめはめ波中
SE036 = playSe( spep_7 + 92, 1161 );
setSeVolumeByWorkId( spep_7 + 92, SE036, 32 );
stopSe( spep_7 +94 + 52, SE036, 28 );

-- ** 白背景 ** --
entryFadeBg( spep_7 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_7 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 94;


------------------------------------------------------
-- 悟飯の後、ピッコロ追撃(94F)
------------------------------------------------------
-- ** エフェクト等 ** --
ptame = entryEffectLife( spep_8 + 0, SP_08, 94, 0x100, -1, 0, 0, 0 );  --悟飯の後、ピッコロ追撃(ef_008)
setEffMoveKey( spep_8 + 0, ptame, 0, 0 , 0 );
setEffMoveKey( spep_8 + 94, ptame, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, ptame, -1.0, 1.0 );
setEffScaleKey( spep_8 + 94, ptame, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, ptame, 0 );
setEffRotateKey( spep_8 + 94, ptame, 0 );
setEffAlphaKey( spep_8 + 0, ptame, 255 );
setEffAlphaKey( spep_8 + 94 -1, ptame, 255 );
setEffAlphaKey( spep_8 + 94, ptame, 0 );

-- ** 書き文字エントリー ** --
ctzuobi = entryEffectLife( spep_8 -3 + 74,  10034, 21, 0x100, -1, 0, 168.3, 107.4 ); --ズォビッ
setEffMoveKey( spep_8 -3 + 74, ctzuobi, -168.3, 107.4 , 0 );
setEffMoveKey( spep_8 -3 + 76, ctzuobi, -172.1, 82.2 , 0 );
setEffMoveKey( spep_8 -3 + 78, ctzuobi, -173.6, 72.2 , 0 );
setEffMoveKey( spep_8 -3 + 80, ctzuobi, -174.5, 66 , 0 );
setEffMoveKey( spep_8 -3 + 82, ctzuobi, -175.1, 61.7 , 0 );
setEffMoveKey( spep_8 -3 + 84, ctzuobi, -175.6, 58.6 , 0 );
setEffMoveKey( spep_8 -3 + 86, ctzuobi, -175.9, 56.6 , 0 );
setEffMoveKey( spep_8 -3 + 88, ctzuobi, -176.1, 55.2 , 0 );
setEffMoveKey( spep_8 -3 + 90, ctzuobi, -176.2, 54.5 , 0 );
setEffMoveKey( spep_8 -3 + 92, ctzuobi, -176.8, 54.5 , 0 );
setEffMoveKey( spep_8 -3 + 94, ctzuobi, -169.9, 45.9 , 0 );
setEffMoveKey( spep_8 -3 + 95, ctzuobi, -169.9, 45.9 , 0 );

setEffScaleKey( spep_8 -3 + 74, ctzuobi, 1.02, 1.02 );
setEffScaleKey( spep_8 -3 + 76, ctzuobi, 1.15, 1.15 );
setEffScaleKey( spep_8 -3 + 78, ctzuobi, 1.2, 1.2 );
setEffScaleKey( spep_8 -3 + 80, ctzuobi, 1.23, 1.23 );
setEffScaleKey( spep_8 -3 + 82, ctzuobi, 1.26, 1.26 );
setEffScaleKey( spep_8 -3 + 84, ctzuobi, 1.27, 1.27 );
setEffScaleKey( spep_8 -3 + 86, ctzuobi, 1.28, 1.28 );
setEffScaleKey( spep_8 -3 + 88, ctzuobi, 1.29, 1.29 );
setEffScaleKey( spep_8 -3 + 92, ctzuobi, 1.29, 1.29 );
setEffScaleKey( spep_8 -3 + 94, ctzuobi, 1.36, 1.36 );
setEffScaleKey( spep_8 -3 + 95, ctzuobi, 1.36, 1.36 );

setEffRotateKey( spep_8 -3 + 74, ctzuobi, -45.2 );
setEffRotateKey( spep_8 -3 + 82, ctzuobi, -45.2 );
setEffRotateKey( spep_8 -3 + 84, ctzuobi, -45.1 );
setEffRotateKey( spep_8 -3 + 92, ctzuobi, -45.1 );
setEffRotateKey( spep_8 -3 + 94, ctzuobi, -45.2 );
setEffRotateKey( spep_8 -3 + 95, ctzuobi, -45.2 );

setEffAlphaKey( spep_8 -3 + 74, ctzuobi, 255 );
setEffAlphaKey( spep_8 -3 + 92, ctzuobi, 255 );
setEffAlphaKey( spep_8 -3 + 94, ctzuobi, 28 );
setEffAlphaKey( spep_8 -3 + 95, ctzuobi, 28 );

-- ** 音 ** --
--ピッコロアップ
SE037 = playSe( spep_8 + 40, 44 );

--ピッコロ腕前へ
SE039 = playSe( spep_8 + 68, 1003 );

--魔貫光殺砲発射
SE040 = playSe( spep_8 + 80, 1256 );
setSeVolumeByWorkId( spep_8 + 80, SE040, 141 );
setPitch( spep_8 + 80, SE040, 100 );
setTimeStretch( SE040, 1.07, 10, 1 );

--魔貫光殺砲発射
SE041 = playSe( spep_8 + 80, 1145 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 94 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 94;


------------------------------------------------------
-- 魔貫光殺砲発射→貫通(150F)
------------------------------------------------------
-- ** エフェクト等 ** --
pshot_f = entryEffectLife( spep_9 + 0, SP_09r, 132, 0x80, -1, 0, 0, 0 );  --魔貫光殺砲発射→貫通(ef_009)
setEffMoveKey( spep_9 + 0, pshot_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 132, pshot_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, pshot_f, -1.0, 1.0 );
setEffScaleKey( spep_9 + 132, pshot_f, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, pshot_f, 0 );
setEffRotateKey( spep_9 + 132, pshot_f, 0 );
setEffAlphaKey( spep_9 + 0, pshot_f, 255 );
setEffAlphaKey( spep_9 + 132 -1, pshot_f, 255 );
setEffAlphaKey( spep_9 + 132, pshot_f, 0 );

pshot_b = entryEffectLife( spep_9 + 0, SP_10r, 132, 0x100, -1, 0, 0, 0 );  --↑上のレーザー部分(ef_009_shot)
setEffMoveKey( spep_9 + 0, pshot_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 132, pshot_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, pshot_b, -1.0, 1.0 );
setEffScaleKey( spep_9 + 132, pshot_b, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, pshot_b, 0 );
setEffRotateKey( spep_9 + 132, pshot_b, 0 );
setEffAlphaKey( spep_9 + 0, pshot_b, 255 );
setEffAlphaKey( spep_9 + 132 -1, pshot_b, 255 );
setEffAlphaKey( spep_9 + 132, pshot_b, 0 );

-- ** 書き文字エントリー ** --
ctgyaruru = entryEffectLife( spep_9 +1 + 46,  10031, 85, 0x100, -1, 0, -126.5, 316.4 ); --ギャルルル
setEffMoveKey( spep_9 +1 + 46, ctgyaruru, -126.5, 316.4 , 0 );
setEffMoveKey( spep_9 +1 + 48, ctgyaruru, -118.9, 311.9 , 0 );
setEffMoveKey( spep_9 +1 + 50, ctgyaruru, -107.6, 313.9 , 0 );
setEffMoveKey( spep_9 +1 + 52, ctgyaruru, -107.9, 314.1 , 0 );
setEffMoveKey( spep_9 +1 + 54, ctgyaruru, -97.4, 311.9 , 0 );
setEffMoveKey( spep_9 +1 + 56, ctgyaruru, -101.1, 311.1 , 0 );
setEffMoveKey( spep_9 +1 + 58, ctgyaruru, -102.8, 307.6 , 0 );
setEffMoveKey( spep_9 +1 + 60, ctgyaruru, -97.5, 311.9 , 0 );
setEffMoveKey( spep_9 +1 + 62, ctgyaruru, -103.3, 313 , 0 );
setEffMoveKey( spep_9 +1 + 64, ctgyaruru, -95.4, 311.2 , 0 );
setEffMoveKey( spep_9 +1 + 66, ctgyaruru, -103.3, 306.7 , 0 );
setEffMoveKey( spep_9 +1 + 68, ctgyaruru, -97.1, 309.7 , 0 );
setEffMoveKey( spep_9 +1 + 70, ctgyaruru, -103.9, 312.2 , 0 );
setEffMoveKey( spep_9 +1 + 72, ctgyaruru, -96.7, 310.3 , 0 );
setEffMoveKey( spep_9 +1 + 74, ctgyaruru, -102.4, 310 , 0 );
setEffMoveKey( spep_9 +1 + 76, ctgyaruru, -95.2, 311.6 , 0 );
setEffMoveKey( spep_9 +1 + 78, ctgyaruru, -102.4, 307.4 , 0 );
setEffMoveKey( spep_9 +1 + 80, ctgyaruru, -98.6, 313 , 0 );
setEffMoveKey( spep_9 +1 + 82, ctgyaruru, -94.9, 307 , 0 );
setEffMoveKey( spep_9 +1 + 84, ctgyaruru, -99.7, 312.8 , 0 );
setEffMoveKey( spep_9 +1 + 86, ctgyaruru, -98.7, 304.3 , 0 );
setEffMoveKey( spep_9 +1 + 88, ctgyaruru, -95, 311.8 , 0 );
setEffMoveKey( spep_9 +1 + 90, ctgyaruru, -102.1, 308.7 , 0 );
setEffMoveKey( spep_9 +1 + 92, ctgyaruru, -93.8, 306.8 , 0 );
setEffMoveKey( spep_9 +1 + 94, ctgyaruru, -97.3, 313.3 , 0 );
setEffMoveKey( spep_9 +1 + 96, ctgyaruru, -95.3, 305 , 0 );
setEffMoveKey( spep_9 +1 + 98, ctgyaruru, -97.4, 311 , 0 );
setEffMoveKey( spep_9 +1 + 100, ctgyaruru, -92.4, 304.9 , 0 );
setEffMoveKey( spep_9 +1 + 102, ctgyaruru, -96.5, 311.4 , 0 );
setEffMoveKey( spep_9 +1 + 104, ctgyaruru, -91.2, 305.5 , 0 );
setEffMoveKey( spep_9 +1 + 106, ctgyaruru, -99.9, 305.2 , 0 );
setEffMoveKey( spep_9 +1 + 108, ctgyaruru, -92.3, 308.3 , 0 );
setEffMoveKey( spep_9 +1 + 110, ctgyaruru, -95.8, 304.4 , 0 );
setEffMoveKey( spep_9 +1 + 112, ctgyaruru, -92, 310.3 , 0 );
setEffMoveKey( spep_9 +1 + 114, ctgyaruru, -94.5, 304.6 , 0 );
setEffMoveKey( spep_9 +1 + 116, ctgyaruru, -94.3, 307 , 0 );
setEffMoveKey( spep_9 +1 + 118, ctgyaruru, -96.1, 303.4 , 0 );
setEffMoveKey( spep_9 +1 + 120, ctgyaruru, -90.7, 307.7 , 0 );
setEffMoveKey( spep_9 +1 + 122, ctgyaruru, -96.6, 308.8 , 0 );
setEffMoveKey( spep_9 +1 + 124, ctgyaruru, -88.7, 307 , 0 );
setEffMoveKey( spep_9 +1 + 126, ctgyaruru, -96.6, 302.6 , 0 );
setEffMoveKey( spep_9 +1 + 128, ctgyaruru, -90.3, 305.6 , 0 );
setEffMoveKey( spep_9 +1 + 130, ctgyaruru, -97.1, 308.1 , 0 );
setEffMoveKey( spep_9 +1 + 131, ctgyaruru, -97.1, 308.1 , 0 );
--setEffMoveKey( spep_9 +1 + 132, ctgyaruru, -90, 306.2 , 0 );
--setEffMoveKey( spep_9 +1 + 134, ctgyaruru, -95.6, 305.8 , 0 );
--setEffMoveKey( spep_9 +1 + 136, ctgyaruru, -88.4, 307.5 , 0 );
--setEffMoveKey( spep_9 +1 + 138, ctgyaruru, -95.6, 303.3 , 0 );
--setEffMoveKey( spep_9 +1 + 140, ctgyaruru, -91.8, 308.8 , 0 );
--setEffMoveKey( spep_9 +1 + 142, ctgyaruru, -88.1, 302.8 , 0 );
--setEffMoveKey( spep_9 +1 + 144, ctgyaruru, -92.9, 308.6 , 0 );
--setEffMoveKey( spep_9 +1 + 146, ctgyaruru, -91.9, 300.2 , 0 );
--setEffMoveKey( spep_9 +1 + 148, ctgyaruru, -88.2, 307.7 , 0 );
--setEffMoveKey( spep_9 +1 + 150, ctgyaruru, -95.3, 304.5 , 0 );
--setEffMoveKey( spep_9 +1 + 152, ctgyaruru, -90.3, 304.5 , 0 );

setEffScaleKey( spep_9 +1 + 46, ctgyaruru, 1.63, 1.63 );
setEffScaleKey( spep_9 +1 + 48, ctgyaruru, 1.98, 1.98 );
setEffScaleKey( spep_9 +1 + 50, ctgyaruru, 2.25, 2.25 );
setEffScaleKey( spep_9 +1 + 52, ctgyaruru, 2.44, 2.44 );
setEffScaleKey( spep_9 +1 + 54, ctgyaruru, 2.56, 2.56 );
setEffScaleKey( spep_9 +1 + 56, ctgyaruru, 2.6, 2.6 );
setEffScaleKey( spep_9 +1 + 131, ctgyaruru, 2.6, 2.6 );

setEffRotateKey( spep_9 +1 + 46, ctgyaruru, -7.2 );
setEffRotateKey( spep_9 +1 + 48, ctgyaruru, -7.2 );
setEffRotateKey( spep_9 +1 + 50, ctgyaruru, -7.1 );
setEffRotateKey( spep_9 +1 + 131, ctgyaruru, -7.1 );

setEffAlphaKey( spep_9 +1 + 46, ctgyaruru, 255 );
setEffAlphaKey( spep_9 +1 + 131, ctgyaruru, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_9 +1 + 36, 1, 1 );
setDisp( spep_9 +1 + 131, 1, 0 );
changeAnime( spep_9 +1 + 36, 1, 108 );

setBlendColor( spep_9 +1 + 36, 1, 3, 0.16, 0.46, 0.80, 0.6 );
setBlendColor( spep_9 +1 + 130, 1, 3, 0.16, 0.46, 0.80, 0.6 );
setBlendColor( spep_9 +1 + 131, 1, 3, 0.16, 0.46, 0.80, 0 );

a3=60;
b3=10;
setMoveKey( spep_9 +1 + 36, 1, 45 +a3, 5.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 38, 1, 44.9 +a3, 5.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 58, 1, 44.9 +a3, 5.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 60, 1, 44.4 +a3, -20.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 62, 1, -2.9 +a3, -20.7 -b3 , 0 );
setMoveKey( spep_9 +1 + 64, 1, 0.6 +a3, -15.1 -b3 , 0 );
setMoveKey( spep_9 +1 + 66, 1, -9.8 +a3, -23.2 -b3 , 0 );
setMoveKey( spep_9 +1 + 68, 1, -10.3 +a3, -11.6 -b3 , 0 );
setMoveKey( spep_9 +1 + 70, 1, -18.8 +a3, -19.7 -b3 , 0 );
setMoveKey( spep_9 +1 + 72, 1, -11.5 +a3, -12.1 -b3 , 0 );
setMoveKey( spep_9 +1 + 74, 1, -21.9 +a3, -22.1 -b3 , 0 );
setMoveKey( spep_9 +1 + 76, 1, -14.7 +a3, -14.5 -b3 , 0 );
setMoveKey( spep_9 +1 + 78, 1, -9.4 +a3, -20.6 -b3 , 0 );
setMoveKey( spep_9 +1 + 80, 1, -13.9 +a3, -9 -b3 , 0 );
setMoveKey( spep_9 +1 + 82, 1, -10.5 +a3, -19 -b3 , 0 );
setMoveKey( spep_9 +1 + 84, 1, -16.9 +a3, -9.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 86, 1, -7.7 +a3, -19.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 88, 1, 5.6 +a3, -7.8 -b3 , 0 );
setMoveKey( spep_9 +1 + 90, 1, -2.6 +a3, -17.8 -b3 , 0 );
setMoveKey( spep_9 +1 + 92, 1, -3.1 +a3, -4.2 -b3 , 0 );
setMoveKey( spep_9 +1 + 94, 1, 6.3 +a3, -14.1 -b3 , 0 );
setMoveKey( spep_9 +1 + 96, 1, -1.9 +a3, -0.5 -b3 , 0 );
setMoveKey( spep_9 +1 + 98, 1, -0.4 +a3, -12.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 100, 1, 7.1 +a3, -0.7 -b3 , 0 );
setMoveKey( spep_9 +1 + 102, 1, 2.8 +a3, -14.5 -b3 , 0 );
setMoveKey( spep_9 +1 + 104, 1, 2.5 +a3, 1 -b3 , 0 );
setMoveKey( spep_9 +1 + 106, 1, 10 +a3, -6.9 -b3 , 0 );
setMoveKey( spep_9 +1 + 108, 1, 15.6 +a3, -3.1 -b3 , 0 );
setMoveKey( spep_9 +1 + 110, 1, 15.3 +a3, 6.7 -b3 , 0 );
setMoveKey( spep_9 +1 + 112, 1, 9.2 +a3, -1.1 -b3 , 0 );
setMoveKey( spep_9 +1 + 114, 1, 23.7 +a3, -6.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 116, 1, -3.2 +a3, 5.1 -b3 , 0 );
setMoveKey( spep_9 +1 + 118, 1, 0.6 +a3, -21.8 -b3 , 0 );
setMoveKey( spep_9 +1 + 120, 1, -18.6 +a3, -10.3 -b3 , 0 );
setMoveKey( spep_9 +1 + 122, 1, 0.6 +a3, -25.7 -b3 , 0 );
setMoveKey( spep_9 +1 + 124, 1, -3.2 +a3, -2.6 -b3 , 0 );
setMoveKey( spep_9 +1 + 126, 1, 0.6 +a3, -29.5 -b3 , 0 );
setMoveKey( spep_9 +1 + 128, 1, 8.3 +a3, -6.4 -b3 , 0 );
setMoveKey( spep_9 +1 + 130, 1, 23.7 +a3, -18 -b3 , 0 );
setMoveKey( spep_9 +1 + 131, 1, 23.7 +a3, -18 -b3 , 0 );
--setMoveKey( spep_9 +1 + 132, 1, 8.3 +a3, 1.3 , 0 );
--setMoveKey( spep_9 +1 + 134, 1, 27.6 +a3, -21.8 , 0 );
--setMoveKey( spep_9 +1 + 136, 1, 43 +a3, -2.6 , 0 );
--setMoveKey( spep_9 +1 + 138, 1, 23.7 +a3, -21.8 , 0 );
--setMoveKey( spep_9 +1 + 140, 1, 39.1 +a3, -2.6 , 0 );
--setMoveKey( spep_9 +1 + 142, 1, 23.7 +a3, -18 , 0 );
--setMoveKey( spep_9 +1 + 144, 1, 38.9 +a3, -2.8 , 0 );
--setMoveKey( spep_9 +1 + 146, 1, 27.5 +a3, -25.6 , 0 );
--setMoveKey( spep_9 +1 + 148, 1, 23.7 +a3, 1 , 0 );
--setMoveKey( spep_9 +1 + 150, 1, 38.9 +a3, -18 , 0 );
--setMoveKey( spep_9 +1 + 152, 1, 19.9, 4.8 , 0 );

s1=0.4
setScaleKey( spep_9 +1 + 36, 1, 3 +s1, 3 +s1 );
setScaleKey( spep_9 +1 + 131, 1, 3 +s1, 3 +s1 );

setRotateKey( spep_9 +1 + 36, 1, 0 );
setRotateKey( spep_9 +1 + 131, 1, 0 );

-- ** 音 ** --
--敵つらぬく
SE038 = playSe( spep_9 + 28, 1255 );
setSeVolumeByWorkId( spep_9 + 28, SE038, 14 );
setSeVolumeByWorkId( spep_9 + 32, SE038, 28 );
setSeVolumeByWorkId( spep_9 + 36, SE038, 42 );
setSeVolumeByWorkId( spep_9 + 40, SE038, 56 );
setSeVolumeByWorkId( spep_9 + 44, SE038, 70 );
setSeVolumeByWorkId( spep_9 + 48, SE038, 84 );
setSeVolumeByWorkId( spep_9 + 52, SE038, 96 );
setSeVolumeByWorkId( spep_9 + 54, SE038, 100 );
stopSe( spep_9 + 118, SE038, 50 );
setStartTimeMs( SE038,  1117 );

--敵つらぬく
SE042 = playSe( spep_9 + 34, 1296 );
setSeVolumeByWorkId( spep_9 + 34, SE042, 7 );
setSeVolumeByWorkId( spep_9 + 37, SE042, 14 );
setSeVolumeByWorkId( spep_9 + 40, SE042, 21 );
setSeVolumeByWorkId( spep_9 + 43, SE042, 28 );
setSeVolumeByWorkId( spep_9 + 46, SE042, 35 );
setSeVolumeByWorkId( spep_9 + 49, SE042, 42 );
setSeVolumeByWorkId( spep_9 + 52, SE042, 46 );
setSeVolumeByWorkId( spep_9 + 56, SE042, 51 );
stopSe( spep_9 + 118, SE042, 50 );
setStartTimeMs( SE042,  367 );

--敵つらぬく
SE043 = playSe( spep_9 + 34, 1021 );
setSeVolumeByWorkId( spep_9 + 34, SE043, 72 );

--敵つらぬく
SE044 = playSe( spep_9 + 58, 1114 );

--気弾とんでいく
SE045 = playSe( spep_9 + 124, 1212 );
setSeVolumeByWorkId( spep_9 + 124, SE045, 7 );
setSeVolumeByWorkId( spep_9 + 126, SE045, 14 );
setSeVolumeByWorkId( spep_9 + 128, SE045, 21 );
setSeVolumeByWorkId( spep_9 + 130, SE045, 28 );
setSeVolumeByWorkId( spep_9 + 132, SE045, 35 );
setSeVolumeByWorkId( spep_9 + 134, SE045, 41 );
setStartTimeMs( SE045,  750 );

--気弾とんでいく
SE046 = playSe( spep_9 + 124, 44 );

--気弾とんでいく
SE047 = playSe( spep_9 + 124, 1278 );
setSeVolumeByWorkId( spep_9 + 124, SE047, 83 );
stopSe( spep_9 +128 + 56, SE047, 34 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 132 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_9 + 122, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_10 = spep_9 + 132;


------------------------------------------------------
-- 俯瞰でラスト(116F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_10 + 0, SP_11r, 0x100, -1, 0, 0, 0 );  --俯瞰でラスト(ef_010)
setEffMoveKey( spep_10 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 116, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_10 + 116, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, finish_f, 0 );
setEffRotateKey( spep_10 + 116, finish_f, 0 );
setEffAlphaKey( spep_10 + 0, finish_f, 255 );
setEffAlphaKey( spep_10 + 116, finish_f, 255 );

-- ** 音 ** --
--気弾とんでいく
SE048 = playSe( spep_10 + 12, 1304,"",0.6 );
setSeVolumeByWorkId( spep_10 + 12, SE048, 141 );
setPitch( spep_10 + 12, SE048, 300 );
setTimeStretch( SE048, 1.2, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_10 + 94, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_10 + 6 );
endPhase( spep_10 + 106 );

end