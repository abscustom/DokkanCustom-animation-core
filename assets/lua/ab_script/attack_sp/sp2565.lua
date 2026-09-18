--1026520：SSR_孫悟空_メテオコンビネーション
--sp_effect_a1_00399
--sp2565

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
SP_01 = 161813; --セリフカットイン	ef_001		UR、SSRと共通
SP_02 = 161818;	--カード後～フィニッシュ　前面	ef_004		SSR
SP_02b = 161820;	--カード後～フィニッシュ　背面	ef_005		SSR

--エフェクト(てき)
SP_02r = 161819; --カード後～フィニッシュ　前面　敵側	ef_004r		SSR
SP_02br = 161821; --カード後～フィニッシュ　背面　　敵側	ef_005r		SSR

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5136,   0);
setMoveKey(   1,   0,    0, -5136,   0);
setMoveKey(   2,   0,    0, -5136,   0);
setMoveKey(   3,   0,    0, -5136,   0);
setMoveKey(   4,   0,    0, -5136,   0);
setMoveKey(   5,   0,    0, -5136,   0);
setMoveKey(   6,   0,    0, -5136,   0);
setScaleKey(  0,   0,  1.6, 1.6);
setScaleKey(  1,   0,  1.6, 1.6);
setScaleKey(  2,   0,  1.6, 1.6);
setScaleKey(  3,   0,  1.6, 1.6);
setScaleKey(  4,   0,  1.6, 1.6);
setScaleKey(  5,   0,  1.6, 1.6);
setScaleKey(  6,   0,  1.6, 1.6);
setRotateKey( 0,   0,  0);
setRotateKey( 1,   0,  0);
setRotateKey( 2,   0,  0);
setRotateKey( 3,   0,  0);
setRotateKey( 4,   0,  0);
setRotateKey( 5,   0,  0);
setRotateKey( 6,   0,  0);

setMoveKey(   0,   1,    0, -5136,   0);
setMoveKey(   1,   1,    0, -5136,   0);
setMoveKey(   2,   1,    0, -5136,   0);
setMoveKey(   3,   1,    0, -5136,   0);
setMoveKey(   4,   1,    0, -5136,   0);
setMoveKey(   5,   1,    0, -5136,   0);
setMoveKey(   6,   1,    0, -5136,   0);
setScaleKey(  0,   1,  1.6, 1.6);
setScaleKey(  1,   1,  1.6, 1.6);
setScaleKey(  2,   1,  1.6, 1.6);
setScaleKey(  3,   1,  1.6, 1.6);
setScaleKey(  4,   1,  1.6, 1.6);
setScaleKey(  5,   1,  1.6, 1.6);
setScaleKey(  6,   1,  1.6, 1.6);
setRotateKey( 0,   1,  0);
setRotateKey( 1,   1,  0);
setRotateKey( 2,   1,  0);
setRotateKey( 3,   1,  0);
setRotateKey( 4,   1,  0);
setRotateKey( 5,   1,  0);
setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- セリフカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 100, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 100, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 100, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 100, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1390 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 100 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--拳握る
SE002 = playSeVer2( spep_0 + 12, 1233, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 22, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE003, 67 );

-- ** 次の準備 ** --
spep_c = spep_0 + 100;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_1 = spep_c + 94;

-------------------------------------------------
-- カード後～フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 390, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 390, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 390, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 390, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 390, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 390, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 390, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 390, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 390 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--手つく
SE005 = playSeVer2( spep_1 + 12, 1377, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 16, 1192, "",spep_1 + 42, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 16, SE006, 71 );

--クラウチングスタート
SE007 = playSeVer2( spep_1 + 50, 1004, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 50, 1330, "",spep_1 + 88, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 50, SE008, 46 );

--走ってくる
SE009 = playSeVer2( spep_1 + 82, 1167, "",spep_1 + 128, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 82, SE009, 45 );
SE010 = playSeVer2( spep_1 + 82, 9, "",spep_1 + 160, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 82, SE010, 71 );
SE011 = playSeVer2( spep_1 + 86, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE011, 141 );
SE012 = playSeVer2( spep_1 + 96, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 96, SE012, 150 );
SE013 = playSeVer2( spep_1 + 106, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 106, SE013, 157 );
SE014 = playSeVer2( spep_1 + 118, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 118, SE014, 141 );

--とびかかる
SE015 = playSeVer2( spep_1 + 122, 1117, "",spep_1 + 164, 0, 8, -1);
SE016 = playSeVer2( spep_1 + 122, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 144; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 敵キャラクター ** --
-- 敵の動き1 --
setDisp( spep_1 -1 + 150, 1, 1 );
setDisp( spep_1 -1 + 210, 1, 0 );

changeAnime( spep_1 -1 + 150, 1, 102 );
changeAnime( spep_1 -1 + 166, 1, 107 );

setMoveKey( spep_1 -1 + 150, 1, 118.1, -300.8 , 0 );
setMoveKey( spep_1 -1 + 165, 1, 118.1, -300.8 , 0 );
setMoveKey( spep_1 -1 + 166, 1, 45, 7.8 , 0 );
setMoveKey( spep_1 -1 + 167, 1, 45, 7.8 , 0 );
setMoveKey( spep_1 -1 + 168, 1, 72, -18.2 , 0 );
setMoveKey( spep_1 -1 + 169, 1, 72, -18.2 , 0 );
setMoveKey( spep_1 -1 + 170, 1, 80.8, 0 , 0 );
setMoveKey( spep_1 -1 + 171, 1, 80.8, 0 , 0 );
setMoveKey( spep_1 -1 + 172, 1, 79.2, -13 , 0 );
setMoveKey( spep_1 -1 + 173, 1, 79.2, -13 , 0 );
setMoveKey( spep_1 -1 + 174, 1, 101, 0 , 0 );
setMoveKey( spep_1 -1 + 175, 1, 101, 0 , 0 );
setMoveKey( spep_1 -1 + 176, 1, 104.7, -15.6 , 0 );
setMoveKey( spep_1 -1 + 177, 1, 104.7, -15.6 , 0 );
setMoveKey( spep_1 -1 + 178, 1, 121.3, -7.8 , 0 );
setMoveKey( spep_1 -1 + 179, 1, 121.3, -7.8 , 0 );
setMoveKey( spep_1 -1 + 180, 1, 132.7, -7.8 , 0 );
setMoveKey( spep_1 -1 + 181, 1, 132.7, -7.8 , 0 );
setMoveKey( spep_1 -1 + 182, 1, 144.1, -7.8 , 0 );
setMoveKey( spep_1 -1 + 183, 1, 144.1, -7.8 , 0 );
setMoveKey( spep_1 -1 + 184, 1, 155.5, -7.8 , 0 );
setMoveKey( spep_1 -1 + 185, 1, 155.5, -7.8 , 0 );
setMoveKey( spep_1 -1 + 186, 1, 167, -7.8 , 0 );
setMoveKey( spep_1 -1 + 187, 1, 167, -7.8 , 0 );
setMoveKey( spep_1 -1 + 188, 1, 178.4, -7.8 , 0 );
setMoveKey( spep_1 -1 + 189, 1, 178.4, -7.8 , 0 );
setMoveKey( spep_1 -1 + 190, 1, 189.8, -7.8 , 0 );
setMoveKey( spep_1 -1 + 191, 1, 189.8, -7.8 , 0 );
setMoveKey( spep_1 -1 + 192, 1, 201.2, -7.8 , 0 );
setMoveKey( spep_1 -1 + 193, 1, 201.2, -7.8 , 0 );
setMoveKey( spep_1 -1 + 194, 1, 212.7, -7.8 , 0 );
setMoveKey( spep_1 -1 + 195, 1, 212.7, -7.8 , 0 );
setMoveKey( spep_1 -1 + 196, 1, 224.1, -7.8 , 0 );
setMoveKey( spep_1 -1 + 197, 1, 224.1, -7.8 , 0 );
setMoveKey( spep_1 -1 + 198, 1, 235.5, -7.8 , 0 );
setMoveKey( spep_1 -1 + 199, 1, 235.5, -7.8 , 0 );
setMoveKey( spep_1 -1 + 200, 1, 246.9, -7.8 , 0 );
setMoveKey( spep_1 -1 + 201, 1, 246.9, -7.8 , 0 );
setMoveKey( spep_1 -1 + 202, 1, 258.3, -7.8 , 0 );
setMoveKey( spep_1 -1 + 203, 1, 258.3, -7.8 , 0 );
setMoveKey( spep_1 -1 + 204, 1, 269.8, -7.8 , 0 );
setMoveKey( spep_1 -1 + 205, 1, 269.8, -7.8 , 0 );
setMoveKey( spep_1 -1 + 206, 1, 281.2, -7.8 , 0 );
setMoveKey( spep_1 -1 + 207, 1, 281.2, -7.8 , 0 );
setMoveKey( spep_1 -1 + 208, 1, 292.6, -7.8 , 0 );
setMoveKey( spep_1 -1 + 209, 1, 292.6, -7.8 , 0 );
setMoveKey( spep_1 -1 + 210, 1, 127.7, -4.4 , 0 );

setScaleKey( spep_1 -1 + 150, 1, 5, 5 );
setScaleKey( spep_1 -1 + 165, 1, 5, 5 );
setScaleKey( spep_1 -1 + 166, 1, 1.6, 1.6 );
setScaleKey( spep_1 -1 + 167, 1, 1.6, 1.6 );
setScaleKey( spep_1 -1 + 168, 1, 1.61, 1.61 );
setScaleKey( spep_1 -1 + 169, 1, 1.61, 1.61 );
setScaleKey( spep_1 -1 + 170, 1, 1.63, 1.63 );
setScaleKey( spep_1 -1 + 171, 1, 1.63, 1.63 );
setScaleKey( spep_1 -1 + 172, 1, 1.64, 1.64 );
setScaleKey( spep_1 -1 + 173, 1, 1.64, 1.64 );
setScaleKey( spep_1 -1 + 174, 1, 1.65, 1.65 );
setScaleKey( spep_1 -1 + 175, 1, 1.65, 1.65 );
setScaleKey( spep_1 -1 + 176, 1, 1.67, 1.67 );
setScaleKey( spep_1 -1 + 177, 1, 1.67, 1.67 );
setScaleKey( spep_1 -1 + 178, 1, 1.68, 1.68 );
setScaleKey( spep_1 -1 + 179, 1, 1.68, 1.68 );
setScaleKey( spep_1 -1 + 180, 1, 1.69, 1.69 );
setScaleKey( spep_1 -1 + 181, 1, 1.69, 1.69 );
setScaleKey( spep_1 -1 + 182, 1, 1.71, 1.71 );
setScaleKey( spep_1 -1 + 183, 1, 1.71, 1.71 );
setScaleKey( spep_1 -1 + 184, 1, 1.72, 1.72 );
setScaleKey( spep_1 -1 + 185, 1, 1.72, 1.72 );
setScaleKey( spep_1 -1 + 186, 1, 1.73, 1.73 );
setScaleKey( spep_1 -1 + 187, 1, 1.73, 1.73 );
setScaleKey( spep_1 -1 + 188, 1, 1.75, 1.75 );
setScaleKey( spep_1 -1 + 189, 1, 1.75, 1.75 );
setScaleKey( spep_1 -1 + 190, 1, 1.76, 1.76 );
setScaleKey( spep_1 -1 + 191, 1, 1.76, 1.76 );
setScaleKey( spep_1 -1 + 192, 1, 1.77, 1.77 );
setScaleKey( spep_1 -1 + 193, 1, 1.77, 1.77 );
setScaleKey( spep_1 -1 + 194, 1, 1.79, 1.79 );
setScaleKey( spep_1 -1 + 195, 1, 1.79, 1.79 );
setScaleKey( spep_1 -1 + 196, 1, 1.8, 1.8 );
setScaleKey( spep_1 -1 + 197, 1, 1.8, 1.8 );
setScaleKey( spep_1 -1 + 198, 1, 1.81, 1.81 );
setScaleKey( spep_1 -1 + 199, 1, 1.81, 1.81 );
setScaleKey( spep_1 -1 + 200, 1, 1.83, 1.83 );
setScaleKey( spep_1 -1 + 201, 1, 1.83, 1.83 );
setScaleKey( spep_1 -1 + 202, 1, 1.84, 1.84 );
setScaleKey( spep_1 -1 + 203, 1, 1.84, 1.84 );
setScaleKey( spep_1 -1 + 204, 1, 1.86, 1.86 );
setScaleKey( spep_1 -1 + 205, 1, 1.86, 1.86 );
setScaleKey( spep_1 -1 + 206, 1, 1.87, 1.87 );
setScaleKey( spep_1 -1 + 207, 1, 1.87, 1.87 );
setScaleKey( spep_1 -1 + 208, 1, 1.88, 1.88 );
setScaleKey( spep_1 -1 + 209, 1, 1.88, 1.88 );
setScaleKey( spep_1 -1 + 210, 1, 3.23, 3.23 );

setRotateKey( spep_1 -1 + 150, 1, 0 );
setRotateKey( spep_1 -1 + 165, 1, 0 );
setRotateKey( spep_1 -1 + 166, 1, -70.7 );
setRotateKey( spep_1 -1 + 209, 1, -70.7 );
setRotateKey( spep_1 -1 + 210, 1, -42.6 );

-- 敵の動き2 --
--真ん中から飛んでくる場合
setDisp( spep_1 -1 + 280, 1, 1 );
setDisp( spep_1 -1 + 390, 1, 0 );

changeAnime( spep_1 -1 + 280, 1, 107 );

setMoveKey( spep_1 -1 + 280, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_1 -1 + 282, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_1 -1 + 283, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_1 -1 + 285, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_1 -1 + 287, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_1 -1 + 289, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_1 -1 + 291, 1, -28.8, -46 , 0 );
setMoveKey( spep_1 -1 + 293, 1, -32.3, -52 , 0 );
setMoveKey( spep_1 -1 + 295, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_1 -1 + 297, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_1 -1 + 299, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_1 -1 + 301, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_1 -1 + 303, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_1 -1 + 305, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_1 -1 + 307, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_1 -1 + 309, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_1 -1 + 311, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_1 -1 + 390, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_1 -1 + 280, 1, 0.16, 0.16 );
setScaleKey( spep_1 -1 + 282, 1, 0.2, 0.2 );
setScaleKey( spep_1 -1 + 283, 1, 0.42, 0.42 );
setScaleKey( spep_1 -1 + 285, 1, 0.635, 0.635 );
setScaleKey( spep_1 -1 + 287, 1, 0.855, 0.855 );
setScaleKey( spep_1 -1 + 289, 1, 1.075, 1.07 );
setScaleKey( spep_1 -1 + 291, 1, 1.295, 1.29 );
setScaleKey( spep_1 -1 + 293, 1, 1.51, 1.505 );
setScaleKey( spep_1 -1 + 295, 1, 1.73, 1.725 );
setScaleKey( spep_1 -1 + 297, 1, 1.905, 1.9 );
setScaleKey( spep_1 -1 + 299, 1, 1.73, 1.725 );
setScaleKey( spep_1 -1 + 301, 1, 1.905, 1.9 );
setScaleKey( spep_1 -1 + 303, 1, 1.73, 1.725 );
setScaleKey( spep_1 -1 + 305, 1, 1.905, 1.9 );
setScaleKey( spep_1 -1 + 307, 1, 1.73, 1.725 );
setScaleKey( spep_1 -1 + 309, 1, 1.905, 1.9 );
setScaleKey( spep_1 -1 + 311, 1, 1.73, 1.725 );
setScaleKey( spep_1 -1 + 390, 1, 1.73, 1.725 );

setRotateKey( spep_1 -1 + 280, 1, -122.8 - 232 );
setRotateKey( spep_1 -1 + 282, 1, -122.8 );
setRotateKey( spep_1 -1 + 283, 1, -1 );
setRotateKey( spep_1 -1 + 285, 1, 120.7 );
setRotateKey( spep_1 -1 + 287, 1, 242.5 );
setRotateKey( spep_1 -1 + 289, 1, 364.3 );
setRotateKey( spep_1 -1 + 291, 1, 486 );
setRotateKey( spep_1 -1 + 293, 1, 607.8 );
setRotateKey( spep_1 -1 + 295, 1, 729.5 );
setRotateKey( spep_1 -1 + 390, 1, 729.5 );

-- ** 音 ** --
--エルボー
SE017 = playSeVer2( spep_1 + 156, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 156, 1153, "", 0, 0, 0, -1);

--凄む
SE019 = playSeVer2( spep_1 + 200, 8, "", 0, 0, 0, 0.6);
SE020 = playSeVer2( spep_1 + 200, 1379, "",spep_1 + 310, 0, 52, 0.6);

--振りかぶる
SE021 = playSeVer2( spep_1 + 224, 1116, "",spep_1 + 272, 0, 22, -1);
SE022 = playSeVer2( spep_1 + 232, 1004, "", 0, 0, 0, -1);

--腹パン
SE023 = playSeVer2( spep_1 + 252, 1153, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 252, 1049, "",spep_1 + 300, 0, 26, -1);
SE025 = playSeVer2( spep_1 + 254, 1190, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_1 + 256, 1187, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_1 -1 + 294, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_1 -1 + 294, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 286); -- ダメージ表示フレーム
endPhase( spep_1 + 390 -4); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- セリフカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 100, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + 100, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 100, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 100, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1390 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 100 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--拳握る
SE002 = playSeVer2( spep_0 + 12, 1233, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 22, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE003, 67 );

-- ** 次の準備 ** --
spep_c = spep_0 + 100;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_1 = spep_c + 94;

-------------------------------------------------
-- カード後～フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 390, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 390, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 390, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 390, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 390, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 390, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 390, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 390, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 390 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--手つく
SE005 = playSeVer2( spep_1 + 12, 1377, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 16, 1192, "",spep_1 + 42, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 16, SE006, 71 );

--クラウチングスタート
SE007 = playSeVer2( spep_1 + 50, 1004, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 50, 1330, "",spep_1 + 88, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 50, SE008, 46 );

--走ってくる
SE009 = playSeVer2( spep_1 + 82, 1167, "",spep_1 + 128, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 82, SE009, 45 );
SE010 = playSeVer2( spep_1 + 82, 9, "",spep_1 + 160, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 82, SE010, 71 );
SE011 = playSeVer2( spep_1 + 86, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE011, 141 );
SE012 = playSeVer2( spep_1 + 96, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 96, SE012, 150 );
SE013 = playSeVer2( spep_1 + 106, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 106, SE013, 157 );
SE014 = playSeVer2( spep_1 + 118, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 118, SE014, 141 );

--とびかかる
SE015 = playSeVer2( spep_1 + 122, 1117, "",spep_1 + 164, 0, 8, -1);
SE016 = playSeVer2( spep_1 + 122, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 144; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 敵キャラクター ** --
-- 敵の動き1 --
setDisp( spep_1 -1 + 150, 1, 1 );
setDisp( spep_1 -1 + 210, 1, 0 );

changeAnime( spep_1 -1 + 150, 1, 102 );
changeAnime( spep_1 -1 + 166, 1, 107 );

setMoveKey( spep_1 -1 + 150, 1, 118.1, -300.8 , 0 );
setMoveKey( spep_1 -1 + 165, 1, 118.1, -300.8 , 0 );
setMoveKey( spep_1 -1 + 166, 1, 45, 7.8 , 0 );
setMoveKey( spep_1 -1 + 167, 1, 45, 7.8 , 0 );
setMoveKey( spep_1 -1 + 168, 1, 72, -18.2 , 0 );
setMoveKey( spep_1 -1 + 169, 1, 72, -18.2 , 0 );
setMoveKey( spep_1 -1 + 170, 1, 80.8, 0 , 0 );
setMoveKey( spep_1 -1 + 171, 1, 80.8, 0 , 0 );
setMoveKey( spep_1 -1 + 172, 1, 79.2, -13 , 0 );
setMoveKey( spep_1 -1 + 173, 1, 79.2, -13 , 0 );
setMoveKey( spep_1 -1 + 174, 1, 101, 0 , 0 );
setMoveKey( spep_1 -1 + 175, 1, 101, 0 , 0 );
setMoveKey( spep_1 -1 + 176, 1, 104.7, -15.6 , 0 );
setMoveKey( spep_1 -1 + 177, 1, 104.7, -15.6 , 0 );
setMoveKey( spep_1 -1 + 178, 1, 121.3, -7.8 , 0 );
setMoveKey( spep_1 -1 + 179, 1, 121.3, -7.8 , 0 );
setMoveKey( spep_1 -1 + 180, 1, 132.7, -7.8 , 0 );
setMoveKey( spep_1 -1 + 181, 1, 132.7, -7.8 , 0 );
setMoveKey( spep_1 -1 + 182, 1, 144.1, -7.8 , 0 );
setMoveKey( spep_1 -1 + 183, 1, 144.1, -7.8 , 0 );
setMoveKey( spep_1 -1 + 184, 1, 155.5, -7.8 , 0 );
setMoveKey( spep_1 -1 + 185, 1, 155.5, -7.8 , 0 );
setMoveKey( spep_1 -1 + 186, 1, 167, -7.8 , 0 );
setMoveKey( spep_1 -1 + 187, 1, 167, -7.8 , 0 );
setMoveKey( spep_1 -1 + 188, 1, 178.4, -7.8 , 0 );
setMoveKey( spep_1 -1 + 189, 1, 178.4, -7.8 , 0 );
setMoveKey( spep_1 -1 + 190, 1, 189.8, -7.8 , 0 );
setMoveKey( spep_1 -1 + 191, 1, 189.8, -7.8 , 0 );
setMoveKey( spep_1 -1 + 192, 1, 201.2, -7.8 , 0 );
setMoveKey( spep_1 -1 + 193, 1, 201.2, -7.8 , 0 );
setMoveKey( spep_1 -1 + 194, 1, 212.7, -7.8 , 0 );
setMoveKey( spep_1 -1 + 195, 1, 212.7, -7.8 , 0 );
setMoveKey( spep_1 -1 + 196, 1, 224.1, -7.8 , 0 );
setMoveKey( spep_1 -1 + 197, 1, 224.1, -7.8 , 0 );
setMoveKey( spep_1 -1 + 198, 1, 235.5, -7.8 , 0 );
setMoveKey( spep_1 -1 + 199, 1, 235.5, -7.8 , 0 );
setMoveKey( spep_1 -1 + 200, 1, 246.9, -7.8 , 0 );
setMoveKey( spep_1 -1 + 201, 1, 246.9, -7.8 , 0 );
setMoveKey( spep_1 -1 + 202, 1, 258.3, -7.8 , 0 );
setMoveKey( spep_1 -1 + 203, 1, 258.3, -7.8 , 0 );
setMoveKey( spep_1 -1 + 204, 1, 269.8, -7.8 , 0 );
setMoveKey( spep_1 -1 + 205, 1, 269.8, -7.8 , 0 );
setMoveKey( spep_1 -1 + 206, 1, 281.2, -7.8 , 0 );
setMoveKey( spep_1 -1 + 207, 1, 281.2, -7.8 , 0 );
setMoveKey( spep_1 -1 + 208, 1, 292.6, -7.8 , 0 );
setMoveKey( spep_1 -1 + 209, 1, 292.6, -7.8 , 0 );
setMoveKey( spep_1 -1 + 210, 1, 127.7, -4.4 , 0 );

setScaleKey( spep_1 -1 + 150, 1, 5, 5 );
setScaleKey( spep_1 -1 + 165, 1, 5, 5 );
setScaleKey( spep_1 -1 + 166, 1, 1.6, 1.6 );
setScaleKey( spep_1 -1 + 167, 1, 1.6, 1.6 );
setScaleKey( spep_1 -1 + 168, 1, 1.61, 1.61 );
setScaleKey( spep_1 -1 + 169, 1, 1.61, 1.61 );
setScaleKey( spep_1 -1 + 170, 1, 1.63, 1.63 );
setScaleKey( spep_1 -1 + 171, 1, 1.63, 1.63 );
setScaleKey( spep_1 -1 + 172, 1, 1.64, 1.64 );
setScaleKey( spep_1 -1 + 173, 1, 1.64, 1.64 );
setScaleKey( spep_1 -1 + 174, 1, 1.65, 1.65 );
setScaleKey( spep_1 -1 + 175, 1, 1.65, 1.65 );
setScaleKey( spep_1 -1 + 176, 1, 1.67, 1.67 );
setScaleKey( spep_1 -1 + 177, 1, 1.67, 1.67 );
setScaleKey( spep_1 -1 + 178, 1, 1.68, 1.68 );
setScaleKey( spep_1 -1 + 179, 1, 1.68, 1.68 );
setScaleKey( spep_1 -1 + 180, 1, 1.69, 1.69 );
setScaleKey( spep_1 -1 + 181, 1, 1.69, 1.69 );
setScaleKey( spep_1 -1 + 182, 1, 1.71, 1.71 );
setScaleKey( spep_1 -1 + 183, 1, 1.71, 1.71 );
setScaleKey( spep_1 -1 + 184, 1, 1.72, 1.72 );
setScaleKey( spep_1 -1 + 185, 1, 1.72, 1.72 );
setScaleKey( spep_1 -1 + 186, 1, 1.73, 1.73 );
setScaleKey( spep_1 -1 + 187, 1, 1.73, 1.73 );
setScaleKey( spep_1 -1 + 188, 1, 1.75, 1.75 );
setScaleKey( spep_1 -1 + 189, 1, 1.75, 1.75 );
setScaleKey( spep_1 -1 + 190, 1, 1.76, 1.76 );
setScaleKey( spep_1 -1 + 191, 1, 1.76, 1.76 );
setScaleKey( spep_1 -1 + 192, 1, 1.77, 1.77 );
setScaleKey( spep_1 -1 + 193, 1, 1.77, 1.77 );
setScaleKey( spep_1 -1 + 194, 1, 1.79, 1.79 );
setScaleKey( spep_1 -1 + 195, 1, 1.79, 1.79 );
setScaleKey( spep_1 -1 + 196, 1, 1.8, 1.8 );
setScaleKey( spep_1 -1 + 197, 1, 1.8, 1.8 );
setScaleKey( spep_1 -1 + 198, 1, 1.81, 1.81 );
setScaleKey( spep_1 -1 + 199, 1, 1.81, 1.81 );
setScaleKey( spep_1 -1 + 200, 1, 1.83, 1.83 );
setScaleKey( spep_1 -1 + 201, 1, 1.83, 1.83 );
setScaleKey( spep_1 -1 + 202, 1, 1.84, 1.84 );
setScaleKey( spep_1 -1 + 203, 1, 1.84, 1.84 );
setScaleKey( spep_1 -1 + 204, 1, 1.86, 1.86 );
setScaleKey( spep_1 -1 + 205, 1, 1.86, 1.86 );
setScaleKey( spep_1 -1 + 206, 1, 1.87, 1.87 );
setScaleKey( spep_1 -1 + 207, 1, 1.87, 1.87 );
setScaleKey( spep_1 -1 + 208, 1, 1.88, 1.88 );
setScaleKey( spep_1 -1 + 209, 1, 1.88, 1.88 );
setScaleKey( spep_1 -1 + 210, 1, 3.23, 3.23 );

setRotateKey( spep_1 -1 + 150, 1, 0 );
setRotateKey( spep_1 -1 + 165, 1, 0 );
setRotateKey( spep_1 -1 + 166, 1, -70.7 );
setRotateKey( spep_1 -1 + 209, 1, -70.7 );
setRotateKey( spep_1 -1 + 210, 1, -42.6 );

-- 敵の動き2 --
--真ん中から飛んでくる場合
setDisp( spep_1 -1 + 280, 1, 1 );
setDisp( spep_1 -1 + 390, 1, 0 );

changeAnime( spep_1 -1 + 280, 1, 107 );

setMoveKey( spep_1 -1 + 280, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_1 -1 + 282, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_1 -1 + 283, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_1 -1 + 285, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_1 -1 + 287, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_1 -1 + 289, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_1 -1 + 291, 1, -28.8, -46 , 0 );
setMoveKey( spep_1 -1 + 293, 1, -32.3, -52 , 0 );
setMoveKey( spep_1 -1 + 295, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_1 -1 + 297, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_1 -1 + 299, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_1 -1 + 301, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_1 -1 + 303, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_1 -1 + 305, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_1 -1 + 307, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_1 -1 + 309, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_1 -1 + 311, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_1 -1 + 390, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_1 -1 + 280, 1, 0.16, 0.16 );
setScaleKey( spep_1 -1 + 282, 1, 0.2, 0.2 );
setScaleKey( spep_1 -1 + 283, 1, 0.42, 0.42 );
setScaleKey( spep_1 -1 + 285, 1, 0.635, 0.635 );
setScaleKey( spep_1 -1 + 287, 1, 0.855, 0.855 );
setScaleKey( spep_1 -1 + 289, 1, 1.075, 1.07 );
setScaleKey( spep_1 -1 + 291, 1, 1.295, 1.29 );
setScaleKey( spep_1 -1 + 293, 1, 1.51, 1.505 );
setScaleKey( spep_1 -1 + 295, 1, 1.73, 1.725 );
setScaleKey( spep_1 -1 + 297, 1, 1.905, 1.9 );
setScaleKey( spep_1 -1 + 299, 1, 1.73, 1.725 );
setScaleKey( spep_1 -1 + 301, 1, 1.905, 1.9 );
setScaleKey( spep_1 -1 + 303, 1, 1.73, 1.725 );
setScaleKey( spep_1 -1 + 305, 1, 1.905, 1.9 );
setScaleKey( spep_1 -1 + 307, 1, 1.73, 1.725 );
setScaleKey( spep_1 -1 + 309, 1, 1.905, 1.9 );
setScaleKey( spep_1 -1 + 311, 1, 1.73, 1.725 );
setScaleKey( spep_1 -1 + 390, 1, 1.73, 1.725 );

setRotateKey( spep_1 -1 + 280, 1, -122.8 - 232 );
setRotateKey( spep_1 -1 + 282, 1, -122.8 );
setRotateKey( spep_1 -1 + 283, 1, -1 );
setRotateKey( spep_1 -1 + 285, 1, 120.7 );
setRotateKey( spep_1 -1 + 287, 1, 242.5 );
setRotateKey( spep_1 -1 + 289, 1, 364.3 );
setRotateKey( spep_1 -1 + 291, 1, 486 );
setRotateKey( spep_1 -1 + 293, 1, 607.8 );
setRotateKey( spep_1 -1 + 295, 1, 729.5 );
setRotateKey( spep_1 -1 + 390, 1, 729.5 );

-- ** 音 ** --
--エルボー
SE017 = playSeVer2( spep_1 + 156, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 156, 1153, "", 0, 0, 0, -1);

--凄む
SE019 = playSeVer2( spep_1 + 200, 8, "", 0, 0, 0, 0.6);
SE020 = playSeVer2( spep_1 + 200, 1379, "",spep_1 + 310, 0, 52, 0.6);

--振りかぶる
SE021 = playSeVer2( spep_1 + 224, 1116, "",spep_1 + 272, 0, 22, -1);
SE022 = playSeVer2( spep_1 + 232, 1004, "", 0, 0, 0, -1);

--腹パン
SE023 = playSeVer2( spep_1 + 252, 1153, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 252, 1049, "",spep_1 + 300, 0, 26, -1);
SE025 = playSeVer2( spep_1 + 254, 1190, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_1 + 256, 1187, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_1 -1 + 294, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_1 -1 + 294, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 286); -- ダメージ表示フレーム
endPhase( spep_1 + 390 -4); -- 終了フレーム

end
