--1023570:ブロリ－_ギガンティックストライク
--sp_effect_b1_00178
--sp2316


fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 9; --気を貯める
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
SP_01 = 158948; --顔アップ→手前に接近セリフカットイン ef_001 キャラ、背景込み（敵味方共通）
SP_02 = 158949; --敵を殴る ef_002 キャラ,書き文字：敵の前に表示 ef_003と合わせて表示
SP_03 = 158951; --敵を殴る（背景） ef_003 背景：敵より奥に表示 敵側は反転 ef_002 ef_002_rと合わせて表示
SP_04 = 158952; --手前に来る敵を裏拳 ef_004 キャラ,書き文字：敵の前に表示
SP_05 = 158954; --手前に来る敵を裏拳 ef_005 キャラ、背景込み：敵より奥に表示
SP_06 = 158956; --手前に飛んできて蹴り→フィニッシュ	ef_006 キャラ,書き文字：敵の前に表示 ef_007と合わせて表示
SP_07 = 158958; --手前に飛んできて蹴り→フィニッシュ	ef_007 背景：敵より奥に表示　敵側は反転 ef_006、ef_006_rと合わせて表示

--エフェクト(敵)
SP_08 = 158950; --敵を殴る	ef_002_r キャラ,書き文字：敵の前に表示 ef_003と合わせて表示（敵側）
SP_09 = 158953; --手前に来る敵を裏拳 ef_004_r キャラ,書き文字：敵の前に表示（敵側）
SP_10 = 158955; --手前に来る敵を裏拳 ef_005_r キャラ、背景込み：敵より奥に表示（敵側）
SP_11 = 158957; --手前に飛んできて蹴り→フィニッシュ	ef_006_r キャラ,書き文字：敵の前に表示（敵側） ef_007と合わせて表示


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 顔アップ→手前に接近セリフカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --顔アップ→手前に接近セリフカットイン ef_001 キャラ、背景込み（敵味方共通）
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 260 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_1 + 260 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 260 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 260 -5, base1, 255);
setEffAlphaKey( spep_1 + 260 -4, base1, 0);


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 1182, "", 0, 6, 0, -1); --入り
setSeVolumeByWorkId( spep_1 + 0, SE001, 89 );
setStartTimeMs( SE001,  67 );

SE002 = playSeVer2( spep_1 + 2, 8, "", 0, 0, 0, -1); --入り

SE003 = playSeVer2( spep_1 + 46, 1012, "", 0, 0, 0, -1); --構える
setSeVolumeByWorkId( spep_1 + 46, SE003, 56 );

SE004 = playSeVer2( spep_1 + 50, 1072, "", 0, 0, 0, -1); --ズームアウト

SE005 = playSeVer2( spep_1 + 80, 1116, "",spep_1 + 122, 0, 16, -1); --ズームアウト

SE007 = playSeVer2( spep_1 + 96, 1175, "",spep_1 + 274, 0, 18, -1); --ズームアウト
setSeVolumeByWorkId( spep_1 + 96, SE007, 18 );

SE006 = playSeVer2( spep_1 + 152, 1121, "",spep_1 + 274, 4, 18, -1); --突っ込んでくる
setStartTimeMs( SE006,  1200 );

SE008 = playSeVer2( spep_1 + 152, 1183, "",spep_1 + 282, 0, 26, -1); --突っ込んでくる

SE009 = playSeVer2( spep_1 + 152, 1182, "", 0, 0, 0, -1); --突っ込んでくる

SE010 = playSeVer2( spep_1 + 174, 1018, "", 0, 0, 0, -1); --顔カットイン

SE011 = playSeVer2( spep_1 + 174, 1258, "",spep_1 + 272, 0, 16, -1); --突っ込んでくる
setSeVolumeByWorkId( spep_1 + 174, SE011, 72 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 190; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 166;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 次の準備 ** --
spep_2 = spep_1 + 260 -4;

-------------------------------------------------
-- 敵を殴る
-------------------------------------------------
-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); --敵を殴る ef_002 キャラ,書き文字：敵の前に表示 ef_003と合わせて表示
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 88 +4 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 88 +4 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 88 +4 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 88 +4 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 88 +4 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); --敵を殴る（背景） ef_003 背景：敵より奥に表示　敵側は反転　ef_002、ef_002_rと合わせて表示
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 88 +4 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 88 +4 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 88 +4 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 88 +4 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 88 +4 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 70 +4, 1, 0 );

changeAnime( spep_2 -3 + 0, 1, 104 );
changeAnime( spep_2 -3 + 8 +4, 1, 106 );
changeAnime( spep_2 -3 + 38 +4, 1, 105 );

-- setMoveKey( spep_2 -3 + 0, 1, 50.8, -124.4 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 58.3, -142.2 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 62.2, -147.2 , 0 );
setMoveKey( spep_2 -3 + 7 +4, 1, 64.2, -145.2 , 0 );
setMoveKey( spep_2 -3 + 8 +4, 1, 4.2, -119.9 , 0 );
setMoveKey( spep_2 -3 + 10 +4, 1, 5.8, -89.4 , 0 );
setMoveKey( spep_2 -3 + 12 +4, 1, 12.1, -137.3 , 0 );
setMoveKey( spep_2 -3 + 14 +4, 1, -19.8, -101.3 , 0 );
setMoveKey( spep_2 -3 + 16 +4, 1, 30.4, -68 , 0 );
setMoveKey( spep_2 -3 + 18 +4, 1, 13.7, -84 , 0 );
setMoveKey( spep_2 -3 + 20 +4, 1, 14.6, -54.1 , 0 );
setMoveKey( spep_2 -3 + 22 +4, 1, 25.7, -103.4 , 0 );
setMoveKey( spep_2 -3 + 24 +4, 1, -1.2, -68.7 , 0 );
setMoveKey( spep_2 -3 + 26 +4, 1, 54.2, -36.6 , 0 );
setMoveKey( spep_2 -3 + 28 +4, 1, 61.1, -30.7 , 0 );
setMoveKey( spep_2 -3 + 30 +4, 1, 68, -24.8 , 0 );
setMoveKey( spep_2 -3 + 32 +4, 1, 74.9, -18.9 , 0 );
setMoveKey( spep_2 -3 + 34 +4, 1, 81.8, -13 , 0 );
setMoveKey( spep_2 -3 + 37 +4, 1, 88.7, -7.1 , 0 );
setMoveKey( spep_2 -3 + 38 +4, 1, 118.5, -23 , 0 );
setMoveKey( spep_2 -3 + 40 +4, 1, 120.2, -25.3 , 0 );
setMoveKey( spep_2 -3 + 42 +4, 1, 122.6, -28.6 , 0 );
setMoveKey( spep_2 -3 + 44 +4, 1, 126.1, -33.1 , 0 );
setMoveKey( spep_2 -3 + 46 +4, 1, 130.7, -39.1 , 0 );
setMoveKey( spep_2 -3 + 48 +4, 1, 136.7, -47 , 0 );
setMoveKey( spep_2 -3 + 50 +4, 1, 144.4, -56.9 , 0 );
setMoveKey( spep_2 -3 + 52 +4, 1, 153.9, -69.3 , 0 );
setMoveKey( spep_2 -3 + 54 +4, 1, 165.4, -84.4 , 0 );
setMoveKey( spep_2 -3 + 56 +4, 1, 178.7, -101.8 , 0 );
setMoveKey( spep_2 -3 + 58 +4, 1, 193.3, -120.9 , 0 );
setMoveKey( spep_2 -3 + 60 +4, 1, 208.4, -140.5 , 0 );
setMoveKey( spep_2 -3 + 62 +4, 1, 211.4, -149.3 , 0 );
setMoveKey( spep_2 -3 + 64 +4, 1, 214.4, -158.1 , 0 );
setMoveKey( spep_2 -3 + 66 +4, 1, 217.3, -166.6 , 0 );
setMoveKey( spep_2 -3 + 68 +4, 1, 220.1, -174.9 , 0 );
setMoveKey( spep_2 -3 + 70 +4, 1, 237.6, -175.7 , 0 );

-- setScaleKey( spep_2 -3 + 0, 1, 1.1, 1.1 );
setScaleKey( spep_2 -2 + 2, 1, 4.83, 4.83 );
setScaleKey( spep_2 -3 + 4, 1, 6.29, 6.29 );
setScaleKey( spep_2 -3 + 7 +4, 1, 6.59, 6.59 );
setScaleKey( spep_2 -3 + 8 +4, 1, 6.51, 6.51 );
setScaleKey( spep_2 -3 + 10 +4, 1, 6.35, 6.35 );
setScaleKey( spep_2 -3 + 12 +4, 1, 6.19, 6.19 );
setScaleKey( spep_2 -3 + 14 +4, 1, 6.04, 6.04 );
setScaleKey( spep_2 -3 + 16 +4, 1, 5.88, 5.88 );
setScaleKey( spep_2 -3 + 18 +4, 1, 5.73, 5.73 );
setScaleKey( spep_2 -3 + 20 +4, 1, 5.57, 5.57 );
setScaleKey( spep_2 -3 + 22 +4, 1, 5.48, 5.48 );
setScaleKey( spep_2 -3 + 24 +4, 1, 5.39, 5.39 );
setScaleKey( spep_2 -3 + 26 +4, 1, 5.3, 5.3 );
setScaleKey( spep_2 -3 + 28 +4, 1, 5.21, 5.21 );
setScaleKey( spep_2 -3 + 30 +4, 1, 5.12, 5.12 );
setScaleKey( spep_2 -3 + 32 +4, 1, 5.03, 5.03 );
setScaleKey( spep_2 -3 + 34 +4, 1, 4.94, 4.94 );
setScaleKey( spep_2 -3 + 37 +4, 1, 4.84, 4.84 );
setScaleKey( spep_2 -3 + 38 +4, 1, 4, 4 );
setScaleKey( spep_2 -3 + 40 +4, 1, 3.94, 3.94 );
setScaleKey( spep_2 -3 + 42 +4, 1, 3.86, 3.86 );
setScaleKey( spep_2 -3 + 44 +4, 1, 3.75, 3.75 );
setScaleKey( spep_2 -3 + 46 +4, 1, 3.6, 3.6 );
setScaleKey( spep_2 -3 + 48 +4, 1, 3.4, 3.4 );
setScaleKey( spep_2 -3 + 50 +4, 1, 3.16, 3.16 );
setScaleKey( spep_2 -3 + 52 +4, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 54 +4, 1, 2.48, 2.48 );
setScaleKey( spep_2 -3 + 56 +4, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 58 +4, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 60 +4, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 62 +4, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 64 +4, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 66 +4, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 68 +4, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 70 +4, 1, 0.05, 0.05 );

-- setRotateKey( spep_2 -3 + 0, 1, 13 );
setRotateKey( spep_2 + 0, 1, 13 );
setRotateKey( spep_2 -3 + 7 +4, 1, 13 );
setRotateKey( spep_2 -3 + 8 +4, 1, -35.1 );
setRotateKey( spep_2 -3 + 10 +4, 1, -35 );
setRotateKey( spep_2 -3 + 12 +4, 1, -34.8 );
setRotateKey( spep_2 -3 + 14 +4, 1, -34.6 );
setRotateKey( spep_2 -3 + 16 +4, 1, -34.4 );
setRotateKey( spep_2 -3 + 18 +4, 1, -34.2 );
setRotateKey( spep_2 -3 + 20 +4, 1, -34.1 );
setRotateKey( spep_2 -3 + 22 +4, 1, -33.9 );
setRotateKey( spep_2 -3 + 24 +4, 1, -33.7 );
setRotateKey( spep_2 -3 + 26 +4, 1, -33.5 );
setRotateKey( spep_2 -3 + 28 +4, 1, -33.3 );
setRotateKey( spep_2 -3 + 30 +4, 1, -33.1 );
setRotateKey( spep_2 -3 + 32 +4, 1, -33 );
setRotateKey( spep_2 -3 + 34 +4, 1, -32.8 );
setRotateKey( spep_2 -3 + 37 +4, 1, -32.6 );
setRotateKey( spep_2 -3 + 38 +4, 1, 28 );
setRotateKey( spep_2 -3 + 40 +4, 1, 27.9 );
setRotateKey( spep_2 -3 + 42 +4, 1, 27.8 );


-- ** 音 ** --
SE012 = playSeVer2( spep_2 + 0, 1003, "", 0, 0, 0, -1); --パンチ

SE013 = playSeVer2( spep_2 + 6 +4, 1187, "", 0, 0, 0, -1); --パンチ

SE014 = playSeVer2( spep_2 + 6 +4, 1359, "", 0, 0, 0, -1); --パンチ

SE015 = playSeVer2( spep_2 + 60 +4, 1182, "", 0, 0, 0, -1); --追いかける

SE016 = playSeVer2( spep_2 + 60 +4, 1168, "",spep_2 + 146 +4, 0, 60, -1); --追いかける
setSeVolumeByWorkId( spep_2 + 60 +4, SE016, 70 );

SE017 = playSeVer2( spep_2 + 60 +4, 1277, "", 0, 0, 0, -1); --追いかける


-- ** 次の準備 ** --
spep_3 = spep_2 + 88 -4;

-------------------------------------------------
-- 手前に来る敵を裏拳
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); --手前に来る敵を裏拳 ef_004 キャラ,書き文字：敵の前に表示
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 120 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 120 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 120 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 120 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 120 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0); --手前に来る敵を裏拳 ef_005 キャラ、背景込み：敵より奥に表示
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 120 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 120 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 120 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 120 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 120 -4, base3_b, 0);

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 82, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );
changeAnime( spep_3 -3 + 22, 1, 108 );

-- setMoveKey( spep_3 -3 + 0, 1, 0, -130 , 0 );
setMoveKey( spep_3 -2 + 2, 1, -7.4, -102.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -14.8, -74.2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -22.3, -46.3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -29.7, -18.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -37.1, 9.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -44.5, 37.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -51.9, 65.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -40.7, 69.2 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -29.4, 73 , 0 );
setMoveKey( spep_3 -3 + 21, 1, -18.1, 76.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 450.5, 215.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 499.6, 210 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 499.7, 182.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 468.2, 130.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 479.8, 218.4 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 517.3, 201.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 494.4, 219.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 520.5, 191.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 509, 221.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 535.1, 192.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 523.6, 222.5 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 549.7, 193.9 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 857.8, 69.9 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 878.7, 151.1 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 916.3, 180 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 953.9, 208.9 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 991.4, 237.9 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 1029, 266.8 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 1066.5, 295.7 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 1104.1, 324.6 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 1141.7, 353.6 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 1179.2, 382.5 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 1216.8, 411.4 , 0 );
setMoveKey( spep_3 -3 + 67, 1, 1216.8, 411.4 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 153.1, -108.2 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 177.7, -110.1 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 202.2, -111.9 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 226.8, -113.8 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 411.3, -107.7 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 595.8, -101.6 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 780.2, -95.5 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 964.7, -89.4 , 0 );

-- setScaleKey( spep_3 -3 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_3 -2 + 2, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 4, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 6, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 8, 1, 1, 1 );
setScaleKey( spep_3 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 12, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 14, 1, 1.59, 1.59 );
setScaleKey( spep_3 -3 + 16, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 18, 1, 2, 2 );
setScaleKey( spep_3 -3 + 21, 1, 2.2, 2.2 );
setScaleKey( spep_3 -3 + 22, 1, 12.22, 12.22 );
setScaleKey( spep_3 -3 + 44, 1, 12.22, 12.22 );
setScaleKey( spep_3 -3 + 46, 1, 17.99, 17.99 );
setScaleKey( spep_3 -3 + 48, 1, 18.27, 18.27 );
setScaleKey( spep_3 -3 + 50, 1, 18.55, 18.55 );
setScaleKey( spep_3 -3 + 52, 1, 18.83, 18.83 );
setScaleKey( spep_3 -3 + 54, 1, 19.12, 19.11 );
setScaleKey( spep_3 -3 + 56, 1, 19.4, 19.4 );
setScaleKey( spep_3 -3 + 58, 1, 19.68, 19.68 );
setScaleKey( spep_3 -3 + 60, 1, 19.96, 19.96 );
setScaleKey( spep_3 -3 + 62, 1, 20.24, 20.24 );
setScaleKey( spep_3 -3 + 64, 1, 20.52, 20.52 );
setScaleKey( spep_3 -3 + 66, 1, 20.81, 20.8 );
setScaleKey( spep_3 -3 + 67, 1, 20.81, 20.8 );
setScaleKey( spep_3 -3 + 68, 1, 3.49, 3.49 );
setScaleKey( spep_3 -3 + 82, 1, 3.49, 3.49 );

-- setRotateKey( spep_3 -3 + 0, 1, -53.9 );
setRotateKey( spep_3 -2 + 2, 1, -53.9 );
setRotateKey( spep_3 -3 + 4, 1, -54 );
setRotateKey( spep_3 -3 + 8, 1, -54 );
setRotateKey( spep_3 -3 + 10, 1, -54.1 );
setRotateKey( spep_3 -3 + 14, 1, -54.1 );
setRotateKey( spep_3 -3 + 16, 1, -54.2 );
setRotateKey( spep_3 -3 + 21, 1, -54.2 );
setRotateKey( spep_3 -3 + 22, 1, -8.3 );
setRotateKey( spep_3 -3 + 66, 1, -8.3 );
setRotateKey( spep_3 -3 + 67, 1, -8.3 );
setRotateKey( spep_3 -3 + 68, 1, 31.6 );
setRotateKey( spep_3 -3 + 82, 1, 31.6 );


-- ** 音 ** --
SE018 = playSeVer2( spep_3 + 10, 1189, "", 0, 0, 0, -1); --裏拳

SE019 = playSeVer2( spep_3 + 20, 1187, "", 0, 0, 0, -1); --裏拳
setSeVolumeByWorkId( spep_3 + 20, SE019, 95 );

SE020 = playSeVer2( spep_3 + 20, 1153, "", 0, 0, 0, -1); --裏拳
setSeVolumeByWorkId( spep_3 + 20, SE020, 81 );

SE021 = playSeVer2( spep_3 + 82, 1106, "", 0, 0, 0, -1); --追いかける2
setSeVolumeByWorkId( spep_3 + 82, SE021, 138 );

SE022 = playSeVer2( spep_3 + 84, 1207, "",spep_3 + 130, 0, 32, -1); --追いかける2
setSeVolumeByWorkId( spep_3 + 84, SE022, 84 );

SE023 = playSeVer2( spep_3 + 84, 44, "",spep_3 + 130, 0, 32, -1); --追いかける2


-- ** 次の準備 ** --
spep_c = spep_3 + 120 -4;

-------------------------------------------------
--カードカットイン(94F)
-------------------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

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
-- playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_c + 94;

-------------------------------------------------
-- 手前に飛んできて蹴り→フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0); --手前に飛んできて蹴り→フィニッシュ ef_006 キャラ,書き文字：敵の前に表示 ef_007と合わせて表示
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 180 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 180 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 180 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 180 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 180 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0); --手前に飛んできて蹴り→フィニッシュ ef_007 背景：敵より奥に表示　敵側は反転　ef_006、ef_006_rと合わせて表示
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 180 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 180 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 180 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 180 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 180 -4, base4_b, 0);

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 18, 1, 1 );
setDisp( spep_4 -3 + 36, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4 -3 + 18, 1, -22, 28 , 0 );
setMoveKey( spep_4 -3 + 19, 1, -22, 28 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -95, 1 , 0 );
setMoveKey( spep_4 -3 + 21, 1, -95, 1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -22, 28 , 0 );
setMoveKey( spep_4 -3 + 23, 1, -22, 28 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -27, 18.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -32, 8.5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 143, -1.3 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 200, -11 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 295.5, 4.5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 409.9, 20 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 575, -11 , 0 );

setScaleKey( spep_4 -3 + 18, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 36, 1, 0.71, 0.71 );

setRotateKey( spep_4 -3 + 18, 1, 0 );
setRotateKey( spep_4 -3 + 36, 1, 0 );


-- ** 音 ** --
SE025 = playSeVer2( spep_4 + 0, 1121, "",spep_4 + 54, 4, 22, -1); --ギガンティックストライク
setStartTimeMs( SE025,  1133 );

SE026 = playSeVer2( spep_4 + 16, 1182, "",spep_4 + 24, 0, 4, -1); --ギガンティックストライク
setSeVolumeByWorkId( spep_4 + 16, SE026, 290 );

SE027 = playSeVer2( spep_4 + 20, 1187, "", 0, 0, 0, -1); --ギガンティックストライク

SE028 = playSeVer2( spep_4 + 26, 1190, "", 0, 0, 0, -1); --ギガンティックストライク
setSeVolumeByWorkId( spep_4 + 26, SE028, 71 );

SE029 = playSeVer2( spep_4 + 30, 1024, "", 0, 0, 0, -1); --ギガンティックストライク
setSeVolumeByWorkId( spep_4 + 30, SE029, 89 );

SE030 = playSeVer2( spep_4 + 50, 1044, "", 0, 0, 0, -1); --ギガンティックストライク
setSeVolumeByWorkId( spep_4 + 50, SE030, 63 );

SE031 = playSeVer2( spep_4 + 72, 1116, "",spep_4 + 110, 0, 18, -1); --ギガンティックストライク
setSeVolumeByWorkId( spep_4 + 72, SE031, 71 );

SE032 = playSeVer2( spep_4 + 78, 1232, "", 0, 0, 0, -1); --ギガンティックストライク
setSeVolumeByWorkId( spep_4 + 78, SE032, 63 );


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 70);
endPhase( spep_4 + 180 -8);

else


------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 顔アップ→手前に接近セリフカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --顔アップ→手前に接近セリフカットイン ef_001 キャラ、背景込み（敵味方共通）
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 260 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, -1.0, 1.0);
setEffScaleKey( spep_1 + 260 -4, base1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 260 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 260 -5, base1, 255);
setEffAlphaKey( spep_1 + 260 -4, base1, 0);


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 1182, "", 0, 6, 0, -1); --入り
setSeVolumeByWorkId( spep_1 + 0, SE001, 89 );
setStartTimeMs( SE001,  67 );

SE002 = playSeVer2( spep_1 + 2, 8, "", 0, 0, 0, -1); --入り

SE003 = playSeVer2( spep_1 + 46, 1012, "", 0, 0, 0, -1); --構える
setSeVolumeByWorkId( spep_1 + 46, SE003, 56 );

SE004 = playSeVer2( spep_1 + 50, 1072, "", 0, 0, 0, -1); --ズームアウト

SE005 = playSeVer2( spep_1 + 80, 1116, "",spep_1 + 122, 0, 16, -1); --ズームアウト

SE007 = playSeVer2( spep_1 + 96, 1175, "",spep_1 + 274, 0, 18, -1); --ズームアウト
setSeVolumeByWorkId( spep_1 + 96, SE007, 18 );

SE006 = playSeVer2( spep_1 + 152, 1121, "",spep_1 + 274, 4, 18, -1); --突っ込んでくる
setStartTimeMs( SE006,  1200 );

SE008 = playSeVer2( spep_1 + 152, 1183, "",spep_1 + 282, 0, 26, -1); --突っ込んでくる

SE009 = playSeVer2( spep_1 + 152, 1182, "", 0, 0, 0, -1); --突っ込んでくる

--SE010 = playSeVer2( spep_1 + 174, 1018, "", 0, 0, 0, -1); --顔カットイン

SE011 = playSeVer2( spep_1 + 174, 1258, "",spep_1 + 272, 0, 16, -1); --突っ込んでくる
setSeVolumeByWorkId( spep_1 + 174, SE011, 72 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 190; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 166;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, -40, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, -40, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, -80, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 次の準備 ** --
spep_2 = spep_1 + 260 -4;

-------------------------------------------------
-- 敵を殴る
-------------------------------------------------
-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_08, 0x100, -1, 0, 0, 0); --敵を殴る ef_002 キャラ,書き文字：敵の前に表示 ef_003と合わせて表示
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 88 +4 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 88 +4 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 88 +4 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 88 +4 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 88 +4 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); --敵を殴る（背景） ef_003 背景：敵より奥に表示　敵側は反転 ef_002、ef_002_rと合わせて表示
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 88 +4 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 88 +4 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 88 +4 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 88 +4 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 88 +4 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 70 +4, 1, 0 );

changeAnime( spep_2 -3 + 0, 1, 104 );
changeAnime( spep_2 -3 + 8 +4, 1, 106 );
changeAnime( spep_2 -3 + 38 +4, 1, 105 );

-- setMoveKey( spep_2 -3 + 0, 1, 50.8, -124.4 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 58.3, -142.2 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 62.2, -147.2 , 0 );
setMoveKey( spep_2 -3 + 7 +4, 1, 64.2, -145.2 , 0 );
setMoveKey( spep_2 -3 + 8 +4, 1, 4.2, -119.9 , 0 );
setMoveKey( spep_2 -3 + 10 +4, 1, 5.8, -89.4 , 0 );
setMoveKey( spep_2 -3 + 12 +4, 1, 12.1, -137.3 , 0 );
setMoveKey( spep_2 -3 + 14 +4, 1, -19.8, -101.3 , 0 );
setMoveKey( spep_2 -3 + 16 +4, 1, 30.4, -68 , 0 );
setMoveKey( spep_2 -3 + 18 +4, 1, 13.7, -84 , 0 );
setMoveKey( spep_2 -3 + 20 +4, 1, 14.6, -54.1 , 0 );
setMoveKey( spep_2 -3 + 22 +4, 1, 25.7, -103.4 , 0 );
setMoveKey( spep_2 -3 + 24 +4, 1, -1.2, -68.7 , 0 );
setMoveKey( spep_2 -3 + 26 +4, 1, 54.2, -36.6 , 0 );
setMoveKey( spep_2 -3 + 28 +4, 1, 61.1, -30.7 , 0 );
setMoveKey( spep_2 -3 + 30 +4, 1, 68, -24.8 , 0 );
setMoveKey( spep_2 -3 + 32 +4, 1, 74.9, -18.9 , 0 );
setMoveKey( spep_2 -3 + 34 +4, 1, 81.8, -13 , 0 );
setMoveKey( spep_2 -3 + 37 +4, 1, 88.7, -7.1 , 0 );
setMoveKey( spep_2 -3 + 38 +4, 1, 118.5, -23 , 0 );
setMoveKey( spep_2 -3 + 40 +4, 1, 120.2, -25.3 , 0 );
setMoveKey( spep_2 -3 + 42 +4, 1, 122.6, -28.6 , 0 );
setMoveKey( spep_2 -3 + 44 +4, 1, 126.1, -33.1 , 0 );
setMoveKey( spep_2 -3 + 46 +4, 1, 130.7, -39.1 , 0 );
setMoveKey( spep_2 -3 + 48 +4, 1, 136.7, -47 , 0 );
setMoveKey( spep_2 -3 + 50 +4, 1, 144.4, -56.9 , 0 );
setMoveKey( spep_2 -3 + 52 +4, 1, 153.9, -69.3 , 0 );
setMoveKey( spep_2 -3 + 54 +4, 1, 165.4, -84.4 , 0 );
setMoveKey( spep_2 -3 + 56 +4, 1, 178.7, -101.8 , 0 );
setMoveKey( spep_2 -3 + 58 +4, 1, 193.3, -120.9 , 0 );
setMoveKey( spep_2 -3 + 60 +4, 1, 208.4, -140.5 , 0 );
setMoveKey( spep_2 -3 + 62 +4, 1, 211.4, -149.3 , 0 );
setMoveKey( spep_2 -3 + 64 +4, 1, 214.4, -158.1 , 0 );
setMoveKey( spep_2 -3 + 66 +4, 1, 217.3, -166.6 , 0 );
setMoveKey( spep_2 -3 + 68 +4, 1, 220.1, -174.9 , 0 );
setMoveKey( spep_2 -3 + 70 +4, 1, 237.6, -175.7 , 0 );

-- setScaleKey( spep_2 -3 + 0, 1, 1.1, 1.1 );
setScaleKey( spep_2 -2 + 2, 1, 4.83, 4.83 );
setScaleKey( spep_2 -3 + 4, 1, 6.29, 6.29 );
setScaleKey( spep_2 -3 + 7 +4, 1, 6.59, 6.59 );
setScaleKey( spep_2 -3 + 8 +4, 1, 6.51, 6.51 );
setScaleKey( spep_2 -3 + 10 +4, 1, 6.35, 6.35 );
setScaleKey( spep_2 -3 + 12 +4, 1, 6.19, 6.19 );
setScaleKey( spep_2 -3 + 14 +4, 1, 6.04, 6.04 );
setScaleKey( spep_2 -3 + 16 +4, 1, 5.88, 5.88 );
setScaleKey( spep_2 -3 + 18 +4, 1, 5.73, 5.73 );
setScaleKey( spep_2 -3 + 20 +4, 1, 5.57, 5.57 );
setScaleKey( spep_2 -3 + 22 +4, 1, 5.48, 5.48 );
setScaleKey( spep_2 -3 + 24 +4, 1, 5.39, 5.39 );
setScaleKey( spep_2 -3 + 26 +4, 1, 5.3, 5.3 );
setScaleKey( spep_2 -3 + 28 +4, 1, 5.21, 5.21 );
setScaleKey( spep_2 -3 + 30 +4, 1, 5.12, 5.12 );
setScaleKey( spep_2 -3 + 32 +4, 1, 5.03, 5.03 );
setScaleKey( spep_2 -3 + 34 +4, 1, 4.94, 4.94 );
setScaleKey( spep_2 -3 + 37 +4, 1, 4.84, 4.84 );
setScaleKey( spep_2 -3 + 38 +4, 1, 4, 4 );
setScaleKey( spep_2 -3 + 40 +4, 1, 3.94, 3.94 );
setScaleKey( spep_2 -3 + 42 +4, 1, 3.86, 3.86 );
setScaleKey( spep_2 -3 + 44 +4, 1, 3.75, 3.75 );
setScaleKey( spep_2 -3 + 46 +4, 1, 3.6, 3.6 );
setScaleKey( spep_2 -3 + 48 +4, 1, 3.4, 3.4 );
setScaleKey( spep_2 -3 + 50 +4, 1, 3.16, 3.16 );
setScaleKey( spep_2 -3 + 52 +4, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 54 +4, 1, 2.48, 2.48 );
setScaleKey( spep_2 -3 + 56 +4, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 58 +4, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 60 +4, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 62 +4, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 64 +4, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 66 +4, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 68 +4, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 70 +4, 1, 0.05, 0.05 );

-- setRotateKey( spep_2 -3 + 0, 1, 13 );
setRotateKey( spep_2 + 0, 1, 13 );
setRotateKey( spep_2 -3 + 7 +4, 1, 13 );
setRotateKey( spep_2 -3 + 8 +4, 1, -35.1 );
setRotateKey( spep_2 -3 + 10 +4, 1, -35 );
setRotateKey( spep_2 -3 + 12 +4, 1, -34.8 );
setRotateKey( spep_2 -3 + 14 +4, 1, -34.6 );
setRotateKey( spep_2 -3 + 16 +4, 1, -34.4 );
setRotateKey( spep_2 -3 + 18 +4, 1, -34.2 );
setRotateKey( spep_2 -3 + 20 +4, 1, -34.1 );
setRotateKey( spep_2 -3 + 22 +4, 1, -33.9 );
setRotateKey( spep_2 -3 + 24 +4, 1, -33.7 );
setRotateKey( spep_2 -3 + 26 +4, 1, -33.5 );
setRotateKey( spep_2 -3 + 28 +4, 1, -33.3 );
setRotateKey( spep_2 -3 + 30 +4, 1, -33.1 );
setRotateKey( spep_2 -3 + 32 +4, 1, -33 );
setRotateKey( spep_2 -3 + 34 +4, 1, -32.8 );
setRotateKey( spep_2 -3 + 37 +4, 1, -32.6 );
setRotateKey( spep_2 -3 + 38 +4, 1, 28 );
setRotateKey( spep_2 -3 + 40 +4, 1, 27.9 );
setRotateKey( spep_2 -3 + 42 +4, 1, 27.8 );


-- ** 音 ** --
SE012 = playSeVer2( spep_2 + 0, 1003, "", 0, 0, 0, -1); --パンチ

SE013 = playSeVer2( spep_2 + 6 +4, 1187, "", 0, 0, 0, -1); --パンチ

SE014 = playSeVer2( spep_2 + 6 +4, 1359, "", 0, 0, 0, -1); --パンチ

SE015 = playSeVer2( spep_2 + 60 +4, 1182, "", 0, 0, 0, -1); --追いかける

SE016 = playSeVer2( spep_2 + 60 +4, 1168, "",spep_2 + 146 +4, 0, 60, -1); --追いかける
setSeVolumeByWorkId( spep_2 + 60 +4, SE016, 70 );

SE017 = playSeVer2( spep_2 + 60 +4, 1277, "", 0, 0, 0, -1); --追いかける


-- ** 次の準備 ** --
spep_3 = spep_2 + 88 -4;

-------------------------------------------------
-- 手前に来る敵を裏拳
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_09, 0x100, -1, 0, 0, 0); --手前に来る敵を裏拳 ef_004 キャラ,書き文字：敵の前に表示
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 120 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 120 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 120 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 120 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 120 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_10, 0x80, -1, 0, 0, 0); --手前に来る敵を裏拳 ef_005 キャラ、背景込み：敵より奥に表示
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 120 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 120 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 120 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 120 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 120 -4, base3_b, 0);

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 82, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );
changeAnime( spep_3 -3 + 22, 1, 108 );

-- setMoveKey( spep_3 -3 + 0, 1, 0, -130 , 0 );
setMoveKey( spep_3 -2 + 2, 1, -7.4, -102.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -14.8, -74.2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -22.3, -46.3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -29.7, -18.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -37.1, 9.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -44.5, 37.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -51.9, 65.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -40.7, 69.2 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -29.4, 73 , 0 );
setMoveKey( spep_3 -3 + 21, 1, -18.1, 76.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 450.5, 215.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 499.6, 210 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 499.7, 182.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 468.2, 130.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 479.8, 218.4 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 517.3, 201.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 494.4, 219.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 520.5, 191.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 509, 221.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 535.1, 192.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 523.6, 222.5 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 549.7, 193.9 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 857.8, 69.9 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 878.7, 151.1 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 916.3, 180 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 953.9, 208.9 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 991.4, 237.9 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 1029, 266.8 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 1066.5, 295.7 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 1104.1, 324.6 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 1141.7, 353.6 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 1179.2, 382.5 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 1216.8, 411.4 , 0 );
setMoveKey( spep_3 -3 + 67, 1, 1216.8, 411.4 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 153.1, -108.2 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 177.7, -110.1 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 202.2, -111.9 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 226.8, -113.8 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 411.3, -107.7 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 595.8, -101.6 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 780.2, -95.5 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 964.7, -89.4 , 0 );

-- setScaleKey( spep_3 -3 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_3 -2 + 2, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 4, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 6, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 8, 1, 1, 1 );
setScaleKey( spep_3 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 12, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 14, 1, 1.59, 1.59 );
setScaleKey( spep_3 -3 + 16, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 18, 1, 2, 2 );
setScaleKey( spep_3 -3 + 21, 1, 2.2, 2.2 );
setScaleKey( spep_3 -3 + 22, 1, 12.22, 12.22 );
setScaleKey( spep_3 -3 + 44, 1, 12.22, 12.22 );
setScaleKey( spep_3 -3 + 46, 1, 17.99, 17.99 );
setScaleKey( spep_3 -3 + 48, 1, 18.27, 18.27 );
setScaleKey( spep_3 -3 + 50, 1, 18.55, 18.55 );
setScaleKey( spep_3 -3 + 52, 1, 18.83, 18.83 );
setScaleKey( spep_3 -3 + 54, 1, 19.12, 19.11 );
setScaleKey( spep_3 -3 + 56, 1, 19.4, 19.4 );
setScaleKey( spep_3 -3 + 58, 1, 19.68, 19.68 );
setScaleKey( spep_3 -3 + 60, 1, 19.96, 19.96 );
setScaleKey( spep_3 -3 + 62, 1, 20.24, 20.24 );
setScaleKey( spep_3 -3 + 64, 1, 20.52, 20.52 );
setScaleKey( spep_3 -3 + 66, 1, 20.81, 20.8 );
setScaleKey( spep_3 -3 + 67, 1, 20.81, 20.8 );
setScaleKey( spep_3 -3 + 68, 1, 3.49, 3.49 );
setScaleKey( spep_3 -3 + 82, 1, 3.49, 3.49 );

-- setRotateKey( spep_3 -3 + 0, 1, -53.9 );
setRotateKey( spep_3 -2 + 2, 1, -53.9 );
setRotateKey( spep_3 -3 + 4, 1, -54 );
setRotateKey( spep_3 -3 + 8, 1, -54 );
setRotateKey( spep_3 -3 + 10, 1, -54.1 );
setRotateKey( spep_3 -3 + 14, 1, -54.1 );
setRotateKey( spep_3 -3 + 16, 1, -54.2 );
setRotateKey( spep_3 -3 + 21, 1, -54.2 );
setRotateKey( spep_3 -3 + 22, 1, -8.3 );
setRotateKey( spep_3 -3 + 66, 1, -8.3 );
setRotateKey( spep_3 -3 + 67, 1, -8.3 );
setRotateKey( spep_3 -3 + 68, 1, 31.6 );
setRotateKey( spep_3 -3 + 82, 1, 31.6 );


-- ** 音 ** --
SE018 = playSeVer2( spep_3 + 10, 1189, "", 0, 0, 0, -1); --裏拳

SE019 = playSeVer2( spep_3 + 20, 1187, "", 0, 0, 0, -1); --裏拳
setSeVolumeByWorkId( spep_3 + 20, SE019, 95 );

SE020 = playSeVer2( spep_3 + 20, 1153, "", 0, 0, 0, -1); --裏拳
setSeVolumeByWorkId( spep_3 + 20, SE020, 81 );

SE021 = playSeVer2( spep_3 + 82, 1106, "", 0, 0, 0, -1); --追いかける2
setSeVolumeByWorkId( spep_3 + 82, SE021, 138 );

SE022 = playSeVer2( spep_3 + 84, 1207, "",spep_3 + 130, 0, 32, -1); --追いかける2
setSeVolumeByWorkId( spep_3 + 84, SE022, 84 );

SE023 = playSeVer2( spep_3 + 84, 44, "",spep_3 + 130, 0, 32, -1); --追いかける2


-- ** 次の準備 ** --
spep_c = spep_3 + 120 -4;

-------------------------------------------------
--カードカットイン(94F)
-------------------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
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
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_c + 94;

-------------------------------------------------
-- 手前に飛んできて蹴り→フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_11, 0x100, -1, 0, 0, 0); --手前に飛んできて蹴り→フィニッシュ ef_006 キャラ,書き文字：敵の前に表示 ef_007と合わせて表示
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 180 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 180 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 180 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 180 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 180 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0); --手前に飛んできて蹴り→フィニッシュ ef_007 背景：敵より奥に表示 敵側は反転 ef_006、ef_006_rと合わせて表示
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 180 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 180 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 180 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 180 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 180 -4, base4_b, 0);

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 18, 1, 1 );
setDisp( spep_4 -3 + 36, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4 -3 + 18, 1, -22, 28 , 0 );
setMoveKey( spep_4 -3 + 19, 1, -22, 28 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -95, 1 , 0 );
setMoveKey( spep_4 -3 + 21, 1, -95, 1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -22, 28 , 0 );
setMoveKey( spep_4 -3 + 23, 1, -22, 28 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -27, 18.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -32, 8.5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 143, -1.3 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 200, -11 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 295.5, 4.5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 409.9, 20 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 575, -11 , 0 );

setScaleKey( spep_4 -3 + 18, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 36, 1, 0.71, 0.71 );

setRotateKey( spep_4 -3 + 18, 1, 0 );
setRotateKey( spep_4 -3 + 36, 1, 0 );


-- ** 音 ** --
SE025 = playSeVer2( spep_4 + 0, 1121, "",spep_4 + 54, 4, 22, -1); --ギガンティックストライク
setStartTimeMs( SE025,  1133 );

SE026 = playSeVer2( spep_4 + 16, 1182, "",spep_4 + 24, 0, 4, -1); --ギガンティックストライク
setSeVolumeByWorkId( spep_4 + 16, SE026, 290 );

SE027 = playSeVer2( spep_4 + 20, 1187, "", 0, 0, 0, -1); --ギガンティックストライク

SE028 = playSeVer2( spep_4 + 26, 1190, "", 0, 0, 0, -1); --ギガンティックストライク
setSeVolumeByWorkId( spep_4 + 26, SE028, 71 );

SE029 = playSeVer2( spep_4 + 30, 1024, "", 0, 0, 0, -1); --ギガンティックストライク
setSeVolumeByWorkId( spep_4 + 30, SE029, 89 );

SE030 = playSeVer2( spep_4 + 50, 1044, "", 0, 0, 0, -1); --ギガンティックストライク
setSeVolumeByWorkId( spep_4 + 50, SE030, 63 );

SE031 = playSeVer2( spep_4 + 72, 1116, "",spep_4 + 110, 0, 18, -1); --ギガンティックストライク
setSeVolumeByWorkId( spep_4 + 72, SE031, 71 );

SE032 = playSeVer2( spep_4 + 78, 1232, "", 0, 0, 0, -1); --ギガンティックストライク
setSeVolumeByWorkId( spep_4 + 78, SE032, 63 );


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 70);
endPhase( spep_4 + 180 -8);

end
