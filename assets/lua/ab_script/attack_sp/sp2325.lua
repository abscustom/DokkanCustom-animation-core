--1023890:孫悟飯(青年期)&孫悟天(幼年期)&トランクス(幼年期)_ワクワク100倍パワー
--sp_effect_b4_00217
--sp2325

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
SP_01 = 159147;	--冒頭	ef_001	45	反転なし
SP_02 = 159148;	--トランクス＆悟天　画面手前に迫る	ef_002	35	反転なし
SP_03 = 159149;	--トランクス＆悟天　格闘　手前	ef_003	70	反転なし
SP_04 = 159150;	--トランクス＆悟天　格闘　奥	ef_003_b	70	反転なし
SP_05 = 159151;	--悟飯　画面手前に迫る	ef_004	25	反転なし
SP_06 = 159152;	--悟飯　格闘　味方側：手前	ef_005	65	味方側
SP_07 = 159153;	--悟飯　格闘　味方側：奥	ef_005_b	65	味方側
SP_08 = 159155;	--悟飯構える	ef_006	60	反転なし
SP_09 = 159156;	--悟飯気弾放つ→気弾が敵に迫る	ef_007	120	反転なし
SP_10 = 159157;	--悟飯気弾放つ→気弾が敵に迫る	ef_007_b	120	反転なし
SP_11 = 159158;	--フィニッシュ絵	ef_008	55	反転なし

----エフェクト(敵)
SP_12 = 159154;	--悟飯　格闘　敵側：手前	ef_005_r	65	敵側


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
base1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --冒頭	ef_001
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
spep_x = spep_1 + 0;

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


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 6, 1018, "", 0, 0, 0, -1);	--顔カットイン

SE002 = playSeVer2( spep_1 + 6, 1108, "", 0, 0, 0, -1);	--三人揃う
setSeVolumeByWorkId( spep_1 + 6, SE002, 155 );

SE003 = playSeVer2( spep_1 + 6, 1007, "", 0, 0, 0, -1);	--三人揃う
setSeVolumeByWorkId( spep_1 + 6, SE003, 81 );

SE004 = playSeVer2( spep_1 + 12, 1107, "", 0, 0, 0, -1);	--三人揃う
setSeVolumeByWorkId( spep_1 + 12, SE004, 172 );

SE005 = playSeVer2( spep_1 + 12, 1192, "",spep_1 + 36, 0, 10, -1);	--三人揃う
setSeVolumeByWorkId( spep_1 + 12, SE005, 219 );

SE006 = playSeVer2( spep_1 + 16, 1106, "", 0, 0, 0, -1);	--三人揃う
setSeVolumeByWorkId( spep_1 + 16, SE006, 151 );


-- ** 次の準備 ** --
spep_c = spep_1 + 88 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え]]

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
-- トランクス＆悟天　画面手前に迫る
-------------------------------------------------
-- ** エフェクト等 ** --
base2 = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); --トランクス＆悟天　画面手前に迫る	ef_002
setEffMoveKey( spep_2 + 0, base2, 0, 0 , 0);
setEffMoveKey( spep_2 + 68 -4, base2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2, 1.0, 1.0);
setEffScaleKey( spep_2 + 68 -4, base2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2, 0);
setEffRotateKey( spep_2 + 68 -4, base2, 0);
setEffAlphaKey( spep_2 + 0, base2, 255);
setEffAlphaKey( spep_2 + 68 -5, base2, 255);
setEffAlphaKey( spep_2 + 68 -4, base2, 0);


-- ** 音 ** --
SE008 = playSeVer2( spep_2 + 8, 1182, "", 0, 0, 0, -1);	--悟天ラッシュ

SE009 = playSeVer2( spep_2 + 8, 9, "", 0, 0, 0, -1);	--悟天ラッシュ

SE010 = playSeVer2( spep_2 + 8, 1167, "", 0, 0, 0, 0.6);	--悟天ラッシュ
setSeVolumeByWorkId( spep_2 + 8, SE010, 62 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 54; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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


-- ** 次の準備 ** --
spep_3 = spep_2 + 68 -4;

-------------------------------------------------
-- トランクス＆悟天　格闘　手前 奥
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); --トランクス＆悟天　格闘　手前	ef_003
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 140 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 140 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 140 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 140 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 140 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); --トランクス＆悟天　格闘　奥	ef_003_b
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
setDisp( spep_3 -3 + 130, 1, 0 );

changeAnime( spep_3 + 0, 1, 117 );
changeAnime( spep_3 -3 + 12, 1, 6 );
changeAnime( spep_3 -3 + 56, 1, 108 );
changeAnime( spep_3 -3 + 76, 1, 106 );
changeAnime( spep_3 -3 + 112, 1, 7 );

setMoveKey( spep_3 + 0, 1, -18.9, -94.8 , 0 );
setMoveKey( spep_3 -3 + 11, 1, -18.9, -94.8 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -19.9, -95.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -20, -95.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -25.8, -87.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -21.7, -103.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -25.6, -87.1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -29.3, -87.1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -26.4, -103.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -34.8, -87.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -36.5, -87.1 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -32.2, -103.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -35.3, -87.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -30, -103.1 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -38.9, -87.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -42.6, -87.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -43.1, -87.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -43.7, -87.1 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -44.2, -87.1 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -44.7, -87.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -45.2, -87.1 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -45.7, -87.1 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -46.3, -87 , 0 );
setMoveKey( spep_3 -3 + 55, 1, -46.8, -87 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -16.5, -99.8 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -8.1, -94.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -13.2, -92.5 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -4, -90.4 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -8.4, -91.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 0.1, -86.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -2.5, -84.3 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -0.4, -82.2 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 1.6, -80.2 , 0 );
setMoveKey( spep_3 -3 + 75, 1, 3.6, -78.2 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -2.8, -53.2 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 0.6, -38.3 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -6.4, -68.8 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 5, -36 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -3.2, -64.1 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 7.1, -32.6 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -1.1, -61.8 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 10.4, -30.2 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 14.6, -25.9 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 1.6, -57.7 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 8.2, -28.1 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 10, -26.3 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 11.8, -24.4 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 13.7, -22.6 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 15.5, -20.8 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 17.4, -18.9 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 19.2, -17.1 , 0 );
setMoveKey( spep_3 -3 + 111, 1, 21.1, -15.3 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 2.4, 31 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -55.4, 9.6 , 0 );
setMoveKey( spep_3 -3 + 116, 1, -109.4, -40.5 , 0 );
setMoveKey( spep_3 -3 + 118, 1, -157.4, -117.3 , 0 );
setMoveKey( spep_3 -3 + 120, 1, -216.7, -168 , 0 );
setMoveKey( spep_3 -3 + 122, 1, -271.6, -218.9 , 0 );
setMoveKey( spep_3 -3 + 124, 1, -326.6, -269.9 , 0 );
setMoveKey( spep_3 -3 + 126, 1, -381.7, -321 , 0 );
setMoveKey( spep_3 -3 + 130, 1, -381.7, -321 , 0 );

setScaleKey( spep_3 + 0, 1, 2.63, 2.63 );
setScaleKey( spep_3 -3 + 55, 1, 2.63, 2.63 );
setScaleKey( spep_3 -3 + 56, 1, 2.93, 2.93 );
setScaleKey( spep_3 -3 + 75, 1, 2.93, 2.93 );
setScaleKey( spep_3 -3 + 76, 1, 2.62, 2.62 );
setScaleKey( spep_3 -3 + 78, 1, 2.63, 2.63 );
setScaleKey( spep_3 -3 + 111, 1, 2.63, 2.63 );
setScaleKey( spep_3 -3 + 112, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 114, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 116, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 118, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 120, 1, 1.49, 1.49 );
setScaleKey( spep_3 -3 + 122, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 124, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 126, 1, 1.99, 1.99 );
setScaleKey( spep_3 -3 + 130, 1, 1.99, 1.99 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 11, 1, 0 );
setRotateKey( spep_3 -3 + 12, 1, 53.7 );
setRotateKey( spep_3 -3 + 14, 1, 53.6 );
setRotateKey( spep_3 -3 + 16, 1, 53.5 );
setRotateKey( spep_3 -3 + 18, 1, 53.3 );
setRotateKey( spep_3 -3 + 20, 1, 53.2 );
setRotateKey( spep_3 -3 + 22, 1, 53.1 );
setRotateKey( spep_3 -3 + 24, 1, 52.9 );
setRotateKey( spep_3 -3 + 26, 1, 52.8 );
setRotateKey( spep_3 -3 + 28, 1, 52.7 );
setRotateKey( spep_3 -3 + 30, 1, 52.6 );
setRotateKey( spep_3 -3 + 32, 1, 52.4 );
setRotateKey( spep_3 -3 + 34, 1, 52.3 );
setRotateKey( spep_3 -3 + 36, 1, 52.2 );
setRotateKey( spep_3 -3 + 38, 1, 52 );
setRotateKey( spep_3 -3 + 40, 1, 51.9 );
setRotateKey( spep_3 -3 + 42, 1, 51.8 );
setRotateKey( spep_3 -3 + 44, 1, 51.6 );
setRotateKey( spep_3 -3 + 46, 1, 51.5 );
setRotateKey( spep_3 -3 + 48, 1, 51.4 );
setRotateKey( spep_3 -3 + 50, 1, 51.3 );
setRotateKey( spep_3 -3 + 52, 1, 51.1 );
setRotateKey( spep_3 -3 + 55, 1, 51 );
setRotateKey( spep_3 -3 + 56, 1, 0 );
setRotateKey( spep_3 -3 + 75, 1, 0 );
setRotateKey( spep_3 -3 + 76, 1, -41.2 );
setRotateKey( spep_3 -3 + 78, 1, -41 );
setRotateKey( spep_3 -3 + 80, 1, -40.8 );
setRotateKey( spep_3 -3 + 82, 1, -40.6 );
setRotateKey( spep_3 -3 + 84, 1, -40.4 );
setRotateKey( spep_3 -3 + 86, 1, -40.2 );
setRotateKey( spep_3 -3 + 88, 1, -40 );
setRotateKey( spep_3 -3 + 90, 1, -39.8 );
setRotateKey( spep_3 -3 + 92, 1, -39.5 );
setRotateKey( spep_3 -3 + 94, 1, -39.3 );
setRotateKey( spep_3 -3 + 96, 1, -39.1 );
setRotateKey( spep_3 -3 + 98, 1, -38.9 );
setRotateKey( spep_3 -3 + 100, 1, -38.7 );
setRotateKey( spep_3 -3 + 102, 1, -38.5 );
setRotateKey( spep_3 -3 + 104, 1, -38.3 );
setRotateKey( spep_3 -3 + 106, 1, -38.1 );
setRotateKey( spep_3 -3 + 108, 1, -37.9 );
setRotateKey( spep_3 -3 + 111, 1, -37.6 );
setRotateKey( spep_3 -3 + 112, 1, -41.2 );
setRotateKey( spep_3 -3 + 114, 1, -42.2 );
setRotateKey( spep_3 -3 + 116, 1, -43.1 );
setRotateKey( spep_3 -3 + 118, 1, -44 );
setRotateKey( spep_3 -3 + 120, 1, -44.9 );
setRotateKey( spep_3 -3 + 122, 1, -45.8 );
setRotateKey( spep_3 -3 + 124, 1, -46.7 );
setRotateKey( spep_3 -3 + 126, 1, -47.7 );
setRotateKey( spep_3 -3 + 130, 1, -47.7 );


-- ** 音 ** --
SE011 = playSeVer2( spep_3 + 0, 1189, "", 0, 0, 0, -1);	--悟天ラッシュ

SE012 = playSeVer2( spep_3 + 4, 1009, "", 0, 0, 0, -1);	--悟天ラッシュ

SE013 = playSeVer2( spep_3 + 4, 1110, "",spep_3 + 18, 0, 6, -1);	--悟天ラッシュ
setSeVolumeByWorkId( spep_3 + 4, SE013, 88 );

SE014 = playSeVer2( spep_3 + 12, 1000, "", 0, 0, 0, -1);	--悟天ラッシュ

SE015 = playSeVer2( spep_3 + 20, 1000, "", 0, 0, 0, -1);	--悟天ラッシュ

SE016 = playSeVer2( spep_3 + 42, 1189, "", 0, 0, 0, -1);	--トランクスキック
setSeVolumeByWorkId( spep_3 + 42, SE016, 119 );

SE017 = playSeVer2( spep_3 + 46, 1001, "", 0, 0, 0, -1);	--トランクスキック
setSeVolumeByWorkId( spep_3 + 46, SE017, 68 );

SE018 = playSeVer2( spep_3 + 48, 1010, "", 0, 0, 0, -1);	--トランクスキック

SE019 = playSeVer2( spep_3 + 66, 1000, "", 0, 0, 0, -1);	--トランクスラッシュ

SE020 = playSeVer2( spep_3 + 74, 1000, "", 0, 0, 0, -1);	--トランクスラッシュ

SE021 = playSeVer2( spep_3 + 80, 1000, "", 0, 0, 0, -1);	--トランクスラッシュ

SE022 = playSeVer2( spep_3 + 96, 1003, "", 0, 0, 0, -1);	--二人蹴り飛ばし

SE023 = playSeVer2( spep_3 + 102, 1009, "", 0, 0, 0, -1);	--二人蹴り飛ばし

SE024 = playSeVer2( spep_3 + 102, 1110, "", 0, 0, 0, -1);	--二人蹴り飛ばし


-- ** 次の準備 ** --
spep_4 = spep_3 + 140 -4;

-------------------------------------------------
-- 悟飯　画面手前に迫る
-------------------------------------------------
-- ** エフェクト等 ** --
base4 = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0); --悟飯　画面手前に迫る	ef_004
setEffMoveKey( spep_4 + 0, base4, 0, 0 , 0);
setEffMoveKey( spep_4 + 48 -4, base4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4, 1.0, 1.0);
setEffScaleKey( spep_4 + 48 -4, base4, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4, 0);
setEffRotateKey( spep_4 + 48 -4, base4, 0);
setEffAlphaKey( spep_4 + 0, base4, 255);
setEffAlphaKey( spep_4 + 48 -5, base4, 255);
setEffAlphaKey( spep_4 + 48 -4, base4, 0);


-- ** 音 ** --
SE025 = playSeVer2( spep_4 + 0, 1182, "", 0, 0, 0, -1);	--悟飯向かっていく

SE026 = playSeVer2( spep_4 + 0, 1117, "",spep_4 + 94, 0, 10, -1);	--悟飯向かっていく


-- ** 次の準備 ** --
spep_5 = spep_4 + 48 -4;

-------------------------------------------------
-- 悟飯　格闘　味方側：手前
-------------------------------------------------
-- ** エフェクト等 ** --
base5_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0); --悟飯　格闘　味方側：手前	ef_005
setEffMoveKey( spep_5 + 0, base5_f, 0, 0 , 0);
setEffMoveKey( spep_5 + 128 -4, base5_f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_f, 1.0, 1.0);
setEffScaleKey( spep_5 + 128 -4, base5_f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_f, 0);
setEffRotateKey( spep_5 + 128 -4, base5_f, 0);
setEffAlphaKey( spep_5 + 0, base5_f, 255);
setEffAlphaKey( spep_5 + 128 -5, base5_f, 255);
setEffAlphaKey( spep_5 + 128 -4, base5_f, 0);

base5_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0); --悟飯　格闘　味方側：奥	ef_005_b
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 128 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 128 -4, base5_b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 128 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 128 -5, base5_b, 255);
setEffAlphaKey( spep_5 + 128 -4, base5_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 116, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5 -3 + 46, 1, 108 );
changeAnime( spep_5 -3 + 90, 1, 106 );
changeAnime( spep_5 -3 + 116, 1, 106 );

--setMoveKey( spep_5 -3 + 0, 1, 441, -18.3 , 0 );
setMoveKey( spep_5 -2 + 2, 1, 418.7, -18.4 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 396.4, -18.4 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 374.2, -18.4 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 351.9, -18.4 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 329.6, -18.4 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 307.3, -18.4 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 285.1, -18.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 262.8, -18.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 240.6, -18.4 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 218.2, -18.4 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 196, -18.4 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 173.7, -18.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 151.4, -18.4 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 129.1, -18.4 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 125.6, -18.4 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 122.1, -18.4 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 118.6, -18.4 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 72, -18.4 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 69.3, -18.4 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 66.4, -18.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 63.7, -18.4 , 0 );
setMoveKey( spep_5 -3 + 45, 1, 60.8, -18.4 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 57.8, -19.9 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 79.3, 8.9 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 19.7, -43.4 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 63.9, 0.3 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 31.4, -30.2 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 53.7, -11.1 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 56, -9.3 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 58.3, -7.6 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 60.6, -5.8 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 62.9, -4 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 65.2, -2.3 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 67.5, -0.5 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 69.8, 1.3 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 72.1, 3 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 74.5, 4.8 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 76.7, 6.5 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 79, 8.3 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 81.4, 10.1 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 83.7, 11.8 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 86, 13.6 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 88.3, 15.3 , 0 );
setMoveKey( spep_5 -3 + 89, 1, 90.6, 17.1 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 24.5, 57.6 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 126.1, 174.3 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 146.5, 209.8 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 262.9, 341.3 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 294, 368.7 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 379.9, 445.6 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 445.8, 505.2 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 511.7, 564.8 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 577.6, 624.4 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 643.4, 684 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 709.3, 743.5 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 699.9, 713.5 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 690.4, 683.5 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 681, 653.4 , 0 );

setScaleKey( spep_5 + 0, 1, 1.53, 1.53 );
setScaleKey( spep_5 -3 + 45, 1, 1.53, 1.53 );
setScaleKey( spep_5 -3 + 46, 1, 1.62, 1.62 );
setScaleKey( spep_5 -3 + 89, 1, 1.62, 1.62 );
setScaleKey( spep_5 -3 + 90, 1, 1.44, 1.44 );
setScaleKey( spep_5 -3 + 116, 1, 1.44, 1.44 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 116, 1, 0 );


-- ** 音 ** --
SE027 = playSeVer2( spep_5 + 36, 1189, "", 0, 0, 0, -1);	--悟飯パンチ

SE028 = playSeVer2( spep_5 + 42, 1010, "", 0, 0, 0, -1);	--悟飯パンチ

SE029 = playSeVer2( spep_5 + 42, 1110, "", 0, 0, 0, -1);	--悟飯パンチ

SE030 = playSeVer2( spep_5 + 78, 1003, "", 0, 0, 0, -1);	--蹴り上げ

SE031 = playSeVer2( spep_5 + 86, 1120, "", 0, 0, 0, -1);	--蹴り上げ



-- ** 次の準備 ** --
spep_6 = spep_5 + 128 -4;

-------------------------------------------------
-- 悟飯構える
-------------------------------------------------
-- ** エフェクト等 ** --
base6 = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0); --悟飯構える	ef_006
setEffMoveKey( spep_6 + 0, base6, 0, 0 , 0);
setEffMoveKey( spep_6 + 120 -4, base6, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6, 1.0, 1.0);
setEffScaleKey( spep_6 + 120 -4, base6, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6, 0);
setEffRotateKey( spep_6 + 120 -4, base6, 0);
setEffAlphaKey( spep_6 + 0, base6, 255);
setEffAlphaKey( spep_6 + 120 -5, base6, 255);
setEffAlphaKey( spep_6 + 120 -4, base6, 0);


-- ** 音 ** --
SE032 = playSeVer2( spep_6 + 0, 1278, "",spep_6 + 88, 0, 34, -1);	--腕アップ

SE033 = playSeVer2( spep_6 + 6, 1004, "", 0, 0, 0, -1);	--腕アップ

SE034 = playSeVer2( spep_6 + 42, 1233, "", 0, 0, 0, -1);	--構える

SE035 = playSeVer2( spep_6 + 52, 1006, "", 0, 0, 0, -1);	--構える
setSeVolumeByWorkId( spep_6 + 52, SE035, 81 );

SE036 = playSeVer2( spep_6 + 64, 1072, "", 0, 0, 0, 0.6);	--アップ


-- ** 次の準備 ** --
spep_7 = spep_6 + 120 -4;

-------------------------------------------------
-- 悟飯気弾放つ→気弾が敵に迫る
-------------------------------------------------
-- ** エフェクト等 ** --
base7_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0); --悟飯気弾放つ→気弾が敵に迫る	ef_007
setEffMoveKey( spep_7 + 0, base7_f, 0, 0 , 0);
setEffMoveKey( spep_7 + 240 -4, base7_f, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7_f, 1.0, 1.0);
setEffScaleKey( spep_7 + 240 -4, base7_f, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7_f, 0);
setEffRotateKey( spep_7 + 240 -4, base7_f, 0);
setEffAlphaKey( spep_7 + 0, base7_f, 255);
setEffAlphaKey( spep_7 + 240 -5, base7_f, 255);
setEffAlphaKey( spep_7 + 240 -4, base7_f, 0);

base7_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0); --悟飯気弾放つ→気弾が敵に迫る	ef_007_b
setEffMoveKey( spep_7 + 0, base7_b, 0, 0 , 0);
setEffMoveKey( spep_7 + 240 -4, base7_b, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7_b, 1.0, 1.0);
setEffScaleKey( spep_7 + 240 -4, base7_b, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7_b, 0);
setEffRotateKey( spep_7 + 240 -4, base7_b, 0);
setEffAlphaKey( spep_7 + 0, base7_b, 255);
setEffAlphaKey( spep_7 + 240 -5, base7_b, 255);
setEffAlphaKey( spep_7 + 240 -4, base7_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_7 -3 + 38, 1, 1 );
setDisp( spep_7 -4 + 240, 1, 0 );

changeAnime( spep_7 + 0, 1, 107 );

setBlendColor( spep_7 + 140 -3, 1, 2, 0.2, 0.2, 0.2, 0.00 );
setBlendColor( spep_7 + 142 -3, 1, 2, 0.2, 0.2, 0.2, 0.04 );
setBlendColor( spep_7 + 144 -3, 1, 2, 0.2, 0.2, 0.2, 0.08 );
setBlendColor( spep_7 + 146 -3, 1, 2, 0.2, 0.2, 0.2, 0.12 );
setBlendColor( spep_7 + 148 -3, 1, 2, 0.2, 0.2, 0.2, 0.16 );
setBlendColor( spep_7 + 150 -3, 1, 2, 0.2, 0.2, 0.2, 0.20 );
setBlendColor( spep_7 + 152 -3, 1, 2, 0.2, 0.2, 0.2, 0.24 );
setBlendColor( spep_7 + 154 -3, 1, 2, 0.2, 0.2, 0.2, 0.28 );
setBlendColor( spep_7 + 156 -3, 1, 2, 0.2, 0.2, 0.2, 0.32 );
setBlendColor( spep_7 + 158 -3, 1, 2, 0.2, 0.2, 0.2, 0.36 );
setBlendColor( spep_7 + 160 -3, 1, 2, 0.2, 0.2, 0.2, 0.40 );
setBlendColor( spep_7 + 162 -3, 1, 2, 0.2, 0.2, 0.2, 0.44 );
setBlendColor( spep_7 + 164 -3, 1, 2, 0.2, 0.2, 0.2, 0.48 );
setBlendColor( spep_7 + 166 -3, 1, 2, 0.2, 0.2, 0.2, 0.52 );
setBlendColor( spep_7 + 168 -3, 1, 2, 0.2, 0.2, 0.2, 0.56 );
setBlendColor( spep_7 + 170 -3, 1, 2, 0.2, 0.2, 0.2, 0.60 );
setBlendColor( spep_7 + 172 -3, 1, 2, 0.2, 0.2, 0.2, 0.64 );
setBlendColor( spep_7 + 174 -3, 1, 2, 0.2, 0.2, 0.2, 0.68 );
setBlendColor( spep_7 + 176 -3, 1, 2, 0.2, 0.2, 0.2, 0.72 );
setBlendColor( spep_7 + 178 -3, 1, 2, 0.2, 0.2, 0.2, 0.76 );
setBlendColor( spep_7 + 180 -3, 1, 2, 0.2, 0.2, 0.2, 0.80 );
setBlendColor( spep_7 + 182 -3, 1, 2, 0.2, 0.2, 0.2, 0.84 );
setBlendColor( spep_7 + 184 -3, 1, 2, 0.2, 0.2, 0.2, 0.88 );
setBlendColor( spep_7 + 186 -3, 1, 2, 0.2, 0.2, 0.2, 0.92 );
setBlendColor( spep_7 + 188 -3, 1, 2, 0.2, 0.2, 0.2, 0.96 );
setBlendColor( spep_7 + 190 -3, 1, 2, 0.2, 0.2, 0.2, 1.00 );
setBlendColor( spep_7 + 192 -4, 1, 2, 0.195, 0.195, 0.195, 1.00 );
setBlendColor( spep_7 + 194 -4, 1, 2, 0.190, 0.190, 0.190, 1.00 );
setBlendColor( spep_7 + 196 -4, 1, 2, 0.185, 0.185, 0.185, 1.00 );
setBlendColor( spep_7 + 198 -4, 1, 2, 0.180, 0.180, 0.180, 1.00 );
setBlendColor( spep_7 + 200 -4, 1, 2, 0.175, 0.175, 0.175, 1.00 );
setBlendColor( spep_7 + 202 -4, 1, 2, 0.170, 0.170, 0.170, 1.00 );
setBlendColor( spep_7 + 204 -4, 1, 2, 0.165, 0.165, 0.165, 1.00 );
setBlendColor( spep_7 + 206 -4, 1, 2, 0.160, 0.160, 0.160, 1.00 );
setBlendColor( spep_7 + 208 -4, 1, 2, 0.155, 0.155, 0.155, 1.00 );
setBlendColor( spep_7 + 210 -4, 1, 2, 0.150, 0.150, 0.150, 1.00 );
setBlendColor( spep_7 + 212 -4, 1, 2, 0.145, 0.145, 0.145, 1.00 );
setBlendColor( spep_7 + 214 -4, 1, 2, 0.140, 0.140, 0.140, 1.00 );
setBlendColor( spep_7 + 216 -4, 1, 2, 0.135, 0.135, 0.135, 1.00 );
setBlendColor( spep_7 + 218 -4, 1, 2, 0.130, 0.130, 0.130, 1.00 );
setBlendColor( spep_7 + 220 -4, 1, 2, 0.125, 0.125, 0.125, 1.00 );
setBlendColor( spep_7 + 222 -4, 1, 2, 0.120, 0.120, 0.120, 1.00 );
setBlendColor( spep_7 + 224 -4, 1, 2, 0.115, 0.115, 0.115, 1.00 );
setBlendColor( spep_7 + 226 -4, 1, 2, 0.110, 0.110, 0.110, 1.00 );
setBlendColor( spep_7 + 228 -4, 1, 2, 0.105, 0.105, 0.105, 1.00 );
setBlendColor( spep_7 + 230 -4, 1, 2, 0.100, 0.100, 0.100, 1.00 );
setBlendColor( spep_7 + 240 -4, 1, 2, 0.100, 0.100, 0.100, 1.00 );
setBlendColor( spep_7 + 240 -3, 1, 2, 0, 0, 0, 0 );

setMoveKey( spep_7 -3 + 38, 1, 2280.6, 554 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 2190.5, 512.1 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 2101.8, 471.1 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 2015.1, 431.2 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 1930, 392.3 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 1846.3, 354.3 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 1764.6, 317.4 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 1684.6, 281.4 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 1606.2, 246.4 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 1529.3, 212.4 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 1454.3, 179.4 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 1380.9, 147.4 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 1309.2, 116.4 , 0 );
setMoveKey( spep_7 -3 + 64, 1, 1239, 86.3 , 0 );
setMoveKey( spep_7 -3 + 66, 1, 1170.6, 57.2 , 0 );
setMoveKey( spep_7 -3 + 68, 1, 1104, 29.2 , 0 );
setMoveKey( spep_7 -3 + 70, 1, 1038.8, 2 , 0 );
setMoveKey( spep_7 -3 + 72, 1, 980.3, -26.7 , 0 );
setMoveKey( spep_7 -3 + 74, 1, 922.9, -54.3 , 0 );
setMoveKey( spep_7 -3 + 76, 1, 866.5, -81 , 0 );
setMoveKey( spep_7 -3 + 78, 1, 811.3, -106.7 , 0 );
setMoveKey( spep_7 -3 + 80, 1, 757, -131.4 , 0 );
setMoveKey( spep_7 -3 + 82, 1, 704.1, -155.1 , 0 );
setMoveKey( spep_7 -3 + 84, 1, 652.2, -177.9 , 0 );
setMoveKey( spep_7 -3 + 86, 1, 601.4, -199.7 , 0 );
setMoveKey( spep_7 -3 + 88, 1, 551.8, -220.5 , 0 );
setMoveKey( spep_7 -3 + 90, 1, 503.2, -240.4 , 0 );
setMoveKey( spep_7 -3 + 92, 1, 455.9, -259.4 , 0 );
setMoveKey( spep_7 -3 + 94, 1, 409.7, -277.4 , 0 );
setMoveKey( spep_7 -3 + 96, 1, 364.6, -294.6 , 0 );
setMoveKey( spep_7 -3 + 98, 1, 320.8, -310.8 , 0 );
setMoveKey( spep_7 -3 + 100, 1, 307.9, -307.9 , 0 );
setMoveKey( spep_7 -3 + 102, 1, 287, -313.3 , 0 );
setMoveKey( spep_7 -3 + 104, 1, 274.8, -316.7 , 0 );
setMoveKey( spep_7 -3 + 106, 1, 256.2, -313.1 , 0 );
setMoveKey( spep_7 -3 + 108, 1, 244.8, -309.2 , 0 );
setMoveKey( spep_7 -3 + 110, 1, 233.7, -311.9 , 0 );
setMoveKey( spep_7 -3 + 112, 1, 216.2, -307.6 , 0 );
setMoveKey( spep_7 -3 + 114, 1, 199.1, -309.9 , 0 );
setMoveKey( spep_7 -3 + 116, 1, 189.1, -305.1 , 0 );
setMoveKey( spep_7 -3 + 118, 1, 179.4, -306.8 , 0 );
setMoveKey( spep_7 -3 + 120, 1, 165.1, -299.9 , 0 );
setMoveKey( spep_7 -3 + 122, 1, 147.7, -302.9 , 0 );
setMoveKey( spep_7 -3 + 124, 1, 147.1, -300.3 , 0 );
setMoveKey( spep_7 -3 + 126, 1, 139.8, -290.9 , 0 );
setMoveKey( spep_7 -3 + 128, 1, 139.4, -281.4 , 0 );
setMoveKey( spep_7 -3 + 130, 1, 139, -278.8 , 0 );
setMoveKey( spep_7 -3 + 132, 1, 131.8, -269.3 , 0 );
setMoveKey( spep_7 -3 + 134, 1, 124.7, -266.6 , 0 );
setMoveKey( spep_7 -3 + 136, 1, 124.4, -257.1 , 0 );
setMoveKey( spep_7 -3 + 138, 1, 124.1, -254.4 , 0 );
setMoveKey( spep_7 -3 + 140, 1, 118.8, -243.1 , 0 );
setMoveKey( spep_7 -3 + 142, 1, 123.7, -231.9 , 0 );
setMoveKey( spep_7 -3 + 144, 1, 113.4, -232.5 , 0 );
setMoveKey( spep_7 -3 + 146, 1, 120.1, -234.8 , 0 );
setMoveKey( spep_7 -3 + 148, 1, 94.6, -206.5 , 0 );
setMoveKey( spep_7 -3 + 150, 1, 108.2, -225.8 , 0 );
setMoveKey( spep_7 -3 + 152, 1, 101.4, -192.4 , 0 );
setMoveKey( spep_7 -3 + 154, 1, 104.9, -210 , 0 );
setMoveKey( spep_7 -3 + 156, 1, 84.6, -188.4 , 0 );
setMoveKey( spep_7 -3 + 158, 1, 91.5, -182.1 , 0 );
setMoveKey( spep_7 -3 + 160, 1, 81.5, -169 , 0 );
setMoveKey( spep_7 -3 + 162, 1, 88.6, -179.8 , 0 );
setMoveKey( spep_7 -3 + 164, 1, 73.5, -175.1 , 0 );
setMoveKey( spep_7 -3 + 166, 1, 68.8, -160.3 , 0 );
setMoveKey( spep_7 -3 + 168, 1, 80.6, -167 , 0 );
setMoveKey( spep_7 -3 + 170, 1, 83.9, -161.9 , 0 );
setMoveKey( spep_7 -3 + 172, 1, 65.1, -150 , 0 );
setMoveKey( spep_7 -3 + 174, 1, 81.9, -175.5 , 0 );
setMoveKey( spep_7 -3 + 176, 1, 78.4, -148.2 , 0 );
setMoveKey( spep_7 -3 + 178, 1, 85.1, -172 , 0 );
setMoveKey( spep_7 -3 + 180, 1, 68, -156.7 , 0 );
setMoveKey( spep_7 -3 + 182, 1, 78.1, -156.7 , 0 );
setMoveKey( spep_7 -3 + 184, 1, 71.2, -149.9 , 0 );
setMoveKey( spep_7 -3 + 186, 1, 81.3, -166.8 , 0 );
setMoveKey( spep_7 -3 + 188, 1, 69.3, -168.5 , 0 );
setMoveKey( spep_7 -3 + 190, 1, 67.5, -160 , 0 );
setMoveKey( spep_7 -3 + 192, 1, 79.3, -166.8 , 0 );
setMoveKey( spep_7 -3 + 194, 1, 82.6, -161.6 , 0 );
setMoveKey( spep_7 -3 + 196, 1, 72.6, -165 , 0 );
setMoveKey( spep_7 -3 + 198, 1, 68.8, -168.4 , 0 );
setMoveKey( spep_7 -3 + 200, 1, 67, -159.9 , 0 );
setMoveKey( spep_7 -3 + 202, 1, 78.8, -166.6 , 0 );
setMoveKey( spep_7 -3 + 204, 1, 82, -161.5 , 0 );
setMoveKey( spep_7 -3 + 206, 1, 63.2, -149.6 , 0 );
setMoveKey( spep_7 -3 + 208, 1, 68.2, -168.3 , 0 );
setMoveKey( spep_7 -3 + 210, 1, 66.4, -159.7 , 0 );
setMoveKey( spep_7 -3 + 212, 1, 78.2, -166.5 , 0 );
setMoveKey( spep_7 -3 + 214, 1, 81.5, -161.4 , 0 );
setMoveKey( spep_7 -3 + 216, 1, 62.7, -149.5 , 0 );
setMoveKey( spep_7 -3 + 218, 1, 79.6, -174.9 , 0 );
setMoveKey( spep_7 -3 + 220, 1, 76.2, -147.7 , 0 );
setMoveKey( spep_7 -3 + 222, 1, 83, -171.5 , 0 );
setMoveKey( spep_7 -3 + 224, 1, 66, -156.2 , 0 );
setMoveKey( spep_7 -3 + 226, 1, 76.2, -156.2 , 0 );
setMoveKey( spep_7 -3 + 228, 1, 69.4, -149.4 , 0 );
setMoveKey( spep_7 -3 + 230, 1, 79.6, -166.4 , 0 );
setMoveKey( spep_7 -3 + 232, 1, 67.7, -168.1 , 0 );
setMoveKey( spep_7 -3 + 234, 1, 66, -159.6 , 0 );
setMoveKey( spep_7 -3 + 236, 1, 77.9, -166.4 , 0 );
setMoveKey( spep_7 -3 + 238, 1, 81.3, -161.3 , 0 );
setMoveKey( spep_7 -4 + 240, 1, 81.3, -161.3 , 0 );

setScaleKey( spep_7 -3 + 38, 1, 3.38, 3.38 );
setScaleKey( spep_7 -3 + 40, 1, 3.36, 3.36 );
setScaleKey( spep_7 -3 + 42, 1, 3.34, 3.34 );
setScaleKey( spep_7 -3 + 44, 1, 3.32, 3.32 );
setScaleKey( spep_7 -3 + 46, 1, 3.3, 3.3 );
setScaleKey( spep_7 -3 + 48, 1, 3.28, 3.28 );
setScaleKey( spep_7 -3 + 50, 1, 3.25, 3.25 );
setScaleKey( spep_7 -3 + 52, 1, 3.23, 3.23 );
setScaleKey( spep_7 -3 + 54, 1, 3.2, 3.2 );
setScaleKey( spep_7 -3 + 56, 1, 3.18, 3.18 );
setScaleKey( spep_7 -3 + 58, 1, 3.15, 3.15 );
setScaleKey( spep_7 -3 + 60, 1, 3.12, 3.12 );
setScaleKey( spep_7 -3 + 62, 1, 3.09, 3.09 );
setScaleKey( spep_7 -3 + 64, 1, 3.06, 3.06 );
setScaleKey( spep_7 -3 + 66, 1, 3.03, 3.03 );
setScaleKey( spep_7 -3 + 68, 1, 3, 3 );
setScaleKey( spep_7 -3 + 70, 1, 2.97, 2.97 );
setScaleKey( spep_7 -3 + 72, 1, 2.95, 2.95 );
setScaleKey( spep_7 -3 + 74, 1, 2.93, 2.93 );
setScaleKey( spep_7 -3 + 76, 1, 2.91, 2.91 );
setScaleKey( spep_7 -3 + 78, 1, 2.89, 2.89 );
setScaleKey( spep_7 -3 + 80, 1, 2.87, 2.87 );
setScaleKey( spep_7 -3 + 82, 1, 2.85, 2.85 );
setScaleKey( spep_7 -3 + 84, 1, 2.83, 2.83 );
setScaleKey( spep_7 -3 + 86, 1, 2.81, 2.81 );
setScaleKey( spep_7 -3 + 88, 1, 2.78, 2.78 );
setScaleKey( spep_7 -3 + 90, 1, 2.76, 2.76 );
setScaleKey( spep_7 -3 + 92, 1, 2.74, 2.74 );
setScaleKey( spep_7 -3 + 94, 1, 2.71, 2.71 );
setScaleKey( spep_7 -3 + 96, 1, 2.69, 2.69 );
setScaleKey( spep_7 -3 + 98, 1, 2.66, 2.66 );
setScaleKey( spep_7 -3 + 100, 1, 2.64, 2.64 );
setScaleKey( spep_7 -3 + 102, 1, 2.61, 2.61 );
setScaleKey( spep_7 -3 + 104, 1, 2.59, 2.59 );
setScaleKey( spep_7 -3 + 106, 1, 2.57, 2.57 );
setScaleKey( spep_7 -3 + 108, 1, 2.54, 2.54 );
setScaleKey( spep_7 -3 + 110, 1, 2.51, 2.51 );
setScaleKey( spep_7 -3 + 112, 1, 2.49, 2.49 );
setScaleKey( spep_7 -3 + 114, 1, 2.46, 2.46 );
setScaleKey( spep_7 -3 + 116, 1, 2.43, 2.43 );
setScaleKey( spep_7 -3 + 118, 1, 2.4, 2.4 );
setScaleKey( spep_7 -3 + 120, 1, 2.37, 2.37 );
setScaleKey( spep_7 -3 + 122, 1, 2.34, 2.34 );
setScaleKey( spep_7 -3 + 124, 1, 2.31, 2.31 );
setScaleKey( spep_7 -3 + 126, 1, 2.28, 2.28 );
setScaleKey( spep_7 -3 + 128, 1, 2.24, 2.24 );
setScaleKey( spep_7 -3 + 130, 1, 2.21, 2.21 );
setScaleKey( spep_7 -3 + 132, 1, 2.18, 2.18 );
setScaleKey( spep_7 -3 + 134, 1, 2.14, 2.14 );
setScaleKey( spep_7 -3 + 136, 1, 2.11, 2.11 );
setScaleKey( spep_7 -3 + 138, 1, 2.07, 2.07 );
setScaleKey( spep_7 -3 + 140, 1, 2.03, 2.03 );
setScaleKey( spep_7 -3 + 142, 1, 1.99, 1.99 );
setScaleKey( spep_7 -3 + 144, 1, 1.95, 1.95 );
setScaleKey( spep_7 -3 + 146, 1, 1.91, 1.91 );
setScaleKey( spep_7 -3 + 148, 1, 1.87, 1.87 );
setScaleKey( spep_7 -3 + 150, 1, 1.83, 1.83 );
setScaleKey( spep_7 -3 + 152, 1, 1.79, 1.79 );
setScaleKey( spep_7 -3 + 154, 1, 1.75, 1.75 );
setScaleKey( spep_7 -3 + 156, 1, 1.7, 1.7 );
setScaleKey( spep_7 -3 + 158, 1, 1.66, 1.66 );
setScaleKey( spep_7 -3 + 160, 1, 1.61, 1.61 );
setScaleKey( spep_7 -3 + 162, 1, 1.57, 1.57 );
setScaleKey( spep_7 -3 + 164, 1, 1.52, 1.52 );
setScaleKey( spep_7 -3 + 166, 1, 1.47, 1.47 );
setScaleKey( spep_7 -3 + 168, 1, 1.48, 1.48 );
setScaleKey( spep_7 -3 + 170, 1, 1.49, 1.49 );
setScaleKey( spep_7 -3 + 172, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 174, 1, 1.51, 1.51 );
setScaleKey( spep_7 -3 + 176, 1, 1.52, 1.52 );
setScaleKey( spep_7 -3 + 178, 1, 1.53, 1.53 );
setScaleKey( spep_7 -3 + 180, 1, 1.54, 1.54 );
setScaleKey( spep_7 -3 + 182, 1, 1.55, 1.55 );
setScaleKey( spep_7 -3 + 184, 1, 1.56, 1.56 );
setScaleKey( spep_7 -3 + 186, 1, 1.57, 1.57 );
setScaleKey( spep_7 -3 + 188, 1, 1.58, 1.58 );
setScaleKey( spep_7 -3 + 190, 1, 1.59, 1.59 );
setScaleKey( spep_7 -3 + 192, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 194, 1, 1.61, 1.61 );
setScaleKey( spep_7 -3 + 196, 1, 1.62, 1.62 );
setScaleKey( spep_7 -3 + 198, 1, 1.63, 1.63 );
setScaleKey( spep_7 -3 + 200, 1, 1.64, 1.64 );
setScaleKey( spep_7 -3 + 202, 1, 1.65, 1.65 );
setScaleKey( spep_7 -3 + 204, 1, 1.66, 1.66 );
setScaleKey( spep_7 -3 + 206, 1, 1.67, 1.67 );
setScaleKey( spep_7 -3 + 208, 1, 1.68, 1.68 );
setScaleKey( spep_7 -3 + 210, 1, 1.69, 1.69 );
setScaleKey( spep_7 -3 + 212, 1, 1.7, 1.7 );
setScaleKey( spep_7 -3 + 214, 1, 1.71, 1.71 );
setScaleKey( spep_7 -3 + 216, 1, 1.72, 1.72 );
setScaleKey( spep_7 -3 + 218, 1, 1.73, 1.73 );
setScaleKey( spep_7 -4 + 240, 1, 1.73, 1.73 );

setRotateKey( spep_7 -3 + 38, 1, 20 );
setRotateKey( spep_7 -3 + 70, 1, 20 );
setRotateKey( spep_7 -3 + 72, 1, 20.1 );
setRotateKey( spep_7 -3 + 74, 1, 20.3 );
setRotateKey( spep_7 -3 + 76, 1, 20.4 );
setRotateKey( spep_7 -3 + 78, 1, 20.6 );
setRotateKey( spep_7 -3 + 80, 1, 20.7 );
setRotateKey( spep_7 -3 + 82, 1, 20.9 );
setRotateKey( spep_7 -3 + 84, 1, 21 );
setRotateKey( spep_7 -3 + 86, 1, 21.2 );
setRotateKey( spep_7 -3 + 88, 1, 21.3 );
setRotateKey( spep_7 -3 + 90, 1, 21.5 );
setRotateKey( spep_7 -3 + 92, 1, 21.6 );
setRotateKey( spep_7 -3 + 94, 1, 21.7 );
setRotateKey( spep_7 -3 + 96, 1, 21.9 );
setRotateKey( spep_7 -3 + 98, 1, 22 );
setRotateKey( spep_7 -3 + 100, 1, 22.2 );
setRotateKey( spep_7 -3 + 102, 1, 22.3 );
setRotateKey( spep_7 -3 + 104, 1, 22.5 );
setRotateKey( spep_7 -3 + 106, 1, 22.6 );
setRotateKey( spep_7 -3 + 108, 1, 22.8 );
setRotateKey( spep_7 -3 + 110, 1, 22.9 );
setRotateKey( spep_7 -3 + 112, 1, 23.1 );
setRotateKey( spep_7 -3 + 114, 1, 23.2 );
setRotateKey( spep_7 -3 + 116, 1, 23.3 );
setRotateKey( spep_7 -3 + 118, 1, 23.5 );
setRotateKey( spep_7 -3 + 120, 1, 23.6 );
setRotateKey( spep_7 -3 + 122, 1, 23.8 );
setRotateKey( spep_7 -3 + 124, 1, 23.9 );
setRotateKey( spep_7 -3 + 126, 1, 24.1 );
setRotateKey( spep_7 -3 + 128, 1, 24.2 );
setRotateKey( spep_7 -3 + 130, 1, 24.4 );
setRotateKey( spep_7 -3 + 132, 1, 24.5 );
setRotateKey( spep_7 -3 + 134, 1, 24.7 );
setRotateKey( spep_7 -3 + 136, 1, 24.8 );
setRotateKey( spep_7 -3 + 138, 1, 24.9 );
setRotateKey( spep_7 -3 + 140, 1, 25.1 );
setRotateKey( spep_7 -3 + 142, 1, 25.2 );
setRotateKey( spep_7 -3 + 144, 1, 25.4 );
setRotateKey( spep_7 -3 + 146, 1, 25.5 );
setRotateKey( spep_7 -3 + 148, 1, 25.7 );
setRotateKey( spep_7 -3 + 150, 1, 25.8 );
setRotateKey( spep_7 -3 + 152, 1, 26 );
setRotateKey( spep_7 -3 + 154, 1, 26.1 );
setRotateKey( spep_7 -3 + 156, 1, 26.3 );
setRotateKey( spep_7 -3 + 158, 1, 26.4 );
setRotateKey( spep_7 -3 + 160, 1, 26.6 );
setRotateKey( spep_7 -3 + 162, 1, 26.7 );
setRotateKey( spep_7 -3 + 164, 1, 26.8 );
setRotateKey( spep_7 -3 + 166, 1, 27 );
setRotateKey( spep_7 -4 + 240, 1, 27 );


-- ** 音 ** --
SE037 = playSeVer2( spep_7 + 0, 44, "", 0, 0, 0, -1);	--両手上げてズームアウト

SE038 = playSeVer2( spep_7 + 0, 1175, "",spep_7 + 108, 0, 24, -1);	--両手上げてズームアウト

SE039 = playSeVer2( spep_7 + 76, 1042, "", 0, 0, 0, -1);	--光る

SE040 = playSeVer2( spep_7 + 80, 1026, "", 0, 0, 0, -1);	--光る
setSeVolumeByWorkId( spep_7 + 80, SE040, 78 );

SE041 = playSeVer2( spep_7 + 90, 1264, "",spep_7 + 276, 0, 62, -1);	--光る

SE042 = playSeVer2( spep_7 + 90, 1213, "",spep_7 + 276, 26, 62, -1);	--気弾爆発させる
setSeVolumeByWorkId( spep_7 + 90, SE042, 52 );

SE043 = playSeVer2( spep_7 + 90, 1284, "",spep_7 + 276, 0, 62, -1);	--気弾爆発させる
setSeVolumeByWorkId( spep_7 + 90, SE043, 64 );

SE044 = playSeVer2( spep_7 + 134, 1021, "", 0, 0, 0, -1);	--気弾飲み込まれる

SE045 = playSeVer2( spep_7 + 134, 1024, "", 0, 0, 0, 0.6);	--気弾飲み込まれる

SE046 = playSeVer2( spep_7 + 158, 1258, "",spep_7 + 276, 28, 62, -1);	--気弾飲み込まれる
setSeVolumeByWorkId( spep_7 + 158, SE046, 79 );
setStartTimeMs( SE046,  117 );


-- ** 次の準備 ** --
spep_8 = spep_7 + 240 -4;

-------------------------------------------------
-- フィニッシュ絵
-------------------------------------------------
-- ** エフェクト等 ** --
base8 = entryEffect( spep_8 + 0, SP_11, 0x80, -1, 0, 0, 0); --フィニッシュ絵	ef_008
setEffMoveKey( spep_8 + 0, base8, 0, 0 , 0);
setEffMoveKey( spep_8 + 108 -4, base8, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base8, 1.0, 1.0);
setEffScaleKey( spep_8 + 108 -4, base8, 1.0, 1.0);
setEffRotateKey( spep_8 + 0, base8, 0);
setEffRotateKey( spep_8 + 108 -4, base8, 0);
setEffAlphaKey( spep_8 + 0, base8, 255);
setEffAlphaKey( spep_8 + 108 -5, base8, 255);
setEffAlphaKey( spep_8 + 108 -4, base8, 0);


-- ** 音 ** --
SE047 = playSeVer2( spep_8 + 0, 1233, "", 0, 0, 0, -1);	--ラスト決め

SE048 = playSeVer2( spep_8 + 12, 1006, "", 0, 0, 0, -1);	--ラスト決め
setSeVolumeByWorkId( spep_8 + 12, SE048, 87 );

SE049 = playSeVer2( spep_8 + 12, 1062, "",spep_8 + 96, 0, 50, -1);	--ラスト決め
setSeVolumeByWorkId( spep_8 + 12, SE049, 79 );

SE050 = playSeVer2( spep_8 + 12, 1042, "", 0, 0, 0, -1);	--ラスト決め


-- ** ダメージ表示 ** --
dealDamage( spep_8 + 10);
endPhase( spep_8 + 108 -8);

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 冒頭
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --冒頭	ef_001
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
spep_x = spep_1 + 0;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, -40, 525); --ゴゴゴゴ
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


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 6, 1018, "", 0, 0, 0, -1);	--顔カットイン

SE002 = playSeVer2( spep_1 + 6, 1108, "", 0, 0, 0, -1);	--三人揃う
setSeVolumeByWorkId( spep_1 + 6, SE002, 155 );

SE003 = playSeVer2( spep_1 + 6, 1007, "", 0, 0, 0, -1);	--三人揃う
setSeVolumeByWorkId( spep_1 + 6, SE003, 81 );

SE004 = playSeVer2( spep_1 + 12, 1107, "", 0, 0, 0, -1);	--三人揃う
setSeVolumeByWorkId( spep_1 + 12, SE004, 172 );

SE005 = playSeVer2( spep_1 + 12, 1192, "",spep_1 + 36, 0, 10, -1);	--三人揃う
setSeVolumeByWorkId( spep_1 + 12, SE005, 219 );

SE006 = playSeVer2( spep_1 + 16, 1106, "", 0, 0, 0, -1);	--三人揃う
setSeVolumeByWorkId( spep_1 + 16, SE006, 151 );


-- ** 次の準備 ** --
spep_c = spep_1 + 88 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
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
-- トランクス＆悟天　画面手前に迫る
-------------------------------------------------
-- ** エフェクト等 ** --
base2 = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); --トランクス＆悟天　画面手前に迫る	ef_002
setEffMoveKey( spep_2 + 0, base2, 0, 0 , 0);
setEffMoveKey( spep_2 + 68 -4, base2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2, -1.0, 1.0);
setEffScaleKey( spep_2 + 68 -4, base2, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2, 0);
setEffRotateKey( spep_2 + 68 -4, base2, 0);
setEffAlphaKey( spep_2 + 0, base2, 255);
setEffAlphaKey( spep_2 + 68 -5, base2, 255);
setEffAlphaKey( spep_2 + 68 -4, base2, 0);


-- ** 音 ** --
SE008 = playSeVer2( spep_2 + 8, 1182, "", 0, 0, 0, -1);	--悟天ラッシュ

SE009 = playSeVer2( spep_2 + 8, 9, "", 0, 0, 0, -1);	--悟天ラッシュ

SE010 = playSeVer2( spep_2 + 8, 1167, "", 0, 0, 0, 0.6);	--悟天ラッシュ
setSeVolumeByWorkId( spep_2 + 8, SE010, 62 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 54; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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


-- ** 次の準備 ** --
spep_3 = spep_2 + 68 -4;

-------------------------------------------------
-- トランクス＆悟天　格闘　手前 奥
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); --トランクス＆悟天　格闘　手前	ef_003
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 140 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, -1.0, 1.0);
setEffScaleKey( spep_3 + 140 -4, base3_f, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 140 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 140 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 140 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); --トランクス＆悟天　格闘　奥	ef_003_b
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
setDisp( spep_3 -3 + 130, 1, 0 );

changeAnime( spep_3 + 0, 1, 17 );
changeAnime( spep_3 -3 + 12, 1, 106 );
changeAnime( spep_3 -3 + 56, 1, 8 );
changeAnime( spep_3 -3 + 76, 1, 6 );
changeAnime( spep_3 -3 + 112, 1, 107 );

setMoveKey( spep_3 + 0, 1, 18.9, -94.8 , 0 );
setMoveKey( spep_3 -3 + 11, 1, 18.9, -94.8 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 19.9, -95.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 20.0, -95.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 25.8, -87.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 21.7, -103.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 25.6, -87.1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 29.3, -87.1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 26.4, -103.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 34.8, -87.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 36.5, -87.1 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 32.2, -103.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 35.3, -87.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 30.0, -103.1 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 38.9, -87.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 42.6, -87.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 43.1, -87.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 43.7, -87.1 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 44.2, -87.1 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 44.7, -87.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 45.2, -87.1 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 45.7, -87.1 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 46.3, -87 , 0 );
setMoveKey( spep_3 -3 + 55, 1, 46.8, -87 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 16.5, -99.8 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 8.10, -94.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 13.2, -92.5 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 4.00, -90.4 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 8.40, -91.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -0.1, -86.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 2.5, -84.3 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 0.4, -82.2 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -1.6, -80.2 , 0 );
setMoveKey( spep_3 -3 + 75, 1, -3.6, -78.2 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 2.8, -53.2 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -0.6, -38.3 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 6.4, -68.8 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -5, -36 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 3.2, -64.1 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -7.1, -32.6 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 1.1, -61.8 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -10.4, -30.2 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -14.6, -25.9 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -1.6, -57.7 , 0 );
setMoveKey( spep_3 -3 + 96, 1, -8.2, -28.1 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -10, -26.3 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -11.8, -24.4 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -13.7, -22.6 , 0 );
setMoveKey( spep_3 -3 + 104, 1, -15.5, -20.8 , 0 );
setMoveKey( spep_3 -3 + 106, 1, -17.4, -18.9 , 0 );
setMoveKey( spep_3 -3 + 108, 1, -19.2, -17.1 , 0 );
setMoveKey( spep_3 -3 + 111, 1, -21.1, -15.3 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -2.4, 31 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 55.4, 9.6 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 109.4, -40.5 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 157.4, -117.3 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 216.7, -168 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 271.6, -218.9 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 326.6, -269.9 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 381.7, -321 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 381.7, -321 , 0 );

setScaleKey( spep_3 + 0, 1, 2.63, 2.63 );
setScaleKey( spep_3 -3 + 55, 1, 2.63, 2.63 );
setScaleKey( spep_3 -3 + 56, 1, 2.93, 2.93 );
setScaleKey( spep_3 -3 + 75, 1, 2.93, 2.93 );
setScaleKey( spep_3 -3 + 76, 1, 2.62, 2.62 );
setScaleKey( spep_3 -3 + 78, 1, 2.63, 2.63 );
setScaleKey( spep_3 -3 + 111, 1, 2.63, 2.63 );
setScaleKey( spep_3 -3 + 112, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 114, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 116, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 118, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 120, 1, 1.49, 1.49 );
setScaleKey( spep_3 -3 + 122, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 124, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 126, 1, 1.99, 1.99 );
setScaleKey( spep_3 -3 + 130, 1, 1.99, 1.99 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 11, 1, 0 );
setRotateKey( spep_3 -3 + 12, 1, -53.7 );
setRotateKey( spep_3 -3 + 14, 1, -53.6 );
setRotateKey( spep_3 -3 + 16, 1, -53.5 );
setRotateKey( spep_3 -3 + 18, 1, -53.3 );
setRotateKey( spep_3 -3 + 20, 1, -53.2 );
setRotateKey( spep_3 -3 + 22, 1, -53.1 );
setRotateKey( spep_3 -3 + 24, 1, -52.9 );
setRotateKey( spep_3 -3 + 26, 1, -52.8 );
setRotateKey( spep_3 -3 + 28, 1, -52.7 );
setRotateKey( spep_3 -3 + 30, 1, -52.6 );
setRotateKey( spep_3 -3 + 32, 1, -52.4 );
setRotateKey( spep_3 -3 + 34, 1, -52.3 );
setRotateKey( spep_3 -3 + 36, 1, -52.2 );
setRotateKey( spep_3 -3 + 38, 1, -52 );
setRotateKey( spep_3 -3 + 40, 1, -51.9 );
setRotateKey( spep_3 -3 + 42, 1, -51.8 );
setRotateKey( spep_3 -3 + 44, 1, -51.6 );
setRotateKey( spep_3 -3 + 46, 1, -51.5 );
setRotateKey( spep_3 -3 + 48, 1, -51.4 );
setRotateKey( spep_3 -3 + 50, 1, -51.3 );
setRotateKey( spep_3 -3 + 52, 1, -51.1 );
setRotateKey( spep_3 -3 + 55, 1, -51 );
setRotateKey( spep_3 -3 + 56, 1, 0 );
setRotateKey( spep_3 -3 + 75, 1, 0 );
setRotateKey( spep_3 -3 + 76, 1, 41.2 );
setRotateKey( spep_3 -3 + 78, 1, 41 );
setRotateKey( spep_3 -3 + 80, 1, 40.8 );
setRotateKey( spep_3 -3 + 82, 1, 40.6 );
setRotateKey( spep_3 -3 + 84, 1, 40.4 );
setRotateKey( spep_3 -3 + 86, 1, 40.2 );
setRotateKey( spep_3 -3 + 88, 1, 40 );
setRotateKey( spep_3 -3 + 90, 1, 39.8 );
setRotateKey( spep_3 -3 + 92, 1, 39.5 );
setRotateKey( spep_3 -3 + 94, 1, 39.3 );
setRotateKey( spep_3 -3 + 96, 1, 39.1 );
setRotateKey( spep_3 -3 + 98, 1, 38.9 );
setRotateKey( spep_3 -3 + 100, 1, 38.7 );
setRotateKey( spep_3 -3 + 102, 1, 38.5 );
setRotateKey( spep_3 -3 + 104, 1, 38.3 );
setRotateKey( spep_3 -3 + 106, 1, 38.1 );
setRotateKey( spep_3 -3 + 108, 1, 37.9 );
setRotateKey( spep_3 -3 + 111, 1, 37.6 );
setRotateKey( spep_3 -3 + 112, 1, 41.2 );
setRotateKey( spep_3 -3 + 114, 1, 42.2 );
setRotateKey( spep_3 -3 + 116, 1, 43.1 );
setRotateKey( spep_3 -3 + 118, 1, 44 );
setRotateKey( spep_3 -3 + 120, 1, 44.9 );
setRotateKey( spep_3 -3 + 122, 1, 45.8 );
setRotateKey( spep_3 -3 + 124, 1, 46.7 );
setRotateKey( spep_3 -3 + 126, 1, 47.7 );
setRotateKey( spep_3 -3 + 130, 1, 47.7 );


-- ** 音 ** --
SE011 = playSeVer2( spep_3 + 0, 1189, "", 0, 0, 0, -1);	--悟天ラッシュ

SE012 = playSeVer2( spep_3 + 4, 1009, "", 0, 0, 0, -1);	--悟天ラッシュ

SE013 = playSeVer2( spep_3 + 4, 1110, "",spep_3 + 18, 0, 6, -1);	--悟天ラッシュ
setSeVolumeByWorkId( spep_3 + 4, SE013, 88 );

SE014 = playSeVer2( spep_3 + 12, 1000, "", 0, 0, 0, -1);	--悟天ラッシュ

SE015 = playSeVer2( spep_3 + 20, 1000, "", 0, 0, 0, -1);	--悟天ラッシュ

SE016 = playSeVer2( spep_3 + 42, 1189, "", 0, 0, 0, -1);	--トランクスキック
setSeVolumeByWorkId( spep_3 + 42, SE016, 119 );

SE017 = playSeVer2( spep_3 + 46, 1001, "", 0, 0, 0, -1);	--トランクスキック
setSeVolumeByWorkId( spep_3 + 46, SE017, 68 );

SE018 = playSeVer2( spep_3 + 48, 1010, "", 0, 0, 0, -1);	--トランクスキック

SE019 = playSeVer2( spep_3 + 66, 1000, "", 0, 0, 0, -1);	--トランクスラッシュ

SE020 = playSeVer2( spep_3 + 74, 1000, "", 0, 0, 0, -1);	--トランクスラッシュ

SE021 = playSeVer2( spep_3 + 80, 1000, "", 0, 0, 0, -1);	--トランクスラッシュ

SE022 = playSeVer2( spep_3 + 96, 1003, "", 0, 0, 0, -1);	--二人蹴り飛ばし

SE023 = playSeVer2( spep_3 + 102, 1009, "", 0, 0, 0, -1);	--二人蹴り飛ばし

SE024 = playSeVer2( spep_3 + 102, 1110, "", 0, 0, 0, -1);	--二人蹴り飛ばし


-- ** 次の準備 ** --
spep_4 = spep_3 + 140 -4;

-------------------------------------------------
-- 悟飯　画面手前に迫る
-------------------------------------------------
-- ** エフェクト等 ** --
base4 = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0); --悟飯　画面手前に迫る	ef_004
setEffMoveKey( spep_4 + 0, base4, 0, 0 , 0);
setEffMoveKey( spep_4 + 48 -4, base4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4, -1.0, 1.0);
setEffScaleKey( spep_4 + 48 -4, base4, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4, 0);
setEffRotateKey( spep_4 + 48 -4, base4, 0);
setEffAlphaKey( spep_4 + 0, base4, 255);
setEffAlphaKey( spep_4 + 48 -5, base4, 255);
setEffAlphaKey( spep_4 + 48 -4, base4, 0);


-- ** 音 ** --
SE025 = playSeVer2( spep_4 + 0, 1182, "", 0, 0, 0, -1);	--悟飯向かっていく

SE026 = playSeVer2( spep_4 + 0, 1117, "",spep_4 + 94, 0, 10, -1);	--悟飯向かっていく


-- ** 次の準備 ** --
spep_5 = spep_4 + 48 -4;

-------------------------------------------------
-- 悟飯　格闘　味方側：手前
-------------------------------------------------
-- ** エフェクト等 ** --
base5_f = entryEffect( spep_5 + 0, SP_12, 0x100, -1, 0, 0, 0); --悟飯　格闘　敵側：手前	ef_005_r	65	敵側
setEffMoveKey( spep_5 + 0, base5_f, 0, 0 , 0);
setEffMoveKey( spep_5 + 128 -4, base5_f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_f, -1.0, 1.0);
setEffScaleKey( spep_5 + 128 -4, base5_f, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_f, 0);
setEffRotateKey( spep_5 + 128 -4, base5_f, 0);
setEffAlphaKey( spep_5 + 0, base5_f, 255);
setEffAlphaKey( spep_5 + 128 -5, base5_f, 255);
setEffAlphaKey( spep_5 + 128 -4, base5_f, 0);

base5_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0); --悟飯　格闘　味方側：奥	ef_005_b
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 128 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 128 -4, base5_b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 128 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 128 -5, base5_b, 255);
setEffAlphaKey( spep_5 + 128 -4, base5_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 116, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5 -3 + 46, 1, 108 );
changeAnime( spep_5 -3 + 90, 1, 106 );
changeAnime( spep_5 -3 + 116, 1, 106 );

--setMoveKey( spep_5 -3 + 0, 1, 441, -18.3 , 0 );
setMoveKey( spep_5 -2 + 2, 1, 418.7, -18.4 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 396.4, -18.4 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 374.2, -18.4 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 351.9, -18.4 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 329.6, -18.4 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 307.3, -18.4 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 285.1, -18.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 262.8, -18.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 240.6, -18.4 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 218.2, -18.4 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 196, -18.4 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 173.7, -18.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 151.4, -18.4 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 129.1, -18.4 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 125.6, -18.4 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 122.1, -18.4 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 118.6, -18.4 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 72, -18.4 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 69.3, -18.4 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 66.4, -18.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 63.7, -18.4 , 0 );
setMoveKey( spep_5 -3 + 45, 1, 60.8, -18.4 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 57.8, -19.9 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 79.3, 8.9 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 19.7, -43.4 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 63.9, 0.3 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 31.4, -30.2 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 53.7, -11.1 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 56, -9.3 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 58.3, -7.6 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 60.6, -5.8 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 62.9, -4 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 65.2, -2.3 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 67.5, -0.5 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 69.8, 1.3 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 72.1, 3 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 74.5, 4.8 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 76.7, 6.5 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 79, 8.3 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 81.4, 10.1 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 83.7, 11.8 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 86, 13.6 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 88.3, 15.3 , 0 );
setMoveKey( spep_5 -3 + 89, 1, 90.6, 17.1 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 24.5, 57.6 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 126.1, 174.3 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 146.5, 209.8 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 262.9, 341.3 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 294, 368.7 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 379.9, 445.6 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 445.8, 505.2 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 511.7, 564.8 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 577.6, 624.4 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 643.4, 684 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 709.3, 743.5 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 699.9, 713.5 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 690.4, 683.5 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 681, 653.4 , 0 );

setScaleKey( spep_5 + 0, 1, 1.53, 1.53 );
setScaleKey( spep_5 -3 + 45, 1, 1.53, 1.53 );
setScaleKey( spep_5 -3 + 46, 1, 1.62, 1.62 );
setScaleKey( spep_5 -3 + 89, 1, 1.62, 1.62 );
setScaleKey( spep_5 -3 + 90, 1, 1.44, 1.44 );
setScaleKey( spep_5 -3 + 116, 1, 1.44, 1.44 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 116, 1, 0 );


-- ** 音 ** --
SE027 = playSeVer2( spep_5 + 36, 1189, "", 0, 0, 0, -1);	--悟飯パンチ

SE028 = playSeVer2( spep_5 + 42, 1010, "", 0, 0, 0, -1);	--悟飯パンチ

SE029 = playSeVer2( spep_5 + 42, 1110, "", 0, 0, 0, -1);	--悟飯パンチ

SE030 = playSeVer2( spep_5 + 78, 1003, "", 0, 0, 0, -1);	--蹴り上げ

SE031 = playSeVer2( spep_5 + 86, 1120, "", 0, 0, 0, -1);	--蹴り上げ



-- ** 次の準備 ** --
spep_6 = spep_5 + 128 -4;

-------------------------------------------------
-- 悟飯構える
-------------------------------------------------
-- ** エフェクト等 ** --
base6 = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0); --悟飯構える	ef_006
setEffMoveKey( spep_6 + 0, base6, 0, 0 , 0);
setEffMoveKey( spep_6 + 120 -4, base6, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6, -1.0, 1.0);
setEffScaleKey( spep_6 + 120 -4, base6, -1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6, 0);
setEffRotateKey( spep_6 + 120 -4, base6, 0);
setEffAlphaKey( spep_6 + 0, base6, 255);
setEffAlphaKey( spep_6 + 120 -5, base6, 255);
setEffAlphaKey( spep_6 + 120 -4, base6, 0);


-- ** 音 ** --
SE032 = playSeVer2( spep_6 + 0, 1278, "",spep_6 + 88, 0, 34, -1);	--腕アップ

SE033 = playSeVer2( spep_6 + 6, 1004, "", 0, 0, 0, -1);	--腕アップ

SE034 = playSeVer2( spep_6 + 42, 1233, "", 0, 0, 0, -1);	--構える

SE035 = playSeVer2( spep_6 + 52, 1006, "", 0, 0, 0, -1);	--構える
setSeVolumeByWorkId( spep_6 + 52, SE035, 81 );

SE036 = playSeVer2( spep_6 + 64, 1072, "", 0, 0, 0, 0.6);	--アップ


-- ** 次の準備 ** --
spep_7 = spep_6 + 120 -4;

-------------------------------------------------
-- 悟飯気弾放つ→気弾が敵に迫る
-------------------------------------------------
-- ** エフェクト等 ** --
base7_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0); --悟飯気弾放つ→気弾が敵に迫る	ef_007
setEffMoveKey( spep_7 + 0, base7_f, 0, 0 , 0);
setEffMoveKey( spep_7 + 240 -4, base7_f, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7_f, -1.0, 1.0);
setEffScaleKey( spep_7 + 240 -4, base7_f, -1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7_f, 0);
setEffRotateKey( spep_7 + 240 -4, base7_f, 0);
setEffAlphaKey( spep_7 + 0, base7_f, 255);
setEffAlphaKey( spep_7 + 240 -5, base7_f, 255);
setEffAlphaKey( spep_7 + 240 -4, base7_f, 0);

base7_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0); --悟飯気弾放つ→気弾が敵に迫る	ef_007_b
setEffMoveKey( spep_7 + 0, base7_b, 0, 0 , 0);
setEffMoveKey( spep_7 + 240 -4, base7_b, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7_b, -1.0, 1.0);
setEffScaleKey( spep_7 + 240 -4, base7_b, -1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7_b, 0);
setEffRotateKey( spep_7 + 240 -4, base7_b, 0);
setEffAlphaKey( spep_7 + 0, base7_b, 255);
setEffAlphaKey( spep_7 + 240 -5, base7_b, 255);
setEffAlphaKey( spep_7 + 240 -4, base7_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_7 -3 + 38, 1, 1 );
setDisp( spep_7 -4 + 240, 1, 0 );

changeAnime( spep_7 + 0, 1, 7 );

setBlendColor( spep_7 + 140 -3, 1, 2, 0.2, 0.2, 0.2, 0.00 );
setBlendColor( spep_7 + 142 -3, 1, 2, 0.2, 0.2, 0.2, 0.04 );
setBlendColor( spep_7 + 144 -3, 1, 2, 0.2, 0.2, 0.2, 0.08 );
setBlendColor( spep_7 + 146 -3, 1, 2, 0.2, 0.2, 0.2, 0.12 );
setBlendColor( spep_7 + 148 -3, 1, 2, 0.2, 0.2, 0.2, 0.16 );
setBlendColor( spep_7 + 150 -3, 1, 2, 0.2, 0.2, 0.2, 0.20 );
setBlendColor( spep_7 + 152 -3, 1, 2, 0.2, 0.2, 0.2, 0.24 );
setBlendColor( spep_7 + 154 -3, 1, 2, 0.2, 0.2, 0.2, 0.28 );
setBlendColor( spep_7 + 156 -3, 1, 2, 0.2, 0.2, 0.2, 0.32 );
setBlendColor( spep_7 + 158 -3, 1, 2, 0.2, 0.2, 0.2, 0.36 );
setBlendColor( spep_7 + 160 -3, 1, 2, 0.2, 0.2, 0.2, 0.40 );
setBlendColor( spep_7 + 162 -3, 1, 2, 0.2, 0.2, 0.2, 0.44 );
setBlendColor( spep_7 + 164 -3, 1, 2, 0.2, 0.2, 0.2, 0.48 );
setBlendColor( spep_7 + 166 -3, 1, 2, 0.2, 0.2, 0.2, 0.52 );
setBlendColor( spep_7 + 168 -3, 1, 2, 0.2, 0.2, 0.2, 0.56 );
setBlendColor( spep_7 + 170 -3, 1, 2, 0.2, 0.2, 0.2, 0.60 );
setBlendColor( spep_7 + 172 -3, 1, 2, 0.2, 0.2, 0.2, 0.64 );
setBlendColor( spep_7 + 174 -3, 1, 2, 0.2, 0.2, 0.2, 0.68 );
setBlendColor( spep_7 + 176 -3, 1, 2, 0.2, 0.2, 0.2, 0.72 );
setBlendColor( spep_7 + 178 -3, 1, 2, 0.2, 0.2, 0.2, 0.76 );
setBlendColor( spep_7 + 180 -3, 1, 2, 0.2, 0.2, 0.2, 0.80 );
setBlendColor( spep_7 + 182 -3, 1, 2, 0.2, 0.2, 0.2, 0.84 );
setBlendColor( spep_7 + 184 -3, 1, 2, 0.2, 0.2, 0.2, 0.88 );
setBlendColor( spep_7 + 186 -3, 1, 2, 0.2, 0.2, 0.2, 0.92 );
setBlendColor( spep_7 + 188 -3, 1, 2, 0.2, 0.2, 0.2, 0.96 );
setBlendColor( spep_7 + 190 -3, 1, 2, 0.2, 0.2, 0.2, 1.00 );
setBlendColor( spep_7 + 192 -4, 1, 2, 0.195, 0.195, 0.195, 1.00 );
setBlendColor( spep_7 + 194 -4, 1, 2, 0.190, 0.190, 0.190, 1.00 );
setBlendColor( spep_7 + 196 -4, 1, 2, 0.185, 0.185, 0.185, 1.00 );
setBlendColor( spep_7 + 198 -4, 1, 2, 0.180, 0.180, 0.180, 1.00 );
setBlendColor( spep_7 + 200 -4, 1, 2, 0.175, 0.175, 0.175, 1.00 );
setBlendColor( spep_7 + 202 -4, 1, 2, 0.170, 0.170, 0.170, 1.00 );
setBlendColor( spep_7 + 204 -4, 1, 2, 0.165, 0.165, 0.165, 1.00 );
setBlendColor( spep_7 + 206 -4, 1, 2, 0.160, 0.160, 0.160, 1.00 );
setBlendColor( spep_7 + 208 -4, 1, 2, 0.155, 0.155, 0.155, 1.00 );
setBlendColor( spep_7 + 210 -4, 1, 2, 0.150, 0.150, 0.150, 1.00 );
setBlendColor( spep_7 + 212 -4, 1, 2, 0.145, 0.145, 0.145, 1.00 );
setBlendColor( spep_7 + 214 -4, 1, 2, 0.140, 0.140, 0.140, 1.00 );
setBlendColor( spep_7 + 216 -4, 1, 2, 0.135, 0.135, 0.135, 1.00 );
setBlendColor( spep_7 + 218 -4, 1, 2, 0.130, 0.130, 0.130, 1.00 );
setBlendColor( spep_7 + 220 -4, 1, 2, 0.125, 0.125, 0.125, 1.00 );
setBlendColor( spep_7 + 222 -4, 1, 2, 0.120, 0.120, 0.120, 1.00 );
setBlendColor( spep_7 + 224 -4, 1, 2, 0.115, 0.115, 0.115, 1.00 );
setBlendColor( spep_7 + 226 -4, 1, 2, 0.110, 0.110, 0.110, 1.00 );
setBlendColor( spep_7 + 228 -4, 1, 2, 0.105, 0.105, 0.105, 1.00 );
setBlendColor( spep_7 + 230 -4, 1, 2, 0.100, 0.100, 0.100, 1.00 );
setBlendColor( spep_7 + 240 -4, 1, 2, 0.100, 0.100, 0.100, 1.00 );
setBlendColor( spep_7 + 240 -3, 1, 2, 0, 0, 0, 0 );

setMoveKey( spep_7 -3 + 38, 1, -2280.6, 554 , 0 );
setMoveKey( spep_7 -3 + 40, 1, -2190.5, 512.1 , 0 );
setMoveKey( spep_7 -3 + 42, 1, -2101.8, 471.1 , 0 );
setMoveKey( spep_7 -3 + 44, 1, -2015.1, 431.2 , 0 );
setMoveKey( spep_7 -3 + 46, 1, -1930, 392.3 , 0 );
setMoveKey( spep_7 -3 + 48, 1, -1846.3, 354.3 , 0 );
setMoveKey( spep_7 -3 + 50, 1, -1764.6, 317.4 , 0 );
setMoveKey( spep_7 -3 + 52, 1, -1684.6, 281.4 , 0 );
setMoveKey( spep_7 -3 + 54, 1, -1606.2, 246.4 , 0 );
setMoveKey( spep_7 -3 + 56, 1, -1529.3, 212.4 , 0 );
setMoveKey( spep_7 -3 + 58, 1, -1454.3, 179.4 , 0 );
setMoveKey( spep_7 -3 + 60, 1, -1380.9, 147.4 , 0 );
setMoveKey( spep_7 -3 + 62, 1, -1309.2, 116.4 , 0 );
setMoveKey( spep_7 -3 + 64, 1, -1239, 86.3 , 0 );
setMoveKey( spep_7 -3 + 66, 1, -1170.6, 57.2 , 0 );
setMoveKey( spep_7 -3 + 68, 1, -1104, 29.2 , 0 );
setMoveKey( spep_7 -3 + 70, 1, -1038.8, 2 , 0 );
setMoveKey( spep_7 -3 + 72, 1, -980.3, -26.7 , 0 );
setMoveKey( spep_7 -3 + 74, 1, -922.9, -54.3 , 0 );
setMoveKey( spep_7 -3 + 76, 1, -866.5, -81 , 0 );
setMoveKey( spep_7 -3 + 78, 1, -811.3, -106.7 , 0 );
setMoveKey( spep_7 -3 + 80, 1, -757, -131.4 , 0 );
setMoveKey( spep_7 -3 + 82, 1, -704.1, -155.1 , 0 );
setMoveKey( spep_7 -3 + 84, 1, -652.2, -177.9 , 0 );
setMoveKey( spep_7 -3 + 86, 1, -601.4, -199.7 , 0 );
setMoveKey( spep_7 -3 + 88, 1, -551.8, -220.5 , 0 );
setMoveKey( spep_7 -3 + 90, 1, -503.2, -240.4 , 0 );
setMoveKey( spep_7 -3 + 92, 1, -455.9, -259.4 , 0 );
setMoveKey( spep_7 -3 + 94, 1, -409.7, -277.4 , 0 );
setMoveKey( spep_7 -3 + 96, 1, -364.6, -294.6 , 0 );
setMoveKey( spep_7 -3 + 98, 1, -320.8, -310.8 , 0 );
setMoveKey( spep_7 -3 + 100, 1, -307.9, -307.9 , 0 );
setMoveKey( spep_7 -3 + 102, 1, -287, -313.3 , 0 );
setMoveKey( spep_7 -3 + 104, 1, -274.8, -316.7 , 0 );
setMoveKey( spep_7 -3 + 106, 1, -256.2, -313.1 , 0 );
setMoveKey( spep_7 -3 + 108, 1, -244.8, -309.2 , 0 );
setMoveKey( spep_7 -3 + 110, 1, -233.7, -311.9 , 0 );
setMoveKey( spep_7 -3 + 112, 1, -216.2, -307.6 , 0 );
setMoveKey( spep_7 -3 + 114, 1, -199.1, -309.9 , 0 );
setMoveKey( spep_7 -3 + 116, 1, -189.1, -305.1 , 0 );
setMoveKey( spep_7 -3 + 118, 1, -179.4, -306.8 , 0 );
setMoveKey( spep_7 -3 + 120, 1, -165.1, -299.9 , 0 );
setMoveKey( spep_7 -3 + 122, 1, -147.7, -302.9 , 0 );
setMoveKey( spep_7 -3 + 124, 1, -147.1, -300.3 , 0 );
setMoveKey( spep_7 -3 + 126, 1, -139.8, -290.9 , 0 );
setMoveKey( spep_7 -3 + 128, 1, -139.4, -281.4 , 0 );
setMoveKey( spep_7 -3 + 130, 1, -139, -278.8 , 0 );
setMoveKey( spep_7 -3 + 132, 1, -131.8, -269.3 , 0 );
setMoveKey( spep_7 -3 + 134, 1, -124.7, -266.6 , 0 );
setMoveKey( spep_7 -3 + 136, 1, -124.4, -257.1 , 0 );
setMoveKey( spep_7 -3 + 138, 1, -124.1, -254.4 , 0 );
setMoveKey( spep_7 -3 + 140, 1, -118.8, -243.1 , 0 );
setMoveKey( spep_7 -3 + 142, 1, -123.7, -231.9 , 0 );
setMoveKey( spep_7 -3 + 144, 1, -113.4, -232.5 , 0 );
setMoveKey( spep_7 -3 + 146, 1, -120.1, -234.8 , 0 );
setMoveKey( spep_7 -3 + 148, 1, -94.6, -206.5 , 0 );
setMoveKey( spep_7 -3 + 150, 1, -108.2, -225.8 , 0 );
setMoveKey( spep_7 -3 + 152, 1, -101.4, -192.4 , 0 );
setMoveKey( spep_7 -3 + 154, 1, -104.9, -210 , 0 );
setMoveKey( spep_7 -3 + 156, 1, -84.6, -188.4 , 0 );
setMoveKey( spep_7 -3 + 158, 1, -91.5, -182.1 , 0 );
setMoveKey( spep_7 -3 + 160, 1, -81.5, -169 , 0 );
setMoveKey( spep_7 -3 + 162, 1, -88.6, -179.8 , 0 );
setMoveKey( spep_7 -3 + 164, 1, -73.5, -175.1 , 0 );
setMoveKey( spep_7 -3 + 166, 1, -68.8, -160.3 , 0 );
setMoveKey( spep_7 -3 + 168, 1, -80.6, -167 , 0 );
setMoveKey( spep_7 -3 + 170, 1, -83.9, -161.9 , 0 );
setMoveKey( spep_7 -3 + 172, 1, -65.1, -150 , 0 );
setMoveKey( spep_7 -3 + 174, 1, -81.9, -175.5 , 0 );
setMoveKey( spep_7 -3 + 176, 1, -78.4, -148.2 , 0 );
setMoveKey( spep_7 -3 + 178, 1, -85.1, -172 , 0 );
setMoveKey( spep_7 -3 + 180, 1, -68, -156.7 , 0 );
setMoveKey( spep_7 -3 + 182, 1, -78.1, -156.7 , 0 );
setMoveKey( spep_7 -3 + 184, 1, -71.2, -149.9 , 0 );
setMoveKey( spep_7 -3 + 186, 1, -81.3, -166.8 , 0 );
setMoveKey( spep_7 -3 + 188, 1, -69.3, -168.5 , 0 );
setMoveKey( spep_7 -3 + 190, 1, -67.5, -160 , 0 );
setMoveKey( spep_7 -3 + 192, 1, -79.3, -166.8 , 0 );
setMoveKey( spep_7 -3 + 194, 1, -82.6, -161.6 , 0 );
setMoveKey( spep_7 -3 + 196, 1, -72.6, -165 , 0 );
setMoveKey( spep_7 -3 + 198, 1, -68.8, -168.4 , 0 );
setMoveKey( spep_7 -3 + 200, 1, -67, -159.9 , 0 );
setMoveKey( spep_7 -3 + 202, 1, -78.8, -166.6 , 0 );
setMoveKey( spep_7 -3 + 204, 1, -82, -161.5 , 0 );
setMoveKey( spep_7 -3 + 206, 1, -63.2, -149.6 , 0 );
setMoveKey( spep_7 -3 + 208, 1, -68.2, -168.3 , 0 );
setMoveKey( spep_7 -3 + 210, 1, -66.4, -159.7 , 0 );
setMoveKey( spep_7 -3 + 212, 1, -78.2, -166.5 , 0 );
setMoveKey( spep_7 -3 + 214, 1, -81.5, -161.4 , 0 );
setMoveKey( spep_7 -3 + 216, 1, -62.7, -149.5 , 0 );
setMoveKey( spep_7 -3 + 218, 1, -79.6, -174.9 , 0 );
setMoveKey( spep_7 -3 + 220, 1, -76.2, -147.7 , 0 );
setMoveKey( spep_7 -3 + 222, 1, -83, -171.5 , 0 );
setMoveKey( spep_7 -3 + 224, 1, -66, -156.2 , 0 );
setMoveKey( spep_7 -3 + 226, 1, -76.2, -156.2 , 0 );
setMoveKey( spep_7 -3 + 228, 1, -69.4, -149.4 , 0 );
setMoveKey( spep_7 -3 + 230, 1, -79.6, -166.4 , 0 );
setMoveKey( spep_7 -3 + 232, 1, -67.7, -168.1 , 0 );
setMoveKey( spep_7 -3 + 234, 1, -66, -159.6 , 0 );
setMoveKey( spep_7 -3 + 236, 1, -77.9, -166.4 , 0 );
setMoveKey( spep_7 -3 + 238, 1, -81.3, -161.3 , 0 );
setMoveKey( spep_7 -4 + 240, 1, -81.3, -161.3 , 0 );

setScaleKey( spep_7 -3 + 38, 1, 3.38, 3.38 );
setScaleKey( spep_7 -3 + 40, 1, 3.36, 3.36 );
setScaleKey( spep_7 -3 + 42, 1, 3.34, 3.34 );
setScaleKey( spep_7 -3 + 44, 1, 3.32, 3.32 );
setScaleKey( spep_7 -3 + 46, 1, 3.3, 3.3 );
setScaleKey( spep_7 -3 + 48, 1, 3.28, 3.28 );
setScaleKey( spep_7 -3 + 50, 1, 3.25, 3.25 );
setScaleKey( spep_7 -3 + 52, 1, 3.23, 3.23 );
setScaleKey( spep_7 -3 + 54, 1, 3.2, 3.2 );
setScaleKey( spep_7 -3 + 56, 1, 3.18, 3.18 );
setScaleKey( spep_7 -3 + 58, 1, 3.15, 3.15 );
setScaleKey( spep_7 -3 + 60, 1, 3.12, 3.12 );
setScaleKey( spep_7 -3 + 62, 1, 3.09, 3.09 );
setScaleKey( spep_7 -3 + 64, 1, 3.06, 3.06 );
setScaleKey( spep_7 -3 + 66, 1, 3.03, 3.03 );
setScaleKey( spep_7 -3 + 68, 1, 3, 3 );
setScaleKey( spep_7 -3 + 70, 1, 2.97, 2.97 );
setScaleKey( spep_7 -3 + 72, 1, 2.95, 2.95 );
setScaleKey( spep_7 -3 + 74, 1, 2.93, 2.93 );
setScaleKey( spep_7 -3 + 76, 1, 2.91, 2.91 );
setScaleKey( spep_7 -3 + 78, 1, 2.89, 2.89 );
setScaleKey( spep_7 -3 + 80, 1, 2.87, 2.87 );
setScaleKey( spep_7 -3 + 82, 1, 2.85, 2.85 );
setScaleKey( spep_7 -3 + 84, 1, 2.83, 2.83 );
setScaleKey( spep_7 -3 + 86, 1, 2.81, 2.81 );
setScaleKey( spep_7 -3 + 88, 1, 2.78, 2.78 );
setScaleKey( spep_7 -3 + 90, 1, 2.76, 2.76 );
setScaleKey( spep_7 -3 + 92, 1, 2.74, 2.74 );
setScaleKey( spep_7 -3 + 94, 1, 2.71, 2.71 );
setScaleKey( spep_7 -3 + 96, 1, 2.69, 2.69 );
setScaleKey( spep_7 -3 + 98, 1, 2.66, 2.66 );
setScaleKey( spep_7 -3 + 100, 1, 2.64, 2.64 );
setScaleKey( spep_7 -3 + 102, 1, 2.61, 2.61 );
setScaleKey( spep_7 -3 + 104, 1, 2.59, 2.59 );
setScaleKey( spep_7 -3 + 106, 1, 2.57, 2.57 );
setScaleKey( spep_7 -3 + 108, 1, 2.54, 2.54 );
setScaleKey( spep_7 -3 + 110, 1, 2.51, 2.51 );
setScaleKey( spep_7 -3 + 112, 1, 2.49, 2.49 );
setScaleKey( spep_7 -3 + 114, 1, 2.46, 2.46 );
setScaleKey( spep_7 -3 + 116, 1, 2.43, 2.43 );
setScaleKey( spep_7 -3 + 118, 1, 2.4, 2.4 );
setScaleKey( spep_7 -3 + 120, 1, 2.37, 2.37 );
setScaleKey( spep_7 -3 + 122, 1, 2.34, 2.34 );
setScaleKey( spep_7 -3 + 124, 1, 2.31, 2.31 );
setScaleKey( spep_7 -3 + 126, 1, 2.28, 2.28 );
setScaleKey( spep_7 -3 + 128, 1, 2.24, 2.24 );
setScaleKey( spep_7 -3 + 130, 1, 2.21, 2.21 );
setScaleKey( spep_7 -3 + 132, 1, 2.18, 2.18 );
setScaleKey( spep_7 -3 + 134, 1, 2.14, 2.14 );
setScaleKey( spep_7 -3 + 136, 1, 2.11, 2.11 );
setScaleKey( spep_7 -3 + 138, 1, 2.07, 2.07 );
setScaleKey( spep_7 -3 + 140, 1, 2.03, 2.03 );
setScaleKey( spep_7 -3 + 142, 1, 1.99, 1.99 );
setScaleKey( spep_7 -3 + 144, 1, 1.95, 1.95 );
setScaleKey( spep_7 -3 + 146, 1, 1.91, 1.91 );
setScaleKey( spep_7 -3 + 148, 1, 1.87, 1.87 );
setScaleKey( spep_7 -3 + 150, 1, 1.83, 1.83 );
setScaleKey( spep_7 -3 + 152, 1, 1.79, 1.79 );
setScaleKey( spep_7 -3 + 154, 1, 1.75, 1.75 );
setScaleKey( spep_7 -3 + 156, 1, 1.7, 1.7 );
setScaleKey( spep_7 -3 + 158, 1, 1.66, 1.66 );
setScaleKey( spep_7 -3 + 160, 1, 1.61, 1.61 );
setScaleKey( spep_7 -3 + 162, 1, 1.57, 1.57 );
setScaleKey( spep_7 -3 + 164, 1, 1.52, 1.52 );
setScaleKey( spep_7 -3 + 166, 1, 1.47, 1.47 );
setScaleKey( spep_7 -3 + 168, 1, 1.48, 1.48 );
setScaleKey( spep_7 -3 + 170, 1, 1.49, 1.49 );
setScaleKey( spep_7 -3 + 172, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 174, 1, 1.51, 1.51 );
setScaleKey( spep_7 -3 + 176, 1, 1.52, 1.52 );
setScaleKey( spep_7 -3 + 178, 1, 1.53, 1.53 );
setScaleKey( spep_7 -3 + 180, 1, 1.54, 1.54 );
setScaleKey( spep_7 -3 + 182, 1, 1.55, 1.55 );
setScaleKey( spep_7 -3 + 184, 1, 1.56, 1.56 );
setScaleKey( spep_7 -3 + 186, 1, 1.57, 1.57 );
setScaleKey( spep_7 -3 + 188, 1, 1.58, 1.58 );
setScaleKey( spep_7 -3 + 190, 1, 1.59, 1.59 );
setScaleKey( spep_7 -3 + 192, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 194, 1, 1.61, 1.61 );
setScaleKey( spep_7 -3 + 196, 1, 1.62, 1.62 );
setScaleKey( spep_7 -3 + 198, 1, 1.63, 1.63 );
setScaleKey( spep_7 -3 + 200, 1, 1.64, 1.64 );
setScaleKey( spep_7 -3 + 202, 1, 1.65, 1.65 );
setScaleKey( spep_7 -3 + 204, 1, 1.66, 1.66 );
setScaleKey( spep_7 -3 + 206, 1, 1.67, 1.67 );
setScaleKey( spep_7 -3 + 208, 1, 1.68, 1.68 );
setScaleKey( spep_7 -3 + 210, 1, 1.69, 1.69 );
setScaleKey( spep_7 -3 + 212, 1, 1.7, 1.7 );
setScaleKey( spep_7 -3 + 214, 1, 1.71, 1.71 );
setScaleKey( spep_7 -3 + 216, 1, 1.72, 1.72 );
setScaleKey( spep_7 -3 + 218, 1, 1.73, 1.73 );
setScaleKey( spep_7 -4 + 240, 1, 1.73, 1.73 );

setRotateKey( spep_7 -3 + 38, 1, -20 );
setRotateKey( spep_7 -3 + 70, 1, -20 );
setRotateKey( spep_7 -3 + 72, 1, -20.1 );
setRotateKey( spep_7 -3 + 74, 1, -20.3 );
setRotateKey( spep_7 -3 + 76, 1, -20.4 );
setRotateKey( spep_7 -3 + 78, 1, -20.6 );
setRotateKey( spep_7 -3 + 80, 1, -20.7 );
setRotateKey( spep_7 -3 + 82, 1, -20.9 );
setRotateKey( spep_7 -3 + 84, 1, -21 );
setRotateKey( spep_7 -3 + 86, 1, -21.2 );
setRotateKey( spep_7 -3 + 88, 1, -21.3 );
setRotateKey( spep_7 -3 + 90, 1, -21.5 );
setRotateKey( spep_7 -3 + 92, 1, -21.6 );
setRotateKey( spep_7 -3 + 94, 1, -21.7 );
setRotateKey( spep_7 -3 + 96, 1, -21.9 );
setRotateKey( spep_7 -3 + 98, 1, -22 );
setRotateKey( spep_7 -3 + 100, 1, -22.2 );
setRotateKey( spep_7 -3 + 102, 1, -22.3 );
setRotateKey( spep_7 -3 + 104, 1, -22.5 );
setRotateKey( spep_7 -3 + 106, 1, -22.6 );
setRotateKey( spep_7 -3 + 108, 1, -22.8 );
setRotateKey( spep_7 -3 + 110, 1, -22.9 );
setRotateKey( spep_7 -3 + 112, 1, -23.1 );
setRotateKey( spep_7 -3 + 114, 1, -23.2 );
setRotateKey( spep_7 -3 + 116, 1, -23.3 );
setRotateKey( spep_7 -3 + 118, 1, -23.5 );
setRotateKey( spep_7 -3 + 120, 1, -23.6 );
setRotateKey( spep_7 -3 + 122, 1, -23.8 );
setRotateKey( spep_7 -3 + 124, 1, -23.9 );
setRotateKey( spep_7 -3 + 126, 1, -24.1 );
setRotateKey( spep_7 -3 + 128, 1, -24.2 );
setRotateKey( spep_7 -3 + 130, 1, -24.4 );
setRotateKey( spep_7 -3 + 132, 1, -24.5 );
setRotateKey( spep_7 -3 + 134, 1, -24.7 );
setRotateKey( spep_7 -3 + 136, 1, -24.8 );
setRotateKey( spep_7 -3 + 138, 1, -24.9 );
setRotateKey( spep_7 -3 + 140, 1, -25.1 );
setRotateKey( spep_7 -3 + 142, 1, -25.2 );
setRotateKey( spep_7 -3 + 144, 1, -25.4 );
setRotateKey( spep_7 -3 + 146, 1, -25.5 );
setRotateKey( spep_7 -3 + 148, 1, -25.7 );
setRotateKey( spep_7 -3 + 150, 1, -25.8 );
setRotateKey( spep_7 -3 + 152, 1, -26 );
setRotateKey( spep_7 -3 + 154, 1, -26.1 );
setRotateKey( spep_7 -3 + 156, 1, -26.3 );
setRotateKey( spep_7 -3 + 158, 1, -26.4 );
setRotateKey( spep_7 -3 + 160, 1, -26.6 );
setRotateKey( spep_7 -3 + 162, 1, -26.7 );
setRotateKey( spep_7 -3 + 164, 1, -26.8 );
setRotateKey( spep_7 -3 + 166, 1, -27 );
setRotateKey( spep_7 -4 + 240, 1, -27 );


-- ** 音 ** --
SE037 = playSeVer2( spep_7 + 0, 44, "", 0, 0, 0, -1);	--両手上げてズームアウト

SE038 = playSeVer2( spep_7 + 0, 1175, "",spep_7 + 108, 0, 24, -1);	--両手上げてズームアウト

SE039 = playSeVer2( spep_7 + 76, 1042, "", 0, 0, 0, -1);	--光る

SE040 = playSeVer2( spep_7 + 80, 1026, "", 0, 0, 0, -1);	--光る
setSeVolumeByWorkId( spep_7 + 80, SE040, 78 );

SE041 = playSeVer2( spep_7 + 90, 1264, "",spep_7 + 276, 0, 62, -1);	--光る

SE042 = playSeVer2( spep_7 + 90, 1213, "",spep_7 + 276, 26, 62, -1);	--気弾爆発させる
setSeVolumeByWorkId( spep_7 + 90, SE042, 52 );

SE043 = playSeVer2( spep_7 + 90, 1284, "",spep_7 + 276, 0, 62, -1);	--気弾爆発させる
setSeVolumeByWorkId( spep_7 + 90, SE043, 64 );

SE044 = playSeVer2( spep_7 + 134, 1021, "", 0, 0, 0, -1);	--気弾飲み込まれる

SE045 = playSeVer2( spep_7 + 134, 1024, "", 0, 0, 0, 0.6);	--気弾飲み込まれる

SE046 = playSeVer2( spep_7 + 158, 1258, "",spep_7 + 276, 28, 62, -1);	--気弾飲み込まれる
setSeVolumeByWorkId( spep_7 + 158, SE046, 79 );
setStartTimeMs( SE046,  117 );


-- ** 次の準備 ** --
spep_8 = spep_7 + 240 -4;

-------------------------------------------------
-- フィニッシュ絵
-------------------------------------------------
-- ** エフェクト等 ** --
base8 = entryEffect( spep_8 + 0, SP_11, 0x80, -1, 0, 0, 0); --フィニッシュ絵	ef_008
setEffMoveKey( spep_8 + 0, base8, 0, 0 , 0);
setEffMoveKey( spep_8 + 108 -4, base8, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base8, -1.0, 1.0);
setEffScaleKey( spep_8 + 108 -4, base8, -1.0, 1.0);
setEffRotateKey( spep_8 + 0, base8, 0);
setEffRotateKey( spep_8 + 108 -4, base8, 0);
setEffAlphaKey( spep_8 + 0, base8, 255);
setEffAlphaKey( spep_8 + 108 -5, base8, 255);
setEffAlphaKey( spep_8 + 108 -4, base8, 0);


-- ** 音 ** --
SE047 = playSeVer2( spep_8 + 0, 1233, "", 0, 0, 0, -1);	--ラスト決め

SE048 = playSeVer2( spep_8 + 12, 1006, "", 0, 0, 0, -1);	--ラスト決め
setSeVolumeByWorkId( spep_8 + 12, SE048, 87 );

SE049 = playSeVer2( spep_8 + 12, 1062, "",spep_8 + 96, 0, 50, -1);	--ラスト決め
setSeVolumeByWorkId( spep_8 + 12, SE049, 79 );

SE050 = playSeVer2( spep_8 + 12, 1042, "", 0, 0, 0, -1);	--ラスト決め


-- ** ダメージ表示 ** --
dealDamage( spep_8 + 10);
endPhase( spep_8 + 108 -8);

end
