--1026780:SSR_ダイーズ&カカオ_クラッシャーインベーション
--sp_effect_b4_00286
--sp2561

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
SP_01 = 161946; --ef_001　開幕〜セリフカットインまで
SP_02 = 161947; --ef_002　格闘〜ダイーズパンチ　敵より前
SP_03 = 161949; --ef_003　格闘〜ダイーズパンチ　敵より後ろ
SP_04 = 161951; --ef_004　ダメージ表示　爆発

--エフェクト(敵)
SP_02r = 161948; --ef_002_r　格闘〜ダイーズパンチ　敵より前
SP_03r = 161950; --ef_003_r　格闘〜ダイーズパンチ　敵より後ろ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜セリフカットインまで(257f)
-------------------------------------------------
-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + 257, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + 257, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + 257, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + 257, start, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 24;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 257 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--石キャッチ
SE002 = playSeVer2( spep_0 + 86, 1108, "", 0, 0, 0, 1.0);
setPitch( spep_0 + 86, SE002, 600 );
setTimeStretch( SE002, 1.4, 30, 4 );
SE003 = playSeVer2( spep_0 + 88, 29, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_0 + 88, SE003, 126 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 136; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);

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

-- ** 音 ** --
--石キャッチ2
SE004 = playSeVer2( spep_0 + 178, 1108, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_0 + 178, SE004, 126 );
setPitch( spep_0 + 178, SE004, 600 );
setTimeStretch( SE004, 1.4, 30, 4 );
SE005 = playSeVer2( spep_0 + 180, 29, "", 0, 0, 0, -1);

--石割る
SE006 = playSeVer2( spep_0 + 196, 1007, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 196, 1168, "",spep_0 + 268, 0, 50, -1);
setBandpassFilter( spep_0 + 196, SE007, 1150, 24000 );

--瞬間移動
SE008 = playSeVer2( spep_0 + 244, 1109, "",spep_0 + 278, 0, 16, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 257;

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
-- 格闘〜ダイーズパンチ(166f)
-------------------------------------------------

grapple_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, grapple_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 164, grapple_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, grapple_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 164, grapple_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, grapple_f, 0);
setEffRotateKey( spep_1 + 164, grapple_f, 0);
setEffAlphaKey( spep_1 + 0, grapple_f, 255);
setEffAlphaKey( spep_1 + 164 - 2, grapple_f, 255);
setEffAlphaKey( spep_1 + 164 - 1, grapple_f, 255);
setEffAlphaKey( spep_1 + 164, grapple_f, 0);

grapple_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, grapple_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 164, grapple_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, grapple_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 164, grapple_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, grapple_b, 0);
setEffRotateKey( spep_1 + 164, grapple_b, 0);
setEffAlphaKey( spep_1 + 0, grapple_b, 255);
setEffAlphaKey( spep_1 + 164 - 2, grapple_b, 255);
setEffAlphaKey( spep_1 + 164 - 1, grapple_b, 255);
setEffAlphaKey( spep_1 + 164, grapple_b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 164 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
OFFSET_1 = -1;

setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 + 24 + OFFSET_1, 1, 108 );
changeAnime( spep_1 + 52 + OFFSET_1, 1, 106 );
changeAnime( spep_1 + 72 + OFFSET_1, 1, 108 );
changeAnime( spep_1 + 94 + OFFSET_1, 1, 106 );
changeAnime( spep_1 + 104 + OFFSET_1, 1, 108 );
changeAnime( spep_1 + 154 + OFFSET_1, 1, 107 );


setMoveKey( spep_1 + 0, 1, 72.5, -16.9 , 0 );
setMoveKey( spep_1 + 2 + OFFSET_1, 1, 73, -16.9 , 0 );
setMoveKey( spep_1 + 3 + OFFSET_1, 1, 73, -16.9 , 0 );
setMoveKey( spep_1 + 4 + OFFSET_1, 1, 73.4, -16.9 , 0 );
setMoveKey( spep_1 + 5 + OFFSET_1, 1, 73.4, -16.9 , 0 );
setMoveKey( spep_1 + 6 + OFFSET_1, 1, 73.9, -16.9 , 0 );
setMoveKey( spep_1 + 7 + OFFSET_1, 1, 73.9, -16.9 , 0 );
setMoveKey( spep_1 + 8 + OFFSET_1, 1, 74.4, -16.9 , 0 );
setMoveKey( spep_1 + 9 + OFFSET_1, 1, 74.4, -16.9 , 0 );
setMoveKey( spep_1 + 10 + OFFSET_1, 1, 74.8, -16.9 , 0 );
setMoveKey( spep_1 + 11 + OFFSET_1, 1, 74.8, -16.9 , 0 );
setMoveKey( spep_1 + 12 + OFFSET_1, 1, 75.3, -16.9 , 0 );
setMoveKey( spep_1 + 13 + OFFSET_1, 1, 75.3, -16.9 , 0 );
setMoveKey( spep_1 + 14 + OFFSET_1, 1, 75.8, -16.9 , 0 );
setMoveKey( spep_1 + 15 + OFFSET_1, 1, 75.8, -16.9 , 0 );
setMoveKey( spep_1 + 16 + OFFSET_1, 1, 76.2, -16.9 , 0 );
setMoveKey( spep_1 + 17 + OFFSET_1, 1, 76.2, -16.9 , 0 );
setMoveKey( spep_1 + 18 + OFFSET_1, 1, 76.7, -16.9 , 0 );
setMoveKey( spep_1 + 19 + OFFSET_1, 1, 76.7, -16.9 , 0 );
setMoveKey( spep_1 + 20 + OFFSET_1, 1, 77.1, -16.9 , 0 );
setMoveKey( spep_1 + 21 + OFFSET_1, 1, 77.1, -16.9 , 0 );
setMoveKey( spep_1 + 22 + OFFSET_1, 1, 77.6, -16.9 , 0 );
setMoveKey( spep_1 + 23 + OFFSET_1, 1, 77.6, -16.9 , 0 );
setMoveKey( spep_1 + 24 + OFFSET_1, 1, 104, 26 , 0 );
setMoveKey( spep_1 + 25 + OFFSET_1, 1, 104, 26 , 0 );
setMoveKey( spep_1 + 26 + OFFSET_1, 1, 160.1, 8.1 , 0 );
setMoveKey( spep_1 + 27 + OFFSET_1, 1, 160.1, 8.1 , 0 );
setMoveKey( spep_1 + 28 + OFFSET_1, 1, 124.4, 10.4 , 0 );
setMoveKey( spep_1 + 29 + OFFSET_1, 1, 124.4, 10.4 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_1, 1, 150.7, 40.8 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_1, 1, 150.7, 40.8 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_1, 1, 135.1, 23.1 , 0 );
setMoveKey( spep_1 + 33 + OFFSET_1, 1, 135.1, 23.1 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_1, 1, 135.4, 21.4 , 0 );
setMoveKey( spep_1 + 35 + OFFSET_1, 1, 135.4, 21.4 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_1, 1, 135.8, 19.8 , 0 );
setMoveKey( spep_1 + 37 + OFFSET_1, 1, 135.8, 19.8 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_1, 1, 136.1, 18.1 , 0 );
setMoveKey( spep_1 + 39 + OFFSET_1, 1, 136.1, 18.1 , 0 );
setMoveKey( spep_1 + 40 + OFFSET_1, 1, 136.5, 16.4 , 0 );
setMoveKey( spep_1 + 41 + OFFSET_1, 1, 136.5, 16.4 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_1, 1, 136.8, 14.8 , 0 );
setMoveKey( spep_1 + 43 + OFFSET_1, 1, 136.8, 14.8 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_1, 1, 137.1, 13.1 , 0 );
setMoveKey( spep_1 + 45 + OFFSET_1, 1, 137.1, 13.1 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_1, 1, 137.5, 11.4 , 0 );
setMoveKey( spep_1 + 47 + OFFSET_1, 1, 137.5, 11.4 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_1, 1, 137.8, 9.8 , 0 );
setMoveKey( spep_1 + 49 + OFFSET_1, 1, 137.8, 9.8 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_1, 1, 138.2, 8.1 , 0 );
setMoveKey( spep_1 + 51 + OFFSET_1, 1, 138.2, 8.1 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_1, 1, 125.1, 19.1 , 0 );
setMoveKey( spep_1 + 53 + OFFSET_1, 1, 125.1, 19.1 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_1, 1, 101.8, 40.5 , 0 );
setMoveKey( spep_1 + 55 + OFFSET_1, 1, 101.8, 40.5 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_1, 1, 150.5, 5.9 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_1, 1, 150.5, 5.9 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_1, 1, 120, 9.2 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_1, 1, 120, 9.2 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_1, 1, 151.4, 40.5 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_1, 1, 151.4, 40.5 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_1, 1, 140.9, 23.8 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_1, 1, 140.9, 23.8 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_1, 1, 145.6, 23.1 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_1, 1, 145.6, 23.1 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_1, 1, 150.4, 22.4 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_1, 1, 150.4, 22.4 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_1, 1, 155.1, 21.8 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_1, 1, 155.1, 21.8 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_1, 1, 159.8, 21.1 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_1, 1, 159.8, 21.1 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_1, 1, 217.9, 19 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_1, 1, 217.9, 19 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_1, 1, 219.8, 19.7 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_1, 1, 219.8, 19.7 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_1, 1, 221.8, 20.4 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_1, 1, 221.8, 20.4 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_1, 1, 223.8, 21.2 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_1, 1, 223.8, 21.2 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_1, 1, 225.7, 21.9 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_1, 1, 225.7, 21.9 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_1, 1, 227.7, 22.6 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_1, 1, 227.7, 22.6 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_1, 1, 229.7, 23.3 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_1, 1, 229.7, 23.3 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_1, 1, 231.6, 24 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_1, 1, 231.6, 24 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_1, 1, 233.6, 24.7 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_1, 1, 233.6, 24.7 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_1, 1, 235.6, 25.4 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_1, 1, 235.6, 25.4 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_1, 1, 237.5, 26.2 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_1, 1, 237.5, 26.2 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_1, 1, 149.1, 33.6 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_1, 1, 149.1, 33.6 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_1, 1, 95.9, 56.6 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_1, 1, 95.9, 56.6 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_1, 1, 114.7, 23.5 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_1, 1, 114.7, 23.5 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_1, 1, 63.6, 32.4 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_1, 1, 63.6, 32.4 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_1, 1, 74.4, 69.4 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_1, 1, 74.4, 69.4 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_1, 1, 107, 35.4 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_1, 1, 107, 35.4 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_1, 1, 140.1, 30.7 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_1, 1, 140.1, 30.7 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_1, 1, 173.1, 26 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_1, 1, 173.1, 26 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_1, 1, 160.1, 39.2 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_1, 1, 160.1, 39.2 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_1, 1, 219.1, -3.5 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_1, 1, 219.1, -3.5 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_1, 1, 208.2, -4.2 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_1, 1, 208.2, -4.2 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_1, 1, 228.2, 27.6 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_1, 1, 228.2, 27.6 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_1, 1, 206.3, 11.3 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_1, 1, 206.3, 11.3 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_1, 1, 198.4, 11.1 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_1, 1, 198.4, 11.1 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_1, 1, 190.4, 10.9 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_1, 1, 190.4, 10.9 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_1, 1, 182.5, 10.7 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_1, 1, 182.5, 10.7 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_1, 1, 174.6, 10.5 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_1, 1, 174.6, 10.5 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_1, 1, 166.7, 10.3 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_1, 1, 166.7, 10.3 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_1, 1, 158.7, 10.1 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_1, 1, 158.7, 10.1 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_1, 1, 150.8, 9.9 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_1, 1, 150.8, 9.9 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_1, 1, 142.9, 9.6 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_1, 1, 142.9, 9.6 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_1, 1, 135, 9.4 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_1, 1, 135, 9.4 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_1, 1, 127.1, 9.2 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_1, 1, 127.1, 9.2 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_1, 1, 119.1, 9 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_1, 1, 119.1, 9 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_1, 1, 111.2, 8.8 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_1, 1, 111.2, 8.8 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_1, 1, 115.2, 1.4 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_1, 1, 115.2, 1.4 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_1, 1, 117.6, -6 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_1, 1, 117.6, -6 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_1, 1, 118.4, -13.4 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_1, 1, 118.4, -13.4 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_1, 1, 117.5, -20.9 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_1, 1, 117.5, -20.9 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_1, 1, 43.1, -17.5 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_1, 1, 43.1, -17.5 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_1, 1, 58.1, -68.1 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_1, 1, 58.1, -68.1 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_1, 1, 63, -78 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_1, 1, 63, -78 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_1, 1, 74.6, -124.6 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_1, 1, 74.6, -124.6 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_1, 1, 86.2, -171.2 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_1, 1, 86.2, -171.2 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_1, 1, 97.9, -217.8 , 0 );
--setMoveKey( spep_1 + 165 + OFFSET_1, 1, 95, -206.1 , 0 );
--setMoveKey( spep_1 + 166 + OFFSET_1, 1, 109.5, -264.3 , 0 );

setScaleKey( spep_1 + 0, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 23 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 24 + OFFSET_1, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 51 + OFFSET_1, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 52 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 71 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 72 + OFFSET_1, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 93 + OFFSET_1, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 94 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 103 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 104 + OFFSET_1, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 145 + OFFSET_1, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 146 + OFFSET_1, 1, 1.70, 1.70 );
setScaleKey( spep_1 + 147 + OFFSET_1, 1, 1.70, 1.70 );
setScaleKey( spep_1 + 148 + OFFSET_1, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 149 + OFFSET_1, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 150 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_1 + 151 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_1 + 152 + OFFSET_1, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 153 + OFFSET_1, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 154 + OFFSET_1, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 155 + OFFSET_1, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 156 + OFFSET_1, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 157 + OFFSET_1, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 158 + OFFSET_1, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 159 + OFFSET_1, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 160 + OFFSET_1, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 161 + OFFSET_1, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 162 + OFFSET_1, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 163 + OFFSET_1, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 164 + OFFSET_1, 1, 1.45, 1.45 );
--setScaleKey( spep_1 + 165 + OFFSET_1, 1, 1.42, 1.42 );
--setScaleKey( spep_1 + 166 + OFFSET_1, 1, 1.55, 1.55 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 24 + OFFSET_1, 1, 0 );
setRotateKey( spep_1 + 25 + OFFSET_1, 1, 0 );
setRotateKey( spep_1 + 26 + OFFSET_1, 1, 17 );
setRotateKey( spep_1 + 27 + OFFSET_1, 1, 17 );
setRotateKey( spep_1 + 28 + OFFSET_1, 1, 17.9 );
setRotateKey( spep_1 + 29 + OFFSET_1, 1, 17.9 );
setRotateKey( spep_1 + 30 + OFFSET_1, 1, 18.8 );
setRotateKey( spep_1 + 31 + OFFSET_1, 1, 18.8 );
setRotateKey( spep_1 + 32 + OFFSET_1, 1, 19.7 );
setRotateKey( spep_1 + 33 + OFFSET_1, 1, 19.7 );
setRotateKey( spep_1 + 34 + OFFSET_1, 1, 20.6 );
setRotateKey( spep_1 + 35 + OFFSET_1, 1, 20.6 );
setRotateKey( spep_1 + 36 + OFFSET_1, 1, 21.5 );
setRotateKey( spep_1 + 37 + OFFSET_1, 1, 21.5 );
setRotateKey( spep_1 + 38 + OFFSET_1, 1, 22.4 );
setRotateKey( spep_1 + 39 + OFFSET_1, 1, 22.4 );
setRotateKey( spep_1 + 40 + OFFSET_1, 1, 23.3 );
setRotateKey( spep_1 + 41 + OFFSET_1, 1, 23.3 );
setRotateKey( spep_1 + 42 + OFFSET_1, 1, 24.2 );
setRotateKey( spep_1 + 43 + OFFSET_1, 1, 24.2 );
setRotateKey( spep_1 + 44 + OFFSET_1, 1, 25.1 );
setRotateKey( spep_1 + 45 + OFFSET_1, 1, 25.1 );
setRotateKey( spep_1 + 46 + OFFSET_1, 1, 26 );
setRotateKey( spep_1 + 47 + OFFSET_1, 1, 26 );
setRotateKey( spep_1 + 48 + OFFSET_1, 1, 26.9 );
setRotateKey( spep_1 + 49 + OFFSET_1, 1, 26.9 );
setRotateKey( spep_1 + 50 + OFFSET_1, 1, 27.8 );
setRotateKey( spep_1 + 51 + OFFSET_1, 1, 27.8 );
setRotateKey( spep_1 + 52 + OFFSET_1, 1, -38.4 );
setRotateKey( spep_1 + 53 + OFFSET_1, 1, -38.4 );
setRotateKey( spep_1 + 54 + OFFSET_1, 1, -30.4 );
setRotateKey( spep_1 + 55 + OFFSET_1, 1, -30.4 );
setRotateKey( spep_1 + 56 + OFFSET_1, 1, -22.3 );
setRotateKey( spep_1 + 57 + OFFSET_1, 1, -22.3 );
setRotateKey( spep_1 + 58 + OFFSET_1, 1, -20.3 );
setRotateKey( spep_1 + 59 + OFFSET_1, 1, -20.3 );
setRotateKey( spep_1 + 60 + OFFSET_1, 1, -18.3 );
setRotateKey( spep_1 + 61 + OFFSET_1, 1, -18.3 );
setRotateKey( spep_1 + 62 + OFFSET_1, 1, -16.4 );
setRotateKey( spep_1 + 63 + OFFSET_1, 1, -16.4 );
setRotateKey( spep_1 + 64 + OFFSET_1, 1, -14.4 );
setRotateKey( spep_1 + 65 + OFFSET_1, 1, -14.4 );
setRotateKey( spep_1 + 66 + OFFSET_1, 1, -12.4 );
setRotateKey( spep_1 + 67 + OFFSET_1, 1, -12.4 );
setRotateKey( spep_1 + 68 + OFFSET_1, 1, -10.5 );
setRotateKey( spep_1 + 69 + OFFSET_1, 1, -10.5 );
setRotateKey( spep_1 + 70 + OFFSET_1, 1, -8.5 );
setRotateKey( spep_1 + 71 + OFFSET_1, 1, -8.5 );
setRotateKey( spep_1 + 72 + OFFSET_1, 1, 18.5 );
setRotateKey( spep_1 + 73 + OFFSET_1, 1, 18.5 );
setRotateKey( spep_1 + 74 + OFFSET_1, 1, 18.9 );
setRotateKey( spep_1 + 75 + OFFSET_1, 1, 18.9 );
setRotateKey( spep_1 + 76 + OFFSET_1, 1, 19.4 );
setRotateKey( spep_1 + 77 + OFFSET_1, 1, 19.4 );
setRotateKey( spep_1 + 78 + OFFSET_1, 1, 19.8 );
setRotateKey( spep_1 + 79 + OFFSET_1, 1, 19.8 );
setRotateKey( spep_1 + 80 + OFFSET_1, 1, 20.3 );
setRotateKey( spep_1 + 81 + OFFSET_1, 1, 20.3 );
setRotateKey( spep_1 + 82 + OFFSET_1, 1, 20.7 );
setRotateKey( spep_1 + 83 + OFFSET_1, 1, 20.7 );
setRotateKey( spep_1 + 84 + OFFSET_1, 1, 21.2 );
setRotateKey( spep_1 + 85 + OFFSET_1, 1, 21.2 );
setRotateKey( spep_1 + 86 + OFFSET_1, 1, 21.6 );
setRotateKey( spep_1 + 87 + OFFSET_1, 1, 21.6 );
setRotateKey( spep_1 + 88 + OFFSET_1, 1, 22.1 );
setRotateKey( spep_1 + 89 + OFFSET_1, 1, 22.1 );
setRotateKey( spep_1 + 90 + OFFSET_1, 1, 22.5 );
setRotateKey( spep_1 + 91 + OFFSET_1, 1, 22.5 );
setRotateKey( spep_1 + 92 + OFFSET_1, 1, 23 );
setRotateKey( spep_1 + 93 + OFFSET_1, 1, 23 );
setRotateKey( spep_1 + 94 + OFFSET_1, 1, -32 );
setRotateKey( spep_1 + 95 + OFFSET_1, 1, -32 );
setRotateKey( spep_1 + 96 + OFFSET_1, 1, -39 );
setRotateKey( spep_1 + 97 + OFFSET_1, 1, -39 );
setRotateKey( spep_1 + 98 + OFFSET_1, 1, -46 );
setRotateKey( spep_1 + 99 + OFFSET_1, 1, -46 );
setRotateKey( spep_1 + 100 + OFFSET_1, 1, -53 );
setRotateKey( spep_1 + 101 + OFFSET_1, 1, -53 );
setRotateKey( spep_1 + 102 + OFFSET_1, 1, -60 );
setRotateKey( spep_1 + 103 + OFFSET_1, 1, -60 );
setRotateKey( spep_1 + 104 + OFFSET_1, 1, 4 );
setRotateKey( spep_1 + 105 + OFFSET_1, 1, 4 );
setRotateKey( spep_1 + 106 + OFFSET_1, 1, 7.9 );
setRotateKey( spep_1 + 107 + OFFSET_1, 1, 7.9 );
setRotateKey( spep_1 + 108 + OFFSET_1, 1, 11.7 );
setRotateKey( spep_1 + 109 + OFFSET_1, 1, 11.7 );
setRotateKey( spep_1 + 110 + OFFSET_1, 1, 15.5 );
setRotateKey( spep_1 + 111 + OFFSET_1, 1, 15.5 );
setRotateKey( spep_1 + 112 + OFFSET_1, 1, 19.4 );
setRotateKey( spep_1 + 113 + OFFSET_1, 1, 19.4 );
setRotateKey( spep_1 + 114 + OFFSET_1, 1, 23.2 );
setRotateKey( spep_1 + 115 + OFFSET_1, 1, 23.2 );
setRotateKey( spep_1 + 116 + OFFSET_1, 1, 24.4 );
setRotateKey( spep_1 + 117 + OFFSET_1, 1, 24.4 );
setRotateKey( spep_1 + 118 + OFFSET_1, 1, 25.5 );
setRotateKey( spep_1 + 119 + OFFSET_1, 1, 25.5 );
setRotateKey( spep_1 + 120 + OFFSET_1, 1, 26.6 );
setRotateKey( spep_1 + 121 + OFFSET_1, 1, 26.6 );
setRotateKey( spep_1 + 122 + OFFSET_1, 1, 27.8 );
setRotateKey( spep_1 + 123 + OFFSET_1, 1, 27.8 );
setRotateKey( spep_1 + 124 + OFFSET_1, 1, 28.9 );
setRotateKey( spep_1 + 125 + OFFSET_1, 1, 28.9 );
setRotateKey( spep_1 + 126 + OFFSET_1, 1, 30 );
setRotateKey( spep_1 + 127 + OFFSET_1, 1, 30 );
setRotateKey( spep_1 + 128 + OFFSET_1, 1, 31.2 );
setRotateKey( spep_1 + 129 + OFFSET_1, 1, 31.2 );
setRotateKey( spep_1 + 130 + OFFSET_1, 1, 32.3 );
setRotateKey( spep_1 + 131 + OFFSET_1, 1, 32.3 );
setRotateKey( spep_1 + 132 + OFFSET_1, 1, 33.4 );
setRotateKey( spep_1 + 133 + OFFSET_1, 1, 33.4 );
setRotateKey( spep_1 + 134 + OFFSET_1, 1, 34.6 );
setRotateKey( spep_1 + 135 + OFFSET_1, 1, 34.6 );
setRotateKey( spep_1 + 136 + OFFSET_1, 1, 35.7 );
setRotateKey( spep_1 + 137 + OFFSET_1, 1, 35.7 );
setRotateKey( spep_1 + 138 + OFFSET_1, 1, 36.8 );
setRotateKey( spep_1 + 139 + OFFSET_1, 1, 36.8 );
setRotateKey( spep_1 + 140 + OFFSET_1, 1, 38 );
setRotateKey( spep_1 + 141 + OFFSET_1, 1, 38 );
setRotateKey( spep_1 + 142 + OFFSET_1, 1, 39.1 );
setRotateKey( spep_1 + 145 + OFFSET_1, 1, 39.1 );
setRotateKey( spep_1 + 146 + OFFSET_1, 1, 40.3 );
setRotateKey( spep_1 + 147 + OFFSET_1, 1, 40.3 );
setRotateKey( spep_1 + 148 + OFFSET_1, 1, 41.4 );
setRotateKey( spep_1 + 149 + OFFSET_1, 1, 41.4 );
setRotateKey( spep_1 + 150 + OFFSET_1, 1, 42.5 );
setRotateKey( spep_1 + 151 + OFFSET_1, 1, 42.5 );
setRotateKey( spep_1 + 152 + OFFSET_1, 1, 43.7 );
setRotateKey( spep_1 + 153 + OFFSET_1, 1, 43.7 );
setRotateKey( spep_1 + 154 + OFFSET_1, 1, -3.2 );
setRotateKey( spep_1 + 155 + OFFSET_1, 1, -3.2 );
setRotateKey( spep_1 + 156 + OFFSET_1, 1, -2.6 );
setRotateKey( spep_1 + 157 + OFFSET_1, 1, -2.6 );
setRotateKey( spep_1 + 158 + OFFSET_1, 1, -2.6 );
setRotateKey( spep_1 + 159 + OFFSET_1, 1, -2.6 );
setRotateKey( spep_1 + 160 + OFFSET_1, 1, -1.9 );
setRotateKey( spep_1 + 161 + OFFSET_1, 1, -1.9 );
setRotateKey( spep_1 + 162 + OFFSET_1, 1, -1.3 );
setRotateKey( spep_1 + 163 + OFFSET_1, 1, -1.3 );
setRotateKey( spep_1 + 164 + OFFSET_1, 1, -0.6 );
--setRotateKey( spep_1 + 165 + OFFSET_1, 1, -0.8 );
--setRotateKey( spep_1 + 166 + OFFSET_1, 1, 0 );

-- ** 音 ** --
--キック
SE010 = playSeVer2( spep_1 + 16, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 22, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 22, SE011, 78 );
SE012 = playSeVer2( spep_1 + 22, 1110, "", 0, 0, 0, -1);

--キック2
SE013 = playSeVer2( spep_1 + 50, 1187, "",spep_1 + 114, 0, 28, -1);
setSeVolumeByWorkId( spep_1 + 50, SE013, 87 );
SE014 = playSeVer2( spep_1 + 50, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 50, SE014, 79 );

--画面前移動
SE015 = playSeVer2( spep_1 + 70, 1004, "", 0, 0, 0, -1);

--ラッシュ
SE016 = playSeVer2( spep_1 + 94, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 94, 1009, "", 0, 0, 0, -1);

--瞬間移動
SE018 = playSeVer2( spep_1 + 98, 1109, "", 0, 0, 0, -1);

--ラッシュ
SE019 = playSeVer2( spep_1 + 108, 1153, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 108, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE021 = playSeVer2( spep_1 + 132, 1109, "", 0, 0, 0, -1);

--殴り飛ばす
SE022 = playSeVer2( spep_1 + 154, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 154, SE022, 73 );
SE023 = playSeVer2( spep_1 + 150, 1120, "", 0, 0, 0, 0.6);

-- ** 次の準備 ** --
spep_2 = spep_1 + 164;

-------------------------------------------------
-- ダメージ表示　爆発(112f)
-------------------------------------------------

finish = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0); -- ef_006
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_2 + 112, finish, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0);
setEffScaleKey( spep_2 + 112, finish, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish, 0);
setEffRotateKey( spep_2 + 112, finish, 0);
setEffAlphaKey( spep_2 + 0, finish, 255);
setEffAlphaKey( spep_2 + 112, finish, 255);

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --
 
-- ** ひび割れ ** --
finish_f = entryEffect( spep_2 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_2 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 8, finish_f, 0 );
setEffRotateKey( spep_2 + 112, finish_f, 0 );
setEffAlphaKey( spep_2 + 8, finish_f, 255 );
setEffAlphaKey( spep_2 + 112, finish_f, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_2 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_2 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_2 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_2 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_2 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_2 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_2 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_2 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_2 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_2 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_2 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_2 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_2 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_2 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_2 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_2 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_2 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_2 + 46, shuchusen_wh, 0 );
 
shuchusen_bl = entryEffectLife( spep_2 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_2 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_2 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_2 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_2 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_2 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_2 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_2 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_2 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_2 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_2 + 14, ctga, 14, 20 );

setEffMoveKey( spep_2 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_2 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_2 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_2 + 14, ctga, -10.9 );
setEffRotateKey( spep_2 + 15, ctga, -10.9 );
setEffRotateKey( spep_2 + 16, ctga, -14.9 );
setEffRotateKey( spep_2 + 17, ctga, -14.9 );
setEffRotateKey( spep_2 + 18, ctga, -10.9 );
setEffRotateKey( spep_2 + 19, ctga, -10.9 );
setEffRotateKey( spep_2 + 20, ctga, -14.9 );
setEffRotateKey( spep_2 + 21, ctga, -14.9 );
setEffRotateKey( spep_2 + 22, ctga, -10.9 );
setEffRotateKey( spep_2 + 23, ctga, -10.9 );
setEffRotateKey( spep_2 + 24, ctga, -14.9 );
setEffRotateKey( spep_2 + 25, ctga, -14.9 );
setEffRotateKey( spep_2 + 26, ctga, -10.9 );
setEffRotateKey( spep_2 + 27, ctga, -10.9 );
setEffRotateKey( spep_2 + 28, ctga, -14.9 );
setEffRotateKey( spep_2 + 112, ctga, -14.9 );

setEffAlphaKey( spep_2 + 14, ctga, 255 );
setEffAlphaKey( spep_2 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 112, 1, 0 );

changeAnime( spep_2 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_2 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_2 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_2 -1 + 4, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_2 -1 + 6, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_2 -1 + 8, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_2 -1 + 10, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_2 -1 + 12, 1, -28.8, -46 , 0 );
setMoveKey( spep_2 -1 + 14, 1, -32.3, -52 , 0 );
setMoveKey( spep_2 -1 + 16, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 -1 + 18, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_2 -1 + 20, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 -1 + 22, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_2 -1 + 24, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 -1 + 26, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_2 -1 + 28, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 -1 + 30, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_2 -1 + 32, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_2 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_2 -1 + 4, 1, 0.42, 0.42 );
setScaleKey( spep_2 -1 + 6, 1, 0.635, 0.635 );
setScaleKey( spep_2 -1 + 8, 1, 0.855, 0.855 );
setScaleKey( spep_2 -1 + 10, 1, 1.075, 1.07 );
setScaleKey( spep_2 -1 + 12, 1, 1.295, 1.29 );
setScaleKey( spep_2 -1 + 14, 1, 1.51, 1.505 );
setScaleKey( spep_2 -1 + 16, 1, 1.73, 1.725 );
setScaleKey( spep_2 -1 + 18, 1, 1.905, 1.9 );
setScaleKey( spep_2 -1 + 20, 1, 1.73, 1.725 );
setScaleKey( spep_2 -1 + 22, 1, 1.905, 1.9 );
setScaleKey( spep_2 -1 + 24, 1, 1.73, 1.725 );
setScaleKey( spep_2 -1 + 26, 1, 1.905, 1.9 );
setScaleKey( spep_2 -1 + 28, 1, 1.73, 1.725 );
setScaleKey( spep_2 -1 + 30, 1, 1.905, 1.9 );
setScaleKey( spep_2 -1 + 32, 1, 1.73, 1.725 );
setScaleKey( spep_2 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_2 + 0, 1, -122.8 - 232 );
setRotateKey( spep_2 + 2, 1, -122.8 );
setRotateKey( spep_2 -1 + 4, 1, -1 );
setRotateKey( spep_2 -1 + 6, 1, 120.7 );
setRotateKey( spep_2 -1 + 8, 1, 242.5 );
setRotateKey( spep_2 -1 + 10, 1, 364.3 );
setRotateKey( spep_2 -1 + 12, 1, 486 );
setRotateKey( spep_2 -1 + 14, 1, 607.8 );
setRotateKey( spep_2 -1 + 16, 1, 729.5 );
setRotateKey( spep_2 + 112, 1, 729.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 112 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_2 + 14, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_2 + 14, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 6 ); -- ダメージ表示フレーム
endPhase( spep_2 + 112 - 4 ); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜セリフカットインまで(257f)
-------------------------------------------------
-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + 257, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0);
setEffScaleKey( spep_0 + 257, start, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + 257, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + 257, start, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 24;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 257 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--石キャッチ
SE002 = playSeVer2( spep_0 + 86, 1108, "", 0, 0, 0, 1.0);
setPitch( spep_0 + 86, SE002, 600 );
setTimeStretch( SE002, 1.4, 30, 4 );
SE003 = playSeVer2( spep_0 + 88, 29, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_0 + 88, SE003, 126 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 136; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);

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

-- ** 音 ** --
--石キャッチ2
SE004 = playSeVer2( spep_0 + 178, 1108, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_0 + 178, SE004, 126 );
setPitch( spep_0 + 178, SE004, 600 );
setTimeStretch( SE004, 1.4, 30, 4 );
SE005 = playSeVer2( spep_0 + 180, 29, "", 0, 0, 0, -1);

--石割る
SE006 = playSeVer2( spep_0 + 196, 1007, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 196, 1168, "",spep_0 + 268, 0, 50, -1);
setBandpassFilter( spep_0 + 196, SE007, 1150, 24000 );

--瞬間移動
SE008 = playSeVer2( spep_0 + 244, 1109, "",spep_0 + 278, 0, 16, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 257;

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
-- 格闘〜ダイーズパンチ(164f)
-------------------------------------------------

grapple_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, grapple_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 164, grapple_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, grapple_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 164, grapple_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, grapple_f, 0);
setEffRotateKey( spep_1 + 164, grapple_f, 0);
setEffAlphaKey( spep_1 + 0, grapple_f, 255);
setEffAlphaKey( spep_1 + 164 - 2, grapple_f, 255);
setEffAlphaKey( spep_1 + 164 - 1, grapple_f, 255);
setEffAlphaKey( spep_1 + 164, grapple_f, 0);

grapple_b = entryEffect( spep_1 + 0, SP_03r, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, grapple_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 164, grapple_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, grapple_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 164, grapple_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, grapple_b, 0);
setEffRotateKey( spep_1 + 164, grapple_b, 0);
setEffAlphaKey( spep_1 + 0, grapple_b, 255);
setEffAlphaKey( spep_1 + 164 - 2, grapple_b, 255);
setEffAlphaKey( spep_1 + 164 - 1, grapple_b, 255);
setEffAlphaKey( spep_1 + 164, grapple_b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 164 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
OFFSET_1 = -1;

setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 + 24 + OFFSET_1, 1, 108 );
changeAnime( spep_1 + 52 + OFFSET_1, 1, 106 );
changeAnime( spep_1 + 72 + OFFSET_1, 1, 108 );
changeAnime( spep_1 + 94 + OFFSET_1, 1, 106 );
changeAnime( spep_1 + 104 + OFFSET_1, 1, 108 );
changeAnime( spep_1 + 154 + OFFSET_1, 1, 107 );

setMoveKey( spep_1 + 0, 1, 72.5, -16.9 , 0 );
setMoveKey( spep_1 + 2 + OFFSET_1, 1, 73, -16.9 , 0 );
setMoveKey( spep_1 + 3 + OFFSET_1, 1, 73, -16.9 , 0 );
setMoveKey( spep_1 + 4 + OFFSET_1, 1, 73.4, -16.9 , 0 );
setMoveKey( spep_1 + 5 + OFFSET_1, 1, 73.4, -16.9 , 0 );
setMoveKey( spep_1 + 6 + OFFSET_1, 1, 73.9, -16.9 , 0 );
setMoveKey( spep_1 + 7 + OFFSET_1, 1, 73.9, -16.9 , 0 );
setMoveKey( spep_1 + 8 + OFFSET_1, 1, 74.4, -16.9 , 0 );
setMoveKey( spep_1 + 9 + OFFSET_1, 1, 74.4, -16.9 , 0 );
setMoveKey( spep_1 + 10 + OFFSET_1, 1, 74.8, -16.9 , 0 );
setMoveKey( spep_1 + 11 + OFFSET_1, 1, 74.8, -16.9 , 0 );
setMoveKey( spep_1 + 12 + OFFSET_1, 1, 75.3, -16.9 , 0 );
setMoveKey( spep_1 + 13 + OFFSET_1, 1, 75.3, -16.9 , 0 );
setMoveKey( spep_1 + 14 + OFFSET_1, 1, 75.8, -16.9 , 0 );
setMoveKey( spep_1 + 15 + OFFSET_1, 1, 75.8, -16.9 , 0 );
setMoveKey( spep_1 + 16 + OFFSET_1, 1, 76.2, -16.9 , 0 );
setMoveKey( spep_1 + 17 + OFFSET_1, 1, 76.2, -16.9 , 0 );
setMoveKey( spep_1 + 18 + OFFSET_1, 1, 76.7, -16.9 , 0 );
setMoveKey( spep_1 + 19 + OFFSET_1, 1, 76.7, -16.9 , 0 );
setMoveKey( spep_1 + 20 + OFFSET_1, 1, 77.1, -16.9 , 0 );
setMoveKey( spep_1 + 21 + OFFSET_1, 1, 77.1, -16.9 , 0 );
setMoveKey( spep_1 + 22 + OFFSET_1, 1, 77.6, -16.9 , 0 );
setMoveKey( spep_1 + 23 + OFFSET_1, 1, 77.6, -16.9 , 0 );
setMoveKey( spep_1 + 24 + OFFSET_1, 1, 104, 26 , 0 );
setMoveKey( spep_1 + 25 + OFFSET_1, 1, 104, 26 , 0 );
setMoveKey( spep_1 + 26 + OFFSET_1, 1, 160.1, 8.1 , 0 );
setMoveKey( spep_1 + 27 + OFFSET_1, 1, 160.1, 8.1 , 0 );
setMoveKey( spep_1 + 28 + OFFSET_1, 1, 124.4, 10.4 , 0 );
setMoveKey( spep_1 + 29 + OFFSET_1, 1, 124.4, 10.4 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_1, 1, 150.7, 40.8 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_1, 1, 150.7, 40.8 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_1, 1, 135.1, 23.1 , 0 );
setMoveKey( spep_1 + 33 + OFFSET_1, 1, 135.1, 23.1 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_1, 1, 135.4, 21.4 , 0 );
setMoveKey( spep_1 + 35 + OFFSET_1, 1, 135.4, 21.4 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_1, 1, 135.8, 19.8 , 0 );
setMoveKey( spep_1 + 37 + OFFSET_1, 1, 135.8, 19.8 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_1, 1, 136.1, 18.1 , 0 );
setMoveKey( spep_1 + 39 + OFFSET_1, 1, 136.1, 18.1 , 0 );
setMoveKey( spep_1 + 40 + OFFSET_1, 1, 136.5, 16.4 , 0 );
setMoveKey( spep_1 + 41 + OFFSET_1, 1, 136.5, 16.4 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_1, 1, 136.8, 14.8 , 0 );
setMoveKey( spep_1 + 43 + OFFSET_1, 1, 136.8, 14.8 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_1, 1, 137.1, 13.1 , 0 );
setMoveKey( spep_1 + 45 + OFFSET_1, 1, 137.1, 13.1 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_1, 1, 137.5, 11.4 , 0 );
setMoveKey( spep_1 + 47 + OFFSET_1, 1, 137.5, 11.4 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_1, 1, 137.8, 9.8 , 0 );
setMoveKey( spep_1 + 49 + OFFSET_1, 1, 137.8, 9.8 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_1, 1, 138.2, 8.1 , 0 );
setMoveKey( spep_1 + 51 + OFFSET_1, 1, 138.2, 8.1 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_1, 1, 125.1, 19.1 , 0 );
setMoveKey( spep_1 + 53 + OFFSET_1, 1, 125.1, 19.1 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_1, 1, 101.8, 40.5 , 0 );
setMoveKey( spep_1 + 55 + OFFSET_1, 1, 101.8, 40.5 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_1, 1, 150.5, 5.9 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_1, 1, 150.5, 5.9 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_1, 1, 120, 9.2 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_1, 1, 120, 9.2 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_1, 1, 151.4, 40.5 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_1, 1, 151.4, 40.5 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_1, 1, 140.9, 23.8 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_1, 1, 140.9, 23.8 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_1, 1, 145.6, 23.1 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_1, 1, 145.6, 23.1 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_1, 1, 150.4, 22.4 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_1, 1, 150.4, 22.4 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_1, 1, 155.1, 21.8 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_1, 1, 155.1, 21.8 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_1, 1, 159.8, 21.1 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_1, 1, 159.8, 21.1 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_1, 1, 217.9, 19 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_1, 1, 217.9, 19 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_1, 1, 219.8, 19.7 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_1, 1, 219.8, 19.7 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_1, 1, 221.8, 20.4 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_1, 1, 221.8, 20.4 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_1, 1, 223.8, 21.2 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_1, 1, 223.8, 21.2 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_1, 1, 225.7, 21.9 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_1, 1, 225.7, 21.9 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_1, 1, 227.7, 22.6 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_1, 1, 227.7, 22.6 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_1, 1, 229.7, 23.3 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_1, 1, 229.7, 23.3 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_1, 1, 231.6, 24 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_1, 1, 231.6, 24 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_1, 1, 233.6, 24.7 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_1, 1, 233.6, 24.7 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_1, 1, 235.6, 25.4 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_1, 1, 235.6, 25.4 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_1, 1, 237.5, 26.2 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_1, 1, 237.5, 26.2 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_1, 1, 149.1, 33.6 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_1, 1, 149.1, 33.6 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_1, 1, 95.9, 56.6 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_1, 1, 95.9, 56.6 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_1, 1, 114.7, 23.5 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_1, 1, 114.7, 23.5 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_1, 1, 63.6, 32.4 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_1, 1, 63.6, 32.4 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_1, 1, 74.4, 69.4 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_1, 1, 74.4, 69.4 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_1, 1, 107, 35.4 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_1, 1, 107, 35.4 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_1, 1, 140.1, 30.7 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_1, 1, 140.1, 30.7 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_1, 1, 173.1, 26 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_1, 1, 173.1, 26 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_1, 1, 160.1, 39.2 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_1, 1, 160.1, 39.2 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_1, 1, 219.1, -3.5 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_1, 1, 219.1, -3.5 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_1, 1, 208.2, -4.2 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_1, 1, 208.2, -4.2 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_1, 1, 228.2, 27.6 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_1, 1, 228.2, 27.6 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_1, 1, 206.3, 11.3 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_1, 1, 206.3, 11.3 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_1, 1, 198.4, 11.1 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_1, 1, 198.4, 11.1 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_1, 1, 190.4, 10.9 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_1, 1, 190.4, 10.9 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_1, 1, 182.5, 10.7 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_1, 1, 182.5, 10.7 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_1, 1, 174.6, 10.5 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_1, 1, 174.6, 10.5 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_1, 1, 166.7, 10.3 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_1, 1, 166.7, 10.3 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_1, 1, 158.7, 10.1 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_1, 1, 158.7, 10.1 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_1, 1, 150.8, 9.9 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_1, 1, 150.8, 9.9 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_1, 1, 142.9, 9.6 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_1, 1, 142.9, 9.6 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_1, 1, 135, 9.4 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_1, 1, 135, 9.4 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_1, 1, 127.1, 9.2 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_1, 1, 127.1, 9.2 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_1, 1, 119.1, 9 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_1, 1, 119.1, 9 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_1, 1, 111.2, 8.8 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_1, 1, 111.2, 8.8 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_1, 1, 115.2, 1.4 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_1, 1, 115.2, 1.4 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_1, 1, 117.6, -6 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_1, 1, 117.6, -6 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_1, 1, 118.4, -13.4 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_1, 1, 118.4, -13.4 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_1, 1, 117.5, -20.9 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_1, 1, 117.5, -20.9 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_1, 1, 43.1, -17.5 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_1, 1, 43.1, -17.5 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_1, 1, 58.1, -68.1 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_1, 1, 58.1, -68.1 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_1, 1, 63, -78 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_1, 1, 63, -78 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_1, 1, 74.6, -124.6 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_1, 1, 74.6, -124.6 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_1, 1, 86.2, -171.2 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_1, 1, 86.2, -171.2 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_1, 1, 97.9, -217.8 , 0 );
--setMoveKey( spep_1 + 165 + OFFSET_1, 1, 95, -206.1 , 0 );
--setMoveKey( spep_1 + 166 + OFFSET_1, 1, 109.5, -264.3 , 0 );

setScaleKey( spep_1 + 0, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 23 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 24 + OFFSET_1, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 51 + OFFSET_1, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 52 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 71 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 72 + OFFSET_1, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 93 + OFFSET_1, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 94 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 103 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 104 + OFFSET_1, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 145 + OFFSET_1, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 146 + OFFSET_1, 1, 1.70, 1.70 );
setScaleKey( spep_1 + 147 + OFFSET_1, 1, 1.70, 1.70 );
setScaleKey( spep_1 + 148 + OFFSET_1, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 149 + OFFSET_1, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 150 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_1 + 151 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_1 + 152 + OFFSET_1, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 153 + OFFSET_1, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 154 + OFFSET_1, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 155 + OFFSET_1, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 156 + OFFSET_1, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 157 + OFFSET_1, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 158 + OFFSET_1, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 159 + OFFSET_1, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 160 + OFFSET_1, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 161 + OFFSET_1, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 162 + OFFSET_1, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 163 + OFFSET_1, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 164 + OFFSET_1, 1, 1.45, 1.45 );
--setScaleKey( spep_1 + 165 + OFFSET_1, 1, 1.42, 1.42 );
--setScaleKey( spep_1 + 166 + OFFSET_1, 1, 1.55, 1.55 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 24 + OFFSET_1, 1, 0 );
setRotateKey( spep_1 + 25 + OFFSET_1, 1, 0 );
setRotateKey( spep_1 + 26 + OFFSET_1, 1, 17 );
setRotateKey( spep_1 + 27 + OFFSET_1, 1, 17 );
setRotateKey( spep_1 + 28 + OFFSET_1, 1, 17.9 );
setRotateKey( spep_1 + 29 + OFFSET_1, 1, 17.9 );
setRotateKey( spep_1 + 30 + OFFSET_1, 1, 18.8 );
setRotateKey( spep_1 + 31 + OFFSET_1, 1, 18.8 );
setRotateKey( spep_1 + 32 + OFFSET_1, 1, 19.7 );
setRotateKey( spep_1 + 33 + OFFSET_1, 1, 19.7 );
setRotateKey( spep_1 + 34 + OFFSET_1, 1, 20.6 );
setRotateKey( spep_1 + 35 + OFFSET_1, 1, 20.6 );
setRotateKey( spep_1 + 36 + OFFSET_1, 1, 21.5 );
setRotateKey( spep_1 + 37 + OFFSET_1, 1, 21.5 );
setRotateKey( spep_1 + 38 + OFFSET_1, 1, 22.4 );
setRotateKey( spep_1 + 39 + OFFSET_1, 1, 22.4 );
setRotateKey( spep_1 + 40 + OFFSET_1, 1, 23.3 );
setRotateKey( spep_1 + 41 + OFFSET_1, 1, 23.3 );
setRotateKey( spep_1 + 42 + OFFSET_1, 1, 24.2 );
setRotateKey( spep_1 + 43 + OFFSET_1, 1, 24.2 );
setRotateKey( spep_1 + 44 + OFFSET_1, 1, 25.1 );
setRotateKey( spep_1 + 45 + OFFSET_1, 1, 25.1 );
setRotateKey( spep_1 + 46 + OFFSET_1, 1, 26 );
setRotateKey( spep_1 + 47 + OFFSET_1, 1, 26 );
setRotateKey( spep_1 + 48 + OFFSET_1, 1, 26.9 );
setRotateKey( spep_1 + 49 + OFFSET_1, 1, 26.9 );
setRotateKey( spep_1 + 50 + OFFSET_1, 1, 27.8 );
setRotateKey( spep_1 + 51 + OFFSET_1, 1, 27.8 );
setRotateKey( spep_1 + 52 + OFFSET_1, 1, -38.4 );
setRotateKey( spep_1 + 53 + OFFSET_1, 1, -38.4 );
setRotateKey( spep_1 + 54 + OFFSET_1, 1, -30.4 );
setRotateKey( spep_1 + 55 + OFFSET_1, 1, -30.4 );
setRotateKey( spep_1 + 56 + OFFSET_1, 1, -22.3 );
setRotateKey( spep_1 + 57 + OFFSET_1, 1, -22.3 );
setRotateKey( spep_1 + 58 + OFFSET_1, 1, -20.3 );
setRotateKey( spep_1 + 59 + OFFSET_1, 1, -20.3 );
setRotateKey( spep_1 + 60 + OFFSET_1, 1, -18.3 );
setRotateKey( spep_1 + 61 + OFFSET_1, 1, -18.3 );
setRotateKey( spep_1 + 62 + OFFSET_1, 1, -16.4 );
setRotateKey( spep_1 + 63 + OFFSET_1, 1, -16.4 );
setRotateKey( spep_1 + 64 + OFFSET_1, 1, -14.4 );
setRotateKey( spep_1 + 65 + OFFSET_1, 1, -14.4 );
setRotateKey( spep_1 + 66 + OFFSET_1, 1, -12.4 );
setRotateKey( spep_1 + 67 + OFFSET_1, 1, -12.4 );
setRotateKey( spep_1 + 68 + OFFSET_1, 1, -10.5 );
setRotateKey( spep_1 + 69 + OFFSET_1, 1, -10.5 );
setRotateKey( spep_1 + 70 + OFFSET_1, 1, -8.5 );
setRotateKey( spep_1 + 71 + OFFSET_1, 1, -8.5 );
setRotateKey( spep_1 + 72 + OFFSET_1, 1, 18.5 );
setRotateKey( spep_1 + 73 + OFFSET_1, 1, 18.5 );
setRotateKey( spep_1 + 74 + OFFSET_1, 1, 18.9 );
setRotateKey( spep_1 + 75 + OFFSET_1, 1, 18.9 );
setRotateKey( spep_1 + 76 + OFFSET_1, 1, 19.4 );
setRotateKey( spep_1 + 77 + OFFSET_1, 1, 19.4 );
setRotateKey( spep_1 + 78 + OFFSET_1, 1, 19.8 );
setRotateKey( spep_1 + 79 + OFFSET_1, 1, 19.8 );
setRotateKey( spep_1 + 80 + OFFSET_1, 1, 20.3 );
setRotateKey( spep_1 + 81 + OFFSET_1, 1, 20.3 );
setRotateKey( spep_1 + 82 + OFFSET_1, 1, 20.7 );
setRotateKey( spep_1 + 83 + OFFSET_1, 1, 20.7 );
setRotateKey( spep_1 + 84 + OFFSET_1, 1, 21.2 );
setRotateKey( spep_1 + 85 + OFFSET_1, 1, 21.2 );
setRotateKey( spep_1 + 86 + OFFSET_1, 1, 21.6 );
setRotateKey( spep_1 + 87 + OFFSET_1, 1, 21.6 );
setRotateKey( spep_1 + 88 + OFFSET_1, 1, 22.1 );
setRotateKey( spep_1 + 89 + OFFSET_1, 1, 22.1 );
setRotateKey( spep_1 + 90 + OFFSET_1, 1, 22.5 );
setRotateKey( spep_1 + 91 + OFFSET_1, 1, 22.5 );
setRotateKey( spep_1 + 92 + OFFSET_1, 1, 23 );
setRotateKey( spep_1 + 93 + OFFSET_1, 1, 23 );
setRotateKey( spep_1 + 94 + OFFSET_1, 1, -32 );
setRotateKey( spep_1 + 95 + OFFSET_1, 1, -32 );
setRotateKey( spep_1 + 96 + OFFSET_1, 1, -39 );
setRotateKey( spep_1 + 97 + OFFSET_1, 1, -39 );
setRotateKey( spep_1 + 98 + OFFSET_1, 1, -46 );
setRotateKey( spep_1 + 99 + OFFSET_1, 1, -46 );
setRotateKey( spep_1 + 100 + OFFSET_1, 1, -53 );
setRotateKey( spep_1 + 101 + OFFSET_1, 1, -53 );
setRotateKey( spep_1 + 102 + OFFSET_1, 1, -60 );
setRotateKey( spep_1 + 103 + OFFSET_1, 1, -60 );
setRotateKey( spep_1 + 104 + OFFSET_1, 1, 4 );
setRotateKey( spep_1 + 105 + OFFSET_1, 1, 4 );
setRotateKey( spep_1 + 106 + OFFSET_1, 1, 7.9 );
setRotateKey( spep_1 + 107 + OFFSET_1, 1, 7.9 );
setRotateKey( spep_1 + 108 + OFFSET_1, 1, 11.7 );
setRotateKey( spep_1 + 109 + OFFSET_1, 1, 11.7 );
setRotateKey( spep_1 + 110 + OFFSET_1, 1, 15.5 );
setRotateKey( spep_1 + 111 + OFFSET_1, 1, 15.5 );
setRotateKey( spep_1 + 112 + OFFSET_1, 1, 19.4 );
setRotateKey( spep_1 + 113 + OFFSET_1, 1, 19.4 );
setRotateKey( spep_1 + 114 + OFFSET_1, 1, 23.2 );
setRotateKey( spep_1 + 115 + OFFSET_1, 1, 23.2 );
setRotateKey( spep_1 + 116 + OFFSET_1, 1, 24.4 );
setRotateKey( spep_1 + 117 + OFFSET_1, 1, 24.4 );
setRotateKey( spep_1 + 118 + OFFSET_1, 1, 25.5 );
setRotateKey( spep_1 + 119 + OFFSET_1, 1, 25.5 );
setRotateKey( spep_1 + 120 + OFFSET_1, 1, 26.6 );
setRotateKey( spep_1 + 121 + OFFSET_1, 1, 26.6 );
setRotateKey( spep_1 + 122 + OFFSET_1, 1, 27.8 );
setRotateKey( spep_1 + 123 + OFFSET_1, 1, 27.8 );
setRotateKey( spep_1 + 124 + OFFSET_1, 1, 28.9 );
setRotateKey( spep_1 + 125 + OFFSET_1, 1, 28.9 );
setRotateKey( spep_1 + 126 + OFFSET_1, 1, 30 );
setRotateKey( spep_1 + 127 + OFFSET_1, 1, 30 );
setRotateKey( spep_1 + 128 + OFFSET_1, 1, 31.2 );
setRotateKey( spep_1 + 129 + OFFSET_1, 1, 31.2 );
setRotateKey( spep_1 + 130 + OFFSET_1, 1, 32.3 );
setRotateKey( spep_1 + 131 + OFFSET_1, 1, 32.3 );
setRotateKey( spep_1 + 132 + OFFSET_1, 1, 33.4 );
setRotateKey( spep_1 + 133 + OFFSET_1, 1, 33.4 );
setRotateKey( spep_1 + 134 + OFFSET_1, 1, 34.6 );
setRotateKey( spep_1 + 135 + OFFSET_1, 1, 34.6 );
setRotateKey( spep_1 + 136 + OFFSET_1, 1, 35.7 );
setRotateKey( spep_1 + 137 + OFFSET_1, 1, 35.7 );
setRotateKey( spep_1 + 138 + OFFSET_1, 1, 36.8 );
setRotateKey( spep_1 + 139 + OFFSET_1, 1, 36.8 );
setRotateKey( spep_1 + 140 + OFFSET_1, 1, 38 );
setRotateKey( spep_1 + 141 + OFFSET_1, 1, 38 );
setRotateKey( spep_1 + 142 + OFFSET_1, 1, 39.1 );
setRotateKey( spep_1 + 145 + OFFSET_1, 1, 39.1 );
setRotateKey( spep_1 + 146 + OFFSET_1, 1, 40.3 );
setRotateKey( spep_1 + 147 + OFFSET_1, 1, 40.3 );
setRotateKey( spep_1 + 148 + OFFSET_1, 1, 41.4 );
setRotateKey( spep_1 + 149 + OFFSET_1, 1, 41.4 );
setRotateKey( spep_1 + 150 + OFFSET_1, 1, 42.5 );
setRotateKey( spep_1 + 151 + OFFSET_1, 1, 42.5 );
setRotateKey( spep_1 + 152 + OFFSET_1, 1, 43.7 );
setRotateKey( spep_1 + 153 + OFFSET_1, 1, 43.7 );
setRotateKey( spep_1 + 154 + OFFSET_1, 1, -3.2 );
setRotateKey( spep_1 + 155 + OFFSET_1, 1, -3.2 );
setRotateKey( spep_1 + 156 + OFFSET_1, 1, -2.6 );
setRotateKey( spep_1 + 157 + OFFSET_1, 1, -2.6 );
setRotateKey( spep_1 + 158 + OFFSET_1, 1, -2.6 );
setRotateKey( spep_1 + 159 + OFFSET_1, 1, -2.6 );
setRotateKey( spep_1 + 160 + OFFSET_1, 1, -1.9 );
setRotateKey( spep_1 + 161 + OFFSET_1, 1, -1.9 );
setRotateKey( spep_1 + 162 + OFFSET_1, 1, -1.3 );
setRotateKey( spep_1 + 163 + OFFSET_1, 1, -1.3 );
setRotateKey( spep_1 + 164 + OFFSET_1, 1, -0.6 );
--setRotateKey( spep_1 + 165 + OFFSET_1, 1, -0.8 );
--setRotateKey( spep_1 + 166 + OFFSET_1, 1, 0 );


-- ** 音 ** --
--キック
SE010 = playSeVer2( spep_1 + 16, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 22, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 22, SE011, 78 );
SE012 = playSeVer2( spep_1 + 22, 1110, "", 0, 0, 0, -1);

--キック2
SE013 = playSeVer2( spep_1 + 50, 1187, "",spep_1 + 114, 0, 28, -1);
setSeVolumeByWorkId( spep_1 + 50, SE013, 87 );
SE014 = playSeVer2( spep_1 + 50, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 50, SE014, 79 );

--画面前移動
SE015 = playSeVer2( spep_1 + 70, 1004, "", 0, 0, 0, -1);

--ラッシュ
SE016 = playSeVer2( spep_1 + 94, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 94, 1009, "", 0, 0, 0, -1);

--瞬間移動
SE018 = playSeVer2( spep_1 + 98, 1109, "", 0, 0, 0, -1);

--ラッシュ
SE019 = playSeVer2( spep_1 + 108, 1153, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 108, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE021 = playSeVer2( spep_1 + 132, 1109, "", 0, 0, 0, -1);

--殴り飛ばす
SE022 = playSeVer2( spep_1 + 154, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 154, SE022, 73 );
SE023 = playSeVer2( spep_1 + 150, 1120, "", 0, 0, 0, 0.6);

-- ** 次の準備 ** --
spep_2 = spep_1 + 164;

-------------------------------------------------
-- ダメージ表示　爆発(112f)
-------------------------------------------------

finish = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0); -- ef_006
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_2 + 112, finish, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0);
setEffScaleKey( spep_2 + 112, finish, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish, 0);
setEffRotateKey( spep_2 + 112, finish, 0);
setEffAlphaKey( spep_2 + 0, finish, 255);
setEffAlphaKey( spep_2 + 112, finish, 255);

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --
 
-- ** ひび割れ ** --
finish_f = entryEffect( spep_2 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_2 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 8, finish_f, 0 );
setEffRotateKey( spep_2 + 112, finish_f, 0 );
setEffAlphaKey( spep_2 + 8, finish_f, 255 );
setEffAlphaKey( spep_2 + 112, finish_f, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_2 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_2 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_2 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_2 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_2 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_2 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_2 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_2 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_2 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_2 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_2 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_2 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_2 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_2 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_2 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_2 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_2 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_2 + 46, shuchusen_wh, 0 );
 
shuchusen_bl = entryEffectLife( spep_2 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_2 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_2 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_2 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_2 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_2 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_2 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_2 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_2 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_2 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_2 + 14, ctga, 14, 20 );

setEffMoveKey( spep_2 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_2 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_2 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_2 + 14, ctga, -10.9 );
setEffRotateKey( spep_2 + 15, ctga, -10.9 );
setEffRotateKey( spep_2 + 16, ctga, -14.9 );
setEffRotateKey( spep_2 + 17, ctga, -14.9 );
setEffRotateKey( spep_2 + 18, ctga, -10.9 );
setEffRotateKey( spep_2 + 19, ctga, -10.9 );
setEffRotateKey( spep_2 + 20, ctga, -14.9 );
setEffRotateKey( spep_2 + 21, ctga, -14.9 );
setEffRotateKey( spep_2 + 22, ctga, -10.9 );
setEffRotateKey( spep_2 + 23, ctga, -10.9 );
setEffRotateKey( spep_2 + 24, ctga, -14.9 );
setEffRotateKey( spep_2 + 25, ctga, -14.9 );
setEffRotateKey( spep_2 + 26, ctga, -10.9 );
setEffRotateKey( spep_2 + 27, ctga, -10.9 );
setEffRotateKey( spep_2 + 28, ctga, -14.9 );
setEffRotateKey( spep_2 + 112, ctga, -14.9 );

setEffAlphaKey( spep_2 + 14, ctga, 255 );
setEffAlphaKey( spep_2 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 112, 1, 0 );

changeAnime( spep_2 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_2 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_2 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_2 -1 + 4, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_2 -1 + 6, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_2 -1 + 8, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_2 -1 + 10, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_2 -1 + 12, 1, -28.8, -46 , 0 );
setMoveKey( spep_2 -1 + 14, 1, -32.3, -52 , 0 );
setMoveKey( spep_2 -1 + 16, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 -1 + 18, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_2 -1 + 20, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 -1 + 22, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_2 -1 + 24, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 -1 + 26, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_2 -1 + 28, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 -1 + 30, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_2 -1 + 32, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_2 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_2 -1 + 4, 1, 0.42, 0.42 );
setScaleKey( spep_2 -1 + 6, 1, 0.635, 0.635 );
setScaleKey( spep_2 -1 + 8, 1, 0.855, 0.855 );
setScaleKey( spep_2 -1 + 10, 1, 1.075, 1.07 );
setScaleKey( spep_2 -1 + 12, 1, 1.295, 1.29 );
setScaleKey( spep_2 -1 + 14, 1, 1.51, 1.505 );
setScaleKey( spep_2 -1 + 16, 1, 1.73, 1.725 );
setScaleKey( spep_2 -1 + 18, 1, 1.905, 1.9 );
setScaleKey( spep_2 -1 + 20, 1, 1.73, 1.725 );
setScaleKey( spep_2 -1 + 22, 1, 1.905, 1.9 );
setScaleKey( spep_2 -1 + 24, 1, 1.73, 1.725 );
setScaleKey( spep_2 -1 + 26, 1, 1.905, 1.9 );
setScaleKey( spep_2 -1 + 28, 1, 1.73, 1.725 );
setScaleKey( spep_2 -1 + 30, 1, 1.905, 1.9 );
setScaleKey( spep_2 -1 + 32, 1, 1.73, 1.725 );
setScaleKey( spep_2 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_2 + 0, 1, -122.8 - 232 );
setRotateKey( spep_2 + 2, 1, -122.8 );
setRotateKey( spep_2 -1 + 4, 1, -1 );
setRotateKey( spep_2 -1 + 6, 1, 120.7 );
setRotateKey( spep_2 -1 + 8, 1, 242.5 );
setRotateKey( spep_2 -1 + 10, 1, 364.3 );
setRotateKey( spep_2 -1 + 12, 1, 486 );
setRotateKey( spep_2 -1 + 14, 1, 607.8 );
setRotateKey( spep_2 -1 + 16, 1, 729.5 );
setRotateKey( spep_2 + 112, 1, 729.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 112 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_2 + 14, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_2 + 14, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 6 ); -- ダメージ表示フレーム
endPhase( spep_2 + 112 - 4 ); -- 終了フレーム


end
