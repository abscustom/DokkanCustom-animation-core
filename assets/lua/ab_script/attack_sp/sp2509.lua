--1025860:超サイヤ人孫悟空_五大戦士突撃(簡易版)
--sp_effect_b1_00232

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
SP_01=	161168	;--	セリフカットイン　全員突撃
SP_02=	161170	;--	悟飯蹴り
SP_03=	161171	;--	悟飯蹴り
SP_04=	161174	;--	ピッコロ殴り正面→HIT
SP_05=	161175	;--	ピッコロ殴り正面→HIT
SP_06=	161178	;--	トランクス蹴りUP→HIT
SP_07=	161179	;--	トランクス蹴りUP→HIT
SP_08=	161182	;--	ベジータ気弾発射→爆破
SP_09=	161183	;--	ベジータ気弾発射→爆破
SP_10=	161186	;--	悟空正面→パンチ（手元）
SP_11=	161187	;--	悟空正面→パンチ（手元）
SP_12=	161190	;--	フィニッシュ
SP_13=	161191	;--	フィニッシュ

--エフェクト(敵)
SP_01x=	161169	;--	セリフカットイン　全員突撃	(敵)
SP_02x=	161172	;--	悟飯蹴り	(敵)
SP_03x=	161173	;--	悟飯蹴り	(敵)
SP_04x=	161176	;--	ピッコロ殴り正面→HIT	(敵)
SP_05x=	161177	;--	ピッコロ殴り正面→HIT	(敵)
SP_06x=	161180	;--	トランクス蹴りUP→HIT	(敵)
SP_07x=	161181	;--	トランクス蹴りUP→HIT	(敵)
SP_08x=	161184	;--	ベジータ気弾発射→爆破	(敵)
SP_09x=	161185	;--	ベジータ気弾発射→爆破	(敵)
SP_10x=	161188	;--	悟空正面→パンチ（手元）	(敵)
SP_11x=	161189	;--	悟空正面→パンチ（手元）	(敵)
SP_12x=	161190	;--	フィニッシュ	
SP_13x=	161191	;--	フィニッシュ	
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

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
changeAnime( 0, 1, 0);

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
--セリフカットイン　全員突撃
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 186, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 186, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 186, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 186, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 70, 515, 2000);-- ゴゴゴゴ
setEffShake( spep_x + 12, ctgogo, 72, 10 );
setEffMoveKey(  spep_x +12,  ctgogo, 70,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  70,  515);

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

--SE
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 200, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 32 );
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 200, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 151 );
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--飛び上がる
SE010 = playSeVer2( spep_0 + 128, 1207, "",spep_0 + 200, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 128, SE010, 56 );
SE011 = playSeVer2( spep_0 + 128, 44, "",spep_0 + 200, 0, 16, -1);
SE012 = playSeVer2( spep_0 + 128, 1117, "",spep_0 + 200, 0, 16, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 186, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 148; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--SE
--オーラ
SE013 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);

--飛び上がる
SE014 = playSeVer2( spep_0 + 150, 1116, "",spep_0 + 200, 0, 16, -1);

--白フェード
entryFade( spep_0 +178 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--敵の動き
spep_1=spep_0+186;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

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

-- ** 次の準備 ** --
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2 = spep_1 + 94;
------------------------------------------------------
--悟飯蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
assault_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, assault_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 44, assault_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, assault_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 44, assault_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, assault_f, 0 );
setEffRotateKey( spep_2 + 44, assault_f, 0 );
setEffAlphaKey( spep_2 + 0, assault_f, 255 );
setEffAlphaKey( spep_2 + 42, assault_f, 255 );
setEffAlphaKey( spep_2 + 43, assault_f, 255 );
setEffAlphaKey( spep_2 + 44, assault_f, 0 );

-- ** エフェクト等 ** --
assault_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, assault_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 44, assault_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, assault_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 44, assault_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, assault_b, 0 );
setEffRotateKey( spep_2 + 44, assault_b, 0 );
setEffAlphaKey( spep_2 + 0, assault_b, 255 );
setEffAlphaKey( spep_2 + 42, assault_b, 255 );
setEffAlphaKey( spep_2 + 43, assault_b, 255 );
setEffAlphaKey( spep_2 + 44, assault_b, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2+1 + 30, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2+1 + 8, 1, 108 );

setMoveKey( spep_2 + 0, 1, -17.8, 3 , 0 );
setMoveKey( spep_2+1 + 2, 1, -4.9, -13.4 , 0 );
setMoveKey( spep_2+1 + 4, 1, 8, -29.8 , 0 );
setMoveKey( spep_2+1 + 7, 1, 20.9, -46.1 , 0 );
setMoveKey( spep_2+1 + 8, 1, 132.1, -148 , 0 );
setMoveKey( spep_2+1 + 9, 1, 132.1, -148 , 0 );
setMoveKey( spep_2+1 + 10, 1, 208.1, -78.8 , 0 );
setMoveKey( spep_2+1 + 11, 1, 208.1, -78.8 , 0 );
setMoveKey( spep_2+1 + 12, 1, 172.3, -131.9 , 0 );
setMoveKey( spep_2+1 + 13, 1, 172.3, -131.9 , 0 );
setMoveKey( spep_2+1 + 14, 1, 262.7, -229.1 , 0 );
setMoveKey( spep_2+1 + 15, 1, 262.7, -229.1 , 0 );
setMoveKey( spep_2+1 + 16, 1, 232.1, -204.6 , 0 );
setMoveKey( spep_2+1 + 17, 1, 232.1, -204.6 , 0 );
setMoveKey( spep_2+1 + 18, 1, 237.2, -216.1 , 0 );
setMoveKey( spep_2+1 + 19, 1, 237.2, -216.1 , 0 );
setMoveKey( spep_2+1 + 20, 1, 242.3, -227.8 , 0 );
setMoveKey( spep_2+1 + 21, 1, 242.3, -227.8 , 0 );
setMoveKey( spep_2+1 + 22, 1, 247.6, -239.7 , 0 );
setMoveKey( spep_2+1 + 23, 1, 247.6, -239.7 , 0 );
setMoveKey( spep_2+1 + 24, 1, 347.4, -385 , 0 );
setMoveKey( spep_2+1 + 25, 1, 347.4, -385 , 0 );
setMoveKey( spep_2+1 + 26, 1, 449, -532.9 , 0 );
setMoveKey( spep_2+1 + 27, 1, 449, -532.9 , 0 );
setMoveKey( spep_2+1 + 28, 1, 552.2, -683.2 , 0 );
setMoveKey( spep_2+1 + 29, 1, 552.2, -683.2 , 0 );
setMoveKey( spep_2+1 + 30, 1, 657.3, -836.1 , 0 );

setScaleKey( spep_2 + 0, 1, 2.44,2.44);
setScaleKey( spep_2+1 + 2, 1, 2.47,2.47);
setScaleKey( spep_2+1 + 4, 1, 2.49,2.49);
setScaleKey( spep_2+1 + 7, 1, 2.51,2.51);
setScaleKey( spep_2+1 + 8, 1, 2.54,2.54);
setScaleKey( spep_2+1 + 9, 1, 2.54,2.54);
setScaleKey( spep_2+1 + 10, 1, 2.56,2.56);
setScaleKey( spep_2+1 + 11, 1, 2.56,2.56);
setScaleKey( spep_2+1 + 12, 1, 2.58,2.58);
setScaleKey( spep_2+1 + 13, 1, 2.58,2.58);
setScaleKey( spep_2+1 + 14, 1, 2.62,2.62);
setScaleKey( spep_2+1 + 15, 1, 2.62,2.62);
setScaleKey( spep_2+1 + 16, 1, 2.64,2.64);
setScaleKey( spep_2+1 + 17, 1, 2.64,2.64);
setScaleKey( spep_2+1 + 18, 1, 2.66,2.66);
setScaleKey( spep_2+1 + 17, 1, 2.66,2.66);
setScaleKey( spep_2+1 + 20, 1, 2.69,2.69);
setScaleKey( spep_2+1 + 21, 1, 2.69,2.69);
setScaleKey( spep_2+1 + 22, 1, 2.71,2.71);
setScaleKey( spep_2+1 + 23, 1, 2.71,2.71);
setScaleKey( spep_2+1 + 24, 1, 2.73,2.73);
setScaleKey( spep_2+1 + 25, 1, 2.73,2.73);
setScaleKey( spep_2+1 + 26, 1, 2.76,2.76);
setScaleKey( spep_2+1 + 27, 1, 2.76,2.76);
setScaleKey( spep_2+1 + 28, 1, 2.78,2.78);
setScaleKey( spep_2+1 + 29, 1, 2.78,2.78);
setScaleKey( spep_2+1 + 30, 1, 2.8,2.8);

setRotateKey( spep_2 + 0, 1, 1.7 );
setRotateKey( spep_2+1 + 8, 1, 1.7 );
setRotateKey( spep_2+1 + 9, 1, 1.7 );
setRotateKey( spep_2+1 + 10, 1, 5.2 );
setRotateKey( spep_2+1 + 11, 1, 5.2 );
setRotateKey( spep_2+1 + 12, 1, 8.6 );
setRotateKey( spep_2+1 + 13, 1, 8.6 );
setRotateKey( spep_2+1 + 14, 1, 12 );
setRotateKey( spep_2+1 + 15, 1, 12 );
setRotateKey( spep_2+1 + 16, 1, 15.5 );
setRotateKey( spep_2+1 + 17, 1, 15.5 );
setRotateKey( spep_2+1 + 18, 1, 17.7 );
setRotateKey( spep_2+1 + 19, 1, 17.7 );
setRotateKey( spep_2+1 + 20, 1, 19.9 );
setRotateKey( spep_2+1 + 21, 1, 19.9 );
setRotateKey( spep_2+1 + 22, 1, 22.2 );
setRotateKey( spep_2+1 + 23, 1, 22.2 );
setRotateKey( spep_2+1 + 24, 1, 27.8 );
setRotateKey( spep_2+1 + 25, 1, 27.8 );
setRotateKey( spep_2+1 + 26, 1, 33.3 );
setRotateKey( spep_2+1 + 27, 1, 33.3 );
setRotateKey( spep_2+1 + 28, 1, 38.9 );
setRotateKey( spep_2+1 + 29, 1, 38.9 );
setRotateKey( spep_2+1 + 30, 1, 44.5 );

--SE
--悟飯キック
SE016 = playSeVer2( spep_2 + 10, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE016, 68 );
SE017 = playSeVer2( spep_2 + 10, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--敵の動き
spep_3=spep_2+44;
------------------------------------------------------
--ピッコロ殴り正面→HIT→背後カット
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, punch_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_f, 0 );
setEffRotateKey( spep_3 + 96, punch_f, 0 );
setEffAlphaKey( spep_3 + 0, punch_f, 255 );
setEffAlphaKey( spep_3 + 94, punch_f, 255 );
setEffAlphaKey( spep_3 + 95, punch_f, 255 );
setEffAlphaKey( spep_3 + 96, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, punch_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_b, 0 );
setEffRotateKey( spep_3 + 96, punch_b, 0 );
setEffAlphaKey( spep_3 + 0, punch_b, 255 );
setEffAlphaKey( spep_3 + 94, punch_b, 255 );
setEffAlphaKey( spep_3 + 95, punch_b, 255 );
setEffAlphaKey( spep_3 + 96, punch_b, 0 );

--敵の動き
setDisp( spep_3+1 + 66, 1, 1);
setDisp( spep_3+1 + 95, 1, 0);

changeAnime( spep_3+1 + 66, 1, 106);
changeAnime( spep_3+1 + 74, 1, 108);

setMoveKey( spep_3+1 + 66, 1, -182.9, -82 , 0 );
setMoveKey( spep_3+1 + 68, 1, -144.9, -91.7 , 0 );
setMoveKey( spep_3+1 + 70, 1, -107, -101.4 , 0 );
setMoveKey( spep_3+1 + 72, 1, -68.9, -111.1 , 0 );
setMoveKey( spep_3+1 + 73, 1, -68.9, -111.1 , 0 );

setMoveKey( spep_3+1 + 74, 1, 162, 6.6 , 0 );
setMoveKey( spep_3+1 + 75, 1, 162, 6.6 , 0 );
setMoveKey( spep_3+1 + 76, 1, 257.8, 5.8 , 0 );
setMoveKey( spep_3+1 + 77, 1, 257.8, 5.8 , 0 );
setMoveKey( spep_3+1 + 78, 1, 111.7, 4.1 , 0 );
setMoveKey( spep_3+1 + 79, 1, 111.7, 4.1 , 0 );
setMoveKey( spep_3+1 + 80, 1, 207.5, 14.6 , 0 );
setMoveKey( spep_3+1 + 81, 1, 207.5, 14.6 , 0 );
setMoveKey( spep_3+1 + 82, 1, 139.4, 21 , 0 );
setMoveKey( spep_3+1 + 83, 1, 139.4, 21 , 0 );
setMoveKey( spep_3+1 + 84, 1, 206.5, -42.2 , 0 );
setMoveKey( spep_3+1 + 85, 1, 206.5, -42.2 , 0 );
setMoveKey( spep_3+1 + 86, 1, 144.5, 17.5 , 0 );
setMoveKey( spep_3+1 + 87, 1, 144.5, 17.5 , 0 );
setMoveKey( spep_3+1 + 88, 1, 160.5, -25.3 , 0 );
setMoveKey( spep_3+1 + 89, 1, 160.5, -25.3 , 0 );
setMoveKey( spep_3+1 + 90, 1, 121.4, 8.4 , 0 );
setMoveKey( spep_3+1 + 91, 1, 121.4, 8.4 , 0 );
setMoveKey( spep_3+1 + 92, 1, 120.5, 6.2 , 0 );
setMoveKey( spep_3+1 + 93, 1, 120.5, 6.2 , 0 );
setMoveKey( spep_3+1 + 94, 1, 119.5, 4 , 0 );


setScaleKey( spep_3+1 + 66, 1, 6.06, 6.06 );
setScaleKey( spep_3+1 + 68, 1, 6.06, 6.06 );
setScaleKey( spep_3+1 + 70, 1, 6.07, 6.07 );
setScaleKey( spep_3+1 + 73, 1, 6.07, 6.07 );

setScaleKey( spep_3+1 + 74, 1, 6.69, 6.69 );
setScaleKey( spep_3+1 + 75, 1, 6.69, 6.69 );
setScaleKey( spep_3+1 + 76, 1, 6.67, 6.67 );
setScaleKey( spep_3+1 + 77, 1, 6.67, 6.67 );
setScaleKey( spep_3+1 + 78, 1, 6.65, 6.65 );
setScaleKey( spep_3+1 + 79, 1, 6.65, 6.65 );
setScaleKey( spep_3+1 + 80, 1, 6.63, 6.63 );
setScaleKey( spep_3+1 + 81, 1, 6.63, 6.63 );
setScaleKey( spep_3+1 + 82, 1, 6.61, 6.61 );
setScaleKey( spep_3+1 + 83, 1, 6.61, 6.61 );
setScaleKey( spep_3+1 + 84, 1, 6.59, 6.59 );
setScaleKey( spep_3+1 + 85, 1, 6.59, 6.59 );
setScaleKey( spep_3+1 + 86, 1, 6.57, 6.57 );
setScaleKey( spep_3+1 + 87, 1, 6.57, 6.57 );
setScaleKey( spep_3+1 + 88, 1, 6.55, 6.55 );
setScaleKey( spep_3+1 + 89, 1, 6.55, 6.55 );
setScaleKey( spep_3+1 + 90, 1, 6.53, 6.53 );
setScaleKey( spep_3+1 + 91, 1, 6.53, 6.53 );
setScaleKey( spep_3+1 + 92, 1, 6.51, 6.51 );
setScaleKey( spep_3+1 + 93, 1, 6.51, 6.51 );
setScaleKey( spep_3+1 + 94, 1, 6.49, 6.49 );
setScaleKey( spep_3+1 + 95, 1, 6.49, 6.49 );

setRotateKey( spep_3+1 + 66, 1, -57.9 );
setRotateKey( spep_3+1 + 73, 1, -57.9 );

setRotateKey( spep_3+1 + 74, 1, 1.7 );
setRotateKey( spep_3+1 + 82, 1, 1.7 );
setRotateKey( spep_3+1 + 83, 1, 1.7 );
setRotateKey( spep_3+1 + 84, 1, 1.6 );
setRotateKey( spep_3+1 + 90, 1, 1.6 );
setRotateKey( spep_3+1 + 91, 1, 1.6 );
setRotateKey( spep_3+1 + 92, 1, 1.5 );
setRotateKey( spep_3+1 + 95, 1, 1.5 );


--SE
--ピッコロ向かってくる
SE018 = playSeVer2( spep_3 + 0, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 0, 1117, "",spep_3 + 84, 0, 12, -1);
SE020 = playSeVer2( spep_3 + 0, 1019, "",spep_3 + 64, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 0, SE020, 85 );

--ピッコロ振りかぶる
SE021 = playSeVer2( spep_3 + 50, 1116, "",spep_3 + 74, 0, 10, -1);

--ピッコロパンチ
SE022 = playSeVer2( spep_3 + 76, 1153, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_3 + 76, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 76, SE023, 74 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景

--敵の動き
spep_4=spep_3+96;
------------------------------------------------------
--トランクス蹴りUP→HIT
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 92, kick_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 92, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 92, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 90, kick_f, 255 );
setEffAlphaKey( spep_4 + 91, kick_f, 255 );
setEffAlphaKey( spep_4 + 92, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 92, kick_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 92, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 92, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 90, kick_b, 255 );
setEffAlphaKey( spep_4 + 91, kick_b, 255 );
setEffAlphaKey( spep_4 + 92, kick_b, 0 );

--敵の動き
setDisp( spep_4+1 + 6, 1, 1);
setDisp( spep_4+1 + 66, 1, 0);

changeAnime( spep_4+1 + 6, 1, 106);
changeAnime( spep_4+1 + 44, 1, 108);

setMoveKey( spep_4+1 + 6, 1, -1168.8, -177.3 , 0 );
setMoveKey( spep_4+1 + 8, 1, -1085.4, -188.2 , 0 );
setMoveKey( spep_4+1 + 10, 1, -1004, -198.9 , 0 );
setMoveKey( spep_4+1 + 12, 1, -924.7, -209.3 , 0 );
setMoveKey( spep_4+1 + 14, 1, -847.5, -219.6 , 0 );
setMoveKey( spep_4+1 + 16, 1, -772.3, -229.6 , 0 );
setMoveKey( spep_4+1 + 18, 1, -699.1, -239.4 , 0 );
setMoveKey( spep_4+1 + 20, 1, -628, -249 , 0 );
setMoveKey( spep_4+1 + 22, 1, -559, -258.3 , 0 );
setMoveKey( spep_4+1 + 24, 1, -492.1, -267.4 , 0 );
setMoveKey( spep_4+1 + 26, 1, -427.2, -276.3 , 0 );
setMoveKey( spep_4+1 + 28, 1, -364.4, -284.9 , 0 );
setMoveKey( spep_4+1 + 30, 1, -303.7, -293.2 , 0 );
setMoveKey( spep_4+1 + 32, 1, -245, -301.3 , 0 );
setMoveKey( spep_4+1 + 34, 1, -188.5, -309.2 , 0 );
setMoveKey( spep_4+1 + 36, 1, -134, -316.8 , 0 );
setMoveKey( spep_4+1 + 37, 1, -134, -316.8 , 0 );

setMoveKey( spep_4+1 + 38, 1, -75.4, 119 , 0 );
setMoveKey( spep_4+1 + 40, 1, -27.3, 125.1 , 0 );
setMoveKey( spep_4+1 + 42, 1, 20.7, 131.1 , 0 );
setMoveKey( spep_4+1 + 43, 1, 20.7, 131.1 , 0 );

setMoveKey( spep_4+1 + 44, 1, 65.9, -135.1 , 0 );
setMoveKey( spep_4+1 + 45, 1, 65.9, -135.1 , 0 );
setMoveKey( spep_4+1 + 46, 1, 10.5, -98.7 , 0 );
setMoveKey( spep_4+1 + 47, 1, 10.5, -98.7 , 0 );
setMoveKey( spep_4+1 + 48, 1, 57, -175 , 0 );
setMoveKey( spep_4+1 + 49, 1, 57, -175 , 0 );
setMoveKey( spep_4+1 + 50, 1, -6.8, -184.3 , 0 );
setMoveKey( spep_4+1 + 51, 1, -6.8, -184.3 , 0 );
setMoveKey( spep_4+1 + 52, 1, 39.6, -284 , 0 );
setMoveKey( spep_4+1 + 53, 1, 39.6, -284 , 0 );
setMoveKey( spep_4+1 + 54, 1, -7.4, -260.3 , 0 );
setMoveKey( spep_4+1 + 55, 1, -7.4, -260.3 , 0 );
setMoveKey( spep_4+1 + 56, 1, 64.8, -458.1 , 0 );
setMoveKey( spep_4+1 + 57, 1, 64.8, -458.1 , 0 );
setMoveKey( spep_4+1 + 58, 1, -6.7, -555.3 , 0 );
setMoveKey( spep_4+1 + 59, 1, -6.7, -555.3 , 0 );
setMoveKey( spep_4+1 + 60, 1, 23.5, -729.8 , 0 );
setMoveKey( spep_4+1 + 61, 1, 23.5, -729.8 , 0 );
setMoveKey( spep_4+1 + 62, 1, -6.1, -840.1 , 0 );
setMoveKey( spep_4+1 + 63, 1, -6.1, -840.1 , 0 );
setMoveKey( spep_4+1 + 64, 1, 49.4, -996.1 , 0 );
setMoveKey( spep_4+1 + 65, 1, 49.4, -996.1 , 0 );
setMoveKey( spep_4+1 + 66, 1, 42.7, -1160.5 , 0 );

setScaleKey( spep_4+1 + 6, 1, 6.04, 6.04 );
setScaleKey( spep_4+1 + 18, 1, 6.04, 6.04 );
setScaleKey( spep_4+1 + 20, 1, 6.05, 6.05 );
setScaleKey( spep_4+1 + 30, 1, 6.05, 6.05 );
setScaleKey( spep_4+1 + 32, 1, 6.06, 6.06 );
setScaleKey( spep_4+1 + 37, 1, 6.06, 6.06 );

setScaleKey( spep_4+1 + 38, 1, 2.41, 2.41 );
setScaleKey( spep_4+1 + 43, 1, 2.41, 2.41 );

setScaleKey( spep_4+1 + 44, 1, 3.16, 3.16 );
setScaleKey( spep_4+1 + 66, 1, 3.16, 3.16 );

setRotateKey( spep_4+1 + 6, 1, -18.6 );
setRotateKey( spep_4+1 + 8, 1, -17.2 );
setRotateKey( spep_4+1 + 10, 1, -15.9 );
setRotateKey( spep_4+1 + 12, 1, -14.5 );
setRotateKey( spep_4+1 + 14, 1, -13.3 );
setRotateKey( spep_4+1 + 16, 1, -12 );
setRotateKey( spep_4+1 + 18, 1, -10.8 );
setRotateKey( spep_4+1 + 20, 1, -9.6 );
setRotateKey( spep_4+1 + 22, 1, -8.5 );
setRotateKey( spep_4+1 + 24, 1, -7.4 );
setRotateKey( spep_4+1 + 26, 1, -6.3 );
setRotateKey( spep_4+1 + 28, 1, -5.3 );
setRotateKey( spep_4+1 + 30, 1, -4.3 );
setRotateKey( spep_4+1 + 32, 1, -3.3 );
setRotateKey( spep_4+1 + 34, 1, -2.4 );
setRotateKey( spep_4+1 + 36, 1, -1.5 );
setRotateKey( spep_4+1 + 37, 1, -1.5 );

setRotateKey( spep_4+1 + 38, 1, 16.3 );
setRotateKey( spep_4+1 + 43, 1, 16.3 );

setRotateKey( spep_4+1 + 44, 1, 56.5 );
setRotateKey( spep_4+1 + 45, 1, 56.5 );
setRotateKey( spep_4+1 + 46, 1, 60 );
setRotateKey( spep_4+1 + 47, 1, 60 );
setRotateKey( spep_4+1 + 48, 1, 63.5 );
setRotateKey( spep_4+1 + 49, 1, 63.5 );
setRotateKey( spep_4+1 + 50, 1, 67 );
setRotateKey( spep_4+1 + 51, 1, 67 );
setRotateKey( spep_4+1 + 52, 1, 70.5 );
setRotateKey( spep_4+1 + 53, 1, 70.5 );
setRotateKey( spep_4+1 + 54, 1, 74 );
setRotateKey( spep_4+1 + 55, 1, 74 );
setRotateKey( spep_4+1 + 56, 1, 73.7 );
setRotateKey( spep_4+1 + 57, 1, 73.7 );
setRotateKey( spep_4+1 + 58, 1, 73.3 );
setRotateKey( spep_4+1 + 59, 1, 73.3 );
setRotateKey( spep_4+1 + 60, 1, 73 );
setRotateKey( spep_4+1 + 61, 1, 73 );
setRotateKey( spep_4+1 + 62, 1, 72.7 );
setRotateKey( spep_4+1 + 63, 1, 72.7 );
setRotateKey( spep_4+1 + 64, 1, 72.3 );
setRotateKey( spep_4+1 + 65, 1, 72.3 );
setRotateKey( spep_4+1 + 66, 1, 72 );

--SE
--敵飛んでいく
SE024 = playSeVer2( spep_4 + 0, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE024, 78 );
SE025 = playSeVer2( spep_4 + 10, 1183, "",spep_4 + 64, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 10, SE025, 72 );
SE026 = playSeVer2( spep_4 + 10, 1121, "",spep_4 + 64, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 10, SE026, 68 );

--トランクス蹴り落とす
SE027 = playSeVer2( spep_4 + 38, 1003, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_4 + 44, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 44, SE028, 91 );
SE029 = playSeVer2( spep_4 + 46, 1010, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5=spep_4+92;
------------------------------------------------------
--ベジータ気弾発射→爆破
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 118, beam_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 118, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_f, 0 );
setEffRotateKey( spep_5 + 118, beam_f, 0 );
setEffAlphaKey( spep_5 + 0, beam_f, 255 );
setEffAlphaKey( spep_5 + 116, beam_f, 255 );
setEffAlphaKey( spep_5 + 117, beam_f, 255 );
setEffAlphaKey( spep_5 + 118, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 118, beam_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 118, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_b, 0 );
setEffRotateKey( spep_5 + 118, beam_b, 0 );
setEffAlphaKey( spep_5 + 0, beam_b, 255 );
setEffAlphaKey( spep_5 + 116, beam_b, 255 );
setEffAlphaKey( spep_5 + 117, beam_b, 255 );
setEffAlphaKey( spep_5 + 118, beam_b, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5+1 + 72, 1, 0 );

changeAnime( spep_5 + 0, 1, 108 );
changeAnime( spep_5+1 + 38, 1, 106 );
changeAnime( spep_5+1 + 62, 1, 108 );

setMoveKey( spep_5 + 0, 1, 21.2, 630.1 , 0 );
setMoveKey( spep_5+1 + 2, 1, 21.2, 580.8 , 0 );
setMoveKey( spep_5+1 + 4, 1, 21.2, 531.4 , 0 );
setMoveKey( spep_5+1 + 6, 1, 21.2, 482.1 , 0 );
setMoveKey( spep_5+1 + 8, 1, 21.2, 432.8 , 0 );
setMoveKey( spep_5+1 + 10, 1, 21.2, 383.4 , 0 );
setMoveKey( spep_5+1 + 12, 1, 21.3, 334.1 , 0 );
setMoveKey( spep_5+1 + 14, 1, 21.3, 284.8 , 0 );
setMoveKey( spep_5+1 + 16, 1, 21.3, 235.4 , 0 );
setMoveKey( spep_5+1 + 18, 1, 21.3, 186.1 , 0 );
setMoveKey( spep_5+1 + 20, 1, 21.3, 136.7 , 0 );
setMoveKey( spep_5+1 + 22, 1, 21.3, 87.4 , 0 );
setMoveKey( spep_5+1 + 24, 1, 21.3, 38.1 , 0 );
setMoveKey( spep_5+1 + 26, 1, 21.3, -11.3 , 0 );
setMoveKey( spep_5+1 + 28, 1, 21.3, -60.6 , 0 );
setMoveKey( spep_5+1 + 30, 1, 21.3, -109.9 , 0 );
setMoveKey( spep_5+1 + 32, 1, 21.3, -159.3 , 0 );
setMoveKey( spep_5+1 + 34, 1, 21.3, -208.6 , 0 );
setMoveKey( spep_5+1 + 37, 1, 13.1, -284.6 , 0 );
setMoveKey( spep_5+1 + 38, 1, -7.7, -178.6 , 0 );
setMoveKey( spep_5+1 + 40, 1, -15.9, -163.4 , 0 );
setMoveKey( spep_5+1 + 42, 1, -13.8, -114.1 , 0 );
setMoveKey( spep_5+1 + 44, 1, -13.8, -82.2 , 0 );
setMoveKey( spep_5+1 + 46, 1, -13.8, -53.1 , 0 );
setMoveKey( spep_5+1 + 48, 1, -13.9, -29 , 0 );
setMoveKey( spep_5+1 + 50, 1, -13.9, -9.9 , 0 );
setMoveKey( spep_5+1 + 52, 1, -13.9, 4.2 , 0 );
setMoveKey( spep_5+1 + 54, 1, -13.9, 4.2 , 0 );
setMoveKey( spep_5+1 + 56, 1, -13.9, -6 , 0 );
setMoveKey( spep_5+1 + 58, 1, -10.7, -35.7 , 0 );
setMoveKey( spep_5+1 + 61, 1, -7.5, -65.3 , 0 );
setMoveKey( spep_5+1 + 62, 1, -15.7, -135.8 , 0 );
setMoveKey( spep_5+1 + 72, 1, -15.7, -135.8 , 0 );

setScaleKey( spep_5 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_5+1 + 37, 1, 1.6, 1.6 );
setScaleKey( spep_5+1 + 38, 1, 1.36, 1.36 );
setScaleKey( spep_5+1 + 61, 1, 1.36, 1.36 );
setScaleKey( spep_5+1 + 62, 1, 1.43, 1.43 );
setScaleKey( spep_5+1 + 72, 1, 1.43, 1.43 );

setRotateKey( spep_5 + 0, 1, 81.7 );
setRotateKey( spep_5+1 + 37, 1, 81.7 );
setRotateKey( spep_5+1 + 38, 1, 25.5 );
setRotateKey( spep_5+1 + 61, 1, 25.5 );
setRotateKey( spep_5+1 + 62, 1, 79.7 );
setRotateKey( spep_5+1 + 72, 1, 79.7 );

--SE
--ベジータ飛び上がって回転する
SE030 = playSeVer2( spep_5 + 10, 1117, "",spep_5 + 80, 0, 18, -1);
SE031 = playSeVer2( spep_5 + 10, 1116, "",spep_5 + 46, 0, 16, -1);
SE032 = playSeVer2( spep_5 + 30, 1004, "", 0, 0, 0, -1);

--ベジータ気弾撃つ
SE033 = playSeVer2( spep_5 + 62, 1016, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_5 + 64, 1145, "",spep_5 + 100, 0, 18, -1);
SE035 = playSeVer2( spep_5 + 68, 1023, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_5 + 76, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6=spep_5+118;
------------------------------------------------------
--悟空正面→パンチ（手元）
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_6 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 130, fly_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, fly_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 130, fly_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, fly_f, 0 );
setEffRotateKey( spep_6 + 130, fly_f, 0 );
setEffAlphaKey( spep_6 + 0, fly_f, 255 );
setEffAlphaKey( spep_6 + 126, fly_f, 255 );
setEffAlphaKey( spep_6 + 127, fly_f, 255 );
setEffAlphaKey( spep_6 + 128, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_6 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 130, fly_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 130, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, fly_b, 0 );
setEffRotateKey( spep_6 + 130, fly_b, 0 );
setEffAlphaKey( spep_6 + 0, fly_b, 255 );
setEffAlphaKey( spep_6 + 126, fly_b, 255 );
setEffAlphaKey( spep_6 + 127, fly_b, 255 );
setEffAlphaKey( spep_6 + 128, fly_b, 0 );

--敵の動き
setDisp( spep_6+1 + 70, 1, 1);
setDisp( spep_6+1 + 116, 1, 0);

changeAnime( spep_6+1 + 70, 1, 106);
changeAnime( spep_6+1 + 86, 1, 108);

setMoveKey( spep_6+1 + 70, 1, -75.1, -185.7 , 0 );
setMoveKey( spep_6+1 + 72, 1, -63, -184.6 , 0 );
setMoveKey( spep_6+1 + 74, 1, -51, -183.5 , 0 );
setMoveKey( spep_6+1 + 76, 1, -38.9, -182.4 , 0 );
setMoveKey( spep_6+1 + 78, 1, -26.8, -181.3 , 0 );
setMoveKey( spep_6+1 + 80, 1, -14.7, -180.2 , 0 );
setMoveKey( spep_6+1 + 82, 1, -2.7, -179.1 , 0 );
setMoveKey( spep_6+1 + 84, 1, 9.4, -178 , 0 );
setMoveKey( spep_6+1 + 85, 1, 9.4, -178 , 0 );

setMoveKey( spep_6+1 + 86, 1, 116.9, -34.6 , 0 );
setMoveKey( spep_6+1 + 87, 1, 116.9, -34.6 , 0 );
setMoveKey( spep_6+1 + 88, 1, 89, -39.3 , 0 );
setMoveKey( spep_6+1 + 89, 1, 89, -39.3 , 0 );
setMoveKey( spep_6+1 + 90, 1, 160.7, -25.2 , 0 );
setMoveKey( spep_6+1 + 91, 1, 160.7, -25.2 , 0 );
setMoveKey( spep_6+1 + 92, 1, 124.1, -41.4 , 0 );
setMoveKey( spep_6+1 + 93, 1, 124.1, -41.4 , 0 );
setMoveKey( spep_6+1 + 94, 1, 160, -73.6 , 0 );
setMoveKey( spep_6+1 + 95, 1, 160, -73.6 , 0 );
setMoveKey( spep_6+1 + 96, 1, 179.1, -24.5 , 0 );
setMoveKey( spep_6+1 + 97, 1, 179.1, -24.5 , 0 );
setMoveKey( spep_6+1 + 98, 1, 156.1, -62.8 , 0 );
setMoveKey( spep_6+1 + 99, 1, 156.1, -62.8 , 0 );
setMoveKey( spep_6+1 + 100, 1, 255.2, -91.4 , 0 );
setMoveKey( spep_6+1 + 101, 1, 255.2, -91.4 , 0 );
setMoveKey( spep_6+1 + 102, 1, 313.9, -164.2 , 0 );
setMoveKey( spep_6+1 + 103, 1, 313.9, -164.2 , 0 );
setMoveKey( spep_6+1 + 104, 1, 351.3, -186.5 , 0 );
setMoveKey( spep_6+1 + 105, 1, 351.3, -186.5 , 0 );
setMoveKey( spep_6+1 + 106, 1, 415.2, -235.2 , 0 );
setMoveKey( spep_6+1 + 107, 1, 415.2, -235.2 , 0 );
setMoveKey( spep_6+1 + 108, 1, 450.2, -256.1 , 0 );
setMoveKey( spep_6+1 + 109, 1, 450.2, -256.1 , 0 );
setMoveKey( spep_6+1 + 110, 1, 467.7, -290.9 , 0 );
setMoveKey( spep_6+1 + 111, 1, 467.7, -290.9 , 0 );
setMoveKey( spep_6+1 + 112, 1, 514.4, -281.5 , 0 );
setMoveKey( spep_6+1 + 113, 1, 514.4, -281.5 , 0 );
setMoveKey( spep_6+1 + 114, 1, 521, -316.2 , 0 );
setMoveKey( spep_6+1 + 115, 1, 521, -316.2 , 0 );
setMoveKey( spep_6+1 + 116, 1, 506.4, -300.5 , 0 );

setScaleKey( spep_6+1 + 70, 1, 5.99, 5.99 );
setScaleKey( spep_6+1 + 85, 1, 5.99, 5.99 );

setScaleKey( spep_6+1 + 86, 1, 6.36, 6.36 );
setScaleKey( spep_6+1 + 98, 1, 6.36, 6.36 );
setScaleKey( spep_6+1 + 99, 1, 6.36, 6.36 );
setScaleKey( spep_6+1 + 100, 1, 5.06, 5.06 );
setScaleKey( spep_6+1 + 101, 1, 5.06, 5.06 );
setScaleKey( spep_6+1 + 102, 1, 3.91, 3.91 );
setScaleKey( spep_6+1 + 103, 1, 3.91, 3.91 );
setScaleKey( spep_6+1 + 104, 1, 2.92, 2.92 );
setScaleKey( spep_6+1 + 105, 1, 2.92, 2.92 );
setScaleKey( spep_6+1 + 106, 1, 2.08, 2.08 );
setScaleKey( spep_6+1 + 107, 1, 2.08, 2.08 );
setScaleKey( spep_6+1 + 108, 1, 1.39, 1.39 );
setScaleKey( spep_6+1 + 109, 1, 1.39, 1.39 );
setScaleKey( spep_6+1 + 110, 1, 0.85, 0.85 );
setScaleKey( spep_6+1 + 111, 1, 0.85, 0.85 );
setScaleKey( spep_6+1 + 112, 1, 0.47, 0.47 );
setScaleKey( spep_6+1 + 113, 1, 0.47, 0.47 );
setScaleKey( spep_6+1 + 114, 1, 0.24, 0.24 );
setScaleKey( spep_6+1 + 115, 1, 0.24, 0.24 );
setScaleKey( spep_6+1 + 116, 1, 0.16, 0.16 );

setRotateKey( spep_6+1 + 70, 1, -48 );
setRotateKey( spep_6+1 + 85, 1, -48 );

setRotateKey( spep_6+1 + 86, 1, 3.8 );
setRotateKey( spep_6+1 + 87, 1, 3.8 );
setRotateKey( spep_6+1 + 88, 1, 5.1 );
setRotateKey( spep_6+1 + 89, 1, 5.1 );
setRotateKey( spep_6+1 + 90, 1, 6.1 );
setRotateKey( spep_6+1 + 91, 1, 6.1 );
setRotateKey( spep_6+1 + 92, 1, 6.9 );
setRotateKey( spep_6+1 + 93, 1, 6.9 );
setRotateKey( spep_6+1 + 94, 1, 7.5 );
setRotateKey( spep_6+1 + 95, 1, 7.5 );
setRotateKey( spep_6+1 + 96, 1, 7.9 );
setRotateKey( spep_6+1 + 97, 1, 7.9 );
setRotateKey( spep_6+1 + 98, 1, 8 );
setRotateKey( spep_6+1 + 99, 1, 8 );
setRotateKey( spep_6+1 + 100, 1, 12.4 );
setRotateKey( spep_6+1 + 101, 1, 12.4 );
setRotateKey( spep_6+1 + 102, 1, 16.2 );
setRotateKey( spep_6+1 + 103, 1, 16.2 );
setRotateKey( spep_6+1 + 104, 1, 19.6 );
setRotateKey( spep_6+1 + 105, 1, 19.6 );
setRotateKey( spep_6+1 + 106, 1, 22.4 );
setRotateKey( spep_6+1 + 107, 1, 22.4 );
setRotateKey( spep_6+1 + 108, 1, 24.7 );
setRotateKey( spep_6+1 + 109, 1, 24.7 );
setRotateKey( spep_6+1 + 110, 1, 26.5 );
setRotateKey( spep_6+1 + 111, 1, 26.5 );
setRotateKey( spep_6+1 + 112, 1, 27.8 );
setRotateKey( spep_6+1 + 113, 1, 27.8 );
setRotateKey( spep_6+1 + 114, 1, 28.6 );
setRotateKey( spep_6+1 + 115, 1, 28.6 );
setRotateKey( spep_6+1 + 116, 1, 28.8 );

--SE
--悟空向かってくる
SE037 = playSeVer2( spep_6 + 0, 1182, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_6 + 0, 9, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_6 + 8, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 8, SE039, 40 );

--悟空振りかぶる
SE040 = playSeVer2( spep_6 + 60, 1116, "",spep_6 + 96, 0, 10, -1);

--悟空パンチ
SE041 = playSeVer2( spep_6 + 88, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 88, SE041, 79 );
SE042 = playSeVer2( spep_6 + 88, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 88, SE042, 65 );

--敵飛んでいく
SE043 = playSeVer2( spep_6 + 92, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 92, SE043, 71 );
SE044 = playSeVer2( spep_6 + 112, 1183, "",spep_6 + 156, 0, 10, -1);
SE045 = playSeVer2( spep_6 + 112, 1121, "",spep_6 + 156, 0, 10, -1);
setSeVolumeByWorkId( spep_6 + 112, SE045, 72 );
setPitch( spep_6 + 112, SE045, 200 );
setTimeStretch( SE045, 1.13, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 130, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_7=spep_6+128;
------------------------------------------------------
--ガッ
------------------------------------------------------
-- ** ひび割れ ** --
finish_f = entryEffect( spep_7 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_7 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 8, finish_f, 0 );
setEffRotateKey( spep_7 + 112, finish_f, 0 );
setEffAlphaKey( spep_7 + 8, finish_f, 255 );
setEffAlphaKey( spep_7 + 112, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_13, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 140, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 140, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 140, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 140, finish_b, 255 );
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_7 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_7 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_7 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_7 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_7 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_7 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_7 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_7 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_7 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_7 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_7 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_7 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_7 + 112, bakuhatsu, 255 );
]]
-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_7 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_7 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_7 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_7 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_7 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_7 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_7 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_7 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_7 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_7 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_7 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_7 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_7 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_7 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_7 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_7 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_7 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_7 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_7 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_7 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_7 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_7 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_7 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_7 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_7 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_7 + 14, ctga, 14, 20 );

setEffMoveKey( spep_7 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_7 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_7 + 14, ctga, -10.9 );
setEffRotateKey( spep_7 + 15, ctga, -10.9 );
setEffRotateKey( spep_7 + 16, ctga, -14.9 );
setEffRotateKey( spep_7 + 17, ctga, -14.9 );
setEffRotateKey( spep_7 + 18, ctga, -10.9 );
setEffRotateKey( spep_7 + 19, ctga, -10.9 );
setEffRotateKey( spep_7 + 20, ctga, -14.9 );
setEffRotateKey( spep_7 + 21, ctga, -14.9 );
setEffRotateKey( spep_7 + 22, ctga, -10.9 );
setEffRotateKey( spep_7 + 23, ctga, -10.9 );
setEffRotateKey( spep_7 + 24, ctga, -14.9 );
setEffRotateKey( spep_7 + 25, ctga, -14.9 );
setEffRotateKey( spep_7 + 26, ctga, -10.9 );
setEffRotateKey( spep_7 + 27, ctga, -10.9 );
setEffRotateKey( spep_7 + 28, ctga, -14.9 );
setEffRotateKey( spep_7 + 112, ctga, -14.9 );

setEffAlphaKey( spep_7 + 14, ctga, 255 );
setEffAlphaKey( spep_7 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 112, 1, 0 );

changeAnime( spep_7 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_7 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_7 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_7 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_7 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_7 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_7 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_7 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_7 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_7 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_7 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_7 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_7 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_7 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_7 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_7 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_7 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_7 + 0, 1, -122.8 - 232 );
setRotateKey( spep_7 + 2, 1, -122.8 );
setRotateKey( spep_7 -3 + 6, 1, -1 );
setRotateKey( spep_7 -3 + 8, 1, 120.7 );
setRotateKey( spep_7 -3 + 10, 1, 242.5 );
setRotateKey( spep_7 -3 + 12, 1, 364.3 );
setRotateKey( spep_7 -3 + 14, 1, 486 );
setRotateKey( spep_7 -3 + 16, 1, 607.8 );
setRotateKey( spep_7 -3 + 18, 1, 729.5 );
setRotateKey( spep_7 + 112, 1, 729.5 );

-- ** 音 ** --
--爆発
--SE0N1 = playSeVer2( spep_7 + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE046 = playSeVer2( spep_7 + 14, 1054, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_7 + 14, 1025, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_7 + 6 ); -- ダメージ表示フレーム
endPhase( spep_7 + 108 ); -- 終了フレーム
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--セリフカットイン　全員突撃
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 186, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 186, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 186, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 186, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 70, 515, 2000);-- ゴゴゴゴ
setEffShake( spep_x + 12, ctgogo, 72, 10 );
setEffMoveKey(  spep_x +12,  ctgogo, 70,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  70,  515);

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

--SE
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 200, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 32 );
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 200, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 151 );
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--飛び上がる
SE010 = playSeVer2( spep_0 + 128, 1207, "",spep_0 + 200, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 128, SE010, 56 );
SE011 = playSeVer2( spep_0 + 128, 44, "",spep_0 + 200, 0, 16, -1);
SE012 = playSeVer2( spep_0 + 128, 1117, "",spep_0 + 200, 0, 16, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 186, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 148; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--SE
--オーラ
SE013 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);

--飛び上がる
SE014 = playSeVer2( spep_0 + 150, 1116, "",spep_0 + 200, 0, 16, -1);

--白フェード
entryFade( spep_0 +178 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--敵の動き
spep_1=spep_0+186;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

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

-- ** 次の準備 ** --
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2 = spep_1 + 94;
------------------------------------------------------
--悟飯蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
assault_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, assault_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 44, assault_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, assault_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 44, assault_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, assault_f, 0 );
setEffRotateKey( spep_2 + 44, assault_f, 0 );
setEffAlphaKey( spep_2 + 0, assault_f, 255 );
setEffAlphaKey( spep_2 + 42, assault_f, 255 );
setEffAlphaKey( spep_2 + 43, assault_f, 255 );
setEffAlphaKey( spep_2 + 44, assault_f, 0 );

-- ** エフェクト等 ** --
assault_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, assault_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 44, assault_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, assault_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 44, assault_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, assault_b, 0 );
setEffRotateKey( spep_2 + 44, assault_b, 0 );
setEffAlphaKey( spep_2 + 0, assault_b, 255 );
setEffAlphaKey( spep_2 + 42, assault_b, 255 );
setEffAlphaKey( spep_2 + 43, assault_b, 255 );
setEffAlphaKey( spep_2 + 44, assault_b, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2+1 + 30, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2+1 + 8, 1, 108 );

setMoveKey( spep_2 + 0, 1, -17.8, 3 , 0 );
setMoveKey( spep_2+1 + 2, 1, -4.9, -13.4 , 0 );
setMoveKey( spep_2+1 + 4, 1, 8, -29.8 , 0 );
setMoveKey( spep_2+1 + 7, 1, 20.9, -46.1 , 0 );
setMoveKey( spep_2+1 + 8, 1, 132.1, -148 , 0 );
setMoveKey( spep_2+1 + 9, 1, 132.1, -148 , 0 );
setMoveKey( spep_2+1 + 10, 1, 208.1, -78.8 , 0 );
setMoveKey( spep_2+1 + 11, 1, 208.1, -78.8 , 0 );
setMoveKey( spep_2+1 + 12, 1, 172.3, -131.9 , 0 );
setMoveKey( spep_2+1 + 13, 1, 172.3, -131.9 , 0 );
setMoveKey( spep_2+1 + 14, 1, 262.7, -229.1 , 0 );
setMoveKey( spep_2+1 + 15, 1, 262.7, -229.1 , 0 );
setMoveKey( spep_2+1 + 16, 1, 232.1, -204.6 , 0 );
setMoveKey( spep_2+1 + 17, 1, 232.1, -204.6 , 0 );
setMoveKey( spep_2+1 + 18, 1, 237.2, -216.1 , 0 );
setMoveKey( spep_2+1 + 19, 1, 237.2, -216.1 , 0 );
setMoveKey( spep_2+1 + 20, 1, 242.3, -227.8 , 0 );
setMoveKey( spep_2+1 + 21, 1, 242.3, -227.8 , 0 );
setMoveKey( spep_2+1 + 22, 1, 247.6, -239.7 , 0 );
setMoveKey( spep_2+1 + 23, 1, 247.6, -239.7 , 0 );
setMoveKey( spep_2+1 + 24, 1, 347.4, -385 , 0 );
setMoveKey( spep_2+1 + 25, 1, 347.4, -385 , 0 );
setMoveKey( spep_2+1 + 26, 1, 449, -532.9 , 0 );
setMoveKey( spep_2+1 + 27, 1, 449, -532.9 , 0 );
setMoveKey( spep_2+1 + 28, 1, 552.2, -683.2 , 0 );
setMoveKey( spep_2+1 + 29, 1, 552.2, -683.2 , 0 );
setMoveKey( spep_2+1 + 30, 1, 657.3, -836.1 , 0 );

setScaleKey( spep_2 + 0, 1, 2.44,2.44);
setScaleKey( spep_2+1 + 2, 1, 2.47,2.47);
setScaleKey( spep_2+1 + 4, 1, 2.49,2.49);
setScaleKey( spep_2+1 + 7, 1, 2.51,2.51);
setScaleKey( spep_2+1 + 8, 1, 2.54,2.54);
setScaleKey( spep_2+1 + 9, 1, 2.54,2.54);
setScaleKey( spep_2+1 + 10, 1, 2.56,2.56);
setScaleKey( spep_2+1 + 11, 1, 2.56,2.56);
setScaleKey( spep_2+1 + 12, 1, 2.58,2.58);
setScaleKey( spep_2+1 + 13, 1, 2.58,2.58);
setScaleKey( spep_2+1 + 14, 1, 2.62,2.62);
setScaleKey( spep_2+1 + 15, 1, 2.62,2.62);
setScaleKey( spep_2+1 + 16, 1, 2.64,2.64);
setScaleKey( spep_2+1 + 17, 1, 2.64,2.64);
setScaleKey( spep_2+1 + 18, 1, 2.66,2.66);
setScaleKey( spep_2+1 + 17, 1, 2.66,2.66);
setScaleKey( spep_2+1 + 20, 1, 2.69,2.69);
setScaleKey( spep_2+1 + 21, 1, 2.69,2.69);
setScaleKey( spep_2+1 + 22, 1, 2.71,2.71);
setScaleKey( spep_2+1 + 23, 1, 2.71,2.71);
setScaleKey( spep_2+1 + 24, 1, 2.73,2.73);
setScaleKey( spep_2+1 + 25, 1, 2.73,2.73);
setScaleKey( spep_2+1 + 26, 1, 2.76,2.76);
setScaleKey( spep_2+1 + 27, 1, 2.76,2.76);
setScaleKey( spep_2+1 + 28, 1, 2.78,2.78);
setScaleKey( spep_2+1 + 29, 1, 2.78,2.78);
setScaleKey( spep_2+1 + 30, 1, 2.8,2.8);

setRotateKey( spep_2 + 0, 1, 1.7 );
setRotateKey( spep_2+1 + 8, 1, 1.7 );
setRotateKey( spep_2+1 + 9, 1, 1.7 );
setRotateKey( spep_2+1 + 10, 1, 5.2 );
setRotateKey( spep_2+1 + 11, 1, 5.2 );
setRotateKey( spep_2+1 + 12, 1, 8.6 );
setRotateKey( spep_2+1 + 13, 1, 8.6 );
setRotateKey( spep_2+1 + 14, 1, 12 );
setRotateKey( spep_2+1 + 15, 1, 12 );
setRotateKey( spep_2+1 + 16, 1, 15.5 );
setRotateKey( spep_2+1 + 17, 1, 15.5 );
setRotateKey( spep_2+1 + 18, 1, 17.7 );
setRotateKey( spep_2+1 + 19, 1, 17.7 );
setRotateKey( spep_2+1 + 20, 1, 19.9 );
setRotateKey( spep_2+1 + 21, 1, 19.9 );
setRotateKey( spep_2+1 + 22, 1, 22.2 );
setRotateKey( spep_2+1 + 23, 1, 22.2 );
setRotateKey( spep_2+1 + 24, 1, 27.8 );
setRotateKey( spep_2+1 + 25, 1, 27.8 );
setRotateKey( spep_2+1 + 26, 1, 33.3 );
setRotateKey( spep_2+1 + 27, 1, 33.3 );
setRotateKey( spep_2+1 + 28, 1, 38.9 );
setRotateKey( spep_2+1 + 29, 1, 38.9 );
setRotateKey( spep_2+1 + 30, 1, 44.5 );

--SE
--悟飯キック
SE016 = playSeVer2( spep_2 + 10, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE016, 68 );
SE017 = playSeVer2( spep_2 + 10, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--敵の動き
spep_3=spep_2+44;
------------------------------------------------------
--ピッコロ殴り正面→HIT→背後カット
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, punch_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_f, 0 );
setEffRotateKey( spep_3 + 96, punch_f, 0 );
setEffAlphaKey( spep_3 + 0, punch_f, 255 );
setEffAlphaKey( spep_3 + 94, punch_f, 255 );
setEffAlphaKey( spep_3 + 95, punch_f, 255 );
setEffAlphaKey( spep_3 + 96, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, punch_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_b, 0 );
setEffRotateKey( spep_3 + 96, punch_b, 0 );
setEffAlphaKey( spep_3 + 0, punch_b, 255 );
setEffAlphaKey( spep_3 + 94, punch_b, 255 );
setEffAlphaKey( spep_3 + 95, punch_b, 255 );
setEffAlphaKey( spep_3 + 96, punch_b, 0 );

--敵の動き
setDisp( spep_3+1 + 66, 1, 1);
setDisp( spep_3+1 + 95, 1, 0);

changeAnime( spep_3+1 + 66, 1, 106);
changeAnime( spep_3+1 + 74, 1, 108);

setMoveKey( spep_3+1 + 66, 1, -182.9, -82 , 0 );
setMoveKey( spep_3+1 + 68, 1, -144.9, -91.7 , 0 );
setMoveKey( spep_3+1 + 70, 1, -107, -101.4 , 0 );
setMoveKey( spep_3+1 + 72, 1, -68.9, -111.1 , 0 );
setMoveKey( spep_3+1 + 73, 1, -68.9, -111.1 , 0 );

setMoveKey( spep_3+1 + 74, 1, 162, 6.6 , 0 );
setMoveKey( spep_3+1 + 75, 1, 162, 6.6 , 0 );
setMoveKey( spep_3+1 + 76, 1, 257.8, 5.8 , 0 );
setMoveKey( spep_3+1 + 77, 1, 257.8, 5.8 , 0 );
setMoveKey( spep_3+1 + 78, 1, 111.7, 4.1 , 0 );
setMoveKey( spep_3+1 + 79, 1, 111.7, 4.1 , 0 );
setMoveKey( spep_3+1 + 80, 1, 207.5, 14.6 , 0 );
setMoveKey( spep_3+1 + 81, 1, 207.5, 14.6 , 0 );
setMoveKey( spep_3+1 + 82, 1, 139.4, 21 , 0 );
setMoveKey( spep_3+1 + 83, 1, 139.4, 21 , 0 );
setMoveKey( spep_3+1 + 84, 1, 206.5, -42.2 , 0 );
setMoveKey( spep_3+1 + 85, 1, 206.5, -42.2 , 0 );
setMoveKey( spep_3+1 + 86, 1, 144.5, 17.5 , 0 );
setMoveKey( spep_3+1 + 87, 1, 144.5, 17.5 , 0 );
setMoveKey( spep_3+1 + 88, 1, 160.5, -25.3 , 0 );
setMoveKey( spep_3+1 + 89, 1, 160.5, -25.3 , 0 );
setMoveKey( spep_3+1 + 90, 1, 121.4, 8.4 , 0 );
setMoveKey( spep_3+1 + 91, 1, 121.4, 8.4 , 0 );
setMoveKey( spep_3+1 + 92, 1, 120.5, 6.2 , 0 );
setMoveKey( spep_3+1 + 93, 1, 120.5, 6.2 , 0 );
setMoveKey( spep_3+1 + 94, 1, 119.5, 4 , 0 );


setScaleKey( spep_3+1 + 66, 1, 6.06, 6.06 );
setScaleKey( spep_3+1 + 68, 1, 6.06, 6.06 );
setScaleKey( spep_3+1 + 70, 1, 6.07, 6.07 );
setScaleKey( spep_3+1 + 73, 1, 6.07, 6.07 );

setScaleKey( spep_3+1 + 74, 1, 6.69, 6.69 );
setScaleKey( spep_3+1 + 75, 1, 6.69, 6.69 );
setScaleKey( spep_3+1 + 76, 1, 6.67, 6.67 );
setScaleKey( spep_3+1 + 77, 1, 6.67, 6.67 );
setScaleKey( spep_3+1 + 78, 1, 6.65, 6.65 );
setScaleKey( spep_3+1 + 79, 1, 6.65, 6.65 );
setScaleKey( spep_3+1 + 80, 1, 6.63, 6.63 );
setScaleKey( spep_3+1 + 81, 1, 6.63, 6.63 );
setScaleKey( spep_3+1 + 82, 1, 6.61, 6.61 );
setScaleKey( spep_3+1 + 83, 1, 6.61, 6.61 );
setScaleKey( spep_3+1 + 84, 1, 6.59, 6.59 );
setScaleKey( spep_3+1 + 85, 1, 6.59, 6.59 );
setScaleKey( spep_3+1 + 86, 1, 6.57, 6.57 );
setScaleKey( spep_3+1 + 87, 1, 6.57, 6.57 );
setScaleKey( spep_3+1 + 88, 1, 6.55, 6.55 );
setScaleKey( spep_3+1 + 89, 1, 6.55, 6.55 );
setScaleKey( spep_3+1 + 90, 1, 6.53, 6.53 );
setScaleKey( spep_3+1 + 91, 1, 6.53, 6.53 );
setScaleKey( spep_3+1 + 92, 1, 6.51, 6.51 );
setScaleKey( spep_3+1 + 93, 1, 6.51, 6.51 );
setScaleKey( spep_3+1 + 94, 1, 6.49, 6.49 );
setScaleKey( spep_3+1 + 95, 1, 6.49, 6.49 );

setRotateKey( spep_3+1 + 66, 1, -57.9 );
setRotateKey( spep_3+1 + 73, 1, -57.9 );

setRotateKey( spep_3+1 + 74, 1, 1.7 );
setRotateKey( spep_3+1 + 82, 1, 1.7 );
setRotateKey( spep_3+1 + 83, 1, 1.7 );
setRotateKey( spep_3+1 + 84, 1, 1.6 );
setRotateKey( spep_3+1 + 90, 1, 1.6 );
setRotateKey( spep_3+1 + 91, 1, 1.6 );
setRotateKey( spep_3+1 + 92, 1, 1.5 );
setRotateKey( spep_3+1 + 95, 1, 1.5 );


--SE
--ピッコロ向かってくる
SE018 = playSeVer2( spep_3 + 0, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 0, 1117, "",spep_3 + 84, 0, 12, -1);
SE020 = playSeVer2( spep_3 + 0, 1019, "",spep_3 + 64, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 0, SE020, 85 );

--ピッコロ振りかぶる
SE021 = playSeVer2( spep_3 + 50, 1116, "",spep_3 + 74, 0, 10, -1);

--ピッコロパンチ
SE022 = playSeVer2( spep_3 + 76, 1153, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_3 + 76, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 76, SE023, 74 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景

--敵の動き
spep_4=spep_3+96;
------------------------------------------------------
--トランクス蹴りUP→HIT
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 92, kick_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 92, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 92, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 90, kick_f, 255 );
setEffAlphaKey( spep_4 + 91, kick_f, 255 );
setEffAlphaKey( spep_4 + 92, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_4 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 92, kick_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 92, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 92, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 90, kick_b, 255 );
setEffAlphaKey( spep_4 + 91, kick_b, 255 );
setEffAlphaKey( spep_4 + 92, kick_b, 0 );

--敵の動き
setDisp( spep_4+1 + 6, 1, 1);
setDisp( spep_4+1 + 66, 1, 0);

changeAnime( spep_4+1 + 6, 1, 106);
changeAnime( spep_4+1 + 44, 1, 108);

setMoveKey( spep_4+1 + 6, 1, -1168.8, -177.3 , 0 );
setMoveKey( spep_4+1 + 8, 1, -1085.4, -188.2 , 0 );
setMoveKey( spep_4+1 + 10, 1, -1004, -198.9 , 0 );
setMoveKey( spep_4+1 + 12, 1, -924.7, -209.3 , 0 );
setMoveKey( spep_4+1 + 14, 1, -847.5, -219.6 , 0 );
setMoveKey( spep_4+1 + 16, 1, -772.3, -229.6 , 0 );
setMoveKey( spep_4+1 + 18, 1, -699.1, -239.4 , 0 );
setMoveKey( spep_4+1 + 20, 1, -628, -249 , 0 );
setMoveKey( spep_4+1 + 22, 1, -559, -258.3 , 0 );
setMoveKey( spep_4+1 + 24, 1, -492.1, -267.4 , 0 );
setMoveKey( spep_4+1 + 26, 1, -427.2, -276.3 , 0 );
setMoveKey( spep_4+1 + 28, 1, -364.4, -284.9 , 0 );
setMoveKey( spep_4+1 + 30, 1, -303.7, -293.2 , 0 );
setMoveKey( spep_4+1 + 32, 1, -245, -301.3 , 0 );
setMoveKey( spep_4+1 + 34, 1, -188.5, -309.2 , 0 );
setMoveKey( spep_4+1 + 36, 1, -134, -316.8 , 0 );
setMoveKey( spep_4+1 + 37, 1, -134, -316.8 , 0 );

setMoveKey( spep_4+1 + 38, 1, -75.4, 119 , 0 );
setMoveKey( spep_4+1 + 40, 1, -27.3, 125.1 , 0 );
setMoveKey( spep_4+1 + 42, 1, 20.7, 131.1 , 0 );
setMoveKey( spep_4+1 + 43, 1, 20.7, 131.1 , 0 );

setMoveKey( spep_4+1 + 44, 1, 65.9, -135.1 , 0 );
setMoveKey( spep_4+1 + 45, 1, 65.9, -135.1 , 0 );
setMoveKey( spep_4+1 + 46, 1, 10.5, -98.7 , 0 );
setMoveKey( spep_4+1 + 47, 1, 10.5, -98.7 , 0 );
setMoveKey( spep_4+1 + 48, 1, 57, -175 , 0 );
setMoveKey( spep_4+1 + 49, 1, 57, -175 , 0 );
setMoveKey( spep_4+1 + 50, 1, -6.8, -184.3 , 0 );
setMoveKey( spep_4+1 + 51, 1, -6.8, -184.3 , 0 );
setMoveKey( spep_4+1 + 52, 1, 39.6, -284 , 0 );
setMoveKey( spep_4+1 + 53, 1, 39.6, -284 , 0 );
setMoveKey( spep_4+1 + 54, 1, -7.4, -260.3 , 0 );
setMoveKey( spep_4+1 + 55, 1, -7.4, -260.3 , 0 );
setMoveKey( spep_4+1 + 56, 1, 64.8, -458.1 , 0 );
setMoveKey( spep_4+1 + 57, 1, 64.8, -458.1 , 0 );
setMoveKey( spep_4+1 + 58, 1, -6.7, -555.3 , 0 );
setMoveKey( spep_4+1 + 59, 1, -6.7, -555.3 , 0 );
setMoveKey( spep_4+1 + 60, 1, 23.5, -729.8 , 0 );
setMoveKey( spep_4+1 + 61, 1, 23.5, -729.8 , 0 );
setMoveKey( spep_4+1 + 62, 1, -6.1, -840.1 , 0 );
setMoveKey( spep_4+1 + 63, 1, -6.1, -840.1 , 0 );
setMoveKey( spep_4+1 + 64, 1, 49.4, -996.1 , 0 );
setMoveKey( spep_4+1 + 65, 1, 49.4, -996.1 , 0 );
setMoveKey( spep_4+1 + 66, 1, 42.7, -1160.5 , 0 );

setScaleKey( spep_4+1 + 6, 1, 6.04, 6.04 );
setScaleKey( spep_4+1 + 18, 1, 6.04, 6.04 );
setScaleKey( spep_4+1 + 20, 1, 6.05, 6.05 );
setScaleKey( spep_4+1 + 30, 1, 6.05, 6.05 );
setScaleKey( spep_4+1 + 32, 1, 6.06, 6.06 );
setScaleKey( spep_4+1 + 37, 1, 6.06, 6.06 );

setScaleKey( spep_4+1 + 38, 1, 2.41, 2.41 );
setScaleKey( spep_4+1 + 43, 1, 2.41, 2.41 );

setScaleKey( spep_4+1 + 44, 1, 3.16, 3.16 );
setScaleKey( spep_4+1 + 66, 1, 3.16, 3.16 );

setRotateKey( spep_4+1 + 6, 1, -18.6 );
setRotateKey( spep_4+1 + 8, 1, -17.2 );
setRotateKey( spep_4+1 + 10, 1, -15.9 );
setRotateKey( spep_4+1 + 12, 1, -14.5 );
setRotateKey( spep_4+1 + 14, 1, -13.3 );
setRotateKey( spep_4+1 + 16, 1, -12 );
setRotateKey( spep_4+1 + 18, 1, -10.8 );
setRotateKey( spep_4+1 + 20, 1, -9.6 );
setRotateKey( spep_4+1 + 22, 1, -8.5 );
setRotateKey( spep_4+1 + 24, 1, -7.4 );
setRotateKey( spep_4+1 + 26, 1, -6.3 );
setRotateKey( spep_4+1 + 28, 1, -5.3 );
setRotateKey( spep_4+1 + 30, 1, -4.3 );
setRotateKey( spep_4+1 + 32, 1, -3.3 );
setRotateKey( spep_4+1 + 34, 1, -2.4 );
setRotateKey( spep_4+1 + 36, 1, -1.5 );
setRotateKey( spep_4+1 + 37, 1, -1.5 );

setRotateKey( spep_4+1 + 38, 1, 16.3 );
setRotateKey( spep_4+1 + 43, 1, 16.3 );

setRotateKey( spep_4+1 + 44, 1, 56.5 );
setRotateKey( spep_4+1 + 45, 1, 56.5 );
setRotateKey( spep_4+1 + 46, 1, 60 );
setRotateKey( spep_4+1 + 47, 1, 60 );
setRotateKey( spep_4+1 + 48, 1, 63.5 );
setRotateKey( spep_4+1 + 49, 1, 63.5 );
setRotateKey( spep_4+1 + 50, 1, 67 );
setRotateKey( spep_4+1 + 51, 1, 67 );
setRotateKey( spep_4+1 + 52, 1, 70.5 );
setRotateKey( spep_4+1 + 53, 1, 70.5 );
setRotateKey( spep_4+1 + 54, 1, 74 );
setRotateKey( spep_4+1 + 55, 1, 74 );
setRotateKey( spep_4+1 + 56, 1, 73.7 );
setRotateKey( spep_4+1 + 57, 1, 73.7 );
setRotateKey( spep_4+1 + 58, 1, 73.3 );
setRotateKey( spep_4+1 + 59, 1, 73.3 );
setRotateKey( spep_4+1 + 60, 1, 73 );
setRotateKey( spep_4+1 + 61, 1, 73 );
setRotateKey( spep_4+1 + 62, 1, 72.7 );
setRotateKey( spep_4+1 + 63, 1, 72.7 );
setRotateKey( spep_4+1 + 64, 1, 72.3 );
setRotateKey( spep_4+1 + 65, 1, 72.3 );
setRotateKey( spep_4+1 + 66, 1, 72 );

--SE
--敵飛んでいく
SE024 = playSeVer2( spep_4 + 0, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE024, 78 );
SE025 = playSeVer2( spep_4 + 10, 1183, "",spep_4 + 64, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 10, SE025, 72 );
SE026 = playSeVer2( spep_4 + 10, 1121, "",spep_4 + 64, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 10, SE026, 68 );

--トランクス蹴り落とす
SE027 = playSeVer2( spep_4 + 38, 1003, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_4 + 44, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 44, SE028, 91 );
SE029 = playSeVer2( spep_4 + 46, 1010, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5=spep_4+92;
------------------------------------------------------
--ベジータ気弾発射→爆破
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_5 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 118, beam_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 118, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_f, 0 );
setEffRotateKey( spep_5 + 118, beam_f, 0 );
setEffAlphaKey( spep_5 + 0, beam_f, 255 );
setEffAlphaKey( spep_5 + 116, beam_f, 255 );
setEffAlphaKey( spep_5 + 117, beam_f, 255 );
setEffAlphaKey( spep_5 + 118, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_5 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 118, beam_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 118, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_b, 0 );
setEffRotateKey( spep_5 + 118, beam_b, 0 );
setEffAlphaKey( spep_5 + 0, beam_b, 255 );
setEffAlphaKey( spep_5 + 116, beam_b, 255 );
setEffAlphaKey( spep_5 + 117, beam_b, 255 );
setEffAlphaKey( spep_5 + 118, beam_b, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5+1 + 72, 1, 0 );

changeAnime( spep_5 + 0, 1, 108 );
changeAnime( spep_5+1 + 38, 1, 106 );
changeAnime( spep_5+1 + 62, 1, 108 );

setMoveKey( spep_5 + 0, 1, 21.2, 630.1 , 0 );
setMoveKey( spep_5+1 + 2, 1, 21.2, 580.8 , 0 );
setMoveKey( spep_5+1 + 4, 1, 21.2, 531.4 , 0 );
setMoveKey( spep_5+1 + 6, 1, 21.2, 482.1 , 0 );
setMoveKey( spep_5+1 + 8, 1, 21.2, 432.8 , 0 );
setMoveKey( spep_5+1 + 10, 1, 21.2, 383.4 , 0 );
setMoveKey( spep_5+1 + 12, 1, 21.3, 334.1 , 0 );
setMoveKey( spep_5+1 + 14, 1, 21.3, 284.8 , 0 );
setMoveKey( spep_5+1 + 16, 1, 21.3, 235.4 , 0 );
setMoveKey( spep_5+1 + 18, 1, 21.3, 186.1 , 0 );
setMoveKey( spep_5+1 + 20, 1, 21.3, 136.7 , 0 );
setMoveKey( spep_5+1 + 22, 1, 21.3, 87.4 , 0 );
setMoveKey( spep_5+1 + 24, 1, 21.3, 38.1 , 0 );
setMoveKey( spep_5+1 + 26, 1, 21.3, -11.3 , 0 );
setMoveKey( spep_5+1 + 28, 1, 21.3, -60.6 , 0 );
setMoveKey( spep_5+1 + 30, 1, 21.3, -109.9 , 0 );
setMoveKey( spep_5+1 + 32, 1, 21.3, -159.3 , 0 );
setMoveKey( spep_5+1 + 34, 1, 21.3, -208.6 , 0 );
setMoveKey( spep_5+1 + 37, 1, 13.1, -284.6 , 0 );
setMoveKey( spep_5+1 + 38, 1, -7.7, -178.6 , 0 );
setMoveKey( spep_5+1 + 40, 1, -15.9, -163.4 , 0 );
setMoveKey( spep_5+1 + 42, 1, -13.8, -114.1 , 0 );
setMoveKey( spep_5+1 + 44, 1, -13.8, -82.2 , 0 );
setMoveKey( spep_5+1 + 46, 1, -13.8, -53.1 , 0 );
setMoveKey( spep_5+1 + 48, 1, -13.9, -29 , 0 );
setMoveKey( spep_5+1 + 50, 1, -13.9, -9.9 , 0 );
setMoveKey( spep_5+1 + 52, 1, -13.9, 4.2 , 0 );
setMoveKey( spep_5+1 + 54, 1, -13.9, 4.2 , 0 );
setMoveKey( spep_5+1 + 56, 1, -13.9, -6 , 0 );
setMoveKey( spep_5+1 + 58, 1, -10.7, -35.7 , 0 );
setMoveKey( spep_5+1 + 61, 1, -7.5, -65.3 , 0 );
setMoveKey( spep_5+1 + 62, 1, -15.7, -135.8 , 0 );
setMoveKey( spep_5+1 + 72, 1, -15.7, -135.8 , 0 );

setScaleKey( spep_5 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_5+1 + 37, 1, 1.6, 1.6 );
setScaleKey( spep_5+1 + 38, 1, 1.36, 1.36 );
setScaleKey( spep_5+1 + 61, 1, 1.36, 1.36 );
setScaleKey( spep_5+1 + 62, 1, 1.43, 1.43 );
setScaleKey( spep_5+1 + 72, 1, 1.43, 1.43 );

setRotateKey( spep_5 + 0, 1, 81.7 );
setRotateKey( spep_5+1 + 37, 1, 81.7 );
setRotateKey( spep_5+1 + 38, 1, 25.5 );
setRotateKey( spep_5+1 + 61, 1, 25.5 );
setRotateKey( spep_5+1 + 62, 1, 79.7 );
setRotateKey( spep_5+1 + 72, 1, 79.7 );

--SE
--ベジータ飛び上がって回転する
SE030 = playSeVer2( spep_5 + 10, 1117, "",spep_5 + 80, 0, 18, -1);
SE031 = playSeVer2( spep_5 + 10, 1116, "",spep_5 + 46, 0, 16, -1);
SE032 = playSeVer2( spep_5 + 30, 1004, "", 0, 0, 0, -1);

--ベジータ気弾撃つ
SE033 = playSeVer2( spep_5 + 62, 1016, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_5 + 64, 1145, "",spep_5 + 100, 0, 18, -1);
SE035 = playSeVer2( spep_5 + 68, 1023, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_5 + 76, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6=spep_5+118;
------------------------------------------------------
--悟空正面→パンチ（手元）
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_6 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 130, fly_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, fly_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 130, fly_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, fly_f, 0 );
setEffRotateKey( spep_6 + 130, fly_f, 0 );
setEffAlphaKey( spep_6 + 0, fly_f, 255 );
setEffAlphaKey( spep_6 + 126, fly_f, 255 );
setEffAlphaKey( spep_6 + 127, fly_f, 255 );
setEffAlphaKey( spep_6 + 128, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_6 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 130, fly_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 130, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, fly_b, 0 );
setEffRotateKey( spep_6 + 130, fly_b, 0 );
setEffAlphaKey( spep_6 + 0, fly_b, 255 );
setEffAlphaKey( spep_6 + 126, fly_b, 255 );
setEffAlphaKey( spep_6 + 127, fly_b, 255 );
setEffAlphaKey( spep_6 + 128, fly_b, 0 );

--敵の動き
setDisp( spep_6+1 + 70, 1, 1);
setDisp( spep_6+1 + 116, 1, 0);

changeAnime( spep_6+1 + 70, 1, 106);
changeAnime( spep_6+1 + 86, 1, 108);

setMoveKey( spep_6+1 + 70, 1, -75.1, -185.7 , 0 );
setMoveKey( spep_6+1 + 72, 1, -63, -184.6 , 0 );
setMoveKey( spep_6+1 + 74, 1, -51, -183.5 , 0 );
setMoveKey( spep_6+1 + 76, 1, -38.9, -182.4 , 0 );
setMoveKey( spep_6+1 + 78, 1, -26.8, -181.3 , 0 );
setMoveKey( spep_6+1 + 80, 1, -14.7, -180.2 , 0 );
setMoveKey( spep_6+1 + 82, 1, -2.7, -179.1 , 0 );
setMoveKey( spep_6+1 + 84, 1, 9.4, -178 , 0 );
setMoveKey( spep_6+1 + 85, 1, 9.4, -178 , 0 );

setMoveKey( spep_6+1 + 86, 1, 116.9, -34.6 , 0 );
setMoveKey( spep_6+1 + 87, 1, 116.9, -34.6 , 0 );
setMoveKey( spep_6+1 + 88, 1, 89, -39.3 , 0 );
setMoveKey( spep_6+1 + 89, 1, 89, -39.3 , 0 );
setMoveKey( spep_6+1 + 90, 1, 160.7, -25.2 , 0 );
setMoveKey( spep_6+1 + 91, 1, 160.7, -25.2 , 0 );
setMoveKey( spep_6+1 + 92, 1, 124.1, -41.4 , 0 );
setMoveKey( spep_6+1 + 93, 1, 124.1, -41.4 , 0 );
setMoveKey( spep_6+1 + 94, 1, 160, -73.6 , 0 );
setMoveKey( spep_6+1 + 95, 1, 160, -73.6 , 0 );
setMoveKey( spep_6+1 + 96, 1, 179.1, -24.5 , 0 );
setMoveKey( spep_6+1 + 97, 1, 179.1, -24.5 , 0 );
setMoveKey( spep_6+1 + 98, 1, 156.1, -62.8 , 0 );
setMoveKey( spep_6+1 + 99, 1, 156.1, -62.8 , 0 );
setMoveKey( spep_6+1 + 100, 1, 255.2, -91.4 , 0 );
setMoveKey( spep_6+1 + 101, 1, 255.2, -91.4 , 0 );
setMoveKey( spep_6+1 + 102, 1, 313.9, -164.2 , 0 );
setMoveKey( spep_6+1 + 103, 1, 313.9, -164.2 , 0 );
setMoveKey( spep_6+1 + 104, 1, 351.3, -186.5 , 0 );
setMoveKey( spep_6+1 + 105, 1, 351.3, -186.5 , 0 );
setMoveKey( spep_6+1 + 106, 1, 415.2, -235.2 , 0 );
setMoveKey( spep_6+1 + 107, 1, 415.2, -235.2 , 0 );
setMoveKey( spep_6+1 + 108, 1, 450.2, -256.1 , 0 );
setMoveKey( spep_6+1 + 109, 1, 450.2, -256.1 , 0 );
setMoveKey( spep_6+1 + 110, 1, 467.7, -290.9 , 0 );
setMoveKey( spep_6+1 + 111, 1, 467.7, -290.9 , 0 );
setMoveKey( spep_6+1 + 112, 1, 514.4, -281.5 , 0 );
setMoveKey( spep_6+1 + 113, 1, 514.4, -281.5 , 0 );
setMoveKey( spep_6+1 + 114, 1, 521, -316.2 , 0 );
setMoveKey( spep_6+1 + 115, 1, 521, -316.2 , 0 );
setMoveKey( spep_6+1 + 116, 1, 506.4, -300.5 , 0 );

setScaleKey( spep_6+1 + 70, 1, 5.99, 5.99 );
setScaleKey( spep_6+1 + 85, 1, 5.99, 5.99 );

setScaleKey( spep_6+1 + 86, 1, 6.36, 6.36 );
setScaleKey( spep_6+1 + 98, 1, 6.36, 6.36 );
setScaleKey( spep_6+1 + 99, 1, 6.36, 6.36 );
setScaleKey( spep_6+1 + 100, 1, 5.06, 5.06 );
setScaleKey( spep_6+1 + 101, 1, 5.06, 5.06 );
setScaleKey( spep_6+1 + 102, 1, 3.91, 3.91 );
setScaleKey( spep_6+1 + 103, 1, 3.91, 3.91 );
setScaleKey( spep_6+1 + 104, 1, 2.92, 2.92 );
setScaleKey( spep_6+1 + 105, 1, 2.92, 2.92 );
setScaleKey( spep_6+1 + 106, 1, 2.08, 2.08 );
setScaleKey( spep_6+1 + 107, 1, 2.08, 2.08 );
setScaleKey( spep_6+1 + 108, 1, 1.39, 1.39 );
setScaleKey( spep_6+1 + 109, 1, 1.39, 1.39 );
setScaleKey( spep_6+1 + 110, 1, 0.85, 0.85 );
setScaleKey( spep_6+1 + 111, 1, 0.85, 0.85 );
setScaleKey( spep_6+1 + 112, 1, 0.47, 0.47 );
setScaleKey( spep_6+1 + 113, 1, 0.47, 0.47 );
setScaleKey( spep_6+1 + 114, 1, 0.24, 0.24 );
setScaleKey( spep_6+1 + 115, 1, 0.24, 0.24 );
setScaleKey( spep_6+1 + 116, 1, 0.16, 0.16 );

setRotateKey( spep_6+1 + 70, 1, -48 );
setRotateKey( spep_6+1 + 85, 1, -48 );

setRotateKey( spep_6+1 + 86, 1, 3.8 );
setRotateKey( spep_6+1 + 87, 1, 3.8 );
setRotateKey( spep_6+1 + 88, 1, 5.1 );
setRotateKey( spep_6+1 + 89, 1, 5.1 );
setRotateKey( spep_6+1 + 90, 1, 6.1 );
setRotateKey( spep_6+1 + 91, 1, 6.1 );
setRotateKey( spep_6+1 + 92, 1, 6.9 );
setRotateKey( spep_6+1 + 93, 1, 6.9 );
setRotateKey( spep_6+1 + 94, 1, 7.5 );
setRotateKey( spep_6+1 + 95, 1, 7.5 );
setRotateKey( spep_6+1 + 96, 1, 7.9 );
setRotateKey( spep_6+1 + 97, 1, 7.9 );
setRotateKey( spep_6+1 + 98, 1, 8 );
setRotateKey( spep_6+1 + 99, 1, 8 );
setRotateKey( spep_6+1 + 100, 1, 12.4 );
setRotateKey( spep_6+1 + 101, 1, 12.4 );
setRotateKey( spep_6+1 + 102, 1, 16.2 );
setRotateKey( spep_6+1 + 103, 1, 16.2 );
setRotateKey( spep_6+1 + 104, 1, 19.6 );
setRotateKey( spep_6+1 + 105, 1, 19.6 );
setRotateKey( spep_6+1 + 106, 1, 22.4 );
setRotateKey( spep_6+1 + 107, 1, 22.4 );
setRotateKey( spep_6+1 + 108, 1, 24.7 );
setRotateKey( spep_6+1 + 109, 1, 24.7 );
setRotateKey( spep_6+1 + 110, 1, 26.5 );
setRotateKey( spep_6+1 + 111, 1, 26.5 );
setRotateKey( spep_6+1 + 112, 1, 27.8 );
setRotateKey( spep_6+1 + 113, 1, 27.8 );
setRotateKey( spep_6+1 + 114, 1, 28.6 );
setRotateKey( spep_6+1 + 115, 1, 28.6 );
setRotateKey( spep_6+1 + 116, 1, 28.8 );

--SE
--悟空向かってくる
SE037 = playSeVer2( spep_6 + 0, 1182, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_6 + 0, 9, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_6 + 8, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 8, SE039, 40 );

--悟空振りかぶる
SE040 = playSeVer2( spep_6 + 60, 1116, "",spep_6 + 96, 0, 10, -1);

--悟空パンチ
SE041 = playSeVer2( spep_6 + 88, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 88, SE041, 79 );
SE042 = playSeVer2( spep_6 + 88, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 88, SE042, 65 );

--敵飛んでいく
SE043 = playSeVer2( spep_6 + 92, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 92, SE043, 71 );
SE044 = playSeVer2( spep_6 + 112, 1183, "",spep_6 + 156, 0, 10, -1);
SE045 = playSeVer2( spep_6 + 112, 1121, "",spep_6 + 156, 0, 10, -1);
setSeVolumeByWorkId( spep_6 + 112, SE045, 72 );
setPitch( spep_6 + 112, SE045, 200 );
setTimeStretch( SE045, 1.13, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 130, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_7=spep_6+128;
------------------------------------------------------
--ガッ
------------------------------------------------------
-- ** ひび割れ ** --
finish_f = entryEffect( spep_7 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_7 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 8, finish_f, 0 );
setEffRotateKey( spep_7 + 112, finish_f, 0 );
setEffAlphaKey( spep_7 + 8, finish_f, 255 );
setEffAlphaKey( spep_7 + 112, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_13x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 140, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 140, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 140, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 140, finish_b, 255 );
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_7 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_7 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_7 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_7 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_7 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_7 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_7 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_7 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_7 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_7 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_7 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_7 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_7 + 112, bakuhatsu, 255 );
]]
-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_7 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_7 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_7 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_7 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_7 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_7 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_7 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_7 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_7 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_7 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_7 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_7 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_7 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_7 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_7 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_7 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_7 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_7 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_7 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_7 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_7 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_7 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_7 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_7 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_7 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_7 + 14, ctga, 14, 20 );

setEffMoveKey( spep_7 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_7 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_7 + 14, ctga, -10.9 );
setEffRotateKey( spep_7 + 15, ctga, -10.9 );
setEffRotateKey( spep_7 + 16, ctga, -14.9 );
setEffRotateKey( spep_7 + 17, ctga, -14.9 );
setEffRotateKey( spep_7 + 18, ctga, -10.9 );
setEffRotateKey( spep_7 + 19, ctga, -10.9 );
setEffRotateKey( spep_7 + 20, ctga, -14.9 );
setEffRotateKey( spep_7 + 21, ctga, -14.9 );
setEffRotateKey( spep_7 + 22, ctga, -10.9 );
setEffRotateKey( spep_7 + 23, ctga, -10.9 );
setEffRotateKey( spep_7 + 24, ctga, -14.9 );
setEffRotateKey( spep_7 + 25, ctga, -14.9 );
setEffRotateKey( spep_7 + 26, ctga, -10.9 );
setEffRotateKey( spep_7 + 27, ctga, -10.9 );
setEffRotateKey( spep_7 + 28, ctga, -14.9 );
setEffRotateKey( spep_7 + 112, ctga, -14.9 );

setEffAlphaKey( spep_7 + 14, ctga, 255 );
setEffAlphaKey( spep_7 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 112, 1, 0 );

changeAnime( spep_7 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_7 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_7 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_7 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_7 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_7 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_7 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_7 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_7 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_7 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_7 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_7 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_7 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_7 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_7 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_7 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_7 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_7 + 0, 1, -122.8 - 232 );
setRotateKey( spep_7 + 2, 1, -122.8 );
setRotateKey( spep_7 -3 + 6, 1, -1 );
setRotateKey( spep_7 -3 + 8, 1, 120.7 );
setRotateKey( spep_7 -3 + 10, 1, 242.5 );
setRotateKey( spep_7 -3 + 12, 1, 364.3 );
setRotateKey( spep_7 -3 + 14, 1, 486 );
setRotateKey( spep_7 -3 + 16, 1, 607.8 );
setRotateKey( spep_7 -3 + 18, 1, 729.5 );
setRotateKey( spep_7 + 112, 1, 729.5 );

-- ** 音 ** --
--爆発
--SE0N1 = playSeVer2( spep_7 + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE046 = playSeVer2( spep_7 + 14, 1054, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_7 + 14, 1025, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_7 + 6 ); -- ダメージ表示フレーム
endPhase( spep_7 + 108 ); -- 終了フレーム
end