--4024150:LR_ピッコロ_超必殺技：魔貫光殺砲
--sp_effect_a1_00351
--sp2357

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
SP_01=	159551	;--	ダッシュ～横アップ～敵アップ
SP_02=	159552	;--	正面ダッシュ
SP_03=	159553	;--	パンチ
SP_04=	159555	;--	パンチ
SP_05=	159556	;--	俯瞰～正面張り手
SP_06=	159558	;--	俯瞰～正面張り手
SP_07=	159559	;--	エルボ～パンチ
SP_08=	159561	;--	エルボ～パンチ
SP_09=	159562	;--	構えアップ
SP_10=	159563	;--	魔関光殺法
SP_11=	159565	;--	奥に向かう魔関光
SP_12=	159566	;--	奥に向かう魔関光
SP_13=	159567	;--	爆発〜終了

--エフェクト(てき)
SP_01x=	159551	;--	ダッシュ～横アップ～敵アップ
SP_02x=	159552	;--	正面ダッシュ
SP_03x=	159554	;--	パンチ (敵)
SP_04x=	159555	;--	パンチ
SP_05x=	159557	;--	俯瞰～正面張り手 (敵)
SP_06x=	159558	;--	俯瞰～正面張り手
SP_07x=	159560	;--	エルボ～パンチ (敵)
SP_08x=	159561	;--	エルボ～パンチ
SP_09x=	159562	;--	構えアップ
SP_10x=	159564	;--	魔関光殺法 (敵)
SP_11x=	159565	;--	奥に向かう魔関光
SP_12x=	159566	;--	奥に向かう魔関光
SP_13x=	159567	;--	爆発〜終了

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
--ダッシュ～横アップ～敵アップ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
dash = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_0 + 166, dash, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_0 + 166, dash, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash, 0 );
setEffRotateKey( spep_0 + 166, dash, 0 );
setEffAlphaKey( spep_0 + 0, dash, 255 );
setEffAlphaKey( spep_0 + 164, dash, 255 );
setEffAlphaKey( spep_0 + 165, dash, 255 );
setEffAlphaKey( spep_0 + 166, dash, 0 );

--敵の動き
setDisp( spep_0-3 + 146, 1, 1);
setDisp( spep_0-1 + 168, 1, 0);

changeAnime( spep_0-3 + 146, 1, 100);

setMoveKey( spep_0-3 + 146, 1, 0.4, 26.1 , 0 );
setMoveKey( spep_0-3 + 148, 1, -1.2, 22.8 , 0 );
setMoveKey( spep_0-3 + 150, 1, -2.7, 19.5 , 0 );
setMoveKey( spep_0-3 + 152, 1, -4.2, 16.2 , 0 );
setMoveKey( spep_0-3 + 154, 1, -5.7, 12.9 , 0 );
setMoveKey( spep_0-3 + 156, 1, -7.3, 9.6 , 0 );
setMoveKey( spep_0-3 + 158, 1, -8.8, 6.2 , 0 );
setMoveKey( spep_0-3 + 160, 1, -10.3, 2.9 , 0 );
setMoveKey( spep_0-3 + 162, 1, -11.8, -0.4 , 0 );
setMoveKey( spep_0-3 + 164, 1, -13.3, -3.7 , 0 );
setMoveKey( spep_0-3 + 166, 1, -14.9, -7 , 0 );
setMoveKey( spep_0-1 + 168, 1, -16.4, -10.2 , 0 );

setScaleKey( spep_0-3 + 146, 1, 1.6, 1.6 );
setScaleKey( spep_0-3 + 148, 1, 1.72, 1.72 );
setScaleKey( spep_0-3 + 150, 1, 1.83, 1.83 );
setScaleKey( spep_0-3 + 152, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 154, 1, 2.07, 2.07 );
setScaleKey( spep_0-3 + 156, 1, 2.18, 2.18 );
setScaleKey( spep_0-3 + 158, 1, 2.3, 2.3 );
setScaleKey( spep_0-3 + 160, 1, 2.41, 2.41 );
setScaleKey( spep_0-3 + 162, 1, 2.53, 2.53 );
setScaleKey( spep_0-3 + 164, 1, 2.65, 2.65 );
setScaleKey( spep_0-3 + 166, 1, 2.76, 2.76 );
setScaleKey( spep_0-1 + 168, 1, 2.88, 2.88 );

setRotateKey( spep_0-3 + 146, 1, 0 );
setRotateKey( spep_0-1 + 168, 1, 0 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 136, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 33 );

--構える
SE002 = playSeVer2( spep_0 + 10, 1233, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 20, 1006, "", 0, 0, 0, -1);

--ダッシュ音
SE004 = playSeVer2( spep_0 + 86, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 86, 1314, "",spep_0 + 240, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 86, SE005, 78 );

--ダッシュ足音
SE006 = playSeVer2( spep_0 + 100, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 100, SE006, 158 );
SE007 = playSeVer2( spep_0 + 110, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 110, SE007, 158 );
SE008 = playSeVer2( spep_0 + 122, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 122, SE008, 158 );
SE009 = playSeVer2( spep_0 + 132, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 132, SE009, 158 );
SE010 = playSeVer2( spep_0 + 136, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 136, SE010, 150 );

--向かっていく
SE011 = playSeVer2( spep_0 + 144, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE011, 44 );
setTimeStretch( SE011, 0.76, 30, 4 );

--ダッシュ音
SE012 = playSeVer2( spep_0 + 156, 1175, "",spep_0 + 256, 0, 20, 0.5);
setSeVolumeByWorkId( spep_0 + 156, SE012, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 170, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_1= spep_0 + 166;
------------------------------------------------------
--正面ダッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
dash2 = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash2, 0, 0, 0 );
setEffMoveKey( spep_1 + 86, dash2, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, dash2, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash2, 0 );
setEffRotateKey( spep_1 + 86, dash2, 0 );
setEffAlphaKey( spep_1 + 0, dash2, 255 );
setEffAlphaKey( spep_1 + 84, dash2, 255 );
setEffAlphaKey( spep_1 + 85, dash2, 255 );
setEffAlphaKey( spep_1 + 86, dash2, 0 );

--SE
--ダッシュ足音
SE013 = playSeVer2( spep_1 + 14, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 14, SE013, 168 );
SE014 = playSeVer2( spep_1 + 26, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 26, SE014, 155 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    
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
--ダッシュ足音
SE015 = playSeVer2( spep_1 + 38, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 38, SE015, 197 );
SE016 = playSeVer2( spep_1 + 48, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 48, SE016, 172 );
SE017 = playSeVer2( spep_1 + 58, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 58, SE017, 130 );

--瞬間移動
SE018 = playSeVer2( spep_1 + 72, 1109, "", 0, 0, 0, -1);

--ダッシュ足音
SE019 = playSeVer2( spep_1 + 66, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 66, SE019, 141 );

-- ** 次の準備 ** --
spep_2= spep_1 + 86;
------------------------------------------------------
--パンチ
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, panting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_f, 0 );
setEffRotateKey( spep_2 + 56, panting_f, 0 );
setEffAlphaKey( spep_2 + 0, panting_f, 255 );
setEffAlphaKey( spep_2 + 54, panting_f, 255 );
setEffAlphaKey( spep_2 + 55, panting_f, 255 );
setEffAlphaKey( spep_2 + 56, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, panting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_b, 0 );
setEffRotateKey( spep_2 + 56, panting_b, 0 );
setEffAlphaKey( spep_2 + 0, panting_b, 255 );
setEffAlphaKey( spep_2 + 54, panting_b, 255 );
setEffAlphaKey( spep_2 + 55, panting_b, 255 );
setEffAlphaKey( spep_2 + 56, panting_b, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2-3 + 16, 1, 106 );
changeAnime( spep_2-3 + 38, 1, 108 );

setMoveKey( spep_2 + 0, 1, 141.3, -30.7 , 0 );
setMoveKey( spep_2-3 + 6, 1, 141.3, -30.7 , 0 );
setMoveKey( spep_2-3 + 8, 1, 142, -34.4 , 0 );
setMoveKey( spep_2-3 + 10, 1, 142.6, -38.2 , 0 );
setMoveKey( spep_2-3 + 12, 1, 141.3, -30.7 , 0 );
setMoveKey( spep_2-3 + 15, 1, 142.6, -38.2 , 0 );
setMoveKey( spep_2-3 + 16, 1, 77.9, 103.6 , 0 );
setMoveKey( spep_2-3 + 18, 1, 90.4, 42.1 , 0 );
setMoveKey( spep_2-3 + 20, 1, 12.4, 49.4 , 0 );
setMoveKey( spep_2-3 + 22, 1, 79.2, 14.5 , 0 );
setMoveKey( spep_2-3 + 24, 1, 83.7, 69.5 , 0 );
setMoveKey( spep_2-3 + 26, 1, 65.7, 59.4 , 0 );
setMoveKey( spep_2-3 + 28, 1, 71.9, 48.5 , 0 );
setMoveKey( spep_2-3 + 30, 1, 66.7, 61.4 , 0 );
setMoveKey( spep_2-3 + 32, 1, 72.9, 50.5 , 0 );
setMoveKey( spep_2-3 + 34, 1, 67.8, 63.4 , 0 );
setMoveKey( spep_2-3 + 37, 1, 74, 52.5 , 0 );
setMoveKey( spep_2-3 + 38, 1, 129.4, 43.3 , 0 );
setMoveKey( spep_2-3 + 40, 1, 140.7, 24.1 , 0 );
setMoveKey( spep_2-3 + 42, 1, 140.7, 28.8 , 0 );
setMoveKey( spep_2-3 + 44, 1, 152, 9.7 , 0 );
setMoveKey( spep_2-3 + 46, 1, 152.1, 14.3 , 0 );
setMoveKey( spep_2-3 + 48, 1, 163.4, -4.8 , 0 );
setMoveKey( spep_2-3 + 50, 1, 163.5, -0.1 , 0 );
setMoveKey( spep_2-3 + 52, 1, 174.9, -19.2 , 0 );
setMoveKey( spep_2-3 + 54, 1, 175, -14.5 , 0 );
setMoveKey( spep_2-3 + 56, 1, 186.4, -33.6 , 0 );
setMoveKey( spep_2-3 + 58, 1, 186.5, -29 , 0 );

setScaleKey( spep_2 + 0, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 15, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 16, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 18, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 20, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 22, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 24, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 26, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 28, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 30, 1, 2.4,2.4);
setScaleKey( spep_2-3 + 32, 1, 2.4,2.4);
setScaleKey( spep_2-3 + 34, 1, 2.4,2.4);
setScaleKey( spep_2-3 + 37, 1, 2.4,2.4);
setScaleKey( spep_2-3 + 38, 1, 2.6,2.6);
setScaleKey( spep_2-3 + 40, 1, 2.4,2.4);
setScaleKey( spep_2-3 + 42, 1, 2.2,2.2);
setScaleKey( spep_2-3 + 44, 1, 2,2);
setScaleKey( spep_2-3 + 46, 1, 1.8,1.8);
setScaleKey( spep_2-3 + 48, 1, 1.6,1.6);
setScaleKey( spep_2-3 + 50, 1, 1.4,1.4);
setScaleKey( spep_2-3 + 52, 1, 1.3,1.3);
setScaleKey( spep_2-3 + 54, 1, 1.1,1.1);
setScaleKey( spep_2-3 + 56, 1, 0.9,0.9);
setScaleKey( spep_2-3 + 58, 1, 0.7,0.7);

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 15, 1, 0 );
setRotateKey( spep_2-3 + 16, 1, -45.9 );
setRotateKey( spep_2-3 + 37, 1, -45.9 );
setRotateKey( spep_2-3 + 38, 1, 3 );
setRotateKey( spep_2-3 + 40, 1, 3.7 );
setRotateKey( spep_2-3 + 42, 1, 4.3 );
setRotateKey( spep_2-3 + 44, 1, 5 );
setRotateKey( spep_2-3 + 46, 1, 5.6 );
setRotateKey( spep_2-3 + 48, 1, 6.3 );
setRotateKey( spep_2-3 + 50, 1, 6.9 );
setRotateKey( spep_2-3 + 52, 1, 7.6 );
setRotateKey( spep_2-3 + 54, 1, 8.2 );
setRotateKey( spep_2-3 + 56, 1, 8.9 );
setRotateKey( spep_2-3 + 58, 1, 9.5 );

--SE
--瞬間移動
SE020 = playSeVer2( spep_2 + 0, 1109, "",spep_2 + 32, 0, 16, -1);

--パンチ
SE021 = playSeVer2( spep_2 + 4, 1189, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 14, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE023 = playSeVer2( spep_2 + 36, 1183, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_3= spep_2 + 56;
------------------------------------------------------
--俯瞰～正面張り手
------------------------------------------------------
-- ** エフェクト等 ** --
tensioner_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tensioner_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 98, tensioner_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tensioner_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 98, tensioner_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tensioner_f, 0 );
setEffRotateKey( spep_3 + 98, tensioner_f, 0 );
setEffAlphaKey( spep_3 + 0, tensioner_f, 255 );
setEffAlphaKey( spep_3 + 96, tensioner_f, 255 );
setEffAlphaKey( spep_3 + 97, tensioner_f, 255 );
setEffAlphaKey( spep_3 + 98, tensioner_f, 0 );

-- ** エフェクト等 ** --
tensioner_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tensioner_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 98, tensioner_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tensioner_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 98, tensioner_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tensioner_b, 0 );
setEffRotateKey( spep_3 + 98, tensioner_b, 0 );
setEffAlphaKey( spep_3 + 0, tensioner_b, 255 );
setEffAlphaKey( spep_3 + 96, tensioner_b, 255 );
setEffAlphaKey( spep_3 + 97, tensioner_b, 255 );
setEffAlphaKey( spep_3 + 98, tensioner_b, 0 );

--敵の動き
setDisp( spep_3-1 + 62, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );

setMoveKey( spep_3 + 0, 1, -620, -604.2 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -444.2, -426.4 , 0 );
setMoveKey( spep_3-3 + 4, 1, -268.3, -248.6 , 0 );
setMoveKey( spep_3-3 + 6, 1, -92.5, -70.8 , 0 );
setMoveKey( spep_3-3 + 8, 1, 83.4, 106.9 , 0 );
setMoveKey( spep_3-3 + 10, 1, 88.7, 111.9 , 0 );
setMoveKey( spep_3-3 + 12, 1, 94.1, 116.9 , 0 );
setMoveKey( spep_3-3 + 14, 1, 99.4, 121.8 , 0 );
setMoveKey( spep_3-3 + 16, 1, 104.8, 126.8 , 0 );
setMoveKey( spep_3-3 + 18, 1, 110.1, 131.8 , 0 );
setMoveKey( spep_3-3 + 20, 1, 115.5, 136.7 , 0 );
setMoveKey( spep_3-3 + 22, 1, 120.8, 141.7 , 0 );
setMoveKey( spep_3-3 + 24, 1, 153, 115.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 184.9, 172.8 , 0 );
setMoveKey( spep_3-3 + 28, 1, 119.9, 136.4 , 0 );
setMoveKey( spep_3-3 + 30, 1, 151.8, 123.2 , 0 );
setMoveKey( spep_3-3 + 32, 1, 184.9, 172.8 , 0 );
setMoveKey( spep_3-3 + 34, 1, 119.9, 136.4 , 0 );
setMoveKey( spep_3-3 + 36, 1, 151.8, 123.2 , 0 );
setMoveKey( spep_3-3 + 38, 1, 186.1, 165.3 , 0 );
setMoveKey( spep_3-3 + 40, 1, 118.6, 143.9 , 0 );
setMoveKey( spep_3-3 + 42, 1, 153, 115.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 184.9, 172.8 , 0 );
setMoveKey( spep_3-3 + 46, 1, 119.9, 136.4 , 0 );
setMoveKey( spep_3-3 + 48, 1, 151.8, 123.2 , 0 );
setMoveKey( spep_3-3 + 50, 1, 118.6, 143.9 , 0 );
setMoveKey( spep_3-3 + 52, 1, 153, 115.7 , 0 );
setMoveKey( spep_3-3 + 54, 1, 184.9, 172.8 , 0 );
setMoveKey( spep_3-3 + 56, 1, 119.9, 136.4 , 0 );
setMoveKey( spep_3-3 + 58, 1, 151.8, 123.2 , 0 );
setMoveKey( spep_3-1 + 62, 1, 184.9, 172.8 , 0 );

setScaleKey( spep_3 + 0, 1, 3, 3 );
setScaleKey( spep_3-1 + 62, 1, 3, 3 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-1 + 62, 1, 0 );

--SE
--ラッシュ
SE024 = playSeVer2( spep_3 + 20, 1009, "",spep_3 + 40, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 20, SE024, 87 );
SE025 = playSeVer2( spep_3 + 20, 1110, "",spep_3 + 40, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 20, SE025, 89 );
SE026 = playSeVer2( spep_3 + 28, 1110, "",spep_3 + 48, 0, 10, -1);
SE027 = playSeVer2( spep_3 + 34, 1010, "",spep_3 + 54, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 34, SE027, 82 );
SE028 = playSeVer2( spep_3 + 34, 1110, "",spep_3 + 54, 0, 10, -1);
setPitch( spep_3 + 34, SE028, -400 );
setTimeStretch( SE028, 0.73, 30, 4 );
SE029 = playSeVer2( spep_3 + 40, 1110, "",spep_3 + 60, 0, 12, -1);
SE030 = playSeVer2( spep_3 + 46, 1110, "",spep_3 + 66, 0, 10, -1);
setPitch( spep_3 + 46, SE030, -200 );
setTimeStretch( SE030, 0.87, 30, 4 );
SE031 = playSeVer2( spep_3 + 54, 1110, "",spep_3 + 74, 0, 10, -1);
SE032 = playSeVer2( spep_3 + 62, 1110, "",spep_3 + 82, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 62, SE032, 70 );
setPitch( spep_3 + 62, SE032, 100 );
setTimeStretch( SE032, 1.07, 30, 4 );

--張り手
SE033 = playSeVer2( spep_3 + 62, 1110, "", 0, 0, 0, -1);
setPitch( spep_3 + 62, SE033, -400 );
setTimeStretch( SE033, 0.73, 30, 4 );
SE034 = playSeVer2( spep_3 + 62, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 62, SE034, 86 );
SE035 = playSeVer2( spep_3 + 82, 1110, "", 0, 0, 0, -1);
setPitch( spep_3 + 82, SE035, -400 );
setTimeStretch( SE035, 0.73, 30, 4 );
SE036 = playSeVer2( spep_3 + 82, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 82, SE036, 84 );

--画面遷移
SE037 = playSeVer2( spep_3 + 96, 8, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_3 +96 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_4= spep_3 + 98;
------------------------------------------------------
--エルボ～パンチ
------------------------------------------------------
-- ** エフェクト等 ** --
elbow_f = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, elbow_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 102, elbow_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, elbow_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 102, elbow_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, elbow_f, 0 );
setEffRotateKey( spep_4 + 102, elbow_f, 0 );
setEffAlphaKey( spep_4 + 0, elbow_f, 255 );
setEffAlphaKey( spep_4 + 102, elbow_f, 255 );

-- ** エフェクト等 ** --
elbow_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, elbow_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 102, elbow_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 102, elbow_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, elbow_b, 0 );
setEffRotateKey( spep_4 + 102, elbow_b, 0 );
setEffAlphaKey( spep_4 + 0, elbow_b, 255 );
setEffAlphaKey( spep_4 + 102, elbow_b, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_4-3 + 20,  906, 12, 0x100, -1, 0, 23.4, 0.8 );
setEffShake( spep_4-3 + 20, shuchusen1, 12, 20 );
setEffMoveKey( spep_4-3 + 20, shuchusen1, 23.4, 0.8 , 0 );
setEffMoveKey( spep_4-3 + 32, shuchusen1, 23.4, 0.8 , 0 );

setEffScaleKey( spep_4-3 + 20, shuchusen1, 1.05, 1.05 );
setEffScaleKey( spep_4-3 + 32, shuchusen1, 1.05, 1.05 );

setEffRotateKey( spep_4-3 + 20, shuchusen1, 0 );
setEffRotateKey( spep_4-3 + 32, shuchusen1, 0 );

setEffAlphaKey( spep_4-3 + 20, shuchusen1, 255 );
setEffAlphaKey( spep_4-3 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_4-3 + 30, shuchusen1, 128 );
setEffAlphaKey( spep_4-3 + 32, shuchusen1, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_4-3 + 64,  906, 12, 0x100, -1, 0, 23.4, 0.8 );
setEffShake( spep_4-3 + 64, shuchusen2, 12, 20 );
setEffMoveKey( spep_4-3 + 64, shuchusen2, 23.4, 0.8 , 0 );
setEffMoveKey( spep_4-3 + 76, shuchusen2, 23.4, 0.8 , 0 );

setEffScaleKey( spep_4-3 + 64, shuchusen2, 1.05, 1.05 );
setEffScaleKey( spep_4-3 + 76, shuchusen2, 1.05, 1.05 );

setEffRotateKey( spep_4-3 + 64, shuchusen2, 0 );
setEffRotateKey( spep_4-3 + 76, shuchusen2, 0 );

setEffAlphaKey( spep_4-3 + 64, shuchusen2, 255 );
setEffAlphaKey( spep_4-3 + 72, shuchusen2, 255 );
setEffAlphaKey( spep_4-3 + 74, shuchusen2, 128 );
setEffAlphaKey( spep_4-3 + 76, shuchusen2, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 102, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4-3 + 20, 1, 108 );

setMoveKey( spep_4 + 0, 1, 17.5, 73.5 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 14.2, 45.2 , 0 );
setMoveKey( spep_4-3 + 4, 1, 12.8, 34.1 , 0 );
setMoveKey( spep_4-3 + 6, 1, 12, 26.3 , 0 );
setMoveKey( spep_4-3 + 8, 1, 11.2, 20.2 , 0 );
setMoveKey( spep_4-3 + 10, 1, 10.6, 15.4 , 0 );
setMoveKey( spep_4-3 + 12, 1, 10.2, 11.7 , 0 );
setMoveKey( spep_4-3 + 14, 1, 9.9, 9 , 0 );
setMoveKey( spep_4-3 + 16, 1, 9.7, 7.3 , 0 );
setMoveKey( spep_4-3 + 19, 1, 9.5, 6.7 , 0 );
setMoveKey( spep_4-3 + 20, 1, -1.6, 118.4 , 0 );
setMoveKey( spep_4-3 + 22, 1, 1.8, 76.1 , 0 );
setMoveKey( spep_4-3 + 24, 1, 2.8, 89.3 , 0 );
setMoveKey( spep_4-3 + 26, 1, 3.5, 74.6 , 0 );
setMoveKey( spep_4-3 + 28, 1, 4.1, 86.4 , 0 );
setMoveKey( spep_4-3 + 30, 1, 4.5, 78.6 , 0 );
setMoveKey( spep_4-3 + 32, 1, 17.3, 89.9 , 0 );
setMoveKey( spep_4-3 + 34, 1, 28, 90.4 , 0 );
setMoveKey( spep_4-3 + 36, 1, 37, 98.3 , 0 );
setMoveKey( spep_4-3 + 38, 1, 44.8, 98.3 , 0 );
setMoveKey( spep_4-3 + 40, 1, 51.4, 104.3 , 0 );
setMoveKey( spep_4-3 + 42, 1, 57.1, 104.1 , 0 );
setMoveKey( spep_4-3 + 44, 1, 62, 108.6 , 0 );
setMoveKey( spep_4-3 + 46, 1, 66.1, 108.8 , 0 );
setMoveKey( spep_4-3 + 48, 1, 69.7, 111.2 , 0 );
setMoveKey( spep_4-3 + 50, 1, 72.6, 112.5 , 0 );
setMoveKey( spep_4-3 + 52, 1, 75.1, 113.6 , 0 );
setMoveKey( spep_4-3 + 54, 1, 77.1, 114.5 , 0 );
setMoveKey( spep_4-3 + 56, 1, 78.7, 115.2 , 0 );
setMoveKey( spep_4-3 + 58, 1, 79.8, 115.7 , 0 );
setMoveKey( spep_4-3 + 60, 1, 80.7, 116 , 0 );
setMoveKey( spep_4-3 + 62, 1, 81, 116.3 , 0 );
setMoveKey( spep_4-3 + 64, 1, 116, 71.3 , 0 );
setMoveKey( spep_4-3 + 66, 1, 90.6, 74.5 , 0 );
setMoveKey( spep_4-3 + 68, 1, 83.9, 11.8 , 0 );
setMoveKey( spep_4-3 + 70, 1, 82.9, 59 , 0 );
setMoveKey( spep_4-3 + 72, 1, 82.3, 16.6 , 0 );
setMoveKey( spep_4-3 + 74, 1, 76.2, 50.3 , 0 );
setMoveKey( spep_4-3 + 76, 1, 64.6, 23.7 , 0 );
setMoveKey( spep_4-3 + 78, 1, 47.8, 47.1 , 0 );
setMoveKey( spep_4-3 + 80, 1, 168.9, 47.4 , 0 );
setMoveKey( spep_4-3 + 82, 1, 201.1, 71.8 , 0 );
setMoveKey( spep_4-3 + 84, 1, 216, 64.1 , 0 );
setMoveKey( spep_4-3 + 86, 1, 222.1, 77.8 , 0 );
setMoveKey( spep_4-3 + 88, 1, 223.6, 71 , 0 );
setMoveKey( spep_4-3 + 90, 1, 222.9, 81.7 , 0 );
setMoveKey( spep_4-3 + 92, 1, 221.5, 76.2 , 0 );
setMoveKey( spep_4-3 + 94, 1, 220.4, 82.8 , 0 );
setMoveKey( spep_4-3 + 96, 1, 219.9, 78.9 , 0 );
setMoveKey( spep_4-3 + 98, 1, 220, 84.9 , 0 );
setMoveKey( spep_4-3 + 100, 1, 220.5, 82.5 , 0 );
setMoveKey( spep_4-1 + 102, 1, 220.7, 82.7 , 0 );

setScaleKey( spep_4 + 0, 1, 3.43,3.43);
setScaleKey( spep_4-3 + 4, 1, 2.5,2.5);
setScaleKey( spep_4-3 + 6, 1, 2.32,2.32);
setScaleKey( spep_4-3 + 8, 1, 2.18,2.18);
setScaleKey( spep_4-3 + 10, 1, 2.06,2.06);
setScaleKey( spep_4-3 + 12, 1, 1.99,1.99);
setScaleKey( spep_4-3 + 14, 1, 1.92,1.92);
setScaleKey( spep_4-3 + 16, 1, 1.88,1.88);
setScaleKey( spep_4-3 + 19, 1, 1.87,1.87);
setScaleKey( spep_4-3 + 20, 1, 2.64,2.64);
setScaleKey( spep_4-3 + 22, 1, 2.24,2.24);
setScaleKey( spep_4-3 + 24, 1, 2.14,2.14);
setScaleKey( spep_4-3 + 26, 1, 2.11,2.11);
setScaleKey( spep_4-3 + 62, 1, 2.11,2.11);
setScaleKey( spep_4-3 + 64, 1, 3.52,3.52);
setScaleKey( spep_4-3 + 66, 1, 3.02,3.02);
setScaleKey( spep_4-3 + 68, 1, 2.86,2.86);
setScaleKey( spep_4-3 + 70, 1, 2.81,2.81);
setScaleKey( spep_4-3 + 78, 1, 2.81,2.81);
setScaleKey( spep_4-3 + 80, 1, 2.17,2.17);
setScaleKey( spep_4-3 + 82, 1, 1.91,1.91);
setScaleKey( spep_4-3 + 84, 1, 1.72,1.72);
setScaleKey( spep_4-3 + 86, 1, 1.57,1.57);
setScaleKey( spep_4-3 + 88, 1, 1.45,1.45);
setScaleKey( spep_4-3 + 90, 1, 1.34,1.34);
setScaleKey( spep_4-3 + 92, 1, 1.25,1.25);
setScaleKey( spep_4-3 + 94, 1, 1.18,1.18);
setScaleKey( spep_4-3 + 96, 1, 1.13,1.13);
setScaleKey( spep_4-3 + 98, 1, 1.08,1.08);
setScaleKey( spep_4-3 + 100, 1, 1.06,1.06);
setScaleKey( spep_4-1 + 102, 1, 1.05,1.05);

setRotateKey( spep_4 + 0, 1, -56.4 );
setRotateKey( spep_4-3 + 19, 1, -56.4 );
setRotateKey( spep_4-3 + 20, 1, -20.3 );
setRotateKey( spep_4-3 + 30, 1, -20.3 );
setRotateKey( spep_4-3 + 32, 1, -21.7 );
setRotateKey( spep_4-3 + 34, 1, -22.9 );
setRotateKey( spep_4-3 + 36, 1, -23.9 );
setRotateKey( spep_4-3 + 38, 1, -24.7 );
setRotateKey( spep_4-3 + 40, 1, -25.4 );
setRotateKey( spep_4-3 + 42, 1, -26 );
setRotateKey( spep_4-3 + 44, 1, -26.6 );
setRotateKey( spep_4-3 + 46, 1, -27 );
setRotateKey( spep_4-3 + 48, 1, -27.4 );
setRotateKey( spep_4-3 + 50, 1, -27.7 );
setRotateKey( spep_4-3 + 52, 1, -28 );
setRotateKey( spep_4-3 + 54, 1, -28.2 );
setRotateKey( spep_4-3 + 56, 1, -28.4 );
setRotateKey( spep_4-3 + 58, 1, -28.5 );
setRotateKey( spep_4-3 + 60, 1, -28.6 );
setRotateKey( spep_4-3 + 62, 1, -28.7 );
setRotateKey( spep_4-3 + 64, 1, -11.7 );
setRotateKey( spep_4-3 + 66, 1, -12 );
setRotateKey( spep_4-3 + 68, 1, -12.4 );
setRotateKey( spep_4-3 + 70, 1, -12.7 );
setRotateKey( spep_4-3 + 72, 1, -13 );
setRotateKey( spep_4-3 + 74, 1, -13.3 );
setRotateKey( spep_4-3 + 76, 1, -13.6 );
setRotateKey( spep_4-3 + 78, 1, -13.9 );
setRotateKey( spep_4-3 + 84, 1, -13.9 );
setRotateKey( spep_4-3 + 86, 1, -13.8 );
setRotateKey( spep_4-1 + 102, 1, -13.8 );

--SE
--肘打ち
SE038 = playSeVer2( spep_4 + 10, 1189, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_4 + 16, 1190, "",spep_4 + 68, 0, 30, -1);
SE040 = playSeVer2( spep_4 + 16, 1182, "",spep_4 + 78, 0, 30, -1);
setSeVolumeByWorkId( spep_4 + 16, SE040, 90 );
SE041 = playSeVer2( spep_4 + 16, 1009, "", 0, 0, 0, -1);

--殴り飛ばし
SE042 = playSeVer2( spep_4 + 60, 1187, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_4 +16 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 +60 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 +94 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 102, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 102;
------------------------------------------------------
--構えアップ
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_5 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_5 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_5 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tame, 0 );
setEffRotateKey( spep_5 + 110, tame, 0 );
setEffAlphaKey( spep_5 + 0, tame, 255 );
setEffAlphaKey( spep_5 + 110, tame, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_5 + 0,  906, 108, 0x100, -1, 0, 0, -1.2 );
setEffShake( spep_5 + 0, shuchusen3, 108, 20 );
setEffMoveKey( spep_5 + 0, shuchusen3, 0, -1.2 , 0 );
setEffMoveKey( spep_5 + 108, shuchusen3, 0, -1.2 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_5 + 108, shuchusen3, 1.4, 1.4 );

setEffRotateKey( spep_5 + 0, shuchusen3, 180 );
setEffRotateKey( spep_5 + 108, shuchusen3, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 108, shuchusen3, 255 );

--顔カットインのタイミング指定
spep_x=spep_5 +8;

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
--SE
--魔貫光殺砲溜め
SE043 = playSeVer2( spep_5 + 0, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE043, 68 );
SE044 = playSeVer2( spep_5 + 0, 1252, "",spep_5 + 120, 0, 8, -1);
setSeVolumeByWorkId( spep_5 + 0, SE044, 81 );
SE045 = playSeVer2( spep_5 + 0, 1295, "",spep_5 + 120, 0, 8, -1);
setSeVolumeByWorkId( spep_5 + 0, SE045, 72 );
setPitch( spep_5 + 0, SE045, -400 );
setTimeStretch( SE045, 0.73, 30, 4 );
SE046 = playSeVer2( spep_5 + 0, 1038, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE046, 89 );
SE047 = playSeVer2( spep_5 + 0, 1243, "",spep_5 + 120, 0, 8, -1);
setSeVolumeByWorkId( spep_5 + 0, SE047, 74 );
SE048 = playSeVer2( spep_5 + 4, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 4, SE048, 80 );

--顔カットイン
SE049 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_5 +102 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 110;
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
--魔関光殺法
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_7 + 100, beam, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, beam, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, beam, 0 );
setEffRotateKey( spep_7 + 100, beam, 0 );
setEffAlphaKey( spep_7 + 0, beam, 255 );
setEffAlphaKey( spep_7 + 100, beam, 255 );

--SE
--発射前溜め
SE051 = playSeVer2( spep_7 + 0, 1252, "",spep_7 + 58, 0, 8, -1);
setSeVolumeByWorkId( spep_7 + 0, SE051, 81 );
SE052 = playSeVer2( spep_7 + 0, 1295, "",spep_7 + 58, 0, 8, -1);
setSeVolumeByWorkId( spep_7 + 0, SE052, 72 );
setPitch( spep_7 + 0, SE052, -400 );
setTimeStretch( SE052, 0.73, 30, 4 );
SE053 = playSeVer2( spep_7 + 0, 1038, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 0, SE053, 88 );
SE054 = playSeVer2( spep_7 + 0, 1243, "",spep_7 + 58, 0, 6, -1);
setSeVolumeByWorkId( spep_7 + 0, SE054, 74 );
SE055 = playSeVer2( spep_7 + 2, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 2, SE055, 80 );

--魔貫光殺砲発射
SE056 = playSeVer2( spep_7 + 56, 1145, "",spep_7 + 140, 0, 30, -1);
setSeVolumeByWorkId( spep_7 + 56, SE056, 75 );
SE057 = playSeVer2( spep_7 + 56, 1177, "",spep_7 + 228, 0, 34, -1);
setSeVolumeByWorkId( spep_7 + 56, SE057, 79 );
SE058 = playSeVer2( spep_7 + 56, 1312, "",spep_7 + 132, 0, 24, -1);
setSeVolumeByWorkId( spep_7 + 56, SE058, 79 );

--発射中
SE059 = playSeVer2( spep_7 + 66, 1212, "",spep_7 + 234, 42, 42, 0.6);
setSeVolumeByWorkId( spep_7 + 66, SE059, 79 );
setStartTimeMs( SE059,  100 );
SE060 = playSeVer2( spep_7 + 86, 1286, "",spep_7 + 234, 20, 42, 0.6);

--白フェード
entryFade( spep_7 +92 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_8= spep_7 + 100;
------------------------------------------------------
--奥に向かう魔関光
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 54, hit_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 54, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_f, 0 );
setEffRotateKey( spep_8 + 54, hit_f, 0 );
setEffAlphaKey( spep_8 + 0, hit_f, 255 );
setEffAlphaKey( spep_8 + 54, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_8 + 0, SP_12, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 54, hit_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 54, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_b, 0 );
setEffRotateKey( spep_8 + 54, hit_b, 0 );
setEffAlphaKey( spep_8 + 0, hit_b, 255 );
setEffAlphaKey( spep_8 + 54, hit_b, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_8 + 0,  906, 52, 0x100, -1, 0, 230.1, -123.3 );
setEffShake( spep_8 + 0, shuchusen4, 52, 20 );
setEffMoveKey( spep_8 + 0, shuchusen4, 230.1, -123.3 , 0 );
setEffMoveKey( spep_8 + 52, shuchusen4, 230.1, -123.3 , 0 );

setEffScaleKey( spep_8 + 0, shuchusen4, 1.9, 1.62 );
setEffScaleKey( spep_8 + 52, shuchusen4, 1.9, 1.62 );

setEffRotateKey( spep_8 + 0, shuchusen4, 180 );
setEffRotateKey( spep_8 + 52, shuchusen4, 180 );

setEffAlphaKey( spep_8 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 52, shuchusen4, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-1 + 52, 1, 0 );

changeAnime( spep_8 + 0, 1, 108 );

setMoveKey( spep_8 + 0, 1, 140.4, 12.1 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 156, 5.6 , 0 );
setMoveKey( spep_8-3 + 4, 1, 162.6, 8.2 , 0 );
setMoveKey( spep_8-3 + 6, 1, 167.6, 3 , 0 );
setMoveKey( spep_8-3 + 8, 1, 171.9, 6.2 , 0 );
setMoveKey( spep_8-3 + 10, 1, 175.6, 1.8 , 0 );
setMoveKey( spep_8-3 + 12, 1, 179, 5.2 , 0 );
setMoveKey( spep_8-3 + 14, 1, 182, 0.6 , 0 );
setMoveKey( spep_8-3 + 16, 1, 184.8, 4.2 , 0 );
setMoveKey( spep_8-3 + 18, 1, 187.3, 0 , 0 );
setMoveKey( spep_8-3 + 20, 1, 189.8, 3.6 , 0 );
setMoveKey( spep_8-3 + 22, 1, 192.1, -0.8 , 0 );
setMoveKey( spep_8-3 + 24, 1, 194.3, 2.8 , 0 );
setMoveKey( spep_8-3 + 26, 1, 196.4, -1.3 , 0 );
setMoveKey( spep_8-3 + 28, 1, 198.4, 2.5 , 0 );
setMoveKey( spep_8-3 + 30, 1, 200.3, -1.9 , 0 );
setMoveKey( spep_8-3 + 32, 1, 202.1, 1.9 , 0 );
setMoveKey( spep_8-3 + 34, 1, 203.9, -2 , 0 );
setMoveKey( spep_8-3 + 36, 1, 205.7, 1.7 , 0 );
setMoveKey( spep_8-3 + 38, 1, 207.3, -2.7 , 0 );
setMoveKey( spep_8-3 + 40, 1, 209, 1.2 , 0 );
setMoveKey( spep_8-3 + 42, 1, 210.5, -2.7 , 0 );
setMoveKey( spep_8-3 + 44, 1, 212, -2.9 , 0 );
setMoveKey( spep_8-3 + 46, 1, 213.5, 1 , 0 );
setMoveKey( spep_8-3 + 48, 1, 214.9, -3.3 , 0 );
setMoveKey( spep_8-3 + 50, 1, 216.3, 0.6 , 0 );
setMoveKey( spep_8-1 + 52, 1, 217.7, -3.3 , 0 );

setScaleKey( spep_8 + 0, 1, 1.84,1.84);
setScaleKey( spep_8-3 + 4, 1, 1.59,1.59);
setScaleKey( spep_8-3 + 6, 1, 1.52,1.52);
setScaleKey( spep_8-3 + 8, 1, 1.48,1.48);
setScaleKey( spep_8-3 + 10, 1, 1.44,1.44);
setScaleKey( spep_8-3 + 12, 1, 1.4,1.4);
setScaleKey( spep_8-3 + 14, 1, 1.36,1.36);
setScaleKey( spep_8-3 + 16, 1, 1.33,1.33);
setScaleKey( spep_8-3 + 18, 1, 1.3,1.3);
setScaleKey( spep_8-3 + 20, 1, 1.28,1.28);
setScaleKey( spep_8-3 + 22, 1, 1.25,1.25);
setScaleKey( spep_8-3 + 24, 1, 1.23,1.23);
setScaleKey( spep_8-3 + 26, 1, 1.21,1.21);
setScaleKey( spep_8-3 + 28, 1, 1.19,1.19);
setScaleKey( spep_8-3 + 30, 1, 1.17,1.17);
setScaleKey( spep_8-3 + 32, 1, 1.16,1.16);
setScaleKey( spep_8-3 + 34, 1, 1.14,1.14);
setScaleKey( spep_8-3 + 36, 1, 1.12,1.12);
setScaleKey( spep_8-3 + 38, 1, 1.11,1.11);
setScaleKey( spep_8-3 + 40, 1, 1.09,1.09);
setScaleKey( spep_8-3 + 42, 1, 1.08,1.08);
setScaleKey( spep_8-3 + 44, 1, 1.07,1.07);
setScaleKey( spep_8-3 + 46, 1, 1.06,1.06);
setScaleKey( spep_8-3 + 48, 1, 1.05,1.05);
setScaleKey( spep_8-3 + 50, 1, 1.04,1.04);
setScaleKey( spep_8-1 + 52, 1, 1.04,1.04);

setRotateKey( spep_8 + 0, 1, -9 );
setRotateKey( spep_8-1 + 52, 1, -9 );

--SE
--敵貫く
SE061 = playSeVer2( spep_8 + 50, 1114, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 50, SE061, 133 );
SE062 = playSeVer2( spep_8 + 50, 1302, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_8 + 50, SE062, 53 );

--白フェード
entryFade( spep_8 +46 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_8 + 0, 0, 54, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_9= spep_8 + 54;
------------------------------------------------------
--爆発〜終了
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_9 + 160, finish, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 160, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 160, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 160, finish, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_9 + 0,  906, 56, 0x100, -1, 0, 40.7, 0 );
setEffShake( spep_9 + 0, shuchusen5, 56, 20 );
setEffMoveKey( spep_9 + 0, shuchusen5, 40.7, 0 , 0 );
setEffMoveKey( spep_9 + 56, shuchusen5, 40.7, 0 , 0 );

setEffScaleKey( spep_9 + 0, shuchusen5, 1.05, 1.05 );
setEffScaleKey( spep_9 + 56, shuchusen5, 1.05, 1.05 );

setEffRotateKey( spep_9 + 0, shuchusen5, 180 );
setEffRotateKey( spep_9 + 56, shuchusen5, 180 );

setEffAlphaKey( spep_9 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_9 + 56, shuchusen5, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_9-3 + 86,  906, 74, 0x100, -1, 0, 40.7, 0 );
setEffShake( spep_9-3 + 86, shuchusen6, 74, 20 );
setEffMoveKey( spep_9-3 + 86, shuchusen6, 40.7, 0 , 0 );
setEffMoveKey( spep_9-3 + 160, shuchusen6, 40.7, 0 , 0 );

setEffScaleKey( spep_9-3 + 86, shuchusen6, 1.05, 1.05 );
setEffScaleKey( spep_9-3 + 160, shuchusen6, 1.05, 1.05 );

setEffRotateKey( spep_9-3 + 86, shuchusen6, 180 );
setEffRotateKey( spep_9-3 + 160, shuchusen6, 180 );

setEffAlphaKey( spep_9-3 + 86, shuchusen6, 255 );
setEffAlphaKey( spep_9-3 + 160, shuchusen6, 255 );

--爆発
SE064 = playSeVer2( spep_9 + 58, 1067, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_9 + 58, 1159, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_9+58);
endPhase( spep_9 + 150 ); 
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--ダッシュ～横アップ～敵アップ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
dash = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_0 + 166, dash, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_0 + 166, dash, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash, 0 );
setEffRotateKey( spep_0 + 166, dash, 0 );
setEffAlphaKey( spep_0 + 0, dash, 255 );
setEffAlphaKey( spep_0 + 164, dash, 255 );
setEffAlphaKey( spep_0 + 165, dash, 255 );
setEffAlphaKey( spep_0 + 166, dash, 0 );

--敵の動き
setDisp( spep_0-3 + 146, 1, 1);
setDisp( spep_0-1 + 168, 1, 0);

changeAnime( spep_0-3 + 146, 1, 100);

setMoveKey( spep_0-3 + 146, 1, 0.4, 26.1 , 0 );
setMoveKey( spep_0-3 + 148, 1, -1.2, 22.8 , 0 );
setMoveKey( spep_0-3 + 150, 1, -2.7, 19.5 , 0 );
setMoveKey( spep_0-3 + 152, 1, -4.2, 16.2 , 0 );
setMoveKey( spep_0-3 + 154, 1, -5.7, 12.9 , 0 );
setMoveKey( spep_0-3 + 156, 1, -7.3, 9.6 , 0 );
setMoveKey( spep_0-3 + 158, 1, -8.8, 6.2 , 0 );
setMoveKey( spep_0-3 + 160, 1, -10.3, 2.9 , 0 );
setMoveKey( spep_0-3 + 162, 1, -11.8, -0.4 , 0 );
setMoveKey( spep_0-3 + 164, 1, -13.3, -3.7 , 0 );
setMoveKey( spep_0-3 + 166, 1, -14.9, -7 , 0 );
setMoveKey( spep_0-1 + 168, 1, -16.4, -10.2 , 0 );

setScaleKey( spep_0-3 + 146, 1, 1.6, 1.6 );
setScaleKey( spep_0-3 + 148, 1, 1.72, 1.72 );
setScaleKey( spep_0-3 + 150, 1, 1.83, 1.83 );
setScaleKey( spep_0-3 + 152, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 154, 1, 2.07, 2.07 );
setScaleKey( spep_0-3 + 156, 1, 2.18, 2.18 );
setScaleKey( spep_0-3 + 158, 1, 2.3, 2.3 );
setScaleKey( spep_0-3 + 160, 1, 2.41, 2.41 );
setScaleKey( spep_0-3 + 162, 1, 2.53, 2.53 );
setScaleKey( spep_0-3 + 164, 1, 2.65, 2.65 );
setScaleKey( spep_0-3 + 166, 1, 2.76, 2.76 );
setScaleKey( spep_0-1 + 168, 1, 2.88, 2.88 );

setRotateKey( spep_0-3 + 146, 1, 0 );
setRotateKey( spep_0-1 + 168, 1, 0 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 136, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 33 );

--構える
SE002 = playSeVer2( spep_0 + 10, 1233, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 20, 1006, "", 0, 0, 0, -1);

--ダッシュ音
SE004 = playSeVer2( spep_0 + 86, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 86, 1314, "",spep_0 + 240, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 86, SE005, 78 );

--ダッシュ足音
SE006 = playSeVer2( spep_0 + 100, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 100, SE006, 158 );
SE007 = playSeVer2( spep_0 + 110, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 110, SE007, 158 );
SE008 = playSeVer2( spep_0 + 122, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 122, SE008, 158 );
SE009 = playSeVer2( spep_0 + 132, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 132, SE009, 158 );
SE010 = playSeVer2( spep_0 + 136, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 136, SE010, 150 );

--向かっていく
SE011 = playSeVer2( spep_0 + 144, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE011, 44 );
setTimeStretch( SE011, 0.76, 30, 4 );

--ダッシュ音
SE012 = playSeVer2( spep_0 + 156, 1175, "",spep_0 + 256, 0, 20, 0.5);
setSeVolumeByWorkId( spep_0 + 156, SE012, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 170, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_1= spep_0 + 166;
------------------------------------------------------
--正面ダッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
dash2 = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash2, 0, 0, 0 );
setEffMoveKey( spep_1 + 86, dash2, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, dash2, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash2, 0 );
setEffRotateKey( spep_1 + 86, dash2, 0 );
setEffAlphaKey( spep_1 + 0, dash2, 255 );
setEffAlphaKey( spep_1 + 84, dash2, 255 );
setEffAlphaKey( spep_1 + 85, dash2, 255 );
setEffAlphaKey( spep_1 + 86, dash2, 0 );

--SE
--ダッシュ足音
SE013 = playSeVer2( spep_1 + 14, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 14, SE013, 168 );
SE014 = playSeVer2( spep_1 + 26, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 26, SE014, 155 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    
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
--ダッシュ足音
SE015 = playSeVer2( spep_1 + 38, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 38, SE015, 197 );
SE016 = playSeVer2( spep_1 + 48, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 48, SE016, 172 );
SE017 = playSeVer2( spep_1 + 58, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 58, SE017, 130 );

--瞬間移動
SE018 = playSeVer2( spep_1 + 72, 1109, "", 0, 0, 0, -1);

--ダッシュ足音
SE019 = playSeVer2( spep_1 + 66, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 66, SE019, 141 );

-- ** 次の準備 ** --
spep_2= spep_1 + 86;
------------------------------------------------------
--パンチ
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, panting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_f, 0 );
setEffRotateKey( spep_2 + 56, panting_f, 0 );
setEffAlphaKey( spep_2 + 0, panting_f, 255 );
setEffAlphaKey( spep_2 + 54, panting_f, 255 );
setEffAlphaKey( spep_2 + 55, panting_f, 255 );
setEffAlphaKey( spep_2 + 56, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, panting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_b, 0 );
setEffRotateKey( spep_2 + 56, panting_b, 0 );
setEffAlphaKey( spep_2 + 0, panting_b, 255 );
setEffAlphaKey( spep_2 + 54, panting_b, 255 );
setEffAlphaKey( spep_2 + 55, panting_b, 255 );
setEffAlphaKey( spep_2 + 56, panting_b, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2-3 + 16, 1, 106 );
changeAnime( spep_2-3 + 38, 1, 108 );

setMoveKey( spep_2 + 0, 1, 141.3, -30.7 , 0 );
setMoveKey( spep_2-3 + 6, 1, 141.3, -30.7 , 0 );
setMoveKey( spep_2-3 + 8, 1, 142, -34.4 , 0 );
setMoveKey( spep_2-3 + 10, 1, 142.6, -38.2 , 0 );
setMoveKey( spep_2-3 + 12, 1, 141.3, -30.7 , 0 );
setMoveKey( spep_2-3 + 15, 1, 142.6, -38.2 , 0 );
setMoveKey( spep_2-3 + 16, 1, 77.9, 103.6 , 0 );
setMoveKey( spep_2-3 + 18, 1, 90.4, 42.1 , 0 );
setMoveKey( spep_2-3 + 20, 1, 12.4, 49.4 , 0 );
setMoveKey( spep_2-3 + 22, 1, 79.2, 14.5 , 0 );
setMoveKey( spep_2-3 + 24, 1, 83.7, 69.5 , 0 );
setMoveKey( spep_2-3 + 26, 1, 65.7, 59.4 , 0 );
setMoveKey( spep_2-3 + 28, 1, 71.9, 48.5 , 0 );
setMoveKey( spep_2-3 + 30, 1, 66.7, 61.4 , 0 );
setMoveKey( spep_2-3 + 32, 1, 72.9, 50.5 , 0 );
setMoveKey( spep_2-3 + 34, 1, 67.8, 63.4 , 0 );
setMoveKey( spep_2-3 + 37, 1, 74, 52.5 , 0 );
setMoveKey( spep_2-3 + 38, 1, 129.4, 43.3 , 0 );
setMoveKey( spep_2-3 + 40, 1, 140.7, 24.1 , 0 );
setMoveKey( spep_2-3 + 42, 1, 140.7, 28.8 , 0 );
setMoveKey( spep_2-3 + 44, 1, 152, 9.7 , 0 );
setMoveKey( spep_2-3 + 46, 1, 152.1, 14.3 , 0 );
setMoveKey( spep_2-3 + 48, 1, 163.4, -4.8 , 0 );
setMoveKey( spep_2-3 + 50, 1, 163.5, -0.1 , 0 );
setMoveKey( spep_2-3 + 52, 1, 174.9, -19.2 , 0 );
setMoveKey( spep_2-3 + 54, 1, 175, -14.5 , 0 );
setMoveKey( spep_2-3 + 56, 1, 186.4, -33.6 , 0 );
setMoveKey( spep_2-3 + 58, 1, 186.5, -29 , 0 );

setScaleKey( spep_2 + 0, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 15, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 16, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 18, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 20, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 22, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 24, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 26, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 28, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 30, 1, 2.4,2.4);
setScaleKey( spep_2-3 + 32, 1, 2.4,2.4);
setScaleKey( spep_2-3 + 34, 1, 2.4,2.4);
setScaleKey( spep_2-3 + 37, 1, 2.4,2.4);
setScaleKey( spep_2-3 + 38, 1, 2.6,2.6);
setScaleKey( spep_2-3 + 40, 1, 2.4,2.4);
setScaleKey( spep_2-3 + 42, 1, 2.2,2.2);
setScaleKey( spep_2-3 + 44, 1, 2,2);
setScaleKey( spep_2-3 + 46, 1, 1.8,1.8);
setScaleKey( spep_2-3 + 48, 1, 1.6,1.6);
setScaleKey( spep_2-3 + 50, 1, 1.4,1.4);
setScaleKey( spep_2-3 + 52, 1, 1.3,1.3);
setScaleKey( spep_2-3 + 54, 1, 1.1,1.1);
setScaleKey( spep_2-3 + 56, 1, 0.9,0.9);
setScaleKey( spep_2-3 + 58, 1, 0.7,0.7);

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 15, 1, 0 );
setRotateKey( spep_2-3 + 16, 1, -45.9 );
setRotateKey( spep_2-3 + 37, 1, -45.9 );
setRotateKey( spep_2-3 + 38, 1, 3 );
setRotateKey( spep_2-3 + 40, 1, 3.7 );
setRotateKey( spep_2-3 + 42, 1, 4.3 );
setRotateKey( spep_2-3 + 44, 1, 5 );
setRotateKey( spep_2-3 + 46, 1, 5.6 );
setRotateKey( spep_2-3 + 48, 1, 6.3 );
setRotateKey( spep_2-3 + 50, 1, 6.9 );
setRotateKey( spep_2-3 + 52, 1, 7.6 );
setRotateKey( spep_2-3 + 54, 1, 8.2 );
setRotateKey( spep_2-3 + 56, 1, 8.9 );
setRotateKey( spep_2-3 + 58, 1, 9.5 );

--SE
--瞬間移動
SE020 = playSeVer2( spep_2 + 0, 1109, "",spep_2 + 32, 0, 16, -1);

--パンチ
SE021 = playSeVer2( spep_2 + 4, 1189, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 14, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE023 = playSeVer2( spep_2 + 36, 1183, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_3= spep_2 + 56;
------------------------------------------------------
--俯瞰～正面張り手
------------------------------------------------------
-- ** エフェクト等 ** --
tensioner_f = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tensioner_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 98, tensioner_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tensioner_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 98, tensioner_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tensioner_f, 0 );
setEffRotateKey( spep_3 + 98, tensioner_f, 0 );
setEffAlphaKey( spep_3 + 0, tensioner_f, 255 );
setEffAlphaKey( spep_3 + 96, tensioner_f, 255 );
setEffAlphaKey( spep_3 + 97, tensioner_f, 255 );
setEffAlphaKey( spep_3 + 98, tensioner_f, 0 );

-- ** エフェクト等 ** --
tensioner_b = entryEffect( spep_3 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tensioner_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 98, tensioner_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tensioner_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 98, tensioner_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tensioner_b, 0 );
setEffRotateKey( spep_3 + 98, tensioner_b, 0 );
setEffAlphaKey( spep_3 + 0, tensioner_b, 255 );
setEffAlphaKey( spep_3 + 96, tensioner_b, 255 );
setEffAlphaKey( spep_3 + 97, tensioner_b, 255 );
setEffAlphaKey( spep_3 + 98, tensioner_b, 0 );

--敵の動き
setDisp( spep_3-1 + 62, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );

setMoveKey( spep_3 + 0, 1, -620, -604.2 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -444.2, -426.4 , 0 );
setMoveKey( spep_3-3 + 4, 1, -268.3, -248.6 , 0 );
setMoveKey( spep_3-3 + 6, 1, -92.5, -70.8 , 0 );
setMoveKey( spep_3-3 + 8, 1, 83.4, 106.9 , 0 );
setMoveKey( spep_3-3 + 10, 1, 88.7, 111.9 , 0 );
setMoveKey( spep_3-3 + 12, 1, 94.1, 116.9 , 0 );
setMoveKey( spep_3-3 + 14, 1, 99.4, 121.8 , 0 );
setMoveKey( spep_3-3 + 16, 1, 104.8, 126.8 , 0 );
setMoveKey( spep_3-3 + 18, 1, 110.1, 131.8 , 0 );
setMoveKey( spep_3-3 + 20, 1, 115.5, 136.7 , 0 );
setMoveKey( spep_3-3 + 22, 1, 120.8, 141.7 , 0 );
setMoveKey( spep_3-3 + 24, 1, 153, 115.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 184.9, 172.8 , 0 );
setMoveKey( spep_3-3 + 28, 1, 119.9, 136.4 , 0 );
setMoveKey( spep_3-3 + 30, 1, 151.8, 123.2 , 0 );
setMoveKey( spep_3-3 + 32, 1, 184.9, 172.8 , 0 );
setMoveKey( spep_3-3 + 34, 1, 119.9, 136.4 , 0 );
setMoveKey( spep_3-3 + 36, 1, 151.8, 123.2 , 0 );
setMoveKey( spep_3-3 + 38, 1, 186.1, 165.3 , 0 );
setMoveKey( spep_3-3 + 40, 1, 118.6, 143.9 , 0 );
setMoveKey( spep_3-3 + 42, 1, 153, 115.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 184.9, 172.8 , 0 );
setMoveKey( spep_3-3 + 46, 1, 119.9, 136.4 , 0 );
setMoveKey( spep_3-3 + 48, 1, 151.8, 123.2 , 0 );
setMoveKey( spep_3-3 + 50, 1, 118.6, 143.9 , 0 );
setMoveKey( spep_3-3 + 52, 1, 153, 115.7 , 0 );
setMoveKey( spep_3-3 + 54, 1, 184.9, 172.8 , 0 );
setMoveKey( spep_3-3 + 56, 1, 119.9, 136.4 , 0 );
setMoveKey( spep_3-3 + 58, 1, 151.8, 123.2 , 0 );
setMoveKey( spep_3-1 + 62, 1, 184.9, 172.8 , 0 );

setScaleKey( spep_3 + 0, 1, 3, 3 );
setScaleKey( spep_3-1 + 62, 1, 3, 3 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-1 + 62, 1, 0 );

--SE
--ラッシュ
SE024 = playSeVer2( spep_3 + 20, 1009, "",spep_3 + 40, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 20, SE024, 87 );
SE025 = playSeVer2( spep_3 + 20, 1110, "",spep_3 + 40, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 20, SE025, 89 );
SE026 = playSeVer2( spep_3 + 28, 1110, "",spep_3 + 48, 0, 10, -1);
SE027 = playSeVer2( spep_3 + 34, 1010, "",spep_3 + 54, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 34, SE027, 82 );
SE028 = playSeVer2( spep_3 + 34, 1110, "",spep_3 + 54, 0, 10, -1);
setPitch( spep_3 + 34, SE028, -400 );
setTimeStretch( SE028, 0.73, 30, 4 );
SE029 = playSeVer2( spep_3 + 40, 1110, "",spep_3 + 60, 0, 12, -1);
SE030 = playSeVer2( spep_3 + 46, 1110, "",spep_3 + 66, 0, 10, -1);
setPitch( spep_3 + 46, SE030, -200 );
setTimeStretch( SE030, 0.87, 30, 4 );
SE031 = playSeVer2( spep_3 + 54, 1110, "",spep_3 + 74, 0, 10, -1);
SE032 = playSeVer2( spep_3 + 62, 1110, "",spep_3 + 82, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 62, SE032, 70 );
setPitch( spep_3 + 62, SE032, 100 );
setTimeStretch( SE032, 1.07, 30, 4 );

--張り手
SE033 = playSeVer2( spep_3 + 62, 1110, "", 0, 0, 0, -1);
setPitch( spep_3 + 62, SE033, -400 );
setTimeStretch( SE033, 0.73, 30, 4 );
SE034 = playSeVer2( spep_3 + 62, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 62, SE034, 86 );
SE035 = playSeVer2( spep_3 + 82, 1110, "", 0, 0, 0, -1);
setPitch( spep_3 + 82, SE035, -400 );
setTimeStretch( SE035, 0.73, 30, 4 );
SE036 = playSeVer2( spep_3 + 82, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 82, SE036, 84 );

--画面遷移
SE037 = playSeVer2( spep_3 + 96, 8, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_3 +96 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_4= spep_3 + 98;
------------------------------------------------------
--エルボ～パンチ
------------------------------------------------------
-- ** エフェクト等 ** --
elbow_f = entryEffect( spep_4 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, elbow_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 102, elbow_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, elbow_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 102, elbow_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, elbow_f, 0 );
setEffRotateKey( spep_4 + 102, elbow_f, 0 );
setEffAlphaKey( spep_4 + 0, elbow_f, 255 );
setEffAlphaKey( spep_4 + 102, elbow_f, 255 );

-- ** エフェクト等 ** --
elbow_b = entryEffect( spep_4 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, elbow_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 102, elbow_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 102, elbow_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, elbow_b, 0 );
setEffRotateKey( spep_4 + 102, elbow_b, 0 );
setEffAlphaKey( spep_4 + 0, elbow_b, 255 );
setEffAlphaKey( spep_4 + 102, elbow_b, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_4-3 + 20,  906, 12, 0x100, -1, 0, 23.4, 0.8 );
setEffShake( spep_4-3 + 20, shuchusen1, 12, 20 );
setEffMoveKey( spep_4-3 + 20, shuchusen1, 23.4, 0.8 , 0 );
setEffMoveKey( spep_4-3 + 32, shuchusen1, 23.4, 0.8 , 0 );

setEffScaleKey( spep_4-3 + 20, shuchusen1, 1.05, 1.05 );
setEffScaleKey( spep_4-3 + 32, shuchusen1, 1.05, 1.05 );

setEffRotateKey( spep_4-3 + 20, shuchusen1, 0 );
setEffRotateKey( spep_4-3 + 32, shuchusen1, 0 );

setEffAlphaKey( spep_4-3 + 20, shuchusen1, 255 );
setEffAlphaKey( spep_4-3 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_4-3 + 30, shuchusen1, 128 );
setEffAlphaKey( spep_4-3 + 32, shuchusen1, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_4-3 + 64,  906, 12, 0x100, -1, 0, 23.4, 0.8 );
setEffShake( spep_4-3 + 64, shuchusen2, 12, 20 );
setEffMoveKey( spep_4-3 + 64, shuchusen2, 23.4, 0.8 , 0 );
setEffMoveKey( spep_4-3 + 76, shuchusen2, 23.4, 0.8 , 0 );

setEffScaleKey( spep_4-3 + 64, shuchusen2, 1.05, 1.05 );
setEffScaleKey( spep_4-3 + 76, shuchusen2, 1.05, 1.05 );

setEffRotateKey( spep_4-3 + 64, shuchusen2, 0 );
setEffRotateKey( spep_4-3 + 76, shuchusen2, 0 );

setEffAlphaKey( spep_4-3 + 64, shuchusen2, 255 );
setEffAlphaKey( spep_4-3 + 72, shuchusen2, 255 );
setEffAlphaKey( spep_4-3 + 74, shuchusen2, 128 );
setEffAlphaKey( spep_4-3 + 76, shuchusen2, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 102, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4-3 + 20, 1, 108 );

setMoveKey( spep_4 + 0, 1, 17.5, 73.5 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 14.2, 45.2 , 0 );
setMoveKey( spep_4-3 + 4, 1, 12.8, 34.1 , 0 );
setMoveKey( spep_4-3 + 6, 1, 12, 26.3 , 0 );
setMoveKey( spep_4-3 + 8, 1, 11.2, 20.2 , 0 );
setMoveKey( spep_4-3 + 10, 1, 10.6, 15.4 , 0 );
setMoveKey( spep_4-3 + 12, 1, 10.2, 11.7 , 0 );
setMoveKey( spep_4-3 + 14, 1, 9.9, 9 , 0 );
setMoveKey( spep_4-3 + 16, 1, 9.7, 7.3 , 0 );
setMoveKey( spep_4-3 + 19, 1, 9.5, 6.7 , 0 );
setMoveKey( spep_4-3 + 20, 1, -1.6, 118.4 , 0 );
setMoveKey( spep_4-3 + 22, 1, 1.8, 76.1 , 0 );
setMoveKey( spep_4-3 + 24, 1, 2.8, 89.3 , 0 );
setMoveKey( spep_4-3 + 26, 1, 3.5, 74.6 , 0 );
setMoveKey( spep_4-3 + 28, 1, 4.1, 86.4 , 0 );
setMoveKey( spep_4-3 + 30, 1, 4.5, 78.6 , 0 );
setMoveKey( spep_4-3 + 32, 1, 17.3, 89.9 , 0 );
setMoveKey( spep_4-3 + 34, 1, 28, 90.4 , 0 );
setMoveKey( spep_4-3 + 36, 1, 37, 98.3 , 0 );
setMoveKey( spep_4-3 + 38, 1, 44.8, 98.3 , 0 );
setMoveKey( spep_4-3 + 40, 1, 51.4, 104.3 , 0 );
setMoveKey( spep_4-3 + 42, 1, 57.1, 104.1 , 0 );
setMoveKey( spep_4-3 + 44, 1, 62, 108.6 , 0 );
setMoveKey( spep_4-3 + 46, 1, 66.1, 108.8 , 0 );
setMoveKey( spep_4-3 + 48, 1, 69.7, 111.2 , 0 );
setMoveKey( spep_4-3 + 50, 1, 72.6, 112.5 , 0 );
setMoveKey( spep_4-3 + 52, 1, 75.1, 113.6 , 0 );
setMoveKey( spep_4-3 + 54, 1, 77.1, 114.5 , 0 );
setMoveKey( spep_4-3 + 56, 1, 78.7, 115.2 , 0 );
setMoveKey( spep_4-3 + 58, 1, 79.8, 115.7 , 0 );
setMoveKey( spep_4-3 + 60, 1, 80.7, 116 , 0 );
setMoveKey( spep_4-3 + 62, 1, 81, 116.3 , 0 );
setMoveKey( spep_4-3 + 64, 1, 116, 71.3 , 0 );
setMoveKey( spep_4-3 + 66, 1, 90.6, 74.5 , 0 );
setMoveKey( spep_4-3 + 68, 1, 83.9, 11.8 , 0 );
setMoveKey( spep_4-3 + 70, 1, 82.9, 59 , 0 );
setMoveKey( spep_4-3 + 72, 1, 82.3, 16.6 , 0 );
setMoveKey( spep_4-3 + 74, 1, 76.2, 50.3 , 0 );
setMoveKey( spep_4-3 + 76, 1, 64.6, 23.7 , 0 );
setMoveKey( spep_4-3 + 78, 1, 47.8, 47.1 , 0 );
setMoveKey( spep_4-3 + 80, 1, 168.9, 47.4 , 0 );
setMoveKey( spep_4-3 + 82, 1, 201.1, 71.8 , 0 );
setMoveKey( spep_4-3 + 84, 1, 216, 64.1 , 0 );
setMoveKey( spep_4-3 + 86, 1, 222.1, 77.8 , 0 );
setMoveKey( spep_4-3 + 88, 1, 223.6, 71 , 0 );
setMoveKey( spep_4-3 + 90, 1, 222.9, 81.7 , 0 );
setMoveKey( spep_4-3 + 92, 1, 221.5, 76.2 , 0 );
setMoveKey( spep_4-3 + 94, 1, 220.4, 82.8 , 0 );
setMoveKey( spep_4-3 + 96, 1, 219.9, 78.9 , 0 );
setMoveKey( spep_4-3 + 98, 1, 220, 84.9 , 0 );
setMoveKey( spep_4-3 + 100, 1, 220.5, 82.5 , 0 );
setMoveKey( spep_4-1 + 102, 1, 220.7, 82.7 , 0 );

setScaleKey( spep_4 + 0, 1, 3.43,3.43);
setScaleKey( spep_4-3 + 4, 1, 2.5,2.5);
setScaleKey( spep_4-3 + 6, 1, 2.32,2.32);
setScaleKey( spep_4-3 + 8, 1, 2.18,2.18);
setScaleKey( spep_4-3 + 10, 1, 2.06,2.06);
setScaleKey( spep_4-3 + 12, 1, 1.99,1.99);
setScaleKey( spep_4-3 + 14, 1, 1.92,1.92);
setScaleKey( spep_4-3 + 16, 1, 1.88,1.88);
setScaleKey( spep_4-3 + 19, 1, 1.87,1.87);
setScaleKey( spep_4-3 + 20, 1, 2.64,2.64);
setScaleKey( spep_4-3 + 22, 1, 2.24,2.24);
setScaleKey( spep_4-3 + 24, 1, 2.14,2.14);
setScaleKey( spep_4-3 + 26, 1, 2.11,2.11);
setScaleKey( spep_4-3 + 62, 1, 2.11,2.11);
setScaleKey( spep_4-3 + 64, 1, 3.52,3.52);
setScaleKey( spep_4-3 + 66, 1, 3.02,3.02);
setScaleKey( spep_4-3 + 68, 1, 2.86,2.86);
setScaleKey( spep_4-3 + 70, 1, 2.81,2.81);
setScaleKey( spep_4-3 + 78, 1, 2.81,2.81);
setScaleKey( spep_4-3 + 80, 1, 2.17,2.17);
setScaleKey( spep_4-3 + 82, 1, 1.91,1.91);
setScaleKey( spep_4-3 + 84, 1, 1.72,1.72);
setScaleKey( spep_4-3 + 86, 1, 1.57,1.57);
setScaleKey( spep_4-3 + 88, 1, 1.45,1.45);
setScaleKey( spep_4-3 + 90, 1, 1.34,1.34);
setScaleKey( spep_4-3 + 92, 1, 1.25,1.25);
setScaleKey( spep_4-3 + 94, 1, 1.18,1.18);
setScaleKey( spep_4-3 + 96, 1, 1.13,1.13);
setScaleKey( spep_4-3 + 98, 1, 1.08,1.08);
setScaleKey( spep_4-3 + 100, 1, 1.06,1.06);
setScaleKey( spep_4-1 + 102, 1, 1.05,1.05);

setRotateKey( spep_4 + 0, 1, -56.4 );
setRotateKey( spep_4-3 + 19, 1, -56.4 );
setRotateKey( spep_4-3 + 20, 1, -20.3 );
setRotateKey( spep_4-3 + 30, 1, -20.3 );
setRotateKey( spep_4-3 + 32, 1, -21.7 );
setRotateKey( spep_4-3 + 34, 1, -22.9 );
setRotateKey( spep_4-3 + 36, 1, -23.9 );
setRotateKey( spep_4-3 + 38, 1, -24.7 );
setRotateKey( spep_4-3 + 40, 1, -25.4 );
setRotateKey( spep_4-3 + 42, 1, -26 );
setRotateKey( spep_4-3 + 44, 1, -26.6 );
setRotateKey( spep_4-3 + 46, 1, -27 );
setRotateKey( spep_4-3 + 48, 1, -27.4 );
setRotateKey( spep_4-3 + 50, 1, -27.7 );
setRotateKey( spep_4-3 + 52, 1, -28 );
setRotateKey( spep_4-3 + 54, 1, -28.2 );
setRotateKey( spep_4-3 + 56, 1, -28.4 );
setRotateKey( spep_4-3 + 58, 1, -28.5 );
setRotateKey( spep_4-3 + 60, 1, -28.6 );
setRotateKey( spep_4-3 + 62, 1, -28.7 );
setRotateKey( spep_4-3 + 64, 1, -11.7 );
setRotateKey( spep_4-3 + 66, 1, -12 );
setRotateKey( spep_4-3 + 68, 1, -12.4 );
setRotateKey( spep_4-3 + 70, 1, -12.7 );
setRotateKey( spep_4-3 + 72, 1, -13 );
setRotateKey( spep_4-3 + 74, 1, -13.3 );
setRotateKey( spep_4-3 + 76, 1, -13.6 );
setRotateKey( spep_4-3 + 78, 1, -13.9 );
setRotateKey( spep_4-3 + 84, 1, -13.9 );
setRotateKey( spep_4-3 + 86, 1, -13.8 );
setRotateKey( spep_4-1 + 102, 1, -13.8 );

--SE
--肘打ち
SE038 = playSeVer2( spep_4 + 10, 1189, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_4 + 16, 1190, "",spep_4 + 68, 0, 30, -1);
SE040 = playSeVer2( spep_4 + 16, 1182, "",spep_4 + 78, 0, 30, -1);
setSeVolumeByWorkId( spep_4 + 16, SE040, 90 );
SE041 = playSeVer2( spep_4 + 16, 1009, "", 0, 0, 0, -1);

--殴り飛ばし
SE042 = playSeVer2( spep_4 + 60, 1187, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_4 +16 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 +60 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 +94 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 102, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 102;
------------------------------------------------------
--構えアップ
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_5 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_5 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_5 + 110, tame, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tame, 0 );
setEffRotateKey( spep_5 + 110, tame, 0 );
setEffAlphaKey( spep_5 + 0, tame, 255 );
setEffAlphaKey( spep_5 + 110, tame, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_5 + 0,  906, 108, 0x100, -1, 0, 0, -1.2 );
setEffShake( spep_5 + 0, shuchusen3, 108, 20 );
setEffMoveKey( spep_5 + 0, shuchusen3, 0, -1.2 , 0 );
setEffMoveKey( spep_5 + 108, shuchusen3, 0, -1.2 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_5 + 108, shuchusen3, 1.4, 1.4 );

setEffRotateKey( spep_5 + 0, shuchusen3, 180 );
setEffRotateKey( spep_5 + 108, shuchusen3, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 108, shuchusen3, 255 );

--顔カットインのタイミング指定
spep_x=spep_5 +8;

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
--SE
--魔貫光殺砲溜め
SE043 = playSeVer2( spep_5 + 0, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE043, 68 );
SE044 = playSeVer2( spep_5 + 0, 1252, "",spep_5 + 120, 0, 8, -1);
setSeVolumeByWorkId( spep_5 + 0, SE044, 81 );
SE045 = playSeVer2( spep_5 + 0, 1295, "",spep_5 + 120, 0, 8, -1);
setSeVolumeByWorkId( spep_5 + 0, SE045, 72 );
setPitch( spep_5 + 0, SE045, -400 );
setTimeStretch( SE045, 0.73, 30, 4 );
SE046 = playSeVer2( spep_5 + 0, 1038, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE046, 89 );
SE047 = playSeVer2( spep_5 + 0, 1243, "",spep_5 + 120, 0, 8, -1);
setSeVolumeByWorkId( spep_5 + 0, SE047, 74 );
SE048 = playSeVer2( spep_5 + 4, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 4, SE048, 80 );

--顔カットイン
--SE049 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_5 +102 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 110;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 86, shuchusen, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

--白フェード
entryFade( spep_6 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7= spep_6 + 94;
------------------------------------------------------
--魔関光殺法
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_7 + 100, beam, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, beam, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, beam, 0 );
setEffRotateKey( spep_7 + 100, beam, 0 );
setEffAlphaKey( spep_7 + 0, beam, 255 );
setEffAlphaKey( spep_7 + 100, beam, 255 );

--SE
--発射前溜め
SE051 = playSeVer2( spep_7 + 0, 1252, "",spep_7 + 58, 0, 8, -1);
setSeVolumeByWorkId( spep_7 + 0, SE051, 81 );
SE052 = playSeVer2( spep_7 + 0, 1295, "",spep_7 + 58, 0, 8, -1);
setSeVolumeByWorkId( spep_7 + 0, SE052, 72 );
setPitch( spep_7 + 0, SE052, -400 );
setTimeStretch( SE052, 0.73, 30, 4 );
SE053 = playSeVer2( spep_7 + 0, 1038, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 0, SE053, 88 );
SE054 = playSeVer2( spep_7 + 0, 1243, "",spep_7 + 58, 0, 6, -1);
setSeVolumeByWorkId( spep_7 + 0, SE054, 74 );
SE055 = playSeVer2( spep_7 + 2, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 2, SE055, 80 );

--魔貫光殺砲発射
SE056 = playSeVer2( spep_7 + 56, 1145, "",spep_7 + 140, 0, 30, -1);
setSeVolumeByWorkId( spep_7 + 56, SE056, 75 );
SE057 = playSeVer2( spep_7 + 56, 1177, "",spep_7 + 228, 0, 34, -1);
setSeVolumeByWorkId( spep_7 + 56, SE057, 79 );
SE058 = playSeVer2( spep_7 + 56, 1312, "",spep_7 + 132, 0, 24, -1);
setSeVolumeByWorkId( spep_7 + 56, SE058, 79 );

--発射中
SE059 = playSeVer2( spep_7 + 66, 1212, "",spep_7 + 234, 42, 42, 0.6);
setSeVolumeByWorkId( spep_7 + 66, SE059, 79 );
setStartTimeMs( SE059,  100 );
SE060 = playSeVer2( spep_7 + 86, 1286, "",spep_7 + 234, 20, 42, 0.6);

--白フェード
entryFade( spep_7 +92 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_8= spep_7 + 100;
------------------------------------------------------
--奥に向かう魔関光
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_8 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 54, hit_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 54, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_f, 0 );
setEffRotateKey( spep_8 + 54, hit_f, 0 );
setEffAlphaKey( spep_8 + 0, hit_f, 255 );
setEffAlphaKey( spep_8 + 54, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_8 + 0, SP_12x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 54, hit_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 54, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_b, 0 );
setEffRotateKey( spep_8 + 54, hit_b, 0 );
setEffAlphaKey( spep_8 + 0, hit_b, 255 );
setEffAlphaKey( spep_8 + 54, hit_b, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_8 + 0,  906, 52, 0x100, -1, 0, 230.1, -123.3 );
setEffShake( spep_8 + 0, shuchusen4, 52, 20 );
setEffMoveKey( spep_8 + 0, shuchusen4, 230.1, -123.3 , 0 );
setEffMoveKey( spep_8 + 52, shuchusen4, 230.1, -123.3 , 0 );

setEffScaleKey( spep_8 + 0, shuchusen4, 1.9, 1.62 );
setEffScaleKey( spep_8 + 52, shuchusen4, 1.9, 1.62 );

setEffRotateKey( spep_8 + 0, shuchusen4, 180 );
setEffRotateKey( spep_8 + 52, shuchusen4, 180 );

setEffAlphaKey( spep_8 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 52, shuchusen4, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-1 + 52, 1, 0 );

changeAnime( spep_8 + 0, 1, 108 );

setMoveKey( spep_8 + 0, 1, 140.4, 12.1 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 156, 5.6 , 0 );
setMoveKey( spep_8-3 + 4, 1, 162.6, 8.2 , 0 );
setMoveKey( spep_8-3 + 6, 1, 167.6, 3 , 0 );
setMoveKey( spep_8-3 + 8, 1, 171.9, 6.2 , 0 );
setMoveKey( spep_8-3 + 10, 1, 175.6, 1.8 , 0 );
setMoveKey( spep_8-3 + 12, 1, 179, 5.2 , 0 );
setMoveKey( spep_8-3 + 14, 1, 182, 0.6 , 0 );
setMoveKey( spep_8-3 + 16, 1, 184.8, 4.2 , 0 );
setMoveKey( spep_8-3 + 18, 1, 187.3, 0 , 0 );
setMoveKey( spep_8-3 + 20, 1, 189.8, 3.6 , 0 );
setMoveKey( spep_8-3 + 22, 1, 192.1, -0.8 , 0 );
setMoveKey( spep_8-3 + 24, 1, 194.3, 2.8 , 0 );
setMoveKey( spep_8-3 + 26, 1, 196.4, -1.3 , 0 );
setMoveKey( spep_8-3 + 28, 1, 198.4, 2.5 , 0 );
setMoveKey( spep_8-3 + 30, 1, 200.3, -1.9 , 0 );
setMoveKey( spep_8-3 + 32, 1, 202.1, 1.9 , 0 );
setMoveKey( spep_8-3 + 34, 1, 203.9, -2 , 0 );
setMoveKey( spep_8-3 + 36, 1, 205.7, 1.7 , 0 );
setMoveKey( spep_8-3 + 38, 1, 207.3, -2.7 , 0 );
setMoveKey( spep_8-3 + 40, 1, 209, 1.2 , 0 );
setMoveKey( spep_8-3 + 42, 1, 210.5, -2.7 , 0 );
setMoveKey( spep_8-3 + 44, 1, 212, -2.9 , 0 );
setMoveKey( spep_8-3 + 46, 1, 213.5, 1 , 0 );
setMoveKey( spep_8-3 + 48, 1, 214.9, -3.3 , 0 );
setMoveKey( spep_8-3 + 50, 1, 216.3, 0.6 , 0 );
setMoveKey( spep_8-1 + 52, 1, 217.7, -3.3 , 0 );

setScaleKey( spep_8 + 0, 1, 1.84,1.84);
setScaleKey( spep_8-3 + 4, 1, 1.59,1.59);
setScaleKey( spep_8-3 + 6, 1, 1.52,1.52);
setScaleKey( spep_8-3 + 8, 1, 1.48,1.48);
setScaleKey( spep_8-3 + 10, 1, 1.44,1.44);
setScaleKey( spep_8-3 + 12, 1, 1.4,1.4);
setScaleKey( spep_8-3 + 14, 1, 1.36,1.36);
setScaleKey( spep_8-3 + 16, 1, 1.33,1.33);
setScaleKey( spep_8-3 + 18, 1, 1.3,1.3);
setScaleKey( spep_8-3 + 20, 1, 1.28,1.28);
setScaleKey( spep_8-3 + 22, 1, 1.25,1.25);
setScaleKey( spep_8-3 + 24, 1, 1.23,1.23);
setScaleKey( spep_8-3 + 26, 1, 1.21,1.21);
setScaleKey( spep_8-3 + 28, 1, 1.19,1.19);
setScaleKey( spep_8-3 + 30, 1, 1.17,1.17);
setScaleKey( spep_8-3 + 32, 1, 1.16,1.16);
setScaleKey( spep_8-3 + 34, 1, 1.14,1.14);
setScaleKey( spep_8-3 + 36, 1, 1.12,1.12);
setScaleKey( spep_8-3 + 38, 1, 1.11,1.11);
setScaleKey( spep_8-3 + 40, 1, 1.09,1.09);
setScaleKey( spep_8-3 + 42, 1, 1.08,1.08);
setScaleKey( spep_8-3 + 44, 1, 1.07,1.07);
setScaleKey( spep_8-3 + 46, 1, 1.06,1.06);
setScaleKey( spep_8-3 + 48, 1, 1.05,1.05);
setScaleKey( spep_8-3 + 50, 1, 1.04,1.04);
setScaleKey( spep_8-1 + 52, 1, 1.04,1.04);

setRotateKey( spep_8 + 0, 1, -9 );
setRotateKey( spep_8-1 + 52, 1, -9 );

--SE
--敵貫く
SE061 = playSeVer2( spep_8 + 50, 1114, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 50, SE061, 133 );
SE062 = playSeVer2( spep_8 + 50, 1302, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_8 + 50, SE062, 53 );

--白フェード
entryFade( spep_8 +46 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_8 + 0, 0, 54, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_9= spep_8 + 54;
------------------------------------------------------
--爆発〜終了
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_13x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_9 + 160, finish, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 160, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 160, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 160, finish, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_9 + 0,  906, 56, 0x100, -1, 0, 40.7, 0 );
setEffShake( spep_9 + 0, shuchusen5, 56, 20 );
setEffMoveKey( spep_9 + 0, shuchusen5, 40.7, 0 , 0 );
setEffMoveKey( spep_9 + 56, shuchusen5, 40.7, 0 , 0 );

setEffScaleKey( spep_9 + 0, shuchusen5, 1.05, 1.05 );
setEffScaleKey( spep_9 + 56, shuchusen5, 1.05, 1.05 );

setEffRotateKey( spep_9 + 0, shuchusen5, 180 );
setEffRotateKey( spep_9 + 56, shuchusen5, 180 );

setEffAlphaKey( spep_9 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_9 + 56, shuchusen5, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_9-3 + 86,  906, 74, 0x100, -1, 0, 40.7, 0 );
setEffShake( spep_9-3 + 86, shuchusen6, 74, 20 );
setEffMoveKey( spep_9-3 + 86, shuchusen6, 40.7, 0 , 0 );
setEffMoveKey( spep_9-3 + 160, shuchusen6, 40.7, 0 , 0 );

setEffScaleKey( spep_9-3 + 86, shuchusen6, 1.05, 1.05 );
setEffScaleKey( spep_9-3 + 160, shuchusen6, 1.05, 1.05 );

setEffRotateKey( spep_9-3 + 86, shuchusen6, 180 );
setEffRotateKey( spep_9-3 + 160, shuchusen6, 180 );

setEffAlphaKey( spep_9-3 + 86, shuchusen6, 255 );
setEffAlphaKey( spep_9-3 + 160, shuchusen6, 255 );

--爆発
SE064 = playSeVer2( spep_9 + 58, 1067, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_9 + 58, 1159, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_9+58);
endPhase( spep_9 + 150 );
end