--1024830:クウラ(最終形態)_デスフラッシャー
--sp_effect_b1_00206
--sp2406

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
SP_01=	160353	;--	突進
SP_02=	160354	;--	パンチ
SP_03=	160355	;--	パンチ　奥
SP_04=	160356	;--	膝蹴り　撃ち落とし
SP_05=	160357	;--	膝蹴り　撃ち落とし　奥
SP_06=	160358	;--	蹴り
SP_07=	160359	;--	蹴り　奥
SP_08=	160360	;--	蹴り２
SP_09=	160361	;--	蹴り２　奥
SP_10=	160362	;--	セリフカットイン
SP_11=	160363	;--	セリフカットイン　奥
SP_12=	160364	;--	正面発射
SP_13=	160365	;--	横発射
SP_14=	160366	;--	横発射　奥
SP_15=	160367	;--	ダメージ
SP_16=	160368	;--	ダメージ　奥

--エフェクト(敵)
SP_01x=	160369	;--	突進	(敵)
SP_02x=	160370	;--	パンチ	(敵)
SP_03x=	160355	;--	パンチ　奥	
SP_04x=	160371	;--	膝蹴り　撃ち落とし	(敵)
SP_05x=	160357	;--	膝蹴り　撃ち落とし　奥	
SP_06x=	160372	;--	蹴り	(敵)
SP_07x=	160359	;--	蹴り　奥	
SP_08x=	160373	;--	蹴り２	(敵)
SP_09x=	160361	;--	蹴り２　奥	
SP_10x=	160362	;--	セリフカットイン	
SP_11x=	160363	;--	セリフカットイン　奥	
SP_12x=	160364	;--	正面発射	
SP_13x=	160374	;--	横発射	(敵)
SP_14x=	160366	;--	横発射　奥	
SP_15x=	160367	;--	ダメージ	
SP_16x=	160368	;--	ダメージ　奥	

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--突進
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 166, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 166, rush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 166, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 164, rush, 255 );
setEffAlphaKey( spep_0 + 165, rush, 255 );
setEffAlphaKey( spep_0 + 166, rush, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-1 + 90, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 2.2, 228 , 0 );
setMoveKey( spep_0 + 1, 1, 2.2, 228 , 0 );
setMoveKey( spep_0 + 2, 1, 2.2, 228 , 0 );
setMoveKey( spep_0 + 3, 1, 2.2, 228 , 0 );
setMoveKey( spep_0 + 4, 1, 2.2, 228 , 0 );
setMoveKey( spep_0 + 5, 1, 2.2, 228 , 0 );
setMoveKey( spep_0 + 6, 1, 2.2, 228 , 0 );
setMoveKey( spep_0-1 + 90, 1, 2.2, 228 , 0 );

setScaleKey( spep_0 + 0, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 1, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 2, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 3, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 4, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 5, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 6, 1, 0.1, 0.1 );
setScaleKey( spep_0-1 + 90, 1, 0.1, 0.1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-1 + 90, 1, 0 );

--SE
--構える
SE001 = playSeVer2( spep_0 + 36, 1013, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 36, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE002, 55 );
SE003 = playSeVer2( spep_0 + 38, 1003, "", 0, 0, 0, -1);

--向かっていく
SE004 = playSeVer2( spep_0 + 64, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 64, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE005, 66 );
SE006 = playSeVer2( spep_0 + 68, 44, "", 0, 0, 0, -1);

--飛んでいく
SE007 = playSeVer2( spep_0 + 90, 1019, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 90, 1304, "",spep_0 + 230, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 90, SE008, 73 );
SE009 = playSeVer2( spep_0 + 90, 1278, "",spep_0 + 224, 0, 34, -1);
SE010 = playSeVer2( spep_0 + 154, 1019, "",spep_0 + 218, 0, 28, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 170, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 130; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    
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
-- ** 次の準備 ** --
spep_1= spep_0 + 166;
------------------------------------------------------
--パンチ
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, panting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panting_f, 0 );
setEffRotateKey( spep_1 + 56, panting_f, 0 );
setEffAlphaKey( spep_1 + 0, panting_f, 255 );
setEffAlphaKey( spep_1 + 54, panting_f, 255 );
setEffAlphaKey( spep_1 + 55, panting_f, 255 );
setEffAlphaKey( spep_1 + 56, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, panting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panting_b, 0 );
setEffRotateKey( spep_1 + 56, panting_b, 0 );
setEffAlphaKey( spep_1 + 0, panting_b, 255 );
setEffAlphaKey( spep_1 + 54, panting_b, 255 );
setEffAlphaKey( spep_1 + 55, panting_b, 255 );
setEffAlphaKey( spep_1 + 56, panting_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1-3 + 38, 1, 106 );

setMoveKey( spep_1 + 0, 1, 236.4, 39.1 , 0 );
setMoveKey( spep_1-3 + 16, 1, 236.4, 39.1 , 0 );
setMoveKey( spep_1-3 + 18, 1, 236.4, 30.7 , 0 );
setMoveKey( spep_1-3 + 20, 1, 236.4, 22.4 , 0 );
setMoveKey( spep_1-3 + 22, 1, 236.4, 14 , 0 );
setMoveKey( spep_1-3 + 24, 1, 236.4, 5.6 , 0 );
setMoveKey( spep_1-3 + 26, 1, 236.4, -2.7 , 0 );
setMoveKey( spep_1-3 + 28, 1, 236.4, -11.1 , 0 );
setMoveKey( spep_1-3 + 30, 1, 236.4, -19.5 , 0 );
setMoveKey( spep_1-3 + 32, 1, 236.4, -27.9 , 0 );
setMoveKey( spep_1-3 + 34, 1, 236.4, -36.2 , 0 );
setMoveKey( spep_1-3 + 37, 1, 236.4, -44.6 , 0 );
setMoveKey( spep_1-3 + 38, 1, 338.3, -23.4 , 0 );
setMoveKey( spep_1-3 + 42, 1, 338.3, -23.4 , 0 );
setMoveKey( spep_1-3 + 44, 1, 395.6, 44.7 , 0 );
setMoveKey( spep_1-3 + 46, 1, 395.6, 44.7 , 0 );
setMoveKey( spep_1-3 + 48, 1, 504.2, 106.8 , 0 );
setMoveKey( spep_1-3 + 50, 1, 504.2, 106.8 , 0 );
setMoveKey( spep_1-1 + 56, 1, 668.1, 194.9 , 0 );

setScaleKey( spep_1 + 0, 1, 2.97,2.97);
setScaleKey( spep_1-3 + 37, 1, 2.97,2.97);
setScaleKey( spep_1-3 + 38, 1, 2.92,2.92);
setScaleKey( spep_1-1 + 56, 1, 2.92,2.92);

setRotateKey( spep_1 + 0, 1, -6.8 );
setRotateKey( spep_1-3 + 37, 1, -6.8 );
setRotateKey( spep_1-3 + 38, 1, -30 );
setRotateKey( spep_1-3 + 42, 1, -30 );
setRotateKey( spep_1-3 + 44, 1, -21.8 );
setRotateKey( spep_1-3 + 46, 1, -21.8 );
setRotateKey( spep_1-3 + 48, 1, -2 );
setRotateKey( spep_1-3 + 50, 1, -2 );
setRotateKey( spep_1-1 + 56, 1, 0 );

--SE
--敵の前に現れる
SE011 = playSeVer2( spep_1 + 12, 1245, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_1 + 12, SE011, 53 );
setStartTimeMs( SE011,  0 );
SE012 = playSeVer2( spep_1 + 22, 1004, "", 0, 0, 0, -1);

--パンチ
SE013 = playSeVer2( spep_1 + 38, 1180, "", 0, 10, 0, -1);
setStartTimeMs( SE013,  383 );
SE014 = playSeVer2( spep_1 + 36, 1187, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 36, 1359, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2= spep_1 + 56;
------------------------------------------------------
--膝蹴り　撃ち落とし
------------------------------------------------------
-- ** エフェクト等 ** --
drop_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, drop_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 110, drop_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, drop_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 110, drop_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, drop_f, 0 );
setEffRotateKey( spep_2 + 110, drop_f, 0 );
setEffAlphaKey( spep_2 + 0, drop_f, 255 );
setEffAlphaKey( spep_2 + 108, drop_f, 255 );
setEffAlphaKey( spep_2 + 109, drop_f, 255 );
setEffAlphaKey( spep_2 + 110, drop_f, 0 );

-- ** エフェクト等 ** --
drop_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, drop_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 110, drop_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, drop_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 110, drop_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, drop_b, 0 );
setEffRotateKey( spep_2 + 110, drop_b, 0 );
setEffAlphaKey( spep_2 + 0, drop_b, 255 );
setEffAlphaKey( spep_2 + 108, drop_b, 255 );
setEffAlphaKey( spep_2 + 109, drop_b, 255 );
setEffAlphaKey( spep_2 + 110, drop_b, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 90, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2-3 + 52, 1, 108 );
changeAnime( spep_2-3 + 78, 1, 7 );
changeAnime( spep_2-3 + 84, 1, 6 );

setMoveKey( spep_2 + 0, 1, -549.6, -742.8 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -549.6, -742.8 , 0 );
setMoveKey( spep_2-3 + 4, 1, -305.5, -494.5 , 0 );
setMoveKey( spep_2-3 + 6, 1, -132.5, -363.7 , 0 );
setMoveKey( spep_2-3 + 8, 1, -132.5, -363.7 , 0 );
setMoveKey( spep_2-3 + 10, 1, 28.6, -241.8 , 0 );
setMoveKey( spep_2-3 + 12, 1, 28.6, -241.8 , 0 );
setMoveKey( spep_2-3 + 14, 1, 82.4, -210.2 , 0 );
setMoveKey( spep_2-3 + 16, 1, 82.4, -210.2 , 0 );
setMoveKey( spep_2-3 + 18, 1, 109.8, -194.1 , 0 );
setMoveKey( spep_2-3 + 20, 1, 109.8, -194.1 , 0 );
setMoveKey( spep_2-3 + 22, 1, 117.5, -189 , 0 );
setMoveKey( spep_2-3 + 24, 1, 117.5, -189 , 0 );
setMoveKey( spep_2-3 + 26, 1, 123.2, -185.9 , 0 );
setMoveKey( spep_2-3 + 51, 1, 123.2, -185.9 , 0 );
setMoveKey( spep_2-3 + 52, 1, 175.6, 39.5 , 0 );
setMoveKey( spep_2-3 + 54, 1, 175.6, 39.5 , 0 );
setMoveKey( spep_2-3 + 56, 1, 192.2, 85.8 , 0 );
setMoveKey( spep_2-3 + 58, 1, 199.3, 105.5 , 0 );
setMoveKey( spep_2-3 + 60, 1, 199.3, 105.5 , 0 );
setMoveKey( spep_2-3 + 62, 1, 210.8, 138 , 0 );
setMoveKey( spep_2-3 + 64, 1, 210.8, 138 , 0 );
setMoveKey( spep_2-3 + 66, 1, 219.2, 161 , 0 );
setMoveKey( spep_2-3 + 68, 1, 219.2, 161 , 0 );
setMoveKey( spep_2-3 + 70, 1, 224.1, 174.9 , 0 );
setMoveKey( spep_2-3 + 72, 1, 224.1, 174.9 , 0 );
setMoveKey( spep_2-3 + 74, 1, 225.6, 179.6 , 0 );
setMoveKey( spep_2-3 + 77, 1, 225.6, 179.6 , 0 );
setMoveKey( spep_2-3 + 78, 1, 170.1, -110 , 0 );
setMoveKey( spep_2-3 + 83, 1, 170.1, -110 , 0 );
setMoveKey( spep_2-3 + 84, 1, 219.2, -480.8 , 0 );
setMoveKey( spep_2-3 + 86, 1, 201.8, -704.1 , 0 );
setMoveKey( spep_2-3 + 88, 1, 187.1, -892.2 , 0 );
setMoveKey( spep_2-3 + 90, 1, 175.2, -1045.3 , 0 );

setScaleKey( spep_2 + 0, 1, 4.5,4.5);
setScaleKey( spep_2-3 + 4, 1, 3.89,3.89);
setScaleKey( spep_2-3 + 6, 1, 3.79,3.79);
setScaleKey( spep_2-3 + 8, 1, 3.79,3.79);
setScaleKey( spep_2-3 + 10, 1, 3.68,3.68);
setScaleKey( spep_2-3 + 12, 1, 3.68,3.68);
setScaleKey( spep_2-3 + 14, 1, 3.62,3.62);
setScaleKey( spep_2-3 + 16, 1, 3.62,3.62);
setScaleKey( spep_2-3 + 18, 1, 3.59,3.59);
setScaleKey( spep_2-3 + 20, 1, 3.59,3.59);
setScaleKey( spep_2-3 + 22, 1, 3.58,3.58);
setScaleKey( spep_2-3 + 51, 1, 3.58,3.58);

setScaleKey( spep_2-3 + 52, 1, 3.96,3.96);
setScaleKey( spep_2-3 + 54, 1, 3.96,3.96);
setScaleKey( spep_2-3 + 56, 1, 3.93,3.93);
setScaleKey( spep_2-3 + 60, 1, 3.93,3.93);
setScaleKey( spep_2-3 + 62, 1, 3.92,3.92);
setScaleKey( spep_2-3 + 64, 1, 3.92,3.92);
setScaleKey( spep_2-3 + 66, 1, 3.91,3.91);
setScaleKey( spep_2-3 + 77, 1, 3.91,3.91);
setScaleKey( spep_2-3 + 78, 1, 1.18,1.18);
setScaleKey( spep_2-3 + 83, 1, 1.18,1.18);
setScaleKey( spep_2-3 + 84, 1, 3.55,3.55);
setScaleKey( spep_2-3 + 90, 1, 3.55,3.55);

setRotateKey( spep_2 + 0, 1, -70 );
--setRotateKey( spep_2-3 + 2, 1, -70 );
setRotateKey( spep_2-3 + 4, 1, -56 );
setRotateKey( spep_2-3 + 6, 1, -55.4 );
setRotateKey( spep_2-3 + 8, 1, -55.4 );
setRotateKey( spep_2-3 + 10, 1, -54.6 );
setRotateKey( spep_2-3 + 12, 1, -54.6 );
setRotateKey( spep_2-3 + 14, 1, -54.3 );
setRotateKey( spep_2-3 + 16, 1, -54.3 );
setRotateKey( spep_2-3 + 18, 1, -54.1 );
setRotateKey( spep_2-3 + 20, 1, -54.1 );
setRotateKey( spep_2-3 + 22, 1, -54 );
setRotateKey( spep_2-3 + 51, 1, -54 );
setRotateKey( spep_2-3 + 52, 1, -63.2 );
setRotateKey( spep_2-3 + 77, 1, -63.2 );
setRotateKey( spep_2-3 + 78, 1, -65 );
setRotateKey( spep_2-3 + 83, 1, -65 );
setRotateKey( spep_2-3 + 84, 1, -105 );
setRotateKey( spep_2-3 + 90, 1, -105 );

--SE
--膝蹴り
SE016 = playSeVer2( spep_2 + 50, 1190, "",spep_2 + 98, 0, 26, -1);
SE017 = playSeVer2( spep_2 + 50, 1153, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 54, 1110, "", 0, 0, 0, -1);

--叩き落とす
SE019 = playSeVer2( spep_2 + 76, 1123, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 80, 1359, "",spep_2 + 118, 0, 28, -1);
SE021 = playSeVer2( spep_2 + 80, 1169, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 80, 1121, "",spep_2 + 136, 0, 18, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3= spep_2 + 108;
------------------------------------------------------
--蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 152, kick_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 152, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 152, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 150, kick_f, 255 );
setEffAlphaKey( spep_3 + 151, kick_f, 255 );
setEffAlphaKey( spep_3 + 152, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_3 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 152, kick_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 152, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 152, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 150, kick_b, 255 );
setEffAlphaKey( spep_3 + 151, kick_b, 255 );
setEffAlphaKey( spep_3 + 152, kick_b, 0 );

--敵の動き
setDisp( spep_3-3 + 6, 1, 1 );

changeAnime( spep_3-3 + 6, 1, 108 );
changeAnime( spep_3-3 + 12, 1, 106 );
changeAnime( spep_3-3 + 98, 1, 108 );
changeAnime( spep_3-3 + 116, 1, 106 );

setMoveKey( spep_3-3 + 6, 1, -365.6, 325.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, -97.5, 147.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, 143.2, -21.3 , 0 );
setMoveKey( spep_3-3 + 11, 1, 143.2, -21.3 , 0 );

setMoveKey( spep_3-3 + 12, 1, 144.6, -58.7 , 0 );
setMoveKey( spep_3-3 + 14, 1, 149.6, -55.7 , 0 );
setMoveKey( spep_3-3 + 16, 1, 154.7, -47.9 , 0 );
setMoveKey( spep_3-3 + 18, 1, 160.5, -44.8 , 0 );
setMoveKey( spep_3-3 + 20, 1, 149.8, -53.6 , 0 );
setMoveKey( spep_3-3 + 22, 1, 149.4, -59.1 , 0 );
setMoveKey( spep_3-3 + 24, 1, 158, -44.2 , 0 );
setMoveKey( spep_3-3 + 26, 1, 153.2, -46.5 , 0 );
setMoveKey( spep_3-3 + 28, 1, 149, -55.5 , 0 );
setMoveKey( spep_3-3 + 30, 1, 149.6, -52.5 , 0 );
setMoveKey( spep_3-3 + 32, 1, 155.4, -44.4 , 0 );
setMoveKey( spep_3-3 + 34, 1, 151.1, -50.2 , 0 );
setMoveKey( spep_3-3 + 36, 1, 146.3, -56.9 , 0 );
setMoveKey( spep_3-3 + 38, 1, 148.3, -51.5 , 0 );
setMoveKey( spep_3-3 + 40, 1, 151.2, -47.6 , 0 );
setMoveKey( spep_3-3 + 42, 1, 154.2, -50.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, 150, -54.7 , 0 );
setMoveKey( spep_3-3 + 46, 1, 148.1, -55.2 , 0 );
setMoveKey( spep_3-3 + 48, 1, 153.4, -50.7 , 0 );
setMoveKey( spep_3-3 + 50, 1, 154.1, -51 , 0 );
setMoveKey( spep_3-3 + 52, 1, 149.1, -52.1 , 0 );
setMoveKey( spep_3-3 + 54, 1, 148.9, -51.3 , 0 );
setMoveKey( spep_3-3 + 56, 1, 152.6, -49.3 , 0 );
setMoveKey( spep_3-3 + 58, 1, 149.3, -52.4 , 0 );
setMoveKey( spep_3-3 + 60, 1, 150.6, -51.9 , 0 );
setMoveKey( spep_3-3 + 62, 1, 152.6, -50.4 , 0 );
setMoveKey( spep_3-3 + 64, 1, 152.9, -49.2 , 0 );
setMoveKey( spep_3-3 + 66, 1, 149.8, -52.2 , 0 );
setMoveKey( spep_3-3 + 68, 1, 150.4, -52.1 , 0 );
setMoveKey( spep_3-3 + 70, 1, 150.9, -50.6 , 0 );
setMoveKey( spep_3-3 + 72, 1, 151.9, -50.2 , 0 );
setMoveKey( spep_3-3 + 74, 1, 151, -50.5 , 0 );
setMoveKey( spep_3-3 + 76, 1, 150.9, -50.3 , 0 );
setMoveKey( spep_3-3 + 78, 1, 151.3, -50.6 , 0 );
setMoveKey( spep_3-3 + 80, 1, 151.1, -51.5 , 0 );
setMoveKey( spep_3-3 + 82, 1, 151.5, -51.1 , 0 );
setMoveKey( spep_3-3 + 84, 1, 151.4, -50.8 , 0 );
setMoveKey( spep_3-3 + 86, 1, 151.2, -51.8 , 0 );
setMoveKey( spep_3-3 + 88, 1, 151.3, -51.7 , 0 );
setMoveKey( spep_3-3 + 90, 1, 151.3, -51.6 , 0 );
setMoveKey( spep_3-3 + 92, 1, 151.3, -51.5 , 0 );
setMoveKey( spep_3-3 + 94, 1, 151.3, -51.4 , 0 );
setMoveKey( spep_3-3 + 97, 1, 151.4, -51.4 , 0 );

setMoveKey( spep_3-3 + 98, 1, 135.3, -25.4 , 0 );
setMoveKey( spep_3-3 + 100, 1, 139.1, -27.6 , 0 );
setMoveKey( spep_3-3 + 102, 1, 178.2, -52.3 , 0 );
setMoveKey( spep_3-3 + 104, 1, 171.7, -50.1 , 0 );
setMoveKey( spep_3-3 + 106, 1, 158, -29.1 , 0 );
setMoveKey( spep_3-3 + 108, 1, 167.7, -32.9 , 0 );
setMoveKey( spep_3-3 + 110, 1, 168.4, -45.7 , 0 );
setMoveKey( spep_3-3 + 112, 1, 182.5, -47.4 , 0 );
setMoveKey( spep_3-3 + 114, 1, 163, -36.8 , 0 );
setMoveKey( spep_3-3 + 115, 1, 163, -36.8 , 0 );

setMoveKey( spep_3-3 + 116, 1, 172.5, -56.2 , 0 );
setMoveKey( spep_3-3 + 118, 1, 177.6, -63.2 , 0 );
setMoveKey( spep_3-3 + 120, 1, 174.1, -66.5 , 0 );
setMoveKey( spep_3-3 + 122, 1, 172.1, -62.4 , 0 );
setMoveKey( spep_3-3 + 124, 1, 165.7, -59.4 , 0 );
setMoveKey( spep_3-3 + 126, 1, 170, -65.4 , 0 );
setMoveKey( spep_3-3 + 128, 1, 174.4, -63.4 , 0 );
setMoveKey( spep_3-3 + 130, 1, 163.9, -57.5 , 0 );
setMoveKey( spep_3-3 + 132, 1, 170.5, -61.1 , 0 );
setMoveKey( spep_3-3 + 134, 1, 171.6, -63.8 , 0 );
setMoveKey( spep_3-3 + 136, 1, 168.5, -61.5 , 0 );
setMoveKey( spep_3-3 + 138, 1, 162.3, -59.6 , 0 );
setMoveKey( spep_3-3 + 140, 1, 162.5, -57.8 , 0 );
setMoveKey( spep_3-3 + 142, 1, 165, -60.7 , 0 );
setMoveKey( spep_3-3 + 144, 1, 161.9, -57.4 , 0 );
setMoveKey( spep_3-1 + 152, 1, 161.9, -57.4 , 0 );

setScaleKey( spep_3-3 + 6, 1, 1.89, 1.89 );
setScaleKey( spep_3-3 + 11, 1, 1.89, 1.89 );

setScaleKey( spep_3-3 + 12, 1, 1.71, 1.81 );
setScaleKey( spep_3-3 + 97, 1, 1.71, 1.81 );

setScaleKey( spep_3-3 + 98, 1, 1.89,1.89);
setScaleKey( spep_3-3 + 100, 1, 1.89,1.89);
setScaleKey( spep_3-3 + 102, 1, 2.45,2.45);
setScaleKey( spep_3-3 + 104, 1, 2.41,2.41);
setScaleKey( spep_3-3 + 106, 1, 1.93,1.93);
setScaleKey( spep_3-3 + 108, 1, 2.05,2.05);
setScaleKey( spep_3-3 + 110, 1, 2.19,2.19);
setScaleKey( spep_3-3 + 112, 1, 2.37,2.37);
setScaleKey( spep_3-3 + 114, 1, 2.01,2.01);
setScaleKey( spep_3-3 + 115, 1, 2.01,2.01);

setScaleKey( spep_3-3 + 116, 1, 1.8,1.8);
setScaleKey( spep_3-3 + 118, 1, 1.95,1.95);
setScaleKey( spep_3-3 + 120, 1, 1.98,1.98);
setScaleKey( spep_3-3 + 122, 1, 1.87,1.87);
setScaleKey( spep_3-3 + 124, 1, 1.79,1.79);
setScaleKey( spep_3-3 + 126, 1, 1.9,1.9);
setScaleKey( spep_3-3 + 128, 1, 1.9,1.9);
setScaleKey( spep_3-3 + 130, 1, 1.76,1.76);
setScaleKey( spep_3-3 + 132, 1, 1.82,1.82);
setScaleKey( spep_3-3 + 134, 1, 1.87,1.87);
setScaleKey( spep_3-3 + 136, 1, 1.84,1.84);
setScaleKey( spep_3-3 + 138, 1, 1.75,1.75);
setScaleKey( spep_3-3 + 140, 1, 1.75,1.75);
setScaleKey( spep_3-3 + 142, 1, 1.79,1.79);
setScaleKey( spep_3-3 + 144, 1, 1.75,1.75);
setScaleKey( spep_3-1 + 152, 1, 1.75,1.75);

setRotateKey( spep_3-3 + 6, 1, 50.9 );
setRotateKey( spep_3-3 + 11, 1, 50.9 );

setRotateKey( spep_3-3 + 12, 1, -18.2 );
setRotateKey( spep_3-3 + 97, 1, -18.2 );

setRotateKey( spep_3-3 + 98, 1, 50.9 );
setRotateKey( spep_3-3 + 115, 1, 50.9 );

setRotateKey( spep_3-3 + 116, 1, -20 );
setRotateKey( spep_3-3 + 118, 1, -19.6 );
setRotateKey( spep_3-3 + 120, 1, -19.4 );
setRotateKey( spep_3-3 + 122, 1, -19.2 );
setRotateKey( spep_3-3 + 124, 1, -19 );
setRotateKey( spep_3-3 + 154, 1, -19 );

--SE
--岩に激突する
SE024 = playSeVer2( spep_3 + 10, 1159, "",spep_3 + 56, 0, 28, -1);
SE025 = playSeVer2( spep_3 + 10, 1168, "",spep_3 + 112, 0, 56, -1);

--クウラ飛んでくる
SE023 = playSeVer2( spep_3 + 38, 1215, "",spep_3 + 100, 34, 8, -1);
setSeVolumeByWorkId( spep_3 + 38, SE023, 76 );
setStartTimeMs( SE023,  700 );
SE026 = playSeVer2( spep_3 + 50, 1222, "",spep_3 + 102, 24, 10, -1);
setSeVolumeByWorkId( spep_3 + 50, SE026, 112 );
setStartTimeMs( SE026,  83 );

--踏みつける
SE027 = playSeVer2( spep_3 + 96, 1180, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_3 + 96, SE027, 87 );
setStartTimeMs( SE027,  250 );
setPitch( spep_3 + 96, SE027, 500 );
setTimeStretch( SE027, 1.33, 30, 4 );
SE028 = playSeVer2( spep_3 + 88, 1189, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_3 + 92, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 92, SE029, 83 );
SE030 = playSeVer2( spep_3 + 96, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 96, SE030, 82 );
SE031 = playSeVer2( spep_3 + 96, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 96, SE031, 87 );
SE032 = playSeVer2( spep_3 + 96, 1159, "",spep_3 + 400, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 96, SE032, 70 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 160, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 152;
------------------------------------------------------
--蹴り２
------------------------------------------------------
-- ** エフェクト等 ** --
kick2_f = entryEffect( spep_4 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick2_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 148, kick2_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick2_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 148, kick2_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick2_f, 0 );
setEffRotateKey( spep_4 + 148, kick2_f, 0 );
setEffAlphaKey( spep_4 + 0, kick2_f, 255 );
setEffAlphaKey( spep_4 + 146, kick2_f, 255 );
setEffAlphaKey( spep_4 + 147, kick2_f, 255 );
setEffAlphaKey( spep_4 + 148, kick2_f, 0 );

-- ** エフェクト等 ** --
kick2_b = entryEffect( spep_4 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick2_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 148, kick2_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick2_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 148, kick2_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick2_b, 0 );
setEffRotateKey( spep_4 + 148, kick2_b, 0 );
setEffAlphaKey( spep_4 + 0, kick2_b, 255 );
setEffAlphaKey( spep_4 + 146, kick2_b, 255 );
setEffAlphaKey( spep_4 + 147, kick2_b, 255 );
setEffAlphaKey( spep_4 + 148, kick2_b, 0 );

--敵の動き
changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4-3 + 48, 1, 108 );
changeAnime( spep_4-3 + 54, 1, 106 );

setMoveKey( spep_4 + 0, 1, 85.4, -278.7 , 0 );
setMoveKey( spep_4-3 + 12, 1, 85.4, -278.7 , 0 );
setMoveKey( spep_4-3 + 14, 1, 85.5, -278.8 , 0 );
setMoveKey( spep_4-3 + 16, 1, 85.4, -278.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, 85.4, -278.7 , 0 );
setMoveKey( spep_4-3 + 24, 1, 85.5, -278.8 , 0 );
setMoveKey( spep_4-3 + 26, 1, 85.4, -278.7 , 0 );
setMoveKey( spep_4-3 + 28, 1, 85.5, -278.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, 85.5, -278.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, 85.4, -278.7 , 0 );
setMoveKey( spep_4-3 + 47, 1, 85.4, -278.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, 129.6, -150 , 0 );
setMoveKey( spep_4-3 + 50, 1, 129.6, -150 , 0 );
setMoveKey( spep_4-3 + 53, 1, 130.1, -153.2 , 0 );
setMoveKey( spep_4-3 + 54, 1, 86, -298.8 , 0 );
setMoveKey( spep_4-3 + 56, 1, 101.4, -298.3 , 0 );
setMoveKey( spep_4-3 + 58, 1, 109.3, -294.1 , 0 );
setMoveKey( spep_4-3 + 60, 1, 115.2, -298.7 , 0 );
setMoveKey( spep_4-3 + 62, 1, 118.3, -304.9 , 0 );
setMoveKey( spep_4-3 + 64, 1, 120.1, -302.6 , 0 );
setMoveKey( spep_4-3 + 66, 1, 120.3, -298.6 , 0 );
setMoveKey( spep_4-3 + 68, 1, 121.2, -300 , 0 );
setMoveKey( spep_4-3 + 70, 1, 121.5, -302.8 , 0 );
setMoveKey( spep_4-3 + 72, 1, 122.7, -304.4 , 0 );
setMoveKey( spep_4-3 + 74, 1, 122.5, -299.4 , 0 );
setMoveKey( spep_4-3 + 76, 1, 122.5, -298.9 , 0 );
setMoveKey( spep_4-3 + 78, 1, 122.2, -305.4 , 0 );
setMoveKey( spep_4-3 + 80, 1, 121.5, -303.6 , 0 );
setMoveKey( spep_4-3 + 82, 1, 121.7, -299.4 , 0 );
setMoveKey( spep_4-3 + 84, 1, 121.7, -299.6 , 0 );
setMoveKey( spep_4-3 + 86, 1, 121.7, -303.9 , 0 );
setMoveKey( spep_4-3 + 88, 1, 121.5, -304.3 , 0 );
setMoveKey( spep_4-3 + 90, 1, 121.5, -299.1 , 0 );
setMoveKey( spep_4-3 + 92, 1, 121.2, -300.4 , 0 );
setMoveKey( spep_4-3 + 94, 1, 121.2, -305.1 , 0 );
setMoveKey( spep_4-3 + 96, 1, 121.2, -303.6 , 0 );
setMoveKey( spep_4-3 + 98, 1, 121, -300.6 , 0 );
setMoveKey( spep_4-3 + 100, 1, 122.5, -299.4 , 0 );
setMoveKey( spep_4-3 + 102, 1, 122, -303.1 , 0 );
setMoveKey( spep_4-3 + 104, 1, 121.5, -302.3 , 0 );
setMoveKey( spep_4-3 + 106, 1, 122, -298.6 , 0 );
setMoveKey( spep_4-3 + 108, 1, 121.5, -300.9 , 0 );
setMoveKey( spep_4-3 + 110, 1, 122.5, -302.1 , 0 );
setMoveKey( spep_4-3 + 112, 1, 121.7, -301.1 , 0 );
setMoveKey( spep_4-3 + 114, 1, 122.2, -301.9 , 0 );
setMoveKey( spep_4-3 + 136, 1, 122.2, -301.9 , 0 );
setMoveKey( spep_4-3 + 138, 1, 122, -301.8 , 0 );
setMoveKey( spep_4-3 + 140, 1, 122, -301.8 , 0 );
setMoveKey( spep_4-3 + 142, 1, 122.2, -301.9 , 0 );
setMoveKey( spep_4-3 + 144, 1, 122, -301.8 , 0 );
setMoveKey( spep_4-3 + 146, 1, 122.2, -301.9 , 0 );
setMoveKey( spep_4-1 + 148, 1, 122.2, -301.9 , 0 );

setScaleKey( spep_4 + 0, 1, 5.12, 5.19 );
setScaleKey( spep_4-3 + 47, 1, 5.12, 5.19 );
setScaleKey( spep_4-3 + 48, 1, 5.35, 5.42 );
setScaleKey( spep_4-3 + 53, 1, 5.35, 5.42 );
setScaleKey( spep_4-3 + 54, 1, 5.12, 5.19 );
setScaleKey( spep_4-3 + 56, 1, 5.09, 5.15 );
setScaleKey( spep_4-3 + 58, 1, 5.07, 5.13 );
setScaleKey( spep_4-3 + 60, 1, 5.05, 5.12 );
setScaleKey( spep_4-3 + 62, 1, 5.05, 5.11 );
setScaleKey( spep_4-3 + 64, 1, 5.04, 5.11 );
setScaleKey( spep_4-3 + 66, 1, 5.04, 5.1 );
setScaleKey( spep_4-1 + 148, 1, 5.04, 5.1 );

setRotateKey( spep_4 + 0, 1, -49.5 );
setRotateKey( spep_4-3 + 12, 1, -49.5 );
setRotateKey( spep_4-3 + 14, 1, -49 );
setRotateKey( spep_4-3 + 16, 1, -49.5 );
setRotateKey( spep_4-3 + 22, 1, -49.5 );
setRotateKey( spep_4-3 + 24, 1, -49 );
setRotateKey( spep_4-3 + 26, 1, -49.5 );
setRotateKey( spep_4-3 + 28, 1, -49 );
setRotateKey( spep_4-3 + 30, 1, -49 );
setRotateKey( spep_4-3 + 32, 1, -49.5 );
setRotateKey( spep_4-3 + 47, 1, -49.5 );
setRotateKey( spep_4-3 + 48, 1, 11 );
setRotateKey( spep_4-3 + 53, 1, 11 );
setRotateKey( spep_4-3 + 54, 1, -49 );
setRotateKey( spep_4-3 + 86, 1, -49 );
setRotateKey( spep_4-3 + 88, 1, -48.5 );
setRotateKey( spep_4-3 + 90, 1, -49 );
setRotateKey( spep_4-3 + 96, 1, -49 );
setRotateKey( spep_4-3 + 98, 1, -48.5 );
setRotateKey( spep_4-3 + 100, 1, -49 );
setRotateKey( spep_4-3 + 102, 1, -49 );
setRotateKey( spep_4-3 + 104, 1, -48.5 );
setRotateKey( spep_4-3 + 106, 1, -49 );
setRotateKey( spep_4-3 + 136, 1, -49 );
setRotateKey( spep_4-3 + 138, 1, -48.5 );
setRotateKey( spep_4-3 + 140, 1, -48.5 );
setRotateKey( spep_4-3 + 142, 1, -49 );
setRotateKey( spep_4-3 + 144, 1, -48.5 );
setRotateKey( spep_4-3 + 146, 1, -49 );
setRotateKey( spep_4-1 + 148, 1, -49 );

--SE
--追い踏みつけ
SE033 = playSeVer2( spep_4 + 42, 1153, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_4 + 44, 1169, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_4 + 46, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 46, SE035, 74 );

--足引く
SE036 = playSeVer2( spep_4 + 122, 1190, "", 0, 6, 0, -1);
setStartTimeMs( SE036,  150 );
SE037 = playSeVer2( spep_4 + 122, 1116, "",spep_4 + 160, 0, 18, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 148;
------------------------------------------------------
--セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
cut_f = entryEffect( spep_5 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, cut_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 84, cut_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, cut_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, cut_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, cut_f, 0 );
setEffRotateKey( spep_5 + 84, cut_f, 0 );
setEffAlphaKey( spep_5 + 0, cut_f, 255 );
setEffAlphaKey( spep_5 + 84, cut_f, 255 );
setEffAlphaKey( spep_5 + 85, cut_f, 0 );
setEffAlphaKey( spep_5 + 86, cut_f, 0 );

-- ** エフェクト等 ** --
cut_b = entryEffect( spep_5 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, cut_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 84, cut_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, cut_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, cut_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, cut_b, 0 );
setEffRotateKey( spep_5 + 84, cut_b, 0 );
setEffAlphaKey( spep_5 + 0, cut_b, 255 );
setEffAlphaKey( spep_5 + 84, cut_b, 255 );
setEffAlphaKey( spep_5 + 85, cut_b, 0 );
setEffAlphaKey( spep_5 + 86, cut_b, 0 );

--顔カットインのタイミング指定
spep_x=spep_5 -8;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

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
]]
--敵の動き
setDisp( spep_5 + 84, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

a=40;

setMoveKey( spep_5 + 0, 1, 173.3+a, -16.9 , 0 );
setMoveKey( spep_5 + 84, 1, 173.3+a, -16.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.58, 1.58 );
setScaleKey( spep_5 + 84, 1, 1.58, 1.58 );

setRotateKey( spep_5 + 0, 1, -42 );
setRotateKey( spep_5 + 84, 1, -42 );

--SE
--顔カットイン
SE038 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_5 +82 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6= spep_5 + 84;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_6 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7= spep_6 + 94;
------------------------------------------------------
--正面発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_7 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_7 + 70, beam, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_7 + 70, beam, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, beam, 0 );
setEffRotateKey( spep_7 + 70, beam, 0 );
setEffAlphaKey( spep_7 + 0, beam, 255 );
setEffAlphaKey( spep_7 + 68, beam, 255 );
setEffAlphaKey( spep_7 + 69, beam, 255 );
setEffAlphaKey( spep_7 + 70, beam, 0 );

--SE
--腕をひく
SE040 = playSeVer2( spep_7 + 2, 1182, "",spep_7 + 44, 8, 16, -1);
setSeVolumeByWorkId( spep_7 + 2, SE040, 75 );
setStartTimeMs( SE040,  100 );
SE041 = playSeVer2( spep_7 + 0, 1116, "",spep_7 + 40, 0, 20, -1);
setSeVolumeByWorkId( spep_7 + 0, SE041, 75 );

--腕前に出す
SE042 = playSeVer2( spep_7 + 36, 1004, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_7 + 36, 1003, "", 0, 0, 0, -1);

--気弾発射
SE044 = playSeVer2( spep_7 + 50, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 50, SE044, 86 );
SE045 = playSeVer2( spep_7 + 52, 1027, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_7 + 52, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 52, SE046, 82 );
SE047 = playSeVer2( spep_7 + 52, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 52, SE047, 71 );
setTimeStretch( SE047, 1.25, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_8= spep_7 + 70;
------------------------------------------------------
--横発射
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_8 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 268, hit_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 268, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_f, 0 );
setEffRotateKey( spep_8 + 268, hit_f, 0 );
setEffAlphaKey( spep_8 + 0, hit_f, 255 );
setEffAlphaKey( spep_8 + 268, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_8 + 0, SP_14, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 268, hit_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 268, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_b, 0 );
setEffRotateKey( spep_8 + 268, hit_b, 0 );
setEffAlphaKey( spep_8 + 0, hit_b, 255 );
setEffAlphaKey( spep_8 + 268, hit_b, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-1 + 16, 1, 0 );

setBlendColor(spep_8-1 + 12,1,3,1.0,1.0,0.8,0.4);
setBlendColor(spep_8-1 + 14,1,3,1.0,1.0,0.8,0);

changeAnime( spep_8 + 0, 1, 106 );

setMoveKey( spep_8 + 0, 1, 322, 76 , 0 );
setMoveKey( spep_8-1 + 16, 1, 322, 76 , 0 );

setScaleKey( spep_8 + 0, 1, 0.96, 0.96 );
setScaleKey( spep_8-1 + 16, 1, 0.96, 0.96 );

setRotateKey( spep_8 + 0, 1, -38.8 );
setRotateKey( spep_8-1 + 16, 1, -38.8 );

--敵の動き
setDisp( spep_8-3 + 78, 1, 1 );
setDisp( spep_8-1 + 154, 1, 0 );

setBlendColor(spep_8-3 + 78,1,3,1.0,1.0,0.5,0.6);
setBlendColor(spep_8 + 160,1,3,1.0,1.0,0.5,0);

changeAnime( spep_8-3 + 78, 1, 106 );

setMoveKey( spep_8-3 + 78, 1, 1.9, -118.2 , 0 );
setMoveKey( spep_8-3 + 80, 1, -2, -118 , 0 );
setMoveKey( spep_8-3 + 82, 1, 5.9, -114.2 , 0 );
setMoveKey( spep_8-3 + 84, 1, 5.1, -122.2 , 0 );
setMoveKey( spep_8-3 + 86, 1, 1.3, -117.8 , 0 );
setMoveKey( spep_8-3 + 88, 1, 8, -116.7 , 0 );
setMoveKey( spep_8-3 + 90, 1, 2.5, -120 , 0 );
setMoveKey( spep_8-3 + 92, 1, 7.1, -116.2 , 0 );
setMoveKey( spep_8-3 + 94, 1, 1.7, -119.6 , 0 );
setMoveKey( spep_8-3 + 96, 1, 10.5, -115.9 , 0 );
setMoveKey( spep_8-3 + 98, 1, 3.5, -119.8 , 0 );
setMoveKey( spep_8-3 + 100, 1, 11, -117.4 , 0 );
setMoveKey( spep_8-3 + 102, 1, 6.7, -122.6 , 0 );
setMoveKey( spep_8-3 + 104, 1, 11.6, -115.6 , 0 );
setMoveKey( spep_8-3 + 106, 1, 7.9, -122.5 , 0 );
setMoveKey( spep_8-3 + 108, 1, 11.9, -114.6 , 0 );
setMoveKey( spep_8-3 + 110, 1, 9.3, -120.9 , 0 );
setMoveKey( spep_8-3 + 112, 1, 10, -113.8 , 0 );
setMoveKey( spep_8-3 + 114, 1, 15.2, -119.9 , 0 );
setMoveKey( spep_8-3 + 116, 1, 11, -114.1 , 0 );
setMoveKey( spep_8-3 + 118, 1, 15.8, -121.3 , 0 );
setMoveKey( spep_8-3 + 120, 1, 12.5, -115.4 , 0 );
setMoveKey( spep_8-3 + 122, 1, 15.3, -120.2 , 0 );
setMoveKey( spep_8-3 + 124, 1, 14.4, -115 , 0 );
setMoveKey( spep_8-3 + 126, 1, 12.3, -119.2 , 0 );
setMoveKey( spep_8-3 + 128, 1, 17.7, -115.4 , 0 );
setMoveKey( spep_8-3 + 130, 1, 15.7, -121.4 , 0 );
setMoveKey( spep_8-3 + 132, 1, 12.1, -115.7 , 0 );
setMoveKey( spep_8-3 + 134, 1, 20.5, -118.8 , 0 );
setMoveKey( spep_8-3 + 136, 1, 13.2, -115.9 , 0 );
setMoveKey( spep_8-3 + 138, 1, 20.3, -118.2 , 0 );
setMoveKey( spep_8-3 + 140, 1, 14.3, -118.9 , 0 );
setMoveKey( spep_8-3 + 142, 1, 21.7, -120 , 0 );
setMoveKey( spep_8-3 + 144, 1, 15.5, -120 , 0 );
setMoveKey( spep_8-3 + 146, 1, 22.5, -118.9 , 0 );
setMoveKey( spep_8-3 + 148, 1, 17.6, -116 , 0 );
setMoveKey( spep_8-3 + 150, 1, 25.4, -118.9 , 0 );
setMoveKey( spep_8-3 + 152, 1, 18.3, -114.7 , 0 );
setMoveKey( spep_8-1 + 154, 1, 23.6, -121.8 , 0 );

setScaleKey( spep_8-3 + 78, 1, 1.97, 1.97 );
setScaleKey( spep_8-1 + 154, 1, 1.97, 1.97 );

setRotateKey( spep_8-3 + 78, 1, -37 );
setRotateKey( spep_8-1 + 154, 1, -37 );

--SE
--横向き気弾発射
SE048 = playSeVer2( spep_8 + 0, 1312, "",spep_8 + 94, 0, 56, -1);
SE049 = playSeVer2( spep_8 + 0, 1258, "",spep_8 + 118, 0, 40, -1);
setSeVolumeByWorkId( spep_8 + 0, SE049, 79 );
SE050 = playSeVer2( spep_8 + 0, 1161, "", 0, 0, 0, -1);
setTimeStretch( SE050, 1.25, 30, 4 );
SE051 = playSeVer2( spep_8 + 40, 1343, "", 0, 0, 0, -1);

--気弾に飲み込まれる
SE052 = playSeVer2( spep_8 + 100, 1258, "",spep_8 + 220, 18, 60, -1);
setStartTimeMs( SE052,  150 );
SE053 = playSeVer2( spep_8 + 110, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 110, SE053, 80 );
setPitch( spep_8 + 110, SE053, 300 );
setTimeStretch( SE053, 1.2, 30, 4 );

-- 終わり
dealDamage(spep_8+50);
endPhase( spep_8 + 170 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--突進
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 166, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_0 + 166, rush, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 166, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 164, rush, 255 );
setEffAlphaKey( spep_0 + 165, rush, 255 );
setEffAlphaKey( spep_0 + 166, rush, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-1 + 90, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 2.2, 228 , 0 );
setMoveKey( spep_0 + 1, 1, 2.2, 228 , 0 );
setMoveKey( spep_0 + 2, 1, 2.2, 228 , 0 );
setMoveKey( spep_0 + 3, 1, 2.2, 228 , 0 );
setMoveKey( spep_0 + 4, 1, 2.2, 228 , 0 );
setMoveKey( spep_0 + 5, 1, 2.2, 228 , 0 );
setMoveKey( spep_0 + 6, 1, 2.2, 228 , 0 );
setMoveKey( spep_0-1 + 90, 1, 2.2, 228 , 0 );

setScaleKey( spep_0 + 0, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 1, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 2, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 3, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 4, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 5, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 6, 1, 0.1, 0.1 );
setScaleKey( spep_0-1 + 90, 1, 0.1, 0.1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-1 + 90, 1, 0 );

--SE
--構える
SE001 = playSeVer2( spep_0 + 36, 1013, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 36, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE002, 55 );
SE003 = playSeVer2( spep_0 + 38, 1003, "", 0, 0, 0, -1);

--向かっていく
SE004 = playSeVer2( spep_0 + 64, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 64, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE005, 66 );
SE006 = playSeVer2( spep_0 + 68, 44, "", 0, 0, 0, -1);

--飛んでいく
SE007 = playSeVer2( spep_0 + 90, 1019, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 90, 1304, "",spep_0 + 230, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 90, SE008, 73 );
SE009 = playSeVer2( spep_0 + 90, 1278, "",spep_0 + 224, 0, 34, -1);
SE010 = playSeVer2( spep_0 + 154, 1019, "",spep_0 + 218, 0, 28, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 170, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 130; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    
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
-- ** 次の準備 ** --
spep_1= spep_0 + 166;
------------------------------------------------------
--パンチ
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, panting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panting_f, 0 );
setEffRotateKey( spep_1 + 56, panting_f, 0 );
setEffAlphaKey( spep_1 + 0, panting_f, 255 );
setEffAlphaKey( spep_1 + 54, panting_f, 255 );
setEffAlphaKey( spep_1 + 55, panting_f, 255 );
setEffAlphaKey( spep_1 + 56, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, panting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panting_b, 0 );
setEffRotateKey( spep_1 + 56, panting_b, 0 );
setEffAlphaKey( spep_1 + 0, panting_b, 255 );
setEffAlphaKey( spep_1 + 54, panting_b, 255 );
setEffAlphaKey( spep_1 + 55, panting_b, 255 );
setEffAlphaKey( spep_1 + 56, panting_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1-3 + 38, 1, 106 );

setMoveKey( spep_1 + 0, 1, 236.4, 39.1 , 0 );
setMoveKey( spep_1-3 + 16, 1, 236.4, 39.1 , 0 );
setMoveKey( spep_1-3 + 18, 1, 236.4, 30.7 , 0 );
setMoveKey( spep_1-3 + 20, 1, 236.4, 22.4 , 0 );
setMoveKey( spep_1-3 + 22, 1, 236.4, 14 , 0 );
setMoveKey( spep_1-3 + 24, 1, 236.4, 5.6 , 0 );
setMoveKey( spep_1-3 + 26, 1, 236.4, -2.7 , 0 );
setMoveKey( spep_1-3 + 28, 1, 236.4, -11.1 , 0 );
setMoveKey( spep_1-3 + 30, 1, 236.4, -19.5 , 0 );
setMoveKey( spep_1-3 + 32, 1, 236.4, -27.9 , 0 );
setMoveKey( spep_1-3 + 34, 1, 236.4, -36.2 , 0 );
setMoveKey( spep_1-3 + 37, 1, 236.4, -44.6 , 0 );
setMoveKey( spep_1-3 + 38, 1, 338.3, -23.4 , 0 );
setMoveKey( spep_1-3 + 42, 1, 338.3, -23.4 , 0 );
setMoveKey( spep_1-3 + 44, 1, 395.6, 44.7 , 0 );
setMoveKey( spep_1-3 + 46, 1, 395.6, 44.7 , 0 );
setMoveKey( spep_1-3 + 48, 1, 504.2, 106.8 , 0 );
setMoveKey( spep_1-3 + 50, 1, 504.2, 106.8 , 0 );
setMoveKey( spep_1-1 + 56, 1, 668.1, 194.9 , 0 );

setScaleKey( spep_1 + 0, 1, 2.97,2.97);
setScaleKey( spep_1-3 + 37, 1, 2.97,2.97);
setScaleKey( spep_1-3 + 38, 1, 2.92,2.92);
setScaleKey( spep_1-1 + 56, 1, 2.92,2.92);

setRotateKey( spep_1 + 0, 1, -6.8 );
setRotateKey( spep_1-3 + 37, 1, -6.8 );
setRotateKey( spep_1-3 + 38, 1, -30 );
setRotateKey( spep_1-3 + 42, 1, -30 );
setRotateKey( spep_1-3 + 44, 1, -21.8 );
setRotateKey( spep_1-3 + 46, 1, -21.8 );
setRotateKey( spep_1-3 + 48, 1, -2 );
setRotateKey( spep_1-3 + 50, 1, -2 );
setRotateKey( spep_1-1 + 56, 1, 0 );

--SE
--敵の前に現れる
SE011 = playSeVer2( spep_1 + 12, 1245, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_1 + 12, SE011, 53 );
setStartTimeMs( SE011,  0 );
SE012 = playSeVer2( spep_1 + 22, 1004, "", 0, 0, 0, -1);

--パンチ
SE013 = playSeVer2( spep_1 + 38, 1180, "", 0, 10, 0, -1);
setStartTimeMs( SE013,  383 );
SE014 = playSeVer2( spep_1 + 36, 1187, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 36, 1359, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2= spep_1 + 56;
------------------------------------------------------
--膝蹴り　撃ち落とし
------------------------------------------------------
-- ** エフェクト等 ** --
drop_f = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, drop_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 110, drop_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, drop_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 110, drop_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, drop_f, 0 );
setEffRotateKey( spep_2 + 110, drop_f, 0 );
setEffAlphaKey( spep_2 + 0, drop_f, 255 );
setEffAlphaKey( spep_2 + 108, drop_f, 255 );
setEffAlphaKey( spep_2 + 109, drop_f, 255 );
setEffAlphaKey( spep_2 + 110, drop_f, 0 );

-- ** エフェクト等 ** --
drop_b = entryEffect( spep_2 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, drop_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 110, drop_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, drop_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 110, drop_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, drop_b, 0 );
setEffRotateKey( spep_2 + 110, drop_b, 0 );
setEffAlphaKey( spep_2 + 0, drop_b, 255 );
setEffAlphaKey( spep_2 + 108, drop_b, 255 );
setEffAlphaKey( spep_2 + 109, drop_b, 255 );
setEffAlphaKey( spep_2 + 110, drop_b, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 90, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2-3 + 52, 1, 108 );
changeAnime( spep_2-3 + 78, 1, 7 );
changeAnime( spep_2-3 + 84, 1, 6 );

setMoveKey( spep_2 + 0, 1, -549.6, -742.8 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -549.6, -742.8 , 0 );
setMoveKey( spep_2-3 + 4, 1, -305.5, -494.5 , 0 );
setMoveKey( spep_2-3 + 6, 1, -132.5, -363.7 , 0 );
setMoveKey( spep_2-3 + 8, 1, -132.5, -363.7 , 0 );
setMoveKey( spep_2-3 + 10, 1, 28.6, -241.8 , 0 );
setMoveKey( spep_2-3 + 12, 1, 28.6, -241.8 , 0 );
setMoveKey( spep_2-3 + 14, 1, 82.4, -210.2 , 0 );
setMoveKey( spep_2-3 + 16, 1, 82.4, -210.2 , 0 );
setMoveKey( spep_2-3 + 18, 1, 109.8, -194.1 , 0 );
setMoveKey( spep_2-3 + 20, 1, 109.8, -194.1 , 0 );
setMoveKey( spep_2-3 + 22, 1, 117.5, -189 , 0 );
setMoveKey( spep_2-3 + 24, 1, 117.5, -189 , 0 );
setMoveKey( spep_2-3 + 26, 1, 123.2, -185.9 , 0 );
setMoveKey( spep_2-3 + 51, 1, 123.2, -185.9 , 0 );
setMoveKey( spep_2-3 + 52, 1, 175.6, 39.5 , 0 );
setMoveKey( spep_2-3 + 54, 1, 175.6, 39.5 , 0 );
setMoveKey( spep_2-3 + 56, 1, 192.2, 85.8 , 0 );
setMoveKey( spep_2-3 + 58, 1, 199.3, 105.5 , 0 );
setMoveKey( spep_2-3 + 60, 1, 199.3, 105.5 , 0 );
setMoveKey( spep_2-3 + 62, 1, 210.8, 138 , 0 );
setMoveKey( spep_2-3 + 64, 1, 210.8, 138 , 0 );
setMoveKey( spep_2-3 + 66, 1, 219.2, 161 , 0 );
setMoveKey( spep_2-3 + 68, 1, 219.2, 161 , 0 );
setMoveKey( spep_2-3 + 70, 1, 224.1, 174.9 , 0 );
setMoveKey( spep_2-3 + 72, 1, 224.1, 174.9 , 0 );
setMoveKey( spep_2-3 + 74, 1, 225.6, 179.6 , 0 );
setMoveKey( spep_2-3 + 77, 1, 225.6, 179.6 , 0 );
setMoveKey( spep_2-3 + 78, 1, 170.1, -110 , 0 );
setMoveKey( spep_2-3 + 83, 1, 170.1, -110 , 0 );
setMoveKey( spep_2-3 + 84, 1, 219.2, -480.8 , 0 );
setMoveKey( spep_2-3 + 86, 1, 201.8, -704.1 , 0 );
setMoveKey( spep_2-3 + 88, 1, 187.1, -892.2 , 0 );
setMoveKey( spep_2-3 + 90, 1, 175.2, -1045.3 , 0 );

setScaleKey( spep_2 + 0, 1, 4.5,4.5);
setScaleKey( spep_2-3 + 4, 1, 3.89,3.89);
setScaleKey( spep_2-3 + 6, 1, 3.79,3.79);
setScaleKey( spep_2-3 + 8, 1, 3.79,3.79);
setScaleKey( spep_2-3 + 10, 1, 3.68,3.68);
setScaleKey( spep_2-3 + 12, 1, 3.68,3.68);
setScaleKey( spep_2-3 + 14, 1, 3.62,3.62);
setScaleKey( spep_2-3 + 16, 1, 3.62,3.62);
setScaleKey( spep_2-3 + 18, 1, 3.59,3.59);
setScaleKey( spep_2-3 + 20, 1, 3.59,3.59);
setScaleKey( spep_2-3 + 22, 1, 3.58,3.58);
setScaleKey( spep_2-3 + 51, 1, 3.58,3.58);

setScaleKey( spep_2-3 + 52, 1, 3.96,3.96);
setScaleKey( spep_2-3 + 54, 1, 3.96,3.96);
setScaleKey( spep_2-3 + 56, 1, 3.93,3.93);
setScaleKey( spep_2-3 + 60, 1, 3.93,3.93);
setScaleKey( spep_2-3 + 62, 1, 3.92,3.92);
setScaleKey( spep_2-3 + 64, 1, 3.92,3.92);
setScaleKey( spep_2-3 + 66, 1, 3.91,3.91);
setScaleKey( spep_2-3 + 77, 1, 3.91,3.91);
setScaleKey( spep_2-3 + 78, 1, 1.18,1.18);
setScaleKey( spep_2-3 + 83, 1, 1.18,1.18);
setScaleKey( spep_2-3 + 84, 1, 3.55,3.55);
setScaleKey( spep_2-3 + 90, 1, 3.55,3.55);

setRotateKey( spep_2 + 0, 1, -70 );
--setRotateKey( spep_2-3 + 2, 1, -70 );
setRotateKey( spep_2-3 + 4, 1, -56 );
setRotateKey( spep_2-3 + 6, 1, -55.4 );
setRotateKey( spep_2-3 + 8, 1, -55.4 );
setRotateKey( spep_2-3 + 10, 1, -54.6 );
setRotateKey( spep_2-3 + 12, 1, -54.6 );
setRotateKey( spep_2-3 + 14, 1, -54.3 );
setRotateKey( spep_2-3 + 16, 1, -54.3 );
setRotateKey( spep_2-3 + 18, 1, -54.1 );
setRotateKey( spep_2-3 + 20, 1, -54.1 );
setRotateKey( spep_2-3 + 22, 1, -54 );
setRotateKey( spep_2-3 + 51, 1, -54 );
setRotateKey( spep_2-3 + 52, 1, -63.2 );
setRotateKey( spep_2-3 + 77, 1, -63.2 );
setRotateKey( spep_2-3 + 78, 1, -65 );
setRotateKey( spep_2-3 + 83, 1, -65 );
setRotateKey( spep_2-3 + 84, 1, -105 );
setRotateKey( spep_2-3 + 90, 1, -105 );

--SE
--膝蹴り
SE016 = playSeVer2( spep_2 + 50, 1190, "",spep_2 + 98, 0, 26, -1);
SE017 = playSeVer2( spep_2 + 50, 1153, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 54, 1110, "", 0, 0, 0, -1);

--叩き落とす
SE019 = playSeVer2( spep_2 + 76, 1123, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 80, 1359, "",spep_2 + 118, 0, 28, -1);
SE021 = playSeVer2( spep_2 + 80, 1169, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 80, 1121, "",spep_2 + 136, 0, 18, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3= spep_2 + 108;
------------------------------------------------------
--蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_3 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 152, kick_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 152, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 152, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 150, kick_f, 255 );
setEffAlphaKey( spep_3 + 151, kick_f, 255 );
setEffAlphaKey( spep_3 + 152, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_3 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 152, kick_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 152, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 152, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 150, kick_b, 255 );
setEffAlphaKey( spep_3 + 151, kick_b, 255 );
setEffAlphaKey( spep_3 + 152, kick_b, 0 );

--敵の動き
setDisp( spep_3-3 + 6, 1, 1 );

changeAnime( spep_3-3 + 6, 1, 108 );
changeAnime( spep_3-3 + 12, 1, 106 );
changeAnime( spep_3-3 + 98, 1, 108 );
changeAnime( spep_3-3 + 116, 1, 106 );

setMoveKey( spep_3-3 + 6, 1, -365.6, 325.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, -97.5, 147.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, 143.2, -21.3 , 0 );
setMoveKey( spep_3-3 + 11, 1, 143.2, -21.3 , 0 );

setMoveKey( spep_3-3 + 12, 1, 144.6, -58.7 , 0 );
setMoveKey( spep_3-3 + 14, 1, 149.6, -55.7 , 0 );
setMoveKey( spep_3-3 + 16, 1, 154.7, -47.9 , 0 );
setMoveKey( spep_3-3 + 18, 1, 160.5, -44.8 , 0 );
setMoveKey( spep_3-3 + 20, 1, 149.8, -53.6 , 0 );
setMoveKey( spep_3-3 + 22, 1, 149.4, -59.1 , 0 );
setMoveKey( spep_3-3 + 24, 1, 158, -44.2 , 0 );
setMoveKey( spep_3-3 + 26, 1, 153.2, -46.5 , 0 );
setMoveKey( spep_3-3 + 28, 1, 149, -55.5 , 0 );
setMoveKey( spep_3-3 + 30, 1, 149.6, -52.5 , 0 );
setMoveKey( spep_3-3 + 32, 1, 155.4, -44.4 , 0 );
setMoveKey( spep_3-3 + 34, 1, 151.1, -50.2 , 0 );
setMoveKey( spep_3-3 + 36, 1, 146.3, -56.9 , 0 );
setMoveKey( spep_3-3 + 38, 1, 148.3, -51.5 , 0 );
setMoveKey( spep_3-3 + 40, 1, 151.2, -47.6 , 0 );
setMoveKey( spep_3-3 + 42, 1, 154.2, -50.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, 150, -54.7 , 0 );
setMoveKey( spep_3-3 + 46, 1, 148.1, -55.2 , 0 );
setMoveKey( spep_3-3 + 48, 1, 153.4, -50.7 , 0 );
setMoveKey( spep_3-3 + 50, 1, 154.1, -51 , 0 );
setMoveKey( spep_3-3 + 52, 1, 149.1, -52.1 , 0 );
setMoveKey( spep_3-3 + 54, 1, 148.9, -51.3 , 0 );
setMoveKey( spep_3-3 + 56, 1, 152.6, -49.3 , 0 );
setMoveKey( spep_3-3 + 58, 1, 149.3, -52.4 , 0 );
setMoveKey( spep_3-3 + 60, 1, 150.6, -51.9 , 0 );
setMoveKey( spep_3-3 + 62, 1, 152.6, -50.4 , 0 );
setMoveKey( spep_3-3 + 64, 1, 152.9, -49.2 , 0 );
setMoveKey( spep_3-3 + 66, 1, 149.8, -52.2 , 0 );
setMoveKey( spep_3-3 + 68, 1, 150.4, -52.1 , 0 );
setMoveKey( spep_3-3 + 70, 1, 150.9, -50.6 , 0 );
setMoveKey( spep_3-3 + 72, 1, 151.9, -50.2 , 0 );
setMoveKey( spep_3-3 + 74, 1, 151, -50.5 , 0 );
setMoveKey( spep_3-3 + 76, 1, 150.9, -50.3 , 0 );
setMoveKey( spep_3-3 + 78, 1, 151.3, -50.6 , 0 );
setMoveKey( spep_3-3 + 80, 1, 151.1, -51.5 , 0 );
setMoveKey( spep_3-3 + 82, 1, 151.5, -51.1 , 0 );
setMoveKey( spep_3-3 + 84, 1, 151.4, -50.8 , 0 );
setMoveKey( spep_3-3 + 86, 1, 151.2, -51.8 , 0 );
setMoveKey( spep_3-3 + 88, 1, 151.3, -51.7 , 0 );
setMoveKey( spep_3-3 + 90, 1, 151.3, -51.6 , 0 );
setMoveKey( spep_3-3 + 92, 1, 151.3, -51.5 , 0 );
setMoveKey( spep_3-3 + 94, 1, 151.3, -51.4 , 0 );
setMoveKey( spep_3-3 + 97, 1, 151.4, -51.4 , 0 );

setMoveKey( spep_3-3 + 98, 1, 135.3, -25.4 , 0 );
setMoveKey( spep_3-3 + 100, 1, 139.1, -27.6 , 0 );
setMoveKey( spep_3-3 + 102, 1, 178.2, -52.3 , 0 );
setMoveKey( spep_3-3 + 104, 1, 171.7, -50.1 , 0 );
setMoveKey( spep_3-3 + 106, 1, 158, -29.1 , 0 );
setMoveKey( spep_3-3 + 108, 1, 167.7, -32.9 , 0 );
setMoveKey( spep_3-3 + 110, 1, 168.4, -45.7 , 0 );
setMoveKey( spep_3-3 + 112, 1, 182.5, -47.4 , 0 );
setMoveKey( spep_3-3 + 114, 1, 163, -36.8 , 0 );
setMoveKey( spep_3-3 + 115, 1, 163, -36.8 , 0 );

setMoveKey( spep_3-3 + 116, 1, 172.5, -56.2 , 0 );
setMoveKey( spep_3-3 + 118, 1, 177.6, -63.2 , 0 );
setMoveKey( spep_3-3 + 120, 1, 174.1, -66.5 , 0 );
setMoveKey( spep_3-3 + 122, 1, 172.1, -62.4 , 0 );
setMoveKey( spep_3-3 + 124, 1, 165.7, -59.4 , 0 );
setMoveKey( spep_3-3 + 126, 1, 170, -65.4 , 0 );
setMoveKey( spep_3-3 + 128, 1, 174.4, -63.4 , 0 );
setMoveKey( spep_3-3 + 130, 1, 163.9, -57.5 , 0 );
setMoveKey( spep_3-3 + 132, 1, 170.5, -61.1 , 0 );
setMoveKey( spep_3-3 + 134, 1, 171.6, -63.8 , 0 );
setMoveKey( spep_3-3 + 136, 1, 168.5, -61.5 , 0 );
setMoveKey( spep_3-3 + 138, 1, 162.3, -59.6 , 0 );
setMoveKey( spep_3-3 + 140, 1, 162.5, -57.8 , 0 );
setMoveKey( spep_3-3 + 142, 1, 165, -60.7 , 0 );
setMoveKey( spep_3-3 + 144, 1, 161.9, -57.4 , 0 );
setMoveKey( spep_3-1 + 152, 1, 161.9, -57.4 , 0 );

setScaleKey( spep_3-3 + 6, 1, 1.89, 1.89 );
setScaleKey( spep_3-3 + 11, 1, 1.89, 1.89 );

setScaleKey( spep_3-3 + 12, 1, 1.71, 1.81 );
setScaleKey( spep_3-3 + 97, 1, 1.71, 1.81 );

setScaleKey( spep_3-3 + 98, 1, 1.89,1.89);
setScaleKey( spep_3-3 + 100, 1, 1.89,1.89);
setScaleKey( spep_3-3 + 102, 1, 2.45,2.45);
setScaleKey( spep_3-3 + 104, 1, 2.41,2.41);
setScaleKey( spep_3-3 + 106, 1, 1.93,1.93);
setScaleKey( spep_3-3 + 108, 1, 2.05,2.05);
setScaleKey( spep_3-3 + 110, 1, 2.19,2.19);
setScaleKey( spep_3-3 + 112, 1, 2.37,2.37);
setScaleKey( spep_3-3 + 114, 1, 2.01,2.01);
setScaleKey( spep_3-3 + 115, 1, 2.01,2.01);

setScaleKey( spep_3-3 + 116, 1, 1.8,1.8);
setScaleKey( spep_3-3 + 118, 1, 1.95,1.95);
setScaleKey( spep_3-3 + 120, 1, 1.98,1.98);
setScaleKey( spep_3-3 + 122, 1, 1.87,1.87);
setScaleKey( spep_3-3 + 124, 1, 1.79,1.79);
setScaleKey( spep_3-3 + 126, 1, 1.9,1.9);
setScaleKey( spep_3-3 + 128, 1, 1.9,1.9);
setScaleKey( spep_3-3 + 130, 1, 1.76,1.76);
setScaleKey( spep_3-3 + 132, 1, 1.82,1.82);
setScaleKey( spep_3-3 + 134, 1, 1.87,1.87);
setScaleKey( spep_3-3 + 136, 1, 1.84,1.84);
setScaleKey( spep_3-3 + 138, 1, 1.75,1.75);
setScaleKey( spep_3-3 + 140, 1, 1.75,1.75);
setScaleKey( spep_3-3 + 142, 1, 1.79,1.79);
setScaleKey( spep_3-3 + 144, 1, 1.75,1.75);
setScaleKey( spep_3-1 + 152, 1, 1.75,1.75);

setRotateKey( spep_3-3 + 6, 1, 50.9 );
setRotateKey( spep_3-3 + 11, 1, 50.9 );

setRotateKey( spep_3-3 + 12, 1, -18.2 );
setRotateKey( spep_3-3 + 97, 1, -18.2 );

setRotateKey( spep_3-3 + 98, 1, 50.9 );
setRotateKey( spep_3-3 + 115, 1, 50.9 );

setRotateKey( spep_3-3 + 116, 1, -20 );
setRotateKey( spep_3-3 + 118, 1, -19.6 );
setRotateKey( spep_3-3 + 120, 1, -19.4 );
setRotateKey( spep_3-3 + 122, 1, -19.2 );
setRotateKey( spep_3-3 + 124, 1, -19 );
setRotateKey( spep_3-3 + 154, 1, -19 );

--SE
--岩に激突する
SE024 = playSeVer2( spep_3 + 10, 1159, "",spep_3 + 56, 0, 28, -1);
SE025 = playSeVer2( spep_3 + 10, 1168, "",spep_3 + 112, 0, 56, -1);

--クウラ飛んでくる
SE023 = playSeVer2( spep_3 + 38, 1215, "",spep_3 + 100, 34, 8, -1);
setSeVolumeByWorkId( spep_3 + 38, SE023, 76 );
setStartTimeMs( SE023,  700 );
SE026 = playSeVer2( spep_3 + 50, 1222, "",spep_3 + 102, 24, 10, -1);
setSeVolumeByWorkId( spep_3 + 50, SE026, 112 );
setStartTimeMs( SE026,  83 );

--踏みつける
SE027 = playSeVer2( spep_3 + 96, 1180, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_3 + 96, SE027, 87 );
setStartTimeMs( SE027,  250 );
setPitch( spep_3 + 96, SE027, 500 );
setTimeStretch( SE027, 1.33, 30, 4 );
SE028 = playSeVer2( spep_3 + 88, 1189, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_3 + 92, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 92, SE029, 83 );
SE030 = playSeVer2( spep_3 + 96, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 96, SE030, 82 );
SE031 = playSeVer2( spep_3 + 96, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 96, SE031, 87 );
SE032 = playSeVer2( spep_3 + 96, 1159, "",spep_3 + 400, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 96, SE032, 70 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 160, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 152;
------------------------------------------------------
--蹴り２
------------------------------------------------------
-- ** エフェクト等 ** --
kick2_f = entryEffect( spep_4 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick2_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 148, kick2_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick2_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 148, kick2_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick2_f, 0 );
setEffRotateKey( spep_4 + 148, kick2_f, 0 );
setEffAlphaKey( spep_4 + 0, kick2_f, 255 );
setEffAlphaKey( spep_4 + 146, kick2_f, 255 );
setEffAlphaKey( spep_4 + 147, kick2_f, 255 );
setEffAlphaKey( spep_4 + 148, kick2_f, 0 );

-- ** エフェクト等 ** --
kick2_b = entryEffect( spep_4 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick2_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 148, kick2_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick2_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 148, kick2_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick2_b, 0 );
setEffRotateKey( spep_4 + 148, kick2_b, 0 );
setEffAlphaKey( spep_4 + 0, kick2_b, 255 );
setEffAlphaKey( spep_4 + 146, kick2_b, 255 );
setEffAlphaKey( spep_4 + 147, kick2_b, 255 );
setEffAlphaKey( spep_4 + 148, kick2_b, 0 );

--敵の動き
changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4-3 + 48, 1, 108 );
changeAnime( spep_4-3 + 54, 1, 106 );

setMoveKey( spep_4 + 0, 1, 85.4, -278.7 , 0 );
setMoveKey( spep_4-3 + 12, 1, 85.4, -278.7 , 0 );
setMoveKey( spep_4-3 + 14, 1, 85.5, -278.8 , 0 );
setMoveKey( spep_4-3 + 16, 1, 85.4, -278.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, 85.4, -278.7 , 0 );
setMoveKey( spep_4-3 + 24, 1, 85.5, -278.8 , 0 );
setMoveKey( spep_4-3 + 26, 1, 85.4, -278.7 , 0 );
setMoveKey( spep_4-3 + 28, 1, 85.5, -278.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, 85.5, -278.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, 85.4, -278.7 , 0 );
setMoveKey( spep_4-3 + 47, 1, 85.4, -278.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, 129.6, -150 , 0 );
setMoveKey( spep_4-3 + 50, 1, 129.6, -150 , 0 );
setMoveKey( spep_4-3 + 53, 1, 130.1, -153.2 , 0 );
setMoveKey( spep_4-3 + 54, 1, 86, -298.8 , 0 );
setMoveKey( spep_4-3 + 56, 1, 101.4, -298.3 , 0 );
setMoveKey( spep_4-3 + 58, 1, 109.3, -294.1 , 0 );
setMoveKey( spep_4-3 + 60, 1, 115.2, -298.7 , 0 );
setMoveKey( spep_4-3 + 62, 1, 118.3, -304.9 , 0 );
setMoveKey( spep_4-3 + 64, 1, 120.1, -302.6 , 0 );
setMoveKey( spep_4-3 + 66, 1, 120.3, -298.6 , 0 );
setMoveKey( spep_4-3 + 68, 1, 121.2, -300 , 0 );
setMoveKey( spep_4-3 + 70, 1, 121.5, -302.8 , 0 );
setMoveKey( spep_4-3 + 72, 1, 122.7, -304.4 , 0 );
setMoveKey( spep_4-3 + 74, 1, 122.5, -299.4 , 0 );
setMoveKey( spep_4-3 + 76, 1, 122.5, -298.9 , 0 );
setMoveKey( spep_4-3 + 78, 1, 122.2, -305.4 , 0 );
setMoveKey( spep_4-3 + 80, 1, 121.5, -303.6 , 0 );
setMoveKey( spep_4-3 + 82, 1, 121.7, -299.4 , 0 );
setMoveKey( spep_4-3 + 84, 1, 121.7, -299.6 , 0 );
setMoveKey( spep_4-3 + 86, 1, 121.7, -303.9 , 0 );
setMoveKey( spep_4-3 + 88, 1, 121.5, -304.3 , 0 );
setMoveKey( spep_4-3 + 90, 1, 121.5, -299.1 , 0 );
setMoveKey( spep_4-3 + 92, 1, 121.2, -300.4 , 0 );
setMoveKey( spep_4-3 + 94, 1, 121.2, -305.1 , 0 );
setMoveKey( spep_4-3 + 96, 1, 121.2, -303.6 , 0 );
setMoveKey( spep_4-3 + 98, 1, 121, -300.6 , 0 );
setMoveKey( spep_4-3 + 100, 1, 122.5, -299.4 , 0 );
setMoveKey( spep_4-3 + 102, 1, 122, -303.1 , 0 );
setMoveKey( spep_4-3 + 104, 1, 121.5, -302.3 , 0 );
setMoveKey( spep_4-3 + 106, 1, 122, -298.6 , 0 );
setMoveKey( spep_4-3 + 108, 1, 121.5, -300.9 , 0 );
setMoveKey( spep_4-3 + 110, 1, 122.5, -302.1 , 0 );
setMoveKey( spep_4-3 + 112, 1, 121.7, -301.1 , 0 );
setMoveKey( spep_4-3 + 114, 1, 122.2, -301.9 , 0 );
setMoveKey( spep_4-3 + 136, 1, 122.2, -301.9 , 0 );
setMoveKey( spep_4-3 + 138, 1, 122, -301.8 , 0 );
setMoveKey( spep_4-3 + 140, 1, 122, -301.8 , 0 );
setMoveKey( spep_4-3 + 142, 1, 122.2, -301.9 , 0 );
setMoveKey( spep_4-3 + 144, 1, 122, -301.8 , 0 );
setMoveKey( spep_4-3 + 146, 1, 122.2, -301.9 , 0 );
setMoveKey( spep_4-1 + 148, 1, 122.2, -301.9 , 0 );

setScaleKey( spep_4 + 0, 1, 5.12, 5.19 );
setScaleKey( spep_4-3 + 47, 1, 5.12, 5.19 );
setScaleKey( spep_4-3 + 48, 1, 5.35, 5.42 );
setScaleKey( spep_4-3 + 53, 1, 5.35, 5.42 );
setScaleKey( spep_4-3 + 54, 1, 5.12, 5.19 );
setScaleKey( spep_4-3 + 56, 1, 5.09, 5.15 );
setScaleKey( spep_4-3 + 58, 1, 5.07, 5.13 );
setScaleKey( spep_4-3 + 60, 1, 5.05, 5.12 );
setScaleKey( spep_4-3 + 62, 1, 5.05, 5.11 );
setScaleKey( spep_4-3 + 64, 1, 5.04, 5.11 );
setScaleKey( spep_4-3 + 66, 1, 5.04, 5.1 );
setScaleKey( spep_4-1 + 148, 1, 5.04, 5.1 );

setRotateKey( spep_4 + 0, 1, -49.5 );
setRotateKey( spep_4-3 + 12, 1, -49.5 );
setRotateKey( spep_4-3 + 14, 1, -49 );
setRotateKey( spep_4-3 + 16, 1, -49.5 );
setRotateKey( spep_4-3 + 22, 1, -49.5 );
setRotateKey( spep_4-3 + 24, 1, -49 );
setRotateKey( spep_4-3 + 26, 1, -49.5 );
setRotateKey( spep_4-3 + 28, 1, -49 );
setRotateKey( spep_4-3 + 30, 1, -49 );
setRotateKey( spep_4-3 + 32, 1, -49.5 );
setRotateKey( spep_4-3 + 47, 1, -49.5 );
setRotateKey( spep_4-3 + 48, 1, 11 );
setRotateKey( spep_4-3 + 53, 1, 11 );
setRotateKey( spep_4-3 + 54, 1, -49 );
setRotateKey( spep_4-3 + 86, 1, -49 );
setRotateKey( spep_4-3 + 88, 1, -48.5 );
setRotateKey( spep_4-3 + 90, 1, -49 );
setRotateKey( spep_4-3 + 96, 1, -49 );
setRotateKey( spep_4-3 + 98, 1, -48.5 );
setRotateKey( spep_4-3 + 100, 1, -49 );
setRotateKey( spep_4-3 + 102, 1, -49 );
setRotateKey( spep_4-3 + 104, 1, -48.5 );
setRotateKey( spep_4-3 + 106, 1, -49 );
setRotateKey( spep_4-3 + 136, 1, -49 );
setRotateKey( spep_4-3 + 138, 1, -48.5 );
setRotateKey( spep_4-3 + 140, 1, -48.5 );
setRotateKey( spep_4-3 + 142, 1, -49 );
setRotateKey( spep_4-3 + 144, 1, -48.5 );
setRotateKey( spep_4-3 + 146, 1, -49 );
setRotateKey( spep_4-1 + 148, 1, -49 );

--SE
--追い踏みつけ
SE033 = playSeVer2( spep_4 + 42, 1153, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_4 + 44, 1169, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_4 + 46, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 46, SE035, 74 );

--足引く
SE036 = playSeVer2( spep_4 + 122, 1190, "", 0, 6, 0, -1);
setStartTimeMs( SE036,  150 );
SE037 = playSeVer2( spep_4 + 122, 1116, "",spep_4 + 160, 0, 18, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 148;
------------------------------------------------------
--セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
cut_f = entryEffect( spep_5 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, cut_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 84, cut_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, cut_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, cut_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, cut_f, 0 );
setEffRotateKey( spep_5 + 84, cut_f, 0 );
setEffAlphaKey( spep_5 + 0, cut_f, 255 );
setEffAlphaKey( spep_5 + 84, cut_f, 255 );
setEffAlphaKey( spep_5 + 85, cut_f, 0 );
setEffAlphaKey( spep_5 + 86, cut_f, 0 );

-- ** エフェクト等 ** --
cut_b = entryEffect( spep_5 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, cut_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 84, cut_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, cut_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, cut_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, cut_b, 0 );
setEffRotateKey( spep_5 + 84, cut_b, 0 );
setEffAlphaKey( spep_5 + 0, cut_b, 255 );
setEffAlphaKey( spep_5 + 84, cut_b, 255 );
setEffAlphaKey( spep_5 + 85, cut_b, 0 );
setEffAlphaKey( spep_5 + 86, cut_b, 0 );

--顔カットインのタイミング指定
spep_x=spep_5 -8;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

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
]]
--敵の動き
setDisp( spep_5 + 84, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

a=40;

setMoveKey( spep_5 + 0, 1, 173.3+a, -16.9 , 0 );
setMoveKey( spep_5 + 84, 1, 173.3+a, -16.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.58, 1.58 );
setScaleKey( spep_5 + 84, 1, 1.58, 1.58 );

setRotateKey( spep_5 + 0, 1, -42 );
setRotateKey( spep_5 + 84, 1, -42 );

--SE
--顔カットイン
--SE038 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_5 +82 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6= spep_5 + 84;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7= spep_6 + 94;
------------------------------------------------------
--正面発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_7 + 0, SP_12x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_7 + 70, beam, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_7 + 70, beam, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, beam, 0 );
setEffRotateKey( spep_7 + 70, beam, 0 );
setEffAlphaKey( spep_7 + 0, beam, 255 );
setEffAlphaKey( spep_7 + 68, beam, 255 );
setEffAlphaKey( spep_7 + 69, beam, 255 );
setEffAlphaKey( spep_7 + 70, beam, 0 );

--SE
--腕をひく
SE040 = playSeVer2( spep_7 + 2, 1182, "",spep_7 + 44, 8, 16, -1);
setSeVolumeByWorkId( spep_7 + 2, SE040, 75 );
setStartTimeMs( SE040,  100 );
SE041 = playSeVer2( spep_7 + 0, 1116, "",spep_7 + 40, 0, 20, -1);
setSeVolumeByWorkId( spep_7 + 0, SE041, 75 );

--腕前に出す
SE042 = playSeVer2( spep_7 + 36, 1004, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_7 + 36, 1003, "", 0, 0, 0, -1);

--気弾発射
SE044 = playSeVer2( spep_7 + 50, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 50, SE044, 86 );
SE045 = playSeVer2( spep_7 + 52, 1027, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_7 + 52, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 52, SE046, 82 );
SE047 = playSeVer2( spep_7 + 52, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 52, SE047, 71 );
setTimeStretch( SE047, 1.25, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_8= spep_7 + 70;
------------------------------------------------------
--横発射
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_8 + 0, SP_13x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 268, hit_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 268, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_f, 0 );
setEffRotateKey( spep_8 + 268, hit_f, 0 );
setEffAlphaKey( spep_8 + 0, hit_f, 255 );
setEffAlphaKey( spep_8 + 72, hit_f, 255 );
setEffAlphaKey( spep_8 + 73, hit_f, 0 );
setEffAlphaKey( spep_8 + 74, hit_f, 0 );

hit_f2 = entryEffect( spep_8 + 74, SP_15x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 74, hit_f2, 0, 0, 0 );
setEffMoveKey( spep_8 + 268, hit_f2, 0, 0, 0 );
setEffScaleKey( spep_8 + 74, hit_f2, 1.0, 1.0 );
setEffScaleKey( spep_8 + 268, hit_f2, 1.0, 1.0 );
setEffRotateKey( spep_8 + 74, hit_f2, 0 );
setEffRotateKey( spep_8 + 268, hit_f2, 0 );
setEffAlphaKey( spep_8 + 74, hit_f2, 255 );
setEffAlphaKey( spep_8 + 268, hit_f2, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_8 + 0, SP_14x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 268, hit_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 268, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_b, 0 );
setEffRotateKey( spep_8 + 268, hit_b, 0 );
setEffAlphaKey( spep_8 + 0, hit_b, 255 );
setEffAlphaKey( spep_8 + 268, hit_b, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-1 + 16, 1, 0 );

setBlendColor(spep_8-1 + 12,1,3,1.0,1.0,0.8,0.4);
setBlendColor(spep_8-1 + 14,1,3,1.0,1.0,0.8,0);

changeAnime( spep_8 + 0, 1, 106 );

setMoveKey( spep_8 + 0, 1, 322, 76 , 0 );
setMoveKey( spep_8-1 + 16, 1, 322, 76 , 0 );

setScaleKey( spep_8 + 0, 1, 0.96, 0.96 );
setScaleKey( spep_8-1 + 16, 1, 0.96, 0.96 );

setRotateKey( spep_8 + 0, 1, -38.8 );
setRotateKey( spep_8-1 + 16, 1, -38.8 );

--敵の動き
setDisp( spep_8-3 + 78, 1, 1 );
setDisp( spep_8-1 + 154, 1, 0 );

setBlendColor(spep_8-3 + 78,1,3,1.0,1.0,0.5,0.6);
setBlendColor(spep_8 + 160,1,3,1.0,1.0,0.5,0);

changeAnime( spep_8-3 + 78, 1, 106 );

setMoveKey( spep_8-3 + 78, 1, 1.9, -118.2 , 0 );
setMoveKey( spep_8-3 + 80, 1, -2, -118 , 0 );
setMoveKey( spep_8-3 + 82, 1, 5.9, -114.2 , 0 );
setMoveKey( spep_8-3 + 84, 1, 5.1, -122.2 , 0 );
setMoveKey( spep_8-3 + 86, 1, 1.3, -117.8 , 0 );
setMoveKey( spep_8-3 + 88, 1, 8, -116.7 , 0 );
setMoveKey( spep_8-3 + 90, 1, 2.5, -120 , 0 );
setMoveKey( spep_8-3 + 92, 1, 7.1, -116.2 , 0 );
setMoveKey( spep_8-3 + 94, 1, 1.7, -119.6 , 0 );
setMoveKey( spep_8-3 + 96, 1, 10.5, -115.9 , 0 );
setMoveKey( spep_8-3 + 98, 1, 3.5, -119.8 , 0 );
setMoveKey( spep_8-3 + 100, 1, 11, -117.4 , 0 );
setMoveKey( spep_8-3 + 102, 1, 6.7, -122.6 , 0 );
setMoveKey( spep_8-3 + 104, 1, 11.6, -115.6 , 0 );
setMoveKey( spep_8-3 + 106, 1, 7.9, -122.5 , 0 );
setMoveKey( spep_8-3 + 108, 1, 11.9, -114.6 , 0 );
setMoveKey( spep_8-3 + 110, 1, 9.3, -120.9 , 0 );
setMoveKey( spep_8-3 + 112, 1, 10, -113.8 , 0 );
setMoveKey( spep_8-3 + 114, 1, 15.2, -119.9 , 0 );
setMoveKey( spep_8-3 + 116, 1, 11, -114.1 , 0 );
setMoveKey( spep_8-3 + 118, 1, 15.8, -121.3 , 0 );
setMoveKey( spep_8-3 + 120, 1, 12.5, -115.4 , 0 );
setMoveKey( spep_8-3 + 122, 1, 15.3, -120.2 , 0 );
setMoveKey( spep_8-3 + 124, 1, 14.4, -115 , 0 );
setMoveKey( spep_8-3 + 126, 1, 12.3, -119.2 , 0 );
setMoveKey( spep_8-3 + 128, 1, 17.7, -115.4 , 0 );
setMoveKey( spep_8-3 + 130, 1, 15.7, -121.4 , 0 );
setMoveKey( spep_8-3 + 132, 1, 12.1, -115.7 , 0 );
setMoveKey( spep_8-3 + 134, 1, 20.5, -118.8 , 0 );
setMoveKey( spep_8-3 + 136, 1, 13.2, -115.9 , 0 );
setMoveKey( spep_8-3 + 138, 1, 20.3, -118.2 , 0 );
setMoveKey( spep_8-3 + 140, 1, 14.3, -118.9 , 0 );
setMoveKey( spep_8-3 + 142, 1, 21.7, -120 , 0 );
setMoveKey( spep_8-3 + 144, 1, 15.5, -120 , 0 );
setMoveKey( spep_8-3 + 146, 1, 22.5, -118.9 , 0 );
setMoveKey( spep_8-3 + 148, 1, 17.6, -116 , 0 );
setMoveKey( spep_8-3 + 150, 1, 25.4, -118.9 , 0 );
setMoveKey( spep_8-3 + 152, 1, 18.3, -114.7 , 0 );
setMoveKey( spep_8-1 + 154, 1, 23.6, -121.8 , 0 );

setScaleKey( spep_8-3 + 78, 1, 1.97, 1.97 );
setScaleKey( spep_8-1 + 154, 1, 1.97, 1.97 );

setRotateKey( spep_8-3 + 78, 1, -37 );
setRotateKey( spep_8-1 + 154, 1, -37 );

--SE
--横向き気弾発射
SE048 = playSeVer2( spep_8 + 0, 1312, "",spep_8 + 94, 0, 56, -1);
SE049 = playSeVer2( spep_8 + 0, 1258, "",spep_8 + 118, 0, 40, -1);
setSeVolumeByWorkId( spep_8 + 0, SE049, 79 );
SE050 = playSeVer2( spep_8 + 0, 1161, "", 0, 0, 0, -1);
setTimeStretch( SE050, 1.25, 30, 4 );
SE051 = playSeVer2( spep_8 + 40, 1343, "", 0, 0, 0, -1);

--気弾に飲み込まれる
SE052 = playSeVer2( spep_8 + 100, 1258, "",spep_8 + 220, 18, 60, -1);
setStartTimeMs( SE052,  150 );
SE053 = playSeVer2( spep_8 + 110, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 110, SE053, 80 );
setPitch( spep_8 + 110, SE053, 300 );
setTimeStretch( SE053, 1.2, 30, 4 );

-- 終わり
dealDamage(spep_8+50);
endPhase( spep_8 + 170 );
end