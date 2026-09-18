--1024730:天津飯_気功砲
--sp_effect_a1_00359
--sp2396

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
SP_01=	160040	;--	敵に向かって奥に走り込む
SP_02=	160041	;--	敵に向かって奥に走り込む
SP_03=	160042	;--	敵が映る
SP_04=	160043	;--	敵が映る
SP_05=	160044	;--	白フラッシュ→連続パンチ→蹴り上げ
SP_06=	160045	;--	白フラッシュ→連続パンチ→蹴り上げ
SP_07=	160047	;--	敵が空に飛んでいく
SP_08=	160048	;--	敵が空に飛んでいく
SP_09=	160049	;--	構える（俯瞰）
SP_10=	160050	;--	手に気功が溜まる
SP_11=	160051	;--	気功砲を打つ前の構え
SP_12=	160053	;--	手を空に構える
SP_13=	160054	;--	手を空に構える
SP_14=	160055	;--	気功砲を放つ
SP_15=	160057	;--	気功砲から地面から画面に飛んでくる（俯瞰）
SP_16=	160058	;--	敵に気功砲が当たる
SP_17=	160059	;--	敵に気功砲が当たる
SP_18=	160060	;--	敵が光に飲まれる
SP_19=	160061	;--	敵が光に飲まれる
SP_20=	160062	;--	煙が流れる

--エフェクト(てき)
SP_01x=	160040	;--	敵に向かって奥に走り込む
SP_02x=	160041	;--	敵に向かって奥に走り込む
SP_03x=	160042	;--	敵が映る
SP_04x=	160043	;--	敵が映る
SP_05x=	160046	;--	白フラッシュ→連続パンチ→蹴り上げ	(敵)
SP_06x=	160045	;--	白フラッシュ→連続パンチ→蹴り上げ
SP_07x=	160047	;--	敵が空に飛んでいく
SP_08x=	160048	;--	敵が空に飛んでいく
SP_09x=	160049	;--	構える（俯瞰）
SP_10x=	160050	;--	手に気功が溜まる
SP_11x=	160051	;--	気功砲を打つ前の構え
SP_12x=	160053	;--	手を空に構える
SP_13x=	160054	;--	手を空に構える
SP_14x=	160052	;--	気功砲を放つ	(敵)
SP_15x=	160057	;--	気功砲から地面から画面に飛んでくる（俯瞰）
SP_16x=	160058	;--	敵に気功砲が当たる
SP_17x=	160059	;--	敵に気功砲が当たる
SP_18x=	160060	;--	敵が光に飲まれる
SP_19x=	160061	;--	敵が光に飲まれる
SP_20x=	160062	;--	煙が流れる

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
--敵に向かって奥に走り込む
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
running_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, running_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 46, running_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, running_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 46, running_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, running_f, 0 );
setEffRotateKey( spep_0 + 46, running_f, 0 );
setEffAlphaKey( spep_0 + 0, running_f, 255 );
setEffAlphaKey( spep_0 + 44, running_f, 255 );
setEffAlphaKey( spep_0 + 45, running_f, 255 );
setEffAlphaKey( spep_0 + 46, running_f, 0 );

-- ** エフェクト等 ** --
running_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, running_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 46, running_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, running_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 46, running_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, running_b, 0 );
setEffRotateKey( spep_0 + 46, running_b, 0 );
setEffAlphaKey( spep_0 + 0, running_b, 255 );
setEffAlphaKey( spep_0 + 44, running_b, 255 );
setEffAlphaKey( spep_0 + 45, running_b, 255 );
setEffAlphaKey( spep_0 + 46, running_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 93.2, -27.4 , 0 );
setMoveKey( spep_0 + 1, 1, 93.2, -27.4 , 0 );
setMoveKey( spep_0 + 2, 1, 93.2, -27.4 , 0 );
setMoveKey( spep_0 + 3, 1, 93.2, -27.4 , 0 );
setMoveKey( spep_0 + 4, 1, 93.2, -27.4 , 0 );
setMoveKey( spep_0 + 5, 1, 93.2, -27.4 , 0 );
setMoveKey( spep_0 + 6, 1, 93.2, -27.4 , 0 );
setMoveKey( spep_0 + 12, 1, 93.2, -27.4 , 0 );
setMoveKey( spep_0 + 14, 1, 92.6, -28.6 , 0 );
setMoveKey( spep_0 + 16, 1, 92.4, -26.5 , 0 );
setMoveKey( spep_0 + 18, 1, 92.8, -26.4 , 0 );
setMoveKey( spep_0 + 24, 1, 92.8, -26.4 , 0 );
setMoveKey( spep_0 + 26, 1, 92.6, -28.6 , 0 );
setMoveKey( spep_0 + 28, 1, 92.4, -26.5 , 0 );
setMoveKey( spep_0 + 30, 1, 92.8, -26.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 1, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 2, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 3, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 4, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 5, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 6, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 30, 1, 0.86, 0.86 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 30, 1, 0 );


--SE
--天津飯向かっていく
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 68 );
SE002 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--走る音
SE003 = playSeVer2( spep_0 + 6, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 158 );

--天津飯向かっていく
SE004 = playSeVer2( spep_0 + 8, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE004, 41 );

--走る音
SE005 = playSeVer2( spep_0 + 16, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE005, 158 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, 92.8, -26.4 , 0 );
    setScaleKey( SP_dodge + 9, 1, 0.86, 0.86 );
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
setMoveKey( spep_0 + 36, 1, 92.8, -26.4 , 0 );
setMoveKey( spep_0 + 38, 1, 92.6, -28.6 , 0 );
setMoveKey( spep_0 + 40, 1, 92.4, -26.5 , 0 );
setMoveKey( spep_0 + 42, 1, 92.8, -26.4 , 0 );
setMoveKey( spep_0-1 + 46, 1, 92.8, -26.4 , 0 );

setScaleKey( spep_0-1 + 46, 1, 0.86, 0.86 );

setRotateKey( spep_0-1 + 46, 1, 0 );

--SE
--走る音
SE006 = playSeVer2( spep_0 + 24, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE006, 158 );
SE007 = playSeVer2( spep_0 + 34, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE007, 158 );
SE008 = playSeVer2( spep_0 + 42, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE008, 158 );

--次の準備
spep_1=spep_0+46;
------------------------------------------------------
--敵が映る
------------------------------------------------------
-- ** エフェクト等 ** --
reflected_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, reflected_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 24, reflected_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, reflected_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 24, reflected_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, reflected_f, 0 );
setEffRotateKey( spep_1 + 24, reflected_f, 0 );
setEffAlphaKey( spep_1 + 0, reflected_f, 255 );
setEffAlphaKey( spep_1 + 22, reflected_f, 255 );
setEffAlphaKey( spep_1 + 23, reflected_f, 255 );
setEffAlphaKey( spep_1 + 24, reflected_f, 0 );

-- ** エフェクト等 ** --
reflected_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, reflected_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 24, reflected_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, reflected_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 24, reflected_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, reflected_b, 0 );
setEffRotateKey( spep_1 + 24, reflected_b, 0 );
setEffAlphaKey( spep_1 + 0, reflected_b, 255 );
setEffAlphaKey( spep_1 + 22, reflected_b, 255 );
setEffAlphaKey( spep_1 + 23, reflected_b, 255 );
setEffAlphaKey( spep_1 + 24, reflected_b, 0 );

--敵の動き
setDisp( spep_1 + 26, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );

setMoveKey( spep_1 + 0, 1, 52.5, -42.1 , 0 );
setMoveKey( spep_1 + 2, 1, 53.6, -42.1 , 0 );
setMoveKey( spep_1 + 4, 1, 54.5, -42.1 , 0 );
setMoveKey( spep_1 + 6, 1, 55.2, -42.1 , 0 );
setMoveKey( spep_1 + 8, 1, 55.8, -42.1 , 0 );
setMoveKey( spep_1 + 10, 1, 56.4, -42.1 , 0 );
setMoveKey( spep_1 + 12, 1, 56.8, -42.1 , 0 );
setMoveKey( spep_1 + 14, 1, 57.2, -42.1 , 0 );
setMoveKey( spep_1 + 16, 1, 57.6, -42.1 , 0 );
setMoveKey( spep_1 + 18, 1, 57.9, -42.1 , 0 );
setMoveKey( spep_1 + 20, 1, 58.2, -42.1 , 0 );
setMoveKey( spep_1 + 22, 1, 58.5, -42.1 , 0 );
setMoveKey( spep_1 + 24, 1, 58.7, -42.1 , 0 );
setMoveKey( spep_1 + 26, 1, 58.8, -42.1 , 0 );
--setMoveKey( spep_1 + 28, 1, 59, -42.1 , 0 );

setScaleKey( spep_1 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 26, 1, 1.8, 1.8 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 26, 1, 0 );

--SE
--走る音
SE009 = playSeVer2( spep_1 + 8, 1107, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 26, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_2=spep_1+24;
------------------------------------------------------
--白フラッシュ→連続パンチ→蹴り上げ
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 140, rush_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 140, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_f, 0 );
setEffRotateKey( spep_2 + 140, rush_f, 0 );
setEffAlphaKey( spep_2 + 0, rush_f, 255 );
setEffAlphaKey( spep_2 + 138, rush_f, 255 );
setEffAlphaKey( spep_2 + 139, rush_f, 255 );
setEffAlphaKey( spep_2 + 140, rush_f, 0 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_2 + 0, SP_06, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 140, rush_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 140, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_b, 0 );
setEffRotateKey( spep_2 + 140, rush_b, 0 );
setEffAlphaKey( spep_2 + 0, rush_b, 255 );
setEffAlphaKey( spep_2 + 138, rush_b, 255 );
setEffAlphaKey( spep_2 + 139, rush_b, 255 );
setEffAlphaKey( spep_2 + 140, rush_b, 0 );

--敵の動き
setDisp( spep_2-3 + 6, 1, 1 );
setDisp( spep_2-3 + 140, 1, 0 );

changeAnime( spep_2-3 + 6, 1, 106 );
changeAnime( spep_2-3 + 34, 1, 108 );
changeAnime( spep_2-3 + 54, 1, 106 );
changeAnime( spep_2-3 + 70, 1, 108 );
changeAnime( spep_2-3 + 116, 1, 107 );

setMoveKey( spep_2-3 + 6, 1, 0.7, -35.1 , 0 );
setMoveKey( spep_2-3 + 8, 1, 4.2, -17.5 , 0 );
setMoveKey( spep_2-3 + 10, 1, 6.9, -46.4 , 0 );
setMoveKey( spep_2-3 + 12, 1, 22.2, -35.5 , 0 );
setMoveKey( spep_2-3 + 14, 1, 11.1, -45.7 , 0 );
setMoveKey( spep_2-3 + 16, 1, 12.8, -20.4 , 0 );
setMoveKey( spep_2-3 + 18, 1, 14.8, -45 , 0 );
setMoveKey( spep_2-3 + 20, 1, 30.4, -35.5 , 0 );
setMoveKey( spep_2-3 + 22, 1, 17.1, -35 , 0 );
setMoveKey( spep_2-3 + 24, 1, 18.3, -35 , 0 );
setMoveKey( spep_2-3 + 26, 1, 19.5, -35 , 0 );
setMoveKey( spep_2-3 + 28, 1, 20.5, -35 , 0 );
setMoveKey( spep_2-3 + 30, 1, 21.5, -35 , 0 );
setMoveKey( spep_2-3 + 32, 1, 22.4, -35 , 0 );
setMoveKey( spep_2-3 + 33, 1, 22.4, -35 , 0 );

setMoveKey( spep_2-3 + 34, 1, 55.2, 1.1 , 0 );
setMoveKey( spep_2-3 + 36, 1, 62.1, -10.2 , 0 );
setMoveKey( spep_2-3 + 38, 1, 79.9, 0.6 , 0 );
setMoveKey( spep_2-3 + 40, 1, 70.4, -9.6 , 0 );
setMoveKey( spep_2-3 + 42, 1, 73.4, 15.8 , 0 );
setMoveKey( spep_2-3 + 44, 1, 76.4, -8.8 , 0 );
setMoveKey( spep_2-3 + 46, 1, 92.7, 0.6 , 0 );
setMoveKey( spep_2-3 + 48, 1, 80, 1.1 , 0 );
setMoveKey( spep_2-3 + 50, 1, 81.7, 1.1 , 0 );
setMoveKey( spep_2-3 + 52, 1, 83, 1.1 , 0 );
setMoveKey( spep_2-3 + 53, 1, 83, 1.1 , 0 );

setMoveKey( spep_2-3 + 54, 1, 41.3, -35.6 , 0 );
setMoveKey( spep_2-3 + 56, 1, 49.5, -18.1 , 0 );
setMoveKey( spep_2-3 + 58, 1, 54.9, -46.9 , 0 );
setMoveKey( spep_2-3 + 60, 1, 72.4, -36.1 , 0 );
setMoveKey( spep_2-3 + 62, 1, 62.9, -46.3 , 0 );
setMoveKey( spep_2-3 + 64, 1, 66, -20.9 , 0 );
setMoveKey( spep_2-3 + 66, 1, 69.1, -45.5 , 0 );
setMoveKey( spep_2-3 + 68, 1, 71, -35.6 , 0 );

setMoveKey( spep_2-3 + 70, 1, 57.8, 46.9 , 0 );
setMoveKey( spep_2-3 + 72, 1, 63.6, 75.6 , 0 );
setMoveKey( spep_2-3 + 74, 1, 68.8, 56.6 , 0 );
setMoveKey( spep_2-3 + 76, 1, 86.5, 76.2 , 0 );
setMoveKey( spep_2-3 + 78, 1, 77.5, 74 , 0 );
setMoveKey( spep_2-3 + 80, 1, 81.3, 106.7 , 0 );
setMoveKey( spep_2-3 + 82, 1, 66.9, 98.4 , 0 );
setMoveKey( spep_2-3 + 84, 1, 70.2, 104.7 , 0 );
setMoveKey( spep_2-3 + 86, 1, 73.3, 110.7 , 0 );
setMoveKey( spep_2-3 + 88, 1, 76.1, 116.3 , 0 );
setMoveKey( spep_2-3 + 90, 1, 78.9, 121.6 , 0 );
setMoveKey( spep_2-3 + 92, 1, 81.4, 126.7 , 0 );
setMoveKey( spep_2-3 + 94, 1, 83.8, 131.5 , 0 );
setMoveKey( spep_2-3 + 96, 1, 86.1, 136 , 0 );
setMoveKey( spep_2-3 + 98, 1, 88.3, 140.3 , 0 );
setMoveKey( spep_2-3 + 100, 1, 90.4, 144.5 , 0 );
setMoveKey( spep_2-3 + 102, 1, 92.3, 148.4 , 0 );
setMoveKey( spep_2-3 + 104, 1, 94.2, 152.1 , 0 );
setMoveKey( spep_2-3 + 106, 1, 96, 155.7 , 0 );
setMoveKey( spep_2-3 + 108, 1, 97.7, 159.1 , 0 );
setMoveKey( spep_2-3 + 110, 1, 99.2, 162.3 , 0 );
setMoveKey( spep_2-3 + 112, 1, 100.7, 165.3 , 0 );
setMoveKey( spep_2-3 + 114, 1, 102, 168.1 , 0 );
setMoveKey( spep_2-3 + 115, 1, 102, 168.1 , 0 );

setMoveKey( spep_2-3 + 116, 1, 11, 315.6 , 0 );
setMoveKey( spep_2-3 + 118, 1, 61.6, 322.7 , 0 );
setMoveKey( spep_2-3 + 120, 1, 97.3, 393.8 , 0 );
setMoveKey( spep_2-3 + 122, 1, 92.5, 383.9 , 0 );
setMoveKey( spep_2-3 + 124, 1, 113.5, 388.9 , 0 );
setMoveKey( spep_2-3 + 126, 1, 179.7, 521.1 , 0 );
setMoveKey( spep_2-3 + 128, 1, 231.3, 612.5 , 0 );
setMoveKey( spep_2-3 + 130, 1, 308.5, 718.9 , 0 );
setMoveKey( spep_2-3 + 132, 1, 374.4, 850.9 , 0 );
setMoveKey( spep_2-3 + 134, 1, 425.6, 942.2 , 0 );
setMoveKey( spep_2-3 + 136, 1, 502.5, 1048.5 , 0 );
setMoveKey( spep_2-3 + 138, 1, 568, 1180.4 , 0 );
setMoveKey( spep_2-3 + 140, 1, 632.3, 1290.2 , 0 );
--setMoveKey( spep_2-1 + 142, 1, 683.1, 1381.3 , 0 );

setScaleKey( spep_2-3 + 6, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 33, 1, 1.67, 1.67 );

setScaleKey( spep_2-3 + 34, 1, 1.86, 1.86 );
setScaleKey( spep_2-3 + 53, 1, 1.86, 1.86 );

setScaleKey( spep_2-3 + 54, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 69, 1, 1.67, 1.67 );

setScaleKey( spep_2-3 + 70, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 115, 1, 1.8, 1.8 );

setScaleKey( spep_2-3 + 116, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 118, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 120, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 124, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 126, 1, 0.99, 0.99 );
setScaleKey( spep_2-3 + 128, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 130, 1, 1.24, 1.24 );
setScaleKey( spep_2-3 + 132, 1, 1.36, 1.36 );
setScaleKey( spep_2-3 + 134, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 136, 1, 1.61, 1.61 );
setScaleKey( spep_2-3 + 138, 1, 1.74, 1.74 );
setScaleKey( spep_2-3 + 140, 1, 1.86, 1.86 );
--setScaleKey( spep_2-1 + 142, 1, 1.99, 1.99 );

setRotateKey( spep_2-3 + 6, 1, -45.2 );
setRotateKey( spep_2-3 + 8, 1, -44.5 );
setRotateKey( spep_2-3 + 10, 1, -43.7 );
setRotateKey( spep_2-3 + 12, 1, -42.9 );
setRotateKey( spep_2-3 + 14, 1, -42.1 );
setRotateKey( spep_2-3 + 16, 1, -41.3 );
setRotateKey( spep_2-3 + 18, 1, -40.5 );
setRotateKey( spep_2-3 + 20, 1, -39.7 );
setRotateKey( spep_2-3 + 22, 1, -38.9 );
setRotateKey( spep_2-3 + 24, 1, -38.2 );
setRotateKey( spep_2-3 + 26, 1, -37.4 );
setRotateKey( spep_2-3 + 28, 1, -36.6 );
setRotateKey( spep_2-3 + 30, 1, -35.8 );
setRotateKey( spep_2-3 + 32, 1, -35 );
setRotateKey( spep_2-3 + 33, 1, -35 );

setRotateKey( spep_2-3 + 34, 1, 0 );
setRotateKey( spep_2-3 + 53, 1, 0 );

setRotateKey( spep_2-3 + 54, 1, -45.2 );
setRotateKey( spep_2-3 + 56, 1, -43.9 );
setRotateKey( spep_2-3 + 58, 1, -42.6 );
setRotateKey( spep_2-3 + 60, 1, -41.3 );
setRotateKey( spep_2-3 + 62, 1, -40 );
setRotateKey( spep_2-3 + 64, 1, -38.6 );
setRotateKey( spep_2-3 + 66, 1, -37.3 );
setRotateKey( spep_2-3 + 68, 1, -36 );
setRotateKey( spep_2-3 + 69, 1, -36 );

setRotateKey( spep_2-3 + 70, 1, -10 );
setRotateKey( spep_2-3 + 72, 1, -9.7 );
setRotateKey( spep_2-3 + 74, 1, -9.5 );
setRotateKey( spep_2-3 + 76, 1, -9.2 );
setRotateKey( spep_2-3 + 78, 1, -8.9 );
setRotateKey( spep_2-3 + 80, 1, -8.6 );
setRotateKey( spep_2-3 + 82, 1, -8.4 );
setRotateKey( spep_2-3 + 84, 1, -8.1 );
setRotateKey( spep_2-3 + 86, 1, -7.8 );
setRotateKey( spep_2-3 + 88, 1, -7.5 );
setRotateKey( spep_2-3 + 90, 1, -7.3 );
setRotateKey( spep_2-3 + 92, 1, -7 );
setRotateKey( spep_2-3 + 94, 1, -6.7 );
setRotateKey( spep_2-3 + 96, 1, -6.5 );
setRotateKey( spep_2-3 + 98, 1, -6.2 );
setRotateKey( spep_2-3 + 100, 1, -5.9 );
setRotateKey( spep_2-3 + 102, 1, -5.6 );
setRotateKey( spep_2-3 + 104, 1, -5.4 );
setRotateKey( spep_2-3 + 106, 1, -5.1 );
setRotateKey( spep_2-3 + 108, 1, -4.8 );
setRotateKey( spep_2-3 + 110, 1, -4.5 );
setRotateKey( spep_2-3 + 112, 1, -4.3 );
setRotateKey( spep_2-3 + 114, 1, -4 );
setRotateKey( spep_2-3 + 115, 1, -4 );

setRotateKey( spep_2-3 + 116, 1, -49.4 );
setRotateKey( spep_2-3 + 124, 1, -49.4 );
setRotateKey( spep_2-3 + 126, 1, -50.2 );
setRotateKey( spep_2-3 + 128, 1, -51 );
setRotateKey( spep_2-3 + 130, 1, -51.8 );
setRotateKey( spep_2-3 + 132, 1, -52.5 );
setRotateKey( spep_2-3 + 134, 1, -53.3 );
setRotateKey( spep_2-3 + 136, 1, -54.1 );
setRotateKey( spep_2-3 + 138, 1, -54.9 );
setRotateKey( spep_2-3 + 140, 1, -55.7 );
--setRotateKey( spep_2-1 + 142, 1, -56.5 );

--SE
--連続パンチ
SE010 = playSeVer2( spep_2 + 0, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 4, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 4, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 32, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 32, 1000, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 54, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 54, 1000, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 68, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 68, 1190, "",spep_2 + 114, 0, 24, -1);

--振りかぶる
SE019 = playSeVer2( spep_2 + 86, 1003, "", 0, 0, 0, -1);

--蹴り上げる
SE020 = playSeVer2( spep_2 + 112, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE020, 70 );
SE021 = playSeVer2( spep_2 + 114, 1187, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 142, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3=spep_2+140;
------------------------------------------------------
--敵が空に飛んでいく
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_3 + 0, SP_07, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 28, fly_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fly_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 28, fly_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fly_f, 0 );
setEffRotateKey( spep_3 + 28, fly_f, 0 );
setEffAlphaKey( spep_3 + 0, fly_f, 255 );
setEffAlphaKey( spep_3 + 26, fly_f, 255 );
setEffAlphaKey( spep_3 + 27, fly_f, 255 );
setEffAlphaKey( spep_3 + 28, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_3 + 0, SP_08, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 28, fly_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 28, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fly_b, 0 );
setEffRotateKey( spep_3 + 28, fly_b, 0 );
setEffAlphaKey( spep_3 + 0, fly_b, 255 );
setEffAlphaKey( spep_3 + 26, fly_b, 255 );
setEffAlphaKey( spep_3 + 27, fly_b, 255 );
setEffAlphaKey( spep_3 + 28, fly_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 30, 1, 0 );

changeAnime( spep_3 + 0, 1, 5 );

setMoveKey( spep_3 + 0, 1, -74, -388.2 , 0 );
setMoveKey( spep_3 + 2, 1, -56.6, -271.3 , 0 );
setMoveKey( spep_3 + 4, 1, -40.2, -235.6 , 0 );
setMoveKey( spep_3 + 6, 1, -28.7, -190.5 , 0 );
setMoveKey( spep_3 + 8, 1, -32, -170.3 , 0 );
setMoveKey( spep_3 + 10, 1, -17, -149.7 , 0 );
setMoveKey( spep_3 + 12, 1, -16.3, -123.9 , 0 );
setMoveKey( spep_3 + 14, 1, -17.6, -100.1 , 0 );
setMoveKey( spep_3 + 16, 1, -8.7, -91.9 , 0 );
setMoveKey( spep_3 + 18, 1, -1.3, -69.9 , 0 );
setMoveKey( spep_3 + 20, 1, -7.1, -60.9 , 0 );
setMoveKey( spep_3 + 22, 1, 3.5, -43 , 0 );
setMoveKey( spep_3 + 24, 1, 4.1, -34.5 , 0 );
setMoveKey( spep_3 + 26, 1, 2.2, -18.5 , 0 );
setMoveKey( spep_3 + 28, 1, 8.7, -12 , 0 );
setMoveKey( spep_3 + 30, 1, 13.8, 2.3 , 0 );

setScaleKey( spep_3 + 0, 1, 4.68, 4.68 );
setScaleKey( spep_3 + 2, 1, 3.5, 3.51 );
setScaleKey( spep_3 + 4, 1, 3.04, 3.06 );
setScaleKey( spep_3 + 6, 1, 2.71, 2.73 );
setScaleKey( spep_3 + 8, 1, 2.43, 2.46 );
setScaleKey( spep_3 + 10, 1, 2.2, 2.23 );
setScaleKey( spep_3 + 12, 1, 2, 2.03 );
setScaleKey( spep_3 + 14, 1, 1.82, 1.85 );
setScaleKey( spep_3 + 16, 1, 1.66, 1.69 );
setScaleKey( spep_3 + 18, 1, 1.51, 1.54 );
setScaleKey( spep_3 + 20, 1, 1.38, 1.41 );
setScaleKey( spep_3 + 22, 1, 1.25, 1.28 );
setScaleKey( spep_3 + 24, 1, 1.14, 1.17 );
setScaleKey( spep_3 + 26, 1, 1.03, 1.06 );
setScaleKey( spep_3 + 28, 1, 0.93, 0.96 );
setScaleKey( spep_3 + 30, 1, 0.84, 0.87 );

setRotateKey( spep_3 + 0, 1, 20.3 );
setRotateKey( spep_3 + 2, 1, 20.5 );
setRotateKey( spep_3 + 30, 1, 20.5 );

--SE
--敵飛んでいく
SE022 = playSeVer2( spep_3 + 0, 1183, "",spep_3 + 164, 0, 106, -1);
SE023 = playSeVer2( spep_3 + 0, 1121, "",spep_3 + 194, 0, 140, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 30, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4=spep_3+28;
------------------------------------------------------
--構える（俯瞰）
------------------------------------------------------
-- ** エフェクト等 ** --
hold = entryEffect( spep_4 + 0, SP_09, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, hold, 0, 0, 0 );
setEffMoveKey( spep_4 + 84, hold, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hold, 1.0, 1.0 );
setEffScaleKey( spep_4 + 84, hold, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hold, 0 );
setEffRotateKey( spep_4 + 84, hold, 0 );
setEffAlphaKey( spep_4 + 0, hold, 255 );
setEffAlphaKey( spep_4 + 82, hold, 255 );
setEffAlphaKey( spep_4 + 83, hold, 255 );
setEffAlphaKey( spep_4 + 84, hold, 0 );

-- ** 白フェード ** --
entryFade( spep_4 + 86 -10, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 220 );  --white fade

--顔カットインのタイミング指定
spep_x=spep_4 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 68, 0x102, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 100,  515);
setEffMoveKey(  spep_x +80,  ctgogo,  100,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 74, ctgogo, 255 );
setEffAlphaKey( spep_x + 76, ctgogo, 191 );
setEffAlphaKey( spep_x + 78, ctgogo, 112 );
setEffAlphaKey( spep_x + 80, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +80,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +76,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo, 1.07, 1.07);

--SE
--気だめ
SE024 = playSeVer2( spep_4 + 0, 1356, "",spep_4 + 306, 44, 10, -1);
setSeVolumeByWorkId( spep_4 + 0, SE024, 136 );
setPitch( spep_4 + 0, SE024, -300 );
setTimeStretch( SE024, 0.8, 30, 4 );

--顔カットイン
SE025 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気だめ
SE026 = playSeVer2( spep_4 + 4, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 4, SE026, 129 );
setPitch( spep_4 + 4, SE026, -400 );
setTimeStretch( SE026, 0.73, 30, 4 );
SE027 = playSeVer2( spep_4 + 10, 1295, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 10, SE027, 117 );
setPitch( spep_4 + 10, SE027, 200 );
setTimeStretch( SE027, 1.13, 30, 4 );

--画面遷移
SE028 = playSeVer2( spep_4 + 54, 1072, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5=spep_4+84;
------------------------------------------------------
--手に気功が溜まる
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_5 + 0, SP_10, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_5 + 76, tame, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tame, 0 );
setEffRotateKey( spep_5 + 76, tame, 0 );
setEffAlphaKey( spep_5 + 0, tame, 255 );
setEffAlphaKey( spep_5 + 74, tame, 255 );
setEffAlphaKey( spep_5 + 75, tame, 255 );
setEffAlphaKey( spep_5 + 76, tame, 0 );

--SE
--イナヅマ
SE029 = playSeVer2( spep_5 + 20, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 20, SE029, 81 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6=spep_5+76;
------------------------------------------------------
--気功砲を打つ前の構え
------------------------------------------------------
-- ** エフェクト等 ** --
strike = entryEffect( spep_6 + 0, SP_11, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, strike, 0, 0, 0 );
setEffMoveKey( spep_6 + 76, strike, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, strike, 1.0, 1.0 );
setEffScaleKey( spep_6 + 76, strike, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, strike, 0 );
setEffRotateKey( spep_6 + 76, strike, 0 );
setEffAlphaKey( spep_6 + 0, strike, 255 );
setEffAlphaKey( spep_6 + 74, strike, 255 );
setEffAlphaKey( spep_6 + 75, strike, 255 );
setEffAlphaKey( spep_6 + 76, strike, 0 );

--SE
--敵飛んでいく
SE030 = playSeVer2( spep_6 + 0, 1121, "",spep_6 + 152, 96, 10, -1);
setStartTimeMs( SE030,  567 );

--手を天に向ける
SE031 = playSeVer2( spep_6 + 42, 1116, "",spep_6 + 98, 0, 16, -1);
SE032 = playSeVer2( spep_6 + 66, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 66, SE032, 82 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_7=spep_6+76;
------------------------------------------------------
--手を空に構える
------------------------------------------------------
-- ** エフェクト等 ** --
sky_f = entryEffect( spep_7 + 0, SP_12, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, sky_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 50, sky_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, sky_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 50, sky_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, sky_f, 0 );
setEffRotateKey( spep_7 + 50, sky_f, 0 );
setEffAlphaKey( spep_7 + 0, sky_f, 255 );
setEffAlphaKey( spep_7 + 50, sky_f, 255 );

-- ** エフェクト等 ** --
sky_b = entryEffect( spep_7 + 0, SP_13, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, sky_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 50, sky_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, sky_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 50, sky_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, sky_b, 0 );
setEffRotateKey( spep_7 + 50, sky_b, 0 );
setEffAlphaKey( spep_7 + 0, sky_b, 255 );
setEffAlphaKey( spep_7 + 50, sky_b, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 48, 1, 0 );

changeAnime( spep_7 + 0, 1, 5 );

setMoveKey( spep_7 + 0, 1, -94.1, 96.9 , 0 );
setMoveKey( spep_7 + 2, 1, -94.5, 97.3 , 0 );
setMoveKey( spep_7 + 4, 1, -94.9, 97.7 , 0 );
setMoveKey( spep_7 + 6, 1, -95.2, 98.1 , 0 );
setMoveKey( spep_7 + 8, 1, -95.6, 98.5 , 0 );
setMoveKey( spep_7 + 10, 1, -96, 98.9 , 0 );
setMoveKey( spep_7 + 12, 1, -96.4, 99.3 , 0 );
setMoveKey( spep_7 + 14, 1, -96.8, 99.7 , 0 );
setMoveKey( spep_7 + 16, 1, -97.1, 100 , 0 );
setMoveKey( spep_7 + 18, 1, -97.5, 100.4 , 0 );
setMoveKey( spep_7 + 20, 1, -97.9, 100.8 , 0 );
setMoveKey( spep_7 + 22, 1, -98.3, 101.2 , 0 );
setMoveKey( spep_7 + 24, 1, -98.6, 101.6 , 0 );
setMoveKey( spep_7 + 26, 1, -99, 102 , 0 );
setMoveKey( spep_7 + 28, 1, -99.4, 102.4 , 0 );
setMoveKey( spep_7 + 30, 1, -99.8, 102.8 , 0 );
setMoveKey( spep_7 + 32, 1, -100.2, 103.1 , 0 );
setMoveKey( spep_7 + 34, 1, -100.5, 103.5 , 0 );
setMoveKey( spep_7 + 36, 1, -100.9, 103.9 , 0 );
setMoveKey( spep_7 + 38, 1, -101.3, 104.3 , 0 );
setMoveKey( spep_7 + 40, 1, -101.7, 104.7 , 0 );
setMoveKey( spep_7 + 42, 1, -102.1, 105.1 , 0 );
setMoveKey( spep_7 + 44, 1, -102.4, 105.5 , 0 );
setMoveKey( spep_7 + 46, 1, -102.8, 105.9 , 0 );
setMoveKey( spep_7 + 48, 1, -103.2, 106.2 , 0 );

setScaleKey( spep_7 + 0, 1, 0.41, 0.41 );
setScaleKey( spep_7 + 2, 1, 0.4, 0.4 );
setScaleKey( spep_7 + 4, 1, 0.39, 0.39 );
setScaleKey( spep_7 + 6, 1, 0.38, 0.38 );
setScaleKey( spep_7 + 8, 1, 0.36, 0.36 );
setScaleKey( spep_7 + 10, 1, 0.35, 0.35 );
setScaleKey( spep_7 + 12, 1, 0.34, 0.34 );
setScaleKey( spep_7 + 14, 1, 0.33, 0.33 );
setScaleKey( spep_7 + 16, 1, 0.32, 0.32 );
setScaleKey( spep_7 + 18, 1, 0.31, 0.31 );
setScaleKey( spep_7 + 20, 1, 0.3, 0.3 );
setScaleKey( spep_7 + 22, 1, 0.28, 0.28 );
setScaleKey( spep_7 + 24, 1, 0.27, 0.27 );
setScaleKey( spep_7 + 26, 1, 0.26, 0.26 );
setScaleKey( spep_7 + 28, 1, 0.25, 0.25 );
setScaleKey( spep_7 + 30, 1, 0.24, 0.24 );
setScaleKey( spep_7 + 32, 1, 0.23, 0.23 );
setScaleKey( spep_7 + 34, 1, 0.22, 0.22 );
setScaleKey( spep_7 + 36, 1, 0.21, 0.21 );
setScaleKey( spep_7 + 38, 1, 0.19, 0.19 );
setScaleKey( spep_7 + 40, 1, 0.18, 0.18 );
setScaleKey( spep_7 + 42, 1, 0.17, 0.17 );
setScaleKey( spep_7 + 44, 1, 0.16, 0.16 );
setScaleKey( spep_7 + 46, 1, 0.15, 0.15 );
setScaleKey( spep_7 + 48, 1, 0.14, 0.14 );

setRotateKey( spep_7 + 0, 1, 17.6 );
setRotateKey( spep_7 + 2, 1, 17.1 );
setRotateKey( spep_7 + 4, 1, 16.4 );
setRotateKey( spep_7 + 6, 1, 15.8 );
setRotateKey( spep_7 + 8, 1, 15.1 );
setRotateKey( spep_7 + 10, 1, 14.5 );
setRotateKey( spep_7 + 12, 1, 13.8 );
setRotateKey( spep_7 + 14, 1, 13.2 );
setRotateKey( spep_7 + 16, 1, 12.5 );
setRotateKey( spep_7 + 18, 1, 11.8 );
setRotateKey( spep_7 + 20, 1, 11.2 );
setRotateKey( spep_7 + 22, 1, 10.5 );
setRotateKey( spep_7 + 24, 1, 9.9 );
setRotateKey( spep_7 + 26, 1, 9.2 );
setRotateKey( spep_7 + 28, 1, 8.6 );
setRotateKey( spep_7 + 30, 1, 7.9 );
setRotateKey( spep_7 + 32, 1, 7.2 );
setRotateKey( spep_7 + 34, 1, 6.6 );
setRotateKey( spep_7 + 36, 1, 5.9 );
setRotateKey( spep_7 + 38, 1, 5.3 );
setRotateKey( spep_7 + 40, 1, 4.6 );
setRotateKey( spep_7 + 42, 1, 4 );
setRotateKey( spep_7 + 44, 1, 3.3 );
setRotateKey( spep_7 + 46, 1, 2.7 );
setRotateKey( spep_7 + 48, 1, 2 );

--SE
SE033 = playSeVer2( spep_7 + 0, 1233, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_7 + 10, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 10, SE034, 73 );

--白フェード
entryFade( spep_7 +42 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_8=spep_7+50;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
--[[
-- ** カードカットイン ** --
speff2 = entryEffect( spep_8 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_8 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_8 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_8 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_8 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_8 + 0, shuchusen, 0 );
setEffRotateKey( spep_8 + 86, shuchusen, 0 );

setEffAlphaKey( spep_8 + 0, shuchusen, 255 );
setEffAlphaKey( spep_8 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_8 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_8 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9= spep_8 + 94;
]]

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_8, SE_05);
    speff = entryEffect( spep_8, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_8, SE_05);
    speff = entryEffect( spep_8, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_8, SE_05);
    speff = entryEffect( spep_8, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_8 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_8 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_8 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_8 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_8 + 0, shuchusen, 0 );
setEffRotateKey( spep_8 + 90, shuchusen, 0 );
setEffAlphaKey( spep_8 + 0, shuchusen, 255 );
setEffAlphaKey( spep_8 + 90, shuchusen, 255 );
 
-- ** 音 ** --
-- playSe( spep_c + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_8 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_9 = spep_8 + 94;



------------------------------------------------------
--気功砲を放つ
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_9 + 0, SP_14, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_9 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_9 + 56, beam, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, beam, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, beam, 0 );
setEffRotateKey( spep_9 + 56, beam, 0 );
setEffAlphaKey( spep_9 + 0, beam, 255 );
setEffAlphaKey( spep_9 + 54, beam, 255 );
setEffAlphaKey( spep_9 + 55, beam, 255 );
setEffAlphaKey( spep_9 + 56, beam, 0 );

--SE
--気功砲発射
SE036 = playSeVer2( spep_9 + 14, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 14, SE036, 74 );
SE037 = playSeVer2( spep_9 + 14, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 14, SE037, 84 );
SE038 = playSeVer2( spep_9 + 14, 1173, "",spep_9 + 88, 0, 40, -1);
setSeVolumeByWorkId( spep_9 + 14, SE038, 176 );
SE039 = playSeVer2( spep_9 + 14, 1193, "",spep_9 + 264, 0, 76, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_9 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_10=spep_9+56;
------------------------------------------------------
--気功砲から地面から画面に飛んでくる（俯瞰）
------------------------------------------------------
-- ** エフェクト等 ** --
beam2 = entryEffect( spep_10 + 0, SP_15, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_10 + 0, beam2, 0, 0, 0 );
setEffMoveKey( spep_10 + 56, beam2, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, beam2, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, beam2, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, beam2, 0 );
setEffRotateKey( spep_10 + 56, beam2, 0 );
setEffAlphaKey( spep_10 + 0, beam2, 255 );
setEffAlphaKey( spep_10 + 54, beam2, 255 );
setEffAlphaKey( spep_10 + 55, beam2, 255 );
setEffAlphaKey( spep_10 + 56, beam2, 0 );

--SE
--気弾向かっていく
SE040 = playSeVer2( spep_10 + 18, 1021, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_10 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_11=spep_10+56;
------------------------------------------------------
--敵に気功砲が当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_11 + 0, SP_16, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_11 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_11 + 76, hit_f, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 76, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, hit_f, 0 );
setEffRotateKey( spep_11 + 76, hit_f, 0 );
setEffAlphaKey( spep_11 + 0, hit_f, 255 );
setEffAlphaKey( spep_11 + 74, hit_f, 255 );
setEffAlphaKey( spep_11 + 75, hit_f, 255 );
setEffAlphaKey( spep_11 + 76, hit_f, 0 );

-- ** エフェクト等 ** --
hit_f = entryEffect( spep_11 + 0, SP_17, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_11 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_11 + 76, hit_f, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 76, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, hit_f, 0 );
setEffRotateKey( spep_11 + 76, hit_f, 0 );
setEffAlphaKey( spep_11 + 0, hit_f, 255 );
setEffAlphaKey( spep_11 + 74, hit_f, 255 );
setEffAlphaKey( spep_11 + 75, hit_f, 255 );
setEffAlphaKey( spep_11 + 76, hit_f, 0 );

--敵の動き
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 + 8, 1, 0 );

changeAnime( spep_11 + 0, 1, 108 );

setMoveKey( spep_11 + 0, 1, -0.7, 25.1 , 0 );
setMoveKey( spep_11 + 2, 1, 7.1, 33.2 , 0 );
setMoveKey( spep_11 + 4, 1, 14.9, 41.3 , 0 );
setMoveKey( spep_11 + 6, 1, 22.7, 49.3 , 0 );
setMoveKey( spep_11 + 8, 1, 30.5, 57.4 , 0 );

setScaleKey( spep_11 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_11 + 8, 1, 0.35, 0.35 );

setRotateKey( spep_11 + 0, 1, 0 );
setRotateKey( spep_11 + 8, 1, 0 );

--SE
--気弾突き抜けていく
SE041 = playSeVer2( spep_11 + 6, 1022, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 6, SE041, 87 );
SE042 = playSeVer2( spep_11 + 6, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 6, SE042, 70 );
SE043 = playSeVer2( spep_11 + 6, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_11 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_12=spep_11+76;
------------------------------------------------------
--敵が光に飲まれる
------------------------------------------------------
-- ** エフェクト等 ** --
swallowed_f = entryEffect( spep_12 + 0, SP_18, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_12 + 0, swallowed_f, 0, 0, 0 );
setEffMoveKey( spep_12 + 52, swallowed_f, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, swallowed_f, 1.0, 1.0 );
setEffScaleKey( spep_12 + 52, swallowed_f, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, swallowed_f, 0 );
setEffRotateKey( spep_12 + 52, swallowed_f, 0 );
setEffAlphaKey( spep_12 + 0, swallowed_f, 255 );
setEffAlphaKey( spep_12 + 50, swallowed_f, 255 );
setEffAlphaKey( spep_12 + 51, swallowed_f, 255 );
setEffAlphaKey( spep_12 + 52, swallowed_f, 0 );

-- ** エフェクト等 ** --
swallowed_f = entryEffect( spep_12 + 0, SP_19, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_12 + 0, swallowed_f, 0, 0, 0 );
setEffMoveKey( spep_12 + 52, swallowed_f, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, swallowed_f, 1.0, 1.0 );
setEffScaleKey( spep_12 + 52, swallowed_f, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, swallowed_f, 0 );
setEffRotateKey( spep_12 + 52, swallowed_f, 0 );
setEffAlphaKey( spep_12 + 0, swallowed_f, 255 );
setEffAlphaKey( spep_12 + 50, swallowed_f, 255 );
setEffAlphaKey( spep_12 + 51, swallowed_f, 255 );
setEffAlphaKey( spep_12 + 52, swallowed_f, 0 );

--敵の動き
setDisp( spep_12 + 0, 1, 1 );
setDisp( spep_12 + 54, 1, 0 );

changeAnime( spep_12 + 0, 1, 106 );

setMoveKey( spep_12 + 0, 1, 18.1, 101.1 , 0 );
setMoveKey( spep_12 + 2, 1, 17.7, 97.7 , 0 );
setMoveKey( spep_12 + 4, 1, 18.2, 100.2 , 0 );
setMoveKey( spep_12 + 6, 1, 17.7, 97.4 , 0 );
setMoveKey( spep_12 + 8, 1, 18.2, 100.2 , 0 );
setMoveKey( spep_12 + 10, 1, 17.7, 97 , 0 );
setMoveKey( spep_12 + 12, 1, 18.2, 101.2 , 0 );
setMoveKey( spep_12 + 14, 1, 17.7, 96.6 , 0 );
setMoveKey( spep_12 + 16, 1, 18.2, 102.1 , 0 );
setMoveKey( spep_12 + 18, 1, 17.7, 96.1 , 0 );
setMoveKey( spep_12 + 20, 1, 18.2, 102.7 , 0 );
setMoveKey( spep_12 + 22, 1, 17.7, 96 , 0 );
setMoveKey( spep_12 + 24, 1, 18.2, 102.4 , 0 );
setMoveKey( spep_12 + 26, 1, 17.7, 94.1 , 0 );
setMoveKey( spep_12 + 28, 1, 18.2, 102.5 , 0 );
setMoveKey( spep_12 + 30, 1, 17.7, 94.4 , 0 );
setMoveKey( spep_12 + 32, 1, 18.2, 102.4 , 0 );
setMoveKey( spep_12 + 34, 1, 17.7, 94.1 , 0 );
setMoveKey( spep_12 + 36, 1, 18.2, 102.5 , 0 );
setMoveKey( spep_12 + 38, 1, 17.7, 94.4 , 0 );
setMoveKey( spep_12 + 40, 1, 18.2, 102.4 , 0 );
setMoveKey( spep_12 + 42, 1, 17.7, 94.1 , 0 );
setMoveKey( spep_12 + 44, 1, 18.2, 102.5 , 0 );
setMoveKey( spep_12 + 46, 1, 17.7, 94.4 , 0 );
setMoveKey( spep_12 + 48, 1, 18.2, 102.4 , 0 );
setMoveKey( spep_12 + 50, 1, 17.7, 94.1 , 0 );
setMoveKey( spep_12 + 52, 1, 18.2, 102.5 , 0 );
setMoveKey( spep_12 + 54, 1, 17.7, 94.4 , 0 );

setScaleKey( spep_12 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_12 + 54, 1, 1.5, 1.5 );

setRotateKey( spep_12 + 0, 1, -31 );
setRotateKey( spep_12 + 54, 1, -31 );

--SE
--爆発
SE044 = playSeVer2( spep_12 + 6, 1215, "",spep_12 + 126, 50, 48, -1);
setStartTimeMs( SE044,  1000 );

-- ** くろ背景 ** --
entryFadeBg( spep_12 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_13=spep_12+52;
------------------------------------------------------
--煙が流れる
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_13 + 0, SP_20, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_13 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_13 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_13 + 120, finish, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, finish, 0 );
setEffRotateKey( spep_13 + 120, finish, 0 );
setEffAlphaKey( spep_13 + 0, finish, 255 );
setEffAlphaKey( spep_13 + 120, finish, 255 );

--SE
--爆発
SE045 = playSeVer2( spep_13 + 0, 1168, "", 0, 26, 0, -1);
setStartTimeMs( SE045,  1367 );
SE046 = playSeVer2( spep_13 + 0 -4, 1188, "", 0, 52, 0, -1);
setSeVolumeByWorkId( spep_13 + 0 -4, SE046, 77 );
SE047 = playSeVer2( spep_13 + 8, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 8, SE047, 65 );

--終わり
dealDamage(spep_13 +10);
endPhase( spep_13 + 110 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--敵に向かって奥に走り込む
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
running_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, running_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 46, running_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, running_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 46, running_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, running_f, 0 );
setEffRotateKey( spep_0 + 46, running_f, 0 );
setEffAlphaKey( spep_0 + 0, running_f, 255 );
setEffAlphaKey( spep_0 + 44, running_f, 255 );
setEffAlphaKey( spep_0 + 45, running_f, 255 );
setEffAlphaKey( spep_0 + 46, running_f, 0 );

-- ** エフェクト等 ** --
running_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, running_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 46, running_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, running_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 46, running_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, running_b, 0 );
setEffRotateKey( spep_0 + 46, running_b, 0 );
setEffAlphaKey( spep_0 + 0, running_b, 255 );
setEffAlphaKey( spep_0 + 44, running_b, 255 );
setEffAlphaKey( spep_0 + 45, running_b, 255 );
setEffAlphaKey( spep_0 + 46, running_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 93.2, -27.4 , 0 );
setMoveKey( spep_0 + 1, 1, 93.2, -27.4 , 0 );
setMoveKey( spep_0 + 2, 1, 93.2, -27.4 , 0 );
setMoveKey( spep_0 + 3, 1, 93.2, -27.4 , 0 );
setMoveKey( spep_0 + 4, 1, 93.2, -27.4 , 0 );
setMoveKey( spep_0 + 5, 1, 93.2, -27.4 , 0 );
setMoveKey( spep_0 + 6, 1, 93.2, -27.4 , 0 );
setMoveKey( spep_0 + 12, 1, 93.2, -27.4 , 0 );
setMoveKey( spep_0 + 14, 1, 92.6, -28.6 , 0 );
setMoveKey( spep_0 + 16, 1, 92.4, -26.5 , 0 );
setMoveKey( spep_0 + 18, 1, 92.8, -26.4 , 0 );
setMoveKey( spep_0 + 24, 1, 92.8, -26.4 , 0 );
setMoveKey( spep_0 + 26, 1, 92.6, -28.6 , 0 );
setMoveKey( spep_0 + 28, 1, 92.4, -26.5 , 0 );
setMoveKey( spep_0 + 30, 1, 92.8, -26.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 1, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 2, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 3, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 4, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 5, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 6, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 30, 1, 0.86, 0.86 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 30, 1, 0 );


--SE
--天津飯向かっていく
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 68 );
SE002 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--走る音
SE003 = playSeVer2( spep_0 + 6, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 158 );

--天津飯向かっていく
SE004 = playSeVer2( spep_0 + 8, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE004, 41 );

--走る音
SE005 = playSeVer2( spep_0 + 16, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE005, 158 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, 92.8, -26.4 , 0 );
    setScaleKey( SP_dodge + 9, 1, 0.86, 0.86 );
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
setMoveKey( spep_0 + 36, 1, 92.8, -26.4 , 0 );
setMoveKey( spep_0 + 38, 1, 92.6, -28.6 , 0 );
setMoveKey( spep_0 + 40, 1, 92.4, -26.5 , 0 );
setMoveKey( spep_0 + 42, 1, 92.8, -26.4 , 0 );
setMoveKey( spep_0-1 + 46, 1, 92.8, -26.4 , 0 );

setScaleKey( spep_0-1 + 46, 1, 0.86, 0.86 );

setRotateKey( spep_0-1 + 46, 1, 0 );

--SE
--走る音
SE006 = playSeVer2( spep_0 + 24, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE006, 158 );
SE007 = playSeVer2( spep_0 + 34, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE007, 158 );
SE008 = playSeVer2( spep_0 + 42, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE008, 158 );

--次の準備
spep_1=spep_0+46;
------------------------------------------------------
--敵が映る
------------------------------------------------------
-- ** エフェクト等 ** --
reflected_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, reflected_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 24, reflected_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, reflected_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 24, reflected_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, reflected_f, 0 );
setEffRotateKey( spep_1 + 24, reflected_f, 0 );
setEffAlphaKey( spep_1 + 0, reflected_f, 255 );
setEffAlphaKey( spep_1 + 22, reflected_f, 255 );
setEffAlphaKey( spep_1 + 23, reflected_f, 255 );
setEffAlphaKey( spep_1 + 24, reflected_f, 0 );

-- ** エフェクト等 ** --
reflected_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, reflected_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 24, reflected_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, reflected_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 24, reflected_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, reflected_b, 0 );
setEffRotateKey( spep_1 + 24, reflected_b, 0 );
setEffAlphaKey( spep_1 + 0, reflected_b, 255 );
setEffAlphaKey( spep_1 + 22, reflected_b, 255 );
setEffAlphaKey( spep_1 + 23, reflected_b, 255 );
setEffAlphaKey( spep_1 + 24, reflected_b, 0 );

--敵の動き
setDisp( spep_1 + 26, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );

setMoveKey( spep_1 + 0, 1, 52.5, -42.1 , 0 );
setMoveKey( spep_1 + 2, 1, 53.6, -42.1 , 0 );
setMoveKey( spep_1 + 4, 1, 54.5, -42.1 , 0 );
setMoveKey( spep_1 + 6, 1, 55.2, -42.1 , 0 );
setMoveKey( spep_1 + 8, 1, 55.8, -42.1 , 0 );
setMoveKey( spep_1 + 10, 1, 56.4, -42.1 , 0 );
setMoveKey( spep_1 + 12, 1, 56.8, -42.1 , 0 );
setMoveKey( spep_1 + 14, 1, 57.2, -42.1 , 0 );
setMoveKey( spep_1 + 16, 1, 57.6, -42.1 , 0 );
setMoveKey( spep_1 + 18, 1, 57.9, -42.1 , 0 );
setMoveKey( spep_1 + 20, 1, 58.2, -42.1 , 0 );
setMoveKey( spep_1 + 22, 1, 58.5, -42.1 , 0 );
setMoveKey( spep_1 + 24, 1, 58.7, -42.1 , 0 );
setMoveKey( spep_1 + 26, 1, 58.8, -42.1 , 0 );
--setMoveKey( spep_1 + 28, 1, 59, -42.1 , 0 );

setScaleKey( spep_1 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 26, 1, 1.8, 1.8 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 26, 1, 0 );

--SE
--走る音
SE009 = playSeVer2( spep_1 + 8, 1107, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 26, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_2=spep_1+24;
------------------------------------------------------
--白フラッシュ→連続パンチ→蹴り上げ
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_2 + 0, SP_05x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 140, rush_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 140, rush_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_f, 0 );
setEffRotateKey( spep_2 + 140, rush_f, 0 );
setEffAlphaKey( spep_2 + 0, rush_f, 255 );
setEffAlphaKey( spep_2 + 138, rush_f, 255 );
setEffAlphaKey( spep_2 + 139, rush_f, 255 );
setEffAlphaKey( spep_2 + 140, rush_f, 0 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_2 + 0, SP_06x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 140, rush_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 140, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_b, 0 );
setEffRotateKey( spep_2 + 140, rush_b, 0 );
setEffAlphaKey( spep_2 + 0, rush_b, 255 );
setEffAlphaKey( spep_2 + 138, rush_b, 255 );
setEffAlphaKey( spep_2 + 139, rush_b, 255 );
setEffAlphaKey( spep_2 + 140, rush_b, 0 );

--敵の動き
setDisp( spep_2-3 + 6, 1, 1 );
setDisp( spep_2-3 + 140, 1, 0 );

changeAnime( spep_2-3 + 6, 1, 106 );
changeAnime( spep_2-3 + 34, 1, 108 );
changeAnime( spep_2-3 + 54, 1, 106 );
changeAnime( spep_2-3 + 70, 1, 108 );
changeAnime( spep_2-3 + 116, 1, 107 );

setMoveKey( spep_2-3 + 6, 1, 0.7, -35.1 , 0 );
setMoveKey( spep_2-3 + 8, 1, 4.2, -17.5 , 0 );
setMoveKey( spep_2-3 + 10, 1, 6.9, -46.4 , 0 );
setMoveKey( spep_2-3 + 12, 1, 22.2, -35.5 , 0 );
setMoveKey( spep_2-3 + 14, 1, 11.1, -45.7 , 0 );
setMoveKey( spep_2-3 + 16, 1, 12.8, -20.4 , 0 );
setMoveKey( spep_2-3 + 18, 1, 14.8, -45 , 0 );
setMoveKey( spep_2-3 + 20, 1, 30.4, -35.5 , 0 );
setMoveKey( spep_2-3 + 22, 1, 17.1, -35 , 0 );
setMoveKey( spep_2-3 + 24, 1, 18.3, -35 , 0 );
setMoveKey( spep_2-3 + 26, 1, 19.5, -35 , 0 );
setMoveKey( spep_2-3 + 28, 1, 20.5, -35 , 0 );
setMoveKey( spep_2-3 + 30, 1, 21.5, -35 , 0 );
setMoveKey( spep_2-3 + 32, 1, 22.4, -35 , 0 );
setMoveKey( spep_2-3 + 33, 1, 22.4, -35 , 0 );

setMoveKey( spep_2-3 + 34, 1, 55.2, 1.1 , 0 );
setMoveKey( spep_2-3 + 36, 1, 62.1, -10.2 , 0 );
setMoveKey( spep_2-3 + 38, 1, 79.9, 0.6 , 0 );
setMoveKey( spep_2-3 + 40, 1, 70.4, -9.6 , 0 );
setMoveKey( spep_2-3 + 42, 1, 73.4, 15.8 , 0 );
setMoveKey( spep_2-3 + 44, 1, 76.4, -8.8 , 0 );
setMoveKey( spep_2-3 + 46, 1, 92.7, 0.6 , 0 );
setMoveKey( spep_2-3 + 48, 1, 80, 1.1 , 0 );
setMoveKey( spep_2-3 + 50, 1, 81.7, 1.1 , 0 );
setMoveKey( spep_2-3 + 52, 1, 83, 1.1 , 0 );
setMoveKey( spep_2-3 + 53, 1, 83, 1.1 , 0 );

setMoveKey( spep_2-3 + 54, 1, 41.3, -35.6 , 0 );
setMoveKey( spep_2-3 + 56, 1, 49.5, -18.1 , 0 );
setMoveKey( spep_2-3 + 58, 1, 54.9, -46.9 , 0 );
setMoveKey( spep_2-3 + 60, 1, 72.4, -36.1 , 0 );
setMoveKey( spep_2-3 + 62, 1, 62.9, -46.3 , 0 );
setMoveKey( spep_2-3 + 64, 1, 66, -20.9 , 0 );
setMoveKey( spep_2-3 + 66, 1, 69.1, -45.5 , 0 );
setMoveKey( spep_2-3 + 68, 1, 71, -35.6 , 0 );

setMoveKey( spep_2-3 + 70, 1, 57.8, 46.9 , 0 );
setMoveKey( spep_2-3 + 72, 1, 63.6, 75.6 , 0 );
setMoveKey( spep_2-3 + 74, 1, 68.8, 56.6 , 0 );
setMoveKey( spep_2-3 + 76, 1, 86.5, 76.2 , 0 );
setMoveKey( spep_2-3 + 78, 1, 77.5, 74 , 0 );
setMoveKey( spep_2-3 + 80, 1, 81.3, 106.7 , 0 );
setMoveKey( spep_2-3 + 82, 1, 66.9, 98.4 , 0 );
setMoveKey( spep_2-3 + 84, 1, 70.2, 104.7 , 0 );
setMoveKey( spep_2-3 + 86, 1, 73.3, 110.7 , 0 );
setMoveKey( spep_2-3 + 88, 1, 76.1, 116.3 , 0 );
setMoveKey( spep_2-3 + 90, 1, 78.9, 121.6 , 0 );
setMoveKey( spep_2-3 + 92, 1, 81.4, 126.7 , 0 );
setMoveKey( spep_2-3 + 94, 1, 83.8, 131.5 , 0 );
setMoveKey( spep_2-3 + 96, 1, 86.1, 136 , 0 );
setMoveKey( spep_2-3 + 98, 1, 88.3, 140.3 , 0 );
setMoveKey( spep_2-3 + 100, 1, 90.4, 144.5 , 0 );
setMoveKey( spep_2-3 + 102, 1, 92.3, 148.4 , 0 );
setMoveKey( spep_2-3 + 104, 1, 94.2, 152.1 , 0 );
setMoveKey( spep_2-3 + 106, 1, 96, 155.7 , 0 );
setMoveKey( spep_2-3 + 108, 1, 97.7, 159.1 , 0 );
setMoveKey( spep_2-3 + 110, 1, 99.2, 162.3 , 0 );
setMoveKey( spep_2-3 + 112, 1, 100.7, 165.3 , 0 );
setMoveKey( spep_2-3 + 114, 1, 102, 168.1 , 0 );
setMoveKey( spep_2-3 + 115, 1, 102, 168.1 , 0 );

setMoveKey( spep_2-3 + 116, 1, 11, 315.6 , 0 );
setMoveKey( spep_2-3 + 118, 1, 61.6, 322.7 , 0 );
setMoveKey( spep_2-3 + 120, 1, 97.3, 393.8 , 0 );
setMoveKey( spep_2-3 + 122, 1, 92.5, 383.9 , 0 );
setMoveKey( spep_2-3 + 124, 1, 113.5, 388.9 , 0 );
setMoveKey( spep_2-3 + 126, 1, 179.7, 521.1 , 0 );
setMoveKey( spep_2-3 + 128, 1, 231.3, 612.5 , 0 );
setMoveKey( spep_2-3 + 130, 1, 308.5, 718.9 , 0 );
setMoveKey( spep_2-3 + 132, 1, 374.4, 850.9 , 0 );
setMoveKey( spep_2-3 + 134, 1, 425.6, 942.2 , 0 );
setMoveKey( spep_2-3 + 136, 1, 502.5, 1048.5 , 0 );
setMoveKey( spep_2-3 + 138, 1, 568, 1180.4 , 0 );
setMoveKey( spep_2-3 + 140, 1, 632.3, 1290.2 , 0 );
--setMoveKey( spep_2-1 + 142, 1, 683.1, 1381.3 , 0 );

setScaleKey( spep_2-3 + 6, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 33, 1, 1.67, 1.67 );

setScaleKey( spep_2-3 + 34, 1, 1.86, 1.86 );
setScaleKey( spep_2-3 + 53, 1, 1.86, 1.86 );

setScaleKey( spep_2-3 + 54, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 69, 1, 1.67, 1.67 );

setScaleKey( spep_2-3 + 70, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 115, 1, 1.8, 1.8 );

setScaleKey( spep_2-3 + 116, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 118, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 120, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 124, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 126, 1, 0.99, 0.99 );
setScaleKey( spep_2-3 + 128, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 130, 1, 1.24, 1.24 );
setScaleKey( spep_2-3 + 132, 1, 1.36, 1.36 );
setScaleKey( spep_2-3 + 134, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 136, 1, 1.61, 1.61 );
setScaleKey( spep_2-3 + 138, 1, 1.74, 1.74 );
setScaleKey( spep_2-3 + 140, 1, 1.86, 1.86 );
--setScaleKey( spep_2-1 + 142, 1, 1.99, 1.99 );

setRotateKey( spep_2-3 + 6, 1, -45.2 );
setRotateKey( spep_2-3 + 8, 1, -44.5 );
setRotateKey( spep_2-3 + 10, 1, -43.7 );
setRotateKey( spep_2-3 + 12, 1, -42.9 );
setRotateKey( spep_2-3 + 14, 1, -42.1 );
setRotateKey( spep_2-3 + 16, 1, -41.3 );
setRotateKey( spep_2-3 + 18, 1, -40.5 );
setRotateKey( spep_2-3 + 20, 1, -39.7 );
setRotateKey( spep_2-3 + 22, 1, -38.9 );
setRotateKey( spep_2-3 + 24, 1, -38.2 );
setRotateKey( spep_2-3 + 26, 1, -37.4 );
setRotateKey( spep_2-3 + 28, 1, -36.6 );
setRotateKey( spep_2-3 + 30, 1, -35.8 );
setRotateKey( spep_2-3 + 32, 1, -35 );
setRotateKey( spep_2-3 + 33, 1, -35 );

setRotateKey( spep_2-3 + 34, 1, 0 );
setRotateKey( spep_2-3 + 53, 1, 0 );

setRotateKey( spep_2-3 + 54, 1, -45.2 );
setRotateKey( spep_2-3 + 56, 1, -43.9 );
setRotateKey( spep_2-3 + 58, 1, -42.6 );
setRotateKey( spep_2-3 + 60, 1, -41.3 );
setRotateKey( spep_2-3 + 62, 1, -40 );
setRotateKey( spep_2-3 + 64, 1, -38.6 );
setRotateKey( spep_2-3 + 66, 1, -37.3 );
setRotateKey( spep_2-3 + 68, 1, -36 );
setRotateKey( spep_2-3 + 69, 1, -36 );

setRotateKey( spep_2-3 + 70, 1, -10 );
setRotateKey( spep_2-3 + 72, 1, -9.7 );
setRotateKey( spep_2-3 + 74, 1, -9.5 );
setRotateKey( spep_2-3 + 76, 1, -9.2 );
setRotateKey( spep_2-3 + 78, 1, -8.9 );
setRotateKey( spep_2-3 + 80, 1, -8.6 );
setRotateKey( spep_2-3 + 82, 1, -8.4 );
setRotateKey( spep_2-3 + 84, 1, -8.1 );
setRotateKey( spep_2-3 + 86, 1, -7.8 );
setRotateKey( spep_2-3 + 88, 1, -7.5 );
setRotateKey( spep_2-3 + 90, 1, -7.3 );
setRotateKey( spep_2-3 + 92, 1, -7 );
setRotateKey( spep_2-3 + 94, 1, -6.7 );
setRotateKey( spep_2-3 + 96, 1, -6.5 );
setRotateKey( spep_2-3 + 98, 1, -6.2 );
setRotateKey( spep_2-3 + 100, 1, -5.9 );
setRotateKey( spep_2-3 + 102, 1, -5.6 );
setRotateKey( spep_2-3 + 104, 1, -5.4 );
setRotateKey( spep_2-3 + 106, 1, -5.1 );
setRotateKey( spep_2-3 + 108, 1, -4.8 );
setRotateKey( spep_2-3 + 110, 1, -4.5 );
setRotateKey( spep_2-3 + 112, 1, -4.3 );
setRotateKey( spep_2-3 + 114, 1, -4 );
setRotateKey( spep_2-3 + 115, 1, -4 );

setRotateKey( spep_2-3 + 116, 1, -49.4 );
setRotateKey( spep_2-3 + 124, 1, -49.4 );
setRotateKey( spep_2-3 + 126, 1, -50.2 );
setRotateKey( spep_2-3 + 128, 1, -51 );
setRotateKey( spep_2-3 + 130, 1, -51.8 );
setRotateKey( spep_2-3 + 132, 1, -52.5 );
setRotateKey( spep_2-3 + 134, 1, -53.3 );
setRotateKey( spep_2-3 + 136, 1, -54.1 );
setRotateKey( spep_2-3 + 138, 1, -54.9 );
setRotateKey( spep_2-3 + 140, 1, -55.7 );
--setRotateKey( spep_2-1 + 142, 1, -56.5 );

--SE
--連続パンチ
SE010 = playSeVer2( spep_2 + 0, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 4, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 4, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 32, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 32, 1000, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 54, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 54, 1000, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 68, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 68, 1190, "",spep_2 + 114, 0, 24, -1);

--振りかぶる
SE019 = playSeVer2( spep_2 + 86, 1003, "", 0, 0, 0, -1);

--蹴り上げる
SE020 = playSeVer2( spep_2 + 112, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE020, 70 );
SE021 = playSeVer2( spep_2 + 114, 1187, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 142, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3=spep_2+140;
------------------------------------------------------
--敵が空に飛んでいく
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_3 + 0, SP_07x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 28, fly_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fly_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 28, fly_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fly_f, 0 );
setEffRotateKey( spep_3 + 28, fly_f, 0 );
setEffAlphaKey( spep_3 + 0, fly_f, 255 );
setEffAlphaKey( spep_3 + 26, fly_f, 255 );
setEffAlphaKey( spep_3 + 27, fly_f, 255 );
setEffAlphaKey( spep_3 + 28, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_3 + 0, SP_08x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 28, fly_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 28, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fly_b, 0 );
setEffRotateKey( spep_3 + 28, fly_b, 0 );
setEffAlphaKey( spep_3 + 0, fly_b, 255 );
setEffAlphaKey( spep_3 + 26, fly_b, 255 );
setEffAlphaKey( spep_3 + 27, fly_b, 255 );
setEffAlphaKey( spep_3 + 28, fly_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 30, 1, 0 );

changeAnime( spep_3 + 0, 1, 5 );

setMoveKey( spep_3 + 0, 1, -74, -388.2 , 0 );
setMoveKey( spep_3 + 2, 1, -56.6, -271.3 , 0 );
setMoveKey( spep_3 + 4, 1, -40.2, -235.6 , 0 );
setMoveKey( spep_3 + 6, 1, -28.7, -190.5 , 0 );
setMoveKey( spep_3 + 8, 1, -32, -170.3 , 0 );
setMoveKey( spep_3 + 10, 1, -17, -149.7 , 0 );
setMoveKey( spep_3 + 12, 1, -16.3, -123.9 , 0 );
setMoveKey( spep_3 + 14, 1, -17.6, -100.1 , 0 );
setMoveKey( spep_3 + 16, 1, -8.7, -91.9 , 0 );
setMoveKey( spep_3 + 18, 1, -1.3, -69.9 , 0 );
setMoveKey( spep_3 + 20, 1, -7.1, -60.9 , 0 );
setMoveKey( spep_3 + 22, 1, 3.5, -43 , 0 );
setMoveKey( spep_3 + 24, 1, 4.1, -34.5 , 0 );
setMoveKey( spep_3 + 26, 1, 2.2, -18.5 , 0 );
setMoveKey( spep_3 + 28, 1, 8.7, -12 , 0 );
setMoveKey( spep_3 + 30, 1, 13.8, 2.3 , 0 );

setScaleKey( spep_3 + 0, 1, 4.68, 4.68 );
setScaleKey( spep_3 + 2, 1, 3.5, 3.51 );
setScaleKey( spep_3 + 4, 1, 3.04, 3.06 );
setScaleKey( spep_3 + 6, 1, 2.71, 2.73 );
setScaleKey( spep_3 + 8, 1, 2.43, 2.46 );
setScaleKey( spep_3 + 10, 1, 2.2, 2.23 );
setScaleKey( spep_3 + 12, 1, 2, 2.03 );
setScaleKey( spep_3 + 14, 1, 1.82, 1.85 );
setScaleKey( spep_3 + 16, 1, 1.66, 1.69 );
setScaleKey( spep_3 + 18, 1, 1.51, 1.54 );
setScaleKey( spep_3 + 20, 1, 1.38, 1.41 );
setScaleKey( spep_3 + 22, 1, 1.25, 1.28 );
setScaleKey( spep_3 + 24, 1, 1.14, 1.17 );
setScaleKey( spep_3 + 26, 1, 1.03, 1.06 );
setScaleKey( spep_3 + 28, 1, 0.93, 0.96 );
setScaleKey( spep_3 + 30, 1, 0.84, 0.87 );

setRotateKey( spep_3 + 0, 1, 20.3 );
setRotateKey( spep_3 + 2, 1, 20.5 );
setRotateKey( spep_3 + 30, 1, 20.5 );

--SE
--敵飛んでいく
SE022 = playSeVer2( spep_3 + 0, 1183, "",spep_3 + 164, 0, 106, -1);
SE023 = playSeVer2( spep_3 + 0, 1121, "",spep_3 + 194, 0, 140, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 30, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4=spep_3+28;
------------------------------------------------------
--構える（俯瞰）
------------------------------------------------------
-- ** エフェクト等 ** --
hold = entryEffect( spep_4 + 0, SP_09x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, hold, 0, 0, 0 );
setEffMoveKey( spep_4 + 84, hold, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hold, -1.0, 1.0 );
setEffScaleKey( spep_4 + 84, hold, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hold, 0 );
setEffRotateKey( spep_4 + 84, hold, 0 );
setEffAlphaKey( spep_4 + 0, hold, 255 );
setEffAlphaKey( spep_4 + 82, hold, 255 );
setEffAlphaKey( spep_4 + 83, hold, 255 );
setEffAlphaKey( spep_4 + 84, hold, 0 );

-- ** 白フェード ** --
entryFade( spep_4 + 86 -10, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 220 );  --white fade

--顔カットインのタイミング指定
spep_x=spep_4 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, -100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, -100,  515);
setEffMoveKey(  spep_x +86,  ctgogo,  -100,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 74, ctgogo, 255 );
setEffAlphaKey( spep_x + 76, ctgogo, 191 );
setEffAlphaKey( spep_x + 78, ctgogo, 112 );
setEffAlphaKey( spep_x + 80, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +80,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +76,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo, -1.07, 1.07);

--SE
--気だめ
SE024 = playSeVer2( spep_4 + 0, 1356, "",spep_4 + 306, 44, 10, -1);
setSeVolumeByWorkId( spep_4 + 0, SE024, 136 );
setPitch( spep_4 + 0, SE024, -300 );
setTimeStretch( SE024, 0.8, 30, 4 );

--顔カットイン
--SE025 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気だめ
SE026 = playSeVer2( spep_4 + 4, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 4, SE026, 129 );
setPitch( spep_4 + 4, SE026, -400 );
setTimeStretch( SE026, 0.73, 30, 4 );
SE027 = playSeVer2( spep_4 + 10, 1295, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 10, SE027, 117 );
setPitch( spep_4 + 10, SE027, 200 );
setTimeStretch( SE027, 1.13, 30, 4 );

--画面遷移
SE028 = playSeVer2( spep_4 + 54, 1072, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5=spep_4+84;
------------------------------------------------------
--手に気功が溜まる
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_5 + 0, SP_10, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_5 + 76, tame, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_5 + 76, tame, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tame, 0 );
setEffRotateKey( spep_5 + 76, tame, 0 );
setEffAlphaKey( spep_5 + 0, tame, 255 );
setEffAlphaKey( spep_5 + 74, tame, 255 );
setEffAlphaKey( spep_5 + 75, tame, 255 );
setEffAlphaKey( spep_5 + 76, tame, 0 );

--SE
--イナヅマ
SE029 = playSeVer2( spep_5 + 20, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 20, SE029, 81 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6=spep_5+76;
------------------------------------------------------
--気功砲を打つ前の構え
------------------------------------------------------
-- ** エフェクト等 ** --
strike = entryEffect( spep_6 + 0, SP_11, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, strike, 0, 0, 0 );
setEffMoveKey( spep_6 + 76, strike, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, strike, -1.0, 1.0 );
setEffScaleKey( spep_6 + 76, strike, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, strike, 0 );
setEffRotateKey( spep_6 + 76, strike, 0 );
setEffAlphaKey( spep_6 + 0, strike, 255 );
setEffAlphaKey( spep_6 + 74, strike, 255 );
setEffAlphaKey( spep_6 + 75, strike, 255 );
setEffAlphaKey( spep_6 + 76, strike, 0 );

--SE
--敵飛んでいく
SE030 = playSeVer2( spep_6 + 0, 1121, "",spep_6 + 152, 96, 10, -1);
setStartTimeMs( SE030,  567 );

--手を天に向ける
SE031 = playSeVer2( spep_6 + 42, 1116, "",spep_6 + 98, 0, 16, -1);
SE032 = playSeVer2( spep_6 + 66, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 66, SE032, 82 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_7=spep_6+76;
------------------------------------------------------
--手を空に構える
------------------------------------------------------
-- ** エフェクト等 ** --
sky_f = entryEffect( spep_7 + 0, SP_12, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, sky_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 50, sky_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, sky_f, -1.0, 1.0 );
setEffScaleKey( spep_7 + 50, sky_f, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, sky_f, 0 );
setEffRotateKey( spep_7 + 50, sky_f, 0 );
setEffAlphaKey( spep_7 + 0, sky_f, 255 );
setEffAlphaKey( spep_7 + 50, sky_f, 255 );

-- ** エフェクト等 ** --
sky_b = entryEffect( spep_7 + 0, SP_13, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, sky_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 50, sky_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, sky_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 50, sky_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, sky_b, 0 );
setEffRotateKey( spep_7 + 50, sky_b, 0 );
setEffAlphaKey( spep_7 + 0, sky_b, 255 );
setEffAlphaKey( spep_7 + 50, sky_b, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 48, 1, 0 );

changeAnime( spep_7 + 0, 1, 105 );

setMoveKey( spep_7 + 0, 1, 94.1, 96.9 , 0 );
setMoveKey( spep_7 + 2, 1, 94.5, 97.3 , 0 );
setMoveKey( spep_7 + 4, 1, 94.9, 97.7 , 0 );
setMoveKey( spep_7 + 6, 1, 95.2, 98.1 , 0 );
setMoveKey( spep_7 + 8, 1, 95.6, 98.5 , 0 );
setMoveKey( spep_7 + 10, 1, 96, 98.9 , 0 );
setMoveKey( spep_7 + 12, 1, 96.4, 99.3 , 0 );
setMoveKey( spep_7 + 14, 1, 96.8, 99.7 , 0 );
setMoveKey( spep_7 + 16, 1, 97.1, 100 , 0 );
setMoveKey( spep_7 + 18, 1, 97.5, 100.4 , 0 );
setMoveKey( spep_7 + 20, 1, 97.9, 100.8 , 0 );
setMoveKey( spep_7 + 22, 1, 98.3, 101.2 , 0 );
setMoveKey( spep_7 + 24, 1, 98.6, 101.6 , 0 );
setMoveKey( spep_7 + 26, 1, 99, 102 , 0 );
setMoveKey( spep_7 + 28, 1, 99.4, 102.4 , 0 );
setMoveKey( spep_7 + 30, 1, 99.8, 102.8 , 0 );
setMoveKey( spep_7 + 32, 1, 100.2, 103.1 , 0 );
setMoveKey( spep_7 + 34, 1, 100.5, 103.5 , 0 );
setMoveKey( spep_7 + 36, 1, 100.9, 103.9 , 0 );
setMoveKey( spep_7 + 38, 1, 101.3, 104.3 , 0 );
setMoveKey( spep_7 + 40, 1, 101.7, 104.7 , 0 );
setMoveKey( spep_7 + 42, 1, 102.1, 105.1 , 0 );
setMoveKey( spep_7 + 44, 1, 102.4, 105.5 , 0 );
setMoveKey( spep_7 + 46, 1, 102.8, 105.9 , 0 );
setMoveKey( spep_7 + 48, 1, 103.2, 106.2 , 0 );

setScaleKey( spep_7 + 0, 1, 0.41, 0.41 );
setScaleKey( spep_7 + 2, 1, 0.4, 0.4 );
setScaleKey( spep_7 + 4, 1, 0.39, 0.39 );
setScaleKey( spep_7 + 6, 1, 0.38, 0.38 );
setScaleKey( spep_7 + 8, 1, 0.36, 0.36 );
setScaleKey( spep_7 + 10, 1, 0.35, 0.35 );
setScaleKey( spep_7 + 12, 1, 0.34, 0.34 );
setScaleKey( spep_7 + 14, 1, 0.33, 0.33 );
setScaleKey( spep_7 + 16, 1, 0.32, 0.32 );
setScaleKey( spep_7 + 18, 1, 0.31, 0.31 );
setScaleKey( spep_7 + 20, 1, 0.3, 0.3 );
setScaleKey( spep_7 + 22, 1, 0.28, 0.28 );
setScaleKey( spep_7 + 24, 1, 0.27, 0.27 );
setScaleKey( spep_7 + 26, 1, 0.26, 0.26 );
setScaleKey( spep_7 + 28, 1, 0.25, 0.25 );
setScaleKey( spep_7 + 30, 1, 0.24, 0.24 );
setScaleKey( spep_7 + 32, 1, 0.23, 0.23 );
setScaleKey( spep_7 + 34, 1, 0.22, 0.22 );
setScaleKey( spep_7 + 36, 1, 0.21, 0.21 );
setScaleKey( spep_7 + 38, 1, 0.19, 0.19 );
setScaleKey( spep_7 + 40, 1, 0.18, 0.18 );
setScaleKey( spep_7 + 42, 1, 0.17, 0.17 );
setScaleKey( spep_7 + 44, 1, 0.16, 0.16 );
setScaleKey( spep_7 + 46, 1, 0.15, 0.15 );
setScaleKey( spep_7 + 48, 1, 0.14, 0.14 );

setRotateKey( spep_7 + 0, 1, -17.6 );
setRotateKey( spep_7 + 2, 1, -17.1 );
setRotateKey( spep_7 + 4, 1, -16.4 );
setRotateKey( spep_7 + 6, 1, -15.8 );
setRotateKey( spep_7 + 8, 1, -15.1 );
setRotateKey( spep_7 + 10, 1, -14.5 );
setRotateKey( spep_7 + 12, 1, -13.8 );
setRotateKey( spep_7 + 14, 1, -13.2 );
setRotateKey( spep_7 + 16, 1, -12.5 );
setRotateKey( spep_7 + 18, 1, -11.8 );
setRotateKey( spep_7 + 20, 1, -11.2 );
setRotateKey( spep_7 + 22, 1, -10.5 );
setRotateKey( spep_7 + 24, 1, -9.9 );
setRotateKey( spep_7 + 26, 1, -9.2 );
setRotateKey( spep_7 + 28, 1, -8.6 );
setRotateKey( spep_7 + 30, 1, -7.9 );
setRotateKey( spep_7 + 32, 1, -7.2 );
setRotateKey( spep_7 + 34, 1, -6.6 );
setRotateKey( spep_7 + 36, 1, -5.9 );
setRotateKey( spep_7 + 38, 1, -5.3 );
setRotateKey( spep_7 + 40, 1, -4.6 );
setRotateKey( spep_7 + 42, 1, -4 );
setRotateKey( spep_7 + 44, 1, -3.3 );
setRotateKey( spep_7 + 46, 1, -2.7 );
setRotateKey( spep_7 + 48, 1, -2 );

--SE
SE033 = playSeVer2( spep_7 + 0, 1233, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_7 + 10, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 10, SE034, 73 );

--白フェード
entryFade( spep_7 +42 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_8=spep_7+50;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_8 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_8 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_8 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_8 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_8 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_8 + 0, shuchusen, 0 );
setEffRotateKey( spep_8 + 90, shuchusen, 0 );
setEffAlphaKey( spep_8 + 0, shuchusen, 255 );
setEffAlphaKey( spep_8 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_8 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_8 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_9= spep_8 + 94;
------------------------------------------------------
--気功砲を放つ
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_9 + 0, SP_14, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_9 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_9 + 56, beam, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_9 + 56, beam, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, beam, 0 );
setEffRotateKey( spep_9 + 56, beam, 0 );
setEffAlphaKey( spep_9 + 0, beam, 255 );
setEffAlphaKey( spep_9 + 54, beam, 255 );
setEffAlphaKey( spep_9 + 55, beam, 255 );
setEffAlphaKey( spep_9 + 56, beam, 0 );

--SE
--気功砲発射
SE036 = playSeVer2( spep_9 + 14, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 14, SE036, 74 );
SE037 = playSeVer2( spep_9 + 14, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 14, SE037, 84 );
SE038 = playSeVer2( spep_9 + 14, 1173, "",spep_9 + 88, 0, 40, -1);
setSeVolumeByWorkId( spep_9 + 14, SE038, 176 );
SE039 = playSeVer2( spep_9 + 14, 1193, "",spep_9 + 264, 0, 76, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_9 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_10=spep_9+56;
------------------------------------------------------
--気功砲から地面から画面に飛んでくる（俯瞰）
------------------------------------------------------
-- ** エフェクト等 ** --
beam2 = entryEffect( spep_10 + 0, SP_15, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_10 + 0, beam2, 0, 0, 0 );
setEffMoveKey( spep_10 + 56, beam2, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, beam2, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, beam2, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, beam2, 0 );
setEffRotateKey( spep_10 + 56, beam2, 0 );
setEffAlphaKey( spep_10 + 0, beam2, 255 );
setEffAlphaKey( spep_10 + 54, beam2, 255 );
setEffAlphaKey( spep_10 + 55, beam2, 255 );
setEffAlphaKey( spep_10 + 56, beam2, 0 );

--SE
--気弾向かっていく
SE040 = playSeVer2( spep_10 + 18, 1021, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_10 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_11=spep_10+56;
------------------------------------------------------
--敵に気功砲が当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_11 + 0, SP_16, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_11 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_11 + 76, hit_f, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 76, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, hit_f, 0 );
setEffRotateKey( spep_11 + 76, hit_f, 0 );
setEffAlphaKey( spep_11 + 0, hit_f, 255 );
setEffAlphaKey( spep_11 + 74, hit_f, 255 );
setEffAlphaKey( spep_11 + 75, hit_f, 255 );
setEffAlphaKey( spep_11 + 76, hit_f, 0 );

-- ** エフェクト等 ** --
hit_f = entryEffect( spep_11 + 0, SP_17, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_11 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_11 + 76, hit_f, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 76, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, hit_f, 0 );
setEffRotateKey( spep_11 + 76, hit_f, 0 );
setEffAlphaKey( spep_11 + 0, hit_f, 255 );
setEffAlphaKey( spep_11 + 74, hit_f, 255 );
setEffAlphaKey( spep_11 + 75, hit_f, 255 );
setEffAlphaKey( spep_11 + 76, hit_f, 0 );

--敵の動き
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 + 8, 1, 0 );

changeAnime( spep_11 + 0, 1, 108 );

setMoveKey( spep_11 + 0, 1, -0.7, 25.1 , 0 );
setMoveKey( spep_11 + 2, 1, 7.1, 33.2 , 0 );
setMoveKey( spep_11 + 4, 1, 14.9, 41.3 , 0 );
setMoveKey( spep_11 + 6, 1, 22.7, 49.3 , 0 );
setMoveKey( spep_11 + 8, 1, 30.5, 57.4 , 0 );

setScaleKey( spep_11 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_11 + 8, 1, 0.35, 0.35 );

setRotateKey( spep_11 + 0, 1, 0 );
setRotateKey( spep_11 + 8, 1, 0 );

--SE
--気弾突き抜けていく
SE041 = playSeVer2( spep_11 + 6, 1022, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 6, SE041, 87 );
SE042 = playSeVer2( spep_11 + 6, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 6, SE042, 70 );
SE043 = playSeVer2( spep_11 + 6, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_11 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_12=spep_11+76;
------------------------------------------------------
--敵が光に飲まれる
------------------------------------------------------
-- ** エフェクト等 ** --
swallowed_f = entryEffect( spep_12 + 0, SP_18, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_12 + 0, swallowed_f, 0, 0, 0 );
setEffMoveKey( spep_12 + 52, swallowed_f, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, swallowed_f, 1.0, 1.0 );
setEffScaleKey( spep_12 + 52, swallowed_f, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, swallowed_f, 0 );
setEffRotateKey( spep_12 + 52, swallowed_f, 0 );
setEffAlphaKey( spep_12 + 0, swallowed_f, 255 );
setEffAlphaKey( spep_12 + 50, swallowed_f, 255 );
setEffAlphaKey( spep_12 + 51, swallowed_f, 255 );
setEffAlphaKey( spep_12 + 52, swallowed_f, 0 );

-- ** エフェクト等 ** --
swallowed_f = entryEffect( spep_12 + 0, SP_19, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_12 + 0, swallowed_f, 0, 0, 0 );
setEffMoveKey( spep_12 + 52, swallowed_f, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, swallowed_f, 1.0, 1.0 );
setEffScaleKey( spep_12 + 52, swallowed_f, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, swallowed_f, 0 );
setEffRotateKey( spep_12 + 52, swallowed_f, 0 );
setEffAlphaKey( spep_12 + 0, swallowed_f, 255 );
setEffAlphaKey( spep_12 + 50, swallowed_f, 255 );
setEffAlphaKey( spep_12 + 51, swallowed_f, 255 );
setEffAlphaKey( spep_12 + 52, swallowed_f, 0 );

--敵の動き
setDisp( spep_12 + 0, 1, 1 );
setDisp( spep_12 + 54, 1, 0 );

changeAnime( spep_12 + 0, 1, 106 );

setMoveKey( spep_12 + 0, 1, 18.1, 101.1 , 0 );
setMoveKey( spep_12 + 2, 1, 17.7, 97.7 , 0 );
setMoveKey( spep_12 + 4, 1, 18.2, 100.2 , 0 );
setMoveKey( spep_12 + 6, 1, 17.7, 97.4 , 0 );
setMoveKey( spep_12 + 8, 1, 18.2, 100.2 , 0 );
setMoveKey( spep_12 + 10, 1, 17.7, 97 , 0 );
setMoveKey( spep_12 + 12, 1, 18.2, 101.2 , 0 );
setMoveKey( spep_12 + 14, 1, 17.7, 96.6 , 0 );
setMoveKey( spep_12 + 16, 1, 18.2, 102.1 , 0 );
setMoveKey( spep_12 + 18, 1, 17.7, 96.1 , 0 );
setMoveKey( spep_12 + 20, 1, 18.2, 102.7 , 0 );
setMoveKey( spep_12 + 22, 1, 17.7, 96 , 0 );
setMoveKey( spep_12 + 24, 1, 18.2, 102.4 , 0 );
setMoveKey( spep_12 + 26, 1, 17.7, 94.1 , 0 );
setMoveKey( spep_12 + 28, 1, 18.2, 102.5 , 0 );
setMoveKey( spep_12 + 30, 1, 17.7, 94.4 , 0 );
setMoveKey( spep_12 + 32, 1, 18.2, 102.4 , 0 );
setMoveKey( spep_12 + 34, 1, 17.7, 94.1 , 0 );
setMoveKey( spep_12 + 36, 1, 18.2, 102.5 , 0 );
setMoveKey( spep_12 + 38, 1, 17.7, 94.4 , 0 );
setMoveKey( spep_12 + 40, 1, 18.2, 102.4 , 0 );
setMoveKey( spep_12 + 42, 1, 17.7, 94.1 , 0 );
setMoveKey( spep_12 + 44, 1, 18.2, 102.5 , 0 );
setMoveKey( spep_12 + 46, 1, 17.7, 94.4 , 0 );
setMoveKey( spep_12 + 48, 1, 18.2, 102.4 , 0 );
setMoveKey( spep_12 + 50, 1, 17.7, 94.1 , 0 );
setMoveKey( spep_12 + 52, 1, 18.2, 102.5 , 0 );
setMoveKey( spep_12 + 54, 1, 17.7, 94.4 , 0 );

setScaleKey( spep_12 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_12 + 54, 1, 1.5, 1.5 );

setRotateKey( spep_12 + 0, 1, -31 );
setRotateKey( spep_12 + 54, 1, -31 );

--SE
--爆発
SE044 = playSeVer2( spep_12 + 6, 1215, "",spep_12 + 126, 50, 48, -1);
setStartTimeMs( SE044,  1000 );

-- ** くろ背景 ** --
entryFadeBg( spep_12 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_13=spep_12+52;
------------------------------------------------------
--煙が流れる
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_13 + 0, SP_20x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_13 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_13 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_13 + 120, finish, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, finish, 0 );
setEffRotateKey( spep_13 + 120, finish, 0 );
setEffAlphaKey( spep_13 + 0, finish, 255 );
setEffAlphaKey( spep_13 + 120, finish, 255 );

--SE
--爆発
SE045 = playSeVer2( spep_13 + 0, 1168, "", 0, 26, 0, -1);
setStartTimeMs( SE045,  1367 );
SE046 = playSeVer2( spep_13 + 0 -4, 1188, "", 0, 52, 0, -1);
setSeVolumeByWorkId( spep_13 + 0 -4, SE046, 77 );
SE047 = playSeVer2( spep_13 + 8, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 8, SE047, 65 );

--終わり
dealDamage(spep_13 +10);
endPhase( spep_13 + 110 );
end
