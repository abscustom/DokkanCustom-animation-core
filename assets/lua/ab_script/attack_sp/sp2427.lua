-- 1024940：SSR_ピッコロ_爆力魔波
-- sp_effect_b4_00245
-- sp2427

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
SP_01 = 160241;	-- 目線カットイン	ef_001	52
SP_02 = 160243;	-- 気弾を放つ〜気弾に飲まれる	ef_002	88	ef_003とセット。敵の手前に配置。
SP_02b = 160245;	-- 気弾を放つ〜気弾に飲まれる	ef_003	88	ef_004とセット。敵の奥に配置。
SP_03 = 160247;	-- フィニッシュ	ef_004	90	反転なし

--エフェクト(てき)
SP_01r = 160242;	-- 目線カットイン 敵側	ef_001r	52
SP_02r = 160244;	-- 気弾を放つ〜気弾に飲まれる　敵側	ef_002r	88	ef_003rとセット。敵の手前に配置。
SP_02br = 160246;	-- 気弾を放つ〜気弾に飲まれる　敵側	ef_003r	88	ef_004rとセット。敵の奥に配置。


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
-- 目線カットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 目線カットイン	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 104 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 104 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 104 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 104 -5, base_0, 255);
setEffAlphaKey( spep_0 + 104 -4, base_0, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 104 -5, 0, 0, 0, 0, 255);  --黒　背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 10;

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


-- ** 音 ** --
--気弾溜め
SE001 = playSeVer2( spep_0 + 0, 1296, "",spep_0 + 114, 0, 10, -1);
SE002 = playSeVer2( spep_0 + 0, 1122, "",spep_0 + 114, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 72 );

--顔カットイン
SE003 = playSeVer2( spep_0 + 16, 1018, "", 0, 0, 0, -1);



-- ** 次の準備 ** --
spep_c = spep_0 + 104 -4;

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
-- 気弾を放つ〜気弾に飲まれる
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾を放つ〜気弾に飲まれる	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 176 -4, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 176 -4, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 176 -4, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 176 -5, base_1f, 255);
setEffAlphaKey( spep_1 + 176 -4, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾を放つ〜気弾に飲まれる	ef_003
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 176 -4, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 176 -4, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 176 -4, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 176 -5, base_1b, 255);
setEffAlphaKey( spep_1 + 176 -4, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 176 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--気弾発射
SE005 = playSeVer2( spep_1 + 0, 1146, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 2, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE006, 140 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
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
setDisp( spep_1 -3 + 60, 1, 1 );
setDisp( spep_1 -4 + 176, 1, 0 );

setBlendColor( spep_1 -3 + 144, 1, 2, 0, 0, 0, 0.8 );
setBlendColor( spep_1 -4 + 176, 1, 2, 0, 0, 0, 0 );

changeAnime( spep_1 -3 + 60, 1, 5 );
changeAnime( spep_1 -3 + 120, 1, 106 );
changeAnime( spep_1 -3 + 144, 1, 108 );

setMoveKey( spep_1 -3 + 60, 1, 615.4, 123.6 , 0 );
setMoveKey( spep_1 -3 + 61, 1, 615.4, 123.6 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 599.7, 123.5 , 0 );
setMoveKey( spep_1 -3 + 63, 1, 599.7, 123.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 583.1, 123.4 , 0 );
setMoveKey( spep_1 -3 + 65, 1, 583.1, 123.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 565.7, 123.1 , 0 );
setMoveKey( spep_1 -3 + 67, 1, 565.7, 123.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 547.6, 122.8 , 0 );
setMoveKey( spep_1 -3 + 69, 1, 547.6, 122.8 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 528.9, 122.4 , 0 );
setMoveKey( spep_1 -3 + 71, 1, 528.9, 122.4 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 509.4, 121.8 , 0 );
setMoveKey( spep_1 -3 + 73, 1, 509.4, 121.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 431.8, 121.2 , 0 );
setMoveKey( spep_1 -3 + 75, 1, 431.8, 121.2 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 354.3, 120.5 , 0 );
setMoveKey( spep_1 -3 + 77, 1, 354.3, 120.5 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 277.5, 119.7 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 271, 119 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 264.8, 118.3 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 259.1, 117.7 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 253.6, 117.1 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 248.5, 116.5 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 243.8, 116 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 239.4, 115.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 235.3, 115 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 231.6, 114.6 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 228.2, 114.2 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 225.1, 113.8 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 222.3, 113.5 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 219.9, 113.3 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 217.8, 113 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 216.1, 112.8 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 214.6, 112.6 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 213.5, 112.5 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 212.7, 112.4 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 212.2, 112.4 , 0 );
setMoveKey( spep_1 -3 + 119, 1, 212.1, 112.4 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 78.2, 90 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 89.7, 97 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 64.3, 77.3 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 88.5, 76.1 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 68.9, 101.6 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 78.2, 90 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 89.7, 97 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 64.3, 77.3 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 88.5, 76.1 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 68.9, 101.6 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 78.2, 90 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 89.7, 97 , 0 );
setMoveKey( spep_1 -3 + 145, 1, 98.7, 154.5 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 123.3, 153.4 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 104.7, 179.3 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 115.7, 168.5 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 108.8, 181.1 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 121.2, 170.8 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 136.5, 179.4 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 115.5, 161.6 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 144.8, 162.5 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 131, 182.1 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 146.8, 181.7 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 165.5, 191.6 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 148, 175.3 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 180.8, 177.7 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 179.6, 195.5 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 189.5, 199.6 , 0 );
setMoveKey( spep_1 -4 + 176, 1, 189.5, 199.6 , 0 );

s_2 = 1.13;
setScaleKey( spep_1 -3 + 60, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 70, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 72, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 92, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 94, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 119, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 120, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 143, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 144, 1, 1.90 *s_2, 1.90 *s_2 );	--108
setScaleKey( spep_1 -3 + 150, 1, 1.90 *s_2, 1.90 *s_2 );
setScaleKey( spep_1 -3 + 152, 1, 1.89 *s_2, 1.89 *s_2 );
setScaleKey( spep_1 -3 + 156, 1, 1.89 *s_2, 1.89 *s_2 );
setScaleKey( spep_1 -3 + 158, 1, 1.88 *s_2, 1.88 *s_2 );
setScaleKey( spep_1 -3 + 160, 1, 1.88 *s_2, 1.88 *s_2 );
setScaleKey( spep_1 -3 + 162, 1, 1.87 *s_2, 1.87 *s_2 );
setScaleKey( spep_1 -3 + 164, 1, 1.87 *s_2, 1.87 *s_2 );
setScaleKey( spep_1 -3 + 166, 1, 1.86 *s_2, 1.86 *s_2 );
setScaleKey( spep_1 -3 + 168, 1, 1.85 *s_2, 1.85 *s_2 );
setScaleKey( spep_1 -3 + 170, 1, 1.84 *s_2, 1.84 *s_2 );
setScaleKey( spep_1 -3 + 172, 1, 1.84 *s_2, 1.84 *s_2 );
setScaleKey( spep_1 -3 + 174, 1, 1.83 *s_2, 1.83 *s_2 );
setScaleKey( spep_1 -4 + 176, 1, 1.83 *s_2, 1.83 *s_2 );

setRotateKey( spep_1 -3 + 60, 1, 67.2 );
setRotateKey( spep_1 -3 + 119, 1, 67.2 );
setRotateKey( spep_1 -3 + 120, 1, -88 );
setRotateKey( spep_1 -3 + 143, 1, -88 );
setRotateKey( spep_1 -3 + 144, 1, -16.1 );
setRotateKey( spep_1 -3 + 150, 1, -16.1 );
setRotateKey( spep_1 -3 + 152, 1, -16.2 );
setRotateKey( spep_1 -3 + 154, 1, -16.3 );
setRotateKey( spep_1 -3 + 156, 1, -16.3 );
setRotateKey( spep_1 -3 + 158, 1, -16.4 );
setRotateKey( spep_1 -3 + 160, 1, -16.5 );
setRotateKey( spep_1 -3 + 162, 1, -16.7 );
setRotateKey( spep_1 -3 + 164, 1, -16.8 );
setRotateKey( spep_1 -3 + 166, 1, -16.9 );
setRotateKey( spep_1 -3 + 168, 1, -17.1 );
setRotateKey( spep_1 -3 + 170, 1, -17.3 );
setRotateKey( spep_1 -3 + 172, 1, -17.5 );
setRotateKey( spep_1 -3 + 174, 1, -17.7 );
setRotateKey( spep_1 -4 + 176, 1, -17.7 );


-- ** 音 ** --
--気弾飛んでいく
SE007 = playSeVer2( spep_1 + 64, 1021, "", 0, 0, 0, -1);

--気弾ヒット
SE008 = playSeVer2( spep_1 + 118, 1011, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 118, 1024, "", 0, 0, 0, -1);

--爆発
SE010 = playSeVer2( spep_1 + 150, 1067, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_2 = spep_1 + 176 -4;


-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- フィニッシュ	ef_004
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 180 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + 180 -4, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 180 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 180 -4, base_2, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 180 -4, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--爆発
SE011 = playSeVer2( spep_2 + 0, 1159, "", 0, 0, 0, -1);

--風圧
SE012 = playSeVer2( spep_2 + 30, 1259, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 20 -3); -- ダメージ表示フレーム
endPhase( spep_2 + 180 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 目線カットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 目線カットイン	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 104 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 104 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 104 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 104 -5, base_0, 255);
setEffAlphaKey( spep_0 + 104 -4, base_0, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 104 -5, 0, 0, 0, 0, 255);  --黒　背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 10;

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


-- ** 音 ** --
--気弾溜め
SE001 = playSeVer2( spep_0 + 0, 1296, "",spep_0 + 114, 0, 10, -1);
SE002 = playSeVer2( spep_0 + 0, 1122, "",spep_0 + 114, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 72 );

--顔カットイン
SE003 = playSeVer2( spep_0 + 16, 1018, "", 0, 0, 0, -1);



-- ** 次の準備 ** --
spep_c = spep_0 + 104 -4;

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
-- 気弾を放つ〜気弾に飲まれる
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 気弾を放つ〜気弾に飲まれる	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 176 -4, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 176 -4, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 176 -4, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 176 -5, base_1f, 255);
setEffAlphaKey( spep_1 + 176 -4, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 気弾を放つ〜気弾に飲まれる	ef_003
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 176 -4, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 176 -4, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 176 -4, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 176 -5, base_1b, 255);
setEffAlphaKey( spep_1 + 176 -4, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 176 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--気弾発射
SE005 = playSeVer2( spep_1 + 0, 1146, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 2, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE006, 140 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
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
setDisp( spep_1 -3 + 60, 1, 1 );
setDisp( spep_1 -4 + 176, 1, 0 );

setBlendColor( spep_1 -3 + 144, 1, 2, 0, 0, 0, 0.8 );
setBlendColor( spep_1 -4 + 176, 1, 2, 0, 0, 0, 0 );

changeAnime( spep_1 -3 + 60, 1, 5 );
changeAnime( spep_1 -3 + 120, 1, 106 );
changeAnime( spep_1 -3 + 144, 1, 108 );

setMoveKey( spep_1 -3 + 60, 1, 615.4, 123.6 , 0 );
setMoveKey( spep_1 -3 + 61, 1, 615.4, 123.6 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 599.7, 123.5 , 0 );
setMoveKey( spep_1 -3 + 63, 1, 599.7, 123.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 583.1, 123.4 , 0 );
setMoveKey( spep_1 -3 + 65, 1, 583.1, 123.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 565.7, 123.1 , 0 );
setMoveKey( spep_1 -3 + 67, 1, 565.7, 123.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 547.6, 122.8 , 0 );
setMoveKey( spep_1 -3 + 69, 1, 547.6, 122.8 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 528.9, 122.4 , 0 );
setMoveKey( spep_1 -3 + 71, 1, 528.9, 122.4 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 509.4, 121.8 , 0 );
setMoveKey( spep_1 -3 + 73, 1, 509.4, 121.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 431.8, 121.2 , 0 );
setMoveKey( spep_1 -3 + 75, 1, 431.8, 121.2 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 354.3, 120.5 , 0 );
setMoveKey( spep_1 -3 + 77, 1, 354.3, 120.5 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 277.5, 119.7 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 271, 119 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 264.8, 118.3 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 259.1, 117.7 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 253.6, 117.1 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 248.5, 116.5 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 243.8, 116 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 239.4, 115.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 235.3, 115 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 231.6, 114.6 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 228.2, 114.2 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 225.1, 113.8 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 222.3, 113.5 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 219.9, 113.3 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 217.8, 113 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 216.1, 112.8 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 214.6, 112.6 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 213.5, 112.5 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 212.7, 112.4 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 212.2, 112.4 , 0 );
setMoveKey( spep_1 -3 + 119, 1, 212.1, 112.4 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 78.2, 90 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 89.7, 97 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 64.3, 77.3 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 88.5, 76.1 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 68.9, 101.6 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 78.2, 90 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 89.7, 97 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 64.3, 77.3 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 88.5, 76.1 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 68.9, 101.6 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 78.2, 90 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 89.7, 97 , 0 );
setMoveKey( spep_1 -3 + 145, 1, 98.7, 154.5 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 123.3, 153.4 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 104.7, 179.3 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 115.7, 168.5 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 108.8, 181.1 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 121.2, 170.8 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 136.5, 179.4 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 115.5, 161.6 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 144.8, 162.5 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 131, 182.1 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 146.8, 181.7 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 165.5, 191.6 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 148, 175.3 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 180.8, 177.7 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 179.6, 195.5 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 189.5, 199.6 , 0 );
setMoveKey( spep_1 -4 + 176, 1, 189.5, 199.6 , 0 );

s_2 = 1.13;
setScaleKey( spep_1 -3 + 60, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 70, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 72, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 92, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 94, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 119, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 120, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 143, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 144, 1, 1.90 *s_2, 1.90 *s_2 );	--108
setScaleKey( spep_1 -3 + 150, 1, 1.90 *s_2, 1.90 *s_2 );
setScaleKey( spep_1 -3 + 152, 1, 1.89 *s_2, 1.89 *s_2 );
setScaleKey( spep_1 -3 + 156, 1, 1.89 *s_2, 1.89 *s_2 );
setScaleKey( spep_1 -3 + 158, 1, 1.88 *s_2, 1.88 *s_2 );
setScaleKey( spep_1 -3 + 160, 1, 1.88 *s_2, 1.88 *s_2 );
setScaleKey( spep_1 -3 + 162, 1, 1.87 *s_2, 1.87 *s_2 );
setScaleKey( spep_1 -3 + 164, 1, 1.87 *s_2, 1.87 *s_2 );
setScaleKey( spep_1 -3 + 166, 1, 1.86 *s_2, 1.86 *s_2 );
setScaleKey( spep_1 -3 + 168, 1, 1.85 *s_2, 1.85 *s_2 );
setScaleKey( spep_1 -3 + 170, 1, 1.84 *s_2, 1.84 *s_2 );
setScaleKey( spep_1 -3 + 172, 1, 1.84 *s_2, 1.84 *s_2 );
setScaleKey( spep_1 -3 + 174, 1, 1.83 *s_2, 1.83 *s_2 );
setScaleKey( spep_1 -4 + 176, 1, 1.83 *s_2, 1.83 *s_2 );

setRotateKey( spep_1 -3 + 60, 1, 67.2 );
setRotateKey( spep_1 -3 + 119, 1, 67.2 );
setRotateKey( spep_1 -3 + 120, 1, -88 );
setRotateKey( spep_1 -3 + 143, 1, -88 );
setRotateKey( spep_1 -3 + 144, 1, -16.1 );
setRotateKey( spep_1 -3 + 150, 1, -16.1 );
setRotateKey( spep_1 -3 + 152, 1, -16.2 );
setRotateKey( spep_1 -3 + 154, 1, -16.3 );
setRotateKey( spep_1 -3 + 156, 1, -16.3 );
setRotateKey( spep_1 -3 + 158, 1, -16.4 );
setRotateKey( spep_1 -3 + 160, 1, -16.5 );
setRotateKey( spep_1 -3 + 162, 1, -16.7 );
setRotateKey( spep_1 -3 + 164, 1, -16.8 );
setRotateKey( spep_1 -3 + 166, 1, -16.9 );
setRotateKey( spep_1 -3 + 168, 1, -17.1 );
setRotateKey( spep_1 -3 + 170, 1, -17.3 );
setRotateKey( spep_1 -3 + 172, 1, -17.5 );
setRotateKey( spep_1 -3 + 174, 1, -17.7 );
setRotateKey( spep_1 -4 + 176, 1, -17.7 );


-- ** 音 ** --
--気弾飛んでいく
SE007 = playSeVer2( spep_1 + 64, 1021, "", 0, 0, 0, -1);

--気弾ヒット
SE008 = playSeVer2( spep_1 + 118, 1011, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 118, 1024, "", 0, 0, 0, -1);

--爆発
SE010 = playSeVer2( spep_1 + 150, 1067, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_2 = spep_1 + 176 -4;


-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- フィニッシュ	ef_004
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 180 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, -1.0, 1.0);
setEffScaleKey( spep_2 + 180 -4, base_2, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 180 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 180 -4, base_2, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 180 -4, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--爆発
SE011 = playSeVer2( spep_2 + 0, 1159, "", 0, 0, 0, -1);

--風圧
SE012 = playSeVer2( spep_2 + 30, 1259, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 20 -3); -- ダメージ表示フレーム
endPhase( spep_2 + 180 -8); -- 終了フレーム

end
