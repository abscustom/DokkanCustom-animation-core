--1023160:ハッチャン&人造人間17号_ダブルミッション8+17
--sp_effect_b1_00172

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
SP_01=	158481	;--	待機からパンチ
SP_02=	158483	;--	様子を見る
SP_03=	158485	;--	突進
SP_04=	158486	;--	エルボー
SP_05=	158488	;--	アッパー
SP_06=	158489	;--	回し蹴り
SP_07=	158491	;--	爆風から二人
SP_08=	158492	;--	背景
SP_09=	158493	;--	背景(キャラ込み)
SP_10=	158495	;--	背景
SP_11=	158496	;--	背景

--エフェクト(てき)
SP_01x=	158482	;--	待機からパンチ	(敵)
SP_02x=	158484	;--	様子を見る	(敵)
SP_03x=	158532	;--	突進	
SP_04x=	158487	;--	エルボー	(敵)
SP_05x=	158488	;--	アッパー	
SP_06x=	158490	;--	回し蹴り	(敵)
SP_07x=	158491	;--	爆風から二人	
SP_08x=	158492	;--	背景	
SP_09x=	158494	;--	背景(キャラ込み)	(敵)
SP_10x=	158495	;--	背景	
SP_11x=	158496	;--	背景	

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
--待機からパンチ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
alert_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, alert_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 148, alert_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, alert_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 148, alert_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, alert_f, 0 );
setEffRotateKey( spep_0 + 148, alert_f, 0 );
setEffAlphaKey( spep_0 + 0, alert_f, 255 );
setEffAlphaKey( spep_0 + 148, alert_f, 255 );

-- ** エフェクト等 ** --
alert_b = entryEffect( spep_0 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, alert_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 148, alert_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, alert_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 148, alert_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, alert_b, 0 );
setEffRotateKey( spep_0 + 148, alert_b, 0 );
setEffAlphaKey( spep_0 + 0, alert_b, 255 );
setEffAlphaKey( spep_0 + 148, alert_b, 255 );

--敵の動き
setDisp( spep_0-3 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 619.3, 674.2 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 608.5, 663 , 0 );
setMoveKey( spep_0-3 + 4, 1, 575.5, 628.7 , 0 );
setMoveKey( spep_0-3 + 5, 1, 575.5, 628.7 , 0 );
setMoveKey( spep_0-3 + 6, 1, 519.2, 570.1 , 0 );
setMoveKey( spep_0-3 + 7, 1, 519.2, 570.1 , 0 );
setMoveKey( spep_0-3 + 8, 1, 438.5, 486.3 , 0 );
setMoveKey( spep_0-3 + 9, 1, 438.5, 486.3 , 0 );
setMoveKey( spep_0-3 + 10, 1, 405.7, 449.1 , 0 );
setMoveKey( spep_0-3 + 12, 1, 382, 422 , 0 );
setMoveKey( spep_0-3 + 14, 1, 362.9, 400.4 , 0 );
setMoveKey( spep_0-3 + 16, 1, 346.9, 382.3 , 0 );
setMoveKey( spep_0-3 + 18, 1, 333.2, 366.6 , 0 );
setMoveKey( spep_0-3 + 20, 1, 321.1, 352.9 , 0 );
setMoveKey( spep_0-3 + 22, 1, 310.4, 340.7 , 0 );
setMoveKey( spep_0-3 + 24, 1, 300.9, 329.9 , 0 );
setMoveKey( spep_0-3 + 26, 1, 292.2, 320.1 , 0 );
setMoveKey( spep_0-3 + 28, 1, 284.5, 311.2 , 0 );
setMoveKey( spep_0-3 + 30, 1, 277.4, 303.1 , 0 );
setMoveKey( spep_0-3 + 32, 1, 270.9, 295.8 , 0 );

setScaleKey( spep_0 + 0, 1, 0.86, 0.86 );
--setScaleKey( spep_0-3 + 2, 1, 0.84, 0.84 );
setScaleKey( spep_0-3 + 4, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 5, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 6, 1, 0.76, 0.76 );
setScaleKey( spep_0-3 + 7, 1, 0.76, 0.76 );
setScaleKey( spep_0-3 + 8, 1, 0.68, 0.68 );
setScaleKey( spep_0-3 + 9, 1, 0.68, 0.68 );
setScaleKey( spep_0-3 + 10, 1, 0.66, 0.66 );
setScaleKey( spep_0-3 + 12, 1, 0.64, 0.64 );
setScaleKey( spep_0-3 + 14, 1, 0.63, 0.63 );
setScaleKey( spep_0-3 + 16, 1, 0.61, 0.61 );
setScaleKey( spep_0-3 + 18, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 20, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 22, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 24, 1, 0.58, 0.58 );
setScaleKey( spep_0-3 + 26, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 28, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 30, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 32, 1, 0.55, 0.55 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 30, 1, 0 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 83 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 144, 0, 0, 0, 0, 255 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );

    --エネミーの固定
    setMoveKey( SP_dodge + 9, 1, 270.9, 295.8 , 0 );
    setScaleKey( SP_dodge + 9, 1, 0.55, 0.55 );
    setRotateKey( SP_dodge + 9, 1, 0 );
    
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

--敵の動き
setDisp( spep_0-1 + 100, 1, 0 );

changeAnime( spep_0-3 + 48, 1, 103 );
changeAnime( spep_0-3 + 59, 1, 111 );
changeAnime( spep_0-3 + 60, 1, 111 );
changeAnime( spep_0-3 + 61, 1, 111 );
changeAnime( spep_0-3 + 62, 1, 111 );
changeAnime( spep_0-3 + 63, 1, 111 );
changeAnime( spep_0-3 + 64, 1, 111 );
changeAnime( spep_0-3 + 65, 1, 111 );
changeAnime( spep_0-3 + 66, 1, 111 );
changeAnime( spep_0-3 + 67, 1, 111 );
changeAnime( spep_0-3 + 68, 1, 111 );
changeAnime( spep_0-3 + 69, 1, 111 );
changeAnime( spep_0-3 + 70, 1, 111 );
changeAnime( spep_0-3 + 71, 1, 111 );
changeAnime( spep_0-3 + 72, 1, 111 );
changeAnime( spep_0-3 + 73, 1, 111 );
changeAnime( spep_0-3 + 74, 1, 111 );
changeAnime( spep_0-3 + 75, 1, 111 );
changeAnime( spep_0-3 + 76, 1, 111 );
changeAnime( spep_0-3 + 77, 1, 111 );
changeAnime( spep_0-3 + 78, 1, 111 );
changeAnime( spep_0-3 + 78, 1, 111 );
changeAnime( spep_0-3 + 79, 1, 111 );

changeAnime( spep_0-3 + 80, 1, 108 );

setMoveKey( spep_0-3 + 34, 1, 265, 289 , 0 );
setMoveKey( spep_0-3 + 36, 1, 259.7, 282.9 , 0 );
setMoveKey( spep_0-3 + 38, 1, 254.8, 277.3 , 0 );
setMoveKey( spep_0-3 + 40, 1, 250.3, 272.2 , 0 );
setMoveKey( spep_0-3 + 42, 1, 246.2, 267.6 , 0 );
setMoveKey( spep_0-3 + 44, 1, 242.5, 263.3 , 0 );
setMoveKey( spep_0-3 + 47, 1, 239.1, 259.4 , 0 );
setMoveKey( spep_0-3 + 48, 1, 206.3, 219.4 , 0 );
setMoveKey( spep_0-3 + 50, 1, 153.6, 150.4 , 0 );
setMoveKey( spep_0-3 + 52, 1, 127.6, 116.6 , 0 );
setMoveKey( spep_0-3 + 54, 1, 107.6, 90.6 , 0 );
setMoveKey( spep_0-3 + 56, 1, 90.9, 69 , 0 );
setMoveKey( spep_0-3 + 58, 1, 76.5, 50.5 , 0 );
setMoveKey( spep_0-3 + 59, 1, 69.3, 21 , 0 );
setMoveKey( spep_0-3 + 62, 1, 61.2, 12.3 , 0 );
setMoveKey( spep_0-3 + 64, 1, 53.3, 3.8 , 0 );
setMoveKey( spep_0-3 + 66, 1, 45.6, -4.6 , 0 );
setMoveKey( spep_0-3 + 68, 1, 38.1, -12.8 , 0 );
setMoveKey( spep_0-3 + 70, 1, 30.7, -20.8 , 0 );
setMoveKey( spep_0-3 + 72, 1, 23.4, -28.7 , 0 );
setMoveKey( spep_0-3 + 74, 1, 16.3, -36.6 , 0 );
setMoveKey( spep_0-3 + 76, 1, 9.1, -44.2 , 0 );
setMoveKey( spep_0-3 + 79, 1, 2.2, -51.7 , 0 );
setMoveKey( spep_0-3 + 80, 1, 191.4, -39.1 , 0 );
setMoveKey( spep_0-3 + 82, 1, 149, -80.2 , 0 );
setMoveKey( spep_0-3 + 84, 1, 185.9, -50.5 , 0 );
setMoveKey( spep_0-3 + 86, 1, 180.6, -79.8 , 0 );
setMoveKey( spep_0-3 + 88, 1, 187.3, -61.1 , 0 );
setMoveKey( spep_0-3 + 90, 1, 185.3, -75.8 , 0 );
setMoveKey( spep_0-3 + 92, 1, 185.5, -63 , 0 );
setMoveKey( spep_0-3 + 94, 1, 185.7, -74.8 , 0 );
setMoveKey( spep_0-3 + 96, 1, 185.8, -63.6 , 0 );
setMoveKey( spep_0-3 + 98, 1, 284.8, -103.9 , 0 );
setMoveKey( spep_0-1 + 100, 1, 316.7, -90.3 , 0 );

setScaleKey( spep_0-3 + 36, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 38, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 42, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 44, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 48, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 50, 1, 0.75, 0.75 );
setScaleKey( spep_0-3 + 52, 1, 0.85, 0.85 );
setScaleKey( spep_0-3 + 54, 1, 0.93, 0.93 );
setScaleKey( spep_0-3 + 56, 1, 0.99, 0.99 );
setScaleKey( spep_0-3 + 58, 1, 1.05, 1.05 );
setScaleKey( spep_0-3 + 59, 1, 1.18, 1.18 );
setScaleKey( spep_0-3 + 62, 1, 1.19, 1.19 );
setScaleKey( spep_0-3 + 64, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 66, 1, 1.21, 1.21 );
setScaleKey( spep_0-3 + 68, 1, 1.22, 1.22 );
setScaleKey( spep_0-3 + 70, 1, 1.23, 1.23 );
setScaleKey( spep_0-3 + 72, 1, 1.24, 1.24 );
setScaleKey( spep_0-3 + 74, 1, 1.25, 1.25 );
setScaleKey( spep_0-3 + 76, 1, 1.26, 1.26 );
setScaleKey( spep_0-3 + 79, 1, 1.27, 1.27 );
setScaleKey( spep_0-3 + 80, 1, 1.76, 1.76 );
setScaleKey( spep_0-3 + 82, 1, 1.67, 1.67 );
setScaleKey( spep_0-3 + 84, 1, 1.76, 1.76 );
setScaleKey( spep_0-3 + 86, 1, 1.67, 1.67 );
setScaleKey( spep_0-3 + 88, 1, 1.76, 1.76 );
setScaleKey( spep_0-3 + 90, 1, 1.72, 1.72 );
setScaleKey( spep_0-3 + 96, 1, 1.72, 1.72 );
setScaleKey( spep_0-3 + 98, 1, 1.33, 1.33 );
setScaleKey( spep_0-1 + 100, 1, 1.37, 1.37 );

setRotateKey( spep_0-3 + 47, 1, 0 );
setRotateKey( spep_0-3 + 48, 1, -22 );
setRotateKey( spep_0-3 + 50, 1, -15.8 );
setRotateKey( spep_0-3 + 52, 1, -12.8 );
setRotateKey( spep_0-3 + 54, 1, -10.5 );
setRotateKey( spep_0-3 + 56, 1, -8.6 );
setRotateKey( spep_0-3 + 58, 1, -7 );
setRotateKey( spep_0-3 + 59, 1, -4.6 );
setRotateKey( spep_0-3 + 62, 1, -4.2 );
setRotateKey( spep_0-3 + 64, 1, -3.8 );
setRotateKey( spep_0-3 + 66, 1, -3.4 );
setRotateKey( spep_0-3 + 68, 1, -3 );
setRotateKey( spep_0-3 + 70, 1, -2.6 );
setRotateKey( spep_0-3 + 72, 1, -2.2 );
setRotateKey( spep_0-3 + 74, 1, -1.9 );
setRotateKey( spep_0-3 + 76, 1, -1.5 );
setRotateKey( spep_0-3 + 79, 1, -1.1 );
setRotateKey( spep_0-3 + 80, 1, 11.2 );
setRotateKey( spep_0-3 + 96, 1, 11.2 );
setRotateKey( spep_0-3 + 98, 1, 27.2 );
setRotateKey( spep_0-1 + 100, 1, 29.6 );

--SE
--敵突っ込んでくる
SE002 = playSeVer2( spep_0 + 46, 1117, "",spep_0 + 90, 0, 6, -1);

--パンチ
SE003 = playSeVer2( spep_0 + 78, 1003, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 86, 1009, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 86, 1110, "", 0, 0, 0, -1);

--雪に突っ込む
SE006 = playSeVer2( spep_0 + 100, 1014, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 + 136, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1= spep_0 + 144;
------------------------------------------------------
--様子を見る
------------------------------------------------------
-- ** エフェクト等 ** --
state = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, state, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, state, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, state, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, state, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, state, 0 );
setEffRotateKey( spep_1 + 100, state, 0 );
setEffAlphaKey( spep_1 + 0, state, 255 );
setEffAlphaKey( spep_1 + 100, state, 255 );

--文字エントリー
ctbikkuri = entryEffectLife( spep_1-3 + 40,  10000, 28, 0x100, -1, 0, -129.6, 129.6 );--!!
setEffShake( spep_1-3 + 40, ctbikkuri, 28, 10 );
setEffMoveKey( spep_1-3 + 40, ctbikkuri, -129.6, 129.6 , 0 );
setEffMoveKey( spep_1-3 + 42, ctbikkuri, -136.7, 138.6 , 0 );
setEffMoveKey( spep_1-3 + 44, ctbikkuri, -139.6, 145.4 , 0 );
setEffMoveKey( spep_1-3 + 46, ctbikkuri, -147, 151.8 , 0 );
setEffMoveKey( spep_1-3 + 48, ctbikkuri, -151.3, 163.1 , 0 );
setEffMoveKey( spep_1-3 + 50, ctbikkuri, -150.5, 160.1 , 0 );
setEffMoveKey( spep_1-3 + 52, ctbikkuri, -154.9, 162.3 , 0 );
setEffMoveKey( spep_1-3 + 54, ctbikkuri, -152.1, 160 , 0 );
setEffMoveKey( spep_1-3 + 56, ctbikkuri, -155.9, 161.2 , 0 );
setEffMoveKey( spep_1-3 + 58, ctbikkuri, -153.5, 158.7 , 0 );
setEffMoveKey( spep_1-3 + 60, ctbikkuri, -155.6, 162.9 , 0 );
setEffMoveKey( spep_1-3 + 62, ctbikkuri, -155.5, 159.7 , 0 );
setEffMoveKey( spep_1-3 + 64, ctbikkuri, -158.8, 160.6 , 0 );
setEffMoveKey( spep_1-3 + 66, ctbikkuri, -157.4, 159.2 , 0 );
setEffMoveKey( spep_1-3 + 68, ctbikkuri, -158, 159.2 , 0 );

setEffScaleKey( spep_1-3 + 40, ctbikkuri, 0.65, 0.65 );
setEffScaleKey( spep_1-3 + 42, ctbikkuri, 0.91, 0.91 );
setEffScaleKey( spep_1-3 + 44, ctbikkuri, 1.17, 1.17 );
setEffScaleKey( spep_1-3 + 46, ctbikkuri, 1.43, 1.43 );
setEffScaleKey( spep_1-3 + 48, ctbikkuri, 1.69, 1.69 );
setEffScaleKey( spep_1-3 + 68, ctbikkuri, 1.69, 1.69 );

setEffRotateKey( spep_1-3 + 40, ctbikkuri, -13.5 );
setEffRotateKey( spep_1-3 + 68, ctbikkuri, -13.5 );

setEffAlphaKey( spep_1-3 + 40, ctbikkuri, 255 );
setEffAlphaKey( spep_1-3 + 48, ctbikkuri, 255 );
setEffAlphaKey( spep_1-3 + 50, ctbikkuri, 230 );
setEffAlphaKey( spep_1-3 + 52, ctbikkuri, 204 );
setEffAlphaKey( spep_1-3 + 54, ctbikkuri, 179 );
setEffAlphaKey( spep_1-3 + 56, ctbikkuri, 153 );
setEffAlphaKey( spep_1-3 + 58, ctbikkuri, 128 );
setEffAlphaKey( spep_1-3 + 60, ctbikkuri, 102 );
setEffAlphaKey( spep_1-3 + 62, ctbikkuri, 77 );
setEffAlphaKey( spep_1-3 + 64, ctbikkuri, 51 );
setEffAlphaKey( spep_1-3 + 66, ctbikkuri, 25 );
setEffAlphaKey( spep_1-3 + 68, ctbikkuri, 0 );


--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 70,  906, 30, 0x100, -1, 0, 0, -3.2 );
setEffShake( spep_1-3 + 70, shuchusen2, 30, 20 );
setEffMoveKey( spep_1-3 + 70, shuchusen2, 0, -3.2 , 0 );
setEffMoveKey( spep_1-1 + 98, shuchusen2, 0, -3.2 , 0 );

setEffScaleKey( spep_1-3 + 70, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_1-1 + 98, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_1-3 + 70, shuchusen2, 180 );
setEffRotateKey( spep_1-1 + 98, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 70, shuchusen2, 255 );
setEffAlphaKey( spep_1-1 + 98, shuchusen2, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 + 98, 1, 0 );

changeAnime( spep_1 + 0, 1, 106 );
changeAnime( spep_1-3 + 40, 1, 118 );
changeAnime( spep_1-3 + 70, 1, 111 );
changeAnime( spep_1-3 + 71, 1, 111 );
changeAnime( spep_1-3 + 72, 1, 111 );
changeAnime( spep_1-3 + 73, 1, 111 );
changeAnime( spep_1-3 + 74, 1, 111 );
changeAnime( spep_1-3 + 75, 1, 111 );
changeAnime( spep_1-3 + 76, 1, 111 );
changeAnime( spep_1-3 + 77, 1, 111 );
changeAnime( spep_1-3 + 78, 1, 111 );
changeAnime( spep_1-3 + 79, 1, 111 );
changeAnime( spep_1-3 + 80, 1, 111 );
changeAnime( spep_1-3 + 81, 1, 111 );
changeAnime( spep_1-3 + 82, 1, 111 );
changeAnime( spep_1-3 + 83, 1, 111 );
changeAnime( spep_1-3 + 84, 1, 111 );
changeAnime( spep_1-3 + 85, 1, 111 );
changeAnime( spep_1-3 + 86, 1, 111 );
changeAnime( spep_1-3 + 87, 1, 111 );
changeAnime( spep_1-3 + 88, 1, 111 );
changeAnime( spep_1-3 + 89, 1, 111 );
changeAnime( spep_1-3 + 90, 1, 111 );
changeAnime( spep_1-3 + 91, 1, 111 );
changeAnime( spep_1-3 + 92, 1, 111 );
changeAnime( spep_1-3 + 93, 1, 111 );
changeAnime( spep_1-3 + 94, 1, 111 );
changeAnime( spep_1-3 + 95, 1, 111 );
changeAnime( spep_1-3 + 96, 1, 111 );
changeAnime( spep_1-3 + 97, 1, 111 );
changeAnime( spep_1-3 + 98, 1, 111 );
changeAnime( spep_1-2 + 98, 1, 111 );
changeAnime( spep_1-1 + 98, 1, 111 );

setMoveKey( spep_1 + 0, 1, 180.9, -253.9 , 0 );
setMoveKey( spep_1-3 + 39, 1, 180.9, -253.9 , 0 );

setMoveKey( spep_1-3 + 40, 1, 146.6, -157.8 , 0 );
setMoveKey( spep_1-3 + 69, 1, 146.6, -157.8 , 0 );

setMoveKey( spep_1-3 + 70, 1, 151.2, -123.9 , 0 );
setMoveKey( spep_1-3 + 72, 1, 178.2, -99.4 , 0 );
setMoveKey( spep_1-3 + 74, 1, 187.6, -90.6 , 0 );
setMoveKey( spep_1-3 + 76, 1, 193.9, -84.6 , 0 );
setMoveKey( spep_1-3 + 78, 1, 198.6, -80 , 0 );
setMoveKey( spep_1-3 + 80, 1, 202.3, -76.5 , 0 );
setMoveKey( spep_1-3 + 82, 1, 205.4, -73.7 , 0 );
setMoveKey( spep_1-3 + 84, 1, 207.8, -71.4 , 0 );
setMoveKey( spep_1-3 + 86, 1, 209.7, -69.7 , 0 );
setMoveKey( spep_1-3 + 88, 1, 211.3, -68.3 , 0 );
setMoveKey( spep_1-3 + 90, 1, 212.5, -67.3 , 0 );
setMoveKey( spep_1-3 + 92, 1, 213.4, -66.6 , 0 );
setMoveKey( spep_1-3 + 94, 1, 214, -66.1 , 0 );
setMoveKey( spep_1-3 + 96, 1, 214.3, -65.8 , 0 );
setMoveKey( spep_1-1 + 98, 1, 214.5, -65.7 , 0 );

setScaleKey( spep_1 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 39, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 40, 1, 1.51, 1.4 );
setScaleKey( spep_1-3 + 42, 1, 1.5, 1.47 );
setScaleKey( spep_1-3 + 44, 1, 1.5, 1.49 );
setScaleKey( spep_1-3 + 46, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 69, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 70, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 72, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 74, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 76, 1, 1.85, 1.85 );
setScaleKey( spep_1-3 + 78, 1, 1.88, 1.88 );
setScaleKey( spep_1-3 + 80, 1, 1.91, 1.91 );
setScaleKey( spep_1-3 + 82, 1, 1.93, 1.93 );
setScaleKey( spep_1-3 + 84, 1, 1.94, 1.94 );
setScaleKey( spep_1-3 + 86, 1, 1.95, 1.95 );
setScaleKey( spep_1-3 + 88, 1, 1.96, 1.96 );
setScaleKey( spep_1-3 + 90, 1, 1.97, 1.97 );
setScaleKey( spep_1-3 + 92, 1, 1.98, 1.98 );
setScaleKey( spep_1-1 + 98, 1, 1.98, 1.98 );

setRotateKey( spep_1 + 0, 1, 28.6 );
setRotateKey( spep_1-3 + 39, 1, 28.6 );
setRotateKey( spep_1-3 + 40, 1, 5 );
setRotateKey( spep_1-3 + 42, 1, 3 );
setRotateKey( spep_1-3 + 44, 1, 0 );
setRotateKey( spep_1-3 + 69, 1, 0 );
setRotateKey( spep_1-3 + 70, 1, 34.6 );
setRotateKey( spep_1-1 + 98, 1, 34.6 );

--SE
--敵起き上がる
SE007 = playSeVer2( spep_1 + 38, 37, "",spep_1 + 70, 0, 16, -1);

--ハッチャンびっくり
SE008 = playSeVer2( spep_1 + 38, 48, "",spep_1 + 102, 0, 26, 0.6);

--敵飛びかかる
SE009 = playSeVer2( spep_1 + 68, 1012, "", 0, 0, 0, -1);


-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 100, 0, 0, 0, 0, 255 );  

--白フェード
entryFade( spep_1 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 100; 
------------------------------------------------------
--突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_2 + 110, rush, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_2 + 110, rush, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush, 0 );
setEffRotateKey( spep_2 + 110, rush, 0 );
setEffAlphaKey( spep_2 + 0, rush, 255 );
setEffAlphaKey( spep_2 + 110, rush, 255 );


--顔カットインのタイミング指定
spep_x=spep_2 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


--SE
--セリフカットイン
SE010 = playSeVer2( spep_2 + 0, 1018, "", 0, 0, 0, -1);

--17号突っ込んでくる
SE011 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE011, 72 );
SE012 = playSeVer2( spep_2 + 0, 1314, "",spep_2 + 132, 0, 28, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 110, 0, 0, 0, 0, 255 );  

--白フェード
entryFade( spep_2 + 102, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 110; 
------------------------------------------------------
--エルボー
------------------------------------------------------
-- ** エフェクト等 ** --
elbow_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, elbow_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 64, elbow_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, elbow_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 64, elbow_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, elbow_f, 0 );
setEffRotateKey( spep_3 + 64, elbow_f, 0 );
setEffAlphaKey( spep_3 + 0, elbow_f, 255 );
setEffAlphaKey( spep_3 + 62, elbow_f, 255 );
setEffAlphaKey( spep_3 + 63, elbow_f, 255 );
setEffAlphaKey( spep_3 + 64, elbow_f, 0 );

-- ** エフェクト等 ** --
elbow_b = entryEffect( spep_3 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, elbow_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 64, elbow_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 64, elbow_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, elbow_b, 0 );
setEffRotateKey( spep_3 + 64, elbow_b, 0 );
setEffAlphaKey( spep_3 + 0, elbow_b, 255 );
setEffAlphaKey( spep_3 + 62, elbow_b, 255 );
setEffAlphaKey( spep_3 + 63, elbow_b, 255 );
setEffAlphaKey( spep_3 + 64, elbow_b, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_3-3 + 22,  10019, 30, 0x100, -1, 0, -16, 11.8 );--ドンッ
setEffShake( spep_3-3 + 22, ctdon, 30, 10 );
setEffMoveKey( spep_3-3 + 22, ctdon, -16, 11.8 , 0 );
setEffMoveKey( spep_3-3 + 24, ctdon, 18.5, 64.7 , 0 );
setEffMoveKey( spep_3-3 + 26, ctdon, 65.1, 102.7 , 0 );
setEffMoveKey( spep_3-3 + 28, ctdon, 57.3, 110.9 , 0 );
setEffMoveKey( spep_3-3 + 30, ctdon, 71.8, 122.6 , 0 );
setEffMoveKey( spep_3-3 + 32, ctdon, 73.5, 114.6 , 0 );
setEffMoveKey( spep_3-3 + 34, ctdon, 78.7, 135.9 , 0 );
setEffMoveKey( spep_3-3 + 36, ctdon, 86.8, 129.6 , 0 );
setEffMoveKey( spep_3-3 + 38, ctdon, 85.8, 141.3 , 0 );
setEffMoveKey( spep_3-3 + 40, ctdon, 94.4, 139.2 , 0 );
setEffMoveKey( spep_3-3 + 42, ctdon, 102.5, 152.5 , 0 );
setEffMoveKey( spep_3-3 + 44, ctdon, 110.5, 152.1 , 0 );
setEffMoveKey( spep_3-3 + 46, ctdon, 116.5, 176 , 0 );
setEffMoveKey( spep_3-3 + 48, ctdon, 145.3, 170.7 , 0 );
setEffMoveKey( spep_3-3 + 50, ctdon, 141, 184.9 , 0 );
setEffMoveKey( spep_3-3 + 52, ctdon, 154.8, 195.1 , 0 );

setEffScaleKey( spep_3-3 + 22, ctdon, 0.5, 0.5 );
setEffScaleKey( spep_3-3 + 24, ctdon, 1.36, 1.36 );
setEffScaleKey( spep_3-3 + 26, ctdon, 2.23, 2.23 );
setEffScaleKey( spep_3-3 + 28, ctdon, 2.25, 2.25 );
setEffScaleKey( spep_3-3 + 30, ctdon, 2.27, 2.27 );
setEffScaleKey( spep_3-3 + 32, ctdon, 2.29, 2.29 );
setEffScaleKey( spep_3-3 + 34, ctdon, 2.31, 2.31 );
setEffScaleKey( spep_3-3 + 36, ctdon, 2.33, 2.33 );
setEffScaleKey( spep_3-3 + 38, ctdon, 2.35, 2.35 );
setEffScaleKey( spep_3-3 + 40, ctdon, 2.37, 2.37 );
setEffScaleKey( spep_3-3 + 42, ctdon, 2.39, 2.39 );
setEffScaleKey( spep_3-3 + 44, ctdon, 2.41, 2.41 );
setEffScaleKey( spep_3-3 + 46, ctdon, 2.74, 2.74 );
setEffScaleKey( spep_3-3 + 48, ctdon, 3.07, 3.07 );
setEffScaleKey( spep_3-3 + 50, ctdon, 3.4, 3.4 );
setEffScaleKey( spep_3-3 + 52, ctdon, 3.73, 3.73 );

setEffRotateKey( spep_3-3 + 22, ctdon, 16 );
setEffRotateKey( spep_3-3 + 52, ctdon, 16 );

setEffAlphaKey( spep_3-3 + 22, ctdon, 255 );
setEffAlphaKey( spep_3-3 + 44, ctdon, 255 );
setEffAlphaKey( spep_3-3 + 46, ctdon, 191 );
setEffAlphaKey( spep_3-3 + 48, ctdon, 128 );
setEffAlphaKey( spep_3-3 + 50, ctdon, 64 );
setEffAlphaKey( spep_3-3 + 52, ctdon, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_3-3 + 22,  906, 36, 0x100, -1, 0, 0, -33.2 );
setEffShake( spep_3-3 + 22, shuchusen4, 36, 20 );
setEffMoveKey( spep_3-3 + 22, shuchusen4, 0, -33.2 , 0 );
setEffMoveKey( spep_3-3 + 58, shuchusen4, 0, -33.2 , 0 );

setEffScaleKey( spep_3-3 + 22, shuchusen4, 1.1, 1.1 );
setEffScaleKey( spep_3-3 + 58, shuchusen4, 1.1, 1.1 );

setEffRotateKey( spep_3-3 + 22, shuchusen4, 180 );
setEffRotateKey( spep_3-3 + 58, shuchusen4, 180 );

setEffAlphaKey( spep_3-3 + 22, shuchusen4, 255 );
setEffAlphaKey( spep_3-3 + 24, shuchusen4, 241 );
setEffAlphaKey( spep_3-3 + 26, shuchusen4, 227 );
setEffAlphaKey( spep_3-3 + 28, shuchusen4, 213 );
setEffAlphaKey( spep_3-3 + 30, shuchusen4, 198 );
setEffAlphaKey( spep_3-3 + 32, shuchusen4, 184 );
setEffAlphaKey( spep_3-3 + 34, shuchusen4, 170 );
setEffAlphaKey( spep_3-3 + 36, shuchusen4, 156 );
setEffAlphaKey( spep_3-3 + 38, shuchusen4, 142 );
setEffAlphaKey( spep_3-3 + 40, shuchusen4, 128 );
setEffAlphaKey( spep_3-3 + 42, shuchusen4, 113 );
setEffAlphaKey( spep_3-3 + 44, shuchusen4, 99 );
setEffAlphaKey( spep_3-3 + 46, shuchusen4, 85 );
setEffAlphaKey( spep_3-3 + 48, shuchusen4, 71 );
setEffAlphaKey( spep_3-3 + 50, shuchusen4, 57 );
setEffAlphaKey( spep_3-3 + 52, shuchusen4, 42 );
setEffAlphaKey( spep_3-3 + 54, shuchusen4, 28 );
setEffAlphaKey( spep_3-3 + 56, shuchusen4, 14 );
setEffAlphaKey( spep_3-3 + 58, shuchusen4, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 66, 1, 0 );

changeAnime( spep_3 + 0, 1, 111 );
changeAnime( spep_3 + 1, 1, 111 );
changeAnime( spep_3 + 2, 1, 111 );
changeAnime( spep_3 + 3, 1, 111 );
changeAnime( spep_3 + 4, 1, 111 );
changeAnime( spep_3 + 5, 1, 111 );
changeAnime( spep_3 + 6, 1, 111 );
changeAnime( spep_3 + 7, 1, 111 );
changeAnime( spep_3 + 8, 1, 111 );
changeAnime( spep_3 + 9, 1, 111 );
changeAnime( spep_3 + 11, 1, 111 );
changeAnime( spep_3 + 12, 1, 111 );
changeAnime( spep_3 + 13, 1, 111 );
changeAnime( spep_3 + 14, 1, 111 );
changeAnime( spep_3 + 15, 1, 111 );
changeAnime( spep_3 + 16, 1, 111 );
changeAnime( spep_3-3 + 20, 1, 108 );

setMoveKey( spep_3 + 0, 1, 71, -107.4 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 39.8, -100.3 , 0 );
setMoveKey( spep_3-3 + 4, 1, 29.9, -98.1 , 0 );
setMoveKey( spep_3-3 + 6, 1, 23.7, -96.7 , 0 );
setMoveKey( spep_3-3 + 8, 1, 19.4, -95.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 16.5, -95.2 , 0 );
setMoveKey( spep_3-3 + 12, 1, 14.5, -94.7 , 0 );
setMoveKey( spep_3-3 + 14, 1, 13.2, -94.4 , 0 );
setMoveKey( spep_3-3 + 16, 1, 12.5, -94.3 , 0 );
setMoveKey( spep_3-3 + 19, 1, 12.3, -94.3 , 0 );
setMoveKey( spep_3-3 + 20, 1, 78.5, -59.1 , 0 );
setMoveKey( spep_3-3 + 22, 1, 65.9, -89 , 0 );
setMoveKey( spep_3-3 + 24, 1, 61.1, -73.2 , 0 );
setMoveKey( spep_3-3 + 26, 1, 59.5, -87.5 , 0 );
setMoveKey( spep_3-3 + 28, 1, 59.9, -75.8 , 0 );
setMoveKey( spep_3-3 + 30, 1, 60.2, -83.9 , 0 );
setMoveKey( spep_3-3 + 32, 1, 69.5, -74.2 , 0 );
setMoveKey( spep_3-3 + 34, 1, 77.4, -75.1 , 0 );
setMoveKey( spep_3-3 + 36, 1, 84.2, -68.4 , 0 );
setMoveKey( spep_3-3 + 38, 1, 90.1, -69.2 , 0 );
setMoveKey( spep_3-3 + 40, 1, 95.3, -64 , 0 );
setMoveKey( spep_3-3 + 42, 1, 99.7, -64.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 103.6, -60.7 , 0 );
setMoveKey( spep_3-3 + 46, 1, 107, -60.9 , 0 );
setMoveKey( spep_3-3 + 48, 1, 110, -58.7 , 0 );
setMoveKey( spep_3-3 + 50, 1, 112.6, -57.5 , 0 );
setMoveKey( spep_3-3 + 52, 1, 114.7, -56.5 , 0 );
setMoveKey( spep_3-3 + 54, 1, 116.6, -55.7 , 0 );
setMoveKey( spep_3-3 + 56, 1, 118.2, -55 , 0 );
setMoveKey( spep_3 + 66, 1, 119.4, -54.4 , 0 );


setScaleKey( spep_3 + 0, 1, 1.42, 1.42 );
setScaleKey( spep_3-3 + 19, 1, 1.42, 1.42 );
setScaleKey( spep_3-3 + 20, 1, 1.7, 1.7 );
setScaleKey( spep_3-3 + 22, 1, 1.51, 1.51 );
setScaleKey( spep_3-3 + 24, 1, 1.45, 1.45 );
setScaleKey( spep_3-3 + 26, 1, 1.42, 1.42 );
setScaleKey( spep_3-3 + 30, 1, 1.42, 1.42 );
setScaleKey( spep_3-3 + 32, 1, 1.41, 1.41 );
setScaleKey( spep_3-3 + 44, 1, 1.41, 1.41 );
setScaleKey( spep_3-3 + 46, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 66, 1, 1.4, 1.4 );

setRotateKey( spep_3 + 0, 1, 34.6 );
--setRotateKey( spep_3-3 + 2, 1, 32 );
setRotateKey( spep_3-3 + 4, 1, 31.1 );
setRotateKey( spep_3-3 + 6, 1, 30.6 );
setRotateKey( spep_3-3 + 8, 1, 30.2 );
setRotateKey( spep_3-3 + 10, 1, 30 );
setRotateKey( spep_3-3 + 12, 1, 29.8 );
setRotateKey( spep_3-3 + 14, 1, 29.7 );
setRotateKey( spep_3-3 + 16, 1, 29.7 );
setRotateKey( spep_3-3 + 19, 1, 29.6 );
setRotateKey( spep_3-3 + 20, 1, -13.6 );
setRotateKey( spep_3-3 + 30, 1, -13.6 );
setRotateKey( spep_3-3 + 32, 1, -16 );
setRotateKey( spep_3-3 + 34, 1, -18 );
setRotateKey( spep_3-3 + 36, 1, -19.7 );
setRotateKey( spep_3-3 + 38, 1, -21.2 );
setRotateKey( spep_3-3 + 40, 1, -22.5 );
setRotateKey( spep_3-3 + 42, 1, -23.7 );
setRotateKey( spep_3-3 + 44, 1, -24.7 );
setRotateKey( spep_3-3 + 46, 1, -25.6 );
setRotateKey( spep_3-3 + 48, 1, -26.4 );
setRotateKey( spep_3-3 + 50, 1, -27.1 );
setRotateKey( spep_3-3 + 52, 1, -27.7 );
setRotateKey( spep_3-3 + 54, 1, -28.2 );
setRotateKey( spep_3-3 + 56, 1, -28.7 );
setRotateKey( spep_3 + 66, 1, -29 );

--SE
--エルボー
SE013 = playSeVer2( spep_3 + 12, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 18, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 18, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 70, 0, 0, 0, 0, 255 );  

-- ** 次の準備 ** --
spep_4= spep_3 + 64; 
------------------------------------------------------
--アッパー
------------------------------------------------------
-- ** エフェクト等 ** --
upper_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, upper_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 54, upper_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, upper_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 54, upper_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, upper_f, 0 );
setEffRotateKey( spep_4 + 54, upper_f, 0 );
setEffAlphaKey( spep_4 + 0, upper_f, 255 );
setEffAlphaKey( spep_4 + 54, upper_f, 255 );

-- ** エフェクト等 ** --
upper_b = entryEffect( spep_4 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, upper_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 54, upper_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, upper_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 54, upper_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, upper_b, 0 );
setEffRotateKey( spep_4 + 54, upper_b, 0 );
setEffAlphaKey( spep_4 + 0, upper_b, 255 );
setEffAlphaKey( spep_4 + 54, upper_b, 255 );

--文字エントリー
ctga = entryEffectLife( spep_4-3 + 24,  10005, 28, 0x100, -1, 0, 37.2, 100 );--ガッ
setEffShake( spep_4-3 + 24, ctga, 28, 10 );
setEffMoveKey( spep_4-3 + 24, ctga, 37.2, 100 , 0 );
setEffMoveKey( spep_4-3 + 26, ctga, 22.6, 119.6 , 0 );
setEffMoveKey( spep_4-3 + 28, ctga, 7.2, 154.9 , 0 );
setEffMoveKey( spep_4-3 + 30, ctga, 9.9, 151.4 , 0 );
setEffMoveKey( spep_4-3 + 32, ctga, 11.7, 170.1 , 0 );
setEffMoveKey( spep_4-3 + 34, ctga, 14.4, 166.4 , 0 );
setEffMoveKey( spep_4-3 + 36, ctga, 16.2, 185.4 , 0 );
setEffMoveKey( spep_4-3 + 38, ctga, 18.9, 181.4 , 0 );
setEffMoveKey( spep_4-3 + 40, ctga, 20.7, 200.6 , 0 );
setEffMoveKey( spep_4-3 + 42, ctga, 23.4, 196.3 , 0 );
setEffMoveKey( spep_4-3 + 44, ctga, 25.1, 215.8 , 0 );
setEffMoveKey( spep_4-3 + 46, ctga, 27.9, 211.3 , 0 );
setEffMoveKey( spep_4-3 + 48, ctga, 29.6, 231.1 , 0 );
setEffMoveKey( spep_4-3 + 50, ctga, 32.3, 226.3 , 0 );
setEffMoveKey( spep_4-3 + 52, ctga, 34.6, 233.8 , 0 );

setEffScaleKey( spep_4-3 + 24, ctga, 1.61,1.61);
setEffScaleKey( spep_4-3 + 26, ctga, 2.66,2.66);
setEffScaleKey( spep_4-3 + 28, ctga, 3.74,3.74);
setEffScaleKey( spep_4-3 + 30, ctga, 3.77,3.77);
setEffScaleKey( spep_4-3 + 32, ctga, 3.82,3.82);
setEffScaleKey( spep_4-3 + 34, ctga, 3.85,3.85);
setEffScaleKey( spep_4-3 + 36, ctga, 3.91,3.91);
setEffScaleKey( spep_4-3 + 38, ctga, 3.94,3.94);
setEffScaleKey( spep_4-3 + 40, ctga, 3.99,3.99);
setEffScaleKey( spep_4-3 + 42, ctga, 4.02,4.02);
setEffScaleKey( spep_4-3 + 44, ctga, 4.08,4.08);
setEffScaleKey( spep_4-3 + 46, ctga, 4.11,4.11);
setEffScaleKey( spep_4-3 + 48, ctga, 4.16,4.16);
setEffScaleKey( spep_4-3 + 50, ctga, 4.19,4.19);
setEffScaleKey( spep_4-3 + 52, ctga, 4.25,4.25);

setEffRotateKey( spep_4-3 + 24, ctga, -20.4 );
setEffRotateKey( spep_4-3 + 52, ctga, -20.4 );

setEffAlphaKey( spep_4-3 + 24, ctga, 85 );
setEffAlphaKey( spep_4-3 + 26, ctga, 170 );
setEffAlphaKey( spep_4-3 + 28, ctga, 255 );
setEffAlphaKey( spep_4-3 + 30, ctga, 234 );
setEffAlphaKey( spep_4-3 + 32, ctga, 213 );
setEffAlphaKey( spep_4-3 + 34, ctga, 191 );
setEffAlphaKey( spep_4-3 + 36, ctga, 170 );
setEffAlphaKey( spep_4-3 + 38, ctga, 149 );
setEffAlphaKey( spep_4-3 + 40, ctga, 128 );
setEffAlphaKey( spep_4-3 + 42, ctga, 106 );
setEffAlphaKey( spep_4-3 + 44, ctga, 85 );
setEffAlphaKey( spep_4-3 + 46, ctga, 64 );
setEffAlphaKey( spep_4-3 + 48, ctga, 42 );
setEffAlphaKey( spep_4-3 + 50, ctga, 21 );
setEffAlphaKey( spep_4-3 + 52, ctga, 0 );

--敵の動き
setDisp( spep_4-3 + 20, 1, 1 );
setDisp( spep_4-3 + 46, 1, 0 );

changeAnime( spep_4-3 + 20, 1, 108 );
changeAnime( spep_4-3 + 24, 1, 106 );

setMoveKey( spep_4-3 + 20, 1, 264.5, -87.8 , 0 );
setMoveKey( spep_4-3 + 23, 1, 264.5, -87.8 , 0 );

setMoveKey( spep_4-3 + 24, 1, -14.3, -317 , 0 );
setMoveKey( spep_4-3 + 26, 1, 643, 368.2 , 0 );
setMoveKey( spep_4-3 + 28, 1, 919.4, 656.3 , 0 );
setMoveKey( spep_4-3 + 30, 1, 1101.8, 846.3 , 0 );
setMoveKey( spep_4-3 + 32, 1, 1234.8, 985 , 0 );
setMoveKey( spep_4-3 + 34, 1, 1336.3, 1090.8 , 0 );
setMoveKey( spep_4-3 + 36, 1, 1415.6, 1173.4 , 0 );
setMoveKey( spep_4-3 + 38, 1, 1478.2, 1238.7 , 0 );
setMoveKey( spep_4-3 + 40, 1, 1527.9, 1290.5 , 0 );
setMoveKey( spep_4-3 + 42, 1, 1567.3, 1331.5 , 0 );
setMoveKey( spep_4-3 + 44, 1, 1598.4, 1363.9 , 0 );
setMoveKey( spep_4-3 + 46, 1, 1622.7, 1389.2 , 0 );

setScaleKey( spep_4-3 + 20, 1, 10.17, 10.17 );
setScaleKey( spep_4-3 + 23, 1, 10.17, 10.17 );

setScaleKey( spep_4-3 + 24, 1, 9.68, 9.68 );
setScaleKey( spep_4-3 + 26, 1, 8.99, 8.99 );
setScaleKey( spep_4-3 + 28, 1, 8.7, 8.7 );
setScaleKey( spep_4-3 + 30, 1, 8.51, 8.51 );
setScaleKey( spep_4-3 + 32, 1, 8.37, 8.37 );
setScaleKey( spep_4-3 + 34, 1, 8.26, 8.26 );
setScaleKey( spep_4-3 + 36, 1, 8.18, 8.18 );
setScaleKey( spep_4-3 + 38, 1, 8.11, 8.11 );
setScaleKey( spep_4-3 + 40, 1, 8.06, 8.06 );
setScaleKey( spep_4-3 + 42, 1, 8.02, 8.02 );
setScaleKey( spep_4-3 + 44, 1, 7.98, 7.98 );
setScaleKey( spep_4-3 + 46, 1, 7.96, 7.96 );

setRotateKey( spep_4-3 + 20, 1, -10.3 );
setRotateKey( spep_4-3 + 23, 1, -10.3 );

setRotateKey( spep_4-3 + 24, 1, -47.4 );
setRotateKey( spep_4-3 + 26, 1, -30.5 );
setRotateKey( spep_4-3 + 28, 1, -23.4 );
setRotateKey( spep_4-3 + 30, 1, -18.7 );
setRotateKey( spep_4-3 + 32, 1, -15.3 );
setRotateKey( spep_4-3 + 34, 1, -12.7 );
setRotateKey( spep_4-3 + 36, 1, -10.6 );
setRotateKey( spep_4-3 + 38, 1, -9 );
setRotateKey( spep_4-3 + 40, 1, -7.7 );
setRotateKey( spep_4-3 + 42, 1, -6.7 );
setRotateKey( spep_4-3 + 44, 1, -5.9 );
setRotateKey( spep_4-3 + 46, 1, -5.3 );

--SE
--アッパー
SE016 = playSeVer2( spep_4 + 0, 1116, "",spep_4 + 30, 0, 10, -1);
SE017 = playSeVer2( spep_4 + 20, 1190, "",spep_4 + 60, 0, 24, -1);
SE018 = playSeVer2( spep_4 + 20, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 20, SE018, 85 );
SE019 = playSeVer2( spep_4 + 20, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 52, 0, 0, 0, 0, 255 );  

--白フェード
entryFade( spep_4 + 46, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5= spep_4 + 54; 
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 86, shuchusen, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );]]

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
-- ** 集中線 ** --
shuchusenz = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusenz, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusenz, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusenz, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusenz, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusenz, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusenz, 0 );
setEffRotateKey( spep_5 + 90, shuchusenz, 0 );
setEffAlphaKey( spep_5 + 0, shuchusenz, 255 );
setEffAlphaKey( spep_5 + 90, shuchusenz, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6= spep_5 + 94; 
------------------------------------------------------
--回し蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 44, kick_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 44, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kick_f, 0 );
setEffRotateKey( spep_6 + 44, kick_f, 0 );
setEffAlphaKey( spep_6 + 0, kick_f, 255 );
setEffAlphaKey( spep_6 + 42, kick_f, 255 );
setEffAlphaKey( spep_6 + 43, kick_f, 255 );
setEffAlphaKey( spep_6 + 44, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_6 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 44, kick_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 44, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kick_b, 0 );
setEffRotateKey( spep_6 + 44, kick_b, 0 );
setEffAlphaKey( spep_6 + 0, kick_b, 255 );
setEffAlphaKey( spep_6 + 42, kick_b, 255 );
setEffAlphaKey( spep_6 + 43, kick_b, 255 );
setEffAlphaKey( spep_6 + 44, kick_b, 0 );

--敵の動き
setDisp( spep_6-3 + 24, 1, 1 );


changeAnime( spep_6-3 + 24, 1, 106 );
changeAnime( spep_6-3 + 30, 1, 108 );

setMoveKey( spep_6-3 + 24, 1, 132.1, 164.9 , 0 );
setMoveKey( spep_6-3 + 26, 1, 136.9, 152.5 , 0 );
setMoveKey( spep_6-3 + 28, 1, 138, 149.9 , 0 );
setMoveKey( spep_6-3 + 29, 1, 138, 149.9 , 0 );

setMoveKey( spep_6-3 + 30, 1, 129.8, 148.5 , 0 );
setMoveKey( spep_6-3 + 32, 1, 129.8, 85.4 , 0 );
setMoveKey( spep_6-3 + 34, 1, 129.8, 131.5 , 0 );
setMoveKey( spep_6-3 + 36, 1, 129.8, 144.1 , 0 );
setMoveKey( spep_6-3 + 38, 1, 141, 105 , 0 );
setMoveKey( spep_6-3 + 40, 1, 152.3, 151.8 , 0 );
setMoveKey( spep_6-3 + 42, 1, 163.6, 133.5 , 0 );
setMoveKey( spep_6-3 + 44, 1, 174.9, 175.5 , 0 );
setMoveKey( spep_6-3 + 46, 1, 186.2, 161 , 0 );

setScaleKey( spep_6-3 + 24, 1, 7.49, 7.49 );
setScaleKey( spep_6-3 + 26, 1, 7.84, 7.84 );
setScaleKey( spep_6-3 + 28, 1, 7.92, 7.92 );
setScaleKey( spep_6-3 + 29, 1, 7.92, 7.92 );

setScaleKey( spep_6-3 + 30, 1, 8.7, 8.7 );
setScaleKey( spep_6-3 + 36, 1, 8.7, 8.7 );
setScaleKey( spep_6-3 + 38, 1, 8.68, 8.68 );
setScaleKey( spep_6-3 + 40, 1, 8.65, 8.65 );
setScaleKey( spep_6-3 + 42, 1, 8.63, 8.63 );
setScaleKey( spep_6-3 + 44, 1, 8.61, 8.61 );
setScaleKey( spep_6-3 + 46, 1, 8.59, 8.59 );

setRotateKey( spep_6-3 + 24, 1, -47.4 );
setRotateKey( spep_6-3 + 29, 1, -47.4 );

setRotateKey( spep_6-3 + 30, 1, -5.3 );
setRotateKey( spep_6-3 + 46, 1, -5.3 );

--SE
--後ろ回し蹴り
SE021 = playSeVer2( spep_6 + 0, 1117, "",spep_6 + 30, 0, 10, -1);
SE022 = playSeVer2( spep_6 + 10, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_6 + 24, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 24, SE023, 77 );
SE024 = playSeVer2( spep_6 + 26, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 26, SE024, 90 );
SE025 = playSeVer2( spep_6 + 26, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 26, SE025, 74 );
SE026 = playSeVer2( spep_6 + 30, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 30, SE026, 91 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 50, 0, 0, 0, 0, 255 );  

-- ** 次の準備 ** --
spep_7= spep_6 + 44; 
------------------------------------------------------
--爆風から二人
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 150, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 150, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 150, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 150, finish, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_7 + 0,  906, 98-3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 0, shuchusen5, 98-3, 20 );
setEffMoveKey( spep_7 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7-3 + 98, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen5, 1.05, 1.05 );
setEffScaleKey( spep_7-3 + 98, shuchusen5, 1.05, 1.05 );

setEffRotateKey( spep_7-3 + 0, shuchusen5, 180 );
setEffRotateKey( spep_7 + 98, shuchusen5, 180 );

setEffAlphaKey( spep_7 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_7-3 + 78, shuchusen5, 255 );
setEffAlphaKey( spep_7-3 + 80, shuchusen5, 230 );
setEffAlphaKey( spep_7-3 + 82, shuchusen5, 204 );
setEffAlphaKey( spep_7-3 + 84, shuchusen5, 179 );
setEffAlphaKey( spep_7-3 + 86, shuchusen5, 153 );
setEffAlphaKey( spep_7-3 + 88, shuchusen5, 128 );
setEffAlphaKey( spep_7-3 + 90, shuchusen5, 102 );
setEffAlphaKey( spep_7-3 + 92, shuchusen5, 77 );
setEffAlphaKey( spep_7-3 + 94, shuchusen5, 51 );
setEffAlphaKey( spep_7-3 + 96, shuchusen5, 25 );
setEffAlphaKey( spep_7-3 + 98, shuchusen5, 0 );

--敵の動き
setDisp( spep_7-1 + 18, 1, 0 );

changeAnime( spep_7 + 0, 1, 5 );

setMoveKey( spep_7 + 0, 1, 49.6, -77 , 0 );
setMoveKey( spep_7 + 2, 1, 34.8, -83.8 , 0 );
setMoveKey( spep_7 + 4, 1, 27.3, -85.6 , 0 );
setMoveKey( spep_7 + 6, 1, 21.8, -86.3 , 0 );
setMoveKey( spep_7 + 8, 1, 17.5, -86.4 , 0 );
setMoveKey( spep_7 + 10, 1, 14, -86.3 , 0 );
setMoveKey( spep_7 + 12, 1, 11.1, -86.1 , 0 );
setMoveKey( spep_7 + 14, 1, 8.7, -85.7 , 0 );
setMoveKey( spep_7 + 16, 1, 6.7, -85.4 , 0 );
setMoveKey( spep_7 + 18, 1, 5.3, -85.1 , 0 );

setScaleKey( spep_7 + 0, 1, 7.11, 7.11 );
setScaleKey( spep_7 + 2, 1, 5.13, 5.13 );
setScaleKey( spep_7 + 4, 1, 4.16, 4.16 );
setScaleKey( spep_7 + 6, 1, 3.46, 3.46 );
setScaleKey( spep_7 + 8, 1, 2.91, 2.91 );
setScaleKey( spep_7 + 10, 1, 2.46, 2.46 );
setScaleKey( spep_7 + 12, 1, 2.08, 2.08 );
setScaleKey( spep_7 + 14, 1, 1.76, 1.76 );
setScaleKey( spep_7 + 16, 1, 1.49, 1.49 );
setScaleKey( spep_7 + 18, 1, 1.31, 1.31 );

setRotateKey( spep_7 + 0, 1, 18 );
setRotateKey( spep_7 + 2, 1, 26 );
setRotateKey( spep_7 + 4, 1, 29.9 );
setRotateKey( spep_7 + 6, 1, 32.7 );
setRotateKey( spep_7 + 8, 1, 34.9 );
setRotateKey( spep_7 + 10, 1, 36.7 );
setRotateKey( spep_7 + 12, 1, 38.2 );
setRotateKey( spep_7 + 14, 1, 39.5 );
setRotateKey( spep_7 + 16, 1, 40.6 );
setRotateKey( spep_7 + 18, 1, 41.3 );

--SE
--敵飛んでいく
SE027 = playSeVer2( spep_7 + 0, 1183, "",spep_7 + 36, 0, 8, -1);

--地面爆発
SE028 = playSeVer2( spep_7 + 18, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 18, SE028, 75 );
SE029 = playSeVer2( spep_7 + 18, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 18, SE029, 77 );
SE030 = playSeVer2( spep_7 + 18, 1160, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 18, SE030, 66 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 140, 0, 0, 0, 0, 255 );  

--終わり
dealDamage(spep_7+18);
endPhase( spep_7 + 140 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--待機からパンチ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
alert_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, alert_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 148, alert_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, alert_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 148, alert_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, alert_f, 0 );
setEffRotateKey( spep_0 + 148, alert_f, 0 );
setEffAlphaKey( spep_0 + 0, alert_f, 255 );
setEffAlphaKey( spep_0 + 148, alert_f, 255 );

-- ** エフェクト等 ** --
alert_b = entryEffect( spep_0 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, alert_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 148, alert_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, alert_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 148, alert_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, alert_b, 0 );
setEffRotateKey( spep_0 + 148, alert_b, 0 );
setEffAlphaKey( spep_0 + 0, alert_b, 255 );
setEffAlphaKey( spep_0 + 148, alert_b, 255 );

--敵の動き
setDisp( spep_0-3 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 619.3, 674.2 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 608.5, 663 , 0 );
setMoveKey( spep_0-3 + 4, 1, 575.5, 628.7 , 0 );
setMoveKey( spep_0-3 + 5, 1, 575.5, 628.7 , 0 );
setMoveKey( spep_0-3 + 6, 1, 519.2, 570.1 , 0 );
setMoveKey( spep_0-3 + 7, 1, 519.2, 570.1 , 0 );
setMoveKey( spep_0-3 + 8, 1, 438.5, 486.3 , 0 );
setMoveKey( spep_0-3 + 9, 1, 438.5, 486.3 , 0 );
setMoveKey( spep_0-3 + 10, 1, 405.7, 449.1 , 0 );
setMoveKey( spep_0-3 + 12, 1, 382, 422 , 0 );
setMoveKey( spep_0-3 + 14, 1, 362.9, 400.4 , 0 );
setMoveKey( spep_0-3 + 16, 1, 346.9, 382.3 , 0 );
setMoveKey( spep_0-3 + 18, 1, 333.2, 366.6 , 0 );
setMoveKey( spep_0-3 + 20, 1, 321.1, 352.9 , 0 );
setMoveKey( spep_0-3 + 22, 1, 310.4, 340.7 , 0 );
setMoveKey( spep_0-3 + 24, 1, 300.9, 329.9 , 0 );
setMoveKey( spep_0-3 + 26, 1, 292.2, 320.1 , 0 );
setMoveKey( spep_0-3 + 28, 1, 284.5, 311.2 , 0 );
setMoveKey( spep_0-3 + 30, 1, 277.4, 303.1 , 0 );
setMoveKey( spep_0-3 + 32, 1, 270.9, 295.8 , 0 );

setScaleKey( spep_0 + 0, 1, 0.86, 0.86 );
--setScaleKey( spep_0-3 + 2, 1, 0.84, 0.84 );
setScaleKey( spep_0-3 + 4, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 5, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 6, 1, 0.76, 0.76 );
setScaleKey( spep_0-3 + 7, 1, 0.76, 0.76 );
setScaleKey( spep_0-3 + 8, 1, 0.68, 0.68 );
setScaleKey( spep_0-3 + 9, 1, 0.68, 0.68 );
setScaleKey( spep_0-3 + 10, 1, 0.66, 0.66 );
setScaleKey( spep_0-3 + 12, 1, 0.64, 0.64 );
setScaleKey( spep_0-3 + 14, 1, 0.63, 0.63 );
setScaleKey( spep_0-3 + 16, 1, 0.61, 0.61 );
setScaleKey( spep_0-3 + 18, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 20, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 22, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 24, 1, 0.58, 0.58 );
setScaleKey( spep_0-3 + 26, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 28, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 30, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 32, 1, 0.55, 0.55 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 30, 1, 0 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 83 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 144, 0, 0, 0, 0, 255 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );

    --エネミーの固定
    setMoveKey( SP_dodge + 9, 1, 270.9, 295.8 , 0 );
    setScaleKey( SP_dodge + 9, 1, 0.55, 0.55 );
    setRotateKey( SP_dodge + 9, 1, 0 );
    
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


--敵の動き
setDisp( spep_0-1 + 100, 1, 0 );

changeAnime( spep_0-3 + 48, 1, 103 );
changeAnime( spep_0-3 + 59, 1, 111 );
changeAnime( spep_0-3 + 60, 1, 111 );
changeAnime( spep_0-3 + 61, 1, 111 );
changeAnime( spep_0-3 + 62, 1, 111 );
changeAnime( spep_0-3 + 63, 1, 111 );
changeAnime( spep_0-3 + 64, 1, 111 );
changeAnime( spep_0-3 + 65, 1, 111 );
changeAnime( spep_0-3 + 66, 1, 111 );
changeAnime( spep_0-3 + 67, 1, 111 );
changeAnime( spep_0-3 + 68, 1, 111 );
changeAnime( spep_0-3 + 69, 1, 111 );
changeAnime( spep_0-3 + 70, 1, 111 );
changeAnime( spep_0-3 + 71, 1, 111 );
changeAnime( spep_0-3 + 72, 1, 111 );
changeAnime( spep_0-3 + 73, 1, 111 );
changeAnime( spep_0-3 + 74, 1, 111 );
changeAnime( spep_0-3 + 75, 1, 111 );
changeAnime( spep_0-3 + 76, 1, 111 );
changeAnime( spep_0-3 + 77, 1, 111 );
changeAnime( spep_0-3 + 78, 1, 111 );
changeAnime( spep_0-3 + 78, 1, 111 );
changeAnime( spep_0-3 + 79, 1, 111 );

changeAnime( spep_0-3 + 80, 1, 108 );

setMoveKey( spep_0-3 + 34, 1, 265, 289 , 0 );
setMoveKey( spep_0-3 + 36, 1, 259.7, 282.9 , 0 );
setMoveKey( spep_0-3 + 38, 1, 254.8, 277.3 , 0 );
setMoveKey( spep_0-3 + 40, 1, 250.3, 272.2 , 0 );
setMoveKey( spep_0-3 + 42, 1, 246.2, 267.6 , 0 );
setMoveKey( spep_0-3 + 44, 1, 242.5, 263.3 , 0 );
setMoveKey( spep_0-3 + 47, 1, 239.1, 259.4 , 0 );
setMoveKey( spep_0-3 + 48, 1, 206.3, 219.4 , 0 );
setMoveKey( spep_0-3 + 50, 1, 153.6, 150.4 , 0 );
setMoveKey( spep_0-3 + 52, 1, 127.6, 116.6 , 0 );
setMoveKey( spep_0-3 + 54, 1, 107.6, 90.6 , 0 );
setMoveKey( spep_0-3 + 56, 1, 90.9, 69 , 0 );
setMoveKey( spep_0-3 + 58, 1, 76.5, 50.5 , 0 );
setMoveKey( spep_0-3 + 59, 1, 69.3, 21 , 0 );
setMoveKey( spep_0-3 + 62, 1, 61.2, 12.3 , 0 );
setMoveKey( spep_0-3 + 64, 1, 53.3, 3.8 , 0 );
setMoveKey( spep_0-3 + 66, 1, 45.6, -4.6 , 0 );
setMoveKey( spep_0-3 + 68, 1, 38.1, -12.8 , 0 );
setMoveKey( spep_0-3 + 70, 1, 30.7, -20.8 , 0 );
setMoveKey( spep_0-3 + 72, 1, 23.4, -28.7 , 0 );
setMoveKey( spep_0-3 + 74, 1, 16.3, -36.6 , 0 );
setMoveKey( spep_0-3 + 76, 1, 9.1, -44.2 , 0 );
setMoveKey( spep_0-3 + 79, 1, 2.2, -51.7 , 0 );
setMoveKey( spep_0-3 + 80, 1, 191.4, -39.1 , 0 );
setMoveKey( spep_0-3 + 82, 1, 149, -80.2 , 0 );
setMoveKey( spep_0-3 + 84, 1, 185.9, -50.5 , 0 );
setMoveKey( spep_0-3 + 86, 1, 180.6, -79.8 , 0 );
setMoveKey( spep_0-3 + 88, 1, 187.3, -61.1 , 0 );
setMoveKey( spep_0-3 + 90, 1, 185.3, -75.8 , 0 );
setMoveKey( spep_0-3 + 92, 1, 185.5, -63 , 0 );
setMoveKey( spep_0-3 + 94, 1, 185.7, -74.8 , 0 );
setMoveKey( spep_0-3 + 96, 1, 185.8, -63.6 , 0 );
setMoveKey( spep_0-3 + 98, 1, 284.8, -103.9 , 0 );
setMoveKey( spep_0-1 + 100, 1, 316.7, -90.3 , 0 );

setScaleKey( spep_0-3 + 36, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 38, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 42, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 44, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 48, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 50, 1, 0.75, 0.75 );
setScaleKey( spep_0-3 + 52, 1, 0.85, 0.85 );
setScaleKey( spep_0-3 + 54, 1, 0.93, 0.93 );
setScaleKey( spep_0-3 + 56, 1, 0.99, 0.99 );
setScaleKey( spep_0-3 + 58, 1, 1.05, 1.05 );
setScaleKey( spep_0-3 + 59, 1, 1.18, 1.18 );
setScaleKey( spep_0-3 + 62, 1, 1.19, 1.19 );
setScaleKey( spep_0-3 + 64, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 66, 1, 1.21, 1.21 );
setScaleKey( spep_0-3 + 68, 1, 1.22, 1.22 );
setScaleKey( spep_0-3 + 70, 1, 1.23, 1.23 );
setScaleKey( spep_0-3 + 72, 1, 1.24, 1.24 );
setScaleKey( spep_0-3 + 74, 1, 1.25, 1.25 );
setScaleKey( spep_0-3 + 76, 1, 1.26, 1.26 );
setScaleKey( spep_0-3 + 79, 1, 1.27, 1.27 );
setScaleKey( spep_0-3 + 80, 1, 1.76, 1.76 );
setScaleKey( spep_0-3 + 82, 1, 1.67, 1.67 );
setScaleKey( spep_0-3 + 84, 1, 1.76, 1.76 );
setScaleKey( spep_0-3 + 86, 1, 1.67, 1.67 );
setScaleKey( spep_0-3 + 88, 1, 1.76, 1.76 );
setScaleKey( spep_0-3 + 90, 1, 1.72, 1.72 );
setScaleKey( spep_0-3 + 96, 1, 1.72, 1.72 );
setScaleKey( spep_0-3 + 98, 1, 1.33, 1.33 );
setScaleKey( spep_0-1 + 100, 1, 1.37, 1.37 );

setRotateKey( spep_0-3 + 47, 1, 0 );
setRotateKey( spep_0-3 + 48, 1, -22 );
setRotateKey( spep_0-3 + 50, 1, -15.8 );
setRotateKey( spep_0-3 + 52, 1, -12.8 );
setRotateKey( spep_0-3 + 54, 1, -10.5 );
setRotateKey( spep_0-3 + 56, 1, -8.6 );
setRotateKey( spep_0-3 + 58, 1, -7 );
setRotateKey( spep_0-3 + 59, 1, -4.6 );
setRotateKey( spep_0-3 + 62, 1, -4.2 );
setRotateKey( spep_0-3 + 64, 1, -3.8 );
setRotateKey( spep_0-3 + 66, 1, -3.4 );
setRotateKey( spep_0-3 + 68, 1, -3 );
setRotateKey( spep_0-3 + 70, 1, -2.6 );
setRotateKey( spep_0-3 + 72, 1, -2.2 );
setRotateKey( spep_0-3 + 74, 1, -1.9 );
setRotateKey( spep_0-3 + 76, 1, -1.5 );
setRotateKey( spep_0-3 + 79, 1, -1.1 );
setRotateKey( spep_0-3 + 80, 1, 11.2 );
setRotateKey( spep_0-3 + 96, 1, 11.2 );
setRotateKey( spep_0-3 + 98, 1, 27.2 );
setRotateKey( spep_0-1 + 100, 1, 29.6 );

--SE
--敵突っ込んでくる
SE002 = playSeVer2( spep_0 + 46, 1117, "",spep_0 + 90, 0, 6, -1);

--パンチ
SE003 = playSeVer2( spep_0 + 78, 1003, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 86, 1009, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 86, 1110, "", 0, 0, 0, -1);

--雪に突っ込む
SE006 = playSeVer2( spep_0 + 100, 1014, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 + 136, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1= spep_0 + 144;
------------------------------------------------------
--様子を見る
------------------------------------------------------
-- ** エフェクト等 ** --
state = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, state, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, state, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, state, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, state, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, state, 0 );
setEffRotateKey( spep_1 + 100, state, 0 );
setEffAlphaKey( spep_1 + 0, state, 255 );
setEffAlphaKey( spep_1 + 100, state, 255 );

--文字エントリー
ctbikkuri = entryEffectLife( spep_1-3 + 40,  10000, 28, 0x100, -1, 0, -129.6, 129.6 );--!!
setEffShake( spep_1-3 + 40, ctbikkuri, 28, 10 );
setEffMoveKey( spep_1-3 + 40, ctbikkuri, -129.6, 129.6 , 0 );
setEffMoveKey( spep_1-3 + 42, ctbikkuri, -136.7, 138.6 , 0 );
setEffMoveKey( spep_1-3 + 44, ctbikkuri, -139.6, 145.4 , 0 );
setEffMoveKey( spep_1-3 + 46, ctbikkuri, -147, 151.8 , 0 );
setEffMoveKey( spep_1-3 + 48, ctbikkuri, -151.3, 163.1 , 0 );
setEffMoveKey( spep_1-3 + 50, ctbikkuri, -150.5, 160.1 , 0 );
setEffMoveKey( spep_1-3 + 52, ctbikkuri, -154.9, 162.3 , 0 );
setEffMoveKey( spep_1-3 + 54, ctbikkuri, -152.1, 160 , 0 );
setEffMoveKey( spep_1-3 + 56, ctbikkuri, -155.9, 161.2 , 0 );
setEffMoveKey( spep_1-3 + 58, ctbikkuri, -153.5, 158.7 , 0 );
setEffMoveKey( spep_1-3 + 60, ctbikkuri, -155.6, 162.9 , 0 );
setEffMoveKey( spep_1-3 + 62, ctbikkuri, -155.5, 159.7 , 0 );
setEffMoveKey( spep_1-3 + 64, ctbikkuri, -158.8, 160.6 , 0 );
setEffMoveKey( spep_1-3 + 66, ctbikkuri, -157.4, 159.2 , 0 );
setEffMoveKey( spep_1-3 + 68, ctbikkuri, -158, 159.2 , 0 );

setEffScaleKey( spep_1-3 + 40, ctbikkuri, 0.65, 0.65 );
setEffScaleKey( spep_1-3 + 42, ctbikkuri, 0.91, 0.91 );
setEffScaleKey( spep_1-3 + 44, ctbikkuri, 1.17, 1.17 );
setEffScaleKey( spep_1-3 + 46, ctbikkuri, 1.43, 1.43 );
setEffScaleKey( spep_1-3 + 48, ctbikkuri, 1.69, 1.69 );
setEffScaleKey( spep_1-3 + 68, ctbikkuri, 1.69, 1.69 );

setEffRotateKey( spep_1-3 + 40, ctbikkuri, -13.5 );
setEffRotateKey( spep_1-3 + 68, ctbikkuri, -13.5 );

setEffAlphaKey( spep_1-3 + 40, ctbikkuri, 255 );
setEffAlphaKey( spep_1-3 + 48, ctbikkuri, 255 );
setEffAlphaKey( spep_1-3 + 50, ctbikkuri, 230 );
setEffAlphaKey( spep_1-3 + 52, ctbikkuri, 204 );
setEffAlphaKey( spep_1-3 + 54, ctbikkuri, 179 );
setEffAlphaKey( spep_1-3 + 56, ctbikkuri, 153 );
setEffAlphaKey( spep_1-3 + 58, ctbikkuri, 128 );
setEffAlphaKey( spep_1-3 + 60, ctbikkuri, 102 );
setEffAlphaKey( spep_1-3 + 62, ctbikkuri, 77 );
setEffAlphaKey( spep_1-3 + 64, ctbikkuri, 51 );
setEffAlphaKey( spep_1-3 + 66, ctbikkuri, 25 );
setEffAlphaKey( spep_1-3 + 68, ctbikkuri, 0 );


--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 70,  906, 30, 0x100, -1, 0, 0, -3.2 );
setEffShake( spep_1-3 + 70, shuchusen2, 30, 20 );
setEffMoveKey( spep_1-3 + 70, shuchusen2, 0, -3.2 , 0 );
setEffMoveKey( spep_1-1 + 98, shuchusen2, 0, -3.2 , 0 );

setEffScaleKey( spep_1-3 + 70, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_1-1 + 98, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_1-3 + 70, shuchusen2, 180 );
setEffRotateKey( spep_1-1 + 98, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 70, shuchusen2, 255 );
setEffAlphaKey( spep_1-1 + 98, shuchusen2, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 + 98, 1, 0 );

changeAnime( spep_1 + 0, 1, 106 );
changeAnime( spep_1-3 + 40, 1, 118 );
changeAnime( spep_1-3 + 70, 1, 111 );
changeAnime( spep_1-3 + 71, 1, 111 );
changeAnime( spep_1-3 + 72, 1, 111 );
changeAnime( spep_1-3 + 73, 1, 111 );
changeAnime( spep_1-3 + 74, 1, 111 );
changeAnime( spep_1-3 + 75, 1, 111 );
changeAnime( spep_1-3 + 76, 1, 111 );
changeAnime( spep_1-3 + 77, 1, 111 );
changeAnime( spep_1-3 + 78, 1, 111 );
changeAnime( spep_1-3 + 79, 1, 111 );
changeAnime( spep_1-3 + 80, 1, 111 );
changeAnime( spep_1-3 + 81, 1, 111 );
changeAnime( spep_1-3 + 82, 1, 111 );
changeAnime( spep_1-3 + 83, 1, 111 );
changeAnime( spep_1-3 + 84, 1, 111 );
changeAnime( spep_1-3 + 85, 1, 111 );
changeAnime( spep_1-3 + 86, 1, 111 );
changeAnime( spep_1-3 + 87, 1, 111 );
changeAnime( spep_1-3 + 88, 1, 111 );
changeAnime( spep_1-3 + 89, 1, 111 );
changeAnime( spep_1-3 + 90, 1, 111 );
changeAnime( spep_1-3 + 91, 1, 111 );
changeAnime( spep_1-3 + 92, 1, 111 );
changeAnime( spep_1-3 + 93, 1, 111 );
changeAnime( spep_1-3 + 94, 1, 111 );
changeAnime( spep_1-3 + 95, 1, 111 );
changeAnime( spep_1-3 + 96, 1, 111 );
changeAnime( spep_1-3 + 97, 1, 111 );
changeAnime( spep_1-3 + 98, 1, 111 );
changeAnime( spep_1-2 + 98, 1, 111 );
changeAnime( spep_1-1 + 98, 1, 111 );

setMoveKey( spep_1 + 0, 1, 180.9, -253.9 , 0 );
setMoveKey( spep_1-3 + 39, 1, 180.9, -253.9 , 0 );

setMoveKey( spep_1-3 + 40, 1, 146.6, -157.8 , 0 );
setMoveKey( spep_1-3 + 69, 1, 146.6, -157.8 , 0 );

setMoveKey( spep_1-3 + 70, 1, 151.2, -123.9 , 0 );
setMoveKey( spep_1-3 + 72, 1, 178.2, -99.4 , 0 );
setMoveKey( spep_1-3 + 74, 1, 187.6, -90.6 , 0 );
setMoveKey( spep_1-3 + 76, 1, 193.9, -84.6 , 0 );
setMoveKey( spep_1-3 + 78, 1, 198.6, -80 , 0 );
setMoveKey( spep_1-3 + 80, 1, 202.3, -76.5 , 0 );
setMoveKey( spep_1-3 + 82, 1, 205.4, -73.7 , 0 );
setMoveKey( spep_1-3 + 84, 1, 207.8, -71.4 , 0 );
setMoveKey( spep_1-3 + 86, 1, 209.7, -69.7 , 0 );
setMoveKey( spep_1-3 + 88, 1, 211.3, -68.3 , 0 );
setMoveKey( spep_1-3 + 90, 1, 212.5, -67.3 , 0 );
setMoveKey( spep_1-3 + 92, 1, 213.4, -66.6 , 0 );
setMoveKey( spep_1-3 + 94, 1, 214, -66.1 , 0 );
setMoveKey( spep_1-3 + 96, 1, 214.3, -65.8 , 0 );
setMoveKey( spep_1-1 + 98, 1, 214.5, -65.7 , 0 );

setScaleKey( spep_1 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 39, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 40, 1, 1.51, 1.4 );
setScaleKey( spep_1-3 + 42, 1, 1.5, 1.47 );
setScaleKey( spep_1-3 + 44, 1, 1.5, 1.49 );
setScaleKey( spep_1-3 + 46, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 69, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 70, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 72, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 74, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 76, 1, 1.85, 1.85 );
setScaleKey( spep_1-3 + 78, 1, 1.88, 1.88 );
setScaleKey( spep_1-3 + 80, 1, 1.91, 1.91 );
setScaleKey( spep_1-3 + 82, 1, 1.93, 1.93 );
setScaleKey( spep_1-3 + 84, 1, 1.94, 1.94 );
setScaleKey( spep_1-3 + 86, 1, 1.95, 1.95 );
setScaleKey( spep_1-3 + 88, 1, 1.96, 1.96 );
setScaleKey( spep_1-3 + 90, 1, 1.97, 1.97 );
setScaleKey( spep_1-3 + 92, 1, 1.98, 1.98 );
setScaleKey( spep_1-1 + 98, 1, 1.98, 1.98 );

setRotateKey( spep_1 + 0, 1, 28.6 );
setRotateKey( spep_1-3 + 39, 1, 28.6 );
setRotateKey( spep_1-3 + 40, 1, 5 );
setRotateKey( spep_1-3 + 42, 1, 3 );
setRotateKey( spep_1-3 + 44, 1, 0 );
setRotateKey( spep_1-3 + 69, 1, 0 );
setRotateKey( spep_1-3 + 70, 1, 34.6 );
setRotateKey( spep_1-1 + 98, 1, 34.6 );

--SE
--敵起き上がる
SE007 = playSeVer2( spep_1 + 38, 37, "",spep_1 + 70, 0, 16, -1);

--ハッチャンびっくり
SE008 = playSeVer2( spep_1 + 38, 48, "",spep_1 + 102, 0, 26, 0.6);

--敵飛びかかる
SE009 = playSeVer2( spep_1 + 68, 1012, "", 0, 0, 0, -1);


-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 100, 0, 0, 0, 0, 255 );  

--白フェード
entryFade( spep_1 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 100; 
------------------------------------------------------
--突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_2 + 110, rush, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_2 + 110, rush, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush, 0 );
setEffRotateKey( spep_2 + 110, rush, 0 );
setEffAlphaKey( spep_2 + 0, rush, 255 );
setEffAlphaKey( spep_2 + 110, rush, 255 );


--顔カットインのタイミング指定
spep_x=spep_2 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え



--SE
--セリフカットイン
SE010 = playSeVer2( spep_2 + 0, 1018, "", 0, 0, 0, -1);

--17号突っ込んでくる
SE011 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE011, 72 );
SE012 = playSeVer2( spep_2 + 0, 1314, "",spep_2 + 132, 0, 28, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 110, 0, 0, 0, 0, 255 );  

--白フェード
entryFade( spep_2 + 102, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 110; 
------------------------------------------------------
--エルボー
------------------------------------------------------
-- ** エフェクト等 ** --
elbow_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, elbow_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 64, elbow_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, elbow_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 64, elbow_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, elbow_f, 0 );
setEffRotateKey( spep_3 + 64, elbow_f, 0 );
setEffAlphaKey( spep_3 + 0, elbow_f, 255 );
setEffAlphaKey( spep_3 + 62, elbow_f, 255 );
setEffAlphaKey( spep_3 + 63, elbow_f, 255 );
setEffAlphaKey( spep_3 + 64, elbow_f, 0 );

-- ** エフェクト等 ** --
elbow_b = entryEffect( spep_3 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, elbow_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 64, elbow_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 64, elbow_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, elbow_b, 0 );
setEffRotateKey( spep_3 + 64, elbow_b, 0 );
setEffAlphaKey( spep_3 + 0, elbow_b, 255 );
setEffAlphaKey( spep_3 + 62, elbow_b, 255 );
setEffAlphaKey( spep_3 + 63, elbow_b, 255 );
setEffAlphaKey( spep_3 + 64, elbow_b, 0 );

--文字エントリー

ctdon = entryEffectLife( spep_3-3 + 22,  10019, 30, 0x100, -1, 0, -16, 11.8 );--ドンッ
setEffShake( spep_3-3 + 22, ctdon, 30, 10 );
setEffMoveKey( spep_3-3 + 22, ctdon, -16, 11.8 , 0 );
setEffMoveKey( spep_3-3 + 24, ctdon, 18.5, 64.7 , 0 );
setEffMoveKey( spep_3-3 + 26, ctdon, 65.1, 102.7 , 0 );
setEffMoveKey( spep_3-3 + 28, ctdon, 57.3, 110.9 , 0 );
setEffMoveKey( spep_3-3 + 30, ctdon, 71.8, 122.6 , 0 );
setEffMoveKey( spep_3-3 + 32, ctdon, 73.5, 114.6 , 0 );
setEffMoveKey( spep_3-3 + 34, ctdon, 78.7, 135.9 , 0 );
setEffMoveKey( spep_3-3 + 36, ctdon, 86.8, 129.6 , 0 );
setEffMoveKey( spep_3-3 + 38, ctdon, 85.8, 141.3 , 0 );
setEffMoveKey( spep_3-3 + 40, ctdon, 94.4, 139.2 , 0 );
setEffMoveKey( spep_3-3 + 42, ctdon, 102.5, 152.5 , 0 );
setEffMoveKey( spep_3-3 + 44, ctdon, 110.5, 152.1 , 0 );
setEffMoveKey( spep_3-3 + 46, ctdon, 116.5, 176 , 0 );
setEffMoveKey( spep_3-3 + 48, ctdon, 145.3, 170.7 , 0 );
setEffMoveKey( spep_3-3 + 50, ctdon, 141, 184.9 , 0 );
setEffMoveKey( spep_3-3 + 52, ctdon, 154.8, 195.1 , 0 );

setEffScaleKey( spep_3-3 + 22, ctdon, 0.5, 0.5 );
setEffScaleKey( spep_3-3 + 24, ctdon, 1.36, 1.36 );
setEffScaleKey( spep_3-3 + 26, ctdon, 2.23, 2.23 );
setEffScaleKey( spep_3-3 + 28, ctdon, 2.25, 2.25 );
setEffScaleKey( spep_3-3 + 30, ctdon, 2.27, 2.27 );
setEffScaleKey( spep_3-3 + 32, ctdon, 2.29, 2.29 );
setEffScaleKey( spep_3-3 + 34, ctdon, 2.31, 2.31 );
setEffScaleKey( spep_3-3 + 36, ctdon, 2.33, 2.33 );
setEffScaleKey( spep_3-3 + 38, ctdon, 2.35, 2.35 );
setEffScaleKey( spep_3-3 + 40, ctdon, 2.37, 2.37 );
setEffScaleKey( spep_3-3 + 42, ctdon, 2.39, 2.39 );
setEffScaleKey( spep_3-3 + 44, ctdon, 2.41, 2.41 );
setEffScaleKey( spep_3-3 + 46, ctdon, 2.74, 2.74 );
setEffScaleKey( spep_3-3 + 48, ctdon, 3.07, 3.07 );
setEffScaleKey( spep_3-3 + 50, ctdon, 3.4, 3.4 );
setEffScaleKey( spep_3-3 + 52, ctdon, 3.73, 3.73 );

setEffRotateKey( spep_3-3 + 22, ctdon, 16 );
setEffRotateKey( spep_3-3 + 52, ctdon, 16 );

setEffAlphaKey( spep_3-3 + 22, ctdon, 255 );
setEffAlphaKey( spep_3-3 + 44, ctdon, 255 );
setEffAlphaKey( spep_3-3 + 46, ctdon, 191 );
setEffAlphaKey( spep_3-3 + 48, ctdon, 128 );
setEffAlphaKey( spep_3-3 + 50, ctdon, 64 );
setEffAlphaKey( spep_3-3 + 52, ctdon, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_3-3 + 22,  906, 36, 0x100, -1, 0, 0, -33.2 );
setEffShake( spep_3-3 + 22, shuchusen4, 36, 20 );
setEffMoveKey( spep_3-3 + 22, shuchusen4, 0, -33.2 , 0 );
setEffMoveKey( spep_3-3 + 58, shuchusen4, 0, -33.2 , 0 );

setEffScaleKey( spep_3-3 + 22, shuchusen4, 1.1, 1.1 );
setEffScaleKey( spep_3-3 + 58, shuchusen4, 1.1, 1.1 );

setEffRotateKey( spep_3-3 + 22, shuchusen4, 180 );
setEffRotateKey( spep_3-3 + 58, shuchusen4, 180 );

setEffAlphaKey( spep_3-3 + 22, shuchusen4, 255 );
setEffAlphaKey( spep_3-3 + 24, shuchusen4, 241 );
setEffAlphaKey( spep_3-3 + 26, shuchusen4, 227 );
setEffAlphaKey( spep_3-3 + 28, shuchusen4, 213 );
setEffAlphaKey( spep_3-3 + 30, shuchusen4, 198 );
setEffAlphaKey( spep_3-3 + 32, shuchusen4, 184 );
setEffAlphaKey( spep_3-3 + 34, shuchusen4, 170 );
setEffAlphaKey( spep_3-3 + 36, shuchusen4, 156 );
setEffAlphaKey( spep_3-3 + 38, shuchusen4, 142 );
setEffAlphaKey( spep_3-3 + 40, shuchusen4, 128 );
setEffAlphaKey( spep_3-3 + 42, shuchusen4, 113 );
setEffAlphaKey( spep_3-3 + 44, shuchusen4, 99 );
setEffAlphaKey( spep_3-3 + 46, shuchusen4, 85 );
setEffAlphaKey( spep_3-3 + 48, shuchusen4, 71 );
setEffAlphaKey( spep_3-3 + 50, shuchusen4, 57 );
setEffAlphaKey( spep_3-3 + 52, shuchusen4, 42 );
setEffAlphaKey( spep_3-3 + 54, shuchusen4, 28 );
setEffAlphaKey( spep_3-3 + 56, shuchusen4, 14 );
setEffAlphaKey( spep_3-3 + 58, shuchusen4, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 66, 1, 0 );

changeAnime( spep_3 + 0, 1, 111 );
changeAnime( spep_3 + 1, 1, 111 );
changeAnime( spep_3 + 2, 1, 111 );
changeAnime( spep_3 + 3, 1, 111 );
changeAnime( spep_3 + 4, 1, 111 );
changeAnime( spep_3 + 5, 1, 111 );
changeAnime( spep_3 + 6, 1, 111 );
changeAnime( spep_3 + 7, 1, 111 );
changeAnime( spep_3 + 8, 1, 111 );
changeAnime( spep_3 + 9, 1, 111 );
changeAnime( spep_3 + 11, 1, 111 );
changeAnime( spep_3 + 12, 1, 111 );
changeAnime( spep_3 + 13, 1, 111 );
changeAnime( spep_3 + 14, 1, 111 );
changeAnime( spep_3 + 15, 1, 111 );
changeAnime( spep_3 + 16, 1, 111 );
changeAnime( spep_3-3 + 20, 1, 108 );

setMoveKey( spep_3 + 0, 1, 71, -107.4 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 39.8, -100.3 , 0 );
setMoveKey( spep_3-3 + 4, 1, 29.9, -98.1 , 0 );
setMoveKey( spep_3-3 + 6, 1, 23.7, -96.7 , 0 );
setMoveKey( spep_3-3 + 8, 1, 19.4, -95.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 16.5, -95.2 , 0 );
setMoveKey( spep_3-3 + 12, 1, 14.5, -94.7 , 0 );
setMoveKey( spep_3-3 + 14, 1, 13.2, -94.4 , 0 );
setMoveKey( spep_3-3 + 16, 1, 12.5, -94.3 , 0 );
setMoveKey( spep_3-3 + 19, 1, 12.3, -94.3 , 0 );
setMoveKey( spep_3-3 + 20, 1, 78.5, -59.1 , 0 );
setMoveKey( spep_3-3 + 22, 1, 65.9, -89 , 0 );
setMoveKey( spep_3-3 + 24, 1, 61.1, -73.2 , 0 );
setMoveKey( spep_3-3 + 26, 1, 59.5, -87.5 , 0 );
setMoveKey( spep_3-3 + 28, 1, 59.9, -75.8 , 0 );
setMoveKey( spep_3-3 + 30, 1, 60.2, -83.9 , 0 );
setMoveKey( spep_3-3 + 32, 1, 69.5, -74.2 , 0 );
setMoveKey( spep_3-3 + 34, 1, 77.4, -75.1 , 0 );
setMoveKey( spep_3-3 + 36, 1, 84.2, -68.4 , 0 );
setMoveKey( spep_3-3 + 38, 1, 90.1, -69.2 , 0 );
setMoveKey( spep_3-3 + 40, 1, 95.3, -64 , 0 );
setMoveKey( spep_3-3 + 42, 1, 99.7, -64.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 103.6, -60.7 , 0 );
setMoveKey( spep_3-3 + 46, 1, 107, -60.9 , 0 );
setMoveKey( spep_3-3 + 48, 1, 110, -58.7 , 0 );
setMoveKey( spep_3-3 + 50, 1, 112.6, -57.5 , 0 );
setMoveKey( spep_3-3 + 52, 1, 114.7, -56.5 , 0 );
setMoveKey( spep_3-3 + 54, 1, 116.6, -55.7 , 0 );
setMoveKey( spep_3-3 + 56, 1, 118.2, -55 , 0 );
setMoveKey( spep_3 + 66, 1, 119.4, -54.4 , 0 );


setScaleKey( spep_3 + 0, 1, 1.42, 1.42 );
setScaleKey( spep_3-3 + 19, 1, 1.42, 1.42 );
setScaleKey( spep_3-3 + 20, 1, 1.7, 1.7 );
setScaleKey( spep_3-3 + 22, 1, 1.51, 1.51 );
setScaleKey( spep_3-3 + 24, 1, 1.45, 1.45 );
setScaleKey( spep_3-3 + 26, 1, 1.42, 1.42 );
setScaleKey( spep_3-3 + 30, 1, 1.42, 1.42 );
setScaleKey( spep_3-3 + 32, 1, 1.41, 1.41 );
setScaleKey( spep_3-3 + 44, 1, 1.41, 1.41 );
setScaleKey( spep_3-3 + 46, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 66, 1, 1.4, 1.4 );

setRotateKey( spep_3 + 0, 1, 34.6 );
--setRotateKey( spep_3-3 + 2, 1, 32 );
setRotateKey( spep_3-3 + 4, 1, 31.1 );
setRotateKey( spep_3-3 + 6, 1, 30.6 );
setRotateKey( spep_3-3 + 8, 1, 30.2 );
setRotateKey( spep_3-3 + 10, 1, 30 );
setRotateKey( spep_3-3 + 12, 1, 29.8 );
setRotateKey( spep_3-3 + 14, 1, 29.7 );
setRotateKey( spep_3-3 + 16, 1, 29.7 );
setRotateKey( spep_3-3 + 19, 1, 29.6 );
setRotateKey( spep_3-3 + 20, 1, -13.6 );
setRotateKey( spep_3-3 + 30, 1, -13.6 );
setRotateKey( spep_3-3 + 32, 1, -16 );
setRotateKey( spep_3-3 + 34, 1, -18 );
setRotateKey( spep_3-3 + 36, 1, -19.7 );
setRotateKey( spep_3-3 + 38, 1, -21.2 );
setRotateKey( spep_3-3 + 40, 1, -22.5 );
setRotateKey( spep_3-3 + 42, 1, -23.7 );
setRotateKey( spep_3-3 + 44, 1, -24.7 );
setRotateKey( spep_3-3 + 46, 1, -25.6 );
setRotateKey( spep_3-3 + 48, 1, -26.4 );
setRotateKey( spep_3-3 + 50, 1, -27.1 );
setRotateKey( spep_3-3 + 52, 1, -27.7 );
setRotateKey( spep_3-3 + 54, 1, -28.2 );
setRotateKey( spep_3-3 + 56, 1, -28.7 );
setRotateKey( spep_3 + 66, 1, -29 );

--SE
--エルボー
SE013 = playSeVer2( spep_3 + 12, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 18, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 18, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 70, 0, 0, 0, 0, 255 );  

-- ** 次の準備 ** --
spep_4= spep_3 + 64; 
------------------------------------------------------
--アッパー
------------------------------------------------------
-- ** エフェクト等 ** --
upper_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, upper_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 54, upper_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, upper_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 54, upper_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, upper_f, 0 );
setEffRotateKey( spep_4 + 54, upper_f, 0 );
setEffAlphaKey( spep_4 + 0, upper_f, 255 );
setEffAlphaKey( spep_4 + 54, upper_f, 255 );

-- ** エフェクト等 ** --
upper_b = entryEffect( spep_4 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, upper_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 54, upper_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, upper_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 54, upper_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, upper_b, 0 );
setEffRotateKey( spep_4 + 54, upper_b, 0 );
setEffAlphaKey( spep_4 + 0, upper_b, 255 );
setEffAlphaKey( spep_4 + 54, upper_b, 255 );

--文字エントリー
ctga = entryEffectLife( spep_4-3 + 24,  10005, 28, 0x100, -1, 0, 37.2, 100 );--ガッ
setEffShake( spep_4-3 + 24, ctga, 28, 10 );
setEffMoveKey( spep_4-3 + 24, ctga, 37.2, 100 , 0 );
setEffMoveKey( spep_4-3 + 26, ctga, 22.6, 119.6 , 0 );
setEffMoveKey( spep_4-3 + 28, ctga, 7.2, 154.9 , 0 );
setEffMoveKey( spep_4-3 + 30, ctga, 9.9, 151.4 , 0 );
setEffMoveKey( spep_4-3 + 32, ctga, 11.7, 170.1 , 0 );
setEffMoveKey( spep_4-3 + 34, ctga, 14.4, 166.4 , 0 );
setEffMoveKey( spep_4-3 + 36, ctga, 16.2, 185.4 , 0 );
setEffMoveKey( spep_4-3 + 38, ctga, 18.9, 181.4 , 0 );
setEffMoveKey( spep_4-3 + 40, ctga, 20.7, 200.6 , 0 );
setEffMoveKey( spep_4-3 + 42, ctga, 23.4, 196.3 , 0 );
setEffMoveKey( spep_4-3 + 44, ctga, 25.1, 215.8 , 0 );
setEffMoveKey( spep_4-3 + 46, ctga, 27.9, 211.3 , 0 );
setEffMoveKey( spep_4-3 + 48, ctga, 29.6, 231.1 , 0 );
setEffMoveKey( spep_4-3 + 50, ctga, 32.3, 226.3 , 0 );
setEffMoveKey( spep_4-3 + 52, ctga, 34.6, 233.8 , 0 );

setEffScaleKey( spep_4-3 + 24, ctga, 1.61,1.61);
setEffScaleKey( spep_4-3 + 26, ctga, 2.66,2.66);
setEffScaleKey( spep_4-3 + 28, ctga, 3.74,3.74);
setEffScaleKey( spep_4-3 + 30, ctga, 3.77,3.77);
setEffScaleKey( spep_4-3 + 32, ctga, 3.82,3.82);
setEffScaleKey( spep_4-3 + 34, ctga, 3.85,3.85);
setEffScaleKey( spep_4-3 + 36, ctga, 3.91,3.91);
setEffScaleKey( spep_4-3 + 38, ctga, 3.94,3.94);
setEffScaleKey( spep_4-3 + 40, ctga, 3.99,3.99);
setEffScaleKey( spep_4-3 + 42, ctga, 4.02,4.02);
setEffScaleKey( spep_4-3 + 44, ctga, 4.08,4.08);
setEffScaleKey( spep_4-3 + 46, ctga, 4.11,4.11);
setEffScaleKey( spep_4-3 + 48, ctga, 4.16,4.16);
setEffScaleKey( spep_4-3 + 50, ctga, 4.19,4.19);
setEffScaleKey( spep_4-3 + 52, ctga, 4.25,4.25);

setEffRotateKey( spep_4-3 + 24, ctga, -20.4 );
setEffRotateKey( spep_4-3 + 52, ctga, -20.4 );

setEffAlphaKey( spep_4-3 + 24, ctga, 85 );
setEffAlphaKey( spep_4-3 + 26, ctga, 170 );
setEffAlphaKey( spep_4-3 + 28, ctga, 255 );
setEffAlphaKey( spep_4-3 + 30, ctga, 234 );
setEffAlphaKey( spep_4-3 + 32, ctga, 213 );
setEffAlphaKey( spep_4-3 + 34, ctga, 191 );
setEffAlphaKey( spep_4-3 + 36, ctga, 170 );
setEffAlphaKey( spep_4-3 + 38, ctga, 149 );
setEffAlphaKey( spep_4-3 + 40, ctga, 128 );
setEffAlphaKey( spep_4-3 + 42, ctga, 106 );
setEffAlphaKey( spep_4-3 + 44, ctga, 85 );
setEffAlphaKey( spep_4-3 + 46, ctga, 64 );
setEffAlphaKey( spep_4-3 + 48, ctga, 42 );
setEffAlphaKey( spep_4-3 + 50, ctga, 21 );
setEffAlphaKey( spep_4-3 + 52, ctga, 0 );

--敵の動き
setDisp( spep_4-3 + 20, 1, 1 );
setDisp( spep_4-3 + 46, 1, 0 );

changeAnime( spep_4-3 + 20, 1, 108 );
changeAnime( spep_4-3 + 24, 1, 106 );

setMoveKey( spep_4-3 + 20, 1, 264.5, -87.8 , 0 );
setMoveKey( spep_4-3 + 23, 1, 264.5, -87.8 , 0 );

setMoveKey( spep_4-3 + 24, 1, -14.3, -317 , 0 );
setMoveKey( spep_4-3 + 26, 1, 643, 368.2 , 0 );
setMoveKey( spep_4-3 + 28, 1, 919.4, 656.3 , 0 );
setMoveKey( spep_4-3 + 30, 1, 1101.8, 846.3 , 0 );
setMoveKey( spep_4-3 + 32, 1, 1234.8, 985 , 0 );
setMoveKey( spep_4-3 + 34, 1, 1336.3, 1090.8 , 0 );
setMoveKey( spep_4-3 + 36, 1, 1415.6, 1173.4 , 0 );
setMoveKey( spep_4-3 + 38, 1, 1478.2, 1238.7 , 0 );
setMoveKey( spep_4-3 + 40, 1, 1527.9, 1290.5 , 0 );
setMoveKey( spep_4-3 + 42, 1, 1567.3, 1331.5 , 0 );
setMoveKey( spep_4-3 + 44, 1, 1598.4, 1363.9 , 0 );
setMoveKey( spep_4-3 + 46, 1, 1622.7, 1389.2 , 0 );

setScaleKey( spep_4-3 + 20, 1, 10.17, 10.17 );
setScaleKey( spep_4-3 + 23, 1, 10.17, 10.17 );

setScaleKey( spep_4-3 + 24, 1, 9.68, 9.68 );
setScaleKey( spep_4-3 + 26, 1, 8.99, 8.99 );
setScaleKey( spep_4-3 + 28, 1, 8.7, 8.7 );
setScaleKey( spep_4-3 + 30, 1, 8.51, 8.51 );
setScaleKey( spep_4-3 + 32, 1, 8.37, 8.37 );
setScaleKey( spep_4-3 + 34, 1, 8.26, 8.26 );
setScaleKey( spep_4-3 + 36, 1, 8.18, 8.18 );
setScaleKey( spep_4-3 + 38, 1, 8.11, 8.11 );
setScaleKey( spep_4-3 + 40, 1, 8.06, 8.06 );
setScaleKey( spep_4-3 + 42, 1, 8.02, 8.02 );
setScaleKey( spep_4-3 + 44, 1, 7.98, 7.98 );
setScaleKey( spep_4-3 + 46, 1, 7.96, 7.96 );

setRotateKey( spep_4-3 + 20, 1, -10.3 );
setRotateKey( spep_4-3 + 23, 1, -10.3 );

setRotateKey( spep_4-3 + 24, 1, -47.4 );
setRotateKey( spep_4-3 + 26, 1, -30.5 );
setRotateKey( spep_4-3 + 28, 1, -23.4 );
setRotateKey( spep_4-3 + 30, 1, -18.7 );
setRotateKey( spep_4-3 + 32, 1, -15.3 );
setRotateKey( spep_4-3 + 34, 1, -12.7 );
setRotateKey( spep_4-3 + 36, 1, -10.6 );
setRotateKey( spep_4-3 + 38, 1, -9 );
setRotateKey( spep_4-3 + 40, 1, -7.7 );
setRotateKey( spep_4-3 + 42, 1, -6.7 );
setRotateKey( spep_4-3 + 44, 1, -5.9 );
setRotateKey( spep_4-3 + 46, 1, -5.3 );

--SE
--アッパー
SE016 = playSeVer2( spep_4 + 0, 1116, "",spep_4 + 30, 0, 10, -1);
SE017 = playSeVer2( spep_4 + 20, 1190, "",spep_4 + 60, 0, 24, -1);
SE018 = playSeVer2( spep_4 + 20, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 20, SE018, 85 );
SE019 = playSeVer2( spep_4 + 20, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 52, 0, 0, 0, 0, 255 );  

--白フェード
entryFade( spep_4 + 46, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5= spep_4 + 54; 
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 86, shuchusen, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6= spep_5 + 94; 
------------------------------------------------------
--回し蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_6 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 44, kick_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 44, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kick_f, 0 );
setEffRotateKey( spep_6 + 44, kick_f, 0 );
setEffAlphaKey( spep_6 + 0, kick_f, 255 );
setEffAlphaKey( spep_6 + 42, kick_f, 255 );
setEffAlphaKey( spep_6 + 43, kick_f, 255 );
setEffAlphaKey( spep_6 + 44, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_6 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 44, kick_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 44, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kick_b, 0 );
setEffRotateKey( spep_6 + 44, kick_b, 0 );
setEffAlphaKey( spep_6 + 0, kick_b, 255 );
setEffAlphaKey( spep_6 + 42, kick_b, 255 );
setEffAlphaKey( spep_6 + 43, kick_b, 255 );
setEffAlphaKey( spep_6 + 44, kick_b, 0 );

--敵の動き
setDisp( spep_6-3 + 24, 1, 1 );


changeAnime( spep_6-3 + 24, 1, 106 );
changeAnime( spep_6-3 + 30, 1, 108 );

setMoveKey( spep_6-3 + 24, 1, 132.1, 164.9 , 0 );
setMoveKey( spep_6-3 + 26, 1, 136.9, 152.5 , 0 );
setMoveKey( spep_6-3 + 28, 1, 138, 149.9 , 0 );
setMoveKey( spep_6-3 + 29, 1, 138, 149.9 , 0 );

setMoveKey( spep_6-3 + 30, 1, 129.8, 148.5 , 0 );
setMoveKey( spep_6-3 + 32, 1, 129.8, 85.4 , 0 );
setMoveKey( spep_6-3 + 34, 1, 129.8, 131.5 , 0 );
setMoveKey( spep_6-3 + 36, 1, 129.8, 144.1 , 0 );
setMoveKey( spep_6-3 + 38, 1, 141, 105 , 0 );
setMoveKey( spep_6-3 + 40, 1, 152.3, 151.8 , 0 );
setMoveKey( spep_6-3 + 42, 1, 163.6, 133.5 , 0 );
setMoveKey( spep_6-3 + 44, 1, 174.9, 175.5 , 0 );
setMoveKey( spep_6-3 + 46, 1, 186.2, 161 , 0 );

setScaleKey( spep_6-3 + 24, 1, 7.49, 7.49 );
setScaleKey( spep_6-3 + 26, 1, 7.84, 7.84 );
setScaleKey( spep_6-3 + 28, 1, 7.92, 7.92 );
setScaleKey( spep_6-3 + 29, 1, 7.92, 7.92 );

setScaleKey( spep_6-3 + 30, 1, 8.7, 8.7 );
setScaleKey( spep_6-3 + 36, 1, 8.7, 8.7 );
setScaleKey( spep_6-3 + 38, 1, 8.68, 8.68 );
setScaleKey( spep_6-3 + 40, 1, 8.65, 8.65 );
setScaleKey( spep_6-3 + 42, 1, 8.63, 8.63 );
setScaleKey( spep_6-3 + 44, 1, 8.61, 8.61 );
setScaleKey( spep_6-3 + 46, 1, 8.59, 8.59 );

setRotateKey( spep_6-3 + 24, 1, -47.4 );
setRotateKey( spep_6-3 + 29, 1, -47.4 );

setRotateKey( spep_6-3 + 30, 1, -5.3 );
setRotateKey( spep_6-3 + 46, 1, -5.3 );

--SE
--後ろ回し蹴り
SE021 = playSeVer2( spep_6 + 0, 1117, "",spep_6 + 30, 0, 10, -1);
SE022 = playSeVer2( spep_6 + 10, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_6 + 24, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 24, SE023, 77 );
SE024 = playSeVer2( spep_6 + 26, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 26, SE024, 90 );
SE025 = playSeVer2( spep_6 + 26, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 26, SE025, 74 );
SE026 = playSeVer2( spep_6 + 30, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 30, SE026, 91 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 50, 0, 0, 0, 0, 255 );  

-- ** 次の準備 ** --
spep_7= spep_6 + 44; 
------------------------------------------------------
--爆風から二人
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 150, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_7 + 150, finish, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 150, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 150, finish, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_7 + 0,  906, 98-3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 0, shuchusen5, 98-3, 20 );
setEffMoveKey( spep_7 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7-3 + 98, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen5, 1.05, 1.05 );
setEffScaleKey( spep_7-3 + 98, shuchusen5, 1.05, 1.05 );

setEffRotateKey( spep_7-3 + 0, shuchusen5, 180 );
setEffRotateKey( spep_7 + 98, shuchusen5, 180 );

setEffAlphaKey( spep_7 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_7-3 + 78, shuchusen5, 255 );
setEffAlphaKey( spep_7-3 + 80, shuchusen5, 230 );
setEffAlphaKey( spep_7-3 + 82, shuchusen5, 204 );
setEffAlphaKey( spep_7-3 + 84, shuchusen5, 179 );
setEffAlphaKey( spep_7-3 + 86, shuchusen5, 153 );
setEffAlphaKey( spep_7-3 + 88, shuchusen5, 128 );
setEffAlphaKey( spep_7-3 + 90, shuchusen5, 102 );
setEffAlphaKey( spep_7-3 + 92, shuchusen5, 77 );
setEffAlphaKey( spep_7-3 + 94, shuchusen5, 51 );
setEffAlphaKey( spep_7-3 + 96, shuchusen5, 25 );
setEffAlphaKey( spep_7-3 + 98, shuchusen5, 0 );

--敵の動き
setDisp( spep_7-1 + 18, 1, 0 );

changeAnime( spep_7 + 0, 1, 5 );

setMoveKey( spep_7 + 0, 1, 49.6, -77 , 0 );
setMoveKey( spep_7 + 2, 1, 34.8, -83.8 , 0 );
setMoveKey( spep_7 + 4, 1, 27.3, -85.6 , 0 );
setMoveKey( spep_7 + 6, 1, 21.8, -86.3 , 0 );
setMoveKey( spep_7 + 8, 1, 17.5, -86.4 , 0 );
setMoveKey( spep_7 + 10, 1, 14, -86.3 , 0 );
setMoveKey( spep_7 + 12, 1, 11.1, -86.1 , 0 );
setMoveKey( spep_7 + 14, 1, 8.7, -85.7 , 0 );
setMoveKey( spep_7 + 16, 1, 6.7, -85.4 , 0 );
setMoveKey( spep_7 + 18, 1, 5.3, -85.1 , 0 );

setScaleKey( spep_7 + 0, 1, 7.11, 7.11 );
setScaleKey( spep_7 + 2, 1, 5.13, 5.13 );
setScaleKey( spep_7 + 4, 1, 4.16, 4.16 );
setScaleKey( spep_7 + 6, 1, 3.46, 3.46 );
setScaleKey( spep_7 + 8, 1, 2.91, 2.91 );
setScaleKey( spep_7 + 10, 1, 2.46, 2.46 );
setScaleKey( spep_7 + 12, 1, 2.08, 2.08 );
setScaleKey( spep_7 + 14, 1, 1.76, 1.76 );
setScaleKey( spep_7 + 16, 1, 1.49, 1.49 );
setScaleKey( spep_7 + 18, 1, 1.31, 1.31 );

setRotateKey( spep_7 + 0, 1, 18 );
setRotateKey( spep_7 + 2, 1, 26 );
setRotateKey( spep_7 + 4, 1, 29.9 );
setRotateKey( spep_7 + 6, 1, 32.7 );
setRotateKey( spep_7 + 8, 1, 34.9 );
setRotateKey( spep_7 + 10, 1, 36.7 );
setRotateKey( spep_7 + 12, 1, 38.2 );
setRotateKey( spep_7 + 14, 1, 39.5 );
setRotateKey( spep_7 + 16, 1, 40.6 );
setRotateKey( spep_7 + 18, 1, 41.3 );

--SE
--敵飛んでいく
SE027 = playSeVer2( spep_7 + 0, 1183, "",spep_7 + 36, 0, 8, -1);

--地面爆発
SE028 = playSeVer2( spep_7 + 18, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 18, SE028, 75 );
SE029 = playSeVer2( spep_7 + 18, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 18, SE029, 77 );
SE030 = playSeVer2( spep_7 + 18, 1160, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 18, SE030, 66 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 140, 0, 0, 0, 0, 255 );  

--終わり
dealDamage(spep_7+18);
endPhase( spep_7 + 140 );
end