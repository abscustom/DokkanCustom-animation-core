--1024510:ゴールデンフリーザ_連続デスビーム
--sp_effect_a1_00356
--sp2375

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
SP_01=	159943	;--	空中ビーム発射：敵より前
SP_02=	159944	;--	空中ビーム発射：敵より後
SP_03=	159945	;--	煙→正面向きパンチ：敵より前
SP_04=	159946	;--	煙→正面向きパンチ：敵より後
SP_05=	159947	;--	煙かき分けパンチ：敵より前
SP_06=	159948	;--	煙かき分けパンチ：敵より後
SP_07=	159949	;--	地面激突：敵より前
SP_08=	159950	;--	地面激突：敵より後ろ
SP_09=	159951	;--	セリフ、指差し
SP_10=	159952	;--	デスビーム連射→爆発
SP_11=	159953	;--	ラストシーン

--エフェクト(てき)
SP_01x=	159954	;--	空中ビーム発射：敵より前	(敵)
SP_02x=	159944	;--	空中ビーム発射：敵より後	
SP_03x=	159945	;--	煙→正面向きパンチ：敵より前	
SP_04x=	159946	;--	煙→正面向きパンチ：敵より後	
SP_05x=	159955	;--	煙かき分けパンチ：敵より前	(敵)
SP_06x=	159948	;--	煙かき分けパンチ：敵より後	
SP_07x=	159956	;--	地面激突：敵より前	(敵)
SP_08x=	159950	;--	地面激突：敵より後ろ	
SP_09x=	159951	;--	セリフ、指差し	
SP_10x=	159957	;--	デスビーム連射→爆発	(敵)
SP_11x=	159958	;--	ラストシーン	(敵)
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


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--空中ビーム発射
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 140, beam_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 140, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beam_f, 0 );
setEffRotateKey( spep_0 + 140, beam_f, 0 );
setEffAlphaKey( spep_0 + 0, beam_f, 255 );
setEffAlphaKey( spep_0 + 138, beam_f, 255 );
setEffAlphaKey( spep_0 + 139, beam_f, 255 );
setEffAlphaKey( spep_0 + 140, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 140, beam_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 140, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beam_b, 0 );
setEffRotateKey( spep_0 + 140, beam_b, 0 );
setEffAlphaKey( spep_0 + 0, beam_b, 255 );
setEffAlphaKey( spep_0 + 138, beam_b, 255 );
setEffAlphaKey( spep_0 + 139, beam_b, 255 );
setEffAlphaKey( spep_0 + 140, beam_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 104 );

setMoveKey( spep_0 + 0, 1, 258.2, -228.1 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 255.8, -225.5 , 0 );
setMoveKey( spep_0-3 + 4, 1, 253.2, -222.9 , 0 );
setMoveKey( spep_0-3 + 6, 1, 250.7, -220 , 0 );
setMoveKey( spep_0-3 + 8, 1, 248, -216.9 , 0 );
setMoveKey( spep_0-3 + 10, 1, 245.3, -213.7 , 0 );
setMoveKey( spep_0-3 + 12, 1, 242.5, -210.3 , 0 );
setMoveKey( spep_0-3 + 14, 1, 239.6, -206.8 , 0 );
setMoveKey( spep_0-3 + 16, 1, 236.6, -203.2 , 0 );
setMoveKey( spep_0-3 + 18, 1, 233.7, -199.3 , 0 );
setMoveKey( spep_0-3 + 20, 1, 230.6, -195.4 , 0 );
setMoveKey( spep_0-3 + 22, 1, 227.6, -191.3 , 0 );
setMoveKey( spep_0-3 + 24, 1, 226.8, -189.5 , 0 );
setMoveKey( spep_0-3 + 26, 1, 225.9, -187.4 , 0 );
setMoveKey( spep_0-3 + 28, 1, 224.9, -185.3 , 0 );
setMoveKey( spep_0-3 + 30, 1, 224.7, -184.9 , 0 );
setMoveKey( spep_0-3 + 32, 1, 224.4, -184.1 , 0 );
setMoveKey( spep_0-3 + 34, 1, 223.7, -182.6 , 0 );
setMoveKey( spep_0-3 + 36, 1, 222.9, -180.6 , 0 );
setMoveKey( spep_0-3 + 38, 1, 221.8, -177.9 , 0 );
setMoveKey( spep_0-3 + 40, 1, 220.4, -174.7 , 0 );
setMoveKey( spep_0-3 + 42, 1, 218.8, -170.9 , 0 );
setMoveKey( spep_0-3 + 44, 1, 216.9, -166.5 , 0 );
setMoveKey( spep_0-3 + 46, 1, 204, -152.1 , 0 );
setMoveKey( spep_0-3 + 48, 1, 222.1, -154.8 , 0 );
setMoveKey( spep_0-3 + 50, 1, 134.6, -137.6 , 0 );
setMoveKey( spep_0-3 + 52, 1, 191.8, -161.9 , 0 );
setMoveKey( spep_0-3 + 54, 1, 186.7, -95.8 , 0 );
setMoveKey( spep_0-3 + 56, 1, 167.2, -113.5 , 0 );
setMoveKey( spep_0-3 + 58, 1, 154.8, -96.3 , 0 );
setMoveKey( spep_0-3 + 60, 1, 153.7, -102.8 , 0 );
setMoveKey( spep_0-3 + 62, 1, 141.2, -85.4 , 0 );
setMoveKey( spep_0-3 + 64, 1, 134.3, -79.8 , 0 );
setMoveKey( spep_0-3 + 66, 1, 127.2, -74.2 , 0 );
setMoveKey( spep_0-3 + 68, 1, 120, -68.4 , 0 );
setMoveKey( spep_0-3 + 70, 1, 112.7, -62.6 , 0 );
setMoveKey( spep_0-3 + 72, 1, 105.3, -56.6 , 0 );


setScaleKey( spep_0 + 0, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 1, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 2, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 3, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 4, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 5, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 6, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 16, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 18, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 38, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 64, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 66, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 72, 1, 0.29, 0.29 );


setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-3 + 72, 1, 0 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "",spep_0 + 68, 0, 36, -1);
SE002 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 0, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );

--気弾溜め
SE004 = playSeVer2( spep_0 + 26, 1328, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 124 );
setStartTimeMs( SE004,  283 );

--オーラ
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 24, SE005, -400 );
setTimeStretch( SE005, 0.73, 30, 4 );

--気弾溜め
SE006 = playSeVer2( spep_0 + 22, 1282, "",spep_0 + 52, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 22, SE006, 66 );

--オーラ
SE007 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 48, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );

--気弾発射
SE008 = playSeVer2( spep_0 + 44, 1133, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 44, SE008, 157 );
setPitch( spep_0 + 44, SE008, -50 );
setTimeStretch( SE008, 0.97, 30, 4 );
SE009 = playSeVer2( spep_0 + 44, 1130, "", spep_0 + 98, 0, 6,0.5);
setSeVolumeByWorkId( spep_0 + 44, SE009, 125 );
setPitch( spep_0 + 44, SE009, -650 );
setTimeStretch( SE009, 0.57, 30, 4 );
SE010 = playSeVer2( spep_0 + 44, 1145, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 44, SE010, 72 );
SE011 = playSeVer2( spep_0 + 44, 1326, "",spep_0 + 110, 0, 12, -1);
SE012 = playSeVer2( spep_0 + 46, 1320, "",spep_0 + 110, 8, 12, -1);
setSeVolumeByWorkId( spep_0 + 46, SE012, 123 );
setStartTimeMs( SE012,  33 );
setPitch( spep_0 + 46, SE012, 700 );
setTimeStretch( SE012, 1.47, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 70; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
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

    --敵の固定
    setMoveKey( SP_dodge + 8, 1, 105.3, -56.6 , 0 );
    setMoveKey( SP_dodge + 9, 1, 105.3, -56.6 , 0 );

    setScaleKey( SP_dodge + 8, 1, 0.29, 0.29 );
    setScaleKey( SP_dodge + 9, 1, 0.29, 0.29 );

    setRotateKey( SP_dodge + 8, 1, 0 );
    setRotateKey( SP_dodge + 9, 1, 0 );
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_0-1 + 98, 1, 0 );

setMoveKey( spep_0-3 + 74, 1, 97.7, -50.6 , 0 );
setMoveKey( spep_0-3 + 76, 1, 90, -44.4 , 0 );
setMoveKey( spep_0-3 + 78, 1, 82.2, -38.1 , 0 );
setMoveKey( spep_0-3 + 80, 1, 74.3, -31.8 , 0 );
setMoveKey( spep_0-3 + 82, 1, 66.2, -25.3 , 0 );
setMoveKey( spep_0-3 + 84, 1, 58, -18.7 , 0 );
setMoveKey( spep_0-3 + 86, 1, 49.6, -12 , 0 );
setMoveKey( spep_0-3 + 88, 1, 41.1, -5.1 , 0 );
setMoveKey( spep_0-3 + 90, 1, 38.1, -10 , 0 );
setMoveKey( spep_0-3 + 92, 1, 30.8, 3.3 , 0 );
setMoveKey( spep_0-3 + 94, 1, 34.8, -7.2 , 0 );
setMoveKey( spep_0-3 + 96, 1, 27.6, 6.3 , 0 );
setMoveKey( spep_0-1 + 98, 1, 31.5, -4.1 , 0 );

setScaleKey( spep_0-3 + 74, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 80, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 82, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 88, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 90, 1, 0.32, 0.32 );
setScaleKey( spep_0-3 + 96, 1, 0.32, 0.32 );
setScaleKey( spep_0-1 + 98, 1, 0.33, 0.33 );

setRotateKey( spep_0-1 + 98, 1, 0 );


--SE
--連続爆発
SE013 = playSeVer2( spep_0 + 90, 1023, "",spep_0 + 112, 0, 6, 0.5);
SE014 = playSeVer2( spep_0 + 98, 1023, "",spep_0 + 120, 0, 6, 0.5);
setPitch( spep_0 + 98, SE014, -200 );
setTimeStretch( SE014, 0.87, 30, 4 );
SE015 = playSeVer2( spep_0 + 104, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE015, 81 );
SE016 = playSeVer2( spep_0 + 110, 1023, "", 0, 0, 0, -1);
setPitch( spep_0 + 110, SE016, 100 );
setTimeStretch( SE016, 1.07, 30, 4 );

--煙
SE017 = playSeVer2( spep_0 + 130, 1188, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE017, 68 );
setStartTimeMs( SE017,  133 );

-- ** 次の準備 ** --
spep_1= spep_0 + 140;
------------------------------------------------------
--煙→正面向きパンチ
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 126, hit_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 126, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_f, 0 );
setEffRotateKey( spep_1 + 126, hit_f, 0 );
setEffAlphaKey( spep_1 + 0, hit_f, 255 );
setEffAlphaKey( spep_1 + 124, hit_f, 255 );
setEffAlphaKey( spep_1 + 125, hit_f, 255 );
setEffAlphaKey( spep_1 + 126, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 126, hit_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 126, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_b, 0 );
setEffRotateKey( spep_1 + 126, hit_b, 0 );
setEffAlphaKey( spep_1 + 0, hit_b, 255 );
setEffAlphaKey( spep_1 + 124, hit_b, 255 );
setEffAlphaKey( spep_1 + 125, hit_b, 255 );
setEffAlphaKey( spep_1 + 126, hit_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 24, 1, 0 );

changeAnime( spep_1 + 0, 1, 106 );

setMoveKey( spep_1 + 0, 1, 169.2, -236.7 , 0 );
setMoveKey( spep_1 + 2, 1, 182.8, -246.2 , 0 );
setMoveKey( spep_1 + 4, 1, 196.6, -255.7 , 0 );
setMoveKey( spep_1 + 6, 1, 210.6, -265.3 , 0 );
setMoveKey( spep_1 + 8, 1, 225, -275.1 , 0 );
setMoveKey( spep_1 + 10, 1, 239.6, -285 , 0 );
setMoveKey( spep_1 + 12, 1, 254.5, -295 , 0 );
setMoveKey( spep_1 + 14, 1, 269.7, -305.1 , 0 );
setMoveKey( spep_1 + 16, 1, 285.1, -315.4 , 0 );
setMoveKey( spep_1 + 18, 1, 300.8, -325.7 , 0 );
setMoveKey( spep_1 + 20, 1, 316.8, -336.2 , 0 );
setMoveKey( spep_1 + 22, 1, 333.1, -346.8 , 0 );
setMoveKey( spep_1 + 24, 1, 349.7, -357.6 , 0 );

setScaleKey( spep_1 + 0, 1, 4.24,4.24);
setScaleKey( spep_1 + 2, 1, 4.8,4.8);
setScaleKey( spep_1 + 4, 1, 5.36,5.36);
setScaleKey( spep_1 + 6, 1, 5.94,5.94);
setScaleKey( spep_1 + 8, 1, 6.54,6.54);
setScaleKey( spep_1 + 10, 1, 7.14,7.14);
setScaleKey( spep_1 + 12, 1, 7.76,7.76);
setScaleKey( spep_1 + 14, 1, 8.38,8.38);
setScaleKey( spep_1 + 16, 1, 9.02,9.02);
setScaleKey( spep_1 + 18, 1, 9.68,9.68);
setScaleKey( spep_1 + 20, 1, 10.34,10.34);
setScaleKey( spep_1 + 22, 1, 11.02,11.02);
setScaleKey( spep_1 + 24, 1, 11.72,11.72);

setRotateKey( spep_1 + 0, 1, -50.1 );
setRotateKey( spep_1 + 2, 1, -49.5 );
setRotateKey( spep_1 + 4, 1, -48.8 );
setRotateKey( spep_1 + 6, 1, -48.1 );
setRotateKey( spep_1 + 8, 1, -47.4 );
setRotateKey( spep_1 + 10, 1, -46.8 );
setRotateKey( spep_1 + 12, 1, -46.1 );
setRotateKey( spep_1 + 14, 1, -45.4 );
setRotateKey( spep_1 + 16, 1, -44.7 );
setRotateKey( spep_1 + 18, 1, -44 );
setRotateKey( spep_1 + 20, 1, -43.4 );
setRotateKey( spep_1 + 22, 1, -42.7 );
setRotateKey( spep_1 + 24, 1, -42 );

--SE
--振りかぶって向かってくる
SE018 = playSeVer2( spep_1 + 62, 1116, "",spep_1 + 100, 0, 14, -1);
SE019 = playSeVer2( spep_1 + 70, 9, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 130, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_2= spep_1 + 126;
------------------------------------------------------
--煙かき分けパンチ
------------------------------------------------------
-- ** エフェクト等 ** --
panti_f = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panti_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, panti_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panti_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, panti_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panti_f, 0 );
setEffRotateKey( spep_2 + 56, panti_f, 0 );
setEffAlphaKey( spep_2 + 0, panti_f, 255 );
setEffAlphaKey( spep_2 + 54, panti_f, 255 );
setEffAlphaKey( spep_2 + 55, panti_f, 255 );
setEffAlphaKey( spep_2 + 56, panti_f, 0 );

-- ** エフェクト等 ** --
panti_b = entryEffect( spep_2 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panti_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, panti_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panti_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, panti_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panti_b, 0 );
setEffRotateKey( spep_2 + 56, panti_b, 0 );
setEffAlphaKey( spep_2 + 0, panti_b, 255 );
setEffAlphaKey( spep_2 + 54, panti_b, 255 );
setEffAlphaKey( spep_2 + 55, panti_b, 255 );
setEffAlphaKey( spep_2 + 56, panti_b, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-1 + 38, 1, 0 );

changeAnime( spep_2 + 0, 1, 108 );
changeAnime( spep_2-3 + 30, 1, 106 );

setMoveKey( spep_2 + 0, 1, -45.8, 104.7 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -32.6, 115.4 , 0 );
setMoveKey( spep_2-3 + 4, 1, 40.3, 60.1 , 0 );
setMoveKey( spep_2-3 + 6, 1, 32.8, 58.9 , 0 );
setMoveKey( spep_2-3 + 8, 1, 85, 69.6 , 0 );
setMoveKey( spep_2-3 + 10, 1, 117.7, 60.8 , 0 );
setMoveKey( spep_2-3 + 12, 1, 118.4, 60.7 , 0 );
setMoveKey( spep_2-3 + 14, 1, 119, 60.5 , 0 );
setMoveKey( spep_2-3 + 16, 1, 119.7, 60.3 , 0 );
setMoveKey( spep_2-3 + 18, 1, 120.4, 60.1 , 0 );
setMoveKey( spep_2-3 + 20, 1, 121, 60 , 0 );
setMoveKey( spep_2-3 + 22, 1, 121.7, 59.8 , 0 );
setMoveKey( spep_2-3 + 24, 1, 122.4, 59.6 , 0 );
setMoveKey( spep_2-3 + 26, 1, 123, 59.4 , 0 );
setMoveKey( spep_2-3 + 29, 1, 123.7, 59.2 , 0 );
setMoveKey( spep_2-3 + 30, 1, 168.9, 61.9 , 0 );
setMoveKey( spep_2-3 + 32, 1, 281.5, -26.8 , 0 );
setMoveKey( spep_2-3 + 34, 1, 379.9, -34.3 , 0 );
setMoveKey( spep_2-3 + 36, 1, 538, -76.6 , 0 );
setMoveKey( spep_2-1 + 38, 1, 691.6, -149.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1.35, 1.35 );
setScaleKey( spep_2-1 + 38, 1, 1.35, 1.35 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-1 + 0, 1, 0 );

--SE
--パンチ
SE020 = playSeVer2( spep_2 + 6, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE020, 76 );
SE021 = playSeVer2( spep_2 + 6, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE021, 87 );
SE022 = playSeVer2( spep_2 + 6, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE022, 83 );

--敵吹っ飛ぶ
SE023 = playSeVer2( spep_2 + 30, 1027, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_3= spep_2 + 56;
------------------------------------------------------
--地面激突
------------------------------------------------------
-- ** エフェクト等 ** --
friction_f = entryEffect( spep_3 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, friction_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, friction_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, friction_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, friction_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, friction_f, 0 );
setEffRotateKey( spep_3 + 106, friction_f, 0 );
setEffAlphaKey( spep_3 + 0, friction_f, 255 );
setEffAlphaKey( spep_3 + 104, friction_f, 255 );
setEffAlphaKey( spep_3 + 105, friction_f, 255 );
setEffAlphaKey( spep_3 + 106, friction_f, 0 );

-- ** エフェクト等 ** --
friction_b = entryEffect( spep_3 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, friction_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, friction_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, friction_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, friction_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, friction_b, 0 );
setEffRotateKey( spep_3 + 106, friction_b, 0 );
setEffAlphaKey( spep_3 + 0, friction_b, 255 );
setEffAlphaKey( spep_3 + 104, friction_b, 255 );
setEffAlphaKey( spep_3 + 105, friction_b, 255 );
setEffAlphaKey( spep_3 + 106, friction_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-1 + 18, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3 + 0, 1, -497.5, -341.1 , 0 );
setMoveKey( spep_3 + 2, 1, -441.4, -324.1 , 0 );
setMoveKey( spep_3 + 4, 1, -385.4, -307.1 , 0 );
setMoveKey( spep_3 + 6, 1, -329.3, -290.2 , 0 );
setMoveKey( spep_3 + 8, 1, -273.3, -273.2 , 0 );
setMoveKey( spep_3 + 10, 1, -217.2, -256.2 , 0 );
setMoveKey( spep_3 + 12, 1, -161.2, -239.3 , 0 );
setMoveKey( spep_3 + 14, 1, -105.1, -222.3 , 0 );
setMoveKey( spep_3 + 16, 1, -49.1, -205.3 , 0 );
setMoveKey( spep_3-1 + 18, 1, 7, -188.4 , 0 );

setScaleKey( spep_3 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_3-1 + 18, 1, 0.2, 0.2 );

setRotateKey( spep_3 + 0, 1, -21.3 );
setRotateKey( spep_3-1 + 18, 1, -21.3 );

--SE
--敵飛んでいく
SE024 = playSeVer2( spep_3 + 0, 1121, "",spep_3 + 52, 0, 22, -1);

--岩場激突
SE025 = playSeVer2( spep_3 + 18, 1159, "",spep_3 + 166, 0, 52, -1);
SE026 = playSeVer2( spep_3 + 34, 1024, "",spep_3 + 166, 0, 52, -1);
SE027 = playSeVer2( spep_3 + 50, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 50, SE027, 83 );
SE028 = playSeVer2( spep_3 + 68, 1160, "",spep_3 + 166, 0, 52, -1);
setSeVolumeByWorkId( spep_3 + 68, SE028, 78 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_4= spep_3 + 104;
------------------------------------------------------
--セリフ、指差し
------------------------------------------------------
-- ** エフェクト等 ** --
seriph = entryEffect( spep_4 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, seriph, 0, 0, 0 );
setEffMoveKey( spep_4 + 100, seriph, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, seriph, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, seriph, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, seriph, 0 );
setEffRotateKey( spep_4 + 100, seriph, 0 );
setEffAlphaKey( spep_4 + 0, seriph, 255 );
setEffAlphaKey( spep_4 + 100, seriph, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_4 + 0,  906, 98, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen1, 98, 20 );
setEffMoveKey( spep_4 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_4 + 98, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_4 + 0, shuchusen1, 0 );
setEffRotateKey( spep_4 + 98, shuchusen1, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_4 + 98, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_4 +8;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 130, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 130,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  130,  515);

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
--腕構える
SE029 = playSeVer2( spep_4 + 6, 1003, "", 0, 0, 0, -1);

--顔カットイン
SE030 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_4 +92 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end


-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_5 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6= spep_5 + 94;
------------------------------------------------------
--デスビーム連射→爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_6 + 176, explosion, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_6 + 176, explosion, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, explosion, 0 );
setEffRotateKey( spep_6 + 176, explosion, 0 );
setEffAlphaKey( spep_6 + 0, explosion, 255 );
setEffAlphaKey( spep_6 + 174, explosion, 255 );
setEffAlphaKey( spep_6 + 175, explosion, 255 );
setEffAlphaKey( spep_6 + 176, explosion, 0 );

--SE
--連続気弾
SE032 = playSeVer2( spep_6 + 10, 1249, "",spep_6 + 116, 0, 18, -1);
setSeVolumeByWorkId( spep_6 + 10, SE032, 77 );
SE033 = playSeVer2( spep_6 + 12, 1016, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_6 + 12, 1358, "",spep_6 + 38, 0, 14, -1);
SE035 = playSeVer2( spep_6 + 24, 1016, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_6 + 24, 1358, "",spep_6 + 50, 0, 14, -1);
SE037 = playSeVer2( spep_6 + 32, 1016, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_6 + 32, 1358, "",spep_6 + 58, 0, 14, -1);
SE039 = playSeVer2( spep_6 + 42, 1016, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_6 + 42, 1358, "",spep_6 + 68, 0, 14, -1);
SE041 = playSeVer2( spep_6 + 52, 1016, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_6 + 52, 1358, "",spep_6 + 78, 0, 14, -1);
SE043 = playSeVer2( spep_6 + 52, 1023, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_6 + 64, 1016, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_6 + 64, 1358, "",spep_6 + 90, 0, 14, -1);
SE046 = playSeVer2( spep_6 + 72, 1016, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_6 + 74, 1025, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_6 + 82, 1016, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_6 + 92, 1016, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_6 + 94, 1024, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_6 + 100, 1016, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_6 + 110, 1159, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_6 + 126, 1067, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 176;
------------------------------------------------------
--ラストシーン
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 180, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 180, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 180, finish, 255 );

--SE
--フレームイン
SE054 = playSeVer2( spep_7 + 4, 44, "", 0, 0, 0, -1);
setPitch( spep_7 + 4, SE054, -600 );
setTimeStretch( SE054, 0.6, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 200, 0, 0, 0, 0, 255 );  --黒　背景

--終わり
dealDamage(spep_7 +70);
endPhase( spep_7 + 170 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--空中ビーム発射
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 140, beam_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 140, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beam_f, 0 );
setEffRotateKey( spep_0 + 140, beam_f, 0 );
setEffAlphaKey( spep_0 + 0, beam_f, 255 );
setEffAlphaKey( spep_0 + 138, beam_f, 255 );
setEffAlphaKey( spep_0 + 139, beam_f, 255 );
setEffAlphaKey( spep_0 + 140, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 140, beam_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 140, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beam_b, 0 );
setEffRotateKey( spep_0 + 140, beam_b, 0 );
setEffAlphaKey( spep_0 + 0, beam_b, 255 );
setEffAlphaKey( spep_0 + 138, beam_b, 255 );
setEffAlphaKey( spep_0 + 139, beam_b, 255 );
setEffAlphaKey( spep_0 + 140, beam_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 104 );

setMoveKey( spep_0 + 0, 1, 258.2, -228.1 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 255.8, -225.5 , 0 );
setMoveKey( spep_0-3 + 4, 1, 253.2, -222.9 , 0 );
setMoveKey( spep_0-3 + 6, 1, 250.7, -220 , 0 );
setMoveKey( spep_0-3 + 8, 1, 248, -216.9 , 0 );
setMoveKey( spep_0-3 + 10, 1, 245.3, -213.7 , 0 );
setMoveKey( spep_0-3 + 12, 1, 242.5, -210.3 , 0 );
setMoveKey( spep_0-3 + 14, 1, 239.6, -206.8 , 0 );
setMoveKey( spep_0-3 + 16, 1, 236.6, -203.2 , 0 );
setMoveKey( spep_0-3 + 18, 1, 233.7, -199.3 , 0 );
setMoveKey( spep_0-3 + 20, 1, 230.6, -195.4 , 0 );
setMoveKey( spep_0-3 + 22, 1, 227.6, -191.3 , 0 );
setMoveKey( spep_0-3 + 24, 1, 226.8, -189.5 , 0 );
setMoveKey( spep_0-3 + 26, 1, 225.9, -187.4 , 0 );
setMoveKey( spep_0-3 + 28, 1, 224.9, -185.3 , 0 );
setMoveKey( spep_0-3 + 30, 1, 224.7, -184.9 , 0 );
setMoveKey( spep_0-3 + 32, 1, 224.4, -184.1 , 0 );
setMoveKey( spep_0-3 + 34, 1, 223.7, -182.6 , 0 );
setMoveKey( spep_0-3 + 36, 1, 222.9, -180.6 , 0 );
setMoveKey( spep_0-3 + 38, 1, 221.8, -177.9 , 0 );
setMoveKey( spep_0-3 + 40, 1, 220.4, -174.7 , 0 );
setMoveKey( spep_0-3 + 42, 1, 218.8, -170.9 , 0 );
setMoveKey( spep_0-3 + 44, 1, 216.9, -166.5 , 0 );
setMoveKey( spep_0-3 + 46, 1, 204, -152.1 , 0 );
setMoveKey( spep_0-3 + 48, 1, 222.1, -154.8 , 0 );
setMoveKey( spep_0-3 + 50, 1, 134.6, -137.6 , 0 );
setMoveKey( spep_0-3 + 52, 1, 191.8, -161.9 , 0 );
setMoveKey( spep_0-3 + 54, 1, 186.7, -95.8 , 0 );
setMoveKey( spep_0-3 + 56, 1, 167.2, -113.5 , 0 );
setMoveKey( spep_0-3 + 58, 1, 154.8, -96.3 , 0 );
setMoveKey( spep_0-3 + 60, 1, 153.7, -102.8 , 0 );
setMoveKey( spep_0-3 + 62, 1, 141.2, -85.4 , 0 );
setMoveKey( spep_0-3 + 64, 1, 134.3, -79.8 , 0 );
setMoveKey( spep_0-3 + 66, 1, 127.2, -74.2 , 0 );
setMoveKey( spep_0-3 + 68, 1, 120, -68.4 , 0 );
setMoveKey( spep_0-3 + 70, 1, 112.7, -62.6 , 0 );
setMoveKey( spep_0-3 + 72, 1, 105.3, -56.6 , 0 );


setScaleKey( spep_0 + 0, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 1, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 2, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 3, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 4, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 5, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 6, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 16, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 18, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 38, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 64, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 66, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 72, 1, 0.29, 0.29 );


setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-3 + 72, 1, 0 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "",spep_0 + 68, 0, 36, -1);
SE002 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 0, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );

--気弾溜め
SE004 = playSeVer2( spep_0 + 26, 1328, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 124 );
setStartTimeMs( SE004,  283 );

--オーラ
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 24, SE005, -400 );
setTimeStretch( SE005, 0.73, 30, 4 );

--気弾溜め
SE006 = playSeVer2( spep_0 + 22, 1282, "",spep_0 + 52, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 22, SE006, 66 );

--オーラ
SE007 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 48, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );

--気弾発射
SE008 = playSeVer2( spep_0 + 44, 1133, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 44, SE008, 157 );
setPitch( spep_0 + 44, SE008, -50 );
setTimeStretch( SE008, 0.97, 30, 4 );
SE009 = playSeVer2( spep_0 + 44, 1130, "", spep_0 + 98, 0, 6,0.5);
setSeVolumeByWorkId( spep_0 + 44, SE009, 125 );
setPitch( spep_0 + 44, SE009, -650 );
setTimeStretch( SE009, 0.57, 30, 4 );
SE010 = playSeVer2( spep_0 + 44, 1145, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 44, SE010, 72 );
SE011 = playSeVer2( spep_0 + 44, 1326, "",spep_0 + 110, 0, 12, -1);
SE012 = playSeVer2( spep_0 + 46, 1320, "",spep_0 + 110, 8, 12, -1);
setSeVolumeByWorkId( spep_0 + 46, SE012, 123 );
setStartTimeMs( SE012,  33 );
setPitch( spep_0 + 46, SE012, 700 );
setTimeStretch( SE012, 1.47, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 70; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
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

    --敵の固定
    setMoveKey( SP_dodge + 8, 1, 105.3, -56.6 , 0 );
    setMoveKey( SP_dodge + 9, 1, 105.3, -56.6 , 0 );

    setScaleKey( SP_dodge + 8, 1, 0.29, 0.29 );
    setScaleKey( SP_dodge + 9, 1, 0.29, 0.29 );

    setRotateKey( SP_dodge + 8, 1, 0 );
    setRotateKey( SP_dodge + 9, 1, 0 );
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_0-1 + 98, 1, 0 );

setMoveKey( spep_0-3 + 74, 1, 97.7, -50.6 , 0 );
setMoveKey( spep_0-3 + 76, 1, 90, -44.4 , 0 );
setMoveKey( spep_0-3 + 78, 1, 82.2, -38.1 , 0 );
setMoveKey( spep_0-3 + 80, 1, 74.3, -31.8 , 0 );
setMoveKey( spep_0-3 + 82, 1, 66.2, -25.3 , 0 );
setMoveKey( spep_0-3 + 84, 1, 58, -18.7 , 0 );
setMoveKey( spep_0-3 + 86, 1, 49.6, -12 , 0 );
setMoveKey( spep_0-3 + 88, 1, 41.1, -5.1 , 0 );
setMoveKey( spep_0-3 + 90, 1, 38.1, -10 , 0 );
setMoveKey( spep_0-3 + 92, 1, 30.8, 3.3 , 0 );
setMoveKey( spep_0-3 + 94, 1, 34.8, -7.2 , 0 );
setMoveKey( spep_0-3 + 96, 1, 27.6, 6.3 , 0 );
setMoveKey( spep_0-1 + 98, 1, 31.5, -4.1 , 0 );

setScaleKey( spep_0-3 + 74, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 80, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 82, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 88, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 90, 1, 0.32, 0.32 );
setScaleKey( spep_0-3 + 96, 1, 0.32, 0.32 );
setScaleKey( spep_0-1 + 98, 1, 0.33, 0.33 );

setRotateKey( spep_0-1 + 98, 1, 0 );


--SE
--連続爆発
SE013 = playSeVer2( spep_0 + 90, 1023, "",spep_0 + 112, 0, 6, 0.5);
SE014 = playSeVer2( spep_0 + 98, 1023, "",spep_0 + 120, 0, 6, 0.5);
setPitch( spep_0 + 98, SE014, -200 );
setTimeStretch( SE014, 0.87, 30, 4 );
SE015 = playSeVer2( spep_0 + 104, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE015, 81 );
SE016 = playSeVer2( spep_0 + 110, 1023, "", 0, 0, 0, -1);
setPitch( spep_0 + 110, SE016, 100 );
setTimeStretch( SE016, 1.07, 30, 4 );

--煙
SE017 = playSeVer2( spep_0 + 130, 1188, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE017, 68 );
setStartTimeMs( SE017,  133 );

-- ** 次の準備 ** --
spep_1= spep_0 + 140;
------------------------------------------------------
--煙→正面向きパンチ
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 126, hit_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 126, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_f, 0 );
setEffRotateKey( spep_1 + 126, hit_f, 0 );
setEffAlphaKey( spep_1 + 0, hit_f, 255 );
setEffAlphaKey( spep_1 + 124, hit_f, 255 );
setEffAlphaKey( spep_1 + 125, hit_f, 255 );
setEffAlphaKey( spep_1 + 126, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_1 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 126, hit_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 126, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_b, 0 );
setEffRotateKey( spep_1 + 126, hit_b, 0 );
setEffAlphaKey( spep_1 + 0, hit_b, 255 );
setEffAlphaKey( spep_1 + 124, hit_b, 255 );
setEffAlphaKey( spep_1 + 125, hit_b, 255 );
setEffAlphaKey( spep_1 + 126, hit_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 24, 1, 0 );

changeAnime( spep_1 + 0, 1, 106 );

setMoveKey( spep_1 + 0, 1, 169.2, -236.7 , 0 );
setMoveKey( spep_1 + 2, 1, 182.8, -246.2 , 0 );
setMoveKey( spep_1 + 4, 1, 196.6, -255.7 , 0 );
setMoveKey( spep_1 + 6, 1, 210.6, -265.3 , 0 );
setMoveKey( spep_1 + 8, 1, 225, -275.1 , 0 );
setMoveKey( spep_1 + 10, 1, 239.6, -285 , 0 );
setMoveKey( spep_1 + 12, 1, 254.5, -295 , 0 );
setMoveKey( spep_1 + 14, 1, 269.7, -305.1 , 0 );
setMoveKey( spep_1 + 16, 1, 285.1, -315.4 , 0 );
setMoveKey( spep_1 + 18, 1, 300.8, -325.7 , 0 );
setMoveKey( spep_1 + 20, 1, 316.8, -336.2 , 0 );
setMoveKey( spep_1 + 22, 1, 333.1, -346.8 , 0 );
setMoveKey( spep_1 + 24, 1, 349.7, -357.6 , 0 );

setScaleKey( spep_1 + 0, 1, 4.24,4.24);
setScaleKey( spep_1 + 2, 1, 4.8,4.8);
setScaleKey( spep_1 + 4, 1, 5.36,5.36);
setScaleKey( spep_1 + 6, 1, 5.94,5.94);
setScaleKey( spep_1 + 8, 1, 6.54,6.54);
setScaleKey( spep_1 + 10, 1, 7.14,7.14);
setScaleKey( spep_1 + 12, 1, 7.76,7.76);
setScaleKey( spep_1 + 14, 1, 8.38,8.38);
setScaleKey( spep_1 + 16, 1, 9.02,9.02);
setScaleKey( spep_1 + 18, 1, 9.68,9.68);
setScaleKey( spep_1 + 20, 1, 10.34,10.34);
setScaleKey( spep_1 + 22, 1, 11.02,11.02);
setScaleKey( spep_1 + 24, 1, 11.72,11.72);

setRotateKey( spep_1 + 0, 1, -50.1 );
setRotateKey( spep_1 + 2, 1, -49.5 );
setRotateKey( spep_1 + 4, 1, -48.8 );
setRotateKey( spep_1 + 6, 1, -48.1 );
setRotateKey( spep_1 + 8, 1, -47.4 );
setRotateKey( spep_1 + 10, 1, -46.8 );
setRotateKey( spep_1 + 12, 1, -46.1 );
setRotateKey( spep_1 + 14, 1, -45.4 );
setRotateKey( spep_1 + 16, 1, -44.7 );
setRotateKey( spep_1 + 18, 1, -44 );
setRotateKey( spep_1 + 20, 1, -43.4 );
setRotateKey( spep_1 + 22, 1, -42.7 );
setRotateKey( spep_1 + 24, 1, -42 );

--SE
--振りかぶって向かってくる
SE018 = playSeVer2( spep_1 + 62, 1116, "",spep_1 + 100, 0, 14, -1);
SE019 = playSeVer2( spep_1 + 70, 9, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 130, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_2= spep_1 + 126;
------------------------------------------------------
--煙かき分けパンチ
------------------------------------------------------
-- ** エフェクト等 ** --
panti_f = entryEffect( spep_2 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panti_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, panti_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panti_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, panti_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panti_f, 0 );
setEffRotateKey( spep_2 + 56, panti_f, 0 );
setEffAlphaKey( spep_2 + 0, panti_f, 255 );
setEffAlphaKey( spep_2 + 54, panti_f, 255 );
setEffAlphaKey( spep_2 + 55, panti_f, 255 );
setEffAlphaKey( spep_2 + 56, panti_f, 0 );

-- ** エフェクト等 ** --
panti_b = entryEffect( spep_2 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panti_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, panti_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panti_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, panti_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panti_b, 0 );
setEffRotateKey( spep_2 + 56, panti_b, 0 );
setEffAlphaKey( spep_2 + 0, panti_b, 255 );
setEffAlphaKey( spep_2 + 54, panti_b, 255 );
setEffAlphaKey( spep_2 + 55, panti_b, 255 );
setEffAlphaKey( spep_2 + 56, panti_b, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-1 + 38, 1, 0 );

changeAnime( spep_2 + 0, 1, 108 );
changeAnime( spep_2-3 + 30, 1, 106 );

setMoveKey( spep_2 + 0, 1, -45.8, 104.7 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -32.6, 115.4 , 0 );
setMoveKey( spep_2-3 + 4, 1, 40.3, 60.1 , 0 );
setMoveKey( spep_2-3 + 6, 1, 32.8, 58.9 , 0 );
setMoveKey( spep_2-3 + 8, 1, 85, 69.6 , 0 );
setMoveKey( spep_2-3 + 10, 1, 117.7, 60.8 , 0 );
setMoveKey( spep_2-3 + 12, 1, 118.4, 60.7 , 0 );
setMoveKey( spep_2-3 + 14, 1, 119, 60.5 , 0 );
setMoveKey( spep_2-3 + 16, 1, 119.7, 60.3 , 0 );
setMoveKey( spep_2-3 + 18, 1, 120.4, 60.1 , 0 );
setMoveKey( spep_2-3 + 20, 1, 121, 60 , 0 );
setMoveKey( spep_2-3 + 22, 1, 121.7, 59.8 , 0 );
setMoveKey( spep_2-3 + 24, 1, 122.4, 59.6 , 0 );
setMoveKey( spep_2-3 + 26, 1, 123, 59.4 , 0 );
setMoveKey( spep_2-3 + 29, 1, 123.7, 59.2 , 0 );
setMoveKey( spep_2-3 + 30, 1, 168.9, 61.9 , 0 );
setMoveKey( spep_2-3 + 32, 1, 281.5, -26.8 , 0 );
setMoveKey( spep_2-3 + 34, 1, 379.9, -34.3 , 0 );
setMoveKey( spep_2-3 + 36, 1, 538, -76.6 , 0 );
setMoveKey( spep_2-1 + 38, 1, 691.6, -149.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1.35, 1.35 );
setScaleKey( spep_2-1 + 38, 1, 1.35, 1.35 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-1 + 0, 1, 0 );

--SE
--パンチ
SE020 = playSeVer2( spep_2 + 6, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE020, 76 );
SE021 = playSeVer2( spep_2 + 6, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE021, 87 );
SE022 = playSeVer2( spep_2 + 6, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE022, 83 );

--敵吹っ飛ぶ
SE023 = playSeVer2( spep_2 + 30, 1027, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_3= spep_2 + 56;
------------------------------------------------------
--地面激突
------------------------------------------------------
-- ** エフェクト等 ** --
friction_f = entryEffect( spep_3 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, friction_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, friction_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, friction_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, friction_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, friction_f, 0 );
setEffRotateKey( spep_3 + 106, friction_f, 0 );
setEffAlphaKey( spep_3 + 0, friction_f, 255 );
setEffAlphaKey( spep_3 + 104, friction_f, 255 );
setEffAlphaKey( spep_3 + 105, friction_f, 255 );
setEffAlphaKey( spep_3 + 106, friction_f, 0 );

-- ** エフェクト等 ** --
friction_b = entryEffect( spep_3 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, friction_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, friction_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, friction_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, friction_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, friction_b, 0 );
setEffRotateKey( spep_3 + 106, friction_b, 0 );
setEffAlphaKey( spep_3 + 0, friction_b, 255 );
setEffAlphaKey( spep_3 + 104, friction_b, 255 );
setEffAlphaKey( spep_3 + 105, friction_b, 255 );
setEffAlphaKey( spep_3 + 106, friction_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-1 + 18, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3 + 0, 1, -497.5, -341.1 , 0 );
setMoveKey( spep_3 + 2, 1, -441.4, -324.1 , 0 );
setMoveKey( spep_3 + 4, 1, -385.4, -307.1 , 0 );
setMoveKey( spep_3 + 6, 1, -329.3, -290.2 , 0 );
setMoveKey( spep_3 + 8, 1, -273.3, -273.2 , 0 );
setMoveKey( spep_3 + 10, 1, -217.2, -256.2 , 0 );
setMoveKey( spep_3 + 12, 1, -161.2, -239.3 , 0 );
setMoveKey( spep_3 + 14, 1, -105.1, -222.3 , 0 );
setMoveKey( spep_3 + 16, 1, -49.1, -205.3 , 0 );
setMoveKey( spep_3-1 + 18, 1, 7, -188.4 , 0 );

setScaleKey( spep_3 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_3-1 + 18, 1, 0.2, 0.2 );

setRotateKey( spep_3 + 0, 1, -21.3 );
setRotateKey( spep_3-1 + 18, 1, -21.3 );

--SE
--敵飛んでいく
SE024 = playSeVer2( spep_3 + 0, 1121, "",spep_3 + 52, 0, 22, -1);

--岩場激突
SE025 = playSeVer2( spep_3 + 18, 1159, "",spep_3 + 166, 0, 52, -1);
SE026 = playSeVer2( spep_3 + 34, 1024, "",spep_3 + 166, 0, 52, -1);
SE027 = playSeVer2( spep_3 + 50, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 50, SE027, 83 );
SE028 = playSeVer2( spep_3 + 68, 1160, "",spep_3 + 166, 0, 52, -1);
setSeVolumeByWorkId( spep_3 + 68, SE028, 78 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_4= spep_3 + 104;
------------------------------------------------------
--セリフ、指差し
------------------------------------------------------
-- ** エフェクト等 ** --
seriph = entryEffect( spep_4 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, seriph, 0, 0, 0 );
setEffMoveKey( spep_4 + 100, seriph, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, seriph, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, seriph, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, seriph, 0 );
setEffRotateKey( spep_4 + 100, seriph, 0 );
setEffAlphaKey( spep_4 + 0, seriph, 255 );
setEffAlphaKey( spep_4 + 100, seriph, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_4 + 0,  906, 98, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen1, 98, 20 );
setEffMoveKey( spep_4 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_4 + 98, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_4 + 0, shuchusen1, 0 );
setEffRotateKey( spep_4 + 98, shuchusen1, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_4 + 98, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_4 +8;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 130, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 130,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  130,  515);

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
--腕構える
SE029 = playSeVer2( spep_4 + 6, 1003, "", 0, 0, 0, -1);

--顔カットイン
--SE030 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_4 +92 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6= spep_5 + 94;
------------------------------------------------------
--デスビーム連射→爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_6 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_6 + 176, explosion, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_6 + 176, explosion, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, explosion, 0 );
setEffRotateKey( spep_6 + 176, explosion, 0 );
setEffAlphaKey( spep_6 + 0, explosion, 255 );
setEffAlphaKey( spep_6 + 174, explosion, 255 );
setEffAlphaKey( spep_6 + 175, explosion, 255 );
setEffAlphaKey( spep_6 + 176, explosion, 0 );

--SE
--連続気弾
SE032 = playSeVer2( spep_6 + 10, 1249, "",spep_6 + 116, 0, 18, -1);
setSeVolumeByWorkId( spep_6 + 10, SE032, 77 );
SE033 = playSeVer2( spep_6 + 12, 1016, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_6 + 12, 1358, "",spep_6 + 38, 0, 14, -1);
SE035 = playSeVer2( spep_6 + 24, 1016, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_6 + 24, 1358, "",spep_6 + 50, 0, 14, -1);
SE037 = playSeVer2( spep_6 + 32, 1016, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_6 + 32, 1358, "",spep_6 + 58, 0, 14, -1);
SE039 = playSeVer2( spep_6 + 42, 1016, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_6 + 42, 1358, "",spep_6 + 68, 0, 14, -1);
SE041 = playSeVer2( spep_6 + 52, 1016, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_6 + 52, 1358, "",spep_6 + 78, 0, 14, -1);
SE043 = playSeVer2( spep_6 + 52, 1023, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_6 + 64, 1016, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_6 + 64, 1358, "",spep_6 + 90, 0, 14, -1);
SE046 = playSeVer2( spep_6 + 72, 1016, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_6 + 74, 1025, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_6 + 82, 1016, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_6 + 92, 1016, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_6 + 94, 1024, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_6 + 100, 1016, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_6 + 110, 1159, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_6 + 126, 1067, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 176;
------------------------------------------------------
--ラストシーン
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 180, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_7 + 180, finish, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 180, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 180, finish, 255 );

--SE
--フレームイン
SE054 = playSeVer2( spep_7 + 4, 44, "", 0, 0, 0, -1);
setPitch( spep_7 + 4, SE054, -600 );
setTimeStretch( SE054, 0.6, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 200, 0, 0, 0, 0, 255 );  --黒 背景

--終わり
dealDamage(spep_7 +70);
endPhase( spep_7 + 170 );
end