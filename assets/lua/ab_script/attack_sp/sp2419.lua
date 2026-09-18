-- 1024950：UR_ピッコロ_ミスティックアタック
-- sp_effect_b4_00244
-- sp2419

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
SP_01 = 160248;	-- 手が伸びる	ef_001	65	ef_002とセット。敵の手前に配置。
SP_01b = 160250;	-- 手が伸びる	ef_002	65	ef_001とセット。敵の奥に配置。
SP_02 = 160252;	-- 伸びた腕でパンチ〜目線カットイン	ef_003	217	ef_004とセット。敵の手前に配置。
SP_02b = 160254;	-- 伸びた腕でパンチ〜目線カットイン	ef_004	217	ef_003とセット。敵の奥に配置。
SP_03 = 160256;	-- 気弾を放つ〜気弾に飲まれる	ef_005	88	ef_006とセット。敵の手前に配置。
SP_03b = 160258;	-- 気弾を放つ〜気弾に飲まれる	ef_006	88	ef_005とセット。敵の奥に配置。
SP_04 = 160260;	-- フィニッシュ	ef_007	90	反転なし

--エフェクト(てき)
SP_01r = 160249;	-- 手が伸びる　敵側	ef_001r	65	ef_002rとセット。敵の手前に配置。
SP_01br = 160251;	-- 手が伸びる　敵側	ef_002r	65	ef_001rとセット。敵の奥に配置。
SP_02r = 160253;	-- 伸びた腕でパンチ〜目線カットイン　敵側	ef_003r	217	ef_004rとセット。敵の手前に配置。
SP_02br = 160255;	-- 伸びた腕でパンチ〜目線カットイン　敵側	ef_004r	217	ef_003rとセット。敵の奥に配置。
SP_03r = 160257;	-- 気弾を放つ〜気弾に飲まれる　敵側	ef_005r	88	ef_006rとセット。敵の手前に配置。
SP_03br = 160259;	-- 気弾を放つ〜気弾に飲まれる　敵側	ef_006r	88	ef_005rとセット。敵の奥に配置。


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
-- changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
-- setDisp( 0, 1, 0);

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

-- setMoveKey(   0,   1,    0, -5136,   0);
-- setMoveKey(   1,   1,    0, -5136,   0);
-- setMoveKey(   2,   1,    0, -5136,   0);
-- setMoveKey(   3,   1,    0, -5136,   0);
-- setMoveKey(   4,   1,    0, -5136,   0);
-- setMoveKey(   5,   1,    0, -5136,   0);
-- setMoveKey(   6,   1,    0, -5136,   0);
-- setScaleKey(  0,   1,  1.6, 1.6);
-- setScaleKey(  1,   1,  1.6, 1.6);
-- setScaleKey(  2,   1,  1.6, 1.6);
-- setScaleKey(  3,   1,  1.6, 1.6);
-- setScaleKey(  4,   1,  1.6, 1.6);
-- setScaleKey(  5,   1,  1.6, 1.6);
-- setScaleKey(  6,   1,  1.6, 1.6);
-- setRotateKey( 0,   1,  0);
-- setRotateKey( 1,   1,  0);
-- setRotateKey( 2,   1,  0);
-- setRotateKey( 3,   1,  0);
-- setRotateKey( 4,   1,  0);
-- setRotateKey( 5,   1,  0);
-- setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 手が伸びる
-------------------------------------------------
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 手が伸びる	ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + 128 -4, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + 128 -4, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + 128 -4, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + 128 -5, base_0f, 255);
setEffAlphaKey( spep_0 + 128 -4, base_0f, 0);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 手が伸びる	ef_002
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 128 -4, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + 128 -4, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 128 -4, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 128 -5, base_0b, 255);
setEffAlphaKey( spep_0 + 128 -4, base_0b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 128 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 118 );

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 66, 1, 0 );


-- setMoveKey( spep_0 -3 + 0, 1, 112.9, 39 , 0 );
setMoveKey( spep_0 + 0, 1, 113.6, 39.1 , 0 );
setMoveKey( spep_0 + 1, 1, 115.6, 39.4 , 0 );
setMoveKey( spep_0 + 2, 1, 115.6, 39.4 , 0 );
setMoveKey( spep_0 + 3, 1, 118.8, 40.0 , 0 );
setMoveKey( spep_0 + 4, 1, 118.8, 40.0 , 0 );
setMoveKey( spep_0 + 5, 1, 123.4, 40.8 , 0 );
setMoveKey( spep_0 + 6, 1, 123.4, 40.8 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 129.3 *1.01, 41.8 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 136.5 *1.02, 43 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 145.0 *1.02, 44.5 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 154.8 *1.03, 46.2 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 166.0 *1.03, 48.1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 196.8 *1.04, 55.7 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 227.7 *1.04, 63.3 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 258.5 *1.05, 70.9 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 289.4 *1.05, 78.5 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 320.2 *1.06, 86.1 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 351.1 *1.06, 93.7 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 381.9 *1.07, 101.2 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 412.8 *1.07, 108.8 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 443.6 *1.08, 116.4 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 474.5 *1.08, 124 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 505.3 *1.09, 131.6 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 536.2 *1.09, 139.2 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 567.1 *1.10, 146.8 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 597.9 *1.10, 154.3 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 612.7 *1.11, 158.5 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 626.0 *1.11, 162.2 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 637.8 *1.12, 165.5 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 647.9 *1.12, 168.3 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 656.5 *1.13, 170.7 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 663.5 *1.13, 172.7 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 669.0 *1.14, 174.2 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 672.9 *1.14, 175.3 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 675.3 *1.15, 176 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 676.0 *1.15, 176.3 , 0 );

setScaleKey( spep_0 + 0, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 1, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 2, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 3, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 4, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 5, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 6, 1, 1.89, 1.89 );
setScaleKey( spep_0 -3 + 10, 1, 1.9, 1.9 );
setScaleKey( spep_0 -3 + 12, 1, 1.91, 1.91 );
setScaleKey( spep_0 -3 + 14, 1, 1.92, 1.92 );
setScaleKey( spep_0 -3 + 16, 1, 1.94, 1.94 );
setScaleKey( spep_0 -3 + 18, 1, 1.95, 1.95 );
setScaleKey( spep_0 -3 + 20, 1, 2, 2 );
setScaleKey( spep_0 -3 + 22, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 24, 1, 2.09, 2.09 );
setScaleKey( spep_0 -3 + 26, 1, 2.13, 2.13 );
setScaleKey( spep_0 -3 + 28, 1, 2.18, 2.18 );
setScaleKey( spep_0 -3 + 30, 1, 2.22, 2.22 );
setScaleKey( spep_0 -3 + 32, 1, 2.27, 2.27 );
setScaleKey( spep_0 -3 + 34, 1, 2.31, 2.31 );
setScaleKey( spep_0 -3 + 36, 1, 2.36, 2.36 );
setScaleKey( spep_0 -3 + 38, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 40, 1, 2.45, 2.45 );
setScaleKey( spep_0 -3 + 42, 1, 2.49, 2.49 );
setScaleKey( spep_0 -3 + 44, 1, 2.53, 2.53 );
setScaleKey( spep_0 -3 + 46, 1, 2.58, 2.58 );
setScaleKey( spep_0 -3 + 48, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 50, 1, 2.62, 2.62 );
setScaleKey( spep_0 -3 + 52, 1, 2.64, 2.64 );
setScaleKey( spep_0 -3 + 54, 1, 2.66, 2.66 );
setScaleKey( spep_0 -3 + 56, 1, 2.67, 2.67 );
setScaleKey( spep_0 -3 + 58, 1, 2.68, 2.68 );
setScaleKey( spep_0 -3 + 60, 1, 2.69, 2.69 );
setScaleKey( spep_0 -3 + 62, 1, 2.7, 2.7 );
setScaleKey( spep_0 -3 + 66, 1, 2.7, 2.7 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 66, 1, 0 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 2, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE001, 83 );

--腕伸ばす
SE002 = playSeVer2( spep_0 + 62, 1334, "",spep_0 + 140, 0, 16, 0.5);
SE003 = playSeVer2( spep_0 + 62, 1320, "",spep_0 + 140, 0, 16, 0.5);
SE004 = playSeVer2( spep_0 + 62, 1326, "",spep_0 + 140, 0, 16, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
spep_c = spep_0 + 128 -4;

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
spep_1 = spep_c + 96;


-------------------------------------------------
-- 伸びた腕でパンチ〜目線カットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 伸びた腕でパンチ〜目線カットイン	ef_003
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 432 -4, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 432 -4, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 432 -4, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 432 -5, base_1f, 255);
setEffAlphaKey( spep_1 + 432 -4, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 伸びた腕でパンチ〜目線カットイン	ef_004
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 432 -4, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 432 -4, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 432 -4, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 432 -5, base_1b, 255);
setEffAlphaKey( spep_1 + 432 -4, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 432 -5, 0, 0, 0, 0, 255);  --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 338;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 40;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, cx + 40, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 122 - 3, 1, 0 );
setDisp( spep_1 + 144 - 3, 1, 1 );
setDisp( spep_1 + 180 - 3, 1, 0 );
setDisp( spep_1 + 270 - 3, 1, 1 );
setDisp( spep_1 + 330 - 3, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 -3 + 6, 1, 108 );
changeAnime( spep_1 -3 + 50, 1, 106 );
changeAnime( spep_1 -3 + 108, 1, 108 );
changeAnime( spep_1 -3 + 270, 1, 5 );

setMoveKey( spep_1 + 0, 1, 21.8, 11.4 , 0 );
setMoveKey( spep_1 -3 + 5, 1, 21.8, 11.4 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 69.8, 27.9 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 107, 21.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 122.4, 38.5 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 116, 11.9 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 118.8, 19.1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 158.4, 1.9 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 117, 15.2 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 121.3, -2.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 139.7, 11 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 144.4, -5.4 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 129.8, 10.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 140.3, 0.5 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 147.1, -3.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 142.1, 2.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 143.4, -5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 150.6, 0.4 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 154, -6.6 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 148, -0.1 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 148.3, -6.9 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 152.1, -4.1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 152.4, -4.3 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 152.6, -4.3 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -16.9, 2.1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -22.3, -1.9 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -57.9, 20 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -55.2, 4.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -35, 20.1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -54.7, 11.6 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -63.8, 27.1 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -64.9, 11.1 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -51.5, 27 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -51.5, 12.5 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -70.5, 29.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -71.1, 13.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -57.3, 29.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -66.4, 22.7 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -62.9, 19.7 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -70.9, 27 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -72.3, 20.9 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -67.5, 27.2 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -70.5, 24.5 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -73.6, 28.2 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -74.5, 21.9 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -69.3, 28 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -71.9, 25.1 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -74.5, 28.5 , 0 );
setMoveKey( spep_1 -3 + 97, 1, -74.5, 28.5 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 30.9, 0.8 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 25.2, 4 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 21.1, 6.2 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 18.7, 7.6 , 0 );
setMoveKey( spep_1 -3 + 107, 1, 17.9, 8 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 26, 24 , 0 );
setMoveKey( spep_1 -3 + 109, 1, 26, 24 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 53.9, -17.1 , 0 );
setMoveKey( spep_1 -3 + 111, 1, 53.9, -17.1 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 88.6, -5.9 , 0 );
setMoveKey( spep_1 -3 + 113, 1, 88.6, -5.9 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 156.2, 95.7 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 156.2, 95.7 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 224.4, 211.7 , 0 );
setMoveKey( spep_1 -3 + 117, 1, 224.4, 211.7 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 312.1, 291.5 , 0 );
setMoveKey( spep_1 -3 + 119, 1, 312.1, 291.5 , 0 );
setMoveKey( spep_1 -3 + 121, 1, 301.5, 302.2 , 0 );	-- out
setMoveKey( spep_1 -3 + 144, 1, -104.7, -179.2 , 0 );	-- in
setMoveKey( spep_1 -3 + 145, 1, -104.7, -179.2 , 0 );
setMoveKey( spep_1 -3 + 146, 1, -51.7, -125.8 , 0 );
setMoveKey( spep_1 -3 + 147, 1, -51.7, -125.8 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 1.4, -72.4 , 0 );
setMoveKey( spep_1 -3 + 149, 1, 1.4, -72.4 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 54.4, -18.9 , 0 );
setMoveKey( spep_1 -3 + 151, 1, 54.4, -18.9 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 66.4, -6.9 , 0 );
setMoveKey( spep_1 -3 + 153, 1, 66.4, -6.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 105.7, 32 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 145, 70.9 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 184.3, 109.8 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 192, 116.4 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 199.7, 122.9 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 207.3, 129.5 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 215, 136 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 222.7, 142.6 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 230.4, 149.1 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 238.1, 155.7 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 245.8, 162.3 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 253.5, 168.8 , 0 );
setMoveKey( spep_1 -3 + 179, 1, 261.1, 175.4 , 0 );	-- out
setMoveKey( spep_1 -3 + 270, 1, 140, 80.6 , 0 );	-- in
setMoveKey( spep_1 -3 + 272, 1, 145.4, 85 , 0 );
setMoveKey( spep_1 -3 + 274, 1, 150.8, 89.4 , 0 );
setMoveKey( spep_1 -3 + 276, 1, 156.3, 93.8 , 0 );
setMoveKey( spep_1 -3 + 278, 1, 161.7, 98.2 , 0 );
setMoveKey( spep_1 -3 + 280, 1, 167.1, 102.6 , 0 );
setMoveKey( spep_1 -3 + 282, 1, 172.5, 107 , 0 );
setMoveKey( spep_1 -3 + 284, 1, 177.9, 111.4 , 0 );
setMoveKey( spep_1 -3 + 286, 1, 183.3, 115.8 , 0 );
setMoveKey( spep_1 -3 + 288, 1, 183.7, 116 , 0 );
setMoveKey( spep_1 -3 + 290, 1, 184.1, 116.3 , 0 );
setMoveKey( spep_1 -3 + 292, 1, 184.5, 116.5 , 0 );
setMoveKey( spep_1 -3 + 294, 1, 185, 116.8 , 0 );
setMoveKey( spep_1 -3 + 296, 1, 185.4, 117.1 , 0 );
setMoveKey( spep_1 -3 + 298, 1, 185.8, 117.3 , 0 );
setMoveKey( spep_1 -3 + 300, 1, 186.2, 117.6 , 0 );
setMoveKey( spep_1 -3 + 302, 1, 186.6, 117.8 , 0 );
setMoveKey( spep_1 -3 + 304, 1, 187, 118.1 , 0 );
setMoveKey( spep_1 -3 + 306, 1, 187.4, 118.4 , 0 );
setMoveKey( spep_1 -3 + 308, 1, 187.8, 118.6 , 0 );
setMoveKey( spep_1 -3 + 310, 1, 188.2, 118.9 , 0 );
setMoveKey( spep_1 -3 + 312, 1, 188.6, 119.1 , 0 );
setMoveKey( spep_1 -3 + 314, 1, 189, 119.4 , 0 );
setMoveKey( spep_1 -3 + 316, 1, 189.5, 119.7 , 0 );
setMoveKey( spep_1 -3 + 318, 1, 189.9, 119.9 , 0 );
setMoveKey( spep_1 -3 + 320, 1, 190.3, 120.2 , 0 );
setMoveKey( spep_1 -3 + 322, 1, 190.7, 120.4 , 0 );
setMoveKey( spep_1 -3 + 324, 1, 191.1, 120.7 , 0 );
setMoveKey( spep_1 -3 + 326, 1, 191.5, 120.9 , 0 );
setMoveKey( spep_1 -3 + 330, 1, 191.9, 121.2 , 0 );

s_1a = 1.10;
s_1b = 1.15;
setScaleKey( spep_1 + 0, 1, 2.25, 2.25 );	--104
setScaleKey( spep_1 -3 + 5, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 6 , 1, 2.35 *s_1a, 2.35 *s_1a );	--108
setScaleKey( spep_1 -3 + 8 , 1, 2.94 *s_1a, 2.94 *s_1a );
setScaleKey( spep_1 -3 + 10, 1, 3.52 *s_1a, 3.52 *s_1a );
setScaleKey( spep_1 -3 + 12, 1, 2.94 *s_1a, 2.94 *s_1a );
setScaleKey( spep_1 -3 + 14, 1, 2.35 *s_1a, 2.35 *s_1a );
setScaleKey( spep_1 -3 + 16, 1, 2.94 *s_1a, 2.94 *s_1a );
setScaleKey( spep_1 -3 + 18, 1, 2.35 *s_1a, 2.35 *s_1a );
setScaleKey( spep_1 -3 + 49, 1, 2.35 *s_1a, 2.35 *s_1a );
setScaleKey( spep_1 -3 + 50, 1, 2.25, 2.25 );	--106
setScaleKey( spep_1 -3 + 52, 1, 2.81, 2.81 );
setScaleKey( spep_1 -3 + 54, 1, 3.37, 3.37 );
setScaleKey( spep_1 -3 + 56, 1, 2.81, 2.81 );
setScaleKey( spep_1 -3 + 58, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 60, 1, 2.81, 2.81 );
setScaleKey( spep_1 -3 + 62, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 96, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 97, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 98, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 107, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 108, 1, 1.24 *s_1b, 1.24 *s_1b );	--108
setScaleKey( spep_1 -3 + 109, 1, 1.24 *s_1b, 1.24 *s_1b );
setScaleKey( spep_1 -3 + 110, 1, 1.55 *s_1b, 1.55 *s_1b );
setScaleKey( spep_1 -3 + 111, 1, 1.55 *s_1b, 1.55 *s_1b );
setScaleKey( spep_1 -3 + 112, 1, 1.86 *s_1b, 1.86 *s_1b );
setScaleKey( spep_1 -3 + 113, 1, 1.86 *s_1b, 1.86 *s_1b );
setScaleKey( spep_1 -3 + 114, 1, 1.55 *s_1b, 1.55 *s_1b );
setScaleKey( spep_1 -3 + 115, 1, 1.55 *s_1b, 1.55 *s_1b );
setScaleKey( spep_1 -3 + 116, 1, 1.24 *s_1b, 1.24 *s_1b );
setScaleKey( spep_1 -3 + 117, 1, 1.24 *s_1b, 1.24 *s_1b );
setScaleKey( spep_1 -3 + 118, 1, 1.55 *s_1b, 1.55 *s_1b );
setScaleKey( spep_1 -3 + 119, 1, 1.55 *s_1b, 1.55 *s_1b );
setScaleKey( spep_1 -3 + 120, 1, 1.24 *s_1b, 1.24 *s_1b );
setScaleKey( spep_1 -3 + 121, 1, 1.24 *s_1b, 1.24 *s_1b );	-- out
setScaleKey( spep_1 -3 + 144, 1, 0.92 *s_1b, 0.92 *s_1b );	-- in
setScaleKey( spep_1 -3 + 145, 1, 0.92 *s_1b, 0.92 *s_1b );
setScaleKey( spep_1 -3 + 146, 1, 0.86 *s_1b, 0.86 *s_1b );
setScaleKey( spep_1 -3 + 147, 1, 0.86 *s_1b, 0.86 *s_1b );
setScaleKey( spep_1 -3 + 148, 1, 0.80 *s_1b, 0.80 *s_1b );
setScaleKey( spep_1 -3 + 149, 1, 0.80 *s_1b, 0.80 *s_1b );
setScaleKey( spep_1 -3 + 150, 1, 0.74 *s_1b, 0.74 *s_1b );
setScaleKey( spep_1 -3 + 151, 1, 0.74 *s_1b, 0.74 *s_1b );
setScaleKey( spep_1 -3 + 152, 1, 0.71 *s_1b, 0.71 *s_1b );
setScaleKey( spep_1 -3 + 153, 1, 0.71 *s_1b, 0.71 *s_1b );
setScaleKey( spep_1 -3 + 154, 1, 0.70 *s_1b, 0.70 *s_1b );
setScaleKey( spep_1 -3 + 156, 1, 0.68 *s_1b, 0.68 *s_1b );
setScaleKey( spep_1 -3 + 158, 1, 0.67 *s_1b, 0.67 *s_1b );
setScaleKey( spep_1 -3 + 179, 1, 0.67 *s_1b, 0.67 *s_1b );	-- out
setScaleKey( spep_1 -3 + 270, 1, 0.45, 0.45 );	-- in 5
setScaleKey( spep_1 -3 + 272, 1, 0.43, 0.43 );
setScaleKey( spep_1 -3 + 274, 1, 0.41, 0.41 );
setScaleKey( spep_1 -3 + 276, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 278, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 280, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 282, 1, 0.32, 0.32 );
setScaleKey( spep_1 -3 + 284, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 286, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 288, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 296, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 298, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 306, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 308, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 316, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 318, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 324, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 326, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 330, 1, 0.23, 0.23 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 49, 1, 0 );
setRotateKey( spep_1 -3 + 50, 1, -40.1 );
setRotateKey( spep_1 -3 + 107, 1, -40.1 );
setRotateKey( spep_1 -3 + 108, 1, -8 );
setRotateKey( spep_1 -3 + 121, 1, -8 );	-- out
setRotateKey( spep_1 -3 + 144, 1, -21 );	-- in
setRotateKey( spep_1 -3 + 145, 1, -21 );
setRotateKey( spep_1 -3 + 146, 1, -21 );
setRotateKey( spep_1 -3 + 147, 1, -21 );
setRotateKey( spep_1 -3 + 148, 1, -20.9 );
setRotateKey( spep_1 -3 + 154, 1, -20.9 );
setRotateKey( spep_1 -3 + 156, 1, -20.8 );
setRotateKey( spep_1 -3 + 179, 1, -20.8 );	-- out
setRotateKey( spep_1 -3 + 270, 1, 67.2 );	-- in
setRotateKey( spep_1 -3 + 298, 1, 67.2 );
setRotateKey( spep_1 -3 + 300, 1, 67.1 );
setRotateKey( spep_1 -3 + 330, 1, 67.1 );


-- ** 音 ** --
--パンチ１
SE006 = playSeVer2( spep_1 + 0, 1003, "", 0, 0, 0, -1);

--腕伸びる
SE007 = playSeVer2( spep_1 + -2, 1326, "",spep_1 + 318, 0, 66, -1);
setSeVolumeByWorkId( spep_1 + -2, SE007, 58 );

SE008 = playSeVer2( spep_1 + -2, 1320, "",spep_1 + 104, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + -2, SE008, 45 );
setPitch( spep_1 + -2, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );

--パンチ１
SE009 = playSeVer2( spep_1 + 4, 1110, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 4, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 4, 1047, "", 0, 0, 0, -1);

--パンチ２
SE012 = playSeVer2( spep_1 + 38, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 46, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 46, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 46, 1047, "", 0, 0, 0, -1);

--腕伸びる
SE016 = playSeVer2( spep_1 + 100, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 100, SE016, 67 );

--パンチ３
SE017 = playSeVer2( spep_1 + 106, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 106, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 106, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE020 = playSeVer2( spep_1 + 146, 1027, "", 0, 0, 0, -1);

--森から飛び出してくる
SE021 = playSeVer2( spep_1 + 188, 1116, "",spep_1 + 258, 0, 40, -1);
SE022 = playSeVer2( spep_1 + 212, 1151, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_1 + 222, 1151, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 234, 1151, "", 0, 0, 0, -1);

--画面遷移
SE025 = playSeVer2( spep_1 + 250, 1072, "", 0, 0, 0, 0.5);

--気弾溜め
SE026 = playSeVer2( spep_1 + 326, 1296, "",spep_1 + 446, 0, 14, -1);
SE027 = playSeVer2( spep_1 + 326, 1122, "",spep_1 + 446, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 326, SE027, 72 );

--顔カットイン
SE028 = playSeVer2( spep_1 + 348, 1018, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_2 = spep_1 + 432 -4;

-------------------------------------------------
-- 気弾を放つ〜気弾に飲まれる
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- 気弾を放つ〜気弾に飲まれる	ef_005
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 176 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 176 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 176 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 176 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 176 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- 気弾を放つ〜気弾に飲まれる	ef_006
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 176 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 176 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 176 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 176 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 176 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 176 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 60, 1, 1 );
setDisp( spep_2 -4 + 176, 1, 0 );

setBlendColor( spep_2 -3 + 144, 1, 2, 0, 0, 0, 0.8 );
setBlendColor( spep_2 -4 + 176, 1, 2, 0, 0, 0, 0 );

changeAnime( spep_2 -3 + 60, 1, 5 );
changeAnime( spep_2 -3 + 120, 1, 106 );
changeAnime( spep_2 -3 + 144, 1, 108 );

setMoveKey( spep_2 -3 + 60, 1, 615.4, 123.6 , 0 );
setMoveKey( spep_2 -3 + 61, 1, 615.4, 123.6 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 599.7, 123.5 , 0 );
setMoveKey( spep_2 -3 + 63, 1, 599.7, 123.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 583.1, 123.4 , 0 );
setMoveKey( spep_2 -3 + 65, 1, 583.1, 123.4 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 565.7, 123.1 , 0 );
setMoveKey( spep_2 -3 + 67, 1, 565.7, 123.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 547.6, 122.8 , 0 );
setMoveKey( spep_2 -3 + 69, 1, 547.6, 122.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 528.9, 122.4 , 0 );
setMoveKey( spep_2 -3 + 71, 1, 528.9, 122.4 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 509.4, 121.8 , 0 );
setMoveKey( spep_2 -3 + 73, 1, 509.4, 121.8 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 431.8, 121.2 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 431.8, 121.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 354.3, 120.5 , 0 );
setMoveKey( spep_2 -3 + 77, 1, 354.3, 120.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 277.5, 119.7 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 271, 119 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 264.8, 118.3 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 259.1, 117.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 253.6, 117.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 248.5, 116.5 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 243.8, 116 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 239.4, 115.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 235.3, 115 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 231.6, 114.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 228.2, 114.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 225.1, 113.8 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 222.3, 113.5 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 219.9, 113.3 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 217.8, 113 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 216.1, 112.8 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 214.6, 112.6 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 213.5, 112.5 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 212.7, 112.4 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 212.2, 112.4 , 0 );
setMoveKey( spep_2 -3 + 119, 1, 212.1, 112.4 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 78.2, 90 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 89.7, 97 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 64.3, 77.3 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 88.5, 76.1 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 68.9, 101.6 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 78.2, 90 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 89.7, 97 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 64.3, 77.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 88.5, 76.1 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 68.9, 101.6 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 78.2, 90 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 89.7, 97 , 0 );
setMoveKey( spep_2 -3 + 145, 1, 98.7, 154.5 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 123.3, 153.4 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 104.7, 179.3 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 115.7, 168.5 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 108.8, 181.1 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 121.2, 170.8 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 136.5, 179.4 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 115.5, 161.6 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 144.8, 162.5 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 131, 182.1 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 146.8, 181.7 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 165.5, 191.6 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 148, 175.3 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 180.8, 177.7 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 179.6, 195.5 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 189.5, 199.6 , 0 );
setMoveKey( spep_2 -4 + 176, 1, 189.5, 199.6 , 0 );

s_2 = 1.13;
setScaleKey( spep_2 -3 + 60, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 70, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 72, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 92, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 94, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 119, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 120, 1, 1.81, 1.81 );
setScaleKey( spep_2 -3 + 143, 1, 1.81, 1.81 );
setScaleKey( spep_2 -3 + 144, 1, 1.90 *s_2, 1.90 *s_2 );	--108
setScaleKey( spep_2 -3 + 150, 1, 1.90 *s_2, 1.90 *s_2 );
setScaleKey( spep_2 -3 + 152, 1, 1.89 *s_2, 1.89 *s_2 );
setScaleKey( spep_2 -3 + 156, 1, 1.89 *s_2, 1.89 *s_2 );
setScaleKey( spep_2 -3 + 158, 1, 1.88 *s_2, 1.88 *s_2 );
setScaleKey( spep_2 -3 + 160, 1, 1.88 *s_2, 1.88 *s_2 );
setScaleKey( spep_2 -3 + 162, 1, 1.87 *s_2, 1.87 *s_2 );
setScaleKey( spep_2 -3 + 164, 1, 1.87 *s_2, 1.87 *s_2 );
setScaleKey( spep_2 -3 + 166, 1, 1.86 *s_2, 1.86 *s_2 );
setScaleKey( spep_2 -3 + 168, 1, 1.85 *s_2, 1.85 *s_2 );
setScaleKey( spep_2 -3 + 170, 1, 1.84 *s_2, 1.84 *s_2 );
setScaleKey( spep_2 -3 + 172, 1, 1.84 *s_2, 1.84 *s_2 );
setScaleKey( spep_2 -3 + 174, 1, 1.83 *s_2, 1.83 *s_2 );
setScaleKey( spep_2 -4 + 176, 1, 1.83 *s_2, 1.83 *s_2 );

setRotateKey( spep_2 -3 + 60, 1, 67.2 );
setRotateKey( spep_2 -3 + 119, 1, 67.2 );
setRotateKey( spep_2 -3 + 120, 1, -88 );
setRotateKey( spep_2 -3 + 143, 1, -88 );
setRotateKey( spep_2 -3 + 144, 1, -16.1 );
setRotateKey( spep_2 -3 + 150, 1, -16.1 );
setRotateKey( spep_2 -3 + 152, 1, -16.2 );
setRotateKey( spep_2 -3 + 154, 1, -16.3 );
setRotateKey( spep_2 -3 + 156, 1, -16.3 );
setRotateKey( spep_2 -3 + 158, 1, -16.4 );
setRotateKey( spep_2 -3 + 160, 1, -16.5 );
setRotateKey( spep_2 -3 + 162, 1, -16.7 );
setRotateKey( spep_2 -3 + 164, 1, -16.8 );
setRotateKey( spep_2 -3 + 166, 1, -16.9 );
setRotateKey( spep_2 -3 + 168, 1, -17.1 );
setRotateKey( spep_2 -3 + 170, 1, -17.3 );
setRotateKey( spep_2 -3 + 172, 1, -17.5 );
setRotateKey( spep_2 -3 + 174, 1, -17.7 );
setRotateKey( spep_2 -4 + 176, 1, -17.7 );


-- ** 音 ** --
--気弾発射
SE029 = playSeVer2( spep_2 + 0, 1146, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 2, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE030, 140 );

--気弾飛んでいく
SE031 = playSeVer2( spep_2 + 64, 1021, "", 0, 0, 0, -1);

--気弾敵ヒット
SE032 = playSeVer2( spep_2 + 120, 1011, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 120, 1024, "", 0, 0, 0, -1);

--爆発
SE034 = playSeVer2( spep_2 + 150, 1067, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 176 -4;

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); -- フィニッシュ	ef_007
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 180 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, 1.0, 1.0);
setEffScaleKey( spep_3 + 180 -4, base_3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 180 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 180 -4, base_3, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 180 -4, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
SE035 = playSeVer2( spep_3 + 0, 1159, "", 0, 0, 0, -1);

--風圧
SE036 = playSeVer2( spep_3 + 30, 1259, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 20 -3); -- ダメージ表示フレーム
endPhase( spep_3 + 180 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 手が伸びる
-------------------------------------------------
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 手が伸びる	ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + 128 -4, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + 128 -4, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + 128 -4, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + 128 -5, base_0f, 255);
setEffAlphaKey( spep_0 + 128 -4, base_0f, 0);

base_0b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 手が伸びる	ef_002
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 128 -4, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + 128 -4, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 128 -4, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 128 -5, base_0b, 255);
setEffAlphaKey( spep_0 + 128 -4, base_0b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 128 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 118 );

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 66, 1, 0 );

-- setMoveKey( spep_0 -3 + 0, 1, 112.9, 39 , 0 );
setMoveKey( spep_0 + 0, 1, 113.6, 39.1 , 0 );
setMoveKey( spep_0 + 1, 1, 115.6, 39.4 , 0 );
setMoveKey( spep_0 + 2, 1, 115.6, 39.4 , 0 );
setMoveKey( spep_0 + 3, 1, 118.8, 40.0 , 0 );
setMoveKey( spep_0 + 4, 1, 118.8, 40.0 , 0 );
setMoveKey( spep_0 + 5, 1, 123.4, 40.8 , 0 );
setMoveKey( spep_0 + 6, 1, 123.4, 40.8 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 129.3, 41.8 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 136.5, 43 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 145, 44.5 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 154.8, 46.2 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 166, 48.1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 196.8, 55.7 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 227.7, 63.3 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 258.5, 70.9 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 289.4, 78.5 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 320.2, 86.1 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 351.1, 93.7 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 381.9, 101.2 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 412.8, 108.8 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 443.6, 116.4 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 474.5, 124 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 505.3, 131.6 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 536.2, 139.2 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 567.1, 146.8 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 597.9, 154.3 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 612.7, 158.5 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 626, 162.2 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 637.8, 165.5 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 647.9, 168.3 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 656.5, 170.7 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 663.5, 172.7 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 669, 174.2 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 672.9, 175.3 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 675.3, 176 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 676, 176.3 , 0 );

setScaleKey( spep_0 + 0, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 1, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 2, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 3, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 4, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 5, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 6, 1, 1.89, 1.89 );
setScaleKey( spep_0 -3 + 10, 1, 1.9, 1.9 );
setScaleKey( spep_0 -3 + 12, 1, 1.91, 1.91 );
setScaleKey( spep_0 -3 + 14, 1, 1.92, 1.92 );
setScaleKey( spep_0 -3 + 16, 1, 1.94, 1.94 );
setScaleKey( spep_0 -3 + 18, 1, 1.95, 1.95 );
setScaleKey( spep_0 -3 + 20, 1, 2, 2 );
setScaleKey( spep_0 -3 + 22, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 24, 1, 2.09, 2.09 );
setScaleKey( spep_0 -3 + 26, 1, 2.13, 2.13 );
setScaleKey( spep_0 -3 + 28, 1, 2.18, 2.18 );
setScaleKey( spep_0 -3 + 30, 1, 2.22, 2.22 );
setScaleKey( spep_0 -3 + 32, 1, 2.27, 2.27 );
setScaleKey( spep_0 -3 + 34, 1, 2.31, 2.31 );
setScaleKey( spep_0 -3 + 36, 1, 2.36, 2.36 );
setScaleKey( spep_0 -3 + 38, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 40, 1, 2.45, 2.45 );
setScaleKey( spep_0 -3 + 42, 1, 2.49, 2.49 );
setScaleKey( spep_0 -3 + 44, 1, 2.53, 2.53 );
setScaleKey( spep_0 -3 + 46, 1, 2.58, 2.58 );
setScaleKey( spep_0 -3 + 48, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 50, 1, 2.62, 2.62 );
setScaleKey( spep_0 -3 + 52, 1, 2.64, 2.64 );
setScaleKey( spep_0 -3 + 54, 1, 2.66, 2.66 );
setScaleKey( spep_0 -3 + 56, 1, 2.67, 2.67 );
setScaleKey( spep_0 -3 + 58, 1, 2.68, 2.68 );
setScaleKey( spep_0 -3 + 60, 1, 2.69, 2.69 );
setScaleKey( spep_0 -3 + 62, 1, 2.7, 2.7 );
setScaleKey( spep_0 -3 + 66, 1, 2.7, 2.7 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 66, 1, 0 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 2, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE001, 83 );

--腕伸ばす
SE002 = playSeVer2( spep_0 + 62, 1334, "",spep_0 + 140, 0, 16, 0.5);
SE003 = playSeVer2( spep_0 + 62, 1320, "",spep_0 + 140, 0, 16, 0.5);
SE004 = playSeVer2( spep_0 + 62, 1326, "",spep_0 + 140, 0, 16, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
spep_c = spep_0 + 128 -4;

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
spep_1 = spep_c + 96;


-------------------------------------------------
-- 伸びた腕でパンチ〜目線カットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 伸びた腕でパンチ〜目線カットイン	ef_003
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 432 -4, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 432 -4, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 432 -4, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 432 -5, base_1f, 255);
setEffAlphaKey( spep_1 + 432 -4, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 伸びた腕でパンチ〜目線カットイン	ef_004
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 432 -4, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 432 -4, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 432 -4, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 432 -5, base_1b, 255);
setEffAlphaKey( spep_1 + 432 -4, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 432 -5, 0, 0, 0, 0, 255);  --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 338;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = -40;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, cx - 40, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 122 - 3, 1, 0 );
setDisp( spep_1 + 144 - 3, 1, 1 );
setDisp( spep_1 + 180 - 3, 1, 0 );
setDisp( spep_1 + 270 - 3, 1, 1 );
setDisp( spep_1 + 330 - 3, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 -3 + 6, 1, 108 );
changeAnime( spep_1 -3 + 50, 1, 106 );
changeAnime( spep_1 -3 + 108, 1, 108 );
changeAnime( spep_1 -3 + 270, 1, 5 );

setMoveKey( spep_1 + 0, 1, 21.8, 11.4 , 0 );
setMoveKey( spep_1 -3 + 5, 1, 21.8, 11.4 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 69.8, 27.9 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 107, 21.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 122.4, 38.5 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 116, 11.9 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 118.8, 19.1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 158.4, 1.9 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 117, 15.2 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 121.3, -2.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 139.7, 11 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 144.4, -5.4 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 129.8, 10.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 140.3, 0.5 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 147.1, -3.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 142.1, 2.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 143.4, -5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 150.6, 0.4 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 154, -6.6 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 148, -0.1 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 148.3, -6.9 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 152.1, -4.1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 152.4, -4.3 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 152.6, -4.3 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -16.9, 2.1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -22.3, -1.9 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -57.9, 20 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -55.2, 4.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -35, 20.1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -54.7, 11.6 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -63.8, 27.1 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -64.9, 11.1 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -51.5, 27 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -51.5, 12.5 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -70.5, 29.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -71.1, 13.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -57.3, 29.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -66.4, 22.7 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -62.9, 19.7 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -70.9, 27 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -72.3, 20.9 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -67.5, 27.2 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -70.5, 24.5 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -73.6, 28.2 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -74.5, 21.9 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -69.3, 28 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -71.9, 25.1 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -74.5, 28.5 , 0 );
setMoveKey( spep_1 -3 + 97, 1, -71.9, 25.1 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 30.9, 0.8 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 25.2, 4 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 21.1, 6.2 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 18.7, 7.6 , 0 );
setMoveKey( spep_1 -3 + 107, 1, 17.9, 8 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 26, 24 , 0 );
setMoveKey( spep_1 -3 + 109, 1, 26, 24 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 53.9, -17.1 , 0 );
setMoveKey( spep_1 -3 + 111, 1, 53.9, -17.1 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 88.6, -5.9 , 0 );
setMoveKey( spep_1 -3 + 113, 1, 88.6, -5.9 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 156.2, 95.7 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 156.2, 95.7 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 224.4, 211.7 , 0 );
setMoveKey( spep_1 -3 + 117, 1, 224.4, 211.7 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 312.1, 291.5 , 0 );
setMoveKey( spep_1 -3 + 119, 1, 312.1, 291.5 , 0 );
setMoveKey( spep_1 -3 + 121, 1, 301.5, 302.2 , 0 );	-- out
setMoveKey( spep_1 -3 + 144, 1, -104.7, -179.2 , 0 );	-- in
setMoveKey( spep_1 -3 + 145, 1, -104.7, -179.2 , 0 );
setMoveKey( spep_1 -3 + 146, 1, -51.7, -125.8 , 0 );
setMoveKey( spep_1 -3 + 147, 1, -51.7, -125.8 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 1.4, -72.4 , 0 );
setMoveKey( spep_1 -3 + 149, 1, 1.4, -72.4 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 54.4, -18.9 , 0 );
setMoveKey( spep_1 -3 + 151, 1, 54.4, -18.9 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 66.4, -6.9 , 0 );
setMoveKey( spep_1 -3 + 153, 1, 66.4, -6.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 105.7, 32 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 145, 70.9 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 184.3, 109.8 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 192, 116.4 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 199.7, 122.9 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 207.3, 129.5 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 215, 136 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 222.7, 142.6 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 230.4, 149.1 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 238.1, 155.7 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 245.8, 162.3 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 253.5, 168.8 , 0 );
setMoveKey( spep_1 -3 + 179, 1, 261.1, 175.4 , 0 );	-- out
setMoveKey( spep_1 -3 + 270, 1, 140, 80.6 , 0 );	-- in
setMoveKey( spep_1 -3 + 272, 1, 145.4, 85 , 0 );
setMoveKey( spep_1 -3 + 274, 1, 150.8, 89.4 , 0 );
setMoveKey( spep_1 -3 + 276, 1, 156.3, 93.8 , 0 );
setMoveKey( spep_1 -3 + 278, 1, 161.7, 98.2 , 0 );
setMoveKey( spep_1 -3 + 280, 1, 167.1, 102.6 , 0 );
setMoveKey( spep_1 -3 + 282, 1, 172.5, 107 , 0 );
setMoveKey( spep_1 -3 + 284, 1, 177.9, 111.4 , 0 );
setMoveKey( spep_1 -3 + 286, 1, 183.3, 115.8 , 0 );
setMoveKey( spep_1 -3 + 288, 1, 183.7, 116 , 0 );
setMoveKey( spep_1 -3 + 290, 1, 184.1, 116.3 , 0 );
setMoveKey( spep_1 -3 + 292, 1, 184.5, 116.5 , 0 );
setMoveKey( spep_1 -3 + 294, 1, 185, 116.8 , 0 );
setMoveKey( spep_1 -3 + 296, 1, 185.4, 117.1 , 0 );
setMoveKey( spep_1 -3 + 298, 1, 185.8, 117.3 , 0 );
setMoveKey( spep_1 -3 + 300, 1, 186.2, 117.6 , 0 );
setMoveKey( spep_1 -3 + 302, 1, 186.6, 117.8 , 0 );
setMoveKey( spep_1 -3 + 304, 1, 187, 118.1 , 0 );
setMoveKey( spep_1 -3 + 306, 1, 187.4, 118.4 , 0 );
setMoveKey( spep_1 -3 + 308, 1, 187.8, 118.6 , 0 );
setMoveKey( spep_1 -3 + 310, 1, 188.2, 118.9 , 0 );
setMoveKey( spep_1 -3 + 312, 1, 188.6, 119.1 , 0 );
setMoveKey( spep_1 -3 + 314, 1, 189, 119.4 , 0 );
setMoveKey( spep_1 -3 + 316, 1, 189.5, 119.7 , 0 );
setMoveKey( spep_1 -3 + 318, 1, 189.9, 119.9 , 0 );
setMoveKey( spep_1 -3 + 320, 1, 190.3, 120.2 , 0 );
setMoveKey( spep_1 -3 + 322, 1, 190.7, 120.4 , 0 );
setMoveKey( spep_1 -3 + 324, 1, 191.1, 120.7 , 0 );
setMoveKey( spep_1 -3 + 326, 1, 191.5, 120.9 , 0 );
setMoveKey( spep_1 -3 + 330, 1, 191.9, 121.2 , 0 );

s_1a = 1.10;
s_1b = 1.15;
setScaleKey( spep_1 + 0, 1, 2.25, 2.25 );	--104
setScaleKey( spep_1 -3 + 5, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 6 , 1, 2.35 *s_1a, 2.35 *s_1a );	--108
setScaleKey( spep_1 -3 + 8 , 1, 2.94 *s_1a, 2.94 *s_1a );
setScaleKey( spep_1 -3 + 10, 1, 3.52 *s_1a, 3.52 *s_1a );
setScaleKey( spep_1 -3 + 12, 1, 2.94 *s_1a, 2.94 *s_1a );
setScaleKey( spep_1 -3 + 14, 1, 2.35 *s_1a, 2.35 *s_1a );
setScaleKey( spep_1 -3 + 16, 1, 2.94 *s_1a, 2.94 *s_1a );
setScaleKey( spep_1 -3 + 18, 1, 2.35 *s_1a, 2.35 *s_1a );
setScaleKey( spep_1 -3 + 49, 1, 2.35 *s_1a, 2.35 *s_1a );
setScaleKey( spep_1 -3 + 50, 1, 2.25, 2.25 );	--106
setScaleKey( spep_1 -3 + 52, 1, 2.81, 2.81 );
setScaleKey( spep_1 -3 + 54, 1, 3.37, 3.37 );
setScaleKey( spep_1 -3 + 56, 1, 2.81, 2.81 );
setScaleKey( spep_1 -3 + 58, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 60, 1, 2.81, 2.81 );
setScaleKey( spep_1 -3 + 62, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 96, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 97, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 98, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 107, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 108, 1, 1.24 *s_1b, 1.24 *s_1b );	--108
setScaleKey( spep_1 -3 + 109, 1, 1.24 *s_1b, 1.24 *s_1b );
setScaleKey( spep_1 -3 + 110, 1, 1.55 *s_1b, 1.55 *s_1b );
setScaleKey( spep_1 -3 + 111, 1, 1.55 *s_1b, 1.55 *s_1b );
setScaleKey( spep_1 -3 + 112, 1, 1.86 *s_1b, 1.86 *s_1b );
setScaleKey( spep_1 -3 + 113, 1, 1.86 *s_1b, 1.86 *s_1b );
setScaleKey( spep_1 -3 + 114, 1, 1.55 *s_1b, 1.55 *s_1b );
setScaleKey( spep_1 -3 + 115, 1, 1.55 *s_1b, 1.55 *s_1b );
setScaleKey( spep_1 -3 + 116, 1, 1.24 *s_1b, 1.24 *s_1b );
setScaleKey( spep_1 -3 + 117, 1, 1.24 *s_1b, 1.24 *s_1b );
setScaleKey( spep_1 -3 + 118, 1, 1.55 *s_1b, 1.55 *s_1b );
setScaleKey( spep_1 -3 + 119, 1, 1.55 *s_1b, 1.55 *s_1b );
setScaleKey( spep_1 -3 + 120, 1, 1.24 *s_1b, 1.24 *s_1b );
setScaleKey( spep_1 -3 + 121, 1, 1.24 *s_1b, 1.24 *s_1b );	-- out
setScaleKey( spep_1 -3 + 144, 1, 0.92 *s_1b, 0.92 *s_1b );	-- in
setScaleKey( spep_1 -3 + 145, 1, 0.92 *s_1b, 0.92 *s_1b );
setScaleKey( spep_1 -3 + 146, 1, 0.86 *s_1b, 0.86 *s_1b );
setScaleKey( spep_1 -3 + 147, 1, 0.86 *s_1b, 0.86 *s_1b );
setScaleKey( spep_1 -3 + 148, 1, 0.80 *s_1b, 0.80 *s_1b );
setScaleKey( spep_1 -3 + 149, 1, 0.80 *s_1b, 0.80 *s_1b );
setScaleKey( spep_1 -3 + 150, 1, 0.74 *s_1b, 0.74 *s_1b );
setScaleKey( spep_1 -3 + 151, 1, 0.74 *s_1b, 0.74 *s_1b );
setScaleKey( spep_1 -3 + 152, 1, 0.71 *s_1b, 0.71 *s_1b );
setScaleKey( spep_1 -3 + 153, 1, 0.71 *s_1b, 0.71 *s_1b );
setScaleKey( spep_1 -3 + 154, 1, 0.70 *s_1b, 0.70 *s_1b );
setScaleKey( spep_1 -3 + 156, 1, 0.68 *s_1b, 0.68 *s_1b );
setScaleKey( spep_1 -3 + 158, 1, 0.67 *s_1b, 0.67 *s_1b );
setScaleKey( spep_1 -3 + 179, 1, 0.67 *s_1b, 0.67 *s_1b );	-- out
setScaleKey( spep_1 -3 + 270, 1, 0.45, 0.45 );	-- in 5
setScaleKey( spep_1 -3 + 272, 1, 0.43, 0.43 );
setScaleKey( spep_1 -3 + 274, 1, 0.41, 0.41 );
setScaleKey( spep_1 -3 + 276, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 278, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 280, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 282, 1, 0.32, 0.32 );
setScaleKey( spep_1 -3 + 284, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 286, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 288, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 296, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 298, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 306, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 308, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 316, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 318, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 324, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 326, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 330, 1, 0.23, 0.23 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 49, 1, 0 );
setRotateKey( spep_1 -3 + 50, 1, -40.1 );
setRotateKey( spep_1 -3 + 107, 1, -40.1 );
setRotateKey( spep_1 -3 + 108, 1, -8 );
setRotateKey( spep_1 -3 + 121, 1, -8 );	-- out
setRotateKey( spep_1 -3 + 144, 1, -21 );	-- in
setRotateKey( spep_1 -3 + 145, 1, -21 );
setRotateKey( spep_1 -3 + 146, 1, -21 );
setRotateKey( spep_1 -3 + 147, 1, -21 );
setRotateKey( spep_1 -3 + 148, 1, -20.9 );
setRotateKey( spep_1 -3 + 154, 1, -20.9 );
setRotateKey( spep_1 -3 + 156, 1, -20.8 );
setRotateKey( spep_1 -3 + 179, 1, -20.8 );	-- out
setRotateKey( spep_1 -3 + 270, 1, 67.2 );	-- in
setRotateKey( spep_1 -3 + 298, 1, 67.2 );
setRotateKey( spep_1 -3 + 300, 1, 67.1 );
setRotateKey( spep_1 -3 + 330, 1, 67.1 );


-- ** 音 ** --
--パンチ１
SE006 = playSeVer2( spep_1 + 0, 1003, "", 0, 0, 0, -1);

--腕伸びる
SE007 = playSeVer2( spep_1 + -2, 1326, "",spep_1 + 318, 0, 66, -1);
setSeVolumeByWorkId( spep_1 + -2, SE007, 58 );

SE008 = playSeVer2( spep_1 + -2, 1320, "",spep_1 + 104, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + -2, SE008, 45 );
setPitch( spep_1 + -2, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );

--パンチ１
SE009 = playSeVer2( spep_1 + 4, 1110, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 4, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 4, 1047, "", 0, 0, 0, -1);

--パンチ２
SE012 = playSeVer2( spep_1 + 38, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 46, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 46, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 46, 1047, "", 0, 0, 0, -1);

--腕伸びる
SE016 = playSeVer2( spep_1 + 100, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 100, SE016, 67 );

--パンチ３
SE017 = playSeVer2( spep_1 + 106, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 106, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 106, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE020 = playSeVer2( spep_1 + 146, 1027, "", 0, 0, 0, -1);

--森から飛び出してくる
SE021 = playSeVer2( spep_1 + 188, 1116, "",spep_1 + 258, 0, 40, -1);
SE022 = playSeVer2( spep_1 + 212, 1151, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_1 + 222, 1151, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 234, 1151, "", 0, 0, 0, -1);

--画面遷移
SE025 = playSeVer2( spep_1 + 250, 1072, "", 0, 0, 0, 0.5);

--気弾溜め
SE026 = playSeVer2( spep_1 + 326, 1296, "",spep_1 + 446, 0, 14, -1);
SE027 = playSeVer2( spep_1 + 326, 1122, "",spep_1 + 446, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 326, SE027, 72 );

--顔カットイン
SE028 = playSeVer2( spep_1 + 348, 1018, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_2 = spep_1 + 432 -4;

-------------------------------------------------
-- 気弾を放つ〜気弾に飲まれる
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- 気弾を放つ〜気弾に飲まれる	ef_005
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 176 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 176 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 176 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 176 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 176 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03br, 0x80, -1, 0, 0, 0); -- 気弾を放つ〜気弾に飲まれる	ef_006
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 176 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 176 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 176 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 176 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 176 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 176 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 60, 1, 1 );
setDisp( spep_2 -4 + 176, 1, 0 );

setBlendColor( spep_2 -3 + 144, 1, 2, 0, 0, 0, 0.8 );
setBlendColor( spep_2 -4 + 176, 1, 2, 0, 0, 0, 0 );

changeAnime( spep_2 -3 + 60, 1, 5 );
changeAnime( spep_2 -3 + 120, 1, 106 );
changeAnime( spep_2 -3 + 144, 1, 108 );

setMoveKey( spep_2 -3 + 60, 1, 615.4, 123.6 , 0 );
setMoveKey( spep_2 -3 + 61, 1, 615.4, 123.6 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 599.7, 123.5 , 0 );
setMoveKey( spep_2 -3 + 63, 1, 599.7, 123.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 583.1, 123.4 , 0 );
setMoveKey( spep_2 -3 + 65, 1, 583.1, 123.4 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 565.7, 123.1 , 0 );
setMoveKey( spep_2 -3 + 67, 1, 565.7, 123.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 547.6, 122.8 , 0 );
setMoveKey( spep_2 -3 + 69, 1, 547.6, 122.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 528.9, 122.4 , 0 );
setMoveKey( spep_2 -3 + 71, 1, 528.9, 122.4 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 509.4, 121.8 , 0 );
setMoveKey( spep_2 -3 + 73, 1, 509.4, 121.8 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 431.8, 121.2 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 431.8, 121.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 354.3, 120.5 , 0 );
setMoveKey( spep_2 -3 + 77, 1, 354.3, 120.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 277.5, 119.7 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 271, 119 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 264.8, 118.3 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 259.1, 117.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 253.6, 117.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 248.5, 116.5 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 243.8, 116 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 239.4, 115.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 235.3, 115 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 231.6, 114.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 228.2, 114.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 225.1, 113.8 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 222.3, 113.5 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 219.9, 113.3 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 217.8, 113 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 216.1, 112.8 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 214.6, 112.6 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 213.5, 112.5 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 212.7, 112.4 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 212.2, 112.4 , 0 );
setMoveKey( spep_2 -3 + 119, 1, 212.1, 112.4 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 78.2, 90 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 89.7, 97 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 64.3, 77.3 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 88.5, 76.1 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 68.9, 101.6 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 78.2, 90 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 89.7, 97 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 64.3, 77.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 88.5, 76.1 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 68.9, 101.6 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 78.2, 90 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 89.7, 97 , 0 );
setMoveKey( spep_2 -3 + 145, 1, 98.7, 154.5 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 123.3, 153.4 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 104.7, 179.3 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 115.7, 168.5 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 108.8, 181.1 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 121.2, 170.8 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 136.5, 179.4 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 115.5, 161.6 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 144.8, 162.5 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 131, 182.1 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 146.8, 181.7 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 165.5, 191.6 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 148, 175.3 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 180.8, 177.7 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 179.6, 195.5 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 189.5, 199.6 , 0 );
setMoveKey( spep_2 -4 + 176, 1, 189.5, 199.6 , 0 );

s_2 = 1.13;
setScaleKey( spep_2 -3 + 60, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 70, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 72, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 92, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 94, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 119, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 120, 1, 1.81, 1.81 );
setScaleKey( spep_2 -3 + 143, 1, 1.81, 1.81 );
setScaleKey( spep_2 -3 + 144, 1, 1.90 *s_2, 1.90 *s_2 );	--108
setScaleKey( spep_2 -3 + 150, 1, 1.90 *s_2, 1.90 *s_2 );
setScaleKey( spep_2 -3 + 152, 1, 1.89 *s_2, 1.89 *s_2 );
setScaleKey( spep_2 -3 + 156, 1, 1.89 *s_2, 1.89 *s_2 );
setScaleKey( spep_2 -3 + 158, 1, 1.88 *s_2, 1.88 *s_2 );
setScaleKey( spep_2 -3 + 160, 1, 1.88 *s_2, 1.88 *s_2 );
setScaleKey( spep_2 -3 + 162, 1, 1.87 *s_2, 1.87 *s_2 );
setScaleKey( spep_2 -3 + 164, 1, 1.87 *s_2, 1.87 *s_2 );
setScaleKey( spep_2 -3 + 166, 1, 1.86 *s_2, 1.86 *s_2 );
setScaleKey( spep_2 -3 + 168, 1, 1.85 *s_2, 1.85 *s_2 );
setScaleKey( spep_2 -3 + 170, 1, 1.84 *s_2, 1.84 *s_2 );
setScaleKey( spep_2 -3 + 172, 1, 1.84 *s_2, 1.84 *s_2 );
setScaleKey( spep_2 -3 + 174, 1, 1.83 *s_2, 1.83 *s_2 );
setScaleKey( spep_2 -4 + 176, 1, 1.83 *s_2, 1.83 *s_2 );

setRotateKey( spep_2 -3 + 60, 1, 67.2 );
setRotateKey( spep_2 -3 + 119, 1, 67.2 );
setRotateKey( spep_2 -3 + 120, 1, -88 );
setRotateKey( spep_2 -3 + 143, 1, -88 );
setRotateKey( spep_2 -3 + 144, 1, -16.1 );
setRotateKey( spep_2 -3 + 150, 1, -16.1 );
setRotateKey( spep_2 -3 + 152, 1, -16.2 );
setRotateKey( spep_2 -3 + 154, 1, -16.3 );
setRotateKey( spep_2 -3 + 156, 1, -16.3 );
setRotateKey( spep_2 -3 + 158, 1, -16.4 );
setRotateKey( spep_2 -3 + 160, 1, -16.5 );
setRotateKey( spep_2 -3 + 162, 1, -16.7 );
setRotateKey( spep_2 -3 + 164, 1, -16.8 );
setRotateKey( spep_2 -3 + 166, 1, -16.9 );
setRotateKey( spep_2 -3 + 168, 1, -17.1 );
setRotateKey( spep_2 -3 + 170, 1, -17.3 );
setRotateKey( spep_2 -3 + 172, 1, -17.5 );
setRotateKey( spep_2 -3 + 174, 1, -17.7 );
setRotateKey( spep_2 -4 + 176, 1, -17.7 );


-- ** 音 ** --
--気弾発射
SE029 = playSeVer2( spep_2 + 0, 1146, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 2, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE030, 140 );

--気弾飛んでいく
SE031 = playSeVer2( spep_2 + 64, 1021, "", 0, 0, 0, -1);

--気弾敵ヒット
SE032 = playSeVer2( spep_2 + 120, 1011, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 120, 1024, "", 0, 0, 0, -1);

--爆発
SE034 = playSeVer2( spep_2 + 150, 1067, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 176 -4;

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); -- フィニッシュ	ef_007
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 180 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, -1.0, 1.0);
setEffScaleKey( spep_3 + 180 -4, base_3, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 180 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 180 -4, base_3, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 180 -4, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
SE035 = playSeVer2( spep_3 + 0, 1159, "", 0, 0, 0, -1);

--風圧
SE036 = playSeVer2( spep_3 + 30, 1259, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 20 -3); -- ダメージ表示フレーム
endPhase( spep_3 + 180 -8); -- 終了フレーム

end
