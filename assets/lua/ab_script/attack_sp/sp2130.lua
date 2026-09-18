--1013490:ガノス(変身)_エネルギーショット
--sp_effect_a1_00268

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

--エフェクト(味方)
SP_01=	156777	;--	導入、待機
SP_02=	156779	;--	エネルギーショット攻撃
SP_03=	156781	;--	着弾→爆発

--エフェクト(敵)
SP_01x=	156778	;--	導入、待機	(敵)
SP_02x=	156780	;--	エネルギーショット攻撃	(敵)
SP_03x=	156782	;--	着弾→爆発	(敵)


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.9);


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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入、待機
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +12;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  510);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 2,  906, 116, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 2, shuchusen1, 116, 20 );
setEffMoveKey( spep_0 + 2, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 118, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 2, shuchusen1, 1.02, 1.31 );
setEffScaleKey( spep_0 + 4, shuchusen1, 1.04, 1.33 );
setEffScaleKey( spep_0 + 6, shuchusen1, 1.07, 1.36 );
setEffScaleKey( spep_0 + 8, shuchusen1, 1.09, 1.39 );
setEffScaleKey( spep_0 + 10, shuchusen1, 1.11, 1.42 );
setEffScaleKey( spep_0 + 12, shuchusen1, 1.13, 1.45 );
setEffScaleKey( spep_0 + 14, shuchusen1, 1.16, 1.48 );
setEffScaleKey( spep_0 + 16, shuchusen1, 1.18, 1.51 );
setEffScaleKey( spep_0 + 18, shuchusen1, 1.2, 1.53 );
setEffScaleKey( spep_0 + 118, shuchusen1, 1.2, 1.53 );

setEffRotateKey( spep_0 + 2, shuchusen1, 0 );
setEffRotateKey( spep_0 + 118, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 2, shuchusen1, 28 );
setEffAlphaKey( spep_0 + 4, shuchusen1, 57 );
setEffAlphaKey( spep_0 + 6, shuchusen1, 85 );
setEffAlphaKey( spep_0 + 8, shuchusen1, 113 );
setEffAlphaKey( spep_0 + 10, shuchusen1, 142 );
setEffAlphaKey( spep_0 + 12, shuchusen1, 170 );
setEffAlphaKey( spep_0 + 14, shuchusen1, 198 );
setEffAlphaKey( spep_0 + 16, shuchusen1, 227 );
setEffAlphaKey( spep_0 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 118, shuchusen1, 255 );

--SE
--入り
SE001 = playSe( spep_0 + 0, 1232 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
SE002 = playSe( spep_0 + 4, 19 );
setSeVolumeByWorkId( spep_0 + 4, SE002, 47 );
SE003 = playSe( spep_0 + 4, 1042 );
setSeVolumeByWorkId( spep_0 + 4, SE003, 58 );
stopSe( spep_0 + 18, SE003, 18 );

--顔カットイン
playSe( spep_x + 12, 1018 );

--気ダメ
SE004 = playSe( spep_0 + 24, 1035 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 16, 10, 84, 0, 0, 0, 0, 120 );  --黒　背景

--白フェード
entryFade( spep_0 + 102, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_1=spep_0+110;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 94, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- エネルギーショット攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_2 + 90, beam, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 90, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 90, beam, 255 );

--流線
ryusen1 = entryEffectLife( spep_2-3 + 36,  921, 52, 0x80, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 36, ryusen1, 52, 10 );
setEffMoveKey( spep_2-3 + 36, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 88, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 36, ryusen1, 1.01, 1.01 );
setEffScaleKey( spep_2-3 + 88, ryusen1, 1.01, 1.01 );

setEffRotateKey( spep_2-3 + 36, ryusen1, 180 );
setEffRotateKey( spep_2-3 + 88, ryusen1, 180 );

setEffAlphaKey( spep_2-3 + 36, ryusen1, 13 );
setEffAlphaKey( spep_2-3 + 38, ryusen1, 51 );
setEffAlphaKey( spep_2-3 + 40, ryusen1, 89 );
setEffAlphaKey( spep_2-3 + 42, ryusen1, 128 );
setEffAlphaKey( spep_2-3 + 88, ryusen1, 128 );

--SE
--気弾発射
SE006 = playSe( spep_2 + 12, 1027 );
setSeVolumeByWorkId( spep_2 + 12, SE006, 68 );
SE007 = playSe( spep_2 + 12, 1212,"",0.7  );
setSeVolumeByWorkId( spep_2 + 12, SE007, 35 );
SE008 = playSe( spep_2 + 12, 1255,"",0.7 );
setSeVolumeByWorkId( spep_2 + 12, SE008, 72 );
SE009 = playSe( spep_2 + 12, 1022,"",0.7 );
setSeVolumeByWorkId( spep_2 + 12, SE009, 93 );

--白フェード
entryFade( spep_2 + 82, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0, 0, 0, 0, 120 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 90;
------------------------------------------------------
-- 着弾→爆発
------------------------------------------------------

-- ** エフェクト等 ** --
hit = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, hit, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, hit, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit, 0 );
setEffRotateKey( spep_3 + 90, hit, 0 );
setEffAlphaKey( spep_3 + 0, hit, 255 );
setEffAlphaKey( spep_3 + 90, hit, 255 );

--流線
ryusen2 = entryEffectLife( spep_3 + 0,  921, 40, 0x80, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, ryusen2, 40, 10 );
setEffMoveKey( spep_3 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 40, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen2, 1.01, 1.01 );
setEffScaleKey( spep_3 + 40, ryusen2, 1.01, 1.01 );

setEffRotateKey( spep_3 + 0, ryusen2, 0 );
setEffRotateKey( spep_3 + 40, ryusen2, 0 );

setEffAlphaKey( spep_3 + 0, ryusen2, 128 );
setEffAlphaKey( spep_3 + 40, ryusen2, 128 );

--文字エントリー
ctdon = entryEffectLife( spep_3-3 + 46,  10019, 24, 0x100, -1, 0, -24.4, 268.8 );--ドンッ

setEffMoveKey( spep_3-3 + 46, ctdon, -24.4, 268.8 , 0 );
setEffMoveKey( spep_3-3 + 48, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_3-3 + 50, ctdon, -6.5, 303 , 0 );
setEffMoveKey( spep_3-3 + 52, ctdon, -6.6, 303 , 0 );
setEffMoveKey( spep_3-3 + 54, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_3-3 + 56, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_3-3 + 58, ctdon, -6.5, 302.9 , 0 );
setEffMoveKey( spep_3-3 + 60, ctdon, -6.6, 303 , 0 );
setEffMoveKey( spep_3-3 + 62, ctdon, -6.6, 303 , 0 );
setEffMoveKey( spep_3-3 + 64, ctdon, -6.6, 302.9 , 0 );
setEffMoveKey( spep_3-3 + 68, ctdon, -6.6, 302.9 , 0 );
setEffMoveKey( spep_3-3 + 70, ctdon, -6.5, 302.9 , 0 );

setEffScaleKey( spep_3-3 + 46, ctdon, 2, 2 );
setEffScaleKey( spep_3-3 + 48, ctdon, 3.5, 3.5 );
setEffScaleKey( spep_3-3 + 50, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_3-3 + 52, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_3-3 + 54, ctdon, 2.9, 2.9 );
setEffScaleKey( spep_3-3 + 56, ctdon, 3, 3 );
setEffScaleKey( spep_3-3 + 58, ctdon, 2.3, 2.3 );
setEffScaleKey( spep_3-3 + 60, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_3-3 + 62, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_3-3 + 64, ctdon, 2.19, 2.19 );
setEffScaleKey( spep_3-3 + 66, ctdon, 2.16, 2.16 );
setEffScaleKey( spep_3-3 + 68, ctdon, 2.1, 2.1 );
setEffScaleKey( spep_3-3 + 70, ctdon, 2, 2 );

setEffRotateKey( spep_3-3 + 46, ctdon, 10.5 );
setEffRotateKey( spep_3-3 + 70, ctdon, 10.5 );

setEffAlphaKey( spep_3-3 + 46, ctdon, 255 );
setEffAlphaKey( spep_3-3 + 60, ctdon, 255 );
setEffAlphaKey( spep_3-3 + 62, ctdon, 253 );
setEffAlphaKey( spep_3-3 + 64, ctdon, 240 );
setEffAlphaKey( spep_3-3 + 66, ctdon, 203 );
setEffAlphaKey( spep_3-3 + 68, ctdon, 131 );
setEffAlphaKey( spep_3-3 + 70, ctdon, 13 );


--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 104 );

setAlphaKey(spep_3 + 0,1,255);
setAlphaKey(spep_3-3 + 34,1,255);


setMoveKey( spep_3 + 0, 1, 214.3, -16.8 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 213.8, -16.7 , 0 );
setMoveKey( spep_3-3 + 4, 1, 213.2, -16.6 , 0 );
setMoveKey( spep_3-3 + 6, 1, 212.7, -16.5 , 0 );
setMoveKey( spep_3-3 + 8, 1, 212.2, -16.3 , 0 );
setMoveKey( spep_3-3 + 10, 1, 211.5, -16.1 , 0 );
setMoveKey( spep_3-3 + 12, 1, 210.8, -15.9 , 0 );
setMoveKey( spep_3-3 + 14, 1, 210, -15.8 , 0 );
setMoveKey( spep_3-3 + 16, 1, 209, -15.5 , 0 );
setMoveKey( spep_3-3 + 18, 1, 207.8, -15.2 , 0 );
setMoveKey( spep_3-3 + 20, 1, 206.4, -14.8 , 0 );
setMoveKey( spep_3-3 + 22, 1, 204.6, -14.4 , 0 );
setMoveKey( spep_3-3 + 24, 1, 202.3, -13.8 , 0 );
setMoveKey( spep_3-3 + 26, 1, 199.3, -13 , 0 );
setMoveKey( spep_3-3 + 28, 1, 195.3, -12 , 0 );
setMoveKey( spep_3-3 + 30, 1, 189.9, -10.6 , 0 );
setMoveKey( spep_3-3 + 32, 1, 182.5, -8.7 , 0 );
setMoveKey( spep_3-3 + 34, 1, 171.9, -6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_3-3 + 4, 1, 0.8, 0.8 );
setScaleKey( spep_3-3 + 6, 1, 0.81, 0.81 );
setScaleKey( spep_3-3 + 10, 1, 0.81, 0.81 );
setScaleKey( spep_3-3 + 12, 1, 0.82, 0.82 );
setScaleKey( spep_3-3 + 14, 1, 0.82, 0.82 );
setScaleKey( spep_3-3 + 16, 1, 0.83, 0.83 );
setScaleKey( spep_3-3 + 18, 1, 0.83, 0.83 );
setScaleKey( spep_3-3 + 20, 1, 0.84, 0.84 );
setScaleKey( spep_3-3 + 22, 1, 0.85, 0.85 );
setScaleKey( spep_3-3 + 24, 1, 0.86, 0.86 );
setScaleKey( spep_3-3 + 26, 1, 0.87, 0.87 );
setScaleKey( spep_3-3 + 28, 1, 0.89, 0.89 );
setScaleKey( spep_3-3 + 30, 1, 0.92, 0.92 );
setScaleKey( spep_3-3 + 32, 1, 0.96, 0.96 );
setScaleKey( spep_3-3 + 34, 1, 1.01, 1.01 );

setRotateKey( spep_3 + 0, 1, -8.5 );
setRotateKey( spep_3-3 + 34, 1, -8.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 90, 0, 0, 0, 0, 120 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );

    --敵座標の固定
    setMoveKey( SP_dodge + 6, 1, 171.9, -6 , 0 );
    setMoveKey( SP_dodge + 7, 1, 171.9, -6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 171.9, -6 , 0 );
    setMoveKey( SP_dodge + 9, 1, 171.9, -6 , 0 );

    setScaleKey( SP_dodge + 6, 1, 1.01, 1.01 );
    setScaleKey( SP_dodge + 7, 1, 1.01, 1.01 );
    setScaleKey( SP_dodge + 8, 1, 1.01, 1.01 );
    setScaleKey( SP_dodge + 9, 1, 1.01, 1.01 );

    setRotateKey( SP_dodge + 6, 1, -8.5 );
    setRotateKey( SP_dodge + 7, 1, -8.5 );
    setRotateKey( SP_dodge + 8, 1, -8.5 );
    setRotateKey( SP_dodge + 9, 1, -8.5 );


    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_3-3 + 64, 1, 0 ); 

changeAnime( spep_3-3 + 44, 1, 108 );
changeAnime( spep_3-3 + 49, 1, 106 );
changeAnime( spep_3-3 + 50, 1, 105 );

setAlphaKey(spep_3-3 + 50,1,255);
setAlphaKey(spep_3-3 + 64,1,153);
setAlphaKey(spep_3-3 + 66,1,153);
setAlphaKey(spep_3-3 + 68,1,255);


a=-660;
b=210;
c=-580;
d=180;

setMoveKey( spep_3-3 + 36, 1, 157.5, -4.1 , 0 );
setMoveKey( spep_3-3 + 38, 1, 136.2, -1.2 , 0 );
setMoveKey( spep_3-3 + 40, 1, 105.2, 3 , 0 );
setMoveKey( spep_3-3 + 43, 1, 64, 8.5 , 0 );
setMoveKey( spep_3-3 + 44, 1, 86, 18.8 , 0 );
setMoveKey( spep_3-3 + 47, 1, 82, 17.5 , 0 );
setMoveKey( spep_3-3 + 49, 1, 81.6, 81.6 , 0 );
setMoveKey( spep_3-3 + 50, 1, 952.4+a, -91.6+b , 0 );
--setMoveKey( spep_3-3 + 52, 1, 1000.7+a, 8+b , 0 );
--setMoveKey( spep_3-3 + 54, 1, 1037+a, 73.1+b , 0 );
--setMoveKey( spep_3-3 + 56, 1, 1051.1+a, 130.3+b , 0 );
--setMoveKey( spep_3-3 + 58, 1, 1082+a, 183.5+b , 0 );
--setMoveKey( spep_3-3 + 60, 1, 1095.2+a, 234.2+b , 0 );
--setMoveKey( spep_3-3 + 62, 1, 1107+a, 265.8+b , 0 );
setMoveKey( spep_3-3 + 64, 1, 1104.3+c, 297.9+d , 0 );

setScaleKey( spep_3-3 + 36, 1, 1.06, 1.06 );
setScaleKey( spep_3-3 + 38, 1, 1.14, 1.14 );
setScaleKey( spep_3-3 + 40, 1, 1.25, 1.25 );
setScaleKey( spep_3-3 + 43, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 44, 1, 1.6, 1.6 );
setScaleKey( spep_3-3 + 47, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 49, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 50, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 52, 1, 1.37, 1.37 );
setScaleKey( spep_3-3 + 54, 1, 1.34, 1.34 );
setScaleKey( spep_3-3 + 56, 1, 1.31, 1.31 );
setScaleKey( spep_3-3 + 58, 1, 1.28, 1.28 );
setScaleKey( spep_3-3 + 60, 1, 1.25, 1.25 );
setScaleKey( spep_3-3 + 62, 1, 1.22, 1.22 );
setScaleKey( spep_3-3 + 64, 1, 1.19, 1.19 );
setScaleKey( spep_3-3 + 66, 1, 1.16, 1.16 );
setScaleKey( spep_3-3 + 68, 1, 1.13, 1.13 );
setScaleKey( spep_3-3 + 70, 1, 1.1, 1.1 );
setScaleKey( spep_3-3 + 72, 1, 1.07, 1.07 );
setScaleKey( spep_3-3 + 74, 1, 1.04, 1.04 );
setScaleKey( spep_3-3 + 76, 1, 1.01, 1.01 );
setScaleKey( spep_3-3 + 78, 1, 0.98, 0.98 );

setRotateKey( spep_3-3 + 43, 1, -8.5 );
setRotateKey( spep_3-3 + 44, 1, 0 );
setRotateKey( spep_3-3 + 47, 1, 0 );
setRotateKey( spep_3-3 + 49, 1, -55.9 );
setRotateKey( spep_3-3 + 50, 1, 19.8 );
setRotateKey( spep_3-3 + 78, 1, 19.8 );

--SE
--気弾発射
stopSe( spep_3 + 40, SE007, 6 );
stopSe( spep_3 + 40, SE008, 6 );

--気弾ヒット
SE010 = playSe( spep_3 + 42, 1002 );
setSeVolumeByWorkId( spep_3 + 42, SE010, 87 );
SE011 = playSe( spep_3 + 42, 1023 );

--白フェード
entryFade( spep_3 + 86, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );
setMoveKey( spep_4 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_4 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 105 );
setRotateKey( spep_4 -3 + 4, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 + 100, 1, 1080 );


--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 112, bakuhatsu, 255 );
]]
-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusenga, 0 );
setEffRotateKey( spep_4 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_4 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_4 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_4 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_4 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_4 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_4 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_4 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_4 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_4 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_4 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_4 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_4 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_4 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_4 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 100, 0,  0, 0, 0, 120 ); --くろ 背景

--SE
--playSe( spep_4 + 0, 1023 );--爆発
playSe( spep_4 + 14, 1054 );--ガッ

--終わり
dealDamage( spep_4 +10 );
endPhase( spep_4 + 98 );
else
------------------------------------------------------------------------------------------------------------
--てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入、待機
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +12;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  510);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 2,  906, 116, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 2, shuchusen1, 116, 20 );
setEffMoveKey( spep_0 + 2, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 118, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 2, shuchusen1, 1.02, 1.31 );
setEffScaleKey( spep_0 + 4, shuchusen1, 1.04, 1.33 );
setEffScaleKey( spep_0 + 6, shuchusen1, 1.07, 1.36 );
setEffScaleKey( spep_0 + 8, shuchusen1, 1.09, 1.39 );
setEffScaleKey( spep_0 + 10, shuchusen1, 1.11, 1.42 );
setEffScaleKey( spep_0 + 12, shuchusen1, 1.13, 1.45 );
setEffScaleKey( spep_0 + 14, shuchusen1, 1.16, 1.48 );
setEffScaleKey( spep_0 + 16, shuchusen1, 1.18, 1.51 );
setEffScaleKey( spep_0 + 18, shuchusen1, 1.2, 1.53 );
setEffScaleKey( spep_0 + 118, shuchusen1, 1.2, 1.53 );

setEffRotateKey( spep_0 + 2, shuchusen1, 0 );
setEffRotateKey( spep_0 + 118, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 2, shuchusen1, 28 );
setEffAlphaKey( spep_0 + 4, shuchusen1, 57 );
setEffAlphaKey( spep_0 + 6, shuchusen1, 85 );
setEffAlphaKey( spep_0 + 8, shuchusen1, 113 );
setEffAlphaKey( spep_0 + 10, shuchusen1, 142 );
setEffAlphaKey( spep_0 + 12, shuchusen1, 170 );
setEffAlphaKey( spep_0 + 14, shuchusen1, 198 );
setEffAlphaKey( spep_0 + 16, shuchusen1, 227 );
setEffAlphaKey( spep_0 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 118, shuchusen1, 255 );

--SE
--入り
SE001 = playSe( spep_0 + 0, 1232 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
SE002 = playSe( spep_0 + 4, 19 );
setSeVolumeByWorkId( spep_0 + 4, SE002, 47 );
SE003 = playSe( spep_0 + 4, 1042 );
setSeVolumeByWorkId( spep_0 + 4, SE003, 58 );
stopSe( spep_0 + 18, SE003, 18 );

--顔カットイン
playSe( spep_x + 12, 1018 );

--気ダメ
SE004 = playSe( spep_0 + 24, 1035 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 16, 10, 84, 0, 0, 0, 0, 120 );  --黒　背景

--白フェード
entryFade( spep_0 + 102, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_1=spep_0+110;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 94, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- エネルギーショット攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_2 + 90, beam, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 90, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 90, beam, 255 );

--流線
ryusen1 = entryEffectLife( spep_2-3 + 36,  921, 52, 0x80, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 36, ryusen1, 52, 10 );
setEffMoveKey( spep_2-3 + 36, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 88, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 36, ryusen1, 1.01, 1.01 );
setEffScaleKey( spep_2-3 + 88, ryusen1, 1.01, 1.01 );

setEffRotateKey( spep_2-3 + 36, ryusen1, 180 );
setEffRotateKey( spep_2-3 + 88, ryusen1, 180 );

setEffAlphaKey( spep_2-3 + 36, ryusen1, 13 );
setEffAlphaKey( spep_2-3 + 38, ryusen1, 51 );
setEffAlphaKey( spep_2-3 + 40, ryusen1, 89 );
setEffAlphaKey( spep_2-3 + 42, ryusen1, 128 );
setEffAlphaKey( spep_2-3 + 88, ryusen1, 128 );

--SE
--気弾発射
SE006 = playSe( spep_2 + 12, 1027 );
setSeVolumeByWorkId( spep_2 + 12, SE006, 68 );
SE007 = playSe( spep_2 + 12, 1212,"",0.7  );
setSeVolumeByWorkId( spep_2 + 12, SE007, 35 );
SE008 = playSe( spep_2 + 12, 1255,"",0.7 );
setSeVolumeByWorkId( spep_2 + 12, SE008, 72 );
SE009 = playSe( spep_2 + 12, 1022,"",0.7 );
setSeVolumeByWorkId( spep_2 + 12, SE009, 93 );

--白フェード
entryFade( spep_2 + 82, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0, 0, 0, 0, 120 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 90;
------------------------------------------------------
-- 着弾→爆発
------------------------------------------------------

-- ** エフェクト等 ** --
hit = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, hit, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, hit, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit, 0 );
setEffRotateKey( spep_3 + 90, hit, 0 );
setEffAlphaKey( spep_3 + 0, hit, 255 );
setEffAlphaKey( spep_3 + 90, hit, 255 );

--流線
ryusen2 = entryEffectLife( spep_3 + 0,  921, 40, 0x80, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, ryusen2, 40, 10 );
setEffMoveKey( spep_3 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 40, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen2, 1.01, 1.01 );
setEffScaleKey( spep_3 + 40, ryusen2, 1.01, 1.01 );

setEffRotateKey( spep_3 + 0, ryusen2, 0 );
setEffRotateKey( spep_3 + 40, ryusen2, 0 );

setEffAlphaKey( spep_3 + 0, ryusen2, 128 );
setEffAlphaKey( spep_3 + 40, ryusen2, 128 );

--文字エントリー
ctdon = entryEffectLife( spep_3-3 + 46,  10019, 24, 0x100, -1, 0, -24.4, 268.8 );--ドンッ

setEffMoveKey( spep_3-3 + 46, ctdon, -24.4, 268.8 , 0 );
setEffMoveKey( spep_3-3 + 48, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_3-3 + 50, ctdon, -6.5, 303 , 0 );
setEffMoveKey( spep_3-3 + 52, ctdon, -6.6, 303 , 0 );
setEffMoveKey( spep_3-3 + 54, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_3-3 + 56, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_3-3 + 58, ctdon, -6.5, 302.9 , 0 );
setEffMoveKey( spep_3-3 + 60, ctdon, -6.6, 303 , 0 );
setEffMoveKey( spep_3-3 + 62, ctdon, -6.6, 303 , 0 );
setEffMoveKey( spep_3-3 + 64, ctdon, -6.6, 302.9 , 0 );
setEffMoveKey( spep_3-3 + 68, ctdon, -6.6, 302.9 , 0 );
setEffMoveKey( spep_3-3 + 70, ctdon, -6.5, 302.9 , 0 );

setEffScaleKey( spep_3-3 + 46, ctdon, 2, 2 );
setEffScaleKey( spep_3-3 + 48, ctdon, 3.5, 3.5 );
setEffScaleKey( spep_3-3 + 50, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_3-3 + 52, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_3-3 + 54, ctdon, 2.9, 2.9 );
setEffScaleKey( spep_3-3 + 56, ctdon, 3, 3 );
setEffScaleKey( spep_3-3 + 58, ctdon, 2.3, 2.3 );
setEffScaleKey( spep_3-3 + 60, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_3-3 + 62, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_3-3 + 64, ctdon, 2.19, 2.19 );
setEffScaleKey( spep_3-3 + 66, ctdon, 2.16, 2.16 );
setEffScaleKey( spep_3-3 + 68, ctdon, 2.1, 2.1 );
setEffScaleKey( spep_3-3 + 70, ctdon, 2, 2 );

setEffRotateKey( spep_3-3 + 46, ctdon, 10.5 );
setEffRotateKey( spep_3-3 + 70, ctdon, 10.5 );

setEffAlphaKey( spep_3-3 + 46, ctdon, 255 );
setEffAlphaKey( spep_3-3 + 60, ctdon, 255 );
setEffAlphaKey( spep_3-3 + 62, ctdon, 253 );
setEffAlphaKey( spep_3-3 + 64, ctdon, 240 );
setEffAlphaKey( spep_3-3 + 66, ctdon, 203 );
setEffAlphaKey( spep_3-3 + 68, ctdon, 131 );
setEffAlphaKey( spep_3-3 + 70, ctdon, 13 );


--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 104 );

setAlphaKey(spep_3 + 0,1,255);
setAlphaKey(spep_3-3 + 34,1,255);


setMoveKey( spep_3 + 0, 1, 214.3, -16.8 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 213.8, -16.7 , 0 );
setMoveKey( spep_3-3 + 4, 1, 213.2, -16.6 , 0 );
setMoveKey( spep_3-3 + 6, 1, 212.7, -16.5 , 0 );
setMoveKey( spep_3-3 + 8, 1, 212.2, -16.3 , 0 );
setMoveKey( spep_3-3 + 10, 1, 211.5, -16.1 , 0 );
setMoveKey( spep_3-3 + 12, 1, 210.8, -15.9 , 0 );
setMoveKey( spep_3-3 + 14, 1, 210, -15.8 , 0 );
setMoveKey( spep_3-3 + 16, 1, 209, -15.5 , 0 );
setMoveKey( spep_3-3 + 18, 1, 207.8, -15.2 , 0 );
setMoveKey( spep_3-3 + 20, 1, 206.4, -14.8 , 0 );
setMoveKey( spep_3-3 + 22, 1, 204.6, -14.4 , 0 );
setMoveKey( spep_3-3 + 24, 1, 202.3, -13.8 , 0 );
setMoveKey( spep_3-3 + 26, 1, 199.3, -13 , 0 );
setMoveKey( spep_3-3 + 28, 1, 195.3, -12 , 0 );
setMoveKey( spep_3-3 + 30, 1, 189.9, -10.6 , 0 );
setMoveKey( spep_3-3 + 32, 1, 182.5, -8.7 , 0 );
setMoveKey( spep_3-3 + 34, 1, 171.9, -6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_3-3 + 4, 1, 0.8, 0.8 );
setScaleKey( spep_3-3 + 6, 1, 0.81, 0.81 );
setScaleKey( spep_3-3 + 10, 1, 0.81, 0.81 );
setScaleKey( spep_3-3 + 12, 1, 0.82, 0.82 );
setScaleKey( spep_3-3 + 14, 1, 0.82, 0.82 );
setScaleKey( spep_3-3 + 16, 1, 0.83, 0.83 );
setScaleKey( spep_3-3 + 18, 1, 0.83, 0.83 );
setScaleKey( spep_3-3 + 20, 1, 0.84, 0.84 );
setScaleKey( spep_3-3 + 22, 1, 0.85, 0.85 );
setScaleKey( spep_3-3 + 24, 1, 0.86, 0.86 );
setScaleKey( spep_3-3 + 26, 1, 0.87, 0.87 );
setScaleKey( spep_3-3 + 28, 1, 0.89, 0.89 );
setScaleKey( spep_3-3 + 30, 1, 0.92, 0.92 );
setScaleKey( spep_3-3 + 32, 1, 0.96, 0.96 );
setScaleKey( spep_3-3 + 34, 1, 1.01, 1.01 );

setRotateKey( spep_3 + 0, 1, -8.5 );
setRotateKey( spep_3-3 + 34, 1, -8.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 90, 0, 0, 0, 0, 120 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );

    --敵座標の固定
    setMoveKey( SP_dodge + 6, 1, 171.9, -6 , 0 );
    setMoveKey( SP_dodge + 7, 1, 171.9, -6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 171.9, -6 , 0 );
    setMoveKey( SP_dodge + 9, 1, 171.9, -6 , 0 );

    setScaleKey( SP_dodge + 6, 1, 1.01, 1.01 );
    setScaleKey( SP_dodge + 7, 1, 1.01, 1.01 );
    setScaleKey( SP_dodge + 8, 1, 1.01, 1.01 );
    setScaleKey( SP_dodge + 9, 1, 1.01, 1.01 );

    setRotateKey( SP_dodge + 6, 1, -8.5 );
    setRotateKey( SP_dodge + 7, 1, -8.5 );
    setRotateKey( SP_dodge + 8, 1, -8.5 );
    setRotateKey( SP_dodge + 9, 1, -8.5 );


    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_3-3 + 64, 1, 0 ); 

changeAnime( spep_3-3 + 44, 1, 108 );
changeAnime( spep_3-3 + 49, 1, 106 );
changeAnime( spep_3-3 + 50, 1, 105 );

setAlphaKey(spep_3-3 + 50,1,255);
setAlphaKey(spep_3-3 + 64,1,153);
setAlphaKey(spep_3-3 + 66,1,153);
setAlphaKey(spep_3-3 + 68,1,255);


a=-660;
b=210;
c=-580;
d=180;

setMoveKey( spep_3-3 + 36, 1, 157.5, -4.1 , 0 );
setMoveKey( spep_3-3 + 38, 1, 136.2, -1.2 , 0 );
setMoveKey( spep_3-3 + 40, 1, 105.2, 3 , 0 );
setMoveKey( spep_3-3 + 43, 1, 64, 8.5 , 0 );
setMoveKey( spep_3-3 + 44, 1, 86, 18.8 , 0 );
setMoveKey( spep_3-3 + 47, 1, 82, 17.5 , 0 );
setMoveKey( spep_3-3 + 49, 1, 81.6, 81.6 , 0 );
setMoveKey( spep_3-3 + 50, 1, 952.4+a, -91.6+b , 0 );
--setMoveKey( spep_3-3 + 52, 1, 1000.7+a, 8+b , 0 );
--setMoveKey( spep_3-3 + 54, 1, 1037+a, 73.1+b , 0 );
--setMoveKey( spep_3-3 + 56, 1, 1051.1+a, 130.3+b , 0 );
--setMoveKey( spep_3-3 + 58, 1, 1082+a, 183.5+b , 0 );
--setMoveKey( spep_3-3 + 60, 1, 1095.2+a, 234.2+b , 0 );
--setMoveKey( spep_3-3 + 62, 1, 1107+a, 265.8+b , 0 );
setMoveKey( spep_3-3 + 64, 1, 1104.3+c, 297.9+d , 0 );

setScaleKey( spep_3-3 + 36, 1, 1.06, 1.06 );
setScaleKey( spep_3-3 + 38, 1, 1.14, 1.14 );
setScaleKey( spep_3-3 + 40, 1, 1.25, 1.25 );
setScaleKey( spep_3-3 + 43, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 44, 1, 1.6, 1.6 );
setScaleKey( spep_3-3 + 47, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 49, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 50, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 52, 1, 1.37, 1.37 );
setScaleKey( spep_3-3 + 54, 1, 1.34, 1.34 );
setScaleKey( spep_3-3 + 56, 1, 1.31, 1.31 );
setScaleKey( spep_3-3 + 58, 1, 1.28, 1.28 );
setScaleKey( spep_3-3 + 60, 1, 1.25, 1.25 );
setScaleKey( spep_3-3 + 62, 1, 1.22, 1.22 );
setScaleKey( spep_3-3 + 64, 1, 1.19, 1.19 );
setScaleKey( spep_3-3 + 66, 1, 1.16, 1.16 );
setScaleKey( spep_3-3 + 68, 1, 1.13, 1.13 );
setScaleKey( spep_3-3 + 70, 1, 1.1, 1.1 );
setScaleKey( spep_3-3 + 72, 1, 1.07, 1.07 );
setScaleKey( spep_3-3 + 74, 1, 1.04, 1.04 );
setScaleKey( spep_3-3 + 76, 1, 1.01, 1.01 );
setScaleKey( spep_3-3 + 78, 1, 0.98, 0.98 );

setRotateKey( spep_3-3 + 43, 1, -8.5 );
setRotateKey( spep_3-3 + 44, 1, 0 );
setRotateKey( spep_3-3 + 47, 1, 0 );
setRotateKey( spep_3-3 + 49, 1, -55.9 );
setRotateKey( spep_3-3 + 50, 1, 19.8 );
setRotateKey( spep_3-3 + 78, 1, 19.8 );

--SE
--気弾発射
stopSe( spep_3 + 40, SE007, 6 );
stopSe( spep_3 + 40, SE008, 6 );

--気弾ヒット
SE010 = playSe( spep_3 + 42, 1002 );
setSeVolumeByWorkId( spep_3 + 42, SE010, 87 );
SE011 = playSe( spep_3 + 42, 1023 );

--白フェード
entryFade( spep_3 + 86, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );
setMoveKey( spep_4 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_4 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 105 );
setRotateKey( spep_4 -3 + 4, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 + 100, 1, 1080 );


--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 112, bakuhatsu, 255 );
]]
-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusenga, 0 );
setEffRotateKey( spep_4 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_4 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_4 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_4 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_4 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_4 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_4 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_4 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_4 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_4 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_4 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_4 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_4 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_4 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_4 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 100, 0,  0, 0, 0, 120 ); --くろ 背景

--SE
--playSe( spep_4 + 0, 1023 );--爆発
playSe( spep_4 + 14, 1054 );--ガッ

--終わり
dealDamage( spep_4 +10 );
endPhase( spep_4 + 98 );
end