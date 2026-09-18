--1022310:ピッコロ&クリリン_爆力魔波&かめはめ波
--sp_effect_a1_00302

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
SP_01=	157506	;--	並ぶ二人
SP_02=	157508	;--	クリリン、ピッコロ殴り_敵より手前
SP_03=	157509	;--	クリリン、ピッコロ殴り_敵より奥
SP_04=	157512	;--	クリリンかめはめ波_敵より手前
SP_05=	157513	;--	クリリンかめはめ波_敵より奥
SP_06=	157516	;--	軌道が変わるかめはめ波
SP_07=	157517	;--	ピッコロ気弾
SP_08=	157519	;--	クリリンフィニッシュポーズ
SP_09=	157521	;--	フィニッシュ_敵より手前
SP_10=	157522	;--	フィニッシュ_敵より奥

--エフェクト(敵)
SP_01x=	157507	;--	並ぶ二人	(敵)
SP_02x=	157510	;--	クリリン、ピッコロ殴り_敵より手前	(敵)
SP_03x=	157511	;--	クリリン、ピッコロ殴り_敵より奥	(敵)
SP_04x=	157514	;--	クリリンかめはめ波_敵より手前	(敵)
SP_05x=	157515	;--	クリリンかめはめ波_敵より奥	(敵)
SP_06x=	157516	;--	軌道が変わるかめはめ波
SP_07x=	157518	;--	ピッコロ気弾	(敵)
SP_08x=	157520	;--	クリリンフィニッシュポーズ	(敵)
SP_09x=	157521	;--	フィニッシュ_敵より手前	
SP_10x=	157522	;--	フィニッシュ_敵より奥	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.8);


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
-- 並ぶ二人
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
equal = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, equal, 0, 0, 0 );
setEffMoveKey( spep_0 + 116, equal, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, equal, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, equal, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, equal, 0 );
setEffRotateKey( spep_0 + 116, equal, 0 );
setEffAlphaKey( spep_0 + 0, equal, 255 );
setEffAlphaKey( spep_0 + 114, equal, 255 );
setEffAlphaKey( spep_0 + 115, equal, 255 );
setEffAlphaKey( spep_0 + 116, equal, 0 );

--SE
--入り
SE001 = playSe( spep_0 + 0, 8 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 77 );
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 22 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
   
    pauseAll( SP_dodge, 67);
    
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

--顔カットインのタイミング指定
spep_x=spep_0 +10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  100,  515);
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
--顔カットイン
SE002 = playSe( spep_x + 12, 1018 );

--クリリン飛び上がる
SE003 = playSe( spep_0 + 66, 1182 );
stopSe( spep_0 + 82, SE003, 32 );
SE004 = playSe( spep_0 + 66, 44 );
stopSe( spep_0 + 82, SE004, 32 );

--ピッコロ瞬間移動
SE005 = playSe( spep_0 + 80, 1109 );

--次の準備
spep_1=spep_0+116;
------------------------------------------------------
-- クリリン、ピッコロ殴り
------------------------------------------------------
-- ** エフェクト等 ** --
punching_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, punching_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 126, punching_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punching_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 126, punching_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punching_f, 0 );
setEffRotateKey( spep_1 + 126, punching_f, 0 );
setEffAlphaKey( spep_1 + 0, punching_f, 255 );
setEffAlphaKey( spep_1 + 124, punching_f, 255 );
setEffAlphaKey( spep_1 + 125, punching_f, 255 );
setEffAlphaKey( spep_1 + 126, punching_f, 0 );

-- ** エフェクト等 ** --
punching_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, punching_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 126, punching_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punching_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 126, punching_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punching_b, 0 );
setEffRotateKey( spep_1 + 126, punching_b, 0 );
setEffAlphaKey( spep_1 + 0, punching_b, 255 );
setEffAlphaKey( spep_1 + 124, punching_b, 255 );
setEffAlphaKey( spep_1 + 125, punching_b, 255 );
setEffAlphaKey( spep_1 + 126, punching_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + -3 + 114, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );
changeAnime( spep_1-3 + 20, 1, 108 );
changeAnime( spep_1-3 + 88, 1, 106 );

setMoveKey( spep_1 + 0, 1, 0, -26 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 0, -24.5 , 0 );
setMoveKey( spep_1-3 + 4, 1, 0, -23 , 0 );
setMoveKey( spep_1-3 + 6, 1, 0, -21.5 , 0 );
setMoveKey( spep_1-3 + 8, 1, 0, -20 , 0 );
setMoveKey( spep_1-3 + 19, 1, 0, -20 , 0 );
setMoveKey( spep_1-3 + 20, 1, 55, 82.6 , 0 );
setMoveKey( spep_1-3 + 22, 1, 32, 56.2 , 0 );
setMoveKey( spep_1-3 + 24, 1, 62.9, 109.3 , 0 );
setMoveKey( spep_1-3 + 26, 1, 93.3, 113.8 , 0 );
setMoveKey( spep_1-3 + 28, 1, 100.5, 159.1 , 0 );
setMoveKey( spep_1-3 + 30, 1, 154.8, 174.8 , 0 );
setMoveKey( spep_1-3 + 32, 1, 157.1, 218.3 , 0 );
setMoveKey( spep_1-3 + 34, 1, 231.7, 238.3 , 0 );
setMoveKey( spep_1-3 + 36, 1, 241.2, 305 , 0 );
setMoveKey( spep_1-3 + 38, 1, 278, 332 , 0 );
setMoveKey( spep_1-3 + 40, 1, 287.1, 340.9 , 0 );
setMoveKey( spep_1-3 + 42, 1, 295.7, 349.5 , 0 );
setMoveKey( spep_1-3 + 44, 1, 304, 357.7 , 0 );
setMoveKey( spep_1-3 + 46, 1, 311.9, 365.5 , 0 );
setMoveKey( spep_1-3 + 48, 1, 319.5, 372.9 , 0 );
setMoveKey( spep_1-3 + 50, 1, 326.6, 379.9 , 0 );
setMoveKey( spep_1-3 + 52, 1, 333.3, 386.6 , 0 );
setMoveKey( spep_1-3 + 54, 1, 339.7, 392.9 , 0 );
setMoveKey( spep_1-3 + 56, 1, 345.7, 398.8 , 0 );
setMoveKey( spep_1-3 + 58, 1, 292, 327.2 , 0 );
setMoveKey( spep_1-3 + 60, 1, 241.1, 258.3 , 0 );
setMoveKey( spep_1-3 + 62, 1, 192.8, 192 , 0 );
setMoveKey( spep_1-3 + 64, 1, 146.7, 127.9 , 0 );
setMoveKey( spep_1-3 + 66, 1, 102.4, 65.5 , 0 );
setMoveKey( spep_1-3 + 68, 1, 59.4, 4.5 , 0 );
setMoveKey( spep_1-3 + 70, 1, 68, 7.9 , 0 );
setMoveKey( spep_1-3 + 72, 1, 75.3, 9.9 , 0 );
setMoveKey( spep_1-3 + 74, 1, 81.3, 10.8 , 0 );
setMoveKey( spep_1-3 + 76, 1, 86, 10.3 , 0 );
setMoveKey( spep_1-3 + 78, 1, 89.5, 8.7 , 0 );
setMoveKey( spep_1-3 + 80, 1, 91.9, 6 , 0 );
setMoveKey( spep_1-3 + 82, 1, 93.1, 2.1 , 0 );
setMoveKey( spep_1-3 + 84, 1, 93.3, -2.8 , 0 );
setMoveKey( spep_1-3 + 87, 1, 92.2, -8.7 , 0 );
setMoveKey( spep_1-3 + 88, 1, 174.4, -43.8 , 0 );
setMoveKey( spep_1-3 + 89, 1, 174.4, -43.8 , 0 );
setMoveKey( spep_1-3 + 90, 1, 1481, -11.8 , 0 );
setMoveKey( spep_1-3 + 92, 1, 1842.4, -82.2 , 0 );
setMoveKey( spep_1-3 + 94, 1, 2229.5, -24.6 , 0 );
setMoveKey( spep_1-3 + 96, 1, 2712.5, -63 , 0 );
setMoveKey( spep_1-3 + 98, 1, 3067.6, -24.6 , 0 );
setMoveKey( spep_1-3 + 100, 1, 3486.6, -37.4 , 0 );
setMoveKey( spep_1-3 + 102, 1, 3486.6, -50.2 , 0 );
setMoveKey( spep_1-3 + 104, 1, 3480.2, -43.8 , 0 );
setMoveKey( spep_1-3 + 106, 1, 3493, -43.8 , 0 );
setMoveKey( spep_1-3 + 108, 1, 3486.6, -37.4 , 0 );
setMoveKey( spep_1-3 + 110, 1, 3486.6, -50.2 , 0 );
setMoveKey( spep_1-3 + 112, 1, 3480.2, -43.8 , 0 );
setMoveKey( spep_1-3 + 114, 1, 3486.6, -43.8 , 0 );

setScaleKey( spep_1 + 0, 1,3.16,3.16);
setScaleKey( spep_1-3 + 4, 1, 2.78,2.78);
setScaleKey( spep_1-3 + 6, 1, 2.61,2.61);
setScaleKey( spep_1-3 + 8, 1, 2.41,2.41);
setScaleKey( spep_1-3 + 19, 1,2.41,2.41);

setScaleKey( spep_1-3 + 20, 1, 2.88,2.88);
setScaleKey( spep_1-3 + 22, 1, 2.92,2.92);
setScaleKey( spep_1-3 + 24, 1, 2.92,2.92);
setScaleKey( spep_1-3 + 26, 1, 2.88,2.88);
setScaleKey( spep_1-3 + 28, 1, 2.79,2.79);
setScaleKey( spep_1-3 + 30, 1, 2.7,2.7);
setScaleKey( spep_1-3 + 32, 1, 2.52,2.52);
setScaleKey( spep_1-3 + 34, 1, 2.34,2.34);
setScaleKey( spep_1-3 + 36, 1, 2.11,2.11);
setScaleKey( spep_1-3 + 38, 1, 1.89,1.89);
setScaleKey( spep_1-3 + 40, 1, 1.8,1.8);
setScaleKey( spep_1-3 + 42, 1, 1.71,1.71);
setScaleKey( spep_1-3 + 44, 1, 1.62,1.62);
setScaleKey( spep_1-3 + 46, 1, 1.53,1.53);
setScaleKey( spep_1-3 + 48, 1, 1.48,1.48);
setScaleKey( spep_1-3 + 50, 1, 1.39,1.39);
setScaleKey( spep_1-3 + 52, 1, 1.35,1.35);
setScaleKey( spep_1-3 + 54, 1, 1.26,1.26);
setScaleKey( spep_1-3 + 56, 1, 1.21,1.21);
setScaleKey( spep_1-3 + 58, 1, 1.53,1.53);
setScaleKey( spep_1-3 + 60, 1, 1.8,1.8);
setScaleKey( spep_1-3 + 62, 1, 2.07,2.07);
setScaleKey( spep_1-3 + 64, 1, 2.34,2.34);
setScaleKey( spep_1-3 + 66, 1, 2.56,2.56);
setScaleKey( spep_1-3 + 68, 1, 2.74,2.74);
setScaleKey( spep_1-3 + 70, 1, 2.65,2.65);
setScaleKey( spep_1-3 + 72, 1, 2.52,2.52);
setScaleKey( spep_1-3 + 74, 1, 2.43,2.43);
setScaleKey( spep_1-3 + 76, 1, 2.34,2.34);
setScaleKey( spep_1-3 + 78, 1, 2.25,2.25);
setScaleKey( spep_1-3 + 80, 1, 2.2,2.2);
setScaleKey( spep_1-3 + 82, 1, 2.11,2.11);
setScaleKey( spep_1-3 + 84, 1, 2.11,2.11);
setScaleKey( spep_1-3 + 87, 1, 2.07,2.07);

setScaleKey( spep_1-3 + 88, 1, 1.87, 1.87 );
setScaleKey( spep_1-3 + 114, 1, 1.87, 1.87 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 114, 1, 0 );

--SE
--クリリンパンチ
SE006 = playSe( spep_1 + 18, 1189 );
SE007 = playSe( spep_1 + 22, 1110 );
SE008 = playSe( spep_1 + 22, 1010 );

--敵飛んでいく
SE009 = playSe( spep_1 + 22, 1183 );

--クリリンパンチ
SE010 = playSe( spep_1 + 24, 1009 );

--ピッコロキック
SE011 = playSe( spep_1 + 78, 1003 );
SE012 = playSe( spep_1 + 86, 1001 );
setSeVolumeByWorkId( spep_1 + 86, SE012, 65 );
SE013 = playSe( spep_1 + 88, 1010 );
SE014 = playSe( spep_1 + 90, 1110 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+126;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--敵飛んでいく
stopSe( spep_2 + 0, SE009, 10 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94;
------------------------------------------------------
-- クリリンかめはめ波
------------------------------------------------------
-- ** エフェクト等 ** --
kamebeam_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kamebeam_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, kamebeam_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kamebeam_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, kamebeam_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kamebeam_f, 0 );
setEffRotateKey( spep_3 + 106, kamebeam_f, 0 );
setEffAlphaKey( spep_3 + 0, kamebeam_f, 255 );
setEffAlphaKey( spep_3 + 104, kamebeam_f, 255 );
setEffAlphaKey( spep_3 + 105, kamebeam_f, 255 );
setEffAlphaKey( spep_3 + 106, kamebeam_f, 0 );

-- ** エフェクト等 ** --
kamebeam_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kamebeam_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, kamebeam_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kamebeam_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, kamebeam_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kamebeam_b, 0 );
setEffRotateKey( spep_3 + 106, kamebeam_b, 0 );
setEffAlphaKey( spep_3 + 0, kamebeam_b, 255 );
setEffAlphaKey( spep_3 + 104, kamebeam_b, 255 );
setEffAlphaKey( spep_3 + 105, kamebeam_b, 255 );
setEffAlphaKey( spep_3 + 106, kamebeam_b, 0 );

--敵の動き
setDisp( spep_3-3 + 68, 1, 1 );

changeAnime( spep_3-3 + 0, 1, 118 );

setMoveKey( spep_3-3 + 68, 1, 9323.6, -274.4 , 0 );
setMoveKey( spep_3-3 + 70, 1, 7674.7, -228.2 , 0 );
setMoveKey( spep_3-3 + 72, 1, 6025.9, -182 , 0 );
setMoveKey( spep_3-3 + 74, 1, 4191.8, -129.1 , 0 );
setMoveKey( spep_3-3 + 76, 1, 2357.8, -76.3 , 0 );
setMoveKey( spep_3-3 + 78, 1, 1646.2, -55.8 , 0 );
setMoveKey( spep_3-3 + 80, 1, 934.6, -35.3 , 0 );
setMoveKey( spep_3-3 + 82, 1, 223.1, -14.8 , 0 );
setMoveKey( spep_3-3 + 84, 1, 232.2, -15.1 , 0 );
setMoveKey( spep_3-3 + 86, 1, 241.5, -15.3 , 0 );
setMoveKey( spep_3-3 + 88, 1, 250.7, -15.6 , 0 );
setMoveKey( spep_3-3 + 90, 1, 260.1, -15.9 , 0 );
setMoveKey( spep_3-3 + 92, 1, 269.2, -16.2 , 0 );
setMoveKey( spep_3-3 + 94, 1, 278.6, -16.5 , 0 );
setMoveKey( spep_3-3 + 96, 1, 287.7, -16.7 , 0 );
setMoveKey( spep_3-3 + 98, 1, 297.1, -17 , 0 );
setMoveKey( spep_3-3 + 100, 1, 306.2, -17.3 , 0 );
setMoveKey( spep_3-3 + 102, 1, 315.6, -17.6 , 0 );
setMoveKey( spep_3-3 + 104, 1, 324.7, -17.8 , 0 );
setMoveKey( spep_3-3 + 106, 1, 334.1, -18.1 , 0 );
setMoveKey( spep_3-3 + 108, 1, 343.2, -18.4 , 0 );

setScaleKey( spep_3-3 + 68, 1, 39.08,39.08);
setScaleKey( spep_3-3 + 70, 1, 32.48,32.48);
setScaleKey( spep_3-3 + 72, 1, 25.91,25.91);
setScaleKey( spep_3-3 + 74, 1, 18.38,18.38);
setScaleKey( spep_3-3 + 76, 1, 10.85,10.85);
setScaleKey( spep_3-3 + 78, 1, 7.95,7.95);
setScaleKey( spep_3-3 + 80, 1, 5.01,5.01);
setScaleKey( spep_3-3 + 82, 1, 2.11,2.11);
setScaleKey( spep_3-3 + 84, 1, 2.14,2.14);
setScaleKey( spep_3-3 + 86, 1, 2.19,2.19);
setScaleKey( spep_3-3 + 88, 1, 2.22,2.22);
setScaleKey( spep_3-3 + 90, 1, 2.25,2.25);
setScaleKey( spep_3-3 + 92, 1, 2.31,2.31);
setScaleKey( spep_3-3 + 94, 1, 2.34,2.34);
setScaleKey( spep_3-3 + 96, 1, 2.39,2.39);
setScaleKey( spep_3-3 + 98, 1, 2.42,2.42);
setScaleKey( spep_3-3 + 100, 1, 2.45,2.45);
setScaleKey( spep_3-3 + 102, 1, 2.5,2.5);
setScaleKey( spep_3-3 + 104, 1, 2.53,2.53);
setScaleKey( spep_3-3 + 106, 1, 2.56,2.56);
setScaleKey( spep_3-3 + 108, 1, 2.62,2.62);

setRotateKey( spep_3-3 + 68, 1, 0 );
setRotateKey( spep_3-3 + 108, 1, 0 );

--SE
--クリリン気弾溜め
SE016 = playSe( spep_3 + 0, 1131 );
SE017 = playSe( spep_3 + 0, 1132 );
stopSe( spep_3 + 66, SE017, 14 );

--クリリン気弾発射
SE018 = playSe( spep_3 + 66, 1027 );
SE019 = playSe( spep_3 + 66, 1022 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+106;
------------------------------------------------------
-- 軌道が変わるかめはめ波
------------------------------------------------------
-- ** エフェクト等 ** --
curve = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, curve, 0, 0, 0 );
setEffMoveKey( spep_4 + 46, curve, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, curve, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46, curve, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, curve, 0 );
setEffRotateKey( spep_4 + 46, curve, 0 );
setEffAlphaKey( spep_4 + 0, curve, 255 );
setEffAlphaKey( spep_4 + 44, curve, 255 );
setEffAlphaKey( spep_4 + 45, curve, 255 );
setEffAlphaKey( spep_4 + 46, curve, 0 );

--敵の動き
setDisp( spep_4-3 + 48, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );

setMoveKey( spep_4 + 0, 1, 206.4, -30.4 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 202.6, -29.2 , 0 );
setMoveKey( spep_4-3 + 4, 1, 198.8, -27.9 , 0 );
setMoveKey( spep_4-3 + 6, 1, 195, -26.8 , 0 );
setMoveKey( spep_4-3 + 8, 1, 191.1, -25.5 , 0 );
setMoveKey( spep_4-3 + 10, 1, 187.3, -24.3 , 0 );
setMoveKey( spep_4-3 + 12, 1, 183.5, -23.1 , 0 );
setMoveKey( spep_4-3 + 14, 1, 179.7, -21.9 , 0 );
setMoveKey( spep_4-3 + 16, 1, 175.8, -20.7 , 0 );
setMoveKey( spep_4-3 + 18, 1, 172, -19.4 , 0 );
setMoveKey( spep_4-3 + 20, 1, 184.1, -109 , 0 );
setMoveKey( spep_4-3 + 22, 1, 196.2, -198.4 , 0 );
setMoveKey( spep_4-3 + 24, 1, 208.4, -287.9 , 0 );
setMoveKey( spep_4-3 + 26, 1, 220.5, -377.5 , 0 );
setMoveKey( spep_4-3 + 28, 1, 232.6, -466.9 , 0 );
setMoveKey( spep_4-3 + 30, 1, 244.8, -556.4 , 0 );
setMoveKey( spep_4-3 + 32, 1, 257, -645.9 , 0 );
setMoveKey( spep_4-3 + 34, 1, 269.1, -735.4 , 0 );
setMoveKey( spep_4-3 + 36, 1, 281.2, -824.9 , 0 );
setMoveKey( spep_4-3 + 38, 1, 293.4, -914.4 , 0 );
setMoveKey( spep_4-3 + 40, 1, 305.5, -1003.9 , 0 );
setMoveKey( spep_4-3 + 42, 1, 317.6, -1093.4 , 0 );
setMoveKey( spep_4-3 + 44, 1, 329.8, -1182.9 , 0 );
setMoveKey( spep_4-3 + 46, 1, 341.9, -1272.4 , 0 );
setMoveKey( spep_4-3 + 48, 1, 354, -1361.9 , 0 );

setScaleKey( spep_4 + 0, 1,1.72,1.72);
setScaleKey( spep_4-3 + 4, 1,1.64,1.64);
setScaleKey( spep_4-3 + 6, 1,1.61,1.61);
setScaleKey( spep_4-3 + 8, 1,1.58,1.58);
setScaleKey( spep_4-3 + 10, 1,1.55,1.55);
setScaleKey( spep_4-3 + 12, 1,1.52,1.52);
setScaleKey( spep_4-3 + 14, 1,1.49,1.49);
setScaleKey( spep_4-3 + 16, 1,1.46,1.46);
setScaleKey( spep_4-3 + 18, 1,1.43,1.43);
setScaleKey( spep_4-3 + 20, 1,1.46,1.46);
setScaleKey( spep_4-3 + 22, 1,1.52,1.52);
setScaleKey( spep_4-3 + 24, 1,1.58,1.58);
setScaleKey( spep_4-3 + 26, 1,1.61,1.61);
setScaleKey( spep_4-3 + 28, 1,1.67,1.67);
setScaleKey( spep_4-3 + 30, 1,1.72,1.72);
setScaleKey( spep_4-3 + 32, 1,1.75,1.75);
setScaleKey( spep_4-3 + 34, 1,1.81,1.81);
setScaleKey( spep_4-3 + 36, 1,1.87,1.87);
setScaleKey( spep_4-3 + 38, 1,1.9,1.9);
setScaleKey( spep_4-3 + 40, 1,1.96,1.96);
setScaleKey( spep_4-3 + 42, 1,1.99,1.99);
setScaleKey( spep_4-3 + 44, 1,2.05,2.05);
setScaleKey( spep_4-3 + 46, 1,2.1,2.1);
setScaleKey( spep_4-3 + 48, 1,2.13,2.13);

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 48, 1, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
--クリリン気弾曲げる
SE020 = playSe( spep_4 + 12, 1202,"",0.5  );
setSeVolumeByWorkId( spep_4 + 12, SE020, 224 );
SE021 = playSe( spep_4 + 18, 1184 );
SE022 = playSe( spep_4 + 20, 37 ,"",0.5 );
setSeVolumeByWorkId( spep_4 + 20, SE022, 184 );

--次の準備
spep_5=spep_4+46;
------------------------------------------------------
-- ピッコロ気弾
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_5 + 146, kidan, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 146, kidan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kidan, 0 );
setEffRotateKey( spep_5 + 146, kidan, 0 );
setEffAlphaKey( spep_5 + 0, kidan, 255 );
setEffAlphaKey( spep_5 + 144, kidan, 255 );
setEffAlphaKey( spep_5 + 145, kidan, 255 );
setEffAlphaKey( spep_5 + 146, kidan, 0 );

--SE
--クリリン気弾曲げる
stopSe( spep_5 + 6, SE021, 32 );

--ピッコロ気弾溜め
SE023 = playSe( spep_5 + 0, 1122 );
setSeVolumeByWorkId( spep_5 + 0, SE023, 0 );
setSeVolumeByWorkId( spep_5 + 1, SE023, 50 );
setSeVolumeByWorkId( spep_5 + 2, SE023, 100 );
setStartTimeMs( SE023,  183 );
SE024 = playSe( spep_5 + 0, 1262 );
stopSe( spep_5 + 54, SE024, 8 );

--ピッコロ気弾発射
SE025 = playSe( spep_5 + 56, 1146 );
SE026 = playSe( spep_5 + 56, 1027 );
setSeVolumeByWorkId( spep_5 + 56, SE026, 55 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 150, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+146;
------------------------------------------------------
-- クリリンフィニッシュポーズ
------------------------------------------------------
-- ** エフェクト等 ** --
pose = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, pose, 0, 0, 0 );
setEffMoveKey( spep_6 + 82, pose, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, pose, 1.0, 1.0 );
setEffScaleKey( spep_6 + 82, pose, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, pose, 0 );
setEffRotateKey( spep_6 + 82, pose, 0 );
setEffAlphaKey( spep_6 + 0, pose, 255 );
setEffAlphaKey( spep_6 + 80, pose, 255 );
setEffAlphaKey( spep_6 + 81, pose, 255 );
setEffAlphaKey( spep_6 + 82, pose, 0 );

--SE
--クリリン手を上げる
SE027 = playSe( spep_6 + 0, 1003 );

--クリリン手を下げる
SE029 = playSe( spep_6 + 20, 1116 );
stopSe( spep_6 + 38, SE029, 14 );
SE030 = playSe( spep_6 + 24, 1004 );

--クリリン気弾曲がる
SE031 = playSe( spep_6 + 50, 1177 );
setSeVolumeByWorkId( spep_6 + 50, SE031, 72 );
SE032 = playSe( spep_6 + 54, 1179 );
SE028 = playSe( spep_6 + 54, 1320 );
setSeVolumeByWorkId( spep_6 + 54, SE028, 0 );
setSeVolumeByWorkId( spep_6 + 55, SE028, 38.8 );
setSeVolumeByWorkId( spep_6 + 56, SE028, 78 );
setStartTimeMs( SE028,  550 );
SE033 = playSe( spep_6 + 62, 1290 );
setPitch( spep_6 + 62, SE033, -400 );
setTimeStretch( SE033, 0.73, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 84, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_7=spep_6+82;
------------------------------------------------------
-- クリリンフィニッシュポーズ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 120+10, finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120+10, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 120+10, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 120+10, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 120+10, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120+10, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 120+10, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 120+10, finish_b, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7-1 + 30, 1, 0 );

changeAnime( spep_7 + 0, 1, 104 );

setMoveKey( spep_7 + 0, 1, 121.5, -72.7 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 118.1, -73.7 , 0 );
setMoveKey( spep_7-3 + 4, 1, 114.8, -74.6 , 0 );
setMoveKey( spep_7-3 + 6, 1, 111.4, -75.6 , 0 );
setMoveKey( spep_7-3 + 8, 1, 108.1, -76.5 , 0 );
setMoveKey( spep_7-3 + 10, 1, 104.8, -77.5 , 0 );
setMoveKey( spep_7-3 + 12, 1, 101.4, -78.3 , 0 );
setMoveKey( spep_7-3 + 14, 1, 98.1, -79.3 , 0 );
setMoveKey( spep_7-3 + 16, 1, 94.7, -80.2 , 0 );
setMoveKey( spep_7-3 + 18, 1, 91.4, -81.2 , 0 );
setMoveKey( spep_7-3 + 20, 1, 88, -82.1 , 0 );
setMoveKey( spep_7-3 + 22, 1, 84.7, -83.1 , 0 );
setMoveKey( spep_7-3 + 24, 1, 81.4, -84 , 0 );
setMoveKey( spep_7-3 + 26, 1, 78, -84.9 , 0 );
setMoveKey( spep_7-1 + 30, 1, 74.6, -85.9 , 0 );

setScaleKey( spep_7 + 0, 1,1.28,1.28);
setScaleKey( spep_7-3 + 4, 1,1.25,1.25);
setScaleKey( spep_7-3 + 6, 1,1.22,1.22);
setScaleKey( spep_7-3 + 8, 1,1.22,1.22);
setScaleKey( spep_7-3 + 10, 1,1.18,1.18);
setScaleKey( spep_7-3 + 12, 1,1.18,1.18);
setScaleKey( spep_7-3 + 14, 1,1.15,1.15);
setScaleKey( spep_7-3 + 16, 1,1.12,1.12);
setScaleKey( spep_7-3 + 18, 1,1.12,1.12);
setScaleKey( spep_7-3 + 20, 1,1.08,1.08);
setScaleKey( spep_7-3 + 22, 1,1.08,1.08);
setScaleKey( spep_7-3 + 24, 1,1.05,1.05);
setScaleKey( spep_7-3 + 26, 1,1.05,1.05);
setScaleKey( spep_7-3 + 28, 1,1.02,1.02);
setScaleKey( spep_7-1 + 30, 1,1.02,1.02);

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7-1 + 30, 1, 0 );

--SE
--クリリン気弾曲がる
stopSe( spep_7 + 10, SE028, 38 );
stopSe( spep_7 + 14, SE031, 22 );

--両気弾迫る
SE034 = playSe( spep_7 + 0, 1027 );
setSeVolumeByWorkId( spep_7 + 0, SE034, 77 );
SE035 = playSe( spep_7 + 0, 1021 );

--ラスト爆発
SE036 = playSe( spep_7 + 28, 1023 );
setSeVolumeByWorkId( spep_7 + 28, SE036, 83 );
SE037 = playSe( spep_7 + 28, 1159 );
setSeVolumeByWorkId( spep_7 + 28, SE037, 93 );

-- ** しろ背景 ** --
entryFadeBg( spep_7 , 0, 120+10, 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --しろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 +18 );
endPhase( spep_7 + 110 +18 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 並ぶ二人
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
equal = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, equal, 0, 0, 0 );
setEffMoveKey( spep_0 + 116, equal, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, equal, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, equal, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, equal, 0 );
setEffRotateKey( spep_0 + 116, equal, 0 );
setEffAlphaKey( spep_0 + 0, equal, 255 );
setEffAlphaKey( spep_0 + 114, equal, 255 );
setEffAlphaKey( spep_0 + 115, equal, 255 );
setEffAlphaKey( spep_0 + 116, equal, 0 );

--SE
--入り
SE001 = playSe( spep_0 + 0, 8 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 77 );
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 22 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
   
    pauseAll( SP_dodge, 67);
    
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

--顔カットインのタイミング指定
spep_x=spep_0 +10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  100,  515);
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
--顔カットイン
SE002 = playSe( spep_x + 12, 1018 );

--クリリン飛び上がる
SE003 = playSe( spep_0 + 66, 1182 );
stopSe( spep_0 + 82, SE003, 32 );
SE004 = playSe( spep_0 + 66, 44 );
stopSe( spep_0 + 82, SE004, 32 );

--ピッコロ瞬間移動
SE005 = playSe( spep_0 + 80, 1109 );

--次の準備
spep_1=spep_0+116;
------------------------------------------------------
-- クリリン、ピッコロ殴り
------------------------------------------------------
-- ** エフェクト等 ** --
punching_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, punching_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 126, punching_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punching_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 126, punching_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punching_f, 0 );
setEffRotateKey( spep_1 + 126, punching_f, 0 );
setEffAlphaKey( spep_1 + 0, punching_f, 255 );
setEffAlphaKey( spep_1 + 124, punching_f, 255 );
setEffAlphaKey( spep_1 + 125, punching_f, 255 );
setEffAlphaKey( spep_1 + 126, punching_f, 0 );

-- ** エフェクト等 ** --
punching_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, punching_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 126, punching_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punching_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 126, punching_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punching_b, 0 );
setEffRotateKey( spep_1 + 126, punching_b, 0 );
setEffAlphaKey( spep_1 + 0, punching_b, 255 );
setEffAlphaKey( spep_1 + 124, punching_b, 255 );
setEffAlphaKey( spep_1 + 125, punching_b, 255 );
setEffAlphaKey( spep_1 + 126, punching_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + -3 + 114, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );
changeAnime( spep_1-3 + 20, 1, 108 );
changeAnime( spep_1-3 + 88, 1, 106 );

setMoveKey( spep_1 + 0, 1, 0, -26 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 0, -24.5 , 0 );
setMoveKey( spep_1-3 + 4, 1, 0, -23 , 0 );
setMoveKey( spep_1-3 + 6, 1, 0, -21.5 , 0 );
setMoveKey( spep_1-3 + 8, 1, 0, -20 , 0 );
setMoveKey( spep_1-3 + 19, 1, 0, -20 , 0 );
setMoveKey( spep_1-3 + 20, 1, 55, 82.6 , 0 );
setMoveKey( spep_1-3 + 22, 1, 32, 56.2 , 0 );
setMoveKey( spep_1-3 + 24, 1, 62.9, 109.3 , 0 );
setMoveKey( spep_1-3 + 26, 1, 93.3, 113.8 , 0 );
setMoveKey( spep_1-3 + 28, 1, 100.5, 159.1 , 0 );
setMoveKey( spep_1-3 + 30, 1, 154.8, 174.8 , 0 );
setMoveKey( spep_1-3 + 32, 1, 157.1, 218.3 , 0 );
setMoveKey( spep_1-3 + 34, 1, 231.7, 238.3 , 0 );
setMoveKey( spep_1-3 + 36, 1, 241.2, 305 , 0 );
setMoveKey( spep_1-3 + 38, 1, 278, 332 , 0 );
setMoveKey( spep_1-3 + 40, 1, 287.1, 340.9 , 0 );
setMoveKey( spep_1-3 + 42, 1, 295.7, 349.5 , 0 );
setMoveKey( spep_1-3 + 44, 1, 304, 357.7 , 0 );
setMoveKey( spep_1-3 + 46, 1, 311.9, 365.5 , 0 );
setMoveKey( spep_1-3 + 48, 1, 319.5, 372.9 , 0 );
setMoveKey( spep_1-3 + 50, 1, 326.6, 379.9 , 0 );
setMoveKey( spep_1-3 + 52, 1, 333.3, 386.6 , 0 );
setMoveKey( spep_1-3 + 54, 1, 339.7, 392.9 , 0 );
setMoveKey( spep_1-3 + 56, 1, 345.7, 398.8 , 0 );
setMoveKey( spep_1-3 + 58, 1, 292, 327.2 , 0 );
setMoveKey( spep_1-3 + 60, 1, 241.1, 258.3 , 0 );
setMoveKey( spep_1-3 + 62, 1, 192.8, 192 , 0 );
setMoveKey( spep_1-3 + 64, 1, 146.7, 127.9 , 0 );
setMoveKey( spep_1-3 + 66, 1, 102.4, 65.5 , 0 );
setMoveKey( spep_1-3 + 68, 1, 59.4, 4.5 , 0 );
setMoveKey( spep_1-3 + 70, 1, 68, 7.9 , 0 );
setMoveKey( spep_1-3 + 72, 1, 75.3, 9.9 , 0 );
setMoveKey( spep_1-3 + 74, 1, 81.3, 10.8 , 0 );
setMoveKey( spep_1-3 + 76, 1, 86, 10.3 , 0 );
setMoveKey( spep_1-3 + 78, 1, 89.5, 8.7 , 0 );
setMoveKey( spep_1-3 + 80, 1, 91.9, 6 , 0 );
setMoveKey( spep_1-3 + 82, 1, 93.1, 2.1 , 0 );
setMoveKey( spep_1-3 + 84, 1, 93.3, -2.8 , 0 );
setMoveKey( spep_1-3 + 87, 1, 92.2, -8.7 , 0 );
setMoveKey( spep_1-3 + 88, 1, 174.4, -43.8 , 0 );
setMoveKey( spep_1-3 + 89, 1, 174.4, -43.8 , 0 );
setMoveKey( spep_1-3 + 90, 1, 1481, -11.8 , 0 );
setMoveKey( spep_1-3 + 92, 1, 1842.4, -82.2 , 0 );
setMoveKey( spep_1-3 + 94, 1, 2229.5, -24.6 , 0 );
setMoveKey( spep_1-3 + 96, 1, 2712.5, -63 , 0 );
setMoveKey( spep_1-3 + 98, 1, 3067.6, -24.6 , 0 );
setMoveKey( spep_1-3 + 100, 1, 3486.6, -37.4 , 0 );
setMoveKey( spep_1-3 + 102, 1, 3486.6, -50.2 , 0 );
setMoveKey( spep_1-3 + 104, 1, 3480.2, -43.8 , 0 );
setMoveKey( spep_1-3 + 106, 1, 3493, -43.8 , 0 );
setMoveKey( spep_1-3 + 108, 1, 3486.6, -37.4 , 0 );
setMoveKey( spep_1-3 + 110, 1, 3486.6, -50.2 , 0 );
setMoveKey( spep_1-3 + 112, 1, 3480.2, -43.8 , 0 );
setMoveKey( spep_1-3 + 114, 1, 3486.6, -43.8 , 0 );

setScaleKey( spep_1 + 0, 1,3.16,3.16);
setScaleKey( spep_1-3 + 4, 1, 2.78,2.78);
setScaleKey( spep_1-3 + 6, 1, 2.61,2.61);
setScaleKey( spep_1-3 + 8, 1, 2.41,2.41);
setScaleKey( spep_1-3 + 19, 1,2.41,2.41);

setScaleKey( spep_1-3 + 20, 1, 2.88,2.88);
setScaleKey( spep_1-3 + 22, 1, 2.92,2.92);
setScaleKey( spep_1-3 + 24, 1, 2.92,2.92);
setScaleKey( spep_1-3 + 26, 1, 2.88,2.88);
setScaleKey( spep_1-3 + 28, 1, 2.79,2.79);
setScaleKey( spep_1-3 + 30, 1, 2.7,2.7);
setScaleKey( spep_1-3 + 32, 1, 2.52,2.52);
setScaleKey( spep_1-3 + 34, 1, 2.34,2.34);
setScaleKey( spep_1-3 + 36, 1, 2.11,2.11);
setScaleKey( spep_1-3 + 38, 1, 1.89,1.89);
setScaleKey( spep_1-3 + 40, 1, 1.8,1.8);
setScaleKey( spep_1-3 + 42, 1, 1.71,1.71);
setScaleKey( spep_1-3 + 44, 1, 1.62,1.62);
setScaleKey( spep_1-3 + 46, 1, 1.53,1.53);
setScaleKey( spep_1-3 + 48, 1, 1.48,1.48);
setScaleKey( spep_1-3 + 50, 1, 1.39,1.39);
setScaleKey( spep_1-3 + 52, 1, 1.35,1.35);
setScaleKey( spep_1-3 + 54, 1, 1.26,1.26);
setScaleKey( spep_1-3 + 56, 1, 1.21,1.21);
setScaleKey( spep_1-3 + 58, 1, 1.53,1.53);
setScaleKey( spep_1-3 + 60, 1, 1.8,1.8);
setScaleKey( spep_1-3 + 62, 1, 2.07,2.07);
setScaleKey( spep_1-3 + 64, 1, 2.34,2.34);
setScaleKey( spep_1-3 + 66, 1, 2.56,2.56);
setScaleKey( spep_1-3 + 68, 1, 2.74,2.74);
setScaleKey( spep_1-3 + 70, 1, 2.65,2.65);
setScaleKey( spep_1-3 + 72, 1, 2.52,2.52);
setScaleKey( spep_1-3 + 74, 1, 2.43,2.43);
setScaleKey( spep_1-3 + 76, 1, 2.34,2.34);
setScaleKey( spep_1-3 + 78, 1, 2.25,2.25);
setScaleKey( spep_1-3 + 80, 1, 2.2,2.2);
setScaleKey( spep_1-3 + 82, 1, 2.11,2.11);
setScaleKey( spep_1-3 + 84, 1, 2.11,2.11);
setScaleKey( spep_1-3 + 87, 1, 2.07,2.07);

setScaleKey( spep_1-3 + 88, 1, 1.87, 1.87 );
setScaleKey( spep_1-3 + 114, 1, 1.87, 1.87 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 114, 1, 0 );

--SE
--クリリンパンチ
SE006 = playSe( spep_1 + 18, 1189 );
SE007 = playSe( spep_1 + 22, 1110 );
SE008 = playSe( spep_1 + 22, 1010 );

--敵飛んでいく
SE009 = playSe( spep_1 + 22, 1183 );

--クリリンパンチ
SE010 = playSe( spep_1 + 24, 1009 );

--ピッコロキック
SE011 = playSe( spep_1 + 78, 1003 );
SE012 = playSe( spep_1 + 86, 1001 );
setSeVolumeByWorkId( spep_1 + 86, SE012, 65 );
SE013 = playSe( spep_1 + 88, 1010 );
SE014 = playSe( spep_1 + 90, 1110 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+126;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--敵飛んでいく
stopSe( spep_2 + 0, SE009, 10 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94;
------------------------------------------------------
-- クリリンかめはめ波
------------------------------------------------------
-- ** エフェクト等 ** --
kamebeam_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kamebeam_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, kamebeam_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kamebeam_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, kamebeam_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kamebeam_f, 0 );
setEffRotateKey( spep_3 + 106, kamebeam_f, 0 );
setEffAlphaKey( spep_3 + 0, kamebeam_f, 255 );
setEffAlphaKey( spep_3 + 104, kamebeam_f, 255 );
setEffAlphaKey( spep_3 + 105, kamebeam_f, 255 );
setEffAlphaKey( spep_3 + 106, kamebeam_f, 0 );

-- ** エフェクト等 ** --
kamebeam_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kamebeam_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, kamebeam_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kamebeam_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, kamebeam_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kamebeam_b, 0 );
setEffRotateKey( spep_3 + 106, kamebeam_b, 0 );
setEffAlphaKey( spep_3 + 0, kamebeam_b, 255 );
setEffAlphaKey( spep_3 + 104, kamebeam_b, 255 );
setEffAlphaKey( spep_3 + 105, kamebeam_b, 255 );
setEffAlphaKey( spep_3 + 106, kamebeam_b, 0 );

--敵の動き
setDisp( spep_3-3 + 68, 1, 1 );

changeAnime( spep_3-3 + 0, 1, 118 );

setMoveKey( spep_3-3 + 68, 1, 9323.6, -274.4 , 0 );
setMoveKey( spep_3-3 + 70, 1, 7674.7, -228.2 , 0 );
setMoveKey( spep_3-3 + 72, 1, 6025.9, -182 , 0 );
setMoveKey( spep_3-3 + 74, 1, 4191.8, -129.1 , 0 );
setMoveKey( spep_3-3 + 76, 1, 2357.8, -76.3 , 0 );
setMoveKey( spep_3-3 + 78, 1, 1646.2, -55.8 , 0 );
setMoveKey( spep_3-3 + 80, 1, 934.6, -35.3 , 0 );
setMoveKey( spep_3-3 + 82, 1, 223.1, -14.8 , 0 );
setMoveKey( spep_3-3 + 84, 1, 232.2, -15.1 , 0 );
setMoveKey( spep_3-3 + 86, 1, 241.5, -15.3 , 0 );
setMoveKey( spep_3-3 + 88, 1, 250.7, -15.6 , 0 );
setMoveKey( spep_3-3 + 90, 1, 260.1, -15.9 , 0 );
setMoveKey( spep_3-3 + 92, 1, 269.2, -16.2 , 0 );
setMoveKey( spep_3-3 + 94, 1, 278.6, -16.5 , 0 );
setMoveKey( spep_3-3 + 96, 1, 287.7, -16.7 , 0 );
setMoveKey( spep_3-3 + 98, 1, 297.1, -17 , 0 );
setMoveKey( spep_3-3 + 100, 1, 306.2, -17.3 , 0 );
setMoveKey( spep_3-3 + 102, 1, 315.6, -17.6 , 0 );
setMoveKey( spep_3-3 + 104, 1, 324.7, -17.8 , 0 );
setMoveKey( spep_3-3 + 106, 1, 334.1, -18.1 , 0 );
setMoveKey( spep_3-3 + 108, 1, 343.2, -18.4 , 0 );

setScaleKey( spep_3-3 + 68, 1, 39.08,39.08);
setScaleKey( spep_3-3 + 70, 1, 32.48,32.48);
setScaleKey( spep_3-3 + 72, 1, 25.91,25.91);
setScaleKey( spep_3-3 + 74, 1, 18.38,18.38);
setScaleKey( spep_3-3 + 76, 1, 10.85,10.85);
setScaleKey( spep_3-3 + 78, 1, 7.95,7.95);
setScaleKey( spep_3-3 + 80, 1, 5.01,5.01);
setScaleKey( spep_3-3 + 82, 1, 2.11,2.11);
setScaleKey( spep_3-3 + 84, 1, 2.14,2.14);
setScaleKey( spep_3-3 + 86, 1, 2.19,2.19);
setScaleKey( spep_3-3 + 88, 1, 2.22,2.22);
setScaleKey( spep_3-3 + 90, 1, 2.25,2.25);
setScaleKey( spep_3-3 + 92, 1, 2.31,2.31);
setScaleKey( spep_3-3 + 94, 1, 2.34,2.34);
setScaleKey( spep_3-3 + 96, 1, 2.39,2.39);
setScaleKey( spep_3-3 + 98, 1, 2.42,2.42);
setScaleKey( spep_3-3 + 100, 1, 2.45,2.45);
setScaleKey( spep_3-3 + 102, 1, 2.5,2.5);
setScaleKey( spep_3-3 + 104, 1, 2.53,2.53);
setScaleKey( spep_3-3 + 106, 1, 2.56,2.56);
setScaleKey( spep_3-3 + 108, 1, 2.62,2.62);

setRotateKey( spep_3-3 + 68, 1, 0 );
setRotateKey( spep_3-3 + 108, 1, 0 );

--SE
--クリリン気弾溜め
SE016 = playSe( spep_3 + 0, 1131 );
SE017 = playSe( spep_3 + 0, 1132 );
stopSe( spep_3 + 66, SE017, 14 );

--クリリン気弾発射
SE018 = playSe( spep_3 + 66, 1027 );
SE019 = playSe( spep_3 + 66, 1022 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+106;
------------------------------------------------------
-- 軌道が変わるかめはめ波
------------------------------------------------------
-- ** エフェクト等 ** --
curve = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, curve, 0, 0, 0 );
setEffMoveKey( spep_4 + 46, curve, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, curve, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46, curve, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, curve, 0 );
setEffRotateKey( spep_4 + 46, curve, 0 );
setEffAlphaKey( spep_4 + 0, curve, 255 );
setEffAlphaKey( spep_4 + 44, curve, 255 );
setEffAlphaKey( spep_4 + 45, curve, 255 );
setEffAlphaKey( spep_4 + 46, curve, 0 );

--敵の動き
setDisp( spep_4-3 + 48, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );

setMoveKey( spep_4 + 0, 1, 206.4, -30.4 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 202.6, -29.2 , 0 );
setMoveKey( spep_4-3 + 4, 1, 198.8, -27.9 , 0 );
setMoveKey( spep_4-3 + 6, 1, 195, -26.8 , 0 );
setMoveKey( spep_4-3 + 8, 1, 191.1, -25.5 , 0 );
setMoveKey( spep_4-3 + 10, 1, 187.3, -24.3 , 0 );
setMoveKey( spep_4-3 + 12, 1, 183.5, -23.1 , 0 );
setMoveKey( spep_4-3 + 14, 1, 179.7, -21.9 , 0 );
setMoveKey( spep_4-3 + 16, 1, 175.8, -20.7 , 0 );
setMoveKey( spep_4-3 + 18, 1, 172, -19.4 , 0 );
setMoveKey( spep_4-3 + 20, 1, 184.1, -109 , 0 );
setMoveKey( spep_4-3 + 22, 1, 196.2, -198.4 , 0 );
setMoveKey( spep_4-3 + 24, 1, 208.4, -287.9 , 0 );
setMoveKey( spep_4-3 + 26, 1, 220.5, -377.5 , 0 );
setMoveKey( spep_4-3 + 28, 1, 232.6, -466.9 , 0 );
setMoveKey( spep_4-3 + 30, 1, 244.8, -556.4 , 0 );
setMoveKey( spep_4-3 + 32, 1, 257, -645.9 , 0 );
setMoveKey( spep_4-3 + 34, 1, 269.1, -735.4 , 0 );
setMoveKey( spep_4-3 + 36, 1, 281.2, -824.9 , 0 );
setMoveKey( spep_4-3 + 38, 1, 293.4, -914.4 , 0 );
setMoveKey( spep_4-3 + 40, 1, 305.5, -1003.9 , 0 );
setMoveKey( spep_4-3 + 42, 1, 317.6, -1093.4 , 0 );
setMoveKey( spep_4-3 + 44, 1, 329.8, -1182.9 , 0 );
setMoveKey( spep_4-3 + 46, 1, 341.9, -1272.4 , 0 );
setMoveKey( spep_4-3 + 48, 1, 354, -1361.9 , 0 );

setScaleKey( spep_4 + 0, 1,1.72,1.72);
setScaleKey( spep_4-3 + 4, 1,1.64,1.64);
setScaleKey( spep_4-3 + 6, 1,1.61,1.61);
setScaleKey( spep_4-3 + 8, 1,1.58,1.58);
setScaleKey( spep_4-3 + 10, 1,1.55,1.55);
setScaleKey( spep_4-3 + 12, 1,1.52,1.52);
setScaleKey( spep_4-3 + 14, 1,1.49,1.49);
setScaleKey( spep_4-3 + 16, 1,1.46,1.46);
setScaleKey( spep_4-3 + 18, 1,1.43,1.43);
setScaleKey( spep_4-3 + 20, 1,1.46,1.46);
setScaleKey( spep_4-3 + 22, 1,1.52,1.52);
setScaleKey( spep_4-3 + 24, 1,1.58,1.58);
setScaleKey( spep_4-3 + 26, 1,1.61,1.61);
setScaleKey( spep_4-3 + 28, 1,1.67,1.67);
setScaleKey( spep_4-3 + 30, 1,1.72,1.72);
setScaleKey( spep_4-3 + 32, 1,1.75,1.75);
setScaleKey( spep_4-3 + 34, 1,1.81,1.81);
setScaleKey( spep_4-3 + 36, 1,1.87,1.87);
setScaleKey( spep_4-3 + 38, 1,1.9,1.9);
setScaleKey( spep_4-3 + 40, 1,1.96,1.96);
setScaleKey( spep_4-3 + 42, 1,1.99,1.99);
setScaleKey( spep_4-3 + 44, 1,2.05,2.05);
setScaleKey( spep_4-3 + 46, 1,2.1,2.1);
setScaleKey( spep_4-3 + 48, 1,2.13,2.13);

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 48, 1, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
--クリリン気弾曲げる
SE020 = playSe( spep_4 + 12, 1202,"",0.5  );
setSeVolumeByWorkId( spep_4 + 12, SE020, 224 );
SE021 = playSe( spep_4 + 18, 1184 );
SE022 = playSe( spep_4 + 20, 37 ,"",0.5 );
setSeVolumeByWorkId( spep_4 + 20, SE022, 184 );

--次の準備
spep_5=spep_4+46;
------------------------------------------------------
-- ピッコロ気弾
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_5 + 146, kidan, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 146, kidan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kidan, 0 );
setEffRotateKey( spep_5 + 146, kidan, 0 );
setEffAlphaKey( spep_5 + 0, kidan, 255 );
setEffAlphaKey( spep_5 + 144, kidan, 255 );
setEffAlphaKey( spep_5 + 145, kidan, 255 );
setEffAlphaKey( spep_5 + 146, kidan, 0 );

--SE
--クリリン気弾曲げる
stopSe( spep_5 + 6, SE021, 32 );

--ピッコロ気弾溜め
SE023 = playSe( spep_5 + 0, 1122 );
setSeVolumeByWorkId( spep_5 + 0, SE023, 0 );
setSeVolumeByWorkId( spep_5 + 1, SE023, 50 );
setSeVolumeByWorkId( spep_5 + 2, SE023, 100 );
setStartTimeMs( SE023,  183 );
SE024 = playSe( spep_5 + 0, 1262 );
stopSe( spep_5 + 54, SE024, 8 );

--ピッコロ気弾発射
SE025 = playSe( spep_5 + 56, 1146 );
SE026 = playSe( spep_5 + 56, 1027 );
setSeVolumeByWorkId( spep_5 + 56, SE026, 55 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 150, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+146;
------------------------------------------------------
-- クリリンフィニッシュポーズ
------------------------------------------------------
-- ** エフェクト等 ** --
pose = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, pose, 0, 0, 0 );
setEffMoveKey( spep_6 + 82, pose, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, pose, 1.0, 1.0 );
setEffScaleKey( spep_6 + 82, pose, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, pose, 0 );
setEffRotateKey( spep_6 + 82, pose, 0 );
setEffAlphaKey( spep_6 + 0, pose, 255 );
setEffAlphaKey( spep_6 + 80, pose, 255 );
setEffAlphaKey( spep_6 + 81, pose, 255 );
setEffAlphaKey( spep_6 + 82, pose, 0 );

--SE
--クリリン手を上げる
SE027 = playSe( spep_6 + 0, 1003 );

--クリリン手を下げる
SE029 = playSe( spep_6 + 20, 1116 );
stopSe( spep_6 + 38, SE029, 14 );
SE030 = playSe( spep_6 + 24, 1004 );

--クリリン気弾曲がる
SE031 = playSe( spep_6 + 50, 1177 );
setSeVolumeByWorkId( spep_6 + 50, SE031, 72 );
SE032 = playSe( spep_6 + 54, 1179 );
SE028 = playSe( spep_6 + 54, 1320 );
setSeVolumeByWorkId( spep_6 + 54, SE028, 0 );
setSeVolumeByWorkId( spep_6 + 55, SE028, 38.8 );
setSeVolumeByWorkId( spep_6 + 56, SE028, 78 );
setStartTimeMs( SE028,  550 );
SE033 = playSe( spep_6 + 62, 1290 );
setPitch( spep_6 + 62, SE033, -400 );
setTimeStretch( SE033, 0.73, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 84, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_7=spep_6+82;
------------------------------------------------------
-- クリリンフィニッシュポーズ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 120 +10, finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120 +10, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 120 +10, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 120 +10, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 120 +10, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120 +10, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 120 +10, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 120 +10, finish_b, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7-1 + 30, 1, 0 );

changeAnime( spep_7 + 0, 1, 104 );

setMoveKey( spep_7 + 0, 1, 121.5, -72.7 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 118.1, -73.7 , 0 );
setMoveKey( spep_7-3 + 4, 1, 114.8, -74.6 , 0 );
setMoveKey( spep_7-3 + 6, 1, 111.4, -75.6 , 0 );
setMoveKey( spep_7-3 + 8, 1, 108.1, -76.5 , 0 );
setMoveKey( spep_7-3 + 10, 1, 104.8, -77.5 , 0 );
setMoveKey( spep_7-3 + 12, 1, 101.4, -78.3 , 0 );
setMoveKey( spep_7-3 + 14, 1, 98.1, -79.3 , 0 );
setMoveKey( spep_7-3 + 16, 1, 94.7, -80.2 , 0 );
setMoveKey( spep_7-3 + 18, 1, 91.4, -81.2 , 0 );
setMoveKey( spep_7-3 + 20, 1, 88, -82.1 , 0 );
setMoveKey( spep_7-3 + 22, 1, 84.7, -83.1 , 0 );
setMoveKey( spep_7-3 + 24, 1, 81.4, -84 , 0 );
setMoveKey( spep_7-3 + 26, 1, 78, -84.9 , 0 );
setMoveKey( spep_7-1 + 30, 1, 74.6, -85.9 , 0 );

setScaleKey( spep_7 + 0, 1,1.28,1.28);
setScaleKey( spep_7-3 + 4, 1,1.25,1.25);
setScaleKey( spep_7-3 + 6, 1,1.22,1.22);
setScaleKey( spep_7-3 + 8, 1,1.22,1.22);
setScaleKey( spep_7-3 + 10, 1,1.18,1.18);
setScaleKey( spep_7-3 + 12, 1,1.18,1.18);
setScaleKey( spep_7-3 + 14, 1,1.15,1.15);
setScaleKey( spep_7-3 + 16, 1,1.12,1.12);
setScaleKey( spep_7-3 + 18, 1,1.12,1.12);
setScaleKey( spep_7-3 + 20, 1,1.08,1.08);
setScaleKey( spep_7-3 + 22, 1,1.08,1.08);
setScaleKey( spep_7-3 + 24, 1,1.05,1.05);
setScaleKey( spep_7-3 + 26, 1,1.05,1.05);
setScaleKey( spep_7-3 + 28, 1,1.02,1.02);
setScaleKey( spep_7-1 + 30, 1,1.02,1.02);

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7-1 + 30, 1, 0 );

--SE
--クリリン気弾曲がる
stopSe( spep_7 + 10, SE028, 38 );
stopSe( spep_7 + 14, SE031, 22 );

--両気弾迫る
SE034 = playSe( spep_7 + 0, 1027 );
setSeVolumeByWorkId( spep_7 + 0, SE034, 77 );
SE035 = playSe( spep_7 + 0, 1021 );

--ラスト爆発
SE036 = playSe( spep_7 + 28, 1023 );
setSeVolumeByWorkId( spep_7 + 28, SE036, 83 );
SE037 = playSe( spep_7 + 28, 1159 );
setSeVolumeByWorkId( spep_7 + 28, SE037, 93 );

-- ** しろ背景 ** --
entryFadeBg( spep_7 , 0, 120+10, 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --しろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 +18 );
endPhase( spep_7 + 110 +18 );
end
