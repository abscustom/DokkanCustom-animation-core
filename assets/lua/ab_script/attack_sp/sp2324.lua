--1023890:LR_孫悟飯(青年期)&孫悟天(幼年期)&トランクス(幼年期)_ライジングアタック
--sp_effect_b1_00190
--sp2324

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
SP_01 = 159122;	--冒頭	ef_001	45	反転なし
SP_02 = 159123;	--悟飯　敵に迫る	ef_002	25	味方側
SP_03 = 159125;	--悟飯　格闘	ef_003	70	味方側：手前
SP_04 = 159126;	--悟飯　格闘	ef_003_b	70	味方側：奥
SP_05 = 159129;	--トランクス＆悟天　間幕	ef_004	35	反転なし
SP_06 = 159130;	--トランクス＆悟天　敵に接近する	ef_005	37	味方側
SP_07 = 159132;	--トランク　敵にパンチ	ef_006	35	味方側：手前
SP_08 = 159133;	--トランク　敵にパンチ	ef_006_b	35	奥　そのまま反転
SP_09 = 159135;	--悟天　敵にパンチ	ef_007	50	味方側：手前
SP_10 = 159136;	--悟天　敵にパンチ	ef_007_b	50	味方側：奥
SP_11 = 159139;	--トランクス＆悟天　ダブルパンチ	ef_008	50	味方側：手前
SP_12 = 159140;	--トランクス＆悟天　ダブルパンチ	ef_008_b	50	味方側：奥
SP_13 = 159143;	--トランク＆悟天　着地	ef_009	45	味方側：手前
SP_14 = 159144;	--トランク＆悟天　着地	ef_009_b	45	奥　そのまま反転
SP_15 = 159146;	--フィニッシュ絵	ef_010	60	反転なし

--エフェクト(敵)
SP_16 = 159124;	--悟飯　敵に迫る	ef_002_r	25	敵側
SP_17 = 159127;	--悟飯　格闘	ef_003_r	70	敵側：手前
SP_18 = 159128;	--悟飯　格闘	ef_003_b_r	70	敵側：奥
SP_19 = 159131;	--トランクス＆悟天　敵に接近する	ef_005_r	37	敵側
SP_20 = 159134;	--トランク　敵にパンチ	ef_006_r	35	敵側：手前
SP_21 = 159137;	--悟天　敵にパンチ	ef_007_r	50	敵側：手前
SP_22 = 159138;	--悟天　敵にパンチ	ef_007_b_r	50	敵側：奥
SP_23 = 159141;	--トランクス＆悟天　ダブルパンチ	ef_008_r	50	敵側：手前
SP_24 = 159142;	--トランクス＆悟天　ダブルパンチ	ef_008_b_r	50	敵側：奥
SP_25 = 159145;	--トランク＆悟天　着地	ef_009_r	45	敵側：手前


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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 冒頭
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --冒頭
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 88 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_1 + 88 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 88 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 88 -5, base1, 255);
setEffAlphaKey( spep_1 + 88 -4, base1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40 -20, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40 -20, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40 -20, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80 -20, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 6, 1018, "", 0, 0, 0, -1);	--顔カットイン

SE002 = playSeVer2( spep_1 + 10, 1233, "", 0, 0, 0, -1);	--構える

SE003 = playSeVer2( spep_1 + 12, 1189, "", 0, 0, 0, -1);	--構える

SE004 = playSeVer2( spep_1 + 22, 1006, "", 0, 0, 0, -1);	--構える
setSeVolumeByWorkId( spep_1 + 22, SE004, 76 );


-- ** 次の準備 ** --

spep_c = spep_1 + 88 -4;

-------------------------------------------------
--カードカットイン（96）
-------------------------------------------------
-- ** カードカットイン ** --
--[[speffc = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speffc, 1, 1);
setEffReplaceTexture( speffc, 2, 0);-- カード差し替え
setEffReplaceTexture( speffc, 5, 4);-- 技名テクスチャ差し替え]]

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20);
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_c + 0, shuchusen, 0);
setEffRotateKey( spep_c + 90, shuchusen, 0);
setEffAlphaKey( spep_c + 0, shuchusen, 255);
setEffAlphaKey( spep_c + 90, shuchusen, 255);
-- ** 音 ** --
--playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_2 = spep_c + 96;

-------------------------------------------------
-- 悟飯　敵に迫る
-------------------------------------------------
-- ** エフェクト等 ** --
base2 = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); --悟飯　敵に迫る
setEffMoveKey( spep_2 + 0, base2, 0, 0 , 0);
setEffMoveKey( spep_2 + 48 -4, base2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2, 1.0, 1.0);
setEffScaleKey( spep_2 + 48 -4, base2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2, 0);
setEffRotateKey( spep_2 + 48 -4, base2, 0);
setEffAlphaKey( spep_2 + 0, base2, 255);
setEffAlphaKey( spep_2 + 48 -5, base2, 255);
setEffAlphaKey( spep_2 + 48 -4, base2, 0);


-- ** 音 ** --
SE006 = playSeVer2( spep_2 + 0, 1117, "",spep_2 + 84, 0, 10, -1);	--悟飯向かっていく

SE007 = playSeVer2( spep_2 + 0, 1019, "", 0, 0, 0, -1);	--悟飯向かっていく


-- ** 次の準備 ** --
spep_3 = spep_2 + 48 -4;

-------------------------------------------------
-- 悟飯　格闘
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); --悟飯　格闘
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 140 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 140 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 140 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 140 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 140 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); --悟飯　格闘
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 140 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 140 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 140 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 140 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 140 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 101 );

--setMoveKey( spep_3 -3+ 0, 1, 355.7, -124.9 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 261.9, -125 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 218.3, -125.2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 187.2, -125.3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 163, -125.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 143.1, -125.7 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 126.5, -125.8 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 112.4, -126 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 100.4, -126.2 , 0 );

setScaleKey( spep_3 + 0, 1, 1.04, 1.04 );

setRotateKey( spep_3 + 0, 1, 0 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 14; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
setDisp( spep_3 -3 + 116, 1, 0 );

changeAnime( spep_3 -3 + 26, 1, 106 );
changeAnime( spep_3 -3 + 44, 1, 108 );
changeAnime( spep_3 -3 + 98, 1, 107 );

setMoveKey( spep_3 -3 + 18, 1, 90.1, -126.3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 81.4, -126.5 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 74.2, -126.7 , 0 );
setMoveKey( spep_3 -3 + 25, 1, 68.6, -126.9 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 99.3, -42 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 83, -65.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 88.8, -58.5 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 85.4, -53.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 82, -49 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 85.1, -44.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 88.2, -39.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 88.7, -37.3 , 0 );
setMoveKey( spep_3 -3 + 43, 1, 89.1, -35.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 125.7, -49.4 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 111.2, -65.8 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 98.8, -52.7 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 99.5, -55.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 106.9, -53 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 125.9, -23.8 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 126.7, -43.5 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 140.8, -52.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 135.7, -51 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 130.7, -49.2 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 147.8, -40.4 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 124.3, -61.1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 125.9, -57.2 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 129.2, -58.5 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 152.9, -34.8 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 130.3, -57.2 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 132.9, -49.7 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 130.1, -50.6 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 128.2, -50 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 126.2, -49.5 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 124.9, -48.9 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 123.5, -48.3 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 125.3, -47.7 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 126.9, -47.1 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 128.6, -46.5 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 130.3, -46 , 0 );
setMoveKey( spep_3 -3 + 97, 1, 132, -45.4 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 141.5, -16.3 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 138.6, -16.5 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 239.9, 3.6 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 259.3, 4.7 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 312.3, 9.2 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 365.4, 13.8 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 413.2, 21.3 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 461, 28.7 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 508.9, 33.3 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 556.7, 37.8 , 0 );

setScaleKey( spep_3 -3 + 25, 1, 1.04, 1.04 );
setScaleKey( spep_3 -3 + 26, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 43, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 44, 1, 1.22, 1.22 );
setScaleKey( spep_3 -3 + 97, 1, 1.22, 1.22 );
setScaleKey( spep_3 -3 + 98, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 100, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 102, 1, 0.95, 0.95 );
setScaleKey( spep_3 -3 + 104, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 106, 1, 1.39, 1.39 );
setScaleKey( spep_3 -3 + 108, 1, 1.61, 1.61 );
setScaleKey( spep_3 -3 + 110, 1, 1.83, 1.83 );
setScaleKey( spep_3 -3 + 112, 1, 2.05, 2.05 );
setScaleKey( spep_3 -3 + 114, 1, 2.27, 2.27 );
setScaleKey( spep_3 -3 + 116, 1, 2.49, 2.49 );

setRotateKey( spep_3 -3 + 25, 1, 0 );
setRotateKey( spep_3 -3 + 26, 1, -33.5 );
setRotateKey( spep_3 -3 + 28, 1, -32.6 );
setRotateKey( spep_3 -3 + 30, 1, -31.6 );
setRotateKey( spep_3 -3 + 32, 1, -30.7 );
setRotateKey( spep_3 -3 + 34, 1, -29.8 );
setRotateKey( spep_3 -3 + 36, 1, -28.8 );
setRotateKey( spep_3 -3 + 38, 1, -27.9 );
setRotateKey( spep_3 -3 + 40, 1, -27 );
setRotateKey( spep_3 -3 + 43, 1, -26 );
setRotateKey( spep_3 -3 + 44, 1, -17.5 );
setRotateKey( spep_3 -3 + 46, 1, -16.3 );
setRotateKey( spep_3 -3 + 48, 1, -15.1 );
setRotateKey( spep_3 -3 + 50, 1, -13.8 );
setRotateKey( spep_3 -3 + 52, 1, -12.6 );
setRotateKey( spep_3 -3 + 54, 1, -15.3 );
setRotateKey( spep_3 -3 + 62, 1, -15.3 );
setRotateKey( spep_3 -3 + 64, 1, -10.6 );
setRotateKey( spep_3 -3 + 66, 1, -9.7 );
setRotateKey( spep_3 -3 + 68, 1, -8.8 );
setRotateKey( spep_3 -3 + 70, 1, -7.9 );
setRotateKey( spep_3 -3 + 72, 1, -8.3 );
setRotateKey( spep_3 -3 + 74, 1, -7.8 );
setRotateKey( spep_3 -3 + 76, 1, -7.4 );
setRotateKey( spep_3 -3 + 78, 1, -6.9 );
setRotateKey( spep_3 -3 + 80, 1, -6.4 );
setRotateKey( spep_3 -3 + 82, 1, -6 );
setRotateKey( spep_3 -3 + 84, 1, -5.5 );
setRotateKey( spep_3 -3 + 86, 1, -5.1 );
setRotateKey( spep_3 -3 + 88, 1, -4.6 );
setRotateKey( spep_3 -3 + 90, 1, -4.2 );
setRotateKey( spep_3 -3 + 92, 1, -3.7 );
setRotateKey( spep_3 -3 + 94, 1, -3.3 );
setRotateKey( spep_3 -3 + 97, 1, -2.8 );
setRotateKey( spep_3 -3 + 98, 1, -17 );
setRotateKey( spep_3 -3 + 100, 1, -14.8 );
setRotateKey( spep_3 -3 + 102, 1, -12.6 );
setRotateKey( spep_3 -3 + 104, 1, -10.4 );
setRotateKey( spep_3 -3 + 106, 1, -8.2 );
setRotateKey( spep_3 -3 + 108, 1, -6.1 );
setRotateKey( spep_3 -3 + 110, 1, -3.9 );
setRotateKey( spep_3 -3 + 112, 1, -1.7 );
setRotateKey( spep_3 -3 + 114, 1, 0.5 );
setRotateKey( spep_3 -3 + 116, 1, 2.7 );


-- ** 音 ** --
SE008 = playSeVer2( spep_3 + 22, 1189, "", 0, 0, 0, -1);	--初手キック

SE009 = playSeVer2( spep_3 + 28, 1010, "", 0, 0, 0, -1);	--初手キック

SE010 = playSeVer2( spep_3 + 28, 1110, "", 0, 0, 0, -1);	--初手キック

SE011 = playSeVer2( spep_3 + 44, 1110, "",spep_3 + 294, 0, 12, -1);	--連続パンチ

SE012 = playSeVer2( spep_3 + 52, 1110, "",spep_3 + 306, 0, 12, -1);	--連続パンチ

SE013 = playSeVer2( spep_3 + 58, 1110, "",spep_3 + 310, 0, 10, -1);	--連続パンチ
setSeVolumeByWorkId( spep_3 + 58, SE013, 84 );
setPitch( spep_3 + 58, SE013, -200 );
setTimeStretch( SE013, 0.87, 30, 4 );

SE014 = playSeVer2( spep_3 + 66, 1110, "", 0, 0, 0, -1);	--連続パンチ

SE015 = playSeVer2( spep_3 + 92, 1003, "", 0, 0, 0, -1);	--蹴り飛ばし

SE016 = playSeVer2( spep_3 + 98, 1120, "", 0, 0, 0, -1);	--蹴り飛ばし


-- ** 次の準備 ** --
spep_4 = spep_3 + 140 -4;

-------------------------------------------------
-- トランクス＆悟天　間幕
-------------------------------------------------
-- ** エフェクト等 ** --
base4 = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0); --トランクス＆悟天　間幕
setEffMoveKey( spep_4 + 0, base4, 0, 0 , 0);
setEffMoveKey( spep_4 + 68 -4, base4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4, 1.0, 1.0);
setEffScaleKey( spep_4 + 68 -4, base4, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4, 0);
setEffRotateKey( spep_4 + 68 -4, base4, 0);
setEffAlphaKey( spep_4 + 0, base4, 255);
setEffAlphaKey( spep_4 + 68 -5, base4, 255);
setEffAlphaKey( spep_4 + 68 -4, base4, 0);


-- ** 音 ** --
SE017 = playSeVer2( spep_4 + 6, 1189, "", 0, 0, 0, -1);	--トランクス指差す

SE018 = playSeVer2( spep_4 + 10, 1107, "", 0, 0, 0, -1);	--トランクス指差す
setSeVolumeByWorkId( spep_4 + 10, SE018, 155 );

SE019 = playSeVer2( spep_4 + 20, 4, "",spep_4 + 36, 0, 6, -1);	--悟天頷く
setSeVolumeByWorkId( spep_4 + 20, SE019, 83 );

SE020 = playSeVer2( spep_4 + 40, 4, "",spep_4 + 56, 0, 6, -1);	--悟天頷く
setSeVolumeByWorkId( spep_4 + 40, SE020, 78 );


-- ** 次の準備 ** --
spep_5 = spep_4 + 68 -4;

-------------------------------------------------
-- トランクス＆悟天　敵に接近する
-------------------------------------------------
-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0); --トランクス＆悟天　敵に接近する
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 68 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, 1.0, 1.0);
setEffScaleKey( spep_5 + 68 -4, base5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 68 -4, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 68 -5, base5, 255);
setEffAlphaKey( spep_5 + 68 -4, base5, 0);


-- ** 音 ** --
SE021 = playSeVer2( spep_5 + 0, 1006, "", 0, 0, 0, -1);	--構える
setSeVolumeByWorkId( spep_5 + 0, SE021, 86 );
setPitch( spep_5 + 0, SE021, -400 );
setTimeStretch( SE021, 0.73, 30, 4 );

SE022 = playSeVer2( spep_5 + 18, 1182, "", 0, 0, 0, -1);	--二人飛んでいく

SE023 = playSeVer2( spep_5 + 18, 1117, "", 0, 0, 0, -1);	--二人飛んでいく


-- ** 次の準備 ** --
spep_6 = spep_5 + 68 -4;

-------------------------------------------------
-- トランク　敵にパンチ
-------------------------------------------------
-- ** エフェクト等 ** --
base6_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0); --トランク　敵にパンチ
setEffMoveKey( spep_6 + 0, base6_f, 0, 0 , 0);
setEffMoveKey( spep_6 + 68 -4, base6_f, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6_f, 1.0, 1.0);
setEffScaleKey( spep_6 + 68 -4, base6_f, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6_f, 0);
setEffRotateKey( spep_6 + 68 -4, base6_f, 0);
setEffAlphaKey( spep_6 + 0, base6_f, 255);
setEffAlphaKey( spep_6 + 68 -5, base6_f, 255);
setEffAlphaKey( spep_6 + 68 -4, base6_f, 0);

base6_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0); --トランク　敵にパンチ
setEffMoveKey( spep_6 + 0, base6_b, 0, 0 , 0);
setEffMoveKey( spep_6 + 68 -4, base6_b, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6_b, 1.0, 1.0);
setEffScaleKey( spep_6 + 68 -4, base6_b, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6_b, 0);
setEffRotateKey( spep_6 + 68 -4, base6_b, 0);
setEffAlphaKey( spep_6 + 0, base6_b, 255);
setEffAlphaKey( spep_6 + 68 -5, base6_b, 255);
setEffAlphaKey( spep_6 + 68 -4, base6_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -4 + 68, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );
changeAnime( spep_6 -3 + 22, 1, 108 );

--setMoveKey( spep_6 -3 + 0, 1, -21.8, -43.9 , 0 );
setMoveKey( spep_6 -2 + 2, 1, -16.7, -42.5 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -11.6, -41.1 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -6.4, -39.7 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -1.3, -38.3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 3.9, -36.9 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 9, -35.5 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 14.2, -34.1 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 19.3, -32.7 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 24.5, -31.3 , 0 );
setMoveKey( spep_6 -3 + 21, 1, 29.6, -29.9 , 0 );
setMoveKey( spep_6 -3 + 22, 1, -23.4, 37.3 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -1.9, 38.7 , 0 );
setMoveKey( spep_6 -3 + 26, 1, -15, 38.2 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 67.8, 7.3 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 88.5, 30.6 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 152.1, 29.4 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 124, 17.7 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 156, 27.4 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 162.9, 22.9 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 168.8, 27.3 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 166.3, 23.5 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 172.2, 20.2 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 167.7, 27.2 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 174.2, 29.2 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 179.6, 33.6 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 173.4, 26.4 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 173, 23 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 180.4, 27.4 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 182.8, 27.4 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 459.3, 27.4 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 735.7, 27.4 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 1012.1, 27.4 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 1288.6, 27.4 , 0 );
setMoveKey( spep_6 -4 + 68, 1, 1288.6, 27.4 , 0 );

setScaleKey( spep_6 + 0, 1, 1.97, 1.97 );
setScaleKey( spep_6 -3 + 21, 1, 1.97, 1.97 );
setScaleKey( spep_6 -3 + 22, 1, 5.69, 5.69 );
setScaleKey( spep_6 -4 + 68, 1, 5.69, 5.69 );

--setRotateKey( spep_6 -3 + 0, 1, -23.3 );
setRotateKey( spep_6 -2 + 2, 1, -22.6 );
setRotateKey( spep_6 -3 + 4, 1, -21.9 );
setRotateKey( spep_6 -3 + 6, 1, -21.1 );
setRotateKey( spep_6 -3 + 8, 1, -20.4 );
setRotateKey( spep_6 -3 + 10, 1, -19.7 );
setRotateKey( spep_6 -3 + 12, 1, -18.9 );
setRotateKey( spep_6 -3 + 14, 1, -18.2 );
setRotateKey( spep_6 -3 + 16, 1, -17.5 );
setRotateKey( spep_6 -3 + 18, 1, -16.7 );
setRotateKey( spep_6 -3 + 21, 1, -16 );
setRotateKey( spep_6 -3 + 22, 1, -3.2 );
setRotateKey( spep_6 -4 + 68, 1, -3.2 );


-- ** 音 ** --
SE024 = playSeVer2( spep_6 + 26, 1110, "", 0, 0, 0, -1);	--トランクスエルボー
setSeVolumeByWorkId( spep_6 + 26, SE024, 91 );

SE025 = playSeVer2( spep_6 + 26, 1190, "", 0, 0, 0, -1);	--トランクスエルボー
setSeVolumeByWorkId( spep_6 + 26, SE025, 90 );

SE026 = playSeVer2( spep_6 + 26, 1153, "", 0, 0, 0, -1);	--トランクスエルボー
setSeVolumeByWorkId( spep_6 + 26, SE026, 94 );


-- ** 次の準備 ** --
spep_7 = spep_6 + 68 -4;

-------------------------------------------------
-- 悟天　敵にパンチ
-------------------------------------------------
-- ** エフェクト等 ** --
base7_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0); --悟天　敵にパンチ
setEffMoveKey( spep_7 + 0, base7_f, 0, 0 , 0);
setEffMoveKey( spep_7 + 100 -4, base7_f, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7_f, 1.0, 1.0);
setEffScaleKey( spep_7 + 100 -4, base7_f, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7_f, 0);
setEffRotateKey( spep_7 + 100 -4, base7_f, 0);
setEffAlphaKey( spep_7 + 0, base7_f, 255);
setEffAlphaKey( spep_7 + 100 -5, base7_f, 255);
setEffAlphaKey( spep_7 + 100 -4, base7_f, 0);

base7_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0); --悟天　敵にパンチ
setEffMoveKey( spep_7 + 0, base7_b, 0, 0 , 0);
setEffMoveKey( spep_7 + 100 -4, base7_b, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7_b, 1.0, 1.0);
setEffScaleKey( spep_7 + 100 -4, base7_b, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7_b, 0);
setEffRotateKey( spep_7 + 100 -4, base7_b, 0);
setEffAlphaKey( spep_7 + 0, base7_b, 255);
setEffAlphaKey( spep_7 + 100 -5, base7_b, 255);
setEffAlphaKey( spep_7 + 100 -4, base7_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -3 + 82, 1, 0 );

changeAnime( spep_7 + 0, 1, 106 );
changeAnime( spep_7 -3 + 40, 1, 7 );

--setMoveKey( spep_7 -3 + 0, 1, -644.2, 58 , 0 );
setMoveKey( spep_7 -2 + 2, 1, -618.6, 54.2 , 0 );
setMoveKey( spep_7 -3 + 4, 1, -593, 50.2 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -567.4, 46.3 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -541.8, 42.4 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -516.3, 38.5 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -490.7, 34.5 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -465.1, 30.6 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -439.5, 26.7 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -414, 22.8 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -388.4, 18.8 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -362.8, 14.9 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -337.2, 11 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -311.6, 7 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -286, 3.1 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -260.5, -0.8 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -234.9, -4.7 , 0 );
setMoveKey( spep_7 -3 + 34, 1, -209.3, -8.7 , 0 );
setMoveKey( spep_7 -3 + 36, 1, -183.7, -12.5 , 0 );
setMoveKey( spep_7 -3 + 39, 1, -158.2, -16.5 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 191.3, -59.4 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 141.8, -29.8 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 102.3, 42.4 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 97.4, -1.9 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 76.6, 37.7 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 85.7, 21.6 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 104.2, 27.7 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 88.6, 37.2 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 71.3, 30.2 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 75.2, 36.6 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 75, 41.2 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 67, 39.9 , 0 );
setMoveKey( spep_7 -3 + 64, 1, 66.8, 38.6 , 0 );
setMoveKey( spep_7 -3 + 66, 1, 60.7, 45.1 , 0 );
setMoveKey( spep_7 -3 + 68, 1, 60.5, 51.6 , 0 );
setMoveKey( spep_7 -3 + 70, 1, 58.4, 52.3 , 0 );
setMoveKey( spep_7 -3 + 72, 1, 48.4, 54.9 , 0 );
setMoveKey( spep_7 -3 + 74, 1, -114.5, 282.6 , 0 );
setMoveKey( spep_7 -3 + 76, 1, -287.2, 508.4 , 0 );
setMoveKey( spep_7 -3 + 78, 1, -461.8, 742 , 0 );
setMoveKey( spep_7 -3 + 80, 1, -628.6, 975.6 , 0 );
setMoveKey( spep_7 -3 + 82, 1, -624.7, 971.7 , 0 );

-- setScaleKey( spep_7 -3 + 0, 1, 2.05, 2.05 );
setScaleKey( spep_7 -2 + 2, 1, 2.09, 2.09 );
setScaleKey( spep_7 -3 + 4, 1, 2.12, 2.12 );
setScaleKey( spep_7 -3 + 6, 1, 2.16, 2.16 );
setScaleKey( spep_7 -3 + 8, 1, 2.19, 2.19 );
setScaleKey( spep_7 -3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_7 -3 + 12, 1, 2.26, 2.26 );
setScaleKey( spep_7 -3 + 14, 1, 2.3, 2.3 );
setScaleKey( spep_7 -3 + 16, 1, 2.33, 2.33 );
setScaleKey( spep_7 -3 + 18, 1, 2.37, 2.37 );
setScaleKey( spep_7 -3 + 20, 1, 2.4, 2.4 );
setScaleKey( spep_7 -3 + 22, 1, 2.44, 2.44 );
setScaleKey( spep_7 -3 + 24, 1, 2.47, 2.47 );
setScaleKey( spep_7 -3 + 26, 1, 2.51, 2.51 );
setScaleKey( spep_7 -3 + 28, 1, 2.55, 2.55 );
setScaleKey( spep_7 -3 + 30, 1, 2.58, 2.58 );
setScaleKey( spep_7 -3 + 32, 1, 2.62, 2.62 );
setScaleKey( spep_7 -3 + 34, 1, 2.65, 2.65 );
setScaleKey( spep_7 -3 + 36, 1, 2.69, 2.69 );
setScaleKey( spep_7 -3 + 39, 1, 2.72, 2.72 );
setScaleKey( spep_7 -3 + 40, 1, 1.86, 1.86 );
setScaleKey( spep_7 -3 + 72, 1, 1.86, 1.86 );
setScaleKey( spep_7 -3 + 74, 1, 2.22, 2.22 );
setScaleKey( spep_7 -3 + 76, 1, 2.57, 2.57 );
setScaleKey( spep_7 -3 + 78, 1, 2.93, 2.93 );
setScaleKey( spep_7 -3 + 80, 1, 3.28, 3.28 );
setScaleKey( spep_7 -3 + 82, 1, 3.28, 3.28 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 -3 + 38, 1, 0 );
setRotateKey( spep_7 -3 + 39, 1, 0 );
setRotateKey( spep_7 -3 + 40, 1, 63.1 );
setRotateKey( spep_7 -3 + 82, 1, 63.1 );


-- ** 音 ** --
SE027 = playSeVer2( spep_7 + 0, 1167, "",spep_7 + 48, 0, 14, -1);	--悟天突っ込んでくる
setSeVolumeByWorkId( spep_7 + 0, SE027, 39 );

SE028 = playSeVer2( spep_7 + 0, 1019, "",spep_7 + 48, 0, 14, -1);	--悟天突っ込んでくる

SE029 = playSeVer2( spep_7 + 28, 1189, "", 0, 0, 0, -1);	--悟天パンチ

SE030 = playSeVer2( spep_7 + 38, 1120, "", 0, 0, 0, -1);	--悟天パンチ


-- ** 次の準備 ** --
spep_8 = spep_7 + 100 -4;

-------------------------------------------------
-- トランクス＆悟天　ダブルパンチ
-------------------------------------------------
-- ** エフェクト等 ** --
base8_f = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0); --トランクス＆悟天　ダブルパンチ
setEffMoveKey( spep_8 + 0, base8_f, 0, 0 , 0);
setEffMoveKey( spep_8 + 100 -4, base8_f, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base8_f, 1.0, 1.0);
setEffScaleKey( spep_8 + 100 -4, base8_f, 1.0, 1.0);
setEffRotateKey( spep_8 + 0, base8_f, 0);
setEffRotateKey( spep_8 + 100 -4, base8_f, 0);
setEffAlphaKey( spep_8 + 0, base8_f, 255);
setEffAlphaKey( spep_8 + 100 -5, base8_f, 255);
setEffAlphaKey( spep_8 + 100 -4, base8_f, 0);

base8_b = entryEffect( spep_8 + 0, SP_12, 0x80, -1, 0, 0, 0); --トランクス＆悟天　ダブルパンチ
setEffMoveKey( spep_8 + 0, base8_b, 0, 0 , 0);
setEffMoveKey( spep_8 + 100 -4, base8_b, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base8_b, 1.0, 1.0);
setEffScaleKey( spep_8 + 100 -4, base8_b, 1.0, 1.0);
setEffRotateKey( spep_8 + 0, base8_b, 0);
setEffRotateKey( spep_8 + 100 -4, base8_b, 0);
setEffAlphaKey( spep_8 + 0, base8_b, 255);
setEffAlphaKey( spep_8 + 100 -5, base8_b, 255);
setEffAlphaKey( spep_8 + 100 -4, base8_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 -4 + 100, 1, 0 );

changeAnime( spep_8 + 0, 1, 6 );
changeAnime( spep_8 -3 + 40, 1, 8 );

-- setMoveKey( spep_8 -3 + 0, 1, 847.8, -442.3 , 0 );
setMoveKey( spep_8 -2 + 2, 1, 806.6, -421.2 , 0 );
setMoveKey( spep_8 -3 + 4, 1, 765.4, -400.1 , 0 );
setMoveKey( spep_8 -3 + 6, 1, 724.2, -379 , 0 );
setMoveKey( spep_8 -3 + 8, 1, 682.9, -357.9 , 0 );
setMoveKey( spep_8 -3 + 10, 1, 641.7, -336.8 , 0 );
setMoveKey( spep_8 -3 + 12, 1, 600.5, -315.7 , 0 );
setMoveKey( spep_8 -3 + 14, 1, 559.3, -294.6 , 0 );
setMoveKey( spep_8 -3 + 16, 1, 518.1, -273.5 , 0 );
setMoveKey( spep_8 -3 + 18, 1, 476.9, -252.4 , 0 );
setMoveKey( spep_8 -3 + 20, 1, 435.6, -231.3 , 0 );
setMoveKey( spep_8 -3 + 22, 1, 394.4, -210.2 , 0 );
setMoveKey( spep_8 -3 + 24, 1, 353.2, -189.1 , 0 );
setMoveKey( spep_8 -3 + 26, 1, 312, -168 , 0 );
setMoveKey( spep_8 -3 + 28, 1, 270.8, -146.9 , 0 );
setMoveKey( spep_8 -3 + 30, 1, 229.6, -125.8 , 0 );
setMoveKey( spep_8 -3 + 32, 1, 188.4, -104.7 , 0 );
setMoveKey( spep_8 -3 + 34, 1, 147.1, -83.6 , 0 );
setMoveKey( spep_8 -3 + 36, 1, 105.9, -62.5 , 0 );
setMoveKey( spep_8 -3 + 39, 1, 64.7, -41.4 , 0 );
setMoveKey( spep_8 -3 + 40, 1, -35.3, -82.2 , 0 );
setMoveKey( spep_8 -3 + 42, 1, -54.5, -90.7 , 0 );
setMoveKey( spep_8 -3 + 44, 1, -16, -114.1 , 0 );
setMoveKey( spep_8 -3 + 46, 1, -48.5, -166.1 , 0 );
setMoveKey( spep_8 -3 + 48, 1, -22.9, -209.9 , 0 );
setMoveKey( spep_8 -3 + 50, 1, -34.5, -194.8 , 0 );
setMoveKey( spep_8 -3 + 52, 1, -40.1, -195 , 0 );
setMoveKey( spep_8 -3 + 54, 1, -42.1, -191.2 , 0 );
setMoveKey( spep_8 -3 + 56, 1, -36.1, -189.7 , 0 );
setMoveKey( spep_8 -3 + 58, 1, -42.2, -198.3 , 0 );
setMoveKey( spep_8 -3 + 60, 1, -44, -194.7 , 0 );
setMoveKey( spep_8 -3 + 62, 1, -35.9, -205.2 , 0 );
setMoveKey( spep_8 -3 + 64, 1, -42.1, -199.5 , 0 );
setMoveKey( spep_8 -3 + 66, 1, -36.1, -196.5 , 0 );
setMoveKey( spep_8 -3 + 68, 1, -32.8, -206.1 , 0 );
setMoveKey( spep_8 -3 + 70, 1, -37.9, -205 , 0 );
setMoveKey( spep_8 -3 + 72, 1, -34.4, -204.7 , 0 );
setMoveKey( spep_8 -3 + 74, 1, -32, -213.1 , 0 );
setMoveKey( spep_8 -3 + 76, 1, -38.6, -212.4 , 0 );
setMoveKey( spep_8 -3 + 78, 1, -35.5, -221.5 , 0 );
setMoveKey( spep_8 -3 + 80, 1, -43.7, -391.2 , 0 );
setMoveKey( spep_8 -3 + 82, 1, -47.2, -561.5 , 0 );
setMoveKey( spep_8 -3 + 84, 1, -50.8, -731.9 , 0 );
setMoveKey( spep_8 -3 + 86, 1, -54.3, -902.3 , 0 );
setMoveKey( spep_8 -3 + 88, 1, -57.9, -1072.7 , 0 );
setMoveKey( spep_8 -5 + 100, 1, -57.9, -1072.7 , 0 );

-- setScaleKey( spep_8 -3 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_8 -2 + 2, 1, 2.46, 2.46 );
setScaleKey( spep_8 -3 + 4, 1, 2.42, 2.42 );
setScaleKey( spep_8 -3 + 6, 1, 2.38, 2.38 );
setScaleKey( spep_8 -3 + 8, 1, 2.34, 2.34 );
setScaleKey( spep_8 -3 + 10, 1, 2.31, 2.31 );
setScaleKey( spep_8 -3 + 12, 1, 2.27, 2.27 );
setScaleKey( spep_8 -3 + 14, 1, 2.23, 2.23 );
setScaleKey( spep_8 -3 + 16, 1, 2.19, 2.19 );
setScaleKey( spep_8 -3 + 18, 1, 2.15, 2.15 );
setScaleKey( spep_8 -3 + 20, 1, 2.11, 2.11 );
setScaleKey( spep_8 -3 + 22, 1, 2.07, 2.07 );
setScaleKey( spep_8 -3 + 24, 1, 2.03, 2.03 );
setScaleKey( spep_8 -3 + 26, 1, 1.99, 1.99 );
setScaleKey( spep_8 -3 + 28, 1, 1.96, 1.96 );
setScaleKey( spep_8 -3 + 30, 1, 1.92, 1.92 );
setScaleKey( spep_8 -3 + 32, 1, 1.88, 1.88 );
setScaleKey( spep_8 -3 + 34, 1, 1.84, 1.84 );
setScaleKey( spep_8 -3 + 36, 1, 1.8, 1.8 );
setScaleKey( spep_8 -3 + 39, 1, 1.76, 1.76 );
setScaleKey( spep_8 -3 + 40, 1, 3.67, 3.67 );
setScaleKey( spep_8 -5 + 100, 1, 3.67, 3.67 );

setRotateKey( spep_8 + 0, 1, 3.5 );
setRotateKey( spep_8 -3 + 38, 1, -5.3 );
setRotateKey( spep_8 -3 + 39, 1, -5.3 );
setRotateKey( spep_8 -3 + 40, 1, -77.3 );
setRotateKey( spep_8 -5 + 100, 1, -77.3 );


-- ** 音 ** --
SE031 = playSeVer2( spep_8 + 0, 1109, "", 0, 0, 0, -1);	--瞬間移動

SE032 = playSeVer2( spep_8 + 32, 1123, "", 0, 0, 0, -1);	--二人パンチ
setSeVolumeByWorkId( spep_8 + 32, SE032, 66 );

SE033 = playSeVer2( spep_8 + 36, 1187, "", 0, 0, 0, -1);	--二人パンチ

SE034 = playSeVer2( spep_8 + 36, 1153, "", 0, 0, 0, -1);	--二人パンチ

SE035 = playSeVer2( spep_8 + 82, 1121, "",spep_8 + 126, 0, 12, -1);	--敵落ちていく


-- ** 次の準備 ** --
spep_9 = spep_8 + 100 -4;

-------------------------------------------------
-- トランク＆悟天　着地
-------------------------------------------------
-- ** エフェクト等 ** --
base9_f = entryEffect( spep_9 + 0, SP_13, 0x100, -1, 0, 0, 0); --トランク＆悟天　着地
setEffMoveKey( spep_9 + 0, base9_f, 0, 0 , 0);
setEffMoveKey( spep_9 + 88 -4, base9_f, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base9_f, 1.0, 1.0);
setEffScaleKey( spep_9 + 88 -4, base9_f, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base9_f, 0);
setEffRotateKey( spep_9 + 88 -4, base9_f, 0);
setEffAlphaKey( spep_9 + 0, base9_f, 255);
setEffAlphaKey( spep_9 + 88 -5, base9_f, 255);
setEffAlphaKey( spep_9 + 88 -4, base9_f, 0);

base9_b = entryEffect( spep_9 + 0, SP_14, 0x80, -1, 0, 0, 0); --トランク＆悟天　着地
setEffMoveKey( spep_9 + 0, base9_b, 0, 0 , 0);
setEffMoveKey( spep_9 + 88 -4, base9_b, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base9_b, 1.0, 1.0);
setEffScaleKey( spep_9 + 88 -4, base9_b, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base9_b, 0);
setEffRotateKey( spep_9 + 88 -4, base9_b, 0);
setEffAlphaKey( spep_9 + 0, base9_b, 255);
setEffAlphaKey( spep_9 + 88 -5, base9_b, 255);
setEffAlphaKey( spep_9 + 88 -4, base9_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 -3 + 16, 1, 0 );

changeAnime( spep_9 + 0, 1, 6 );

setMoveKey( spep_9 + 0, 1, 83, 286.7 , 0 );
setMoveKey( spep_9 -1 + 2, 1, 83, 271.8 , 0 );
setMoveKey( spep_9 -1 + 4, 1, 83, 256.9 , 0 );
setMoveKey( spep_9 -1 + 6, 1, 83, 242 , 0 );
setMoveKey( spep_9 -1 + 8, 1, 83, 227.1 , 0 );
setMoveKey( spep_9 -1 + 10, 1, 83, 212.2 , 0 );
setMoveKey( spep_9 -1 + 12, 1, 83, 80.7 , 0 );
setMoveKey( spep_9 -1 + 14, 1, 83, -50.9 , 0 );

setScaleKey( spep_9 + 0, 1, 1.39, 1.39 );
setScaleKey( spep_9 -1 + 14, 1, 1.39, 1.39 );

setRotateKey( spep_9 + 0, 1, -102 );
setRotateKey( spep_9 -1 + 14, 1, -102 );


-- ** 音 ** --
SE036 = playSeVer2( spep_9 + 12, 1159, "",spep_9 + 136, 0, 50, -1);	--地面爆発

SE037 = playSeVer2( spep_9 + 24, 1189, "", 0, 0, 0, -1);	--二人着地
setSeVolumeByWorkId( spep_9 + 24, SE037, 209 );

SE038 = playSeVer2( spep_9 + 30, 1192, "", 0, 0, 0, -1);	--二人着地
setSeVolumeByWorkId( spep_9 + 30, SE038, 327 );

SE039 = playSeVer2( spep_9 + 32, 1108, "", 0, 0, 0, -1);	--二人着地
setSeVolumeByWorkId( spep_9 + 32, SE039, 209 );

SE040 = playSeVer2( spep_9 + 34, 1107, "", 0, 0, 0, -1);	--二人着地
setSeVolumeByWorkId( spep_9 + 34, SE040, 209 );


-- ** 次の準備 ** --
spep_10 = spep_9 + 88 -4;

-------------------------------------------------
-- フィニッシュ絵
-------------------------------------------------
-- ** エフェクト等 ** --
base10 = entryEffect( spep_10 + 0, SP_15, 0x80, -1, 0, 0, 0); --フィニッシュ絵
setEffMoveKey( spep_10 + 0, base10, 0, 0 , 0);
setEffMoveKey( spep_10 + 120 -4, base10, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base10, 1.0, 1.0);
setEffScaleKey( spep_10 + 120 -4, base10, 1.0, 1.0);
setEffRotateKey( spep_10 + 0, base10, 0);
setEffRotateKey( spep_10 + 120 -4, base10, 0);
setEffAlphaKey( spep_10 + 0, base10, 255);
setEffAlphaKey( spep_10 + 120 -5, base10, 255);
setEffAlphaKey( spep_10 + 120 -4, base10, 0);


-- ** 音 ** --
SE041 = playSeVer2( spep_10 + 0, 1042, "", 0, 0, 0, -1);	--最後決め

SE042 = playSeVer2( spep_10 + 22, 1233, "", 0, 4, 0, -1);	--最後構え
setSeVolumeByWorkId( spep_10 + 22, SE042, 80 );
setStartTimeMs( SE042,  100 );


-- ** ダメージ表示 ** --
dealDamage( spep_10 + 10);
endPhase( spep_10 + 120 -8);

else


------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 冒頭
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --冒頭
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 88 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, -1.0, 1.0);
setEffScaleKey( spep_1 + 88 -4, base1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 88 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 88 -5, base1, 255);
setEffAlphaKey( spep_1 + 88 -4, base1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 10;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, -40 +20, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, -40 +20, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, -40 +20, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, -80 +20, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 6, 1018, "", 0, 0, 0, -1);	--顔カットイン

SE002 = playSeVer2( spep_1 + 10, 1233, "", 0, 0, 0, -1);	--構える

SE003 = playSeVer2( spep_1 + 12, 1189, "", 0, 0, 0, -1);	--構える

SE004 = playSeVer2( spep_1 + 22, 1006, "", 0, 0, 0, -1);	--構える
setSeVolumeByWorkId( spep_1 + 22, SE004, 76 );


-- ** 次の準備 ** --

spep_c = spep_1 + 88 -4;

-------------------------------------------------
--カードカットイン（96）
-------------------------------------------------
-- ** カードカットイン ** --
speffc = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speffc, 1, 1);
setEffReplaceTexture( speffc, 2, 0);-- カード差し替え
setEffReplaceTexture( speffc, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20);
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_c + 0, shuchusen, 0);
setEffRotateKey( spep_c + 90, shuchusen, 0);
setEffAlphaKey( spep_c + 0, shuchusen, 255);
setEffAlphaKey( spep_c + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_2 = spep_c + 96;

-------------------------------------------------
-- 悟飯　敵に迫る
-------------------------------------------------
-- ** エフェクト等 ** --
base2 = entryEffect( spep_2 + 0, SP_16, 0x80, -1, 0, 0, 0); --悟飯　敵に迫る
setEffMoveKey( spep_2 + 0, base2, 0, 0 , 0);
setEffMoveKey( spep_2 + 48 -4, base2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2, -1.0, 1.0);
setEffScaleKey( spep_2 + 48 -4, base2, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2, 0);
setEffRotateKey( spep_2 + 48 -4, base2, 0);
setEffAlphaKey( spep_2 + 0, base2, 255);
setEffAlphaKey( spep_2 + 48 -5, base2, 255);
setEffAlphaKey( spep_2 + 48 -4, base2, 0);


-- ** 音 ** --
SE006 = playSeVer2( spep_2 + 0, 1117, "",spep_2 + 84, 0, 10, -1);	--悟飯向かっていく

SE007 = playSeVer2( spep_2 + 0, 1019, "", 0, 0, 0, -1);	--悟飯向かっていく


-- ** 次の準備 ** --
spep_3 = spep_2 + 48 -4;

-------------------------------------------------
-- 悟飯　格闘
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_17, 0x100, -1, 0, 0, 0); --悟飯　格闘
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 140 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, -1.0, 1.0);
setEffScaleKey( spep_3 + 140 -4, base3_f, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 140 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 140 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 140 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_18, 0x80, -1, 0, 0, 0); --悟飯　格闘
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 140 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, -1.0, 1.0);
setEffScaleKey( spep_3 + 140 -4, base3_b, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 140 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 140 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 140 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 101 );

--setMoveKey( spep_3 -3+ 0, 1, 355.7, -124.9 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 261.9, -125 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 218.3, -125.2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 187.2, -125.3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 163, -125.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 143.1, -125.7 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 126.5, -125.8 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 112.4, -126 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 100.4, -126.2 , 0 );

setScaleKey( spep_3 + 0, 1, 1.04, 1.04 );

setRotateKey( spep_3 + 0, 1, 0 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 14; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
setDisp( spep_3 -3 + 116, 1, 0 );

changeAnime( spep_3 -3 + 26, 1, 106 );
changeAnime( spep_3 -3 + 44, 1, 108 );
changeAnime( spep_3 -3 + 98, 1, 107 );

setMoveKey( spep_3 -3 + 18, 1, 90.1, -126.3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 81.4, -126.5 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 74.2, -126.7 , 0 );
setMoveKey( spep_3 -3 + 25, 1, 68.6, -126.9 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 99.3, -42 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 83, -65.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 88.8, -58.5 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 85.4, -53.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 82, -49 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 85.1, -44.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 88.2, -39.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 88.7, -37.3 , 0 );
setMoveKey( spep_3 -3 + 43, 1, 89.1, -35.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 125.7, -49.4 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 111.2, -65.8 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 98.8, -52.7 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 99.5, -55.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 106.9, -53 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 125.9, -23.8 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 126.7, -43.5 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 140.8, -52.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 135.7, -51 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 130.7, -49.2 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 147.8, -40.4 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 124.3, -61.1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 125.9, -57.2 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 129.2, -58.5 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 152.9, -34.8 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 130.3, -57.2 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 132.9, -49.7 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 130.1, -50.6 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 128.2, -50 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 126.2, -49.5 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 124.9, -48.9 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 123.5, -48.3 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 125.3, -47.7 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 126.9, -47.1 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 128.6, -46.5 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 130.3, -46 , 0 );
setMoveKey( spep_3 -3 + 97, 1, 132, -45.4 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 141.5, -16.3 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 138.6, -16.5 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 239.9, 3.6 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 259.3, 4.7 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 312.3, 9.2 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 365.4, 13.8 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 413.2, 21.3 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 461, 28.7 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 508.9, 33.3 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 556.7, 37.8 , 0 );

setScaleKey( spep_3 -3 + 25, 1, 1.04, 1.04 );
setScaleKey( spep_3 -3 + 26, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 43, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 44, 1, 1.22, 1.22 );
setScaleKey( spep_3 -3 + 97, 1, 1.22, 1.22 );
setScaleKey( spep_3 -3 + 98, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 100, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 102, 1, 0.95, 0.95 );
setScaleKey( spep_3 -3 + 104, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 106, 1, 1.39, 1.39 );
setScaleKey( spep_3 -3 + 108, 1, 1.61, 1.61 );
setScaleKey( spep_3 -3 + 110, 1, 1.83, 1.83 );
setScaleKey( spep_3 -3 + 112, 1, 2.05, 2.05 );
setScaleKey( spep_3 -3 + 114, 1, 2.27, 2.27 );
setScaleKey( spep_3 -3 + 116, 1, 2.49, 2.49 );

setRotateKey( spep_3 -3 + 25, 1, 0 );
setRotateKey( spep_3 -3 + 26, 1, -33.5 );
setRotateKey( spep_3 -3 + 28, 1, -32.6 );
setRotateKey( spep_3 -3 + 30, 1, -31.6 );
setRotateKey( spep_3 -3 + 32, 1, -30.7 );
setRotateKey( spep_3 -3 + 34, 1, -29.8 );
setRotateKey( spep_3 -3 + 36, 1, -28.8 );
setRotateKey( spep_3 -3 + 38, 1, -27.9 );
setRotateKey( spep_3 -3 + 40, 1, -27 );
setRotateKey( spep_3 -3 + 43, 1, -26 );
setRotateKey( spep_3 -3 + 44, 1, -17.5 );
setRotateKey( spep_3 -3 + 46, 1, -16.3 );
setRotateKey( spep_3 -3 + 48, 1, -15.1 );
setRotateKey( spep_3 -3 + 50, 1, -13.8 );
setRotateKey( spep_3 -3 + 52, 1, -12.6 );
setRotateKey( spep_3 -3 + 54, 1, -15.3 );
setRotateKey( spep_3 -3 + 62, 1, -15.3 );
setRotateKey( spep_3 -3 + 64, 1, -10.6 );
setRotateKey( spep_3 -3 + 66, 1, -9.7 );
setRotateKey( spep_3 -3 + 68, 1, -8.8 );
setRotateKey( spep_3 -3 + 70, 1, -7.9 );
setRotateKey( spep_3 -3 + 72, 1, -8.3 );
setRotateKey( spep_3 -3 + 74, 1, -7.8 );
setRotateKey( spep_3 -3 + 76, 1, -7.4 );
setRotateKey( spep_3 -3 + 78, 1, -6.9 );
setRotateKey( spep_3 -3 + 80, 1, -6.4 );
setRotateKey( spep_3 -3 + 82, 1, -6 );
setRotateKey( spep_3 -3 + 84, 1, -5.5 );
setRotateKey( spep_3 -3 + 86, 1, -5.1 );
setRotateKey( spep_3 -3 + 88, 1, -4.6 );
setRotateKey( spep_3 -3 + 90, 1, -4.2 );
setRotateKey( spep_3 -3 + 92, 1, -3.7 );
setRotateKey( spep_3 -3 + 94, 1, -3.3 );
setRotateKey( spep_3 -3 + 97, 1, -2.8 );
setRotateKey( spep_3 -3 + 98, 1, -17 );
setRotateKey( spep_3 -3 + 100, 1, -14.8 );
setRotateKey( spep_3 -3 + 102, 1, -12.6 );
setRotateKey( spep_3 -3 + 104, 1, -10.4 );
setRotateKey( spep_3 -3 + 106, 1, -8.2 );
setRotateKey( spep_3 -3 + 108, 1, -6.1 );
setRotateKey( spep_3 -3 + 110, 1, -3.9 );
setRotateKey( spep_3 -3 + 112, 1, -1.7 );
setRotateKey( spep_3 -3 + 114, 1, 0.5 );
setRotateKey( spep_3 -3 + 116, 1, 2.7 );


-- ** 音 ** --
SE008 = playSeVer2( spep_3 + 22, 1189, "", 0, 0, 0, -1);	--初手キック

SE009 = playSeVer2( spep_3 + 28, 1010, "", 0, 0, 0, -1);	--初手キック

SE010 = playSeVer2( spep_3 + 28, 1110, "", 0, 0, 0, -1);	--初手キック

SE011 = playSeVer2( spep_3 + 44, 1110, "",spep_3 + 294, 0, 12, -1);	--連続パンチ

SE012 = playSeVer2( spep_3 + 52, 1110, "",spep_3 + 306, 0, 12, -1);	--連続パンチ

SE013 = playSeVer2( spep_3 + 58, 1110, "",spep_3 + 310, 0, 10, -1);	--連続パンチ
setSeVolumeByWorkId( spep_3 + 58, SE013, 84 );
setPitch( spep_3 + 58, SE013, -200 );
setTimeStretch( SE013, 0.87, 30, 4 );

SE014 = playSeVer2( spep_3 + 66, 1110, "", 0, 0, 0, -1);	--連続パンチ

SE015 = playSeVer2( spep_3 + 92, 1003, "", 0, 0, 0, -1);	--蹴り飛ばし

SE016 = playSeVer2( spep_3 + 98, 1120, "", 0, 0, 0, -1);	--蹴り飛ばし


-- ** 次の準備 ** --
spep_4 = spep_3 + 140 -4;

-------------------------------------------------
-- トランクス＆悟天　間幕
-------------------------------------------------
-- ** エフェクト等 ** --
base4 = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0); --トランクス＆悟天　間幕
setEffMoveKey( spep_4 + 0, base4, 0, 0 , 0);
setEffMoveKey( spep_4 + 68 -4, base4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4, -1.0, 1.0);
setEffScaleKey( spep_4 + 68 -4, base4, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4, 0);
setEffRotateKey( spep_4 + 68 -4, base4, 0);
setEffAlphaKey( spep_4 + 0, base4, 255);
setEffAlphaKey( spep_4 + 68 -5, base4, 255);
setEffAlphaKey( spep_4 + 68 -4, base4, 0);


-- ** 音 ** --
SE017 = playSeVer2( spep_4 + 6, 1189, "", 0, 0, 0, -1);	--トランクス指差す

SE018 = playSeVer2( spep_4 + 10, 1107, "", 0, 0, 0, -1);	--トランクス指差す
setSeVolumeByWorkId( spep_4 + 10, SE018, 155 );

SE019 = playSeVer2( spep_4 + 20, 4, "",spep_4 + 36, 0, 6, -1);	--悟天頷く
setSeVolumeByWorkId( spep_4 + 20, SE019, 83 );

SE020 = playSeVer2( spep_4 + 40, 4, "",spep_4 + 56, 0, 6, -1);	--悟天頷く
setSeVolumeByWorkId( spep_4 + 40, SE020, 78 );


-- ** 次の準備 ** --
spep_5 = spep_4 + 68 -4;

-------------------------------------------------
-- トランクス＆悟天　敵に接近する
-------------------------------------------------
-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_19, 0x80, -1, 0, 0, 0); --トランクス＆悟天　敵に接近する
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 68 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, -1.0, 1.0);
setEffScaleKey( spep_5 + 68 -4, base5, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 68 -4, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 68 -5, base5, 255);
setEffAlphaKey( spep_5 + 68 -4, base5, 0);


-- ** 音 ** --
SE021 = playSeVer2( spep_5 + 0, 1006, "", 0, 0, 0, -1);	--構える
setSeVolumeByWorkId( spep_5 + 0, SE021, 86 );
setPitch( spep_5 + 0, SE021, -400 );
setTimeStretch( SE021, 0.73, 30, 4 );

SE022 = playSeVer2( spep_5 + 18, 1182, "", 0, 0, 0, -1);	--二人飛んでいく

SE023 = playSeVer2( spep_5 + 18, 1117, "", 0, 0, 0, -1);	--二人飛んでいく


-- ** 次の準備 ** --
spep_6 = spep_5 + 68 -4;

-------------------------------------------------
-- トランク　敵にパンチ
-------------------------------------------------
-- ** エフェクト等 ** --
base6_f = entryEffect( spep_6 + 0, SP_20, 0x100, -1, 0, 0, 0); --トランク　敵にパンチ
setEffMoveKey( spep_6 + 0, base6_f, 0, 0 , 0);
setEffMoveKey( spep_6 + 68 -4, base6_f, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6_f, -1.0, 1.0);
setEffScaleKey( spep_6 + 68 -4, base6_f, -1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6_f, 0);
setEffRotateKey( spep_6 + 68 -4, base6_f, 0);
setEffAlphaKey( spep_6 + 0, base6_f, 255);
setEffAlphaKey( spep_6 + 68 -5, base6_f, 255);
setEffAlphaKey( spep_6 + 68 -4, base6_f, 0);

base6_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0); --トランク　敵にパンチ
setEffMoveKey( spep_6 + 0, base6_b, 0, 0 , 0);
setEffMoveKey( spep_6 + 68 -4, base6_b, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6_b, 1.0, 1.0);
setEffScaleKey( spep_6 + 68 -4, base6_b, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6_b, 0);
setEffRotateKey( spep_6 + 68 -4, base6_b, 0);
setEffAlphaKey( spep_6 + 0, base6_b, 255);
setEffAlphaKey( spep_6 + 68 -5, base6_b, 255);
setEffAlphaKey( spep_6 + 68 -4, base6_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -4 + 68, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );
changeAnime( spep_6 -3 + 22, 1, 108 );

--setMoveKey( spep_6 -3 + 0, 1, -21.8, -43.9 , 0 );
setMoveKey( spep_6 -2 + 2, 1, -16.7, -42.5 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -11.6, -41.1 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -6.4, -39.7 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -1.3, -38.3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 3.9, -36.9 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 9, -35.5 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 14.2, -34.1 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 19.3, -32.7 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 24.5, -31.3 , 0 );
setMoveKey( spep_6 -3 + 21, 1, 29.6, -29.9 , 0 );
setMoveKey( spep_6 -3 + 22, 1, -23.4, 37.3 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -1.9, 38.7 , 0 );
setMoveKey( spep_6 -3 + 26, 1, -15, 38.2 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 67.8, 7.3 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 88.5, 30.6 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 152.1, 29.4 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 124, 17.7 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 156, 27.4 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 162.9, 22.9 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 168.8, 27.3 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 166.3, 23.5 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 172.2, 20.2 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 167.7, 27.2 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 174.2, 29.2 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 179.6, 33.6 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 173.4, 26.4 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 173, 23 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 180.4, 27.4 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 182.8, 27.4 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 459.3, 27.4 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 735.7, 27.4 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 1012.1, 27.4 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 1288.6, 27.4 , 0 );
setMoveKey( spep_6 -4 + 68, 1, 1288.6, 27.4 , 0 );

setScaleKey( spep_6 + 0, 1, 1.97, 1.97 );
setScaleKey( spep_6 -3 + 21, 1, 1.97, 1.97 );
setScaleKey( spep_6 -3 + 22, 1, 5.69, 5.69 );
setScaleKey( spep_6 -4 + 68, 1, 5.69, 5.69 );

--setRotateKey( spep_6 -3 + 0, 1, -23.3 );
setRotateKey( spep_6 -2 + 2, 1, -22.6 );
setRotateKey( spep_6 -3 + 4, 1, -21.9 );
setRotateKey( spep_6 -3 + 6, 1, -21.1 );
setRotateKey( spep_6 -3 + 8, 1, -20.4 );
setRotateKey( spep_6 -3 + 10, 1, -19.7 );
setRotateKey( spep_6 -3 + 12, 1, -18.9 );
setRotateKey( spep_6 -3 + 14, 1, -18.2 );
setRotateKey( spep_6 -3 + 16, 1, -17.5 );
setRotateKey( spep_6 -3 + 18, 1, -16.7 );
setRotateKey( spep_6 -3 + 21, 1, -16 );
setRotateKey( spep_6 -3 + 22, 1, -3.2 );
setRotateKey( spep_6 -4 + 68, 1, -3.2 );


-- ** 音 ** --
SE024 = playSeVer2( spep_6 + 26, 1110, "", 0, 0, 0, -1);	--トランクスエルボー
setSeVolumeByWorkId( spep_6 + 26, SE024, 91 );

SE025 = playSeVer2( spep_6 + 26, 1190, "", 0, 0, 0, -1);	--トランクスエルボー
setSeVolumeByWorkId( spep_6 + 26, SE025, 90 );

SE026 = playSeVer2( spep_6 + 26, 1153, "", 0, 0, 0, -1);	--トランクスエルボー
setSeVolumeByWorkId( spep_6 + 26, SE026, 94 );


-- ** 次の準備 ** --
spep_7 = spep_6 + 68 -4;

-------------------------------------------------
-- 悟天　敵にパンチ
-------------------------------------------------
-- ** エフェクト等 ** --
base7_f = entryEffect( spep_7 + 0, SP_21, 0x100, -1, 0, 0, 0); --悟天　敵にパンチ
setEffMoveKey( spep_7 + 0, base7_f, 0, 0 , 0);
setEffMoveKey( spep_7 + 100 -4, base7_f, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7_f, -1.0, 1.0);
setEffScaleKey( spep_7 + 100 -4, base7_f, -1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7_f, 0);
setEffRotateKey( spep_7 + 100 -4, base7_f, 0);
setEffAlphaKey( spep_7 + 0, base7_f, 255);
setEffAlphaKey( spep_7 + 100 -5, base7_f, 255);
setEffAlphaKey( spep_7 + 100 -4, base7_f, 0);

base7_b = entryEffect( spep_7 + 0, SP_22, 0x80, -1, 0, 0, 0); --悟天　敵にパンチ
setEffMoveKey( spep_7 + 0, base7_b, 0, 0 , 0);
setEffMoveKey( spep_7 + 100 -4, base7_b, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7_b, -1.0, 1.0);
setEffScaleKey( spep_7 + 100 -4, base7_b, -1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7_b, 0);
setEffRotateKey( spep_7 + 100 -4, base7_b, 0);
setEffAlphaKey( spep_7 + 0, base7_b, 255);
setEffAlphaKey( spep_7 + 100 -5, base7_b, 255);
setEffAlphaKey( spep_7 + 100 -4, base7_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -3 + 82, 1, 0 );

changeAnime( spep_7 + 0, 1, 106 );
changeAnime( spep_7 -3 + 40, 1, 7 );

--setMoveKey( spep_7 -3 + 0, 1, -644.2, 58 , 0 );
setMoveKey( spep_7 -2 + 2, 1, -618.6, 54.2 , 0 );
setMoveKey( spep_7 -3 + 4, 1, -593, 50.2 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -567.4, 46.3 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -541.8, 42.4 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -516.3, 38.5 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -490.7, 34.5 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -465.1, 30.6 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -439.5, 26.7 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -414, 22.8 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -388.4, 18.8 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -362.8, 14.9 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -337.2, 11 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -311.6, 7 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -286, 3.1 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -260.5, -0.8 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -234.9, -4.7 , 0 );
setMoveKey( spep_7 -3 + 34, 1, -209.3, -8.7 , 0 );
setMoveKey( spep_7 -3 + 36, 1, -183.7, -12.5 , 0 );
setMoveKey( spep_7 -3 + 39, 1, -158.2, -16.5 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 191.3, -59.4 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 141.8, -29.8 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 102.3, 42.4 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 97.4, -1.9 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 76.6, 37.7 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 85.7, 21.6 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 104.2, 27.7 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 88.6, 37.2 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 71.3, 30.2 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 75.2, 36.6 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 75, 41.2 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 67, 39.9 , 0 );
setMoveKey( spep_7 -3 + 64, 1, 66.8, 38.6 , 0 );
setMoveKey( spep_7 -3 + 66, 1, 60.7, 45.1 , 0 );
setMoveKey( spep_7 -3 + 68, 1, 60.5, 51.6 , 0 );
setMoveKey( spep_7 -3 + 70, 1, 58.4, 52.3 , 0 );
setMoveKey( spep_7 -3 + 72, 1, 48.4, 54.9 , 0 );
setMoveKey( spep_7 -3 + 74, 1, -114.5, 282.6 , 0 );
setMoveKey( spep_7 -3 + 76, 1, -287.2, 508.4 , 0 );
setMoveKey( spep_7 -3 + 78, 1, -461.8, 742 , 0 );
setMoveKey( spep_7 -3 + 80, 1, -628.6, 975.6 , 0 );
setMoveKey( spep_7 -3 + 82, 1, -624.7, 971.7 , 0 );

-- setScaleKey( spep_7 -3 + 0, 1, 2.05, 2.05 );
setScaleKey( spep_7 -2 + 2, 1, 2.09, 2.09 );
setScaleKey( spep_7 -3 + 4, 1, 2.12, 2.12 );
setScaleKey( spep_7 -3 + 6, 1, 2.16, 2.16 );
setScaleKey( spep_7 -3 + 8, 1, 2.19, 2.19 );
setScaleKey( spep_7 -3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_7 -3 + 12, 1, 2.26, 2.26 );
setScaleKey( spep_7 -3 + 14, 1, 2.3, 2.3 );
setScaleKey( spep_7 -3 + 16, 1, 2.33, 2.33 );
setScaleKey( spep_7 -3 + 18, 1, 2.37, 2.37 );
setScaleKey( spep_7 -3 + 20, 1, 2.4, 2.4 );
setScaleKey( spep_7 -3 + 22, 1, 2.44, 2.44 );
setScaleKey( spep_7 -3 + 24, 1, 2.47, 2.47 );
setScaleKey( spep_7 -3 + 26, 1, 2.51, 2.51 );
setScaleKey( spep_7 -3 + 28, 1, 2.55, 2.55 );
setScaleKey( spep_7 -3 + 30, 1, 2.58, 2.58 );
setScaleKey( spep_7 -3 + 32, 1, 2.62, 2.62 );
setScaleKey( spep_7 -3 + 34, 1, 2.65, 2.65 );
setScaleKey( spep_7 -3 + 36, 1, 2.69, 2.69 );
setScaleKey( spep_7 -3 + 39, 1, 2.72, 2.72 );
setScaleKey( spep_7 -3 + 40, 1, 1.86, 1.86 );
setScaleKey( spep_7 -3 + 72, 1, 1.86, 1.86 );
setScaleKey( spep_7 -3 + 74, 1, 2.22, 2.22 );
setScaleKey( spep_7 -3 + 76, 1, 2.57, 2.57 );
setScaleKey( spep_7 -3 + 78, 1, 2.93, 2.93 );
setScaleKey( spep_7 -3 + 80, 1, 3.28, 3.28 );
setScaleKey( spep_7 -3 + 82, 1, 3.28, 3.28 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 -3 + 38, 1, 0 );
setRotateKey( spep_7 -3 + 39, 1, 0 );
setRotateKey( spep_7 -3 + 40, 1, 63.1 );
setRotateKey( spep_7 -3 + 82, 1, 63.1 );


-- ** 音 ** --
SE027 = playSeVer2( spep_7 + 0, 1167, "",spep_7 + 48, 0, 14, -1);	--悟天突っ込んでくる
setSeVolumeByWorkId( spep_7 + 0, SE027, 39 );

SE028 = playSeVer2( spep_7 + 0, 1019, "",spep_7 + 48, 0, 14, -1);	--悟天突っ込んでくる

SE029 = playSeVer2( spep_7 + 28, 1189, "", 0, 0, 0, -1);	--悟天パンチ

SE030 = playSeVer2( spep_7 + 38, 1120, "", 0, 0, 0, -1);	--悟天パンチ


-- ** 次の準備 ** --
spep_8 = spep_7 + 100 -4;

-------------------------------------------------
-- トランクス＆悟天　ダブルパンチ
-------------------------------------------------
-- ** エフェクト等 ** --
base8_f = entryEffect( spep_8 + 0, SP_23, 0x100, -1, 0, 0, 0); --トランクス＆悟天　ダブルパンチ
setEffMoveKey( spep_8 + 0, base8_f, 0, 0 , 0);
setEffMoveKey( spep_8 + 100 -4, base8_f, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base8_f, -1.0, 1.0);
setEffScaleKey( spep_8 + 100 -4, base8_f, -1.0, 1.0);
setEffRotateKey( spep_8 + 0, base8_f, 0);
setEffRotateKey( spep_8 + 100 -4, base8_f, 0);
setEffAlphaKey( spep_8 + 0, base8_f, 255);
setEffAlphaKey( spep_8 + 100 -5, base8_f, 255);
setEffAlphaKey( spep_8 + 100 -4, base8_f, 0);

base8_b = entryEffect( spep_8 + 0, SP_24, 0x80, -1, 0, 0, 0); --トランクス＆悟天　ダブルパンチ
setEffMoveKey( spep_8 + 0, base8_b, 0, 0 , 0);
setEffMoveKey( spep_8 + 100 -4, base8_b, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base8_b, -1.0, 1.0);
setEffScaleKey( spep_8 + 100 -4, base8_b, -1.0, 1.0);
setEffRotateKey( spep_8 + 0, base8_b, 0);
setEffRotateKey( spep_8 + 100 -4, base8_b, 0);
setEffAlphaKey( spep_8 + 0, base8_b, 255);
setEffAlphaKey( spep_8 + 100 -5, base8_b, 255);
setEffAlphaKey( spep_8 + 100 -4, base8_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 -4 + 100, 1, 0 );

changeAnime( spep_8 + 0, 1, 6 );
changeAnime( spep_8 -3 + 40, 1, 8 );

-- setMoveKey( spep_8 -3 + 0, 1, 847.8, -442.3 , 0 );
setMoveKey( spep_8 -2 + 2, 1, 806.6, -421.2 , 0 );
setMoveKey( spep_8 -3 + 4, 1, 765.4, -400.1 , 0 );
setMoveKey( spep_8 -3 + 6, 1, 724.2, -379 , 0 );
setMoveKey( spep_8 -3 + 8, 1, 682.9, -357.9 , 0 );
setMoveKey( spep_8 -3 + 10, 1, 641.7, -336.8 , 0 );
setMoveKey( spep_8 -3 + 12, 1, 600.5, -315.7 , 0 );
setMoveKey( spep_8 -3 + 14, 1, 559.3, -294.6 , 0 );
setMoveKey( spep_8 -3 + 16, 1, 518.1, -273.5 , 0 );
setMoveKey( spep_8 -3 + 18, 1, 476.9, -252.4 , 0 );
setMoveKey( spep_8 -3 + 20, 1, 435.6, -231.3 , 0 );
setMoveKey( spep_8 -3 + 22, 1, 394.4, -210.2 , 0 );
setMoveKey( spep_8 -3 + 24, 1, 353.2, -189.1 , 0 );
setMoveKey( spep_8 -3 + 26, 1, 312, -168 , 0 );
setMoveKey( spep_8 -3 + 28, 1, 270.8, -146.9 , 0 );
setMoveKey( spep_8 -3 + 30, 1, 229.6, -125.8 , 0 );
setMoveKey( spep_8 -3 + 32, 1, 188.4, -104.7 , 0 );
setMoveKey( spep_8 -3 + 34, 1, 147.1, -83.6 , 0 );
setMoveKey( spep_8 -3 + 36, 1, 105.9, -62.5 , 0 );
setMoveKey( spep_8 -3 + 39, 1, 64.7, -41.4 , 0 );
setMoveKey( spep_8 -3 + 40, 1, -35.3, -82.2 , 0 );
setMoveKey( spep_8 -3 + 42, 1, -54.5, -90.7 , 0 );
setMoveKey( spep_8 -3 + 44, 1, -16, -114.1 , 0 );
setMoveKey( spep_8 -3 + 46, 1, -48.5, -166.1 , 0 );
setMoveKey( spep_8 -3 + 48, 1, -22.9, -209.9 , 0 );
setMoveKey( spep_8 -3 + 50, 1, -34.5, -194.8 , 0 );
setMoveKey( spep_8 -3 + 52, 1, -40.1, -195 , 0 );
setMoveKey( spep_8 -3 + 54, 1, -42.1, -191.2 , 0 );
setMoveKey( spep_8 -3 + 56, 1, -36.1, -189.7 , 0 );
setMoveKey( spep_8 -3 + 58, 1, -42.2, -198.3 , 0 );
setMoveKey( spep_8 -3 + 60, 1, -44, -194.7 , 0 );
setMoveKey( spep_8 -3 + 62, 1, -35.9, -205.2 , 0 );
setMoveKey( spep_8 -3 + 64, 1, -42.1, -199.5 , 0 );
setMoveKey( spep_8 -3 + 66, 1, -36.1, -196.5 , 0 );
setMoveKey( spep_8 -3 + 68, 1, -32.8, -206.1 , 0 );
setMoveKey( spep_8 -3 + 70, 1, -37.9, -205 , 0 );
setMoveKey( spep_8 -3 + 72, 1, -34.4, -204.7 , 0 );
setMoveKey( spep_8 -3 + 74, 1, -32, -213.1 , 0 );
setMoveKey( spep_8 -3 + 76, 1, -38.6, -212.4 , 0 );
setMoveKey( spep_8 -3 + 78, 1, -35.5, -221.5 , 0 );
setMoveKey( spep_8 -3 + 80, 1, -43.7, -391.2 , 0 );
setMoveKey( spep_8 -3 + 82, 1, -47.2, -561.5 , 0 );
setMoveKey( spep_8 -3 + 84, 1, -50.8, -731.9 , 0 );
setMoveKey( spep_8 -3 + 86, 1, -54.3, -902.3 , 0 );
setMoveKey( spep_8 -3 + 88, 1, -57.9, -1072.7 , 0 );
setMoveKey( spep_8 -5 + 100, 1, -57.9, -1072.7 , 0 );

-- setScaleKey( spep_8 -3 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_8 -2 + 2, 1, 2.46, 2.46 );
setScaleKey( spep_8 -3 + 4, 1, 2.42, 2.42 );
setScaleKey( spep_8 -3 + 6, 1, 2.38, 2.38 );
setScaleKey( spep_8 -3 + 8, 1, 2.34, 2.34 );
setScaleKey( spep_8 -3 + 10, 1, 2.31, 2.31 );
setScaleKey( spep_8 -3 + 12, 1, 2.27, 2.27 );
setScaleKey( spep_8 -3 + 14, 1, 2.23, 2.23 );
setScaleKey( spep_8 -3 + 16, 1, 2.19, 2.19 );
setScaleKey( spep_8 -3 + 18, 1, 2.15, 2.15 );
setScaleKey( spep_8 -3 + 20, 1, 2.11, 2.11 );
setScaleKey( spep_8 -3 + 22, 1, 2.07, 2.07 );
setScaleKey( spep_8 -3 + 24, 1, 2.03, 2.03 );
setScaleKey( spep_8 -3 + 26, 1, 1.99, 1.99 );
setScaleKey( spep_8 -3 + 28, 1, 1.96, 1.96 );
setScaleKey( spep_8 -3 + 30, 1, 1.92, 1.92 );
setScaleKey( spep_8 -3 + 32, 1, 1.88, 1.88 );
setScaleKey( spep_8 -3 + 34, 1, 1.84, 1.84 );
setScaleKey( spep_8 -3 + 36, 1, 1.8, 1.8 );
setScaleKey( spep_8 -3 + 39, 1, 1.76, 1.76 );
setScaleKey( spep_8 -3 + 40, 1, 3.67, 3.67 );
setScaleKey( spep_8 -5 + 100, 1, 3.67, 3.67 );

setRotateKey( spep_8 + 0, 1, 3.5 );
setRotateKey( spep_8 -3 + 38, 1, -5.3 );
setRotateKey( spep_8 -3 + 39, 1, -5.3 );
setRotateKey( spep_8 -3 + 40, 1, -77.3 );
setRotateKey( spep_8 -5 + 100, 1, -77.3 );


-- ** 音 ** --
SE031 = playSeVer2( spep_8 + 0, 1109, "", 0, 0, 0, -1);	--瞬間移動

SE032 = playSeVer2( spep_8 + 32, 1123, "", 0, 0, 0, -1);	--二人パンチ
setSeVolumeByWorkId( spep_8 + 32, SE032, 66 );

SE033 = playSeVer2( spep_8 + 36, 1187, "", 0, 0, 0, -1);	--二人パンチ

SE034 = playSeVer2( spep_8 + 36, 1153, "", 0, 0, 0, -1);	--二人パンチ

SE035 = playSeVer2( spep_8 + 82, 1121, "",spep_8 + 126, 0, 12, -1);	--敵落ちていく


-- ** 次の準備 ** --
spep_9 = spep_8 + 100 -4;

-------------------------------------------------
-- トランク＆悟天　着地
-------------------------------------------------
-- ** エフェクト等 ** --
base9_f = entryEffect( spep_9 + 0, SP_25, 0x100, -1, 0, 0, 0); --トランク＆悟天　着地
setEffMoveKey( spep_9 + 0, base9_f, 0, 0 , 0);
setEffMoveKey( spep_9 + 88 -4, base9_f, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base9_f, -1.0, 1.0);
setEffScaleKey( spep_9 + 88 -4, base9_f, -1.0, 1.0);
setEffRotateKey( spep_9 + 0, base9_f, 0);
setEffRotateKey( spep_9 + 88 -4, base9_f, 0);
setEffAlphaKey( spep_9 + 0, base9_f, 255);
setEffAlphaKey( spep_9 + 88 -5, base9_f, 255);
setEffAlphaKey( spep_9 + 88 -4, base9_f, 0);

base9_b = entryEffect( spep_9 + 0, SP_14, 0x80, -1, 0, 0, 0); --トランク＆悟天　着地
setEffMoveKey( spep_9 + 0, base9_b, 0, 0 , 0);
setEffMoveKey( spep_9 + 88 -4, base9_b, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base9_b, 1.0, 1.0);
setEffScaleKey( spep_9 + 88 -4, base9_b, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base9_b, 0);
setEffRotateKey( spep_9 + 88 -4, base9_b, 0);
setEffAlphaKey( spep_9 + 0, base9_b, 255);
setEffAlphaKey( spep_9 + 88 -5, base9_b, 255);
setEffAlphaKey( spep_9 + 88 -4, base9_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 -3 + 16, 1, 0 );

changeAnime( spep_9 + 0, 1, 6 );

setMoveKey( spep_9 + 0, 1, 83, 286.7 , 0 );
setMoveKey( spep_9 -1 + 2, 1, 83, 271.8 , 0 );
setMoveKey( spep_9 -1 + 4, 1, 83, 256.9 , 0 );
setMoveKey( spep_9 -1 + 6, 1, 83, 242 , 0 );
setMoveKey( spep_9 -1 + 8, 1, 83, 227.1 , 0 );
setMoveKey( spep_9 -1 + 10, 1, 83, 212.2 , 0 );
setMoveKey( spep_9 -1 + 12, 1, 83, 80.7 , 0 );
setMoveKey( spep_9 -1 + 14, 1, 83, -50.9 , 0 );

setScaleKey( spep_9 + 0, 1, 1.39, 1.39 );
setScaleKey( spep_9 -1 + 14, 1, 1.39, 1.39 );

setRotateKey( spep_9 + 0, 1, -102 );
setRotateKey( spep_9 -1 + 14, 1, -102 );


-- ** 音 ** --
SE036 = playSeVer2( spep_9 + 12, 1159, "",spep_9 + 136, 0, 50, -1);	--地面爆発

SE037 = playSeVer2( spep_9 + 24, 1189, "", 0, 0, 0, -1);	--二人着地
setSeVolumeByWorkId( spep_9 + 24, SE037, 209 );

SE038 = playSeVer2( spep_9 + 30, 1192, "", 0, 0, 0, -1);	--二人着地
setSeVolumeByWorkId( spep_9 + 30, SE038, 327 );

SE039 = playSeVer2( spep_9 + 32, 1108, "", 0, 0, 0, -1);	--二人着地
setSeVolumeByWorkId( spep_9 + 32, SE039, 209 );

SE040 = playSeVer2( spep_9 + 34, 1107, "", 0, 0, 0, -1);	--二人着地
setSeVolumeByWorkId( spep_9 + 34, SE040, 209 );


-- ** 次の準備 ** --
spep_10 = spep_9 + 88 -4;

-------------------------------------------------
-- フィニッシュ絵
-------------------------------------------------
-- ** エフェクト等 ** --
base10 = entryEffect( spep_10 + 0, SP_15, 0x80, -1, 0, 0, 0); --フィニッシュ絵
setEffMoveKey( spep_10 + 0, base10, 0, 0 , 0);
setEffMoveKey( spep_10 + 120 -4, base10, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base10, -1.0, 1.0);
setEffScaleKey( spep_10 + 120 -4, base10, -1.0, 1.0);
setEffRotateKey( spep_10 + 0, base10, 0);
setEffRotateKey( spep_10 + 120 -4, base10, 0);
setEffAlphaKey( spep_10 + 0, base10, 255);
setEffAlphaKey( spep_10 + 120 -5, base10, 255);
setEffAlphaKey( spep_10 + 120 -4, base10, 0);


-- ** 音 ** --
SE041 = playSeVer2( spep_10 + 0, 1042, "", 0, 0, 0, -1);	--最後決め

SE042 = playSeVer2( spep_10 + 22, 1233, "", 0, 4, 0, -1);	--最後構え
setSeVolumeByWorkId( spep_10 + 22, SE042, 80 );
setStartTimeMs( SE042,  100 );


-- ** ダメージ表示 ** --
dealDamage( spep_10 + 10);
endPhase( spep_10 + 120 -8);

end
