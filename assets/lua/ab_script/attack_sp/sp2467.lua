--1025320:超フルパワーサイヤ人4・限界突破ベジータ(ゼノ)_ スーパーファイナルシャインアタック(SSR)
--sp_effect_a1_00378

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
SP_01=	160799	;--	ベジータが登場+気弾を構える
SP_02=	160800	;--	カメラが回り込み発射する
SP_03=	160802	;--	敵にビームが当たる
SP_04=	160803	;--	敵にビームが当たる
SP_05=	160804	;--	爆発してフィニッシュ
SP_06=	160805	;--	爆発してフィニッシュ

--エフェクト(敵)
SP_01x=	160799	;--	ベジータが登場+気弾を構える	
SP_02x=	160801	;--	カメラが回り込み発射する	(敵)
SP_03x=	160802	;--	敵にビームが当たる	
SP_04x=	160803	;--	敵にビームが当たる	
SP_05x=	160804	;--	爆発してフィニッシュ	
SP_06x=	160805	;--	爆発してフィニッシュ		

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);

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
--ベジータが登場+気弾を構える
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 120, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 120, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 120, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +24;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 100,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  100,  515);

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
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 134, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 140 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--腕にイナヅマ溜める
SE002 = playSeVer2( spep_0 + 34, 1004, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 44, 1056, "", 0, 0, 0, -1);

--気弾溜め
SE005 = playSeVer2( spep_0 + 78, 1003, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 90, 1252, "",spep_0 + 134, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 90, SE006, 81 );
SE007 = playSeVer2( spep_0 + 90, 1255, "",spep_0 + 134, 0, 12, -1);

--白フェード
entryFade( spep_0 +112 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+120;
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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;
------------------------------------------------------
--カメラが回り込み発射する
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_2 + 116, beam, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 116, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 114, beam, 255 );
setEffAlphaKey( spep_2 + 115, beam, 255 );
setEffAlphaKey( spep_2 + 116, beam, 0 );

--SE
--発射前気弾溜め
SE015 = playSeVer2( spep_2 + 4, 1296, "",spep_2 + 78, 8, 24, -1);
setSeVolumeByWorkId( spep_2 + 4, SE015, 123 );
setStartTimeMs( SE013,  350 );
SE009 = playSeVer2( spep_2 + 0, 1255, "",spep_2 + 78, 0, 24, -1);
SE010 = playSeVer2( spep_2 + 0, 1147, "",spep_2 + 78, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 0, SE010, 84 );
SE011 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 64, 0, 34, -1);

--気弾発射
SE012 = playSeVer2( spep_2 + 46, 1146, "", spep_2+116+86+40, 0, 10, -1);
SE013 = playSeVer2( spep_2 + 46, 1284, "", spep_2+116+86+40, 0, 10, -1);
SE014 = playSeVer2( spep_2 + 46, 1133, "", 0, 0, 0, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 70; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    
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
--気弾発射２
SE016 = playSeVer2( spep_2 + 86, 1161, "", spep_2+116+86+40, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 86, SE016, 88 );

--次の準備
spep_3=spep_2+116;
------------------------------------------------------
--敵にビームが当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 86, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 86, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 84, hit_f, 255 );
setEffAlphaKey( spep_3 + 85, hit_f, 255 );
setEffAlphaKey( spep_3 + 86, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 86, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 86, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 84, hit_b, 255 );
setEffAlphaKey( spep_3 + 85, hit_b, 255 );
setEffAlphaKey( spep_3 + 86, hit_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 32, 1, 108 );

setMoveKey( spep_3 + 0, 1, 229.4, 383 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 218, 359.9 , 0 );
setMoveKey( spep_3-3 + 4, 1, 206.6, 336.9 , 0 );
setMoveKey( spep_3-3 + 6, 1, 195.3, 313.9 , 0 );
setMoveKey( spep_3-3 + 8, 1, 179.6, 284.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 163.9, 255.7 , 0 );
setMoveKey( spep_3-3 + 12, 1, 148.3, 226.6 , 0 );
setMoveKey( spep_3-3 + 14, 1, 132.6, 197.5 , 0 );
setMoveKey( spep_3-3 + 16, 1, 116.8, 175.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 100.9, 152.7 , 0 );
setMoveKey( spep_3-3 + 20, 1, 85.1, 128.2 , 0 );
setMoveKey( spep_3-3 + 22, 1, 69.3, 103.7 , 0 );
setMoveKey( spep_3-3 + 24, 1, 53.4, 79.3 , 0 );
setMoveKey( spep_3-3 + 26, 1, 41.1, 50.2 , 0 );
setMoveKey( spep_3-3 + 28, 1, 28.7, 21 , 0 );
setMoveKey( spep_3-3 + 31, 1, 16.3, -8.1 , 0 );
setMoveKey( spep_3-3 + 32, 1, 22.2, -15.1 , 0 );
setMoveKey( spep_3-3 + 34, 1, 47.4, -17.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, 29.8, -7.3 , 0 );
setMoveKey( spep_3-3 + 38, 1, 33.6, -3.4 , 0 );
setMoveKey( spep_3-3 + 40, 1, 25.2, -11.8 , 0 );
setMoveKey( spep_3-3 + 42, 1, 50.4, -14 , 0 );
setMoveKey( spep_3-3 + 44, 1, 32.9, -4 , 0 );
setMoveKey( spep_3-3 + 46, 1, 36.7, -0.1 , 0 );
setMoveKey( spep_3-3 + 48, 1, 28.3, -8.5 , 0 );
setMoveKey( spep_3-3 + 50, 1, 53.4, -10.7 , 0 );
setMoveKey( spep_3-3 + 52, 1, 35.9, -0.7 , 0 );
setMoveKey( spep_3-3 + 54, 1, 39.7, 3.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 31.3, -5.2 , 0 );
setMoveKey( spep_3-3 + 58, 1, 56.4, -7.4 , 0 );
setMoveKey( spep_3-3 + 60, 1, 38.9, 2.6 , 0 );
setMoveKey( spep_3-3 + 62, 1, 42.7, 6.5 , 0 );
setMoveKey( spep_3-3 + 64, 1, 34.3, -1.8 , 0 );
setMoveKey( spep_3-3 + 66, 1, 59.5, -4.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 41.9, 5.9 , 0 );
setMoveKey( spep_3-3 + 70, 1, 45.7, 9.8 , 0 );
setMoveKey( spep_3-3 + 72, 1, 37.3, 1.5 , 0 );
setMoveKey( spep_3-3 + 74, 1, 62.5, -0.8 , 0 );
setMoveKey( spep_3-3 + 76, 1, 44.9, 9.2 , 0 );
setMoveKey( spep_3-3 + 78, 1, 48.7, 13.1 , 0 );
setMoveKey( spep_3-3 + 80, 1, 40.4, 4.8 , 0 );
setMoveKey( spep_3-3 + 82, 1, 65.5, 2.5 , 0 );
setMoveKey( spep_3-3 + 84, 1, 48, 12.5 , 0 );
setMoveKey( spep_3-3 + 86, 1, 53.1, 6.5 , 0 );
setMoveKey( spep_3-3 + 88, 1, 60.2, 16.2 , 0 );

setScaleKey( spep_3 + 0, 1, 0.4, 0.4 );
--setScaleKey( spep_3-3 + 2, 1, 0.42, 0.42 );
setScaleKey( spep_3-3 + 4, 1, 0.44, 0.44 );
setScaleKey( spep_3-3 + 6, 1, 0.46, 0.46 );
setScaleKey( spep_3-3 + 8, 1, 0.47, 0.47 );
setScaleKey( spep_3-3 + 10, 1, 0.49, 0.49 );
setScaleKey( spep_3-3 + 12, 1, 0.51, 0.51 );
setScaleKey( spep_3-3 + 14, 1, 0.53, 0.53 );
setScaleKey( spep_3-3 + 16, 1, 0.55, 0.55 );
setScaleKey( spep_3-3 + 18, 1, 0.57, 0.57 );
setScaleKey( spep_3-3 + 20, 1, 0.59, 0.59 );
setScaleKey( spep_3-3 + 22, 1, 0.61, 0.61 );
setScaleKey( spep_3-3 + 24, 1, 0.62, 0.62 );
setScaleKey( spep_3-3 + 26, 1, 0.64, 0.64 );
setScaleKey( spep_3-3 + 28, 1, 0.66, 0.66 );
setScaleKey( spep_3-3 + 31, 1, 0.68, 0.68 );
setScaleKey( spep_3-3 + 32, 1, 0.75, 0.75 );
setScaleKey( spep_3-3 + 88, 1, 0.75, 0.75 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 31, 1, 0 );
setRotateKey( spep_3-3 + 32, 1, -8 );
setRotateKey( spep_3-3 + 88, 1, -8 );

--SE
--気弾向かっていく
SE017 = playSeVer2( spep_3 + 0, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE017, 135 );

--気弾ヒット
SE018 = playSeVer2( spep_3 + 28, 1011, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 38, 1024, "", 0, 0, 0, -1);

--次の準備
spep_4=spep_3+86;
------------------------------------------------------
--爆発してフィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 160, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 160, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 160, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 160, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 160, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 160, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 160, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 160, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 40, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4 + 0, 1, 32.2, -15.9 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 37.1, -11 , 0 );
setMoveKey( spep_4-3 + 4, 1, 31.6, -12 , 0 );
setMoveKey( spep_4-3 + 6, 1, 30.5, -17.5 , 0 );
setMoveKey( spep_4-3 + 8, 1, 35.6, -14.6 , 0 );
setMoveKey( spep_4-3 + 10, 1, 31.3, -18.6 , 0 );
setMoveKey( spep_4-3 + 12, 1, 36.5, -20 , 0 );
setMoveKey( spep_4-3 + 14, 1, 34.4, -16.6 , 0 );
setMoveKey( spep_4-3 + 16, 1, 33.8, -20.2 , 0 );
setMoveKey( spep_4-3 + 18, 1, 37.5, -14.8 , 0 );
setMoveKey( spep_4-3 + 20, 1, 42.1, -18.4 , 0 );
setMoveKey( spep_4-3 + 22, 1, 45.8, -12.2 , 0 );
setMoveKey( spep_4-3 + 24, 1, 39.3, -7 , 0 );
setMoveKey( spep_4-3 + 26, 1, 38.9, -12.4 , 0 );
setMoveKey( spep_4-3 + 28, 1, 42.9, -13.2 , 0 );
setMoveKey( spep_4-3 + 30, 1, 38, -9.6 , 0 );
setMoveKey( spep_4-3 + 32, 1, 42.9, -4.7 , 0 );
setMoveKey( spep_4-3 + 34, 1, 38.8, -8.7 , 0 );
setMoveKey( spep_4-3 + 36, 1, 33.6, 0.7 , 0 );
setMoveKey( spep_4-3 + 38, 1, 46.3, -12.3 , 0 );
setMoveKey( spep_4-1 + 40, 1, 39.9, -23.2 , 0 );

setScaleKey( spep_4-3 + 0, 1, 0.42, 0.42 );
setScaleKey( spep_4-1 + 40, 1, 0.42, 0.42 );

setRotateKey( spep_4-3 + 0, 1, -8 );
setRotateKey( spep_4-1 + 40, 1, -8 );

--SE
--爆発
SE020 = playSeVer2( spep_4 + 30, 1067, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 30, 1159, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_4 + 30, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 30, SE022, 60 );

--終わり
dealDamage( spep_4 + 46 );
endPhase( spep_4 + 150 ); -- 終了フレーム
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--ベジータが登場+気弾を構える
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 120, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 120, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 120, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +24;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 100,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  100,  515);

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
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 134, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 140 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--腕にイナヅマ溜める
SE002 = playSeVer2( spep_0 + 34, 1004, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 44, 1056, "", 0, 0, 0, -1);

--気弾溜め
SE005 = playSeVer2( spep_0 + 78, 1003, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 90, 1252, "",spep_0 + 134, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 90, SE006, 81 );
SE007 = playSeVer2( spep_0 + 90, 1255, "",spep_0 + 134, 0, 12, -1);

--白フェード
entryFade( spep_0 +112 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+120;
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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;
------------------------------------------------------
--カメラが回り込み発射する
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_2 + 116, beam, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_2 + 116, beam, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 116, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 114, beam, 255 );
setEffAlphaKey( spep_2 + 115, beam, 255 );
setEffAlphaKey( spep_2 + 116, beam, 0 );

--SE
--発射前気弾溜め
SE015 = playSeVer2( spep_2 + 4, 1296, "",spep_2 + 78, 8, 24, -1);
setSeVolumeByWorkId( spep_2 + 4, SE015, 123 );
setStartTimeMs( SE013,  350 );
SE009 = playSeVer2( spep_2 + 0, 1255, "",spep_2 + 78, 0, 24, -1);
SE010 = playSeVer2( spep_2 + 0, 1147, "",spep_2 + 78, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 0, SE010, 84 );
SE011 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 64, 0, 34, -1);

--気弾発射
SE012 = playSeVer2( spep_2 + 46, 1146, "", spep_2+116+86+40, 0, 10, -1);
SE013 = playSeVer2( spep_2 + 46, 1284, "", spep_2+116+86+40, 0, 10, -1);
SE014 = playSeVer2( spep_2 + 46, 1133, "", 0, 0, 0, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 70; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    
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
--気弾発射２
SE016 = playSeVer2( spep_2 + 86, 1161, "", spep_2+116+86+40, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 86, SE016, 88 );

--次の準備
spep_3=spep_2+116;
------------------------------------------------------
--敵にビームが当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 86, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 86, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 84, hit_f, 255 );
setEffAlphaKey( spep_3 + 85, hit_f, 255 );
setEffAlphaKey( spep_3 + 86, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 86, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 86, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 84, hit_b, 255 );
setEffAlphaKey( spep_3 + 85, hit_b, 255 );
setEffAlphaKey( spep_3 + 86, hit_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 32, 1, 108 );

setMoveKey( spep_3 + 0, 1, 229.4, 383 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 218, 359.9 , 0 );
setMoveKey( spep_3-3 + 4, 1, 206.6, 336.9 , 0 );
setMoveKey( spep_3-3 + 6, 1, 195.3, 313.9 , 0 );
setMoveKey( spep_3-3 + 8, 1, 179.6, 284.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 163.9, 255.7 , 0 );
setMoveKey( spep_3-3 + 12, 1, 148.3, 226.6 , 0 );
setMoveKey( spep_3-3 + 14, 1, 132.6, 197.5 , 0 );
setMoveKey( spep_3-3 + 16, 1, 116.8, 175.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 100.9, 152.7 , 0 );
setMoveKey( spep_3-3 + 20, 1, 85.1, 128.2 , 0 );
setMoveKey( spep_3-3 + 22, 1, 69.3, 103.7 , 0 );
setMoveKey( spep_3-3 + 24, 1, 53.4, 79.3 , 0 );
setMoveKey( spep_3-3 + 26, 1, 41.1, 50.2 , 0 );
setMoveKey( spep_3-3 + 28, 1, 28.7, 21 , 0 );
setMoveKey( spep_3-3 + 31, 1, 16.3, -8.1 , 0 );
setMoveKey( spep_3-3 + 32, 1, 22.2, -15.1 , 0 );
setMoveKey( spep_3-3 + 34, 1, 47.4, -17.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, 29.8, -7.3 , 0 );
setMoveKey( spep_3-3 + 38, 1, 33.6, -3.4 , 0 );
setMoveKey( spep_3-3 + 40, 1, 25.2, -11.8 , 0 );
setMoveKey( spep_3-3 + 42, 1, 50.4, -14 , 0 );
setMoveKey( spep_3-3 + 44, 1, 32.9, -4 , 0 );
setMoveKey( spep_3-3 + 46, 1, 36.7, -0.1 , 0 );
setMoveKey( spep_3-3 + 48, 1, 28.3, -8.5 , 0 );
setMoveKey( spep_3-3 + 50, 1, 53.4, -10.7 , 0 );
setMoveKey( spep_3-3 + 52, 1, 35.9, -0.7 , 0 );
setMoveKey( spep_3-3 + 54, 1, 39.7, 3.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 31.3, -5.2 , 0 );
setMoveKey( spep_3-3 + 58, 1, 56.4, -7.4 , 0 );
setMoveKey( spep_3-3 + 60, 1, 38.9, 2.6 , 0 );
setMoveKey( spep_3-3 + 62, 1, 42.7, 6.5 , 0 );
setMoveKey( spep_3-3 + 64, 1, 34.3, -1.8 , 0 );
setMoveKey( spep_3-3 + 66, 1, 59.5, -4.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 41.9, 5.9 , 0 );
setMoveKey( spep_3-3 + 70, 1, 45.7, 9.8 , 0 );
setMoveKey( spep_3-3 + 72, 1, 37.3, 1.5 , 0 );
setMoveKey( spep_3-3 + 74, 1, 62.5, -0.8 , 0 );
setMoveKey( spep_3-3 + 76, 1, 44.9, 9.2 , 0 );
setMoveKey( spep_3-3 + 78, 1, 48.7, 13.1 , 0 );
setMoveKey( spep_3-3 + 80, 1, 40.4, 4.8 , 0 );
setMoveKey( spep_3-3 + 82, 1, 65.5, 2.5 , 0 );
setMoveKey( spep_3-3 + 84, 1, 48, 12.5 , 0 );
setMoveKey( spep_3-3 + 86, 1, 53.1, 6.5 , 0 );
setMoveKey( spep_3-3 + 88, 1, 60.2, 16.2 , 0 );

setScaleKey( spep_3 + 0, 1, 0.4, 0.4 );
--setScaleKey( spep_3-3 + 2, 1, 0.42, 0.42 );
setScaleKey( spep_3-3 + 4, 1, 0.44, 0.44 );
setScaleKey( spep_3-3 + 6, 1, 0.46, 0.46 );
setScaleKey( spep_3-3 + 8, 1, 0.47, 0.47 );
setScaleKey( spep_3-3 + 10, 1, 0.49, 0.49 );
setScaleKey( spep_3-3 + 12, 1, 0.51, 0.51 );
setScaleKey( spep_3-3 + 14, 1, 0.53, 0.53 );
setScaleKey( spep_3-3 + 16, 1, 0.55, 0.55 );
setScaleKey( spep_3-3 + 18, 1, 0.57, 0.57 );
setScaleKey( spep_3-3 + 20, 1, 0.59, 0.59 );
setScaleKey( spep_3-3 + 22, 1, 0.61, 0.61 );
setScaleKey( spep_3-3 + 24, 1, 0.62, 0.62 );
setScaleKey( spep_3-3 + 26, 1, 0.64, 0.64 );
setScaleKey( spep_3-3 + 28, 1, 0.66, 0.66 );
setScaleKey( spep_3-3 + 31, 1, 0.68, 0.68 );
setScaleKey( spep_3-3 + 32, 1, 0.75, 0.75 );
setScaleKey( spep_3-3 + 88, 1, 0.75, 0.75 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 31, 1, 0 );
setRotateKey( spep_3-3 + 32, 1, -8 );
setRotateKey( spep_3-3 + 88, 1, -8 );

--SE
--気弾向かっていく
SE017 = playSeVer2( spep_3 + 0, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE017, 135 );

--気弾ヒット
SE018 = playSeVer2( spep_3 + 28, 1011, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 38, 1024, "", 0, 0, 0, -1);

--次の準備
spep_4=spep_3+86;
------------------------------------------------------
--爆発してフィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 160, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 160, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 160, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 160, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 160, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 160, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 160, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 160, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 40, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4 + 0, 1, 32.2, -15.9 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 37.1, -11 , 0 );
setMoveKey( spep_4-3 + 4, 1, 31.6, -12 , 0 );
setMoveKey( spep_4-3 + 6, 1, 30.5, -17.5 , 0 );
setMoveKey( spep_4-3 + 8, 1, 35.6, -14.6 , 0 );
setMoveKey( spep_4-3 + 10, 1, 31.3, -18.6 , 0 );
setMoveKey( spep_4-3 + 12, 1, 36.5, -20 , 0 );
setMoveKey( spep_4-3 + 14, 1, 34.4, -16.6 , 0 );
setMoveKey( spep_4-3 + 16, 1, 33.8, -20.2 , 0 );
setMoveKey( spep_4-3 + 18, 1, 37.5, -14.8 , 0 );
setMoveKey( spep_4-3 + 20, 1, 42.1, -18.4 , 0 );
setMoveKey( spep_4-3 + 22, 1, 45.8, -12.2 , 0 );
setMoveKey( spep_4-3 + 24, 1, 39.3, -7 , 0 );
setMoveKey( spep_4-3 + 26, 1, 38.9, -12.4 , 0 );
setMoveKey( spep_4-3 + 28, 1, 42.9, -13.2 , 0 );
setMoveKey( spep_4-3 + 30, 1, 38, -9.6 , 0 );
setMoveKey( spep_4-3 + 32, 1, 42.9, -4.7 , 0 );
setMoveKey( spep_4-3 + 34, 1, 38.8, -8.7 , 0 );
setMoveKey( spep_4-3 + 36, 1, 33.6, 0.7 , 0 );
setMoveKey( spep_4-3 + 38, 1, 46.3, -12.3 , 0 );
setMoveKey( spep_4-1 + 40, 1, 39.9, -23.2 , 0 );

setScaleKey( spep_4-3 + 0, 1, 0.42, 0.42 );
setScaleKey( spep_4-1 + 40, 1, 0.42, 0.42 );

setRotateKey( spep_4-3 + 0, 1, -8 );
setRotateKey( spep_4-1 + 40, 1, -8 );

--SE
--爆発
SE020 = playSeVer2( spep_4 + 30, 1067, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 30, 1159, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_4 + 30, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 30, SE022, 60 );

--終わり
dealDamage( spep_4 + 46 );
endPhase( spep_4 + 150 ); -- 終了フレーム
end