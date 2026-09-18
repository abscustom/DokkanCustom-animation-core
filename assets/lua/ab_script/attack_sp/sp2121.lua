--1021330:パイクーハン_バーニングシュート
--sp_effect_a9_00069
--sp2121

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
SP_01= 156549;-- 蹴り
SP_02= 156536;-- 連続蹴り
SP_03= 156538;-- 連続蹴り
SP_04= 156539;-- 手刀
SP_05= 156550;-- 手刀 背景
SP_06= 156552;-- 手元に気弾溜め
SP_07= 156553;-- 飛び上がって気弾溜め
SP_08= 156554;-- たくさん気弾投げる
SP_09= 156556;-- フィニッシュ
SP_10= 156557;-- フィニッシュ 背景

--エフェクト(てき)
SP_01x= 156549;-- 蹴り
SP_02x= 156537;-- 連続蹴り
SP_03x= 156538;-- 連続蹴り
SP_04x= 156539;-- 手刀
SP_05x= 156551;-- 手刀 背景(敵)
SP_06x= 156552;-- 手元に気弾溜め
SP_07x= 156553;-- 飛び上がって気弾溜め
SP_08x= 156555;-- たくさん気弾投げる (敵)
SP_09x= 156556;-- フィニッシュ 
SP_10x= 156557;-- フィニッシュ 背景

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
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
-- 蹴り
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
kick = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, kick, 0, 0, 0 );
setEffMoveKey( spep_0 + 80, kick, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, kick, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kick, 0 );
setEffRotateKey( spep_0 + 80, kick, 0 );
setEffAlphaKey( spep_0 + 0, kick, 255 );
setEffAlphaKey( spep_0 + 80, kick, 255 );

--SE
--前方ダッシュ
SE001 = playSe( spep_0 + 0, 1182 );
SE002 = playSe( spep_0 + 0, 9 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );

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
--SE
stopSe( spep_0 + 62, SE002, 16 );

--蹴り振りかぶり
SE003 = playSe( spep_0 + 40, 1116 );
setSeVolumeByWorkId( spep_0 + 40, SE003, 80 );
stopSe( spep_0 + 64, SE003, 22 );
SE004 = playSe( spep_0 + 48, 1004 );

--次の準備
spep_1=spep_0+80;
------------------------------------------------------
-- 連続蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 100, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 98, fighting_f, 255 );
setEffAlphaKey( spep_1 + 99, fighting_f, 255 );
setEffAlphaKey( spep_1 + 100, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 100, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 98, fighting_b, 255 );
setEffAlphaKey( spep_1 + 99, fighting_b, 255 );
setEffAlphaKey( spep_1 + 100, fighting_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 106 );
changeAnime( spep_1-3 + 44, 1, 108 );
changeAnime( spep_1-3 + 58, 1, 105 );

setMoveKey( spep_1 + 0, 1, 43, -69.9 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 88, -39.6 , 0 );
setMoveKey( spep_1-3 + 4, 1, 148.9, -21 , 0 );
setMoveKey( spep_1-3 + 6, 1, 118.2, -20.1 , 0 );
setMoveKey( spep_1-3 + 8, 1, 101, -28.6 , 0 );
setMoveKey( spep_1-3 + 10, 1, 74.8, -28.5 , 0 );
setMoveKey( spep_1-3 + 12, 1, 51.5, -39.2 , 0 );
setMoveKey( spep_1-3 + 14, 1, 54.4, -42.7 , 0 );
setMoveKey( spep_1-3 + 16, 1, 50, -40.3 , 0 );
setMoveKey( spep_1-3 + 18, 1, 54.4, -37.1 , 0 );
setMoveKey( spep_1-3 + 20, 1, 52.8, -41 , 0 );
setMoveKey( spep_1-3 + 22, 1, 53.1, -40.4 , 0 );
setMoveKey( spep_1-3 + 24, 1, 53.6, -39.7 , 0 );
setMoveKey( spep_1-3 + 26, 1, 53.9, -39.1 , 0 );
setMoveKey( spep_1-3 + 28, 1, 54.3, -38.5 , 0 );
setMoveKey( spep_1-3 + 30, 1, 54.7, -37.8 , 0 );
setMoveKey( spep_1-3 + 32, 1, 55, -37.2 , 0 );
setMoveKey( spep_1-3 + 34, 1, 55.4, -36.6 , 0 );
setMoveKey( spep_1-3 + 36, 1, 55.8, -35.9 , 0 );
setMoveKey( spep_1-3 + 38, 1, 56.2, -35.3 , 0 );
setMoveKey( spep_1-3 + 40, 1, 56.6, -34.7 , 0 );
setMoveKey( spep_1-3 + 43, 1, 57, -34.1 , 0 );
setMoveKey( spep_1-3 + 44, 1, 17.9, -11 , 0 );
setMoveKey( spep_1-3 + 46, 1, 23.8, -18.1 , 0 );
setMoveKey( spep_1-3 + 48, 1, 22.1, -7.3 , 0 );
setMoveKey( spep_1-3 + 50, 1, 27.2, -12 , 0 );
setMoveKey( spep_1-3 + 52, 1, 21, 4.1 , 0 );
setMoveKey( spep_1-3 + 54, 1, 24.6, 2.3 , 0 );
setMoveKey( spep_1-3 + 57, 1, 21.5, 7.2 , 0 );
setMoveKey( spep_1-3 + 58, 1, 169.2, 244.6 , 0 );
setMoveKey( spep_1-3 + 60, 1, 137.4, 231.1 , 0 );
setMoveKey( spep_1-3 + 62, 1, 121.2, 214.2 , 0 );
setMoveKey( spep_1-3 + 64, 1, 96.9, 194.8 , 0 );
setMoveKey( spep_1-3 + 66, 1, 69.9, 167 , 0 );
setMoveKey( spep_1-3 + 68, 1, 76.3, 172.2 , 0 );
setMoveKey( spep_1-3 + 70, 1, 78.5, 173.5 , 0 );
setMoveKey( spep_1-3 + 72, 1, 82.1, 177.4 , 0 );
setMoveKey( spep_1-3 + 74, 1, 85.7, 181.4 , 0 );
setMoveKey( spep_1-3 + 76, 1, 89.2, 185.3 , 0 );
setMoveKey( spep_1-3 + 78, 1, 92.8, 189.3 , 0 );
setMoveKey( spep_1-3 + 80, 1, 94.5, 191.4 , 0 );
setMoveKey( spep_1-3 + 82, 1, 96.2, 193.5 , 0 );
setMoveKey( spep_1-3 + 84, 1, 98, 195.6 , 0 );
setMoveKey( spep_1-3 + 86, 1, 99.7, 197.7 , 0 );
setMoveKey( spep_1-3 + 88, 1, 101.4, 199.8 , 0 );
setMoveKey( spep_1-3 + 90, 1, 103.2, 201.9 , 0 );
setMoveKey( spep_1-3 + 92, 1, 104.9, 204 , 0 );
setMoveKey( spep_1-3 + 94, 1, 106.7, 206.1 , 0 );
setMoveKey( spep_1-3 + 96, 1, 108.4, 208.2 , 0 );
setMoveKey( spep_1-3 + 98, 1, 110.1, 210.3 , 0 );
setMoveKey( spep_1-3 + 100, 1, 111.8, 212.4 , 0 );
setMoveKey( spep_1-3 + 102, 1, 113.6, 214.5 , 0 );
--setMoveKey( spep_1-3 + 104, 1, 115.3, 216.6 , 0 );

setScaleKey( spep_1 + 0, 1,1.32,1.32);
--setScaleKey( spep_1-3 + 2,1,1.71,1.71);
setScaleKey( spep_1-3 + 4,1,2.11,2.11);
setScaleKey( spep_1-3 + 6,1,1.92,1.92);
setScaleKey( spep_1-3 + 8,1,1.71,1.71);
setScaleKey( spep_1-3 + 10, 1,1.51,1.51);
setScaleKey( spep_1-3 + 12, 1,1.32,1.32);
setScaleKey( spep_1-3 + 43, 1,1.32,1.32);
setScaleKey( spep_1-3 + 44, 1,1.42,1.42);
setScaleKey( spep_1-3 + 57, 1,1.42,1.42);
setScaleKey( spep_1-3 + 58, 1,1.53,1.53);
setScaleKey( spep_1-3 + 60, 1,1.36,1.36);
setScaleKey( spep_1-3 + 62, 1,1.21,1.21);
setScaleKey( spep_1-3 + 64, 1,1.05,1.05);
setScaleKey( spep_1-3 + 66, 1,0.9,0.9);
setScaleKey( spep_1-3 + 68, 1,0.81,0.81);
setScaleKey( spep_1-3 + 70, 1,0.72,0.72);
setScaleKey( spep_1-3 + 72, 1,0.63,0.63);
setScaleKey( spep_1-3 + 74, 1,0.54,0.54);
setScaleKey( spep_1-3 + 76, 1,0.45,0.45);
setScaleKey( spep_1-3 + 78, 1,0.36,0.36);
setScaleKey( spep_1-3 + 80, 1,0.33,0.33);
setScaleKey( spep_1-3 + 82, 1,0.31,0.31);
setScaleKey( spep_1-3 + 84, 1,0.28,0.28);
setScaleKey( spep_1-3 + 86, 1,0.26,0.26);
setScaleKey( spep_1-3 + 88, 1,0.24,0.24);
setScaleKey( spep_1-3 + 90, 1,0.21,0.21);
setScaleKey( spep_1-3 + 92, 1,0.2,0.2);
setScaleKey( spep_1-3 + 94, 1,0.18,0.18);
setScaleKey( spep_1-3 + 96, 1,0.15,0.15);
setScaleKey( spep_1-3 + 98, 1,0.13,0.13);
setScaleKey( spep_1-3 + 100,1,0.1,0.1);
setScaleKey( spep_1-3 + 102,1,0.08,0.08);
--setScaleKey( spep_1-3 + 104,1,0.06,0.06);

setRotateKey( spep_1-3 + 0, 1, -52.3 );
setRotateKey( spep_1-3 + 2, 1, -50.8 );
setRotateKey( spep_1-3 + 4, 1, -49.2 );
setRotateKey( spep_1-3 + 6, 1, -48.8 );
setRotateKey( spep_1-3 + 8, 1, -48.4 );
setRotateKey( spep_1-3 + 10, 1, -48 );
setRotateKey( spep_1-3 + 12, 1, -47.6 );
setRotateKey( spep_1-3 + 14, 1, -47.1 );
setRotateKey( spep_1-3 + 16, 1, -46.7 );
setRotateKey( spep_1-3 + 18, 1, -46.3 );
setRotateKey( spep_1-3 + 20, 1, -45.9 );
setRotateKey( spep_1-3 + 22, 1, -45.4 );
setRotateKey( spep_1-3 + 24, 1, -45 );
setRotateKey( spep_1-3 + 26, 1, -44.6 );
setRotateKey( spep_1-3 + 28, 1, -44.2 );
setRotateKey( spep_1-3 + 30, 1, -43.8 );
setRotateKey( spep_1-3 + 32, 1, -43.3 );
setRotateKey( spep_1-3 + 34, 1, -42.9 );
setRotateKey( spep_1-3 + 36, 1, -42.5 );
setRotateKey( spep_1-3 + 38, 1, -42.1 );
setRotateKey( spep_1-3 + 40, 1, -41.7 );
setRotateKey( spep_1-3 + 43, 1, -41.2 );
setRotateKey( spep_1-3 + 44, 1, -31.8 );
setRotateKey( spep_1-3 + 57, 1, -31.8 );
setRotateKey( spep_1-3 + 58, 1, 9.7 );
setRotateKey( spep_1-3 + 102, 1, 9.7 );

--SE
--足払い
SE005 = playSe( spep_1 + 6, 1010 );
SE006 = playSe( spep_1 + 6, 1110 );

--ハイキック
SE007 = playSe( spep_1 + 42, 1189 );
SE008 = playSe( spep_1 + 46, 1001 );
setSeVolumeByWorkId( spep_1 + 46, SE008, 65 );
stopSe( spep_1 + 60, SE008, 6 );
SE009 = playSe( spep_1 + 46, 1009 );
setSeVolumeByWorkId( spep_1 + 46, SE009, 79 );
stopSe( spep_1 + 60, SE009, 6 );

--ジャンプハイキック
SE010 = playSe( spep_1 + 66, 1010 );
setSeVolumeByWorkId( spep_1 + 66, SE010, 86 );
SE011 = playSe( spep_1 + 68, 1001 );
setSeVolumeByWorkId( spep_1 + 68, SE011, 73 );
SE012 = playSe( spep_1 + 68, 1110 );
setSeVolumeByWorkId( spep_1 + 68, SE012, 86 );

--敵追いかける
SE013 = playSe( spep_1 + 86, 1183,"",0.5 );
SE014 = playSe( spep_1 + 96, 1182 );
setSeVolumeByWorkId( spep_1 + 96, SE014, 75 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 102, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_2=spep_1+100;
------------------------------------------------------
-- 手刀
------------------------------------------------------
-- ** エフェクト等 ** --
knifehand_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, knifehand_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 84, knifehand_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, knifehand_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 84, knifehand_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, knifehand_f, 0 );
setEffRotateKey( spep_2 + 84, knifehand_f, 0 );
setEffAlphaKey( spep_2 + 0, knifehand_f, 255 );
setEffAlphaKey( spep_2 + 82, knifehand_f, 255 );
setEffAlphaKey( spep_2 + 83, knifehand_f, 255 );
setEffAlphaKey( spep_2 + 84, knifehand_f, 0 );

-- ** エフェクト等 ** --
knifehand_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, knifehand_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 84, knifehand_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, knifehand_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 84, knifehand_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, knifehand_b, 0 );
setEffRotateKey( spep_2 + 84, knifehand_b, 0 );
setEffAlphaKey( spep_2 + 0, knifehand_b, 255 );
setEffAlphaKey( spep_2 + 82, knifehand_b, 255 );
setEffAlphaKey( spep_2 + 83, knifehand_b, 255 );
setEffAlphaKey( spep_2 + 84, knifehand_b, 0 );

--敵の動き
setDisp( spep_2-3 + 50, 1, 0 );

changeAnime( spep_2 + 0, 1, 107 );
changeAnime( spep_2-3 + 36, 1, 7 );

a=40;
b=300;

setMoveKey( spep_2 + 0,1,-231.2,-107.5-a,0);
--setMoveKey( spep_2-3 + 2,1,-208.1,-93.2-a,0);
setMoveKey( spep_2-3 + 4,1,-184.9,-93.2-a,0);
setMoveKey( spep_2-3 + 6,1,-161.8,-85-a,0);
setMoveKey( spep_2-3 + 8,1,-138.6,-76.9-a,0);
setMoveKey( spep_2-3 + 10,1,-115.5,-68.8-a,0);
setMoveKey( spep_2-3 + 12,1,-92.3,-60.7-a,0);
setMoveKey( spep_2-3 + 14,1,-69.2,-52.7-a,0);
setMoveKey( spep_2-3 + 16,1,-46,-44.7-a,0);
setMoveKey( spep_2-3 + 18,1,-22.9,-36.7-a,0);
--setMoveKey( spep_2-3 + 20,1,-21.5,-28.7-a,0);
--setMoveKey( spep_2-3 + 21,1,-21.5,-29.2-a,0);
--setMoveKey( spep_2-3 + 22,1,-20.1,-29.6-a,0);
--setMoveKey( spep_2-3 + 24,1,-18.7,-29.6-a,0);
--setMoveKey( spep_2-3 + 26,1,-17.4,-30.1-a,0);
--setMoveKey( spep_2-3 + 28,1,-16,-30.5-a,0);
--setMoveKey( spep_2-3 + 30,1,-14.7,-31-a,0);
--setMoveKey( spep_2-3 + 32,1,-13.3,-39.8-a,0);
--setMoveKey( spep_2-3 + 34,1,-11.9,-30.5-a,0);
setMoveKey( spep_2-3 + 35,1,1.9,-29.8-a,0);

setMoveKey( spep_2-3 + 36, 1, -38, -57.6-a , 0 );
setMoveKey( spep_2-3 + 38, 1, -68.2, -74.8-a , 0 );
setMoveKey( spep_2-3 + 40, 1, -85.7, -117.5-a , 0 );
setMoveKey( spep_2-3 + 42, 1, -120.2, -130.5-a , 0 );
--setMoveKey( spep_2-3 + 44, 1, -137.7, -164.7-a , 0 );
--setMoveKey( spep_2-3 + 46, 1, -168, -181.9-a , 0 );
--setMoveKey( spep_2-3 + 48, 1, -198.3, -203.4-a , 0 );
--setMoveKey( spep_2-3 + 50, 1, -215.8-b, -246.1-a , 0 );
--setMoveKey( spep_2-3 + 52, 1, -250.3-b, -259.1-a , 0 );
--setMoveKey( spep_2-3 + 54, 1, -267.8-b, -293.3-a , 0 );
--setMoveKey( spep_2-3 + 56, 1, -298-b, -310.5-a-30 , 0 );
setMoveKey( spep_2-3 + 50, 1, -324-b, -340.5-a-60 , 0 );

setScaleKey( spep_2 + 0,1,0.3,0.3);
setScaleKey( spep_2-3 + 2,1,0.38,0.38);
setScaleKey( spep_2-3 + 4,1,0.44,0.44);
setScaleKey( spep_2-3 + 6,1,0.52,0.52);
setScaleKey( spep_2-3 + 8,1,0.6,0.6);
setScaleKey( spep_2-3 + 10,1,0.68,0.68);
setScaleKey( spep_2-3 + 12,1,0.74,0.74);
setScaleKey( spep_2-3 + 14,1,0.82,0.82);
setScaleKey( spep_2-3 + 16,1,0.9,0.9);
setScaleKey( spep_2-3 + 18,1,0.96,0.96);
setScaleKey( spep_2-3 + 20,1,0.96,0.96);
setScaleKey( spep_2-3 + 22,1,0.98,0.98);
setScaleKey( spep_2-3 + 24,1,0.98,0.98);
setScaleKey( spep_2-3 + 26,1,0.98,0.98);
setScaleKey( spep_2-3 + 28,1,1,1);
setScaleKey( spep_2-3 + 30,1,1,1);
setScaleKey( spep_2-3 + 32,1,1,1);
setScaleKey( spep_2-3 + 35,1,1,1);
setScaleKey( spep_2-3 + 36,1,1.27,1.27);
setScaleKey( spep_2-3 + 38,1,1.54,1.54);
setScaleKey( spep_2-3 + 40,1,1.8,1.8);
setScaleKey( spep_2-3 + 42,1,2.07,2.07);
setScaleKey( spep_2-3 + 44,1,2.32,2.32);
setScaleKey( spep_2-3 + 46,1,2.57,2.57);
setScaleKey( spep_2-3 + 48,1,2.84,2.84);
setScaleKey( spep_2-3 + 50,1,3.09,3.09);

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 50, 1, 0 );

--SE
--敵追いかける
stopSe( spep_2 + 42, SE013, 8 );
SE015 = playSe( spep_2 + 0, 9 );
setSeVolumeByWorkId( spep_2 + 0, SE015, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE015, 5.6 );
setSeVolumeByWorkId( spep_2 + 2, SE015, 11.2 );
setSeVolumeByWorkId( spep_2 + 3, SE015, 16.8 );
setSeVolumeByWorkId( spep_2 + 4, SE015, 22.4 );
setSeVolumeByWorkId( spep_2 + 5, SE015, 28 );
setSeVolumeByWorkId( spep_2 + 6, SE015, 33.6 );
setSeVolumeByWorkId( spep_2 + 7, SE015, 39.2 );
setSeVolumeByWorkId( spep_2 + 8, SE015, 44.8 );
setSeVolumeByWorkId( spep_2 + 9, SE015, 50.4 );
setSeVolumeByWorkId( spep_2 + 10, SE015, 56 );
setSeVolumeByWorkId( spep_2 + 11, SE015, 61.6 );
setSeVolumeByWorkId( spep_2 + 12, SE015, 67.2 );
setSeVolumeByWorkId( spep_2 + 13, SE015, 72.8 );
setSeVolumeByWorkId( spep_2 + 14, SE015, 78.4 );
setSeVolumeByWorkId( spep_2 + 15, SE015, 84 );
setSeVolumeByWorkId( spep_2 + 16, SE015, 89.6 );
setSeVolumeByWorkId( spep_2 + 17, SE015, 95.2 );
setSeVolumeByWorkId( spep_2 + 18, SE015, 100 );
stopSe( spep_2 + 42, SE015, 6 );

--裏拳
SE016 = playSe( spep_2 + 38, 1003 );
setSeVolumeByWorkId( spep_2 + 38, SE016, 69 );
SE017 = playSe( spep_2 + 42, 1009 );
SE018 = playSe( spep_2 + 44, 1000 );
SE019 = playSe( spep_2 + 44, 1110 );
setSeVolumeByWorkId( spep_2 + 44, SE019, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3=spep_2+84;
------------------------------------------------------
-- 手元に気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame1 = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame1, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, tame1, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame1, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, tame1, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame1, 0 );
setEffRotateKey( spep_3 + 66, tame1, 0 );
setEffAlphaKey( spep_3 + 0, tame1, 255 );
setEffAlphaKey( spep_3 + 66, tame1, 255 );

--SE
--気弾溜め
SE020 = playSe( spep_3 + 8, 1003 );
setSeVolumeByWorkId( spep_3 + 8, SE020, 78 );
SE021 = playSe( spep_3 + 8, 1296 );
setSeVolumeByWorkId( spep_3 + 8, SE021, 126 );
setPitch( spep_3 + 8, SE021, -900 );
setTimeStretch( SE021, 0.4, 10, 1 );
SE022 = playSe( spep_3 + 8, 1154 );
setPitch( spep_3 + 8, SE022, 200 );
setTimeStretch( SE022, 1.13, 10, 1 );
SE023 = playSe( spep_3 + 8, 1243 );
setSeVolumeByWorkId( spep_3 + 8, SE023, 60 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4=spep_3+66;
------------------------------------------------------
-- 飛び上がって気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tame2, 0, 0, 0 );
setEffMoveKey( spep_4 + 100, tame2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, tame2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame2, 0 );
setEffRotateKey( spep_4 + 100, tame2, 0 );
setEffAlphaKey( spep_4 + 0, tame2, 255 );
setEffAlphaKey( spep_4 + 100, tame2, 255 );

--顔カットインのタイミング指定
spep_x=spep_4 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 200, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  200,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  200,  510);

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
setEffScaleKey(  spep_x +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--SE
--気弾溜め
stopSe( spep_4 + 104, SE021, 0 );
stopSe( spep_4 + 104, SE023, 0 );
SE024 = playSe( spep_4 + 0, 1276 );
setSeVolumeByWorkId( spep_4 + 0, SE024, 0 );
setSeVolumeByWorkId( spep_4 + 1, SE024, 12.4 );
setSeVolumeByWorkId( spep_4 + 2, SE024, 24.8 );
setSeVolumeByWorkId( spep_4 + 3, SE024, 37.2 );
setSeVolumeByWorkId( spep_4 + 4, SE024, 49.6 );
setSeVolumeByWorkId( spep_4 + 5, SE024, 62 );
setSeVolumeByWorkId( spep_4 + 6, SE024, 74 );
setStartTimeMs( SE024,  283 );
setPitch( spep_4 + 0, SE024, 200 );
setTimeStretch( SE024, 1.13, 10, 1 );
SE025 = playSe( spep_4 + 28, 1296 );
setSeVolumeByWorkId( spep_4 + 28, SE025, 0 );
setSeVolumeByWorkId( spep_4 + 29, SE025, 2.6 );
setSeVolumeByWorkId( spep_4 + 30, SE025, 5.2 );
setSeVolumeByWorkId( spep_4 + 31, SE025, 7.8 );
setSeVolumeByWorkId( spep_4 + 32, SE025, 10.4 );
setSeVolumeByWorkId( spep_4 + 33, SE025, 13 );
setSeVolumeByWorkId( spep_4 + 34, SE025, 15.6 );
setSeVolumeByWorkId( spep_4 + 35, SE025, 18.2 );
setSeVolumeByWorkId( spep_4 + 36, SE025, 20.8 );
setSeVolumeByWorkId( spep_4 + 37, SE025, 23.4 );
setSeVolumeByWorkId( spep_4 + 38, SE025, 26 );
setSeVolumeByWorkId( spep_4 + 39, SE025, 28.6 );
setSeVolumeByWorkId( spep_4 + 40, SE025, 32 );
setStartTimeMs( SE025,  450 );
setPitch( spep_4 + 28, SE025, 700 );
setTimeStretch( SE025, 1.47, 10, 1 );

--顔カットイン
SE026 = playSe( spep_x +12, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_4 + 92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5=spep_4+100;
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
--気弾溜め
stopSe( spep_5 + 4, SE025, 0 );

--playSe( spep_5 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;
------------------------------------------------------
-- たくさん気弾投げる
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, kidan, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, kidan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kidan, 0 );
setEffRotateKey( spep_6 + 56, kidan, 0 );
setEffAlphaKey( spep_6 + 0, kidan, 255 );
setEffAlphaKey( spep_6 + 56, kidan, 255 );

--SE
--気弾発射
SE028 = playSe( spep_6 + 0, 1027 );
setSeVolumeByWorkId( spep_6 + 0, SE028, 60 );
SE029 = playSe( spep_6 + 0, 1193 );
stopSe( spep_6 + 28, SE029, 30 );
SE030 = playSe( spep_6 + 0, 1021 );
SE031 = playSe( spep_6 + 0, 1177 );
setSeVolumeByWorkId( spep_6 + 0, SE031, 68 );
SE032 = playSe( spep_6 + 10, 1016 );
setSeVolumeByWorkId( spep_6 + 10, SE032, 65 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_7=spep_6+56;
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 140, finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 140, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 140, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 140, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 140, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 140, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 140, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 140, finish_b, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 66, 1, 0 );

changeAnime( spep_7 + 0, 1, 106 );

setMoveKey( spep_7 + 0, 1, -538.2, 31 , 0 );
setMoveKey( spep_7 + 2, 1, -534.2, 29.7 , 0 );
setMoveKey( spep_7 + 4, 1, -521.7, 25.6 , 0 );
setMoveKey( spep_7 + 6, 1, -499.7, 18.3 , 0 );
setMoveKey( spep_7 + 8, 1, -466.8, 7.5 , 0 );
--setMoveKey( spep_7 + 10, 1, -421.3, -7.5 , 0 );
--setMoveKey( spep_7 + 12, 1, -360.9, -27.4 , 0 );
--setMoveKey( spep_7 + 14, 1, -282.3, -53.3 , 0 );
--setMoveKey( spep_7 + 16, 1, -179.9, -87 , 0 );
--setMoveKey( spep_7 + 18, 1, -43.6, -131.9 , 0 );
setMoveKey( spep_7 + 17, 1, 160, -199.1 , 0 );
setMoveKey( spep_7 + 22, 1, 137.3, -179.1 , 0 );
setMoveKey( spep_7 + 24, 1, 114.5, -159.2 , 0 );
setMoveKey( spep_7 + 26, 1, 93.8, -137.3 , 0 );
setMoveKey( spep_7 + 28, 1, 67, -121.4 , 0 );
setMoveKey( spep_7 + 30, 1, 87.2, -109.6 , 0 );
setMoveKey( spep_7 + 32, 1, 51.4, -155.9 , 0 );
setMoveKey( spep_7 + 34, 1, 69.5, -105.9 , 0 );
setMoveKey( spep_7 + 36, 1, 99.7, -182.2 , 0 );
setMoveKey( spep_7 + 38, 1, 74.7, -132 , 0 );
setMoveKey( spep_7 + 40, 1, 15.7, -155.9 , 0 );
setMoveKey( spep_7 + 42, 1, 46.7, -165.7 , 0 );
setMoveKey( spep_7 + 44, 1, 23.6, -111.6 , 0 );
setMoveKey( spep_7 + 46, 1, 33.7, -146.8 , 0 );
setMoveKey( spep_7 + 48, 1, 29.7, -138 , 0 );
setMoveKey( spep_7 + 50, 1, 41.7, -137.3 , 0 );
setMoveKey( spep_7 + 52, 1, 37.8, -144.5 , 0 );
setMoveKey( spep_7 + 54, 1, 49.8, -143.7 , 0 );
setMoveKey( spep_7 + 56, 1, 45.8, -134.9 , 0 );
setMoveKey( spep_7 + 58, 1, 57.8, -134.1 , 0 );
setMoveKey( spep_7 + 60, 1, 53.9, -141.3 , 0 );
setMoveKey( spep_7 + 62, 1, 65.9, -140.6 , 0 );
setMoveKey( spep_7 + 64, 1, 61.9, -131.8 , 0 );
setMoveKey( spep_7 + 66, 1, 74, -131 , 0 );

setScaleKey( spep_7 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_7 + 66, 1, 0.8, 0.8 );

setRotateKey( spep_7 + 0, 1, 17.1 );
setRotateKey( spep_7 + 2, 1, 17.1 );
setRotateKey( spep_7 + 4, 1, 16.9 );
setRotateKey( spep_7 + 6, 1, 16.8 );
setRotateKey( spep_7 + 8, 1, 16.7 );
setRotateKey( spep_7 + 10, 1, 16.6 );
setRotateKey( spep_7 + 12, 1, 16.5 );
setRotateKey( spep_7 + 14, 1, 16.3 );
setRotateKey( spep_7 + 16, 1, 16.2 );
setRotateKey( spep_7 + 18, 1, 16.1 );
setRotateKey( spep_7 + 20, 1, 16 );
setRotateKey( spep_7 + 22, 1, 6.7 );
setRotateKey( spep_7 + 24, 1, -2.5 );
setRotateKey( spep_7 + 26, 1, -11.7 );
setRotateKey( spep_7 + 28, 1, -20.9 );
setRotateKey( spep_7 + 30, 1, -2.4 );
setRotateKey( spep_7 + 32, 1, 16.1 );
setRotateKey( spep_7 + 34, 1, 34.6 );
setRotateKey( spep_7 + 36, 1, 53.2 );
setRotateKey( spep_7 + 38, 1, 42.8 );
setRotateKey( spep_7 + 40, 1, 32.5 );
setRotateKey( spep_7 + 42, 1, 22.2 );
setRotateKey( spep_7 + 44, 1, 11.9 );
setRotateKey( spep_7 + 66, 1, 11.9 );

--SE
--連続気弾
SE033 = playSe( spep_7 + 18, 1016 );
setSeVolumeByWorkId( spep_7 + 18, SE033, 63 );
SE035 = playSe( spep_7 + 26, 1016 );
setSeVolumeByWorkId( spep_7 + 26, SE035, 64 );
SE037 = playSe( spep_7 + 36, 1016 );
setSeVolumeByWorkId( spep_7 + 36, SE037, 60 );
SE038 = playSe( spep_7 + 50, 1016 );
setSeVolumeByWorkId( spep_7 + 50, SE038, 62 );
SE040 = playSe( spep_7 + 60, 1016 );
setSeVolumeByWorkId( spep_7 + 60, SE040, 65 );
SE041 = playSe( spep_7 + 70, 1016 );
setSeVolumeByWorkId( spep_7 + 70, SE041, 81 );
SE042 = playSe( spep_7 + 76, 1016 );
setSeVolumeByWorkId( spep_7 + 76, SE042, 70 );
SE043 = playSe( spep_7 + 90, 1016 );
setSeVolumeByWorkId( spep_7 + 90, SE043, 56 );
SE044 = playSe( spep_7 + 98, 1016 );
setSeVolumeByWorkId( spep_7 + 98, SE044, 58 );
SE045 = playSe( spep_7 + 108, 1016 );
setSeVolumeByWorkId( spep_7 + 108, SE045, 67 );
SE046 = playSe( spep_7 + 116, 1016 );
setSeVolumeByWorkId( spep_7 + 116, SE046, 58 );

--爆発
SE034 = playSe( spep_7 + 20, 1023 );
SE036 = playSe( spep_7 + 34, 1159 );
SE039 = playSe( spep_7 + 50, 1024 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景

--終わり
dealDamage( spep_7 +20 );
endPhase( spep_7 + 130 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 蹴り
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
kick = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, kick, 0, 0, 0 );
setEffMoveKey( spep_0 + 80, kick, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, kick, -1.0, 1.0 );
setEffScaleKey( spep_0 + 80, kick, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kick, 0 );
setEffRotateKey( spep_0 + 80, kick, 0 );
setEffAlphaKey( spep_0 + 0, kick, 255 );
setEffAlphaKey( spep_0 + 80, kick, 255 );

--SE
--前方ダッシュ
SE001 = playSe( spep_0 + 0, 1182 );
SE002 = playSe( spep_0 + 0, 9 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );


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
--SE
--前方ダッシュ
stopSe( spep_0 + 62, SE002, 16 );

--蹴り振りかぶり
SE003 = playSe( spep_0 + 40, 1116 );
setSeVolumeByWorkId( spep_0 + 40, SE003, 80 );
stopSe( spep_0 + 64, SE003, 22 );
SE004 = playSe( spep_0 + 48, 1004 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+80;
------------------------------------------------------
-- 連続蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 100, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 98, fighting_f, 255 );
setEffAlphaKey( spep_1 + 99, fighting_f, 255 );
setEffAlphaKey( spep_1 + 100, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 100, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 98, fighting_b, 255 );
setEffAlphaKey( spep_1 + 99, fighting_b, 255 );
setEffAlphaKey( spep_1 + 100, fighting_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 106 );
changeAnime( spep_1-3 + 44, 1, 108 );
changeAnime( spep_1-3 + 58, 1, 105 );

setMoveKey( spep_1 + 0, 1, 43, -69.9 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 88, -39.6 , 0 );
setMoveKey( spep_1-3 + 4, 1, 148.9, -21 , 0 );
setMoveKey( spep_1-3 + 6, 1, 118.2, -20.1 , 0 );
setMoveKey( spep_1-3 + 8, 1, 101, -28.6 , 0 );
setMoveKey( spep_1-3 + 10, 1, 74.8, -28.5 , 0 );
setMoveKey( spep_1-3 + 12, 1, 51.5, -39.2 , 0 );
setMoveKey( spep_1-3 + 14, 1, 54.4, -42.7 , 0 );
setMoveKey( spep_1-3 + 16, 1, 50, -40.3 , 0 );
setMoveKey( spep_1-3 + 18, 1, 54.4, -37.1 , 0 );
setMoveKey( spep_1-3 + 20, 1, 52.8, -41 , 0 );
setMoveKey( spep_1-3 + 22, 1, 53.1, -40.4 , 0 );
setMoveKey( spep_1-3 + 24, 1, 53.6, -39.7 , 0 );
setMoveKey( spep_1-3 + 26, 1, 53.9, -39.1 , 0 );
setMoveKey( spep_1-3 + 28, 1, 54.3, -38.5 , 0 );
setMoveKey( spep_1-3 + 30, 1, 54.7, -37.8 , 0 );
setMoveKey( spep_1-3 + 32, 1, 55, -37.2 , 0 );
setMoveKey( spep_1-3 + 34, 1, 55.4, -36.6 , 0 );
setMoveKey( spep_1-3 + 36, 1, 55.8, -35.9 , 0 );
setMoveKey( spep_1-3 + 38, 1, 56.2, -35.3 , 0 );
setMoveKey( spep_1-3 + 40, 1, 56.6, -34.7 , 0 );
setMoveKey( spep_1-3 + 43, 1, 57, -34.1 , 0 );
setMoveKey( spep_1-3 + 44, 1, 17.9, -11 , 0 );
setMoveKey( spep_1-3 + 46, 1, 23.8, -18.1 , 0 );
setMoveKey( spep_1-3 + 48, 1, 22.1, -7.3 , 0 );
setMoveKey( spep_1-3 + 50, 1, 27.2, -12 , 0 );
setMoveKey( spep_1-3 + 52, 1, 21, 4.1 , 0 );
setMoveKey( spep_1-3 + 54, 1, 24.6, 2.3 , 0 );
setMoveKey( spep_1-3 + 57, 1, 21.5, 7.2 , 0 );
setMoveKey( spep_1-3 + 58, 1, 169.2, 244.6 , 0 );
setMoveKey( spep_1-3 + 60, 1, 137.4, 231.1 , 0 );
setMoveKey( spep_1-3 + 62, 1, 121.2, 214.2 , 0 );
setMoveKey( spep_1-3 + 64, 1, 96.9, 194.8 , 0 );
setMoveKey( spep_1-3 + 66, 1, 69.9, 167 , 0 );
setMoveKey( spep_1-3 + 68, 1, 76.3, 172.2 , 0 );
setMoveKey( spep_1-3 + 70, 1, 78.5, 173.5 , 0 );
setMoveKey( spep_1-3 + 72, 1, 82.1, 177.4 , 0 );
setMoveKey( spep_1-3 + 74, 1, 85.7, 181.4 , 0 );
setMoveKey( spep_1-3 + 76, 1, 89.2, 185.3 , 0 );
setMoveKey( spep_1-3 + 78, 1, 92.8, 189.3 , 0 );
setMoveKey( spep_1-3 + 80, 1, 94.5, 191.4 , 0 );
setMoveKey( spep_1-3 + 82, 1, 96.2, 193.5 , 0 );
setMoveKey( spep_1-3 + 84, 1, 98, 195.6 , 0 );
setMoveKey( spep_1-3 + 86, 1, 99.7, 197.7 , 0 );
setMoveKey( spep_1-3 + 88, 1, 101.4, 199.8 , 0 );
setMoveKey( spep_1-3 + 90, 1, 103.2, 201.9 , 0 );
setMoveKey( spep_1-3 + 92, 1, 104.9, 204 , 0 );
setMoveKey( spep_1-3 + 94, 1, 106.7, 206.1 , 0 );
setMoveKey( spep_1-3 + 96, 1, 108.4, 208.2 , 0 );
setMoveKey( spep_1-3 + 98, 1, 110.1, 210.3 , 0 );
setMoveKey( spep_1-3 + 100, 1, 111.8, 212.4 , 0 );
setMoveKey( spep_1-3 + 102, 1, 113.6, 214.5 , 0 );
--setMoveKey( spep_1-3 + 104, 1, 115.3, 216.6 , 0 );

setScaleKey( spep_1 + 0, 1,1.32,1.32);
--setScaleKey( spep_1-3 + 2,1,1.71,1.71);
setScaleKey( spep_1-3 + 4,1,2.11,2.11);
setScaleKey( spep_1-3 + 6,1,1.92,1.92);
setScaleKey( spep_1-3 + 8,1,1.71,1.71);
setScaleKey( spep_1-3 + 10, 1,1.51,1.51);
setScaleKey( spep_1-3 + 12, 1,1.32,1.32);
setScaleKey( spep_1-3 + 43, 1,1.32,1.32);
setScaleKey( spep_1-3 + 44, 1,1.42,1.42);
setScaleKey( spep_1-3 + 57, 1,1.42,1.42);
setScaleKey( spep_1-3 + 58, 1,1.53,1.53);
setScaleKey( spep_1-3 + 60, 1,1.36,1.36);
setScaleKey( spep_1-3 + 62, 1,1.21,1.21);
setScaleKey( spep_1-3 + 64, 1,1.05,1.05);
setScaleKey( spep_1-3 + 66, 1,0.9,0.9);
setScaleKey( spep_1-3 + 68, 1,0.81,0.81);
setScaleKey( spep_1-3 + 70, 1,0.72,0.72);
setScaleKey( spep_1-3 + 72, 1,0.63,0.63);
setScaleKey( spep_1-3 + 74, 1,0.54,0.54);
setScaleKey( spep_1-3 + 76, 1,0.45,0.45);
setScaleKey( spep_1-3 + 78, 1,0.36,0.36);
setScaleKey( spep_1-3 + 80, 1,0.33,0.33);
setScaleKey( spep_1-3 + 82, 1,0.31,0.31);
setScaleKey( spep_1-3 + 84, 1,0.28,0.28);
setScaleKey( spep_1-3 + 86, 1,0.26,0.26);
setScaleKey( spep_1-3 + 88, 1,0.24,0.24);
setScaleKey( spep_1-3 + 90, 1,0.21,0.21);
setScaleKey( spep_1-3 + 92, 1,0.2,0.2);
setScaleKey( spep_1-3 + 94, 1,0.18,0.18);
setScaleKey( spep_1-3 + 96, 1,0.15,0.15);
setScaleKey( spep_1-3 + 98, 1,0.13,0.13);
setScaleKey( spep_1-3 + 100,1,0.1,0.1);
setScaleKey( spep_1-3 + 102,1,0.08,0.08);
--setScaleKey( spep_1-3 + 104,1,0.06,0.06);

setRotateKey( spep_1-3 + 0, 1, -52.3 );
setRotateKey( spep_1-3 + 2, 1, -50.8 );
setRotateKey( spep_1-3 + 4, 1, -49.2 );
setRotateKey( spep_1-3 + 6, 1, -48.8 );
setRotateKey( spep_1-3 + 8, 1, -48.4 );
setRotateKey( spep_1-3 + 10, 1, -48 );
setRotateKey( spep_1-3 + 12, 1, -47.6 );
setRotateKey( spep_1-3 + 14, 1, -47.1 );
setRotateKey( spep_1-3 + 16, 1, -46.7 );
setRotateKey( spep_1-3 + 18, 1, -46.3 );
setRotateKey( spep_1-3 + 20, 1, -45.9 );
setRotateKey( spep_1-3 + 22, 1, -45.4 );
setRotateKey( spep_1-3 + 24, 1, -45 );
setRotateKey( spep_1-3 + 26, 1, -44.6 );
setRotateKey( spep_1-3 + 28, 1, -44.2 );
setRotateKey( spep_1-3 + 30, 1, -43.8 );
setRotateKey( spep_1-3 + 32, 1, -43.3 );
setRotateKey( spep_1-3 + 34, 1, -42.9 );
setRotateKey( spep_1-3 + 36, 1, -42.5 );
setRotateKey( spep_1-3 + 38, 1, -42.1 );
setRotateKey( spep_1-3 + 40, 1, -41.7 );
setRotateKey( spep_1-3 + 43, 1, -41.2 );
setRotateKey( spep_1-3 + 44, 1, -31.8 );
setRotateKey( spep_1-3 + 57, 1, -31.8 );
setRotateKey( spep_1-3 + 58, 1, 9.7 );
setRotateKey( spep_1-3 + 102, 1, 9.7 );

--SE
--足払い
SE005 = playSe( spep_1 + 6, 1010 );
SE006 = playSe( spep_1 + 6, 1110 );

--ハイキック
SE007 = playSe( spep_1 + 42, 1189 );
SE008 = playSe( spep_1 + 46, 1001 );
setSeVolumeByWorkId( spep_1 + 46, SE008, 65 );
stopSe( spep_1 + 60, SE008, 6 );
SE009 = playSe( spep_1 + 46, 1009 );
setSeVolumeByWorkId( spep_1 + 46, SE009, 79 );
stopSe( spep_1 + 60, SE009, 6 );

--ジャンプハイキック
SE010 = playSe( spep_1 + 66, 1010 );
setSeVolumeByWorkId( spep_1 + 66, SE010, 86 );
SE011 = playSe( spep_1 + 68, 1001 );
setSeVolumeByWorkId( spep_1 + 68, SE011, 73 );
SE012 = playSe( spep_1 + 68, 1110 );
setSeVolumeByWorkId( spep_1 + 68, SE012, 86 );

--敵追いかける
SE013 = playSe( spep_1 + 86, 1183,"",0.5 );
SE014 = playSe( spep_1 + 96, 1182 );
setSeVolumeByWorkId( spep_1 + 96, SE014, 75 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 102, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_2=spep_1+100;
------------------------------------------------------
-- 手刀
------------------------------------------------------
-- ** エフェクト等 ** --
knifehand_f = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, knifehand_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 84, knifehand_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, knifehand_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 84, knifehand_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, knifehand_f, 0 );
setEffRotateKey( spep_2 + 84, knifehand_f, 0 );
setEffAlphaKey( spep_2 + 0, knifehand_f, 255 );
setEffAlphaKey( spep_2 + 82, knifehand_f, 255 );
setEffAlphaKey( spep_2 + 83, knifehand_f, 255 );
setEffAlphaKey( spep_2 + 84, knifehand_f, 0 );

-- ** エフェクト等 ** --
knifehand_b = entryEffect( spep_2 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, knifehand_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 84, knifehand_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, knifehand_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 84, knifehand_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, knifehand_b, 0 );
setEffRotateKey( spep_2 + 84, knifehand_b, 0 );
setEffAlphaKey( spep_2 + 0, knifehand_b, 255 );
setEffAlphaKey( spep_2 + 82, knifehand_b, 255 );
setEffAlphaKey( spep_2 + 83, knifehand_b, 255 );
setEffAlphaKey( spep_2 + 84, knifehand_b, 0 );

--敵の動き
setDisp( spep_2-3 + 50, 1, 0 );

changeAnime( spep_2 + 0, 1, 107 );
changeAnime( spep_2-3 + 36, 1, 7 );

a=40;
b=300;

setMoveKey( spep_2 + 0,1,-231.2,-107.5-a,0);
--setMoveKey( spep_2-3 + 2,1,-208.1,-93.2-a,0);
setMoveKey( spep_2-3 + 4,1,-184.9,-93.2-a,0);
setMoveKey( spep_2-3 + 6,1,-161.8,-85-a,0);
setMoveKey( spep_2-3 + 8,1,-138.6,-76.9-a,0);
setMoveKey( spep_2-3 + 10,1,-115.5,-68.8-a,0);
setMoveKey( spep_2-3 + 12,1,-92.3,-60.7-a,0);
setMoveKey( spep_2-3 + 14,1,-69.2,-52.7-a,0);
setMoveKey( spep_2-3 + 16,1,-46,-44.7-a,0);
setMoveKey( spep_2-3 + 18,1,-22.9,-36.7-a,0);
--setMoveKey( spep_2-3 + 20,1,-21.5,-28.7-a,0);
--setMoveKey( spep_2-3 + 21,1,-21.5,-29.2-a,0);
--setMoveKey( spep_2-3 + 22,1,-20.1,-29.6-a,0);
--setMoveKey( spep_2-3 + 24,1,-18.7,-29.6-a,0);
--setMoveKey( spep_2-3 + 26,1,-17.4,-30.1-a,0);
--setMoveKey( spep_2-3 + 28,1,-16,-30.5-a,0);
--setMoveKey( spep_2-3 + 30,1,-14.7,-31-a,0);
--setMoveKey( spep_2-3 + 32,1,-13.3,-39.8-a,0);
--setMoveKey( spep_2-3 + 34,1,-11.9,-30.5-a,0);
setMoveKey( spep_2-3 + 35,1,1.9,-29.8-a,0);

setMoveKey( spep_2-3 + 36, 1, -38, -57.6-a , 0 );
setMoveKey( spep_2-3 + 38, 1, -68.2, -74.8-a , 0 );
setMoveKey( spep_2-3 + 40, 1, -85.7, -117.5-a , 0 );
setMoveKey( spep_2-3 + 42, 1, -120.2, -130.5-a , 0 );
--setMoveKey( spep_2-3 + 44, 1, -137.7, -164.7-a , 0 );
--setMoveKey( spep_2-3 + 46, 1, -168, -181.9-a , 0 );
--setMoveKey( spep_2-3 + 48, 1, -198.3, -203.4-a , 0 );
--setMoveKey( spep_2-3 + 50, 1, -215.8-b, -246.1-a , 0 );
--setMoveKey( spep_2-3 + 52, 1, -250.3-b, -259.1-a , 0 );
--setMoveKey( spep_2-3 + 54, 1, -267.8-b, -293.3-a , 0 );
--setMoveKey( spep_2-3 + 56, 1, -298-b, -310.5-a-30 , 0 );
setMoveKey( spep_2-3 + 50, 1, -324-b, -340.5-a-60 , 0 );

setScaleKey( spep_2 + 0,1,0.3,0.3);
setScaleKey( spep_2-3 + 2,1,0.38,0.38);
setScaleKey( spep_2-3 + 4,1,0.44,0.44);
setScaleKey( spep_2-3 + 6,1,0.52,0.52);
setScaleKey( spep_2-3 + 8,1,0.6,0.6);
setScaleKey( spep_2-3 + 10,1,0.68,0.68);
setScaleKey( spep_2-3 + 12,1,0.74,0.74);
setScaleKey( spep_2-3 + 14,1,0.82,0.82);
setScaleKey( spep_2-3 + 16,1,0.9,0.9);
setScaleKey( spep_2-3 + 18,1,0.96,0.96);
setScaleKey( spep_2-3 + 20,1,0.96,0.96);
setScaleKey( spep_2-3 + 22,1,0.98,0.98);
setScaleKey( spep_2-3 + 24,1,0.98,0.98);
setScaleKey( spep_2-3 + 26,1,0.98,0.98);
setScaleKey( spep_2-3 + 28,1,1,1);
setScaleKey( spep_2-3 + 30,1,1,1);
setScaleKey( spep_2-3 + 32,1,1,1);
setScaleKey( spep_2-3 + 35,1,1,1);
setScaleKey( spep_2-3 + 36,1,1.27,1.27);
setScaleKey( spep_2-3 + 38,1,1.54,1.54);
setScaleKey( spep_2-3 + 40,1,1.8,1.8);
setScaleKey( spep_2-3 + 42,1,2.07,2.07);
setScaleKey( spep_2-3 + 44,1,2.32,2.32);
setScaleKey( spep_2-3 + 46,1,2.57,2.57);
setScaleKey( spep_2-3 + 48,1,2.84,2.84);
setScaleKey( spep_2-3 + 50,1,3.09,3.09);

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 50, 1, 0 );

--SE
--敵追いかける
stopSe( spep_2 + 42, SE013, 8 );
SE015 = playSe( spep_2 + 0, 9 );
setSeVolumeByWorkId( spep_2 + 0, SE015, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE015, 5.6 );
setSeVolumeByWorkId( spep_2 + 2, SE015, 11.2 );
setSeVolumeByWorkId( spep_2 + 3, SE015, 16.8 );
setSeVolumeByWorkId( spep_2 + 4, SE015, 22.4 );
setSeVolumeByWorkId( spep_2 + 5, SE015, 28 );
setSeVolumeByWorkId( spep_2 + 6, SE015, 33.6 );
setSeVolumeByWorkId( spep_2 + 7, SE015, 39.2 );
setSeVolumeByWorkId( spep_2 + 8, SE015, 44.8 );
setSeVolumeByWorkId( spep_2 + 9, SE015, 50.4 );
setSeVolumeByWorkId( spep_2 + 10, SE015, 56 );
setSeVolumeByWorkId( spep_2 + 11, SE015, 61.6 );
setSeVolumeByWorkId( spep_2 + 12, SE015, 67.2 );
setSeVolumeByWorkId( spep_2 + 13, SE015, 72.8 );
setSeVolumeByWorkId( spep_2 + 14, SE015, 78.4 );
setSeVolumeByWorkId( spep_2 + 15, SE015, 84 );
setSeVolumeByWorkId( spep_2 + 16, SE015, 89.6 );
setSeVolumeByWorkId( spep_2 + 17, SE015, 95.2 );
setSeVolumeByWorkId( spep_2 + 18, SE015, 100 );
stopSe( spep_2 + 42, SE015, 6 );

--裏拳
SE016 = playSe( spep_2 + 38, 1003 );
setSeVolumeByWorkId( spep_2 + 38, SE016, 69 );
SE017 = playSe( spep_2 + 42, 1009 );
SE018 = playSe( spep_2 + 44, 1000 );
SE019 = playSe( spep_2 + 44, 1110 );
setSeVolumeByWorkId( spep_2 + 44, SE019, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3=spep_2+84;
------------------------------------------------------
-- 手元に気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame1 = entryEffect( spep_3 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame1, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, tame1, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame1, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, tame1, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame1, 0 );
setEffRotateKey( spep_3 + 66, tame1, 0 );
setEffAlphaKey( spep_3 + 0, tame1, 255 );
setEffAlphaKey( spep_3 + 66, tame1, 255 );

--SE
--気弾溜め
SE020 = playSe( spep_3 + 8, 1003 );
setSeVolumeByWorkId( spep_3 + 8, SE020, 78 );
SE021 = playSe( spep_3 + 8, 1296 );
setSeVolumeByWorkId( spep_3 + 8, SE021, 126 );
setPitch( spep_3 + 8, SE021, -900 );
setTimeStretch( SE021, 0.4, 10, 1 );
SE022 = playSe( spep_3 + 8, 1154 );
setPitch( spep_3 + 8, SE022, 200 );
setTimeStretch( SE022, 1.13, 10, 1 );
SE023 = playSe( spep_3 + 8, 1243 );
setSeVolumeByWorkId( spep_3 + 8, SE023, 60 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4=spep_3+66;
------------------------------------------------------
-- 飛び上がって気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_4 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tame2, 0, 0, 0 );
setEffMoveKey( spep_4 + 100, tame2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, tame2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame2, 0 );
setEffRotateKey( spep_4 + 100, tame2, 0 );
setEffAlphaKey( spep_4 + 0, tame2, 255 );
setEffAlphaKey( spep_4 + 100, tame2, 255 );

--顔カットインのタイミング指定
spep_x=spep_4 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 200, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  200,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  200,  510);

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
setEffScaleKey(  spep_x +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--気弾溜め
stopSe( spep_4 + 104, SE021, 0 );
stopSe( spep_4 + 104, SE023, 0 );
SE024 = playSe( spep_4 + 0, 1276 );
setSeVolumeByWorkId( spep_4 + 0, SE024, 0 );
setSeVolumeByWorkId( spep_4 + 1, SE024, 12.4 );
setSeVolumeByWorkId( spep_4 + 2, SE024, 24.8 );
setSeVolumeByWorkId( spep_4 + 3, SE024, 37.2 );
setSeVolumeByWorkId( spep_4 + 4, SE024, 49.6 );
setSeVolumeByWorkId( spep_4 + 5, SE024, 62 );
setSeVolumeByWorkId( spep_4 + 6, SE024, 74 );
setStartTimeMs( SE024,  283 );
setPitch( spep_4 + 0, SE024, 200 );
setTimeStretch( SE024, 1.13, 10, 1 );
SE025 = playSe( spep_4 + 28, 1296 );
setSeVolumeByWorkId( spep_4 + 28, SE025, 0 );
setSeVolumeByWorkId( spep_4 + 29, SE025, 2.6 );
setSeVolumeByWorkId( spep_4 + 30, SE025, 5.2 );
setSeVolumeByWorkId( spep_4 + 31, SE025, 7.8 );
setSeVolumeByWorkId( spep_4 + 32, SE025, 10.4 );
setSeVolumeByWorkId( spep_4 + 33, SE025, 13 );
setSeVolumeByWorkId( spep_4 + 34, SE025, 15.6 );
setSeVolumeByWorkId( spep_4 + 35, SE025, 18.2 );
setSeVolumeByWorkId( spep_4 + 36, SE025, 20.8 );
setSeVolumeByWorkId( spep_4 + 37, SE025, 23.4 );
setSeVolumeByWorkId( spep_4 + 38, SE025, 26 );
setSeVolumeByWorkId( spep_4 + 39, SE025, 28.6 );
setSeVolumeByWorkId( spep_4 + 40, SE025, 32 );
setStartTimeMs( SE025,  450 );
setPitch( spep_4 + 28, SE025, 700 );
setTimeStretch( SE025, 1.47, 10, 1 );

--顔カットイン
SE026 = playSe( spep_x +12, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_4 + 92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5=spep_4+100;
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
--気弾溜め
stopSe( spep_5 + 4, SE025, 0 );

playSe( spep_5 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;
------------------------------------------------------
-- たくさん気弾投げる
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_6 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, kidan, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, kidan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kidan, 0 );
setEffRotateKey( spep_6 + 56, kidan, 0 );
setEffAlphaKey( spep_6 + 0, kidan, 255 );
setEffAlphaKey( spep_6 + 56, kidan, 255 );

--SE
--気弾発射
SE028 = playSe( spep_6 + 0, 1027 );
setSeVolumeByWorkId( spep_6 + 0, SE028, 60 );
SE029 = playSe( spep_6 + 0, 1193 );
stopSe( spep_6 + 28, SE029, 30 );
SE030 = playSe( spep_6 + 0, 1021 );
SE031 = playSe( spep_6 + 0, 1177 );
setSeVolumeByWorkId( spep_6 + 0, SE031, 68 );
SE032 = playSe( spep_6 + 10, 1016 );
setSeVolumeByWorkId( spep_6 + 10, SE032, 65 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_7=spep_6+56;
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 140, finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 140, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 140, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 140, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 140, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 140, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 140, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 140, finish_b, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 66, 1, 0 );

changeAnime( spep_7 + 0, 1, 106 );

setMoveKey( spep_7 + 0, 1, -538.2, 31 , 0 );
setMoveKey( spep_7 + 2, 1, -534.2, 29.7 , 0 );
setMoveKey( spep_7 + 4, 1, -521.7, 25.6 , 0 );
setMoveKey( spep_7 + 6, 1, -499.7, 18.3 , 0 );
setMoveKey( spep_7 + 8, 1, -466.8, 7.5 , 0 );
--setMoveKey( spep_7 + 10, 1, -421.3, -7.5 , 0 );
--setMoveKey( spep_7 + 12, 1, -360.9, -27.4 , 0 );
--setMoveKey( spep_7 + 14, 1, -282.3, -53.3 , 0 );
--setMoveKey( spep_7 + 16, 1, -179.9, -87 , 0 );
--setMoveKey( spep_7 + 18, 1, -43.6, -131.9 , 0 );
setMoveKey( spep_7 + 17, 1, 160, -199.1 , 0 );
setMoveKey( spep_7 + 22, 1, 137.3, -179.1 , 0 );
setMoveKey( spep_7 + 24, 1, 114.5, -159.2 , 0 );
setMoveKey( spep_7 + 26, 1, 93.8, -137.3 , 0 );
setMoveKey( spep_7 + 28, 1, 67, -121.4 , 0 );
setMoveKey( spep_7 + 30, 1, 87.2, -109.6 , 0 );
setMoveKey( spep_7 + 32, 1, 51.4, -155.9 , 0 );
setMoveKey( spep_7 + 34, 1, 69.5, -105.9 , 0 );
setMoveKey( spep_7 + 36, 1, 99.7, -182.2 , 0 );
setMoveKey( spep_7 + 38, 1, 74.7, -132 , 0 );
setMoveKey( spep_7 + 40, 1, 15.7, -155.9 , 0 );
setMoveKey( spep_7 + 42, 1, 46.7, -165.7 , 0 );
setMoveKey( spep_7 + 44, 1, 23.6, -111.6 , 0 );
setMoveKey( spep_7 + 46, 1, 33.7, -146.8 , 0 );
setMoveKey( spep_7 + 48, 1, 29.7, -138 , 0 );
setMoveKey( spep_7 + 50, 1, 41.7, -137.3 , 0 );
setMoveKey( spep_7 + 52, 1, 37.8, -144.5 , 0 );
setMoveKey( spep_7 + 54, 1, 49.8, -143.7 , 0 );
setMoveKey( spep_7 + 56, 1, 45.8, -134.9 , 0 );
setMoveKey( spep_7 + 58, 1, 57.8, -134.1 , 0 );
setMoveKey( spep_7 + 60, 1, 53.9, -141.3 , 0 );
setMoveKey( spep_7 + 62, 1, 65.9, -140.6 , 0 );
setMoveKey( spep_7 + 64, 1, 61.9, -131.8 , 0 );
setMoveKey( spep_7 + 66, 1, 74, -131 , 0 );

setScaleKey( spep_7 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_7 + 66, 1, 0.8, 0.8 );

setRotateKey( spep_7 + 0, 1, 17.1 );
setRotateKey( spep_7 + 2, 1, 17.1 );
setRotateKey( spep_7 + 4, 1, 16.9 );
setRotateKey( spep_7 + 6, 1, 16.8 );
setRotateKey( spep_7 + 8, 1, 16.7 );
setRotateKey( spep_7 + 10, 1, 16.6 );
setRotateKey( spep_7 + 12, 1, 16.5 );
setRotateKey( spep_7 + 14, 1, 16.3 );
setRotateKey( spep_7 + 16, 1, 16.2 );
setRotateKey( spep_7 + 18, 1, 16.1 );
setRotateKey( spep_7 + 20, 1, 16 );
setRotateKey( spep_7 + 22, 1, 6.7 );
setRotateKey( spep_7 + 24, 1, -2.5 );
setRotateKey( spep_7 + 26, 1, -11.7 );
setRotateKey( spep_7 + 28, 1, -20.9 );
setRotateKey( spep_7 + 30, 1, -2.4 );
setRotateKey( spep_7 + 32, 1, 16.1 );
setRotateKey( spep_7 + 34, 1, 34.6 );
setRotateKey( spep_7 + 36, 1, 53.2 );
setRotateKey( spep_7 + 38, 1, 42.8 );
setRotateKey( spep_7 + 40, 1, 32.5 );
setRotateKey( spep_7 + 42, 1, 22.2 );
setRotateKey( spep_7 + 44, 1, 11.9 );
setRotateKey( spep_7 + 66, 1, 11.9 );

--SE
--連続気弾
SE033 = playSe( spep_7 + 18, 1016 );
setSeVolumeByWorkId( spep_7 + 18, SE033, 63 );
SE035 = playSe( spep_7 + 26, 1016 );
setSeVolumeByWorkId( spep_7 + 26, SE035, 64 );
SE037 = playSe( spep_7 + 36, 1016 );
setSeVolumeByWorkId( spep_7 + 36, SE037, 60 );
SE038 = playSe( spep_7 + 50, 1016 );
setSeVolumeByWorkId( spep_7 + 50, SE038, 62 );
SE040 = playSe( spep_7 + 60, 1016 );
setSeVolumeByWorkId( spep_7 + 60, SE040, 65 );
SE041 = playSe( spep_7 + 70, 1016 );
setSeVolumeByWorkId( spep_7 + 70, SE041, 81 );
SE042 = playSe( spep_7 + 76, 1016 );
setSeVolumeByWorkId( spep_7 + 76, SE042, 70 );
SE043 = playSe( spep_7 + 90, 1016 );
setSeVolumeByWorkId( spep_7 + 90, SE043, 56 );
SE044 = playSe( spep_7 + 98, 1016 );
setSeVolumeByWorkId( spep_7 + 98, SE044, 58 );
SE045 = playSe( spep_7 + 108, 1016 );
setSeVolumeByWorkId( spep_7 + 108, SE045, 67 );
SE046 = playSe( spep_7 + 116, 1016 );
setSeVolumeByWorkId( spep_7 + 116, SE046, 58 );

--爆発
SE034 = playSe( spep_7 + 20, 1023 );
SE036 = playSe( spep_7 + 34, 1159 );
SE039 = playSe( spep_7 + 50, 1024 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景

--終わり
dealDamage( spep_7 +20 );
endPhase( spep_7 + 130 );
end