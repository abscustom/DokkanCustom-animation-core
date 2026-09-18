--1024060:ラディッツ_ウィークエンド
--sp_effect_b4_00227
--sp2344

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
SP_01=	159488	;--	背後キック〜両手に気を溜める
SP_02=	159489	;--	背後キック〜両手に気を溜める
SP_03=	159492	;--	気功波を撃つ〜敵に着弾
SP_04=	159493	;--	気功波を撃つ〜敵に着弾
SP_05=	159494	;--	遠くで爆発
SP_06=	159495	;--	全員攻撃の爆発
SP_07=	159496	;--	全員攻撃の爆発

--エフェクト(てき)
SP_01x=	159490	;--	背後キック〜両手に気を溜める	(敵)
SP_02x=	159491	;--	背後キック〜両手に気を溜める	(敵)
SP_03x=	159492	;--	気功波を撃つ〜敵に着弾	
SP_04x=	159493	;--	気功波を撃つ〜敵に着弾	
SP_05x=	159494	;--	遠くで爆発	
SP_06x=	159495	;--	全員攻撃の爆発	
SP_07x=	159496	;--	全員攻撃の爆発	

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
--[[
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
]]
kame_flag = 0x00;
if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--冒頭～着弾～構え
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 584, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 584, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 584, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 584, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 584, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 584, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 584, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 584, tame_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-3 + 38, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );
changeAnime( spep_0-3 + 28, 1, 1 );
changeAnime( spep_0-3 + 32, 1, 3 );

setMoveKey( spep_0 + 0, 1, 168.2, -19.9 , 0 );
setMoveKey( spep_0 + 1, 1, 168.2, -19.9 , 0 );
setMoveKey( spep_0 + 2, 1, 168.2, -19.9 , 0 );
setMoveKey( spep_0 + 3, 1, 168.2, -19.9 , 0 );
setMoveKey( spep_0 + 4, 1, 168.2, -19.9 , 0 );
setMoveKey( spep_0 + 5, 1, 168.2, -19.9 , 0 );
setMoveKey( spep_0 + 6, 1, 168.2, -19.9 , 0 );
setMoveKey( spep_0-3 + 27, 1, 168.2, -19.9 , 0 );
setMoveKey( spep_0-3 + 28, 1, 201.9, -6.3 , 0 );
setMoveKey( spep_0-3 + 31, 1, 201.9, -6.3 , 0 );
setMoveKey( spep_0-3 + 32, 1, 282.6, -4.7 , 0 );
setMoveKey( spep_0-3 + 34, 1, 412.3, -4.7 , 0 );
setMoveKey( spep_0-3 + 36, 1, 490.2, -4.7 , 0 );
setMoveKey( spep_0-3 + 38, 1, 516.1, -4.7 , 0 );

setScaleKey( spep_0 + 0, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 1, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 2, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 3, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 4, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 5, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 6, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 38, 1, 0.69, 0.69 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-3 + 27, 1, 0 );
setRotateKey( spep_0-3 + 28, 1, 9.5 );
setRotateKey( spep_0-3 + 31, 1, 9.5 );
setRotateKey( spep_0-3 + 32, 1, -1.8 );
setRotateKey( spep_0-3 + 38, 1, -1.8 );

setAlphaKey( spep_0 + 0, 1, 255 );
setAlphaKey( spep_0 + 1, 1, 255 );
setAlphaKey( spep_0 + 2, 1, 255 );
setAlphaKey( spep_0 + 3, 1, 255 );
setAlphaKey( spep_0 + 4, 1, 255 );
setAlphaKey( spep_0 + 5, 1, 255 );
setAlphaKey( spep_0 + 6, 1, 255 );

--SE
--敵ダッシュ
SE003 = playSeVer2( spep_0 + 30, 44, "",spep_0 + 76, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 30, SE003, 74 );
SE004 = playSeVer2( spep_0 + 30, 1048, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE004, 86 );

--敵近づいてくる
SE005 = playSeVer2( spep_0 + 54, 1278, "",spep_0 + 118, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 54, SE005, 73 );
SE006 = playSeVer2( spep_0 + 54, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 54, SE006, 74 );
SE007 = playSeVer2( spep_0 + 96, 1003, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 590, 0, 0, 0, 0, 255 );  --黒 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 74; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    
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
setDisp( spep_0-3 + 166, 1, 1 );
setDisp( spep_0-1 + 206, 1, 0 );

changeAnime( spep_0-3 + 166, 1, 116 );
changeAnime( spep_0-3 + 168, 1, 5 );

setMoveKey( spep_0-3 + 166, 1, 216.6, 43 , 0 );
setMoveKey( spep_0-3 + 167, 1, 216.6, 43 , 0 );

setMoveKey( spep_0-3 + 168, 1, 181.1, -0.3 , 0 );
setMoveKey( spep_0-3 + 170, 1, 182.7, 1.7 , 0 );
setMoveKey( spep_0-3 + 172, 1, 184.3, 3.6 , 0 );
setMoveKey( spep_0-3 + 174, 1, 186, 5.5 , 0 );
setMoveKey( spep_0-3 + 176, 1, 187.6, 7.5 , 0 );
setMoveKey( spep_0-3 + 178, 1, 189.2, 9.4 , 0 );
setMoveKey( spep_0-3 + 180, 1, 190.9, 11.3 , 0 );
setMoveKey( spep_0-3 + 182, 1, 192.5, 13.3 , 0 );
setMoveKey( spep_0-3 + 184, 1, 194.1, 15.2 , 0 );
setMoveKey( spep_0-3 + 186, 1, 195.7, 17.1 , 0 );
setMoveKey( spep_0-3 + 188, 1, 197.4, 19.1 , 0 );
setMoveKey( spep_0-3 + 190, 1, 199, 21 , 0 );
setMoveKey( spep_0-3 + 192, 1, 200.6, 22.9 , 0 );
setMoveKey( spep_0-3 + 194, 1, 202.2, 24.9 , 0 );
setMoveKey( spep_0-3 + 196, 1, 245.4, 125.2 , 0 );
setMoveKey( spep_0-3 + 198, 1, 244.8, 156.5 , 0 );
setMoveKey( spep_0-3 + 200, 1, 244.6, 165.5 , 0 );
setMoveKey( spep_0-3 + 202, 1, 244.5, 169.2 , 0 );
setMoveKey( spep_0-3 + 204, 1, 244.5, 170.6 , 0 );
setMoveKey( spep_0-1 + 206, 1, 244.5, 170.9 , 0 );

setScaleKey( spep_0-3 + 166, 1, 2.06, 2.06 );
setScaleKey( spep_0-3 + 167, 1, 2.06, 2.06 );

setScaleKey( spep_0-3 + 168, 1, 3.11, 3.11 );
setScaleKey( spep_0-3 + 170, 1, 3.07, 3.07 );
setScaleKey( spep_0-3 + 172, 1, 3.04, 3.04 );
setScaleKey( spep_0-3 + 174, 1, 3.01, 3.01 );
setScaleKey( spep_0-3 + 176, 1, 2.97, 2.97 );
setScaleKey( spep_0-3 + 178, 1, 2.94, 2.94 );
setScaleKey( spep_0-3 + 180, 1, 2.91, 2.91 );
setScaleKey( spep_0-3 + 182, 1, 2.87, 2.87 );
setScaleKey( spep_0-3 + 184, 1, 2.84, 2.84 );
setScaleKey( spep_0-3 + 186, 1, 2.81, 2.81 );
setScaleKey( spep_0-3 + 188, 1, 2.78, 2.78 );
setScaleKey( spep_0-3 + 190, 1, 2.74, 2.74 );
setScaleKey( spep_0-3 + 192, 1, 2.71, 2.71 );
setScaleKey( spep_0-3 + 194, 1, 2.68, 2.68 );
setScaleKey( spep_0-3 + 196, 1, 0.76, 0.76 );
setScaleKey( spep_0-3 + 198, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 200, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 202, 1, 0.31, 0.31 );
setScaleKey( spep_0-1 + 206, 1, 0.3, 0.3 );

setRotateKey( spep_0-3 + 166, 1, -36.6 );
setRotateKey( spep_0-3 + 167, 1, -36.6 );

setRotateKey( spep_0-3 + 168, 1, 38.1 );
setRotateKey( spep_0-3 + 194, 1, 38.1 );
setRotateKey( spep_0-3 + 196, 1, 38 );
setRotateKey( spep_0-3 + 198, 1, 53.8 );
setRotateKey( spep_0-3 + 200, 1, 58.3 );
setRotateKey( spep_0-3 + 202, 1, 60.2 );
setRotateKey( spep_0-3 + 204, 1, 60.9 );
setRotateKey( spep_0-1 + 206, 1, 61.1 );

--敵の動き
setDisp( spep_0-3 + 280, 1, 1 );
setDisp( spep_0-1 + 348, 1, 0 );

changeAnime( spep_0-3 + 280, 1, 106 );
changeAnime( spep_0-3 + 300, 1, 107 );
changeAnime( spep_0-3 + 312, 1, 106 );

setMoveKey( spep_0-3 + 280, 1, -27.5, -8.2 , 0 );
setMoveKey( spep_0-3 + 280, 1, -21.9, -8.2 , 0 );
setMoveKey( spep_0-3 + 282, 1, -16.3, -8.2 , 0 );
setMoveKey( spep_0-3 + 284, 1, -10.7, -8.2 , 0 );
setMoveKey( spep_0-3 + 286, 1, -5.1, -8.2 , 0 );
setMoveKey( spep_0-3 + 288, 1, 0.4, -8.2 , 0 );
setMoveKey( spep_0-3 + 290, 1, 6, -8.2 , 0 );
setMoveKey( spep_0-3 + 292, 1, 11.6, -8.3 , 0 );
setMoveKey( spep_0-3 + 294, 1, 17.2, -8.3 , 0 );
setMoveKey( spep_0-3 + 296, 1, 22.7, -8.3 , 0 );
setMoveKey( spep_0-3 + 298, 1, 28.3, -8.3 , 0 );
setMoveKey( spep_0-3 + 299, 1, 28.3, -8.3 , 0 );

setMoveKey( spep_0-3 + 300, 1, -341.6, 67.6 , 0 );
setMoveKey( spep_0-3 + 302, 1, -334.5, 85.6 , 0 );
setMoveKey( spep_0-3 + 304, 1, -313.2, 139.7 , 0 );
setMoveKey( spep_0-3 + 306, 1, -277.7, 229.8 , 0 );
setMoveKey( spep_0-3 + 308, 1, -477.7, 269.9 , 0 );
setMoveKey( spep_0-3 + 311, 1, -477.7, 269.9 , 0 );

setMoveKey( spep_0-3 + 312, 1, -86.1, -8.7 , 0 );
setMoveKey( spep_0-3 + 314, 1, -93.3, -7.9 , 0 );
setMoveKey( spep_0-3 + 316, 1, -100, -7.2 , 0 );
setMoveKey( spep_0-3 + 318, 1, -106.2, -6.5 , 0 );
setMoveKey( spep_0-3 + 320, 1, -111.9, -5.9 , 0 );
setMoveKey( spep_0-3 + 322, 1, -117, -5.3 , 0 );
setMoveKey( spep_0-3 + 324, 1, -121.7, -4.8 , 0 );
setMoveKey( spep_0-3 + 326, 1, -126, -4.4 , 0 );
setMoveKey( spep_0-3 + 328, 1, -129.7, -4 , 0 );
setMoveKey( spep_0-3 + 330, 1, -132.9, -3.6 , 0 );
setMoveKey( spep_0-3 + 332, 1, -135.6, -3.3 , 0 );
setMoveKey( spep_0-3 + 334, 1, -137.8, -3.1 , 0 );
setMoveKey( spep_0-3 + 336, 1, -139.6, -2.9 , 0 );
setMoveKey( spep_0-3 + 338, 1, -140.8, -2.8 , 0 );
setMoveKey( spep_0-3 + 340, 1, -141.5, -2.7 , 0 );
setMoveKey( spep_0-3 + 342, 1, -141.8, -2.7 , 0 );
setMoveKey( spep_0-3 + 344, 1, -189.4, 9.6 , 0 );
setMoveKey( spep_0-3 + 346, 1, -332.1, 46.2 , 0 );
setMoveKey( spep_0-1 + 348, 1, -570, 107.3 , 0 );

setScaleKey( spep_0-3 + 280, 1, 2.22, 2.22 );
setScaleKey( spep_0-3 + 299, 1, 2.22, 2.22 );

setScaleKey( spep_0-3 + 300, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 302, 1, 1.59, 1.59 );
setScaleKey( spep_0-3 + 304, 1, 2.26, 2.26 );
setScaleKey( spep_0-3 + 306, 1, 3.38, 3.38 );
setScaleKey( spep_0-3 + 311, 1, 4.05, 4.05 );

setScaleKey( spep_0-3 + 312, 1, 2.48, 2.48 );
setScaleKey( spep_0-3 + 314, 1, 2.52, 2.52 );
setScaleKey( spep_0-3 + 316, 1, 2.56, 2.56 );
setScaleKey( spep_0-3 + 318, 1, 2.59, 2.59 );
setScaleKey( spep_0-3 + 320, 1, 2.63, 2.63 );
setScaleKey( spep_0-3 + 322, 1, 2.66, 2.66 );
setScaleKey( spep_0-3 + 324, 1, 2.68, 2.68 );
setScaleKey( spep_0-3 + 326, 1, 2.71, 2.71 );
setScaleKey( spep_0-3 + 328, 1, 2.73, 2.73 );
setScaleKey( spep_0-3 + 330, 1, 2.75, 2.75 );
setScaleKey( spep_0-3 + 332, 1, 2.76, 2.76 );
setScaleKey( spep_0-3 + 334, 1, 2.78, 2.78 );
setScaleKey( spep_0-3 + 336, 1, 2.79, 2.79 );
setScaleKey( spep_0-3 + 338, 1, 2.79, 2.79 );
setScaleKey( spep_0-3 + 340, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 342, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 344, 1, 3.01, 3.01 );
setScaleKey( spep_0-3 + 346, 1, 3.65, 3.65 );
setScaleKey( spep_0-1 + 348, 1, 4.71, 4.71 );

setRotateKey( spep_0-3 + 280, 1, -0.1 );
setRotateKey( spep_0-3 + 280, 1, 0 );
setRotateKey( spep_0-3 + 282, 1, 0.2 );
setRotateKey( spep_0-3 + 284, 1, 0.3 );
setRotateKey( spep_0-3 + 286, 1, 0.5 );
setRotateKey( spep_0-3 + 288, 1, 0.6 );
setRotateKey( spep_0-3 + 290, 1, 0.8 );
setRotateKey( spep_0-3 + 292, 1, 1 );
setRotateKey( spep_0-3 + 294, 1, 1.1 );
setRotateKey( spep_0-3 + 296, 1, 1.3 );
setRotateKey( spep_0-3 + 298, 1, 1.4 );
setRotateKey( spep_0-3 + 299, 1, 1.4 );

setRotateKey( spep_0-3 + 300, 1, -29.8 );
setRotateKey( spep_0-3 + 302, 1, -30.4 );
setRotateKey( spep_0-3 + 304, 1, -32.3 );
setRotateKey( spep_0-3 + 306, 1, -35.3 );
setRotateKey( spep_0-3 + 311, 1, -35.3 );

setRotateKey( spep_0-3 + 312, 1, -83.8 );
setRotateKey( spep_0-3 + 316, 1, -83.8 );
setRotateKey( spep_0-3 + 318, 1, -83.9 );
setRotateKey( spep_0-3 + 328, 1, -83.9 );
setRotateKey( spep_0-3 + 330, 1, -84 );
setRotateKey( spep_0-1 + 348, 1, -84 );

--顔カットインのタイミング指定
spep_x=spep_0 +488;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
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
--ラディッツかがむ
SE008 = playSeVer2( spep_0 + 132, 1004, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 132, 1116, "",spep_0 + 174, 0, 24, -1);

--キック
SE010 = playSeVer2( spep_0 + 166, 1010, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 166, 1187, "", 0, 0, 0, -1);

--振り返る
SE012 = playSeVer2( spep_0 + 218, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE012, 78 );

--向かってくる
SE013 = playSeVer2( spep_0 + 242, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE013, 153 );
SE014 = playSeVer2( spep_0 + 244, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE014, 143 );
SE015 = playSeVer2( spep_0 + 244, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 244, 1117, "",spep_0 + 288, 0, 16, -1);

--黄色い光走る
SE017 = playSeVer2( spep_0 + 274, 1179, "",spep_0 + 320, 0, 18, -1);
setPitch( spep_0 + 274, SE017, 300 );
setTimeStretch( SE017, 1.2, 30, 4 );

--肘打ち
SE018 = playSeVer2( spep_0 + 306, 1153, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 306, 1187, "",spep_0 + 366, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 306, SE019, 72 );
SE020 = playSeVer2( spep_0 + 306, 1110, "", 0, 0, 0, -1);

--飛び上がる
SE021 = playSeVer2( spep_0 + 358, 1207, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 372, 44, "", 0, 0, 0, -1);

--腕あげる
SE023 = playSeVer2( spep_0 + 432, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE024 = playSeVer2( spep_0 + 508, 1296, "",spep_0 + 588, 0, 10, -1);
SE025 = playSeVer2( spep_0 + 508, 1281, "",spep_0 + 588, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 508, SE025, 61 );
SE026 = playSeVer2( spep_0 + 508, 1273, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 508, 1240, "",spep_0 + 588, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 508, SE027, 166 );
setPitch( spep_0 + 508, SE027, -400 );
setTimeStretch( SE027, 0.73, 30, 4 );

--顔カットイン
SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 +574 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+584;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

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

-- ** 音 ** --
-- playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
--気功波を撃つ〜敵に着弾
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 176, beam_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_f, 0 );
setEffRotateKey( spep_2 + 176, beam_f, 0 );
setEffAlphaKey( spep_2 + 0, beam_f, 255 );
setEffAlphaKey( spep_2 + 174, beam_f, 255 );
setEffAlphaKey( spep_2 + 175, beam_f, 255 );
setEffAlphaKey( spep_2 + 176, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 176, beam_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_b, 0 );
setEffRotateKey( spep_2 + 176, beam_b, 0 );
setEffAlphaKey( spep_2 + 0, beam_b, 255 );
setEffAlphaKey( spep_2 + 174, beam_b, 255 );
setEffAlphaKey( spep_2 + 175, beam_b, 255 );
setEffAlphaKey( spep_2 + 176, beam_b, 0 );

--敵の動き
setDisp( spep_2-3 + 84, 1, 1 );
setDisp( spep_2-1 + 118, 1, 0 );

changeAnime( spep_2-3 + 84, 1, 106 );

setMoveKey( spep_2-3 + 84, 1, 120.3, -622.5 , 0 );
setMoveKey( spep_2-3 + 86, 1, 72.7, -520.2 , 0 );
setMoveKey( spep_2-3 + 88, 1, 30.1, -428.7 , 0 );
setMoveKey( spep_2-3 + 90, 1, -7.5, -348 , 0 );
setMoveKey( spep_2-3 + 92, 1, -40, -278 , 0 );
setMoveKey( spep_2-3 + 94, 1, -67.6, -218.8 , 0 );
setMoveKey( spep_2-3 + 96, 1, -90.2, -170.4 , 0 );
setMoveKey( spep_2-3 + 98, 1, -107.7, -132.7 , 0 );
setMoveKey( spep_2-3 + 100, 1, -120.2, -105.8 , 0 );
setMoveKey( spep_2-3 + 102, 1, -127.7, -89.7 , 0 );
setMoveKey( spep_2-3 + 104, 1, -130.3, -84.3 , 0 );
setMoveKey( spep_2-3 + 106, 1, -130.3, -84.3 , 0 );
setMoveKey( spep_2-3 + 108, 1, -74.1, -46.2 , 0 );
setMoveKey( spep_2-1 + 118, 1, -74.1, -46.2 , 0 );

setScaleKey( spep_2-3 + 84, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 86, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 88, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 90, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 92, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 94, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 96, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 98, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 100, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 106, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 108, 1, 2.67, 2.67 );
setScaleKey( spep_2-1 + 118, 1, 2.67, 2.67 );

setRotateKey( spep_2-3 + 84, 1, -104.3 );
setRotateKey( spep_2-1 + 118, 1, -104.3 );

setAlphaKey( spep_2-3 + 84, 1, 255 );
setAlphaKey( spep_2-3 + 111, 1, 255 );
setAlphaKey( spep_2-3 + 112, 1, 77 );
setAlphaKey( spep_2-1 + 118, 1, 77 );
setAlphaKey( spep_2 + 118, 1, 255 );

--SE
--気弾発射
SE028 = playSeVer2( spep_2 + 14, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE028, 67 );
SE029 = playSeVer2( spep_2 + 14, 1146, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 16, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE030, 224 );
setPitch( spep_2 + 16, SE030, -200 );
setTimeStretch( SE030, 0.87, 30, 4 );
SE031 = playSeVer2( spep_2 + 16, 1213, "",spep_2 + 268, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 16, SE031, 74 );

--気弾飛んでいく
SE032 = playSeVer2( spep_2 + 52, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 52, SE032, 166 );

--気弾ヒット
SE033 = playSeVer2( spep_2 + 106, 1017, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 106, 1021, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 106, 1161, "",spep_2 + 230, 0, 54, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_3= spep_2 + 176;
------------------------------------------------------
--遠くで爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_3 + 194, finish, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 194, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 194, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 194, finish, 255 );

--SE
--気弾と共に飛んでいく
SE036 = playSeVer2( spep_3 + 0, 1277, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_3 + 0, SE036, 184 );
SE037 = playSeVer2( spep_3 + 0, 1145, "",spep_3 + 94, 0, 66, 0.7);

--爆発
SE038 = playSeVer2( spep_3 + 60, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE038, 68 );
SE039 = playSeVer2( spep_3 + 84, 1188, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_3 + 84, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 200, 0, 0, 0, 0, 255 );  --黒 背景

--終わり
dealDamage(spep_3+60);
endPhase( spep_3 + 184 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--冒頭～着弾～構え
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 584, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 584, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 584, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 584, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 584, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 584, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 584, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 584, tame_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-3 + 38, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );
changeAnime( spep_0-3 + 28, 1, 1 );
changeAnime( spep_0-3 + 32, 1, 3 );

setMoveKey( spep_0 + 0, 1, 168.2, -19.9 , 0 );
setMoveKey( spep_0 + 1, 1, 168.2, -19.9 , 0 );
setMoveKey( spep_0 + 2, 1, 168.2, -19.9 , 0 );
setMoveKey( spep_0 + 3, 1, 168.2, -19.9 , 0 );
setMoveKey( spep_0 + 4, 1, 168.2, -19.9 , 0 );
setMoveKey( spep_0 + 5, 1, 168.2, -19.9 , 0 );
setMoveKey( spep_0 + 6, 1, 168.2, -19.9 , 0 );
setMoveKey( spep_0-3 + 27, 1, 168.2, -19.9 , 0 );
setMoveKey( spep_0-3 + 28, 1, 201.9, -6.3 , 0 );
setMoveKey( spep_0-3 + 31, 1, 201.9, -6.3 , 0 );
setMoveKey( spep_0-3 + 32, 1, 282.6, -4.7 , 0 );
setMoveKey( spep_0-3 + 34, 1, 412.3, -4.7 , 0 );
setMoveKey( spep_0-3 + 36, 1, 490.2, -4.7 , 0 );
setMoveKey( spep_0-3 + 38, 1, 516.1, -4.7 , 0 );

setScaleKey( spep_0 + 0, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 1, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 2, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 3, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 4, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 5, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 6, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 38, 1, 0.69, 0.69 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-3 + 27, 1, 0 );
setRotateKey( spep_0-3 + 28, 1, 9.5 );
setRotateKey( spep_0-3 + 31, 1, 9.5 );
setRotateKey( spep_0-3 + 32, 1, -1.8 );
setRotateKey( spep_0-3 + 38, 1, -1.8 );

setAlphaKey( spep_0 + 0, 1, 255 );
setAlphaKey( spep_0 + 1, 1, 255 );
setAlphaKey( spep_0 + 2, 1, 255 );
setAlphaKey( spep_0 + 3, 1, 255 );
setAlphaKey( spep_0 + 4, 1, 255 );
setAlphaKey( spep_0 + 5, 1, 255 );
setAlphaKey( spep_0 + 6, 1, 255 );

--SE
--敵ダッシュ
SE003 = playSeVer2( spep_0 + 30, 44, "",spep_0 + 76, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 30, SE003, 74 );
SE004 = playSeVer2( spep_0 + 30, 1048, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE004, 86 );

--敵近づいてくる
SE005 = playSeVer2( spep_0 + 54, 1278, "",spep_0 + 118, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 54, SE005, 73 );
SE006 = playSeVer2( spep_0 + 54, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 54, SE006, 74 );
SE007 = playSeVer2( spep_0 + 96, 1003, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 590, 0, 0, 0, 0, 255 );  --黒 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 74; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    
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
setDisp( spep_0-3 + 166, 1, 1 );
setDisp( spep_0-1 + 206, 1, 0 );

changeAnime( spep_0-3 + 166, 1, 16 );
changeAnime( spep_0-3 + 168, 1, 105 );

setMoveKey( spep_0-3 + 166, 1, -216.6, 43 , 0 );
setMoveKey( spep_0-3 + 167, 1, -216.6, 43 , 0 );

setMoveKey( spep_0-3 + 168, 1, -181.1, -0.3 , 0 );
setMoveKey( spep_0-3 + 170, 1, -182.7, 1.7 , 0 );
setMoveKey( spep_0-3 + 172, 1, -184.3, 3.6 , 0 );
setMoveKey( spep_0-3 + 174, 1, -186, 5.5 , 0 );
setMoveKey( spep_0-3 + 176, 1, -187.6, 7.5 , 0 );
setMoveKey( spep_0-3 + 178, 1, -189.2, 9.4 , 0 );
setMoveKey( spep_0-3 + 180, 1, -190.9, 11.3 , 0 );
setMoveKey( spep_0-3 + 182, 1, -192.5, 13.3 , 0 );
setMoveKey( spep_0-3 + 184, 1, -194.1, 15.2 , 0 );
setMoveKey( spep_0-3 + 186, 1, -195.7, 17.1 , 0 );
setMoveKey( spep_0-3 + 188, 1, -197.4, 19.1 , 0 );
setMoveKey( spep_0-3 + 190, 1, -199, 21 , 0 );
setMoveKey( spep_0-3 + 192, 1, -200.6, 22.9 , 0 );
setMoveKey( spep_0-3 + 194, 1, -202.2, 24.9 , 0 );
setMoveKey( spep_0-3 + 196, 1, -245.4, 125.2 , 0 );
setMoveKey( spep_0-3 + 198, 1, -244.8, 156.5 , 0 );
setMoveKey( spep_0-3 + 200, 1, -244.6, 165.5 , 0 );
setMoveKey( spep_0-3 + 202, 1, -244.5, 169.2 , 0 );
setMoveKey( spep_0-3 + 204, 1, -244.5, 170.6 , 0 );
setMoveKey( spep_0-1 + 206, 1, -244.5, 170.9 , 0 );

setScaleKey( spep_0-3 + 166, 1, 2.06, 2.06 );
setScaleKey( spep_0-3 + 167, 1, 2.06, 2.06 );

setScaleKey( spep_0-3 + 168, 1, 3.11, 3.11 );
setScaleKey( spep_0-3 + 170, 1, 3.07, 3.07 );
setScaleKey( spep_0-3 + 172, 1, 3.04, 3.04 );
setScaleKey( spep_0-3 + 174, 1, 3.01, 3.01 );
setScaleKey( spep_0-3 + 176, 1, 2.97, 2.97 );
setScaleKey( spep_0-3 + 178, 1, 2.94, 2.94 );
setScaleKey( spep_0-3 + 180, 1, 2.91, 2.91 );
setScaleKey( spep_0-3 + 182, 1, 2.87, 2.87 );
setScaleKey( spep_0-3 + 184, 1, 2.84, 2.84 );
setScaleKey( spep_0-3 + 186, 1, 2.81, 2.81 );
setScaleKey( spep_0-3 + 188, 1, 2.78, 2.78 );
setScaleKey( spep_0-3 + 190, 1, 2.74, 2.74 );
setScaleKey( spep_0-3 + 192, 1, 2.71, 2.71 );
setScaleKey( spep_0-3 + 194, 1, 2.68, 2.68 );
setScaleKey( spep_0-3 + 196, 1, 0.76, 0.76 );
setScaleKey( spep_0-3 + 198, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 200, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 202, 1, 0.31, 0.31 );
setScaleKey( spep_0-1 + 206, 1, 0.3, 0.3 );

setRotateKey( spep_0-3 + 166, 1, 36.6 );
setRotateKey( spep_0-3 + 167, 1, 36.6 );

setRotateKey( spep_0-3 + 168, 1, -38.1 );
setRotateKey( spep_0-3 + 194, 1, -38.1 );
setRotateKey( spep_0-3 + 196, 1, -38 );
setRotateKey( spep_0-3 + 198, 1, -53.8 );
setRotateKey( spep_0-3 + 200, 1, -58.3 );
setRotateKey( spep_0-3 + 202, 1, -60.2 );
setRotateKey( spep_0-3 + 204, 1, -60.9 );
setRotateKey( spep_0-1 + 206, 1, -61.1 );

--敵の動き
setDisp( spep_0-3 + 280, 1, 1 );
setDisp( spep_0-1 + 348, 1, 0 );

changeAnime( spep_0-3 + 280, 1, 6 );
changeAnime( spep_0-3 + 300, 1, 7 );
changeAnime( spep_0-3 + 312, 1, 6 );

setMoveKey( spep_0-3 + 280, 1, 27.5, -8.2 , 0 );
setMoveKey( spep_0-3 + 280, 1, 21.9, -8.2 , 0 );
setMoveKey( spep_0-3 + 282, 1, 16.3, -8.2 , 0 );
setMoveKey( spep_0-3 + 284, 1, 10.7, -8.2 , 0 );
setMoveKey( spep_0-3 + 286, 1, 5.1, -8.2 , 0 );
setMoveKey( spep_0-3 + 288, 1, -0.4, -8.2 , 0 );
setMoveKey( spep_0-3 + 290, 1, -6, -8.2 , 0 );
setMoveKey( spep_0-3 + 292, 1, -11.6, -8.3 , 0 );
setMoveKey( spep_0-3 + 294, 1, -17.2, -8.3 , 0 );
setMoveKey( spep_0-3 + 296, 1, -22.7, -8.3 , 0 );
setMoveKey( spep_0-3 + 298, 1, -28.3, -8.3 , 0 );
setMoveKey( spep_0-3 + 299, 1, -28.3, -8.3 , 0 );

setMoveKey( spep_0-3 + 300, 1, 341.6, 67.6 , 0 );
setMoveKey( spep_0-3 + 302, 1, 334.5, 85.6 , 0 );
setMoveKey( spep_0-3 + 304, 1, 313.2, 139.7 , 0 );
setMoveKey( spep_0-3 + 306, 1, 277.7, 229.8 , 0 );
setMoveKey( spep_0-3 + 308, 1, 477.7, 269.9 , 0 );
setMoveKey( spep_0-3 + 311, 1, 477.7, 269.9 , 0 );

setMoveKey( spep_0-3 + 312, 1, 86.1, -8.7 , 0 );
setMoveKey( spep_0-3 + 314, 1, 93.3, -7.9 , 0 );
setMoveKey( spep_0-3 + 316, 1, 100, -7.2 , 0 );
setMoveKey( spep_0-3 + 318, 1, 106.2, -6.5 , 0 );
setMoveKey( spep_0-3 + 320, 1, 111.9, -5.9 , 0 );
setMoveKey( spep_0-3 + 322, 1, 117, -5.3 , 0 );
setMoveKey( spep_0-3 + 324, 1, 121.7, -4.8 , 0 );
setMoveKey( spep_0-3 + 326, 1, 126, -4.4 , 0 );
setMoveKey( spep_0-3 + 328, 1, 129.7, -4 , 0 );
setMoveKey( spep_0-3 + 330, 1, 132.9, -3.6 , 0 );
setMoveKey( spep_0-3 + 332, 1, 135.6, -3.3 , 0 );
setMoveKey( spep_0-3 + 334, 1, 137.8, -3.1 , 0 );
setMoveKey( spep_0-3 + 336, 1, 139.6, -2.9 , 0 );
setMoveKey( spep_0-3 + 338, 1, 140.8, -2.8 , 0 );
setMoveKey( spep_0-3 + 340, 1, 141.5, -2.7 , 0 );
setMoveKey( spep_0-3 + 342, 1, 41.8, -2.7 , 0 );
setMoveKey( spep_0-3 + 344, 1, 189.4, 9.6 , 0 );
setMoveKey( spep_0-3 + 346, 1, 332.1, 46.2 , 0 );
setMoveKey( spep_0-1 + 348, 1, 570, 107.3 , 0 );

setScaleKey( spep_0-3 + 280, 1, 2.22, 2.22 );
setScaleKey( spep_0-3 + 299, 1, 2.22, 2.22 );

setScaleKey( spep_0-3 + 300, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 302, 1, 1.59, 1.59 );
setScaleKey( spep_0-3 + 304, 1, 2.26, 2.26 );
setScaleKey( spep_0-3 + 306, 1, 3.38, 3.38 );
setScaleKey( spep_0-3 + 311, 1, 4.05, 4.05 );

setScaleKey( spep_0-3 + 312, 1, 2.48, 2.48 );
setScaleKey( spep_0-3 + 314, 1, 2.52, 2.52 );
setScaleKey( spep_0-3 + 316, 1, 2.56, 2.56 );
setScaleKey( spep_0-3 + 318, 1, 2.59, 2.59 );
setScaleKey( spep_0-3 + 320, 1, 2.63, 2.63 );
setScaleKey( spep_0-3 + 322, 1, 2.66, 2.66 );
setScaleKey( spep_0-3 + 324, 1, 2.68, 2.68 );
setScaleKey( spep_0-3 + 326, 1, 2.71, 2.71 );
setScaleKey( spep_0-3 + 328, 1, 2.73, 2.73 );
setScaleKey( spep_0-3 + 330, 1, 2.75, 2.75 );
setScaleKey( spep_0-3 + 332, 1, 2.76, 2.76 );
setScaleKey( spep_0-3 + 334, 1, 2.78, 2.78 );
setScaleKey( spep_0-3 + 336, 1, 2.79, 2.79 );
setScaleKey( spep_0-3 + 338, 1, 2.79, 2.79 );
setScaleKey( spep_0-3 + 340, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 342, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 344, 1, 3.01, 3.01 );
setScaleKey( spep_0-3 + 346, 1, 3.65, 3.65 );
setScaleKey( spep_0-1 + 348, 1, 4.71, 4.71 );

setRotateKey( spep_0-3 + 280, 1, 0.1 );
setRotateKey( spep_0-3 + 280, 1, 0 );
setRotateKey( spep_0-3 + 282, 1, -0.2 );
setRotateKey( spep_0-3 + 284, 1, -0.3 );
setRotateKey( spep_0-3 + 286, 1, -0.5 );
setRotateKey( spep_0-3 + 288, 1, -0.6 );
setRotateKey( spep_0-3 + 290, 1, -0.8 );
setRotateKey( spep_0-3 + 292, 1, -1 );
setRotateKey( spep_0-3 + 294, 1, -1.1 );
setRotateKey( spep_0-3 + 296, 1, -1.3 );
setRotateKey( spep_0-3 + 298, 1, -1.4 );
setRotateKey( spep_0-3 + 299, 1, -1.4 );

setRotateKey( spep_0-3 + 300, 1, 29.8 );
setRotateKey( spep_0-3 + 302, 1, 30.4 );
setRotateKey( spep_0-3 + 304, 1, 32.3 );
setRotateKey( spep_0-3 + 306, 1, 35.3 );
setRotateKey( spep_0-3 + 311, 1, 35.3 );

setRotateKey( spep_0-3 + 312, 1, 83.8 );
setRotateKey( spep_0-3 + 316, 1, 83.8 );
setRotateKey( spep_0-3 + 318, 1, 83.9 );
setRotateKey( spep_0-3 + 328, 1, 83.9 );
setRotateKey( spep_0-3 + 330, 1, 84 );
setRotateKey( spep_0-1 + 348, 1, 84 );

--顔カットインのタイミング指定
spep_x=spep_0 +488;

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
--ラディッツかがむ
SE008 = playSeVer2( spep_0 + 132, 1004, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 132, 1116, "",spep_0 + 174, 0, 24, -1);

--キック
SE010 = playSeVer2( spep_0 + 166, 1010, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 166, 1187, "", 0, 0, 0, -1);

--振り返る
SE012 = playSeVer2( spep_0 + 218, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE012, 78 );

--向かってくる
SE013 = playSeVer2( spep_0 + 242, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE013, 153 );
SE014 = playSeVer2( spep_0 + 244, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE014, 143 );
SE015 = playSeVer2( spep_0 + 244, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 244, 1117, "",spep_0 + 288, 0, 16, -1);

--黄色い光走る
SE017 = playSeVer2( spep_0 + 274, 1179, "",spep_0 + 320, 0, 18, -1);
setPitch( spep_0 + 274, SE017, 300 );
setTimeStretch( SE017, 1.2, 30, 4 );

--肘打ち
SE018 = playSeVer2( spep_0 + 306, 1153, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 306, 1187, "",spep_0 + 366, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 306, SE019, 72 );
SE020 = playSeVer2( spep_0 + 306, 1110, "", 0, 0, 0, -1);

--飛び上がる
SE021 = playSeVer2( spep_0 + 358, 1207, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 372, 44, "", 0, 0, 0, -1);

--腕あげる
SE023 = playSeVer2( spep_0 + 432, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE024 = playSeVer2( spep_0 + 508, 1296, "",spep_0 + 588, 0, 10, -1);
SE025 = playSeVer2( spep_0 + 508, 1281, "",spep_0 + 588, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 508, SE025, 61 );
SE026 = playSeVer2( spep_0 + 508, 1273, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 508, 1240, "",spep_0 + 588, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 508, SE027, 166 );
setPitch( spep_0 + 508, SE027, -400 );
setTimeStretch( SE027, 0.73, 30, 4 );

--顔カットイン
--SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 +574 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+584;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
--気功波を撃つ〜敵に着弾
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 176, beam_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 176, beam_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_f, 0 );
setEffRotateKey( spep_2 + 176, beam_f, 0 );
setEffAlphaKey( spep_2 + 0, beam_f, 255 );
setEffAlphaKey( spep_2 + 174, beam_f, 255 );
setEffAlphaKey( spep_2 + 175, beam_f, 255 );
setEffAlphaKey( spep_2 + 176, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 176, beam_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 176, beam_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_b, 0 );
setEffRotateKey( spep_2 + 176, beam_b, 0 );
setEffAlphaKey( spep_2 + 0, beam_b, 255 );
setEffAlphaKey( spep_2 + 174, beam_b, 255 );
setEffAlphaKey( spep_2 + 175, beam_b, 255 );
setEffAlphaKey( spep_2 + 176, beam_b, 0 );

--敵の動き
setDisp( spep_2-3 + 84, 1, 1 );
setDisp( spep_2-1 + 118, 1, 0 );

changeAnime( spep_2-3 + 84, 1, 6 );

setMoveKey( spep_2-3 + 84, 1, -120.3, -622.5 , 0 );
setMoveKey( spep_2-3 + 86, 1, -72.7, -520.2 , 0 );
setMoveKey( spep_2-3 + 88, 1, -30.1, -428.7 , 0 );
setMoveKey( spep_2-3 + 90, 1, 7.5, -348 , 0 );
setMoveKey( spep_2-3 + 92, 1, 40, -278 , 0 );
setMoveKey( spep_2-3 + 94, 1, 67.6, -218.8 , 0 );
setMoveKey( spep_2-3 + 96, 1, 90.2, -170.4 , 0 );
setMoveKey( spep_2-3 + 98, 1, 107.7, -132.7 , 0 );
setMoveKey( spep_2-3 + 100, 1, 120.2, -105.8 , 0 );
setMoveKey( spep_2-3 + 102, 1, 127.7, -89.7 , 0 );
setMoveKey( spep_2-3 + 104, 1, 130.3, -84.3 , 0 );
setMoveKey( spep_2-3 + 106, 1, 130.3, -84.3 , 0 );
setMoveKey( spep_2-3 + 108, 1, 74.1, -46.2 , 0 );
setMoveKey( spep_2-1 + 118, 1, 74.1, -46.2 , 0 );

setScaleKey( spep_2-3 + 84, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 86, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 88, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 90, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 92, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 94, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 96, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 98, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 100, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 106, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 108, 1, 2.67, 2.67 );
setScaleKey( spep_2-1 + 118, 1, 2.67, 2.67 );

setRotateKey( spep_2-3 + 84, 1, 104.3 );
setRotateKey( spep_2-1 + 118, 1, 104.3 );

setAlphaKey( spep_2-3 + 84, 1, 255 );
setAlphaKey( spep_2-3 + 111, 1, 255 );
setAlphaKey( spep_2-3 + 112, 1, 77 );
setAlphaKey( spep_2-1 + 118, 1, 77 );
setAlphaKey( spep_2 + 118, 1, 255 );

--SE
--気弾発射
SE028 = playSeVer2( spep_2 + 14, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE028, 67 );
SE029 = playSeVer2( spep_2 + 14, 1146, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 16, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE030, 224 );
setPitch( spep_2 + 16, SE030, -200 );
setTimeStretch( SE030, 0.87, 30, 4 );
SE031 = playSeVer2( spep_2 + 16, 1213, "",spep_2 + 268, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 16, SE031, 74 );

--気弾飛んでいく
SE032 = playSeVer2( spep_2 + 52, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 52, SE032, 166 );

--気弾ヒット
SE033 = playSeVer2( spep_2 + 106, 1017, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 106, 1021, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 106, 1161, "",spep_2 + 230, 0, 54, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_3= spep_2 + 176;
------------------------------------------------------
--遠くで爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_3 + 194, finish, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_3 + 194, finish, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 194, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 194, finish, 255 );
--SE
--気弾と共に飛んでいく
SE036 = playSeVer2( spep_3 + 0, 1277, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_3 + 0, SE036, 184 );
SE037 = playSeVer2( spep_3 + 0, 1145, "",spep_3 + 94, 0, 66, 0.7);

--爆発
SE038 = playSeVer2( spep_3 + 60, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE038, 68 );
SE039 = playSeVer2( spep_3 + 84, 1188, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_3 + 84, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 200, 0, 0, 0, 0, 255 );  --黒 背景

--終わり
dealDamage(spep_3+60);
endPhase( spep_3 + 184 );
end

end
------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

	if(_IS_DODGE_ == 1) then

	SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

	playSe( SP_dodge-12, 1042);

	speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
	setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

	kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
		if (_IS_PLAYER_SIDE_ == 1) then

			setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

		else

			setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

		end

setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

-- ** エフェクト等 ** --
explosion_f = entryEffect( spep_z + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_z + 0, explosion_f, 0, 0, 0 );
setEffMoveKey( spep_z + 160, explosion_f, 0, 0, 0 );
setEffScaleKey( spep_z + 0, explosion_f, 1.0, 1.0 );
setEffScaleKey( spep_z + 160, explosion_f, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, explosion_f, 0 );
setEffRotateKey( spep_z + 160, explosion_f, 0 );
setEffAlphaKey( spep_z + 0, explosion_f, 255 );
setEffAlphaKey( spep_z + 160, explosion_f, 255 );

-- ** エフェクト等 ** --
explosion_b = entryEffect( spep_z + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_z + 0, explosion_b, 0, 0, 0 );
setEffMoveKey( spep_z + 160, explosion_b, 0, 0, 0 );
setEffScaleKey( spep_z + 0, explosion_b, 1.0, 1.0 );
setEffScaleKey( spep_z + 160, explosion_b, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, explosion_b, 0 );
setEffRotateKey( spep_z + 160, explosion_b, 0 );
setEffAlphaKey( spep_z + 0, explosion_b, 255 );
setEffAlphaKey( spep_z + 160, explosion_b, 255 );

--敵の動き
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z-1 + 38, 1, 0 );

changeAnime( spep_z + 0, 1, 104 );
changeAnime( spep_z-3 + 22, 1, 108 );

setMoveKey( spep_z + 0, 1, 14.6, 317.3 , 0 );
setMoveKey( spep_z-3 + 21, 1, 14.6, 317.3 , 0 );
setMoveKey( spep_z-3 + 22, 1, 13.1, 237.8 , 0 );
setMoveKey( spep_z-3 + 24, 1, 13.1, 237.8 , 0 );
setMoveKey( spep_z-3 + 25, 1, 13.1, 237.8 , 0 );
setMoveKey( spep_z-3 + 26, 1, 26.6, 85.2 , 0 );
setMoveKey( spep_z-3 + 27, 1, 26.6, 85.2 , 0 );
setMoveKey( spep_z-3 + 28, 1, 26.6, 85.2 , 0 );
setMoveKey( spep_z-3 + 29, 1, 26.6, 85.2 , 0 );
setMoveKey( spep_z-3 + 30, 1, 32, 20.4 , 0 );
setMoveKey( spep_z-3 + 31, 1, 32, 20.4 , 0 );
setMoveKey( spep_z-3 + 32, 1, 32, 20.4 , 0 );
setMoveKey( spep_z-3 + 33, 1, 32, 20.4 , 0 );
setMoveKey( spep_z-3 + 34, 1, 26.6, -39 , 0 );
setMoveKey( spep_z-3 + 36, 1, 26.6, -39 , 0 );
setMoveKey( spep_z-1 + 38, 1, 27.9, -75.3 , 0 );

setScaleKey( spep_z + 0, 1, 0.55, 0.55 );
setScaleKey( spep_z-3 + 21, 1, 0.55, 0.55 );
setScaleKey( spep_z-3 + 22, 1, 0.21, 0.21 );
setScaleKey( spep_z-3 + 24, 1, 0.21, 0.21 );
setScaleKey( spep_z-3 + 26, 1, 0.16, 0.16 );
setScaleKey( spep_z-3 + 28, 1, 0.16, 0.16 );
setScaleKey( spep_z-3 + 30, 1, 0.12, 0.12 );
setScaleKey( spep_z-3 + 32, 1, 0.12, 0.12 );
setScaleKey( spep_z-3 + 34, 1, 0.08, 0.08 );
setScaleKey( spep_z-3 + 36, 1, 0.08, 0.08 );
setScaleKey( spep_z-1 + 38, 1, 0.06, 0.06 );

setRotateKey( spep_z + 0, 1, 18.5 );
setRotateKey( spep_z-3 + 21, 1, 18.5 );
setRotateKey( spep_z-3 + 22, 1, 82.4 );
setRotateKey( spep_z-3 + 32, 1, 82.4 );
setRotateKey( spep_z-3 + 34, 1, 82.5 );
setRotateKey( spep_z-1 + 38, 1, 82.5 );

setAlphaKey( spep_z-3 + 0, 1, 255 );
setAlphaKey( spep_z-3 + 21, 1, 255 );
setAlphaKey( spep_z-3 + 22, 1, 128 );
setAlphaKey( spep_z-1 + 38, 1, 128 );

--SE
--【全体】気弾と共にとんでいく
SE041 = playSeVer2( spep_z + 10, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 10, SE041, 80 );
SE042 = playSeVer2( spep_z + 10, 1277, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_z + 10, 1145, "",spep_z + 104, 0, 66, 0.6);

--【全体】爆発
SE044 = playSeVer2( spep_z + 80, 1159, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_z + 96, 1188, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_z + 96, 1024, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_z+80);
endPhase( spep_z + 154 );
end