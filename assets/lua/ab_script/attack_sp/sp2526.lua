--4026210:超17号_電撃地獄玉
--sp_effect_a2_00206

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

--味方側
SP_01 = 161609; --顔アップ登場 ef_001
SP_02 = 161610; --突進から連続気弾 ef_002a
SP_03 = 161612; --突進から連続気弾 ef_002b
SP_04 = 161614; --エネミーが煙から落下 ef_003
SP_05 = 161615; --地獄玉発生から顔アップ ef_004
SP_06 = 161617; --地獄玉発射 ef_005
SP_07 = 161619; --地獄玉がエネミーに接近 ef_006a
SP_08 = 161620; --地獄玉がエネミーに接近 ef_006b
SP_09 = 161621; --フィニッシュ ef_007

--敵側
SP_01r = 161609; --顔アップ登場 ef_001
SP_02r = 161611; --突進から連続気弾（敵側） ef_002a_r
SP_03r = 161613; --突進から連続気弾（敵側） ef_002b_r
SP_04r = 161614; --エネミーが煙から落下 ef_003
SP_05r = 161616; --地獄玉発生から顔アップ（敵側） ef_004_r
SP_06r = 161618; --地獄玉発射（敵側） ef_005_r
SP_07r = 161619; --地獄玉がエネミーに接近 ef_006a
SP_08r = 161620; --地獄玉がエネミーに接近 ef_006b
SP_09r = 161621; --フィニッシュ ef_007


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

if( _IS_EXTRA_ATTACK_ == 0 ) then
adjustAttackerLabel( 0, 205);
end

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
--顔アップ登場 (90F)
------------------------------------------------------

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 90, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 90, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 90 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 90 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 90, first_f, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 90 + 2, 0, 0, 0, 0, 255 );  --黒　背景

spep_x = spep_0 + 4;
-- ** セリフカットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
SE001 = playSeVer2( spep_0 + 12, 1018, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 90;


------------------------------------------------------
--突進から連続気弾 (562F)
------------------------------------------------------
-- ** エフェクト等 ** --
tosshin_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --ef_002a
setEffMoveKey( spep_1 + 0, tosshin_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 562, tosshin_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tosshin_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 562, tosshin_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tosshin_f, 0 );
setEffRotateKey( spep_1 + 562, tosshin_f, 0 );
setEffAlphaKey( spep_1 + 0, tosshin_f, 255 );
setEffAlphaKey( spep_1 + 562 -2, tosshin_f, 255 );
setEffAlphaKey( spep_1 + 562 -1, tosshin_f, 255 );
setEffAlphaKey( spep_1 + 562, tosshin_f, 0 );

tosshin_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --ef_002b
setEffMoveKey( spep_1 + 0, tosshin_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 562, tosshin_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tosshin_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 562, tosshin_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tosshin_b, 0 );
setEffRotateKey( spep_1 + 562, tosshin_b, 0 );
setEffAlphaKey( spep_1 + 0, tosshin_b, 255 );
setEffAlphaKey( spep_1 + 562 -2, tosshin_b, 255 );
setEffAlphaKey( spep_1 + 562 -1, tosshin_b, 255 );
setEffAlphaKey( spep_1 + 562, tosshin_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 562 + 2, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 102 );

setMoveKey( spep_1 + 0, 1, 180.4, -152.5 , 0 );
setMoveKey( spep_1 + 1, 1, 180.5, -152.7 , 0 );
setMoveKey( spep_1 + 2, 1, 180.5, -152.7 , 0 );
setMoveKey( spep_1 + 3, 1, 180.6, -152.8 , 0 );
setMoveKey( spep_1 + 4, 1, 180.6, -152.8 , 0 );
setMoveKey( spep_1 + 5, 1, 180.8, -153 , 0 );
setMoveKey( spep_1 + 6, 1, 180.8, -153 , 0 );
setMoveKey( spep_1 + 7, 1, 181, -153.2 , 0 );
setMoveKey( spep_1 + 8, 1, 181, -153.2 , 0 );
setMoveKey( spep_1 + 9, 1, 181.3, -153.5 , 0 );
setMoveKey( spep_1 + 10, 1, 181.3, -153.5 , 0 );
setMoveKey( spep_1 + 11, 1, 181.6, -153.8 , 0 );
setMoveKey( spep_1 + 12, 1, 181.6, -153.8 , 0 );
setMoveKey( spep_1 + 13, 1, 182.1, -154.3 , 0 );
setMoveKey( spep_1 + 14, 1, 182.1, -154.3 , 0 );
setMoveKey( spep_1 + 15, 1, 182.7, -154.9 , 0 );
setMoveKey( spep_1 + 16, 1, 182.7, -154.9 , 0 );
setMoveKey( spep_1 + 17, 1, 183.4, -155.6 , 0 );
setMoveKey( spep_1 + 18, 1, 183.4, -155.6 , 0 );
setMoveKey( spep_1 + 19, 1, 184.4, -156.6 , 0 );

setScaleKey( spep_1 + 0, 1, 3, 3 );
setScaleKey( spep_1 + 6, 1, 3, 3 );
setScaleKey( spep_1 + 7, 1, 3.01, 3.01 );
setScaleKey( spep_1 + 14, 1, 3.01, 3.01 );
setScaleKey( spep_1 + 15, 1, 3.02, 3.02 );
setScaleKey( spep_1 + 16, 1, 3.02, 3.02 );
setScaleKey( spep_1 + 17, 1, 3.03, 3.03 );
setScaleKey( spep_1 + 19, 1, 3.03, 3.03 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 19, 1, 0 );

-- ** 音 ** --
--向かってくる
SE002 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_1 + 0, 1117, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_1 + 0, 9, "", 0, 0, 0, -1);


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 20; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);

    -- ** 敵キャラクター ** --
	setMoveKey( SP_dodge + 0, 1, 184.4, -156.6 , 0 );
	setMoveKey( SP_dodge + 1, 1, 185.6, -157.7 , 0 );
	setMoveKey( SP_dodge + 2, 1, 185.6, -157.7 , 0 );
	setMoveKey( SP_dodge + 3, 1, 186.8, -159 , 0 );
	setMoveKey( SP_dodge + 4, 1, 186.8, -159 , 0 );
	setMoveKey( SP_dodge + 5, 1, 188.2, -160.4 , 0 );
	setMoveKey( SP_dodge + 6, 1, 188.2, -160.4 , 0 );
	setMoveKey( SP_dodge + 7, 1, 189.3, -161.7 , 0 );
	setMoveKey( SP_dodge + 8, 1, 189.3, -161.7 , 0 );
	setMoveKey( SP_dodge + 9, 1, 202.7, -193.1 , 0 );
	setMoveKey( SP_dodge + 10, 1, 202.7, -193.1 , 0 );

	setScaleKey( SP_dodge + 0, 1, 3.03, 3.03 );
	setScaleKey( SP_dodge + 1, 1, 3.04, 3.04 );
	setScaleKey( SP_dodge + 2, 1, 3.04, 3.04 );
	setScaleKey( SP_dodge + 3, 1, 3.05, 3.05 );
	setScaleKey( SP_dodge + 4, 1, 3.05, 3.05 );
	setScaleKey( SP_dodge + 5, 1, 3.06, 3.06 );
	setScaleKey( SP_dodge + 6, 1, 3.06, 3.06 );
	setScaleKey( SP_dodge + 7, 1, 3.08, 3.08 );
	setScaleKey( SP_dodge + 8, 1, 3.08, 3.08 );
	setScaleKey( SP_dodge + 9, 1, 3.51, 3.51 );
	setScaleKey( SP_dodge + 10, 1, 3.51, 3.51 );

	setRotateKey( SP_dodge + 0, 1, 0 );
	setRotateKey( SP_dodge + 10, 1, 0 );
    
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
-- ** 敵キャラクター ** --
setDisp( spep_1 + 35, 1, 0 );
setDisp( spep_1 + 53, 1, 1 );
setDisp( spep_1 + 77, 1, 0 );
setDisp( spep_1 + 93, 1, 1 );
setDisp( spep_1 + 233, 1, 0 );
setDisp( spep_1 + 239, 1, 1 );
setDisp( spep_1 + 287, 1, 0 );
setDisp( spep_1 + 311, 1, 1 );
setDisp( spep_1 + 351, 1, 0 );
setDisp( spep_1 + 455, 1, 1 );
setDisp( spep_1 + 507, 1, 0 );
changeAnime( spep_1 + 93, 1, 104 );
changeAnime( spep_1 + 105, 1, 106 );
changeAnime( spep_1 + 215, 1, 108 );
changeAnime( spep_1 + 255, 1, 104 );
changeAnime( spep_1 + 281, 1, 108 );
changeAnime( spep_1 + 311, 1, 105 );
changeAnime( spep_1 + 455, 1, 106 );

--非表示
setMoveKey( spep_1 + 20, 1, 184.4, -156.6 , 0 ); --接近
setMoveKey( spep_1 + 21, 1, 185.6, -157.7 , 0 );
setMoveKey( spep_1 + 22, 1, 185.6, -157.7 , 0 );
setMoveKey( spep_1 + 23, 1, 186.8, -159 , 0 );
setMoveKey( spep_1 + 24, 1, 186.8, -159 , 0 );
setMoveKey( spep_1 + 25, 1, 188.2, -160.4 , 0 );
setMoveKey( spep_1 + 26, 1, 188.2, -160.4 , 0 );
setMoveKey( spep_1 + 27, 1, 189.3, -161.7 , 0 );
setMoveKey( spep_1 + 28, 1, 189.3, -161.7 , 0 );
setMoveKey( spep_1 + 29, 1, 202.7, -193.1 , 0 );
setMoveKey( spep_1 + 30, 1, 202.7, -193.1 , 0 );
setMoveKey( spep_1 + 31, 1, 226.5, -249.1 , 0 );
setMoveKey( spep_1 + 32, 1, 226.5, -249.1 , 0 );
setMoveKey( spep_1 + 33, 1, 279.8, -373.9 , 0 );
setMoveKey( spep_1 + 35, 1, 279.8, -373.9 , 0 );
--非表示
setMoveKey( spep_1 + 53, 1, 100.2, -253.1 , 0 ); --振りかぶり
setMoveKey( spep_1 + 54, 1, 100.2, -253.1 , 0 );
setMoveKey( spep_1 + 55, 1, 167.6, -253.2 , 0 );
setMoveKey( spep_1 + 56, 1, 167.6, -253.2 , 0 );
setMoveKey( spep_1 + 57, 1, 192.9, -253.2 , 0 );
setMoveKey( spep_1 + 58, 1, 192.9, -253.2 , 0 );
setMoveKey( spep_1 + 59, 1, 210.6, -253.2 , 0 );
setMoveKey( spep_1 + 60, 1, 210.6, -253.2 , 0 );
setMoveKey( spep_1 + 61, 1, 224, -253.2 , 0 );
setMoveKey( spep_1 + 62, 1, 224, -253.2 , 0 );
setMoveKey( spep_1 + 63, 1, 234.6, -253.2 , 0 );
setMoveKey( spep_1 + 64, 1, 234.6, -253.2 , 0 );
setMoveKey( spep_1 + 65, 1, 242.9, -253.2 , 0 );
setMoveKey( spep_1 + 66, 1, 242.9, -253.2 , 0 );
setMoveKey( spep_1 + 67, 1, 249.4, -253.2 , 0 );
setMoveKey( spep_1 + 68, 1, 249.4, -253.2 , 0 );
setMoveKey( spep_1 + 69, 1, 254.2, -253.2 , 0 );
setMoveKey( spep_1 + 70, 1, 254.2, -253.2 , 0 );
setMoveKey( spep_1 + 71, 1, 257.5, -253.2 , 0 );
setMoveKey( spep_1 + 72, 1, 257.5, -253.2 , 0 );
setMoveKey( spep_1 + 73, 1, 259.5, -253.2 , 0 );
setMoveKey( spep_1 + 74, 1, 259.5, -253.2 , 0 );
setMoveKey( spep_1 + 75, 1, 260.2, -253.1 , 0 );
setMoveKey( spep_1 + 77, 1, 260.2, -253.1 , 0 );
--非表示
setMoveKey( spep_1 + 93, 1, -23.1, -362.1 , 0 ); --ストレート
setMoveKey( spep_1 + 104, 1, -23.1, -362.1 , 0 );
setMoveKey( spep_1 + 105, 1, -69.7, -480.3 , 0 );
setMoveKey( spep_1 + 108, 1, -69.7, -480.3 , 0 );
setMoveKey( spep_1 + 109, 1, -27.7, -474.8 , 0 );
setMoveKey( spep_1 + 112, 1, -27.7, -474.8 , 0 );
setMoveKey( spep_1 + 113, 1, 5.8, -497.8 , 0 );
setMoveKey( spep_1 + 114, 1, 5.8, -497.8 , 0 );
setMoveKey( spep_1 + 115, 1, -42.2, -450.8 , 0 );
setMoveKey( spep_1 + 116, 1, -42.2, -450.8 , 0 );
setMoveKey( spep_1 + 117, 1, -64.7, -478.8 , 0 );
setMoveKey( spep_1 + 118, 1, -64.7, -478.8 , 0 );
setMoveKey( spep_1 + 119, 1, -54.7, -478.3 , 0 );
setMoveKey( spep_1 + 122, 1, -54.7, -478.3 , 0 );
setMoveKey( spep_1 + 123, 1, -29.2, -479.8 , 0 );
setMoveKey( spep_1 + 124, 1, -29.2, -479.8 , 0 );
setMoveKey( spep_1 + 125, 1, -46.2, -452.3 , 0 );
setMoveKey( spep_1 + 126, 1, -46.2, -452.3 , 0 );
setMoveKey( spep_1 + 127, 1, -67.2, -464.8 , 0 );
setMoveKey( spep_1 + 128, 1, -67.2, -464.8 , 0 );
setMoveKey( spep_1 + 129, 1, -95, -617.9 , 0 );
setMoveKey( spep_1 + 132, 1, -95, -617.9 , 0 );
setMoveKey( spep_1 + 133, 1, -31.7, -490.8 , 0 );
setMoveKey( spep_1 + 134, 1, -31.7, -490.8 , 0 );
setMoveKey( spep_1 + 135, 1, -6.2, -494.8 , 0 );
setMoveKey( spep_1 + 136, 1, -6.2, -494.8 , 0 );
setMoveKey( spep_1 + 137, 1, -43.2, -452.8 , 0 );
setMoveKey( spep_1 + 138, 1, -43.2, -452.8 , 0 );
setMoveKey( spep_1 + 139, 1, -58.2, -477.8 , 0 );
setMoveKey( spep_1 + 142, 1, -58.2, -477.8 , 0 );
setMoveKey( spep_1 + 143, 1, 0.3, -498.3 , 0 );
setMoveKey( spep_1 + 144, 1, 0.3, -498.3 , 0 );
setMoveKey( spep_1 + 145, 1, -64.7, -480.3 , 0 );
setMoveKey( spep_1 + 146, 1, -64.7, -480.3 , 0 );
setMoveKey( spep_1 + 147, 1, -41.2, -454.8 , 0 );
setMoveKey( spep_1 + 148, 1, -41.2, -454.8 , 0 );
setMoveKey( spep_1 + 149, 1, -94, -620.9 , 0 );
setMoveKey( spep_1 + 152, 1, -94, -620.9 , 0 );
setMoveKey( spep_1 + 153, 1, -33.2, -487.3 , 0 );
setMoveKey( spep_1 + 154, 1, -33.2, -487.3 , 0 );
setMoveKey( spep_1 + 155, 1, -56.2, -480.8 , 0 );
setMoveKey( spep_1 + 156, 1, -56.2, -480.8 , 0 );
setMoveKey( spep_1 + 157, 1, -41.2, -454.8 , 0 );
setMoveKey( spep_1 + 158, 1, -41.2, -454.8 , 0 );
setMoveKey( spep_1 + 159, 1, 27.3, -74.4 , 0 ); --ドロップキック
setMoveKey( spep_1 + 160, 1, 27.3, -74.4 , 0 );
setMoveKey( spep_1 + 161, 1, 30, -75.2 , 0 );
setMoveKey( spep_1 + 162, 1, 30, -75.2 , 0 );
setMoveKey( spep_1 + 163, 1, 32.6, -76 , 0 );
setMoveKey( spep_1 + 164, 1, 32.6, -76 , 0 );
setMoveKey( spep_1 + 165, 1, 35.2, -76.9 , 0 );
setMoveKey( spep_1 + 166, 1, 35.2, -76.9 , 0 );
setMoveKey( spep_1 + 167, 1, 37.9, -77.7 , 0 );
setMoveKey( spep_1 + 168, 1, 37.9, -77.7 , 0 );
setMoveKey( spep_1 + 169, 1, 40.5, -78.5 , 0 );
setMoveKey( spep_1 + 170, 1, 40.5, -78.5 , 0 );
setMoveKey( spep_1 + 171, 1, 43.2, -79.3 , 0 );
setMoveKey( spep_1 + 172, 1, 43.2, -79.3 , 0 );
setMoveKey( spep_1 + 173, 1, 45.8, -80.1 , 0 );
setMoveKey( spep_1 + 174, 1, 45.8, -80.1 , 0 );
setMoveKey( spep_1 + 175, 1, 48.4, -80.9 , 0 );
setMoveKey( spep_1 + 176, 1, 48.4, -80.9 , 0 );
setMoveKey( spep_1 + 177, 1, 51.1, -81.7 , 0 );
setMoveKey( spep_1 + 178, 1, 51.1, -81.7 , 0 );
setMoveKey( spep_1 + 179, 1, 53.7, -82.5 , 0 );
setMoveKey( spep_1 + 180, 1, 53.7, -82.5 , 0 );
setMoveKey( spep_1 + 181, 1, 56.4, -83.4 , 0 );
setMoveKey( spep_1 + 182, 1, 56.4, -83.4 , 0 );
setMoveKey( spep_1 + 183, 1, 59, -84.2 , 0 );
setMoveKey( spep_1 + 184, 1, 59, -84.2 , 0 );
setMoveKey( spep_1 + 185, 1, 61.7, -85 , 0 );
setMoveKey( spep_1 + 186, 1, 61.7, -85 , 0 );
setMoveKey( spep_1 + 187, 1, 64.3, -85.8 , 0 );
setMoveKey( spep_1 + 188, 1, 64.3, -85.8 , 0 );
setMoveKey( spep_1 + 189, 1, 66.9, -86.6 , 0 );
setMoveKey( spep_1 + 190, 1, 66.9, -86.6 , 0 );
setMoveKey( spep_1 + 191, 1, 69.6, -87.4 , 0 );
setMoveKey( spep_1 + 192, 1, 69.6, -87.4 , 0 );
setMoveKey( spep_1 + 193, 1, 72.2, -88.2 , 0 );
setMoveKey( spep_1 + 194, 1, 72.2, -88.2 , 0 );
setMoveKey( spep_1 + 195, 1, 74.9, -89 , 0 );
setMoveKey( spep_1 + 196, 1, 74.9, -89 , 0 );
setMoveKey( spep_1 + 197, 1, 77.5, -89.9 , 0 );
setMoveKey( spep_1 + 198, 1, 77.5, -89.9 , 0 );
setMoveKey( spep_1 + 199, 1, 80.1, -90.7 , 0 );
setMoveKey( spep_1 + 200, 1, 80.1, -90.7 , 0 );
setMoveKey( spep_1 + 201, 1, 82.8, -91.5 , 0 );
setMoveKey( spep_1 + 202, 1, 82.8, -91.5 , 0 );
setMoveKey( spep_1 + 203, 1, 85.4, -92.3 , 0 );
setMoveKey( spep_1 + 204, 1, 85.4, -92.3 , 0 );
setMoveKey( spep_1 + 205, 1, 88.1, -93.1 , 0 );
setMoveKey( spep_1 + 206, 1, 88.1, -93.1 , 0 );
setMoveKey( spep_1 + 207, 1, 90.7, -93.9 , 0 );
setMoveKey( spep_1 + 208, 1, 90.7, -93.9 , 0 );
setMoveKey( spep_1 + 209, 1, 93.3, -94.7 , 0 );
setMoveKey( spep_1 + 210, 1, 93.3, -94.7 , 0 );
setMoveKey( spep_1 + 211, 1, 96, -95.5 , 0 );
setMoveKey( spep_1 + 212, 1, 96, -95.5 , 0 );
setMoveKey( spep_1 + 213, 1, 163.3, -193.4 , 0 );
setMoveKey( spep_1 + 214, 1, 163.3, -193.4 , 0 );
setMoveKey( spep_1 + 215, 1, 108.4, -94.5 , 0 ); --ヒット
setMoveKey( spep_1 + 216, 1, 108.4, -94.5 , 0 );
setMoveKey( spep_1 + 217, 1, 115.5, -100.1 , 0 );
setMoveKey( spep_1 + 218, 1, 115.5, -100.1 , 0 );
setMoveKey( spep_1 + 219, 1, 180.3, -118.6 , 0 );
setMoveKey( spep_1 + 220, 1, 180.3, -118.6 , 0 );
setMoveKey( spep_1 + 221, 1, 186.3, -138.2 , 0 );
setMoveKey( spep_1 + 222, 1, 186.3, -138.2 , 0 );
setMoveKey( spep_1 + 223, 1, 182.9, -138.7 , 0 );
setMoveKey( spep_1 + 224, 1, 182.9, -138.7 , 0 );
setMoveKey( spep_1 + 225, 1, 190.9, -146.7 , 0 );
setMoveKey( spep_1 + 226, 1, 190.9, -146.7 , 0 );
setMoveKey( spep_1 + 227, 1, 204.9, -167.5 , 0 );
setMoveKey( spep_1 + 228, 1, 204.9, -167.5 , 0 );
setMoveKey( spep_1 + 229, 1, 328, -316 , 0 );
setMoveKey( spep_1 + 230, 1, 328, -316 , 0 );
setMoveKey( spep_1 + 231, 1, 451.1, -464.5 , 0 );
setMoveKey( spep_1 + 233, 1, 451.1, -464.5 , 0 );
--非表示
setMoveKey( spep_1 + 239, 1, -407.1, 105.2 , 0 ); --ラリアット
setMoveKey( spep_1 + 240, 1, -407.1, 105.2 , 0 );
setMoveKey( spep_1 + 241, 1, -365.9, 89.3 , 0 );
setMoveKey( spep_1 + 242, 1, -365.9, 89.3 , 0 );
setMoveKey( spep_1 + 243, 1, -324.7, 73.4 , 0 );
setMoveKey( spep_1 + 244, 1, -324.7, 73.4 , 0 );
setMoveKey( spep_1 + 245, 1, -283.5, 57.5 , 0 );
setMoveKey( spep_1 + 246, 1, -283.5, 57.5 , 0 );
setMoveKey( spep_1 + 247, 1, -242.3, 41.5 , 0 );
setMoveKey( spep_1 + 248, 1, -242.3, 41.5 , 0 );
setMoveKey( spep_1 + 249, 1, -201.1, 25.6 , 0 );
setMoveKey( spep_1 + 250, 1, -201.1, 25.6 , 0 );
setMoveKey( spep_1 + 251, 1, -159.9, 9.7 , 0 );
setMoveKey( spep_1 + 252, 1, -159.9, 9.7 , 0 );
setMoveKey( spep_1 + 253, 1, -118.7, -6.3 , 0 );
setMoveKey( spep_1 + 254, 1, -118.7, -6.3 , 0 );
setMoveKey( spep_1 + 255, 1, -197.3, -150.3 , 0 );
setMoveKey( spep_1 + 256, 1, -197.3, -150.3 , 0 );
setMoveKey( spep_1 + 257, 1, -185.3, -151 , 0 );
setMoveKey( spep_1 + 258, 1, -185.3, -151 , 0 );
setMoveKey( spep_1 + 259, 1, -173.3, -151.7 , 0 );
setMoveKey( spep_1 + 260, 1, -173.3, -151.7 , 0 );
setMoveKey( spep_1 + 261, 1, -161.3, -152.3 , 0 );
setMoveKey( spep_1 + 262, 1, -161.3, -152.3 , 0 );
setMoveKey( spep_1 + 263, 1, -149.3, -153 , 0 );
setMoveKey( spep_1 + 264, 1, -149.3, -153 , 0 );
setMoveKey( spep_1 + 265, 1, -137.3, -153.7 , 0 );
setMoveKey( spep_1 + 266, 1, -137.3, -153.7 , 0 );
setMoveKey( spep_1 + 267, 1, -125.3, -154.3 , 0 );
setMoveKey( spep_1 + 268, 1, -125.3, -154.3 , 0 );
setMoveKey( spep_1 + 269, 1, -113.3, -155 , 0 );
setMoveKey( spep_1 + 270, 1, -113.3, -155 , 0 );
setMoveKey( spep_1 + 271, 1, -101.3, -155.7 , 0 );
setMoveKey( spep_1 + 272, 1, -101.3, -155.7 , 0 );
setMoveKey( spep_1 + 273, 1, -89.3, -156.3 , 0 );
setMoveKey( spep_1 + 274, 1, -89.3, -156.3 , 0 );
setMoveKey( spep_1 + 275, 1, -77.3, -157 , 0 );
setMoveKey( spep_1 + 276, 1, -77.3, -157 , 0 );
setMoveKey( spep_1 + 277, 1, -65.3, -157.7 , 0 );
setMoveKey( spep_1 + 278, 1, -65.3, -157.7 , 0 );
setMoveKey( spep_1 + 279, 1, -53.3, -158.3 , 0 );
setMoveKey( spep_1 + 280, 1, -53.3, -158.3 , 0 );
setMoveKey( spep_1 + 281, 1, 69.4, -151.5 , 0 );
setMoveKey( spep_1 + 282, 1, 69.4, -151.5 , 0 );
setMoveKey( spep_1 + 283, 1, 5, -112.7 , 0 );
setMoveKey( spep_1 + 284, 1, 5, -112.7 , 0 );
setMoveKey( spep_1 + 285, 1, 793.5, -146.8 , 0 );
setMoveKey( spep_1 + 287, 1, 793.5, -146.8 , 0 );
--非表示
setMoveKey( spep_1 + 311, 1, -440.2, -213.6 , 0 ); --吹っ飛び
setMoveKey( spep_1 + 312, 1, -440.2, -213.6 , 0 );
setMoveKey( spep_1 + 313, 1, -209.6, -99.7 , 0 );
setMoveKey( spep_1 + 314, 1, -209.6, -99.7 , 0 );
setMoveKey( spep_1 + 315, 1, -131, -61.2 , 0 );
setMoveKey( spep_1 + 316, 1, -131, -61.2 , 0 );
setMoveKey( spep_1 + 317, 1, -77.1, -35 , 0 );
setMoveKey( spep_1 + 318, 1, -77.1, -35 , 0 );
setMoveKey( spep_1 + 319, 1, -35.8, -14.9 , 0 );
setMoveKey( spep_1 + 320, 1, -35.8, -14.9 , 0 );
setMoveKey( spep_1 + 321, 1, -2.4, 1.2 , 0 );
setMoveKey( spep_1 + 322, 1, -2.4, 1.2 , 0 );
setMoveKey( spep_1 + 323, 1, 25.3, 14.6 , 0 );
setMoveKey( spep_1 + 324, 1, 25.3, 14.6 , 0 );
setMoveKey( spep_1 + 325, 1, 48.8, 25.9 , 0 );
setMoveKey( spep_1 + 326, 1, 48.8, 25.9 , 0 );
setMoveKey( spep_1 + 327, 1, 69, 35.6 , 0 );
setMoveKey( spep_1 + 328, 1, 69, 35.6 , 0 );
setMoveKey( spep_1 + 329, 1, 86.6, 44.1 , 0 );
setMoveKey( spep_1 + 330, 1, 86.6, 44.1 , 0 );
setMoveKey( spep_1 + 331, 1, 102, 51.5 , 0 );
setMoveKey( spep_1 + 332, 1, 102, 51.5 , 0 );
setMoveKey( spep_1 + 333, 1, 115.5, 58 , 0 );
setMoveKey( spep_1 + 334, 1, 115.5, 58 , 0 );
setMoveKey( spep_1 + 335, 1, 127.5, 63.7 , 0 );
setMoveKey( spep_1 + 336, 1, 127.5, 63.7 , 0 );
setMoveKey( spep_1 + 337, 1, 138.1, 68.8 , 0 );
setMoveKey( spep_1 + 338, 1, 138.1, 68.8 , 0 );
setMoveKey( spep_1 + 339, 1, 147.5, 73.3 , 0 );
setMoveKey( spep_1 + 340, 1, 147.5, 73.3 , 0 );
setMoveKey( spep_1 + 341, 1, 155.8, 77.3 , 0 );
setMoveKey( spep_1 + 342, 1, 155.8, 77.3 , 0 );
setMoveKey( spep_1 + 343, 1, 163.2, 80.9 , 0 );
setMoveKey( spep_1 + 344, 1, 163.2, 80.9 , 0 );
setMoveKey( spep_1 + 345, 1, 169.8, 84 , 0 );
setMoveKey( spep_1 + 346, 1, 169.8, 84 , 0 );
setMoveKey( spep_1 + 347, 1, 175.6, 86.8 , 0 );
setMoveKey( spep_1 + 351, 1, 175.6, 86.8 , 0 );
--非表示
setMoveKey( spep_1 +455, 1, -131.7, 212.8 , 0 ); --気弾命中
setMoveKey( spep_1 +456, 1, -131.7, 212.8 , 0 );
setMoveKey( spep_1 +457, 1, -120.9, 206.6 , 0 );
setMoveKey( spep_1 +458, 1, -120.9, 206.6 , 0 );
setMoveKey( spep_1 +459, 1, -110.2, 200.4 , 0 );
setMoveKey( spep_1 +460, 1, -110.2, 200.4 , 0 );
setMoveKey( spep_1 +461, 1, -99.4, 194.3 , 0 );
setMoveKey( spep_1 +462, 1, -99.4, 194.3 , 0 );
setMoveKey( spep_1 +463, 1, -88.6, 188.1 , 0 );
setMoveKey( spep_1 +464, 1, -88.6, 188.1 , 0 );
setMoveKey( spep_1 +465, 1, -77.9, 182 , 0 );
setMoveKey( spep_1 +466, 1, -77.9, 182 , 0 );
setMoveKey( spep_1 +467, 1, -67.1, 175.8 , 0 );
setMoveKey( spep_1 +468, 1, -67.1, 175.8 , 0 );
setMoveKey( spep_1 +469, 1, -56.3, 169.7 , 0 );
setMoveKey( spep_1 +470, 1, -56.3, 169.7 , 0 );
setMoveKey( spep_1 +471, 1, -45.6, 163.5 , 0 );
setMoveKey( spep_1 +472, 1, -45.6, 163.5 , 0 );
setMoveKey( spep_1 +473, 1, -34.8, 157.4 , 0 );
setMoveKey( spep_1 +474, 1, -34.8, 157.4 , 0 );
setMoveKey( spep_1 +475, 1, -24, 151.2 , 0 );
setMoveKey( spep_1 +476, 1, -24, 151.2 , 0 );
setMoveKey( spep_1 +477, 1, -13.3, 145.1 , 0 );
setMoveKey( spep_1 +478, 1, -13.3, 145.1 , 0 );
setMoveKey( spep_1 +479, 1, -2.5, 138.9 , 0 );
setMoveKey( spep_1 +480, 1, -2.5, 138.9 , 0 );
setMoveKey( spep_1 +481, 1, 8.3, 132.8 , 0 );
setMoveKey( spep_1 +482, 1, 8.3, 132.8 , 0 );
setMoveKey( spep_1 +483, 1, 144, 243.5 , 0 );
setMoveKey( spep_1 +484, 1, 144, 243.5 , 0 );
setMoveKey( spep_1 +485, 1, 75, 146.3 , 0 );
setMoveKey( spep_1 +486, 1, 75, 146.3 , 0 );
setMoveKey( spep_1 +487, 1, 106.8, 174.3 , 0 );
setMoveKey( spep_1 +488, 1, 106.8, 174.3 , 0 );
setMoveKey( spep_1 +489, 1, 138.9, 202.4 , 0 );
setMoveKey( spep_1 +490, 1, 138.9, 202.4 , 0 );
setMoveKey( spep_1 +491, 1, 113.8, 175.7 , 0 );
setMoveKey( spep_1 +492, 1, 113.8, 175.7 , 0 );
setMoveKey( spep_1 +493, 1, 88.3, 148.9 , 0 );
setMoveKey( spep_1 +494, 1, 88.3, 148.9 , 0 );
setMoveKey( spep_1 +495, 1, 99.7, 160.8 , 0 );
setMoveKey( spep_1 +496, 1, 99.7, 160.8 , 0 );
setMoveKey( spep_1 +497, 1, 111.2, 172.8 , 0 );
setMoveKey( spep_1 +498, 1, 111.2, 172.8 , 0 );
setMoveKey( spep_1 +499, 1, 106.5, 162.2 , 0 );
setMoveKey( spep_1 +500, 1, 106.5, 162.2 , 0 );
setMoveKey( spep_1 +501, 1, 101.6, 151.6 , 0 );
setMoveKey( spep_1 +502, 1, 101.6, 151.6 , 0 );
setMoveKey( spep_1 +503, 1, 104.9, 152.2 , 0 );
setMoveKey( spep_1 +504, 1, 104.9, 152.2 , 0 );
setMoveKey( spep_1 +505, 1, 108.3, 152.9 , 0 );
setMoveKey( spep_1 +507, 1, 108.3, 152.9 , 0 );

n = 1.08; --山田さん要望により大きさ調整

setScaleKey( spep_1 + 20, 1, 3.03, 3.03 ); --接近
setScaleKey( spep_1 + 21, 1, 3.04, 3.04 );
setScaleKey( spep_1 + 22, 1, 3.04, 3.04 );
setScaleKey( spep_1 + 23, 1, 3.05, 3.05 );
setScaleKey( spep_1 + 24, 1, 3.05, 3.05 );
setScaleKey( spep_1 + 25, 1, 3.06, 3.06 );
setScaleKey( spep_1 + 26, 1, 3.06, 3.06 );
setScaleKey( spep_1 + 27, 1, 3.08, 3.08 );
setScaleKey( spep_1 + 28, 1, 3.08, 3.08 );
setScaleKey( spep_1 + 29, 1, 3.51, 3.51 );
setScaleKey( spep_1 + 30, 1, 3.51, 3.51 );
setScaleKey( spep_1 + 31, 1, 4.28, 4.28 );
setScaleKey( spep_1 + 32, 1, 4.28, 4.28 );
setScaleKey( spep_1 + 33, 1, 6, 6 );
setScaleKey( spep_1 + 35, 1, 6, 6 );
--非表示
setScaleKey( spep_1 + 53, 1, 4.2, 4.2 ); --振りかぶり
setScaleKey( spep_1 + 77, 1, 4.2, 4.2 );
--非表示
setScaleKey( spep_1 + 93, 1, 7.5, 7.5 ); --ストレート
setScaleKey( spep_1 + 128, 1, 7.5, 7.5 );
setScaleKey( spep_1 + 129, 1, 8.98, 8.98 );
setScaleKey( spep_1 + 132, 1, 8.98, 8.98 );
setScaleKey( spep_1 + 133, 1, 7.5, 7.5 );
setScaleKey( spep_1 + 148, 1, 7.5, 7.5 );
setScaleKey( spep_1 + 149, 1, 8.98, 8.98 );
setScaleKey( spep_1 + 152, 1, 8.98, 8.98 );
setScaleKey( spep_1 + 153, 1, 7.5, 7.5 );
setScaleKey( spep_1 + 158, 1, 7.5, 7.5 );
setScaleKey( spep_1 + 159, 1, 1.44 * n, 1.44 * n ); --ドロップキック
setScaleKey( spep_1 + 212, 1, 1.44 * n, 1.44 * n );
setScaleKey( spep_1 + 213, 1, 1.66 * n, 1.66 * n );
setScaleKey( spep_1 + 220, 1, 1.66 * n, 1.66 * n );
setScaleKey( spep_1 + 221, 1, 1.77 * n, 1.77 * n );
setScaleKey( spep_1 + 222, 1, 1.77 * n, 1.77 * n );
setScaleKey( spep_1 + 223, 1, 1.69 * n, 1.69 * n );
setScaleKey( spep_1 + 224, 1, 1.69 * n, 1.69 * n );
setScaleKey( spep_1 + 225, 1, 1.78 * n, 1.78 * n );
setScaleKey( spep_1 + 226, 1, 1.78 * n, 1.78 * n );
setScaleKey( spep_1 + 227, 1, 1.88 * n, 1.88 * n );
setScaleKey( spep_1 + 228, 1, 1.88 * n, 1.88 * n );
setScaleKey( spep_1 + 229, 1, 2.09 * n, 2.09 * n );
setScaleKey( spep_1 + 233, 1, 2.09 * n, 2.09 * n );
--非表示
setScaleKey( spep_1 + 239, 1, 7.87, 7.87 ); --ラリアット
setScaleKey( spep_1 + 240, 1, 7.87, 7.87 );
setScaleKey( spep_1 + 241, 1, 7.71, 7.71 );
setScaleKey( spep_1 + 242, 1, 7.71, 7.71 );
setScaleKey( spep_1 + 243, 1, 7.55, 7.55 );
setScaleKey( spep_1 + 244, 1, 7.55, 7.55 );
setScaleKey( spep_1 + 245, 1, 7.39, 7.39 );
setScaleKey( spep_1 + 246, 1, 7.39, 7.39 );
setScaleKey( spep_1 + 247, 1, 7.23, 7.23 );
setScaleKey( spep_1 + 248, 1, 7.23, 7.23 );
setScaleKey( spep_1 + 249, 1, 7.06, 7.06 );
setScaleKey( spep_1 + 250, 1, 7.06, 7.06 );
setScaleKey( spep_1 + 251, 1, 6.9, 6.9 );
setScaleKey( spep_1 + 252, 1, 6.9, 6.9 );
setScaleKey( spep_1 + 253, 1, 6.74, 6.74 );
setScaleKey( spep_1 + 254, 1, 6.74, 6.74 );
setScaleKey( spep_1 + 255, 1, 5.5, 5.5 );
setScaleKey( spep_1 + 280, 1, 5.5, 5.5 );
setScaleKey( spep_1 + 281, 1, 6.32, 6.32 );
setScaleKey( spep_1 + 282, 1, 6.32, 6.32 );
setScaleKey( spep_1 + 283, 1, 5.49, 5.49 );
setScaleKey( spep_1 + 284, 1, 5.49, 5.49 );
setScaleKey( spep_1 + 285, 1, 5.77, 5.77 );
setScaleKey( spep_1 + 287, 1, 5.77, 5.77 );
--非表示
setScaleKey( spep_1 + 311, 1, 6, 6 ); --吹っ飛び
setScaleKey( spep_1 + 312, 1, 6, 6 );
setScaleKey( spep_1 + 313, 1, 3.87, 3.87 );
setScaleKey( spep_1 + 314, 1, 3.87, 3.87 );
setScaleKey( spep_1 + 315, 1, 3.15, 3.15 );
setScaleKey( spep_1 + 316, 1, 3.15, 3.15 );
setScaleKey( spep_1 + 317, 1, 2.66, 2.66 );
setScaleKey( spep_1 + 318, 1, 2.66, 2.66 );
setScaleKey( spep_1 + 319, 1, 2.28, 2.28 );
setScaleKey( spep_1 + 320, 1, 2.28, 2.28 );
setScaleKey( spep_1 + 321, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 322, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 323, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 324, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 325, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 326, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 327, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 328, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 329, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 330, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 331, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 332, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 333, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 334, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 335, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 336, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 337, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 338, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 339, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 340, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 341, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 342, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 343, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 344, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 345, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 346, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 347, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 348, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 349, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 351, 1, 0.3, 0.3 );
--非表示
setScaleKey( spep_1 +455, 1, 1.2, 1.2 ); --気弾命中
setScaleKey( spep_1 +482, 1, 1.2, 1.2 );
setScaleKey( spep_1 +483, 1, 1.36, 1.36 );
setScaleKey( spep_1 +484, 1, 1.36, 1.36 );
setScaleKey( spep_1 +485, 1, 1.07, 1.07 );
setScaleKey( spep_1 +486, 1, 1.07, 1.07 );
setScaleKey( spep_1 +487, 1, 1.11, 1.11 );
setScaleKey( spep_1 +488, 1, 1.11, 1.11 );
setScaleKey( spep_1 +489, 1, 1.16, 1.16 );
setScaleKey( spep_1 +490, 1, 1.16, 1.16 );
setScaleKey( spep_1 +491, 1, 1.1, 1.1 );
setScaleKey( spep_1 +492, 1, 1.1, 1.1 );
setScaleKey( spep_1 +493, 1, 1.04, 1.04 );
setScaleKey( spep_1 +494, 1, 1.04, 1.04 );
setScaleKey( spep_1 +495, 1, 1.06, 1.06 );
setScaleKey( spep_1 +496, 1, 1.06, 1.06 );
setScaleKey( spep_1 +497, 1, 1.08, 1.08 );
setScaleKey( spep_1 +498, 1, 1.08, 1.08 );
setScaleKey( spep_1 +499, 1, 1.05, 1.05 );
setScaleKey( spep_1 +500, 1, 1.05, 1.05 );
setScaleKey( spep_1 +501, 1, 1.01, 1.01 );
setScaleKey( spep_1 +504, 1, 1.01, 1.01 );
setScaleKey( spep_1 +505, 1, 1, 1 );
setScaleKey( spep_1 +507, 1, 1, 1 );

setRotateKey( spep_1 + 21, 1, 0 ); --接近
setRotateKey( spep_1 + 35, 1, 0 );
--非表示
setRotateKey( spep_1 + 53, 1, 0 ); --振りかぶり
setRotateKey( spep_1 + 77, 1, 0 );
--非表示
setRotateKey( spep_1 + 93, 1, 0 ); --ストレート
setRotateKey( spep_1 + 104, 1, 0 );
setRotateKey( spep_1 + 105, 1, -40 );
setRotateKey( spep_1 + 128, 1, -40 );
setRotateKey( spep_1 + 129, 1, -39.9 );
setRotateKey( spep_1 + 132, 1, -39.9 );
setRotateKey( spep_1 + 133, 1, -40 );
setRotateKey( spep_1 + 148, 1, -40 );
setRotateKey( spep_1 + 149, 1, -39.9 );
setRotateKey( spep_1 + 152, 1, -39.9 );
setRotateKey( spep_1 + 153, 1, -40 );
setRotateKey( spep_1 + 158, 1, -40 );
setRotateKey( spep_1 + 159, 1, -20 ); --ドロップキック
setRotateKey( spep_1 + 160, 1, -20 );
setRotateKey( spep_1 + 161, 1, -19.7 );
setRotateKey( spep_1 + 162, 1, -19.7 );
setRotateKey( spep_1 + 163, 1, -19.3 );
setRotateKey( spep_1 + 164, 1, -19.3 );
setRotateKey( spep_1 + 165, 1, -18.9 );
setRotateKey( spep_1 + 166, 1, -18.9 );
setRotateKey( spep_1 + 167, 1, -18.5 );
setRotateKey( spep_1 + 168, 1, -18.5 );
setRotateKey( spep_1 + 169, 1, -18.2 );
setRotateKey( spep_1 + 170, 1, -18.2 );
setRotateKey( spep_1 + 171, 1, -17.8 );
setRotateKey( spep_1 + 172, 1, -17.8 );
setRotateKey( spep_1 + 173, 1, -17.4 );
setRotateKey( spep_1 + 174, 1, -17.4 );
setRotateKey( spep_1 + 175, 1, -17.1 );
setRotateKey( spep_1 + 176, 1, -17.1 );
setRotateKey( spep_1 + 177, 1, -16.7 );
setRotateKey( spep_1 + 178, 1, -16.7 );
setRotateKey( spep_1 + 179, 1, -16.3 );
setRotateKey( spep_1 + 180, 1, -16.3 );
setRotateKey( spep_1 + 181, 1, -15.9 );
setRotateKey( spep_1 + 182, 1, -15.9 );
setRotateKey( spep_1 + 183, 1, -15.6 );
setRotateKey( spep_1 + 184, 1, -15.6 );
setRotateKey( spep_1 + 185, 1, -15.2 );
setRotateKey( spep_1 + 186, 1, -15.2 );
setRotateKey( spep_1 + 187, 1, -14.8 );
setRotateKey( spep_1 + 188, 1, -14.8 );
setRotateKey( spep_1 + 189, 1, -14.5 );
setRotateKey( spep_1 + 190, 1, -14.5 );
setRotateKey( spep_1 + 191, 1, -14.1 );
setRotateKey( spep_1 + 192, 1, -14.1 );
setRotateKey( spep_1 + 193, 1, -13.7 );
setRotateKey( spep_1 + 194, 1, -13.7 );
setRotateKey( spep_1 + 195, 1, -13.3 );
setRotateKey( spep_1 + 196, 1, -13.3 );
setRotateKey( spep_1 + 197, 1, -13 );
setRotateKey( spep_1 + 198, 1, -13 );
setRotateKey( spep_1 + 199, 1, -12.6 );
setRotateKey( spep_1 + 200, 1, -12.6 );
setRotateKey( spep_1 + 201, 1, -12.2 );
setRotateKey( spep_1 + 202, 1, -12.2 );
setRotateKey( spep_1 + 203, 1, -11.9 );
setRotateKey( spep_1 + 204, 1, -11.9 );
setRotateKey( spep_1 + 205, 1, -11.5 );
setRotateKey( spep_1 + 206, 1, -11.5 );
setRotateKey( spep_1 + 207, 1, -11.1 );
setRotateKey( spep_1 + 208, 1, -11.1 );
setRotateKey( spep_1 + 209, 1, -10.7 );
setRotateKey( spep_1 + 210, 1, -10.7 );
setRotateKey( spep_1 + 211, 1, -10.4 );
setRotateKey( spep_1 + 212, 1, -10.4 );
setRotateKey( spep_1 + 213, 1, -10 );
setRotateKey( spep_1 + 214, 1, -10 );
setRotateKey( spep_1 + 215, 1, 19.8 );
setRotateKey( spep_1 + 218, 1, 19.8 );
setRotateKey( spep_1 + 219, 1, 27.9 );
setRotateKey( spep_1 + 220, 1, 27.9 );
setRotateKey( spep_1 + 221, 1, 33.9 );
setRotateKey( spep_1 + 222, 1, 33.9 );
setRotateKey( spep_1 + 223, 1, 35.9 );
setRotateKey( spep_1 + 226, 1, 35.9 );
setRotateKey( spep_1 + 227, 1, 39.9 );
setRotateKey( spep_1 + 228, 1, 39.9 );
setRotateKey( spep_1 + 229, 1, 49.9 );
setRotateKey( spep_1 + 230, 1, 49.9 );
setRotateKey( spep_1 + 231, 1, 60 );
setRotateKey( spep_1 + 233, 1, 60 );
--非表示
setRotateKey( spep_1 + 239, 1, 20 ); --ラリアット
setRotateKey( spep_1 + 254, 1, 20 );
setRotateKey( spep_1 + 255, 1, 0 );
setRotateKey( spep_1 + 280, 1, 0 );
setRotateKey( spep_1 + 281, 1, 40 );
setRotateKey( spep_1 + 287, 1, 40 );
--非表示
setRotateKey( spep_1 + 311, 1, 0 ); --吹っ飛び
setRotateKey( spep_1 + 312, 1, 0 );
setRotateKey( spep_1 + 313, 1, 44.8 );
setRotateKey( spep_1 + 314, 1, 44.8 );
setRotateKey( spep_1 + 315, 1, 59.9 );
setRotateKey( spep_1 + 316, 1, 59.9 );
setRotateKey( spep_1 + 317, 1, 70.3 );
setRotateKey( spep_1 + 318, 1, 70.3 );
setRotateKey( spep_1 + 319, 1, 78.3 );
setRotateKey( spep_1 + 320, 1, 78.3 );
setRotateKey( spep_1 + 321, 1, 84.7 );
setRotateKey( spep_1 + 322, 1, 84.7 );
setRotateKey( spep_1 + 323, 1, 90 );
setRotateKey( spep_1 + 324, 1, 90 );
setRotateKey( spep_1 + 325, 1, 94.6 );
setRotateKey( spep_1 + 326, 1, 94.6 );
setRotateKey( spep_1 + 327, 1, 98.5 );
setRotateKey( spep_1 + 328, 1, 98.5 );
setRotateKey( spep_1 + 329, 1, 101.9 );
setRotateKey( spep_1 + 330, 1, 101.9 );
setRotateKey( spep_1 + 331, 1, 104.8 );
setRotateKey( spep_1 + 332, 1, 104.8 );
setRotateKey( spep_1 + 333, 1, 107.4 );
setRotateKey( spep_1 + 334, 1, 107.4 );
setRotateKey( spep_1 + 335, 1, 109.7 );
setRotateKey( spep_1 + 336, 1, 109.7 );
setRotateKey( spep_1 + 337, 1, 111.8 );
setRotateKey( spep_1 + 338, 1, 111.8 );
setRotateKey( spep_1 + 339, 1, 113.6 );
setRotateKey( spep_1 + 340, 1, 113.6 );
setRotateKey( spep_1 + 341, 1, 115.2 );
setRotateKey( spep_1 + 342, 1, 115.2 );
setRotateKey( spep_1 + 343, 1, 116.6 );
setRotateKey( spep_1 + 344, 1, 116.6 );
setRotateKey( spep_1 + 345, 1, 117.9 );
setRotateKey( spep_1 + 346, 1, 117.9 );
setRotateKey( spep_1 + 347, 1, 119 );
setRotateKey( spep_1 + 348, 1, 119 );
setRotateKey( spep_1 + 349, 1, 120 );
setRotateKey( spep_1 + 351, 1, 120 );
--非表示
setRotateKey( spep_1 +455, 1, 40 ); --気弾命中
setRotateKey( spep_1 +456, 1, 40 );
setRotateKey( spep_1 +457, 1, 40.4 );
setRotateKey( spep_1 +458, 1, 40.4 );
setRotateKey( spep_1 +459, 1, 40.8 );
setRotateKey( spep_1 +460, 1, 40.8 );
setRotateKey( spep_1 +461, 1, 41.2 );
setRotateKey( spep_1 +462, 1, 41.2 );
setRotateKey( spep_1 +463, 1, 41.5 );
setRotateKey( spep_1 +464, 1, 41.5 );
setRotateKey( spep_1 +465, 1, 41.9 );
setRotateKey( spep_1 +466, 1, 41.9 );
setRotateKey( spep_1 +467, 1, 42.3 );
setRotateKey( spep_1 +468, 1, 42.3 );
setRotateKey( spep_1 +469, 1, 42.7 );
setRotateKey( spep_1 +470, 1, 42.7 );
setRotateKey( spep_1 +471, 1, 43.1 );
setRotateKey( spep_1 +472, 1, 43.1 );
setRotateKey( spep_1 +473, 1, 43.5 );
setRotateKey( spep_1 +474, 1, 43.5 );
setRotateKey( spep_1 +475, 1, 43.8 );
setRotateKey( spep_1 +476, 1, 43.8 );
setRotateKey( spep_1 +477, 1, 44.2 );
setRotateKey( spep_1 +478, 1, 44.2 );
setRotateKey( spep_1 +479, 1, 44.6 );
setRotateKey( spep_1 +480, 1, 44.6 );
setRotateKey( spep_1 +481, 1, 45 );
setRotateKey( spep_1 +482, 1, 45 );
setRotateKey( spep_1 +483, 1, 51.7 );
setRotateKey( spep_1 +484, 1, 51.7 );
setRotateKey( spep_1 +485, 1, 58.3 );
setRotateKey( spep_1 +486, 1, 58.3 );
setRotateKey( spep_1 +487, 1, 59 );
setRotateKey( spep_1 +488, 1, 59 );
setRotateKey( spep_1 +489, 1, 59.7 );
setRotateKey( spep_1 +490, 1, 59.7 );
setRotateKey( spep_1 +491, 1, 60.3 );
setRotateKey( spep_1 +492, 1, 60.3 );
setRotateKey( spep_1 +493, 1, 61 );
setRotateKey( spep_1 +494, 1, 61 );
setRotateKey( spep_1 +495, 1, 61.7 );
setRotateKey( spep_1 +496, 1, 61.7 );
setRotateKey( spep_1 +497, 1, 62.3 );
setRotateKey( spep_1 +498, 1, 62.3 );
setRotateKey( spep_1 +499, 1, 63 );
setRotateKey( spep_1 +500, 1, 63 );
setRotateKey( spep_1 +501, 1, 63.7 );
setRotateKey( spep_1 +502, 1, 63.7 );
setRotateKey( spep_1 +503, 1, 64.3 );
setRotateKey( spep_1 +504, 1, 64.3 );
setRotateKey( spep_1 +505, 1, 65 );
setRotateKey( spep_1 +507, 1, 65 );


-- ** 音 ** --
--振りかぶる
SE005 = playSeVer2( spep_1 + 42, 1116, "",spep_1 + 80, 0, 16, -1);
SE006 = playSeVer2( spep_1 + 80, 1004, "", 0, 0, 0, -1);

--パンチ
SE007 = playSeVer2( spep_1 + 100, 1187, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 100, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 100, SE008, 84 );

--飛び上がる
SE009 = playSeVer2( spep_1 + 186, 1003, "", 0, 0, 0, -1);

--蹴り
SE010 = playSeVer2( spep_1 + 206, 1123, "", 0, 0, 0, -1);

--瞬間移動
SE011 = playSeVer2( spep_1 + 224, 1109, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 246, 1109, "", 0, 0, 0, -1);

--裏拳
SE013 = playSeVer2( spep_1 + 278, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 278, SE013, 89 );
SE014 = playSeVer2( spep_1 + 278, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 278, SE014, 89 );
SE015 = playSeVer2( spep_1 + 278, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 278, SE015, 89 );
SE016 = playSeVer2( spep_1 + 278, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 278, SE016, 89 );

--敵飛んでいく
SE017 = playSeVer2( spep_1 + 314, 1121, "",spep_1 + 402, 0, 54, -1);

--気弾１
SE018 = playSeVer2( spep_1 + 356, 1145, "",spep_1 + 432, 4, 38, 0.6);
setSeVolumeByWorkId( spep_1 + 356, SE018, 140 );
setStartTimeMs( SE018,  417 );
setPitch( spep_1 + 356, SE018, 400 );
setTimeStretch( SE018, 1.27, 30, 4 );
SE019 = playSeVer2( spep_1 + 356, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 356, SE019, 120 );

--気弾２
SE020 = playSeVer2( spep_1 + 398, 1145, "",spep_1 + 474, 4, 40, 0.6);
setSeVolumeByWorkId( spep_1 + 398, SE020, 140 );
setStartTimeMs( SE020,  417 );
setPitch( spep_1 + 398, SE020, 400 );
setTimeStretch( SE020, 1.27, 30, 4 );
SE021 = playSeVer2( spep_1 + 402, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 402, SE021, 120 );

--気弾３
SE022 = playSeVer2( spep_1 + 436, 1145, "",spep_1 + 512, 4, 38, 0.6);
setSeVolumeByWorkId( spep_1 + 436, SE022, 140 );
setStartTimeMs( SE022,  417 );
setPitch( spep_1 + 436, SE022, 400 );
setTimeStretch( SE022, 1.27, 30, 4 );
SE023 = playSeVer2( spep_1 + 440, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 440, SE023, 120 );

--爆発
SE024 = playSeVer2( spep_1 + 478, 1023, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 478, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 478, SE025, 79 );
SE026 = playSeVer2( spep_1 + 508, 1024, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 538, 1023, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_2 = spep_1 + 562;


------------------------------------------------------
--エネミーが煙から落下 (24F)
------------------------------------------------------
-- ** エフェクト等 ** --
rakka = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_2 + 0, rakka, 0, 0 , 0 );
setEffMoveKey( spep_2 + 24, rakka, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rakka, 1.0, 1.0 );
setEffScaleKey( spep_2 + 24, rakka, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rakka, 0 );
setEffRotateKey( spep_2 + 24, rakka, 0 );
setEffAlphaKey( spep_2 + 0, rakka, 255 );
setEffAlphaKey( spep_2 + 24 -2, rakka, 255 );
setEffAlphaKey( spep_2 + 24 -1, rakka, 255 );
setEffAlphaKey( spep_2 + 24, rakka, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 24 + 2, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 3, 1, 1 );
setDisp( spep_2 + 24, 1, 0 );
changeAnime( spep_2 + 3, 1, 107 );

setMoveKey( spep_2 + 3, 1, -10.4, 160.3 , 0 );
setMoveKey( spep_2 + 4, 1, -10.4, 160.3 , 0 );
setMoveKey( spep_2 + 5, 1, -10.2, 159.4 , 0 );
setMoveKey( spep_2 + 6, 1, -10.2, 159.4 , 0 );
setMoveKey( spep_2 + 7, 1, -9.6, 156.8 , 0 );
setMoveKey( spep_2 + 8, 1, -9.6, 156.8 , 0 );
setMoveKey( spep_2 + 9, 1, -8.5, 152 , 0 );
setMoveKey( spep_2 + 10, 1, -8.5, 152 , 0 );
setMoveKey( spep_2 + 11, 1, -6.8, 144.8 , 0 );
setMoveKey( spep_2 + 12, 1, -6.8, 144.8 , 0 );
setMoveKey( spep_2 + 13, 1, -4.4, 134.3 , 0 );
setMoveKey( spep_2 + 14, 1, -4.4, 134.3 , 0 );
setMoveKey( spep_2 + 15, 1, -1, 119.9 , 0 );
setMoveKey( spep_2 + 16, 1, -1, 119.9 , 0 );
setMoveKey( spep_2 + 17, 1, 3.6, 100 , 0 );
setMoveKey( spep_2 + 18, 1, 3.6, 100 , 0 );
setMoveKey( spep_2 + 19, 1, 10, 71.9 , 0 );
setMoveKey( spep_2 + 20, 1, 10, 71.9 , 0 );
setMoveKey( spep_2 + 21, 1, 20, 28.8 , 0 );
setMoveKey( spep_2 + 22, 1, 20, 28.8 , 0 );
setMoveKey( spep_2 + 23, 1, 44.8, -79.8 , 0 );
setMoveKey( spep_2 + 24, 1, 44.8, -79.8 , 0 );

setScaleKey( spep_2 + 3, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 4, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 5, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 6, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 7, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 8, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 9, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 10, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 11, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 12, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 13, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 14, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 15, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 16, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 17, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 18, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 19, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 20, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 21, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 22, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 23, 1, 1, 1 );
setScaleKey( spep_2 + 24, 1, 1, 1 );

setRotateKey( spep_2 + 3, 1, 70 );
setRotateKey( spep_2 + 24, 1, 70 );

-- ** 音 ** --
--敵吹き飛ぶ
SE028 = playSeVer2( spep_2 + 2, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE028, 71 );

--気弾溜め
SE029 = playSeVer2( spep_2 + 22, 1181, "",spep_2 + 24 + 146, 0, 20, -1);
SE030 = playSeVer2( spep_2 + 22, 1396, "",spep_2 + 24 + 146, 0, 20, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 24;


------------------------------------------------------
--地獄玉発生から顔アップ (120F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 120, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 120 -2, tame, 255 );
setEffAlphaKey( spep_3 + 120 -1, tame, 255 );
setEffAlphaKey( spep_3 + 120, tame, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 120 + 2, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 音 ** --
--気弾溜め
SE031 = playSeVer2( spep_3 + 18, 1224, "",spep_3 + 146, 0, 20, 0.6);
setPitch( spep_3 + 18, SE031, -100 );
setTimeStretch( SE031, 0.93, 30, 4 );
SE032 = playSeVer2( spep_3 + 38, 1225, "",spep_3 + 146, 0, 20, -1);
SE033 = playSeVer2( spep_3 + 40, 1262, "",spep_3 + 146, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 40, SE033, 191 );
setPitch( spep_3 + 40, SE033, -100 );
setTimeStretch( SE033, 0.93, 30, 4 );
SE034 = playSeVer2( spep_3 + 40, 1204, "",spep_3 + 146, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 40, SE034, 135 );
setPitch( spep_3 + 40, SE034, -300 );
setTimeStretch( SE034, 0.8, 30, 4 );
SE035 = playSeVer2( spep_3 + 40, 1243, "",spep_3 + 146, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 40, SE035, 73 );
SE036 = playSeVer2( spep_3 + 40, 1148, "",spep_3 + 146, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 40, SE036, 51 );
setPitch( spep_3 + 40, SE036, -1200 );
setTimeStretch( SE036, 0.2, 30, 4 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 120;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
--地獄玉発射 (118F)
------------------------------------------------------
-- ** エフェクト等 ** --
hassha = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_5 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_5 + 118, hassha, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_5 + 118, hassha, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hassha, 0 );
setEffRotateKey( spep_5 + 118, hassha, 0 );
setEffAlphaKey( spep_5 + 0, hassha, 255 );
setEffAlphaKey( spep_5 + 118 -2, hassha, 255 );
setEffAlphaKey( spep_5 + 118 -1, hassha, 255 );
setEffAlphaKey( spep_5 + 118, hassha, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 118 + 2, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 音 ** --
--気弾発射前溜め
SE038 = playSeVer2( spep_5 + 0, 1262, "",spep_5 + 78, 0, 20, -1);
setSeVolumeByWorkId( spep_5 + 0, SE038, 178 );
setPitch( spep_5 + 0, SE038, -100 );
setTimeStretch( SE038, 0.93, 30, 4 );
SE039 = playSeVer2( spep_5 + 0, 1204, "",spep_5 + 78, 0, 20, -1);
setSeVolumeByWorkId( spep_5 + 0, SE039, 148 );
setPitch( spep_5 + 0, SE039, -300 );
setTimeStretch( SE039, 0.8, 30, 4 );
SE040 = playSeVer2( spep_5 + 0, 1243, "",spep_5 + 78, 0, 20, -1);
setSeVolumeByWorkId( spep_5 + 0, SE040, 71 );
SE041 = playSeVer2( spep_5 + 0, 1148, "",spep_5 + 78, 0, 20, -1);
setSeVolumeByWorkId( spep_5 + 0, SE041, 56 );
setPitch( spep_5 + 0, SE041, -1200 );
setTimeStretch( SE041, 0.2, 30, 4 );

--気弾発射
SE042 = playSeVer2( spep_5 + 48, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 48, SE042, 60 );
SE043 = playSeVer2( spep_5 + 54, 1027, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_5 + 54, 1193, "",spep_5 + 228, 0, 32, 0.6);
SE045 = playSeVer2( spep_5 + 54, 1145, "",spep_5 + 200, 0, 32, -1);
setPitch( spep_5 + 54, SE045, 300 );
setTimeStretch( SE045, 1.2, 30, 4 );
SE046 = playSeVer2( spep_5 + 70, 1215, "",spep_5 + 226, 0, 28, -1);


-- ** 次の準備 ** --
spep_6 = spep_5 + 118;


------------------------------------------------------
--地獄玉がエネミーに接近 (78F)
------------------------------------------------------
-- ** エフェクト等 ** --
sekkin_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_6 + 0, sekkin_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 78, sekkin_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, sekkin_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 78, sekkin_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, sekkin_f, 0 );
setEffRotateKey( spep_6 + 78, sekkin_f, 0 );
setEffAlphaKey( spep_6 + 0, sekkin_f, 255 );
setEffAlphaKey( spep_6 + 78 -2, sekkin_f, 255 );
setEffAlphaKey( spep_6 + 78 -1, sekkin_f, 255 );
setEffAlphaKey( spep_6 + 78, sekkin_f, 0 );

sekkin_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_6 + 0, sekkin_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 78, sekkin_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, sekkin_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 78, sekkin_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, sekkin_b, 0 );
setEffRotateKey( spep_6 + 78, sekkin_b, 0 );
setEffAlphaKey( spep_6 + 0, sekkin_b, 255 );
setEffAlphaKey( spep_6 + 78 -2, sekkin_b, 255 );
setEffAlphaKey( spep_6 + 78 -1, sekkin_b, 255 );
setEffAlphaKey( spep_6 + 78, sekkin_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 78 + 2, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 39, 1, 0 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, 19.6, -73.8 , 0 );
setMoveKey( spep_6 + 1, 1, 24.6, -82.4 , 0 );
setMoveKey( spep_6 + 2, 1, 24.6, -82.4 , 0 );
setMoveKey( spep_6 + 3, 1, 17.6, -85.1 , 0 );
setMoveKey( spep_6 + 4, 1, 17.6, -85.1 , 0 );
setMoveKey( spep_6 + 5, 1, 26.6, -89.8 , 0 );
setMoveKey( spep_6 + 6, 1, 26.6, -89.8 , 0 );
setMoveKey( spep_6 + 7, 1, 19.7, -96.7 , 0 );
setMoveKey( spep_6 + 8, 1, 19.7, -96.7 , 0 );
setMoveKey( spep_6 + 9, 1, 24.8, -97.8 , 0 );
setMoveKey( spep_6 + 10, 1, 24.8, -97.8 , 0 );
setMoveKey( spep_6 + 11, 1, 29.9, -107.1 , 0 );
setMoveKey( spep_6 + 12, 1, 29.9, -107.1 , 0 );
setMoveKey( spep_6 + 13, 1, 23.1, -110.7 , 0 );
setMoveKey( spep_6 + 14, 1, 23.1, -110.7 , 0 );
setMoveKey( spep_6 + 15, 1, 32.4, -116.8 , 0 );
setMoveKey( spep_6 + 16, 1, 32.4, -116.8 , 0 );
setMoveKey( spep_6 + 17, 1, 25.8, -125.3 , 0 );
setMoveKey( spep_6 + 18, 1, 25.8, -125.3 , 0 );
setMoveKey( spep_6 + 19, 1, 31.3, -128.4 , 0 );
setMoveKey( spep_6 + 20, 1, 31.3, -128.4 , 0 );
setMoveKey( spep_6 + 21, 1, 37, -140.1 , 0 );
setMoveKey( spep_6 + 22, 1, 37, -140.1 , 0 );
setMoveKey( spep_6 + 23, 1, 30.8, -146.6 , 0 );
setMoveKey( spep_6 + 24, 1, 30.8, -146.6 , 0 );
setMoveKey( spep_6 + 25, 1, 40.8, -155.9 , 0 );
setMoveKey( spep_6 + 26, 1, 40.8, -155.9 , 0 );
setMoveKey( spep_6 + 27, 1, 35, -168.3 , 0 );
setMoveKey( spep_6 + 28, 1, 35, -168.3 , 0 );
setMoveKey( spep_6 + 29, 1, 41.5, -175.9 , 0 );
setMoveKey( spep_6 + 30, 1, 41.5, -175.9 , 0 );
setMoveKey( spep_6 + 31, 1, 48.2, -192.9 , 0 );
setMoveKey( spep_6 + 32, 1, 48.2, -192.9 , 0 );
setMoveKey( spep_6 + 33, 1, 43.4, -205.5 , 0 );
setMoveKey( spep_6 + 34, 1, 43.4, -205.5 , 0 );
setMoveKey( spep_6 + 35, 1, 54.9, -222.2 , 0 );
setMoveKey( spep_6 + 36, 1, 54.9, -222.2 , 0 );
setMoveKey( spep_6 + 37, 1, 51.2, -243.1 , 0 );
setMoveKey( spep_6 + 39, 1, 51.2, -243.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_6 + 1, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 2, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 3, 1, 0.53, 0.53 );
setScaleKey( spep_6 + 4, 1, 0.53, 0.53 );
setScaleKey( spep_6 + 5, 1, 0.54, 0.54 );
setScaleKey( spep_6 + 6, 1, 0.54, 0.54 );
setScaleKey( spep_6 + 7, 1, 0.56, 0.56 );
setScaleKey( spep_6 + 8, 1, 0.56, 0.56 );
setScaleKey( spep_6 + 9, 1, 0.57, 0.57 );
setScaleKey( spep_6 + 10, 1, 0.57, 0.57 );
setScaleKey( spep_6 + 11, 1, 0.59, 0.59 );
setScaleKey( spep_6 + 12, 1, 0.59, 0.59 );
setScaleKey( spep_6 + 13, 1, 0.61, 0.61 );
setScaleKey( spep_6 + 14, 1, 0.61, 0.61 );
setScaleKey( spep_6 + 15, 1, 0.62, 0.62 );
setScaleKey( spep_6 + 16, 1, 0.62, 0.62 );
setScaleKey( spep_6 + 17, 1, 0.64, 0.64 );
setScaleKey( spep_6 + 18, 1, 0.64, 0.64 );
setScaleKey( spep_6 + 19, 1, 0.67, 0.67 );
setScaleKey( spep_6 + 20, 1, 0.67, 0.67 );
setScaleKey( spep_6 + 21, 1, 0.69, 0.69 );
setScaleKey( spep_6 + 22, 1, 0.69, 0.69 );
setScaleKey( spep_6 + 23, 1, 0.71, 0.71 );
setScaleKey( spep_6 + 24, 1, 0.71, 0.71 );
setScaleKey( spep_6 + 25, 1, 0.74, 0.74 );
setScaleKey( spep_6 + 26, 1, 0.74, 0.74 );
setScaleKey( spep_6 + 27, 1, 0.77, 0.77 );
setScaleKey( spep_6 + 28, 1, 0.77, 0.77 );
setScaleKey( spep_6 + 29, 1, 0.81, 0.81 );
setScaleKey( spep_6 + 30, 1, 0.81, 0.81 );
setScaleKey( spep_6 + 31, 1, 0.85, 0.85 );
setScaleKey( spep_6 + 32, 1, 0.85, 0.85 );
setScaleKey( spep_6 + 33, 1, 0.89, 0.89 );
setScaleKey( spep_6 + 34, 1, 0.89, 0.89 );
setScaleKey( spep_6 + 35, 1, 0.94, 0.94 );
setScaleKey( spep_6 + 36, 1, 0.94, 0.94 );
setScaleKey( spep_6 + 37, 1, 1, 1 );
setScaleKey( spep_6 + 39, 1, 1, 1 );

setRotateKey( spep_6 + 0, 1, 90 );
setRotateKey( spep_6 + 39, 1, 90 );


-- ** 音 ** --
--気弾飛んでくる
SE047 = playSeVer2( spep_6 + 40, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 40, SE047, 67 );
SE048 = playSeVer2( spep_6 + 50, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 50, SE048, 71 );


-- ** 次の準備 ** --
spep_7 = spep_6 + 78;


------------------------------------------------------
--フィニッシュ (128F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_7 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_7 + 128, finish, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 128, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 128, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 128, finish, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 128 + 2, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 音 ** --
--爆発
SE049 = playSeVer2( spep_7 + 0, 1067, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_7 + 0, 1069, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_7 + 8, 1188, "", 0, 0, 0, -1);


-- -- ** ダメージ表示 ** --
dealDamage( spep_7 + 6 ); -- ダメージ表示フレーム
endPhase( spep_7 + 128 - 10 ); -- 終了フレーム




else

------------------------------------------------------
--敵側
------------------------------------------------------
------------------------------------------------------
--顔アップ登場 (90F)
------------------------------------------------------

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 90, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 90, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 90, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 90 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 90 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 90, first_f, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 90 + 2, 0, 0, 0, 0, 255 );  --黒　背景

--[[
spep_x = spep_0 + 4;
-- ** セリフカットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
]]

-- ** 音 ** --
--顔カットイン
SE001 = playSeVer2( spep_0 + 12, 1018, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 90;


------------------------------------------------------
--突進から連続気弾 (562F)
------------------------------------------------------
-- ** エフェクト等 ** --
tosshin_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --ef_002a
setEffMoveKey( spep_1 + 0, tosshin_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 562, tosshin_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tosshin_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 562, tosshin_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tosshin_f, 0 );
setEffRotateKey( spep_1 + 562, tosshin_f, 0 );
setEffAlphaKey( spep_1 + 0, tosshin_f, 255 );
setEffAlphaKey( spep_1 + 562 -2, tosshin_f, 255 );
setEffAlphaKey( spep_1 + 562 -1, tosshin_f, 255 );
setEffAlphaKey( spep_1 + 562, tosshin_f, 0 );

tosshin_b = entryEffect( spep_1 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --ef_002b
setEffMoveKey( spep_1 + 0, tosshin_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 562, tosshin_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tosshin_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 562, tosshin_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tosshin_b, 0 );
setEffRotateKey( spep_1 + 562, tosshin_b, 0 );
setEffAlphaKey( spep_1 + 0, tosshin_b, 255 );
setEffAlphaKey( spep_1 + 562 -2, tosshin_b, 255 );
setEffAlphaKey( spep_1 + 562 -1, tosshin_b, 255 );
setEffAlphaKey( spep_1 + 562, tosshin_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 562 + 2, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 102 );

setMoveKey( spep_1 + 0, 1, 180.4, -152.5 , 0 );
setMoveKey( spep_1 + 1, 1, 180.5, -152.7 , 0 );
setMoveKey( spep_1 + 2, 1, 180.5, -152.7 , 0 );
setMoveKey( spep_1 + 3, 1, 180.6, -152.8 , 0 );
setMoveKey( spep_1 + 4, 1, 180.6, -152.8 , 0 );
setMoveKey( spep_1 + 5, 1, 180.8, -153 , 0 );
setMoveKey( spep_1 + 6, 1, 180.8, -153 , 0 );
setMoveKey( spep_1 + 7, 1, 181, -153.2 , 0 );
setMoveKey( spep_1 + 8, 1, 181, -153.2 , 0 );
setMoveKey( spep_1 + 9, 1, 181.3, -153.5 , 0 );
setMoveKey( spep_1 + 10, 1, 181.3, -153.5 , 0 );
setMoveKey( spep_1 + 11, 1, 181.6, -153.8 , 0 );
setMoveKey( spep_1 + 12, 1, 181.6, -153.8 , 0 );
setMoveKey( spep_1 + 13, 1, 182.1, -154.3 , 0 );
setMoveKey( spep_1 + 14, 1, 182.1, -154.3 , 0 );
setMoveKey( spep_1 + 15, 1, 182.7, -154.9 , 0 );
setMoveKey( spep_1 + 16, 1, 182.7, -154.9 , 0 );
setMoveKey( spep_1 + 17, 1, 183.4, -155.6 , 0 );
setMoveKey( spep_1 + 18, 1, 183.4, -155.6 , 0 );
setMoveKey( spep_1 + 19, 1, 184.4, -156.6 , 0 );

setScaleKey( spep_1 + 0, 1, 3, 3 );
setScaleKey( spep_1 + 6, 1, 3, 3 );
setScaleKey( spep_1 + 7, 1, 3.01, 3.01 );
setScaleKey( spep_1 + 14, 1, 3.01, 3.01 );
setScaleKey( spep_1 + 15, 1, 3.02, 3.02 );
setScaleKey( spep_1 + 16, 1, 3.02, 3.02 );
setScaleKey( spep_1 + 17, 1, 3.03, 3.03 );
setScaleKey( spep_1 + 19, 1, 3.03, 3.03 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 19, 1, 0 );

-- ** 音 ** --
--向かってくる
SE002 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_1 + 0, 1117, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_1 + 0, 9, "", 0, 0, 0, -1);


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 20; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);

    -- ** 敵キャラクター ** --
	setMoveKey( SP_dodge + 0, 1, 184.4, -156.6 , 0 );
	setMoveKey( SP_dodge + 1, 1, 185.6, -157.7 , 0 );
	setMoveKey( SP_dodge + 2, 1, 185.6, -157.7 , 0 );
	setMoveKey( SP_dodge + 3, 1, 186.8, -159 , 0 );
	setMoveKey( SP_dodge + 4, 1, 186.8, -159 , 0 );
	setMoveKey( SP_dodge + 5, 1, 188.2, -160.4 , 0 );
	setMoveKey( SP_dodge + 6, 1, 188.2, -160.4 , 0 );
	setMoveKey( SP_dodge + 7, 1, 189.3, -161.7 , 0 );
	setMoveKey( SP_dodge + 8, 1, 189.3, -161.7 , 0 );
	setMoveKey( SP_dodge + 9, 1, 202.7, -193.1 , 0 );
	setMoveKey( SP_dodge + 10, 1, 202.7, -193.1 , 0 );

	setScaleKey( SP_dodge + 0, 1, 3.03, 3.03 );
	setScaleKey( SP_dodge + 1, 1, 3.04, 3.04 );
	setScaleKey( SP_dodge + 2, 1, 3.04, 3.04 );
	setScaleKey( SP_dodge + 3, 1, 3.05, 3.05 );
	setScaleKey( SP_dodge + 4, 1, 3.05, 3.05 );
	setScaleKey( SP_dodge + 5, 1, 3.06, 3.06 );
	setScaleKey( SP_dodge + 6, 1, 3.06, 3.06 );
	setScaleKey( SP_dodge + 7, 1, 3.08, 3.08 );
	setScaleKey( SP_dodge + 8, 1, 3.08, 3.08 );
	setScaleKey( SP_dodge + 9, 1, 3.51, 3.51 );
	setScaleKey( SP_dodge + 10, 1, 3.51, 3.51 );

	setRotateKey( SP_dodge + 0, 1, 0 );
	setRotateKey( SP_dodge + 10, 1, 0 );
    
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
-- ** 敵キャラクター ** --
setDisp( spep_1 + 35, 1, 0 );
setDisp( spep_1 + 53, 1, 1 );
setDisp( spep_1 + 77, 1, 0 );
setDisp( spep_1 + 93, 1, 1 );
setDisp( spep_1 + 233, 1, 0 );
setDisp( spep_1 + 239, 1, 1 );
setDisp( spep_1 + 287, 1, 0 );
setDisp( spep_1 + 311, 1, 1 );
setDisp( spep_1 + 351, 1, 0 );
setDisp( spep_1 + 455, 1, 1 );
setDisp( spep_1 + 507, 1, 0 );
changeAnime( spep_1 + 93, 1, 104 );
changeAnime( spep_1 + 105, 1, 106 );
changeAnime( spep_1 + 215, 1, 108 );
changeAnime( spep_1 + 255, 1, 104 );
changeAnime( spep_1 + 281, 1, 108 );
changeAnime( spep_1 + 311, 1, 105 );
changeAnime( spep_1 + 455, 1, 106 );

--非表示
setMoveKey( spep_1 + 20, 1, 184.4, -156.6 , 0 ); --接近
setMoveKey( spep_1 + 21, 1, 185.6, -157.7 , 0 );
setMoveKey( spep_1 + 22, 1, 185.6, -157.7 , 0 );
setMoveKey( spep_1 + 23, 1, 186.8, -159 , 0 );
setMoveKey( spep_1 + 24, 1, 186.8, -159 , 0 );
setMoveKey( spep_1 + 25, 1, 188.2, -160.4 , 0 );
setMoveKey( spep_1 + 26, 1, 188.2, -160.4 , 0 );
setMoveKey( spep_1 + 27, 1, 189.3, -161.7 , 0 );
setMoveKey( spep_1 + 28, 1, 189.3, -161.7 , 0 );
setMoveKey( spep_1 + 29, 1, 202.7, -193.1 , 0 );
setMoveKey( spep_1 + 30, 1, 202.7, -193.1 , 0 );
setMoveKey( spep_1 + 31, 1, 226.5, -249.1 , 0 );
setMoveKey( spep_1 + 32, 1, 226.5, -249.1 , 0 );
setMoveKey( spep_1 + 33, 1, 279.8, -373.9 , 0 );
setMoveKey( spep_1 + 35, 1, 279.8, -373.9 , 0 );
--非表示
setMoveKey( spep_1 + 53, 1, 100.2, -253.1 , 0 ); --振りかぶり
setMoveKey( spep_1 + 54, 1, 100.2, -253.1 , 0 );
setMoveKey( spep_1 + 55, 1, 167.6, -253.2 , 0 );
setMoveKey( spep_1 + 56, 1, 167.6, -253.2 , 0 );
setMoveKey( spep_1 + 57, 1, 192.9, -253.2 , 0 );
setMoveKey( spep_1 + 58, 1, 192.9, -253.2 , 0 );
setMoveKey( spep_1 + 59, 1, 210.6, -253.2 , 0 );
setMoveKey( spep_1 + 60, 1, 210.6, -253.2 , 0 );
setMoveKey( spep_1 + 61, 1, 224, -253.2 , 0 );
setMoveKey( spep_1 + 62, 1, 224, -253.2 , 0 );
setMoveKey( spep_1 + 63, 1, 234.6, -253.2 , 0 );
setMoveKey( spep_1 + 64, 1, 234.6, -253.2 , 0 );
setMoveKey( spep_1 + 65, 1, 242.9, -253.2 , 0 );
setMoveKey( spep_1 + 66, 1, 242.9, -253.2 , 0 );
setMoveKey( spep_1 + 67, 1, 249.4, -253.2 , 0 );
setMoveKey( spep_1 + 68, 1, 249.4, -253.2 , 0 );
setMoveKey( spep_1 + 69, 1, 254.2, -253.2 , 0 );
setMoveKey( spep_1 + 70, 1, 254.2, -253.2 , 0 );
setMoveKey( spep_1 + 71, 1, 257.5, -253.2 , 0 );
setMoveKey( spep_1 + 72, 1, 257.5, -253.2 , 0 );
setMoveKey( spep_1 + 73, 1, 259.5, -253.2 , 0 );
setMoveKey( spep_1 + 74, 1, 259.5, -253.2 , 0 );
setMoveKey( spep_1 + 75, 1, 260.2, -253.1 , 0 );
setMoveKey( spep_1 + 77, 1, 260.2, -253.1 , 0 );
--非表示
setMoveKey( spep_1 + 93, 1, -23.1, -362.1 , 0 ); --ストレート
setMoveKey( spep_1 + 104, 1, -23.1, -362.1 , 0 );
setMoveKey( spep_1 + 105, 1, -69.7, -480.3 , 0 );
setMoveKey( spep_1 + 108, 1, -69.7, -480.3 , 0 );
setMoveKey( spep_1 + 109, 1, -27.7, -474.8 , 0 );
setMoveKey( spep_1 + 112, 1, -27.7, -474.8 , 0 );
setMoveKey( spep_1 + 113, 1, 5.8, -497.8 , 0 );
setMoveKey( spep_1 + 114, 1, 5.8, -497.8 , 0 );
setMoveKey( spep_1 + 115, 1, -42.2, -450.8 , 0 );
setMoveKey( spep_1 + 116, 1, -42.2, -450.8 , 0 );
setMoveKey( spep_1 + 117, 1, -64.7, -478.8 , 0 );
setMoveKey( spep_1 + 118, 1, -64.7, -478.8 , 0 );
setMoveKey( spep_1 + 119, 1, -54.7, -478.3 , 0 );
setMoveKey( spep_1 + 122, 1, -54.7, -478.3 , 0 );
setMoveKey( spep_1 + 123, 1, -29.2, -479.8 , 0 );
setMoveKey( spep_1 + 124, 1, -29.2, -479.8 , 0 );
setMoveKey( spep_1 + 125, 1, -46.2, -452.3 , 0 );
setMoveKey( spep_1 + 126, 1, -46.2, -452.3 , 0 );
setMoveKey( spep_1 + 127, 1, -67.2, -464.8 , 0 );
setMoveKey( spep_1 + 128, 1, -67.2, -464.8 , 0 );
setMoveKey( spep_1 + 129, 1, -95, -617.9 , 0 );
setMoveKey( spep_1 + 132, 1, -95, -617.9 , 0 );
setMoveKey( spep_1 + 133, 1, -31.7, -490.8 , 0 );
setMoveKey( spep_1 + 134, 1, -31.7, -490.8 , 0 );
setMoveKey( spep_1 + 135, 1, -6.2, -494.8 , 0 );
setMoveKey( spep_1 + 136, 1, -6.2, -494.8 , 0 );
setMoveKey( spep_1 + 137, 1, -43.2, -452.8 , 0 );
setMoveKey( spep_1 + 138, 1, -43.2, -452.8 , 0 );
setMoveKey( spep_1 + 139, 1, -58.2, -477.8 , 0 );
setMoveKey( spep_1 + 142, 1, -58.2, -477.8 , 0 );
setMoveKey( spep_1 + 143, 1, 0.3, -498.3 , 0 );
setMoveKey( spep_1 + 144, 1, 0.3, -498.3 , 0 );
setMoveKey( spep_1 + 145, 1, -64.7, -480.3 , 0 );
setMoveKey( spep_1 + 146, 1, -64.7, -480.3 , 0 );
setMoveKey( spep_1 + 147, 1, -41.2, -454.8 , 0 );
setMoveKey( spep_1 + 148, 1, -41.2, -454.8 , 0 );
setMoveKey( spep_1 + 149, 1, -94, -620.9 , 0 );
setMoveKey( spep_1 + 152, 1, -94, -620.9 , 0 );
setMoveKey( spep_1 + 153, 1, -33.2, -487.3 , 0 );
setMoveKey( spep_1 + 154, 1, -33.2, -487.3 , 0 );
setMoveKey( spep_1 + 155, 1, -56.2, -480.8 , 0 );
setMoveKey( spep_1 + 156, 1, -56.2, -480.8 , 0 );
setMoveKey( spep_1 + 157, 1, -41.2, -454.8 , 0 );
setMoveKey( spep_1 + 158, 1, -41.2, -454.8 , 0 );
setMoveKey( spep_1 + 159, 1, 27.3, -74.4 , 0 ); --ドロップキック
setMoveKey( spep_1 + 160, 1, 27.3, -74.4 , 0 );
setMoveKey( spep_1 + 161, 1, 30, -75.2 , 0 );
setMoveKey( spep_1 + 162, 1, 30, -75.2 , 0 );
setMoveKey( spep_1 + 163, 1, 32.6, -76 , 0 );
setMoveKey( spep_1 + 164, 1, 32.6, -76 , 0 );
setMoveKey( spep_1 + 165, 1, 35.2, -76.9 , 0 );
setMoveKey( spep_1 + 166, 1, 35.2, -76.9 , 0 );
setMoveKey( spep_1 + 167, 1, 37.9, -77.7 , 0 );
setMoveKey( spep_1 + 168, 1, 37.9, -77.7 , 0 );
setMoveKey( spep_1 + 169, 1, 40.5, -78.5 , 0 );
setMoveKey( spep_1 + 170, 1, 40.5, -78.5 , 0 );
setMoveKey( spep_1 + 171, 1, 43.2, -79.3 , 0 );
setMoveKey( spep_1 + 172, 1, 43.2, -79.3 , 0 );
setMoveKey( spep_1 + 173, 1, 45.8, -80.1 , 0 );
setMoveKey( spep_1 + 174, 1, 45.8, -80.1 , 0 );
setMoveKey( spep_1 + 175, 1, 48.4, -80.9 , 0 );
setMoveKey( spep_1 + 176, 1, 48.4, -80.9 , 0 );
setMoveKey( spep_1 + 177, 1, 51.1, -81.7 , 0 );
setMoveKey( spep_1 + 178, 1, 51.1, -81.7 , 0 );
setMoveKey( spep_1 + 179, 1, 53.7, -82.5 , 0 );
setMoveKey( spep_1 + 180, 1, 53.7, -82.5 , 0 );
setMoveKey( spep_1 + 181, 1, 56.4, -83.4 , 0 );
setMoveKey( spep_1 + 182, 1, 56.4, -83.4 , 0 );
setMoveKey( spep_1 + 183, 1, 59, -84.2 , 0 );
setMoveKey( spep_1 + 184, 1, 59, -84.2 , 0 );
setMoveKey( spep_1 + 185, 1, 61.7, -85 , 0 );
setMoveKey( spep_1 + 186, 1, 61.7, -85 , 0 );
setMoveKey( spep_1 + 187, 1, 64.3, -85.8 , 0 );
setMoveKey( spep_1 + 188, 1, 64.3, -85.8 , 0 );
setMoveKey( spep_1 + 189, 1, 66.9, -86.6 , 0 );
setMoveKey( spep_1 + 190, 1, 66.9, -86.6 , 0 );
setMoveKey( spep_1 + 191, 1, 69.6, -87.4 , 0 );
setMoveKey( spep_1 + 192, 1, 69.6, -87.4 , 0 );
setMoveKey( spep_1 + 193, 1, 72.2, -88.2 , 0 );
setMoveKey( spep_1 + 194, 1, 72.2, -88.2 , 0 );
setMoveKey( spep_1 + 195, 1, 74.9, -89 , 0 );
setMoveKey( spep_1 + 196, 1, 74.9, -89 , 0 );
setMoveKey( spep_1 + 197, 1, 77.5, -89.9 , 0 );
setMoveKey( spep_1 + 198, 1, 77.5, -89.9 , 0 );
setMoveKey( spep_1 + 199, 1, 80.1, -90.7 , 0 );
setMoveKey( spep_1 + 200, 1, 80.1, -90.7 , 0 );
setMoveKey( spep_1 + 201, 1, 82.8, -91.5 , 0 );
setMoveKey( spep_1 + 202, 1, 82.8, -91.5 , 0 );
setMoveKey( spep_1 + 203, 1, 85.4, -92.3 , 0 );
setMoveKey( spep_1 + 204, 1, 85.4, -92.3 , 0 );
setMoveKey( spep_1 + 205, 1, 88.1, -93.1 , 0 );
setMoveKey( spep_1 + 206, 1, 88.1, -93.1 , 0 );
setMoveKey( spep_1 + 207, 1, 90.7, -93.9 , 0 );
setMoveKey( spep_1 + 208, 1, 90.7, -93.9 , 0 );
setMoveKey( spep_1 + 209, 1, 93.3, -94.7 , 0 );
setMoveKey( spep_1 + 210, 1, 93.3, -94.7 , 0 );
setMoveKey( spep_1 + 211, 1, 96, -95.5 , 0 );
setMoveKey( spep_1 + 212, 1, 96, -95.5 , 0 );
setMoveKey( spep_1 + 213, 1, 163.3, -193.4 , 0 );
setMoveKey( spep_1 + 214, 1, 163.3, -193.4 , 0 );
setMoveKey( spep_1 + 215, 1, 108.4, -94.5 , 0 ); --ヒット
setMoveKey( spep_1 + 216, 1, 108.4, -94.5 , 0 );
setMoveKey( spep_1 + 217, 1, 115.5, -100.1 , 0 );
setMoveKey( spep_1 + 218, 1, 115.5, -100.1 , 0 );
setMoveKey( spep_1 + 219, 1, 180.3, -118.6 , 0 );
setMoveKey( spep_1 + 220, 1, 180.3, -118.6 , 0 );
setMoveKey( spep_1 + 221, 1, 186.3, -138.2 , 0 );
setMoveKey( spep_1 + 222, 1, 186.3, -138.2 , 0 );
setMoveKey( spep_1 + 223, 1, 182.9, -138.7 , 0 );
setMoveKey( spep_1 + 224, 1, 182.9, -138.7 , 0 );
setMoveKey( spep_1 + 225, 1, 190.9, -146.7 , 0 );
setMoveKey( spep_1 + 226, 1, 190.9, -146.7 , 0 );
setMoveKey( spep_1 + 227, 1, 204.9, -167.5 , 0 );
setMoveKey( spep_1 + 228, 1, 204.9, -167.5 , 0 );
setMoveKey( spep_1 + 229, 1, 328, -316 , 0 );
setMoveKey( spep_1 + 230, 1, 328, -316 , 0 );
setMoveKey( spep_1 + 231, 1, 451.1, -464.5 , 0 );
setMoveKey( spep_1 + 233, 1, 451.1, -464.5 , 0 );
--非表示
setMoveKey( spep_1 + 239, 1, -407.1, 105.2 , 0 ); --ラリアット
setMoveKey( spep_1 + 240, 1, -407.1, 105.2 , 0 );
setMoveKey( spep_1 + 241, 1, -365.9, 89.3 , 0 );
setMoveKey( spep_1 + 242, 1, -365.9, 89.3 , 0 );
setMoveKey( spep_1 + 243, 1, -324.7, 73.4 , 0 );
setMoveKey( spep_1 + 244, 1, -324.7, 73.4 , 0 );
setMoveKey( spep_1 + 245, 1, -283.5, 57.5 , 0 );
setMoveKey( spep_1 + 246, 1, -283.5, 57.5 , 0 );
setMoveKey( spep_1 + 247, 1, -242.3, 41.5 , 0 );
setMoveKey( spep_1 + 248, 1, -242.3, 41.5 , 0 );
setMoveKey( spep_1 + 249, 1, -201.1, 25.6 , 0 );
setMoveKey( spep_1 + 250, 1, -201.1, 25.6 , 0 );
setMoveKey( spep_1 + 251, 1, -159.9, 9.7 , 0 );
setMoveKey( spep_1 + 252, 1, -159.9, 9.7 , 0 );
setMoveKey( spep_1 + 253, 1, -118.7, -6.3 , 0 );
setMoveKey( spep_1 + 254, 1, -118.7, -6.3 , 0 );
setMoveKey( spep_1 + 255, 1, -197.3, -150.3 , 0 );
setMoveKey( spep_1 + 256, 1, -197.3, -150.3 , 0 );
setMoveKey( spep_1 + 257, 1, -185.3, -151 , 0 );
setMoveKey( spep_1 + 258, 1, -185.3, -151 , 0 );
setMoveKey( spep_1 + 259, 1, -173.3, -151.7 , 0 );
setMoveKey( spep_1 + 260, 1, -173.3, -151.7 , 0 );
setMoveKey( spep_1 + 261, 1, -161.3, -152.3 , 0 );
setMoveKey( spep_1 + 262, 1, -161.3, -152.3 , 0 );
setMoveKey( spep_1 + 263, 1, -149.3, -153 , 0 );
setMoveKey( spep_1 + 264, 1, -149.3, -153 , 0 );
setMoveKey( spep_1 + 265, 1, -137.3, -153.7 , 0 );
setMoveKey( spep_1 + 266, 1, -137.3, -153.7 , 0 );
setMoveKey( spep_1 + 267, 1, -125.3, -154.3 , 0 );
setMoveKey( spep_1 + 268, 1, -125.3, -154.3 , 0 );
setMoveKey( spep_1 + 269, 1, -113.3, -155 , 0 );
setMoveKey( spep_1 + 270, 1, -113.3, -155 , 0 );
setMoveKey( spep_1 + 271, 1, -101.3, -155.7 , 0 );
setMoveKey( spep_1 + 272, 1, -101.3, -155.7 , 0 );
setMoveKey( spep_1 + 273, 1, -89.3, -156.3 , 0 );
setMoveKey( spep_1 + 274, 1, -89.3, -156.3 , 0 );
setMoveKey( spep_1 + 275, 1, -77.3, -157 , 0 );
setMoveKey( spep_1 + 276, 1, -77.3, -157 , 0 );
setMoveKey( spep_1 + 277, 1, -65.3, -157.7 , 0 );
setMoveKey( spep_1 + 278, 1, -65.3, -157.7 , 0 );
setMoveKey( spep_1 + 279, 1, -53.3, -158.3 , 0 );
setMoveKey( spep_1 + 280, 1, -53.3, -158.3 , 0 );
setMoveKey( spep_1 + 281, 1, 69.4, -151.5 , 0 );
setMoveKey( spep_1 + 282, 1, 69.4, -151.5 , 0 );
setMoveKey( spep_1 + 283, 1, 5, -112.7 , 0 );
setMoveKey( spep_1 + 284, 1, 5, -112.7 , 0 );
setMoveKey( spep_1 + 285, 1, 793.5, -146.8 , 0 );
setMoveKey( spep_1 + 287, 1, 793.5, -146.8 , 0 );
--非表示
setMoveKey( spep_1 + 311, 1, -440.2, -213.6 , 0 ); --吹っ飛び
setMoveKey( spep_1 + 312, 1, -440.2, -213.6 , 0 );
setMoveKey( spep_1 + 313, 1, -209.6, -99.7 , 0 );
setMoveKey( spep_1 + 314, 1, -209.6, -99.7 , 0 );
setMoveKey( spep_1 + 315, 1, -131, -61.2 , 0 );
setMoveKey( spep_1 + 316, 1, -131, -61.2 , 0 );
setMoveKey( spep_1 + 317, 1, -77.1, -35 , 0 );
setMoveKey( spep_1 + 318, 1, -77.1, -35 , 0 );
setMoveKey( spep_1 + 319, 1, -35.8, -14.9 , 0 );
setMoveKey( spep_1 + 320, 1, -35.8, -14.9 , 0 );
setMoveKey( spep_1 + 321, 1, -2.4, 1.2 , 0 );
setMoveKey( spep_1 + 322, 1, -2.4, 1.2 , 0 );
setMoveKey( spep_1 + 323, 1, 25.3, 14.6 , 0 );
setMoveKey( spep_1 + 324, 1, 25.3, 14.6 , 0 );
setMoveKey( spep_1 + 325, 1, 48.8, 25.9 , 0 );
setMoveKey( spep_1 + 326, 1, 48.8, 25.9 , 0 );
setMoveKey( spep_1 + 327, 1, 69, 35.6 , 0 );
setMoveKey( spep_1 + 328, 1, 69, 35.6 , 0 );
setMoveKey( spep_1 + 329, 1, 86.6, 44.1 , 0 );
setMoveKey( spep_1 + 330, 1, 86.6, 44.1 , 0 );
setMoveKey( spep_1 + 331, 1, 102, 51.5 , 0 );
setMoveKey( spep_1 + 332, 1, 102, 51.5 , 0 );
setMoveKey( spep_1 + 333, 1, 115.5, 58 , 0 );
setMoveKey( spep_1 + 334, 1, 115.5, 58 , 0 );
setMoveKey( spep_1 + 335, 1, 127.5, 63.7 , 0 );
setMoveKey( spep_1 + 336, 1, 127.5, 63.7 , 0 );
setMoveKey( spep_1 + 337, 1, 138.1, 68.8 , 0 );
setMoveKey( spep_1 + 338, 1, 138.1, 68.8 , 0 );
setMoveKey( spep_1 + 339, 1, 147.5, 73.3 , 0 );
setMoveKey( spep_1 + 340, 1, 147.5, 73.3 , 0 );
setMoveKey( spep_1 + 341, 1, 155.8, 77.3 , 0 );
setMoveKey( spep_1 + 342, 1, 155.8, 77.3 , 0 );
setMoveKey( spep_1 + 343, 1, 163.2, 80.9 , 0 );
setMoveKey( spep_1 + 344, 1, 163.2, 80.9 , 0 );
setMoveKey( spep_1 + 345, 1, 169.8, 84 , 0 );
setMoveKey( spep_1 + 346, 1, 169.8, 84 , 0 );
setMoveKey( spep_1 + 347, 1, 175.6, 86.8 , 0 );
setMoveKey( spep_1 + 351, 1, 175.6, 86.8 , 0 );
--非表示
setMoveKey( spep_1 +455, 1, -131.7, 212.8 , 0 ); --気弾命中
setMoveKey( spep_1 +456, 1, -131.7, 212.8 , 0 );
setMoveKey( spep_1 +457, 1, -120.9, 206.6 , 0 );
setMoveKey( spep_1 +458, 1, -120.9, 206.6 , 0 );
setMoveKey( spep_1 +459, 1, -110.2, 200.4 , 0 );
setMoveKey( spep_1 +460, 1, -110.2, 200.4 , 0 );
setMoveKey( spep_1 +461, 1, -99.4, 194.3 , 0 );
setMoveKey( spep_1 +462, 1, -99.4, 194.3 , 0 );
setMoveKey( spep_1 +463, 1, -88.6, 188.1 , 0 );
setMoveKey( spep_1 +464, 1, -88.6, 188.1 , 0 );
setMoveKey( spep_1 +465, 1, -77.9, 182 , 0 );
setMoveKey( spep_1 +466, 1, -77.9, 182 , 0 );
setMoveKey( spep_1 +467, 1, -67.1, 175.8 , 0 );
setMoveKey( spep_1 +468, 1, -67.1, 175.8 , 0 );
setMoveKey( spep_1 +469, 1, -56.3, 169.7 , 0 );
setMoveKey( spep_1 +470, 1, -56.3, 169.7 , 0 );
setMoveKey( spep_1 +471, 1, -45.6, 163.5 , 0 );
setMoveKey( spep_1 +472, 1, -45.6, 163.5 , 0 );
setMoveKey( spep_1 +473, 1, -34.8, 157.4 , 0 );
setMoveKey( spep_1 +474, 1, -34.8, 157.4 , 0 );
setMoveKey( spep_1 +475, 1, -24, 151.2 , 0 );
setMoveKey( spep_1 +476, 1, -24, 151.2 , 0 );
setMoveKey( spep_1 +477, 1, -13.3, 145.1 , 0 );
setMoveKey( spep_1 +478, 1, -13.3, 145.1 , 0 );
setMoveKey( spep_1 +479, 1, -2.5, 138.9 , 0 );
setMoveKey( spep_1 +480, 1, -2.5, 138.9 , 0 );
setMoveKey( spep_1 +481, 1, 8.3, 132.8 , 0 );
setMoveKey( spep_1 +482, 1, 8.3, 132.8 , 0 );
setMoveKey( spep_1 +483, 1, 144, 243.5 , 0 );
setMoveKey( spep_1 +484, 1, 144, 243.5 , 0 );
setMoveKey( spep_1 +485, 1, 75, 146.3 , 0 );
setMoveKey( spep_1 +486, 1, 75, 146.3 , 0 );
setMoveKey( spep_1 +487, 1, 106.8, 174.3 , 0 );
setMoveKey( spep_1 +488, 1, 106.8, 174.3 , 0 );
setMoveKey( spep_1 +489, 1, 138.9, 202.4 , 0 );
setMoveKey( spep_1 +490, 1, 138.9, 202.4 , 0 );
setMoveKey( spep_1 +491, 1, 113.8, 175.7 , 0 );
setMoveKey( spep_1 +492, 1, 113.8, 175.7 , 0 );
setMoveKey( spep_1 +493, 1, 88.3, 148.9 , 0 );
setMoveKey( spep_1 +494, 1, 88.3, 148.9 , 0 );
setMoveKey( spep_1 +495, 1, 99.7, 160.8 , 0 );
setMoveKey( spep_1 +496, 1, 99.7, 160.8 , 0 );
setMoveKey( spep_1 +497, 1, 111.2, 172.8 , 0 );
setMoveKey( spep_1 +498, 1, 111.2, 172.8 , 0 );
setMoveKey( spep_1 +499, 1, 106.5, 162.2 , 0 );
setMoveKey( spep_1 +500, 1, 106.5, 162.2 , 0 );
setMoveKey( spep_1 +501, 1, 101.6, 151.6 , 0 );
setMoveKey( spep_1 +502, 1, 101.6, 151.6 , 0 );
setMoveKey( spep_1 +503, 1, 104.9, 152.2 , 0 );
setMoveKey( spep_1 +504, 1, 104.9, 152.2 , 0 );
setMoveKey( spep_1 +505, 1, 108.3, 152.9 , 0 );
setMoveKey( spep_1 +507, 1, 108.3, 152.9 , 0 );

n = 1.08; --山田さん要望により大きさ調整

setScaleKey( spep_1 + 20, 1, 3.03, 3.03 ); --接近
setScaleKey( spep_1 + 21, 1, 3.04, 3.04 );
setScaleKey( spep_1 + 22, 1, 3.04, 3.04 );
setScaleKey( spep_1 + 23, 1, 3.05, 3.05 );
setScaleKey( spep_1 + 24, 1, 3.05, 3.05 );
setScaleKey( spep_1 + 25, 1, 3.06, 3.06 );
setScaleKey( spep_1 + 26, 1, 3.06, 3.06 );
setScaleKey( spep_1 + 27, 1, 3.08, 3.08 );
setScaleKey( spep_1 + 28, 1, 3.08, 3.08 );
setScaleKey( spep_1 + 29, 1, 3.51, 3.51 );
setScaleKey( spep_1 + 30, 1, 3.51, 3.51 );
setScaleKey( spep_1 + 31, 1, 4.28, 4.28 );
setScaleKey( spep_1 + 32, 1, 4.28, 4.28 );
setScaleKey( spep_1 + 33, 1, 6, 6 );
setScaleKey( spep_1 + 35, 1, 6, 6 );
--非表示
setScaleKey( spep_1 + 53, 1, 4.2, 4.2 ); --振りかぶり
setScaleKey( spep_1 + 77, 1, 4.2, 4.2 );
--非表示
setScaleKey( spep_1 + 93, 1, 7.5, 7.5 ); --ストレート
setScaleKey( spep_1 + 128, 1, 7.5, 7.5 );
setScaleKey( spep_1 + 129, 1, 8.98, 8.98 );
setScaleKey( spep_1 + 132, 1, 8.98, 8.98 );
setScaleKey( spep_1 + 133, 1, 7.5, 7.5 );
setScaleKey( spep_1 + 148, 1, 7.5, 7.5 );
setScaleKey( spep_1 + 149, 1, 8.98, 8.98 );
setScaleKey( spep_1 + 152, 1, 8.98, 8.98 );
setScaleKey( spep_1 + 153, 1, 7.5, 7.5 );
setScaleKey( spep_1 + 158, 1, 7.5, 7.5 );
setScaleKey( spep_1 + 159, 1, 1.44 * n, 1.44 * n ); --ドロップキック
setScaleKey( spep_1 + 212, 1, 1.44 * n, 1.44 * n );
setScaleKey( spep_1 + 213, 1, 1.66 * n, 1.66 * n );
setScaleKey( spep_1 + 220, 1, 1.66 * n, 1.66 * n );
setScaleKey( spep_1 + 221, 1, 1.77 * n, 1.77 * n );
setScaleKey( spep_1 + 222, 1, 1.77 * n, 1.77 * n );
setScaleKey( spep_1 + 223, 1, 1.69 * n, 1.69 * n );
setScaleKey( spep_1 + 224, 1, 1.69 * n, 1.69 * n );
setScaleKey( spep_1 + 225, 1, 1.78 * n, 1.78 * n );
setScaleKey( spep_1 + 226, 1, 1.78 * n, 1.78 * n );
setScaleKey( spep_1 + 227, 1, 1.88 * n, 1.88 * n );
setScaleKey( spep_1 + 228, 1, 1.88 * n, 1.88 * n );
setScaleKey( spep_1 + 229, 1, 2.09 * n, 2.09 * n );
setScaleKey( spep_1 + 233, 1, 2.09 * n, 2.09 * n );
--非表示
setScaleKey( spep_1 + 239, 1, 7.87, 7.87 ); --ラリアット
setScaleKey( spep_1 + 240, 1, 7.87, 7.87 );
setScaleKey( spep_1 + 241, 1, 7.71, 7.71 );
setScaleKey( spep_1 + 242, 1, 7.71, 7.71 );
setScaleKey( spep_1 + 243, 1, 7.55, 7.55 );
setScaleKey( spep_1 + 244, 1, 7.55, 7.55 );
setScaleKey( spep_1 + 245, 1, 7.39, 7.39 );
setScaleKey( spep_1 + 246, 1, 7.39, 7.39 );
setScaleKey( spep_1 + 247, 1, 7.23, 7.23 );
setScaleKey( spep_1 + 248, 1, 7.23, 7.23 );
setScaleKey( spep_1 + 249, 1, 7.06, 7.06 );
setScaleKey( spep_1 + 250, 1, 7.06, 7.06 );
setScaleKey( spep_1 + 251, 1, 6.9, 6.9 );
setScaleKey( spep_1 + 252, 1, 6.9, 6.9 );
setScaleKey( spep_1 + 253, 1, 6.74, 6.74 );
setScaleKey( spep_1 + 254, 1, 6.74, 6.74 );
setScaleKey( spep_1 + 255, 1, 5.5, 5.5 );
setScaleKey( spep_1 + 280, 1, 5.5, 5.5 );
setScaleKey( spep_1 + 281, 1, 6.32, 6.32 );
setScaleKey( spep_1 + 282, 1, 6.32, 6.32 );
setScaleKey( spep_1 + 283, 1, 5.49, 5.49 );
setScaleKey( spep_1 + 284, 1, 5.49, 5.49 );
setScaleKey( spep_1 + 285, 1, 5.77, 5.77 );
setScaleKey( spep_1 + 287, 1, 5.77, 5.77 );
--非表示
setScaleKey( spep_1 + 311, 1, 6, 6 ); --吹っ飛び
setScaleKey( spep_1 + 312, 1, 6, 6 );
setScaleKey( spep_1 + 313, 1, 3.87, 3.87 );
setScaleKey( spep_1 + 314, 1, 3.87, 3.87 );
setScaleKey( spep_1 + 315, 1, 3.15, 3.15 );
setScaleKey( spep_1 + 316, 1, 3.15, 3.15 );
setScaleKey( spep_1 + 317, 1, 2.66, 2.66 );
setScaleKey( spep_1 + 318, 1, 2.66, 2.66 );
setScaleKey( spep_1 + 319, 1, 2.28, 2.28 );
setScaleKey( spep_1 + 320, 1, 2.28, 2.28 );
setScaleKey( spep_1 + 321, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 322, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 323, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 324, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 325, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 326, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 327, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 328, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 329, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 330, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 331, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 332, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 333, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 334, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 335, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 336, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 337, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 338, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 339, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 340, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 341, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 342, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 343, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 344, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 345, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 346, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 347, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 348, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 349, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 351, 1, 0.3, 0.3 );
--非表示
setScaleKey( spep_1 +455, 1, 1.2, 1.2 ); --気弾命中
setScaleKey( spep_1 +482, 1, 1.2, 1.2 );
setScaleKey( spep_1 +483, 1, 1.36, 1.36 );
setScaleKey( spep_1 +484, 1, 1.36, 1.36 );
setScaleKey( spep_1 +485, 1, 1.07, 1.07 );
setScaleKey( spep_1 +486, 1, 1.07, 1.07 );
setScaleKey( spep_1 +487, 1, 1.11, 1.11 );
setScaleKey( spep_1 +488, 1, 1.11, 1.11 );
setScaleKey( spep_1 +489, 1, 1.16, 1.16 );
setScaleKey( spep_1 +490, 1, 1.16, 1.16 );
setScaleKey( spep_1 +491, 1, 1.1, 1.1 );
setScaleKey( spep_1 +492, 1, 1.1, 1.1 );
setScaleKey( spep_1 +493, 1, 1.04, 1.04 );
setScaleKey( spep_1 +494, 1, 1.04, 1.04 );
setScaleKey( spep_1 +495, 1, 1.06, 1.06 );
setScaleKey( spep_1 +496, 1, 1.06, 1.06 );
setScaleKey( spep_1 +497, 1, 1.08, 1.08 );
setScaleKey( spep_1 +498, 1, 1.08, 1.08 );
setScaleKey( spep_1 +499, 1, 1.05, 1.05 );
setScaleKey( spep_1 +500, 1, 1.05, 1.05 );
setScaleKey( spep_1 +501, 1, 1.01, 1.01 );
setScaleKey( spep_1 +504, 1, 1.01, 1.01 );
setScaleKey( spep_1 +505, 1, 1, 1 );
setScaleKey( spep_1 +507, 1, 1, 1 );

setRotateKey( spep_1 + 21, 1, 0 ); --接近
setRotateKey( spep_1 + 35, 1, 0 );
--非表示
setRotateKey( spep_1 + 53, 1, 0 ); --振りかぶり
setRotateKey( spep_1 + 77, 1, 0 );
--非表示
setRotateKey( spep_1 + 93, 1, 0 ); --ストレート
setRotateKey( spep_1 + 104, 1, 0 );
setRotateKey( spep_1 + 105, 1, -40 );
setRotateKey( spep_1 + 128, 1, -40 );
setRotateKey( spep_1 + 129, 1, -39.9 );
setRotateKey( spep_1 + 132, 1, -39.9 );
setRotateKey( spep_1 + 133, 1, -40 );
setRotateKey( spep_1 + 148, 1, -40 );
setRotateKey( spep_1 + 149, 1, -39.9 );
setRotateKey( spep_1 + 152, 1, -39.9 );
setRotateKey( spep_1 + 153, 1, -40 );
setRotateKey( spep_1 + 158, 1, -40 );
setRotateKey( spep_1 + 159, 1, -20 ); --ドロップキック
setRotateKey( spep_1 + 160, 1, -20 );
setRotateKey( spep_1 + 161, 1, -19.7 );
setRotateKey( spep_1 + 162, 1, -19.7 );
setRotateKey( spep_1 + 163, 1, -19.3 );
setRotateKey( spep_1 + 164, 1, -19.3 );
setRotateKey( spep_1 + 165, 1, -18.9 );
setRotateKey( spep_1 + 166, 1, -18.9 );
setRotateKey( spep_1 + 167, 1, -18.5 );
setRotateKey( spep_1 + 168, 1, -18.5 );
setRotateKey( spep_1 + 169, 1, -18.2 );
setRotateKey( spep_1 + 170, 1, -18.2 );
setRotateKey( spep_1 + 171, 1, -17.8 );
setRotateKey( spep_1 + 172, 1, -17.8 );
setRotateKey( spep_1 + 173, 1, -17.4 );
setRotateKey( spep_1 + 174, 1, -17.4 );
setRotateKey( spep_1 + 175, 1, -17.1 );
setRotateKey( spep_1 + 176, 1, -17.1 );
setRotateKey( spep_1 + 177, 1, -16.7 );
setRotateKey( spep_1 + 178, 1, -16.7 );
setRotateKey( spep_1 + 179, 1, -16.3 );
setRotateKey( spep_1 + 180, 1, -16.3 );
setRotateKey( spep_1 + 181, 1, -15.9 );
setRotateKey( spep_1 + 182, 1, -15.9 );
setRotateKey( spep_1 + 183, 1, -15.6 );
setRotateKey( spep_1 + 184, 1, -15.6 );
setRotateKey( spep_1 + 185, 1, -15.2 );
setRotateKey( spep_1 + 186, 1, -15.2 );
setRotateKey( spep_1 + 187, 1, -14.8 );
setRotateKey( spep_1 + 188, 1, -14.8 );
setRotateKey( spep_1 + 189, 1, -14.5 );
setRotateKey( spep_1 + 190, 1, -14.5 );
setRotateKey( spep_1 + 191, 1, -14.1 );
setRotateKey( spep_1 + 192, 1, -14.1 );
setRotateKey( spep_1 + 193, 1, -13.7 );
setRotateKey( spep_1 + 194, 1, -13.7 );
setRotateKey( spep_1 + 195, 1, -13.3 );
setRotateKey( spep_1 + 196, 1, -13.3 );
setRotateKey( spep_1 + 197, 1, -13 );
setRotateKey( spep_1 + 198, 1, -13 );
setRotateKey( spep_1 + 199, 1, -12.6 );
setRotateKey( spep_1 + 200, 1, -12.6 );
setRotateKey( spep_1 + 201, 1, -12.2 );
setRotateKey( spep_1 + 202, 1, -12.2 );
setRotateKey( spep_1 + 203, 1, -11.9 );
setRotateKey( spep_1 + 204, 1, -11.9 );
setRotateKey( spep_1 + 205, 1, -11.5 );
setRotateKey( spep_1 + 206, 1, -11.5 );
setRotateKey( spep_1 + 207, 1, -11.1 );
setRotateKey( spep_1 + 208, 1, -11.1 );
setRotateKey( spep_1 + 209, 1, -10.7 );
setRotateKey( spep_1 + 210, 1, -10.7 );
setRotateKey( spep_1 + 211, 1, -10.4 );
setRotateKey( spep_1 + 212, 1, -10.4 );
setRotateKey( spep_1 + 213, 1, -10 );
setRotateKey( spep_1 + 214, 1, -10 );
setRotateKey( spep_1 + 215, 1, 19.8 );
setRotateKey( spep_1 + 218, 1, 19.8 );
setRotateKey( spep_1 + 219, 1, 27.9 );
setRotateKey( spep_1 + 220, 1, 27.9 );
setRotateKey( spep_1 + 221, 1, 33.9 );
setRotateKey( spep_1 + 222, 1, 33.9 );
setRotateKey( spep_1 + 223, 1, 35.9 );
setRotateKey( spep_1 + 226, 1, 35.9 );
setRotateKey( spep_1 + 227, 1, 39.9 );
setRotateKey( spep_1 + 228, 1, 39.9 );
setRotateKey( spep_1 + 229, 1, 49.9 );
setRotateKey( spep_1 + 230, 1, 49.9 );
setRotateKey( spep_1 + 231, 1, 60 );
setRotateKey( spep_1 + 233, 1, 60 );
--非表示
setRotateKey( spep_1 + 239, 1, 20 ); --ラリアット
setRotateKey( spep_1 + 254, 1, 20 );
setRotateKey( spep_1 + 255, 1, 0 );
setRotateKey( spep_1 + 280, 1, 0 );
setRotateKey( spep_1 + 281, 1, 40 );
setRotateKey( spep_1 + 287, 1, 40 );
--非表示
setRotateKey( spep_1 + 311, 1, 0 ); --吹っ飛び
setRotateKey( spep_1 + 312, 1, 0 );
setRotateKey( spep_1 + 313, 1, 44.8 );
setRotateKey( spep_1 + 314, 1, 44.8 );
setRotateKey( spep_1 + 315, 1, 59.9 );
setRotateKey( spep_1 + 316, 1, 59.9 );
setRotateKey( spep_1 + 317, 1, 70.3 );
setRotateKey( spep_1 + 318, 1, 70.3 );
setRotateKey( spep_1 + 319, 1, 78.3 );
setRotateKey( spep_1 + 320, 1, 78.3 );
setRotateKey( spep_1 + 321, 1, 84.7 );
setRotateKey( spep_1 + 322, 1, 84.7 );
setRotateKey( spep_1 + 323, 1, 90 );
setRotateKey( spep_1 + 324, 1, 90 );
setRotateKey( spep_1 + 325, 1, 94.6 );
setRotateKey( spep_1 + 326, 1, 94.6 );
setRotateKey( spep_1 + 327, 1, 98.5 );
setRotateKey( spep_1 + 328, 1, 98.5 );
setRotateKey( spep_1 + 329, 1, 101.9 );
setRotateKey( spep_1 + 330, 1, 101.9 );
setRotateKey( spep_1 + 331, 1, 104.8 );
setRotateKey( spep_1 + 332, 1, 104.8 );
setRotateKey( spep_1 + 333, 1, 107.4 );
setRotateKey( spep_1 + 334, 1, 107.4 );
setRotateKey( spep_1 + 335, 1, 109.7 );
setRotateKey( spep_1 + 336, 1, 109.7 );
setRotateKey( spep_1 + 337, 1, 111.8 );
setRotateKey( spep_1 + 338, 1, 111.8 );
setRotateKey( spep_1 + 339, 1, 113.6 );
setRotateKey( spep_1 + 340, 1, 113.6 );
setRotateKey( spep_1 + 341, 1, 115.2 );
setRotateKey( spep_1 + 342, 1, 115.2 );
setRotateKey( spep_1 + 343, 1, 116.6 );
setRotateKey( spep_1 + 344, 1, 116.6 );
setRotateKey( spep_1 + 345, 1, 117.9 );
setRotateKey( spep_1 + 346, 1, 117.9 );
setRotateKey( spep_1 + 347, 1, 119 );
setRotateKey( spep_1 + 348, 1, 119 );
setRotateKey( spep_1 + 349, 1, 120 );
setRotateKey( spep_1 + 351, 1, 120 );
--非表示
setRotateKey( spep_1 +455, 1, 40 ); --気弾命中
setRotateKey( spep_1 +456, 1, 40 );
setRotateKey( spep_1 +457, 1, 40.4 );
setRotateKey( spep_1 +458, 1, 40.4 );
setRotateKey( spep_1 +459, 1, 40.8 );
setRotateKey( spep_1 +460, 1, 40.8 );
setRotateKey( spep_1 +461, 1, 41.2 );
setRotateKey( spep_1 +462, 1, 41.2 );
setRotateKey( spep_1 +463, 1, 41.5 );
setRotateKey( spep_1 +464, 1, 41.5 );
setRotateKey( spep_1 +465, 1, 41.9 );
setRotateKey( spep_1 +466, 1, 41.9 );
setRotateKey( spep_1 +467, 1, 42.3 );
setRotateKey( spep_1 +468, 1, 42.3 );
setRotateKey( spep_1 +469, 1, 42.7 );
setRotateKey( spep_1 +470, 1, 42.7 );
setRotateKey( spep_1 +471, 1, 43.1 );
setRotateKey( spep_1 +472, 1, 43.1 );
setRotateKey( spep_1 +473, 1, 43.5 );
setRotateKey( spep_1 +474, 1, 43.5 );
setRotateKey( spep_1 +475, 1, 43.8 );
setRotateKey( spep_1 +476, 1, 43.8 );
setRotateKey( spep_1 +477, 1, 44.2 );
setRotateKey( spep_1 +478, 1, 44.2 );
setRotateKey( spep_1 +479, 1, 44.6 );
setRotateKey( spep_1 +480, 1, 44.6 );
setRotateKey( spep_1 +481, 1, 45 );
setRotateKey( spep_1 +482, 1, 45 );
setRotateKey( spep_1 +483, 1, 51.7 );
setRotateKey( spep_1 +484, 1, 51.7 );
setRotateKey( spep_1 +485, 1, 58.3 );
setRotateKey( spep_1 +486, 1, 58.3 );
setRotateKey( spep_1 +487, 1, 59 );
setRotateKey( spep_1 +488, 1, 59 );
setRotateKey( spep_1 +489, 1, 59.7 );
setRotateKey( spep_1 +490, 1, 59.7 );
setRotateKey( spep_1 +491, 1, 60.3 );
setRotateKey( spep_1 +492, 1, 60.3 );
setRotateKey( spep_1 +493, 1, 61 );
setRotateKey( spep_1 +494, 1, 61 );
setRotateKey( spep_1 +495, 1, 61.7 );
setRotateKey( spep_1 +496, 1, 61.7 );
setRotateKey( spep_1 +497, 1, 62.3 );
setRotateKey( spep_1 +498, 1, 62.3 );
setRotateKey( spep_1 +499, 1, 63 );
setRotateKey( spep_1 +500, 1, 63 );
setRotateKey( spep_1 +501, 1, 63.7 );
setRotateKey( spep_1 +502, 1, 63.7 );
setRotateKey( spep_1 +503, 1, 64.3 );
setRotateKey( spep_1 +504, 1, 64.3 );
setRotateKey( spep_1 +505, 1, 65 );
setRotateKey( spep_1 +507, 1, 65 );


-- ** 音 ** --
--振りかぶる
SE005 = playSeVer2( spep_1 + 42, 1116, "",spep_1 + 80, 0, 16, -1);
SE006 = playSeVer2( spep_1 + 80, 1004, "", 0, 0, 0, -1);

--パンチ
SE007 = playSeVer2( spep_1 + 100, 1187, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 100, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 100, SE008, 84 );

--飛び上がる
SE009 = playSeVer2( spep_1 + 186, 1003, "", 0, 0, 0, -1);

--蹴り
SE010 = playSeVer2( spep_1 + 206, 1123, "", 0, 0, 0, -1);

--瞬間移動
SE011 = playSeVer2( spep_1 + 224, 1109, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 246, 1109, "", 0, 0, 0, -1);

--裏拳
SE013 = playSeVer2( spep_1 + 278, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 278, SE013, 89 );
SE014 = playSeVer2( spep_1 + 278, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 278, SE014, 89 );
SE015 = playSeVer2( spep_1 + 278, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 278, SE015, 89 );
SE016 = playSeVer2( spep_1 + 278, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 278, SE016, 89 );

--敵飛んでいく
SE017 = playSeVer2( spep_1 + 314, 1121, "",spep_1 + 402, 0, 54, -1);

--気弾１
SE018 = playSeVer2( spep_1 + 356, 1145, "",spep_1 + 432, 4, 38, 0.6);
setSeVolumeByWorkId( spep_1 + 356, SE018, 140 );
setStartTimeMs( SE018,  417 );
setPitch( spep_1 + 356, SE018, 400 );
setTimeStretch( SE018, 1.27, 30, 4 );
SE019 = playSeVer2( spep_1 + 356, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 356, SE019, 120 );

--気弾２
SE020 = playSeVer2( spep_1 + 398, 1145, "",spep_1 + 474, 4, 40, 0.6);
setSeVolumeByWorkId( spep_1 + 398, SE020, 140 );
setStartTimeMs( SE020,  417 );
setPitch( spep_1 + 398, SE020, 400 );
setTimeStretch( SE020, 1.27, 30, 4 );
SE021 = playSeVer2( spep_1 + 402, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 402, SE021, 120 );

--気弾３
SE022 = playSeVer2( spep_1 + 436, 1145, "",spep_1 + 512, 4, 38, 0.6);
setSeVolumeByWorkId( spep_1 + 436, SE022, 140 );
setStartTimeMs( SE022,  417 );
setPitch( spep_1 + 436, SE022, 400 );
setTimeStretch( SE022, 1.27, 30, 4 );
SE023 = playSeVer2( spep_1 + 440, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 440, SE023, 120 );

--爆発
SE024 = playSeVer2( spep_1 + 478, 1023, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 478, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 478, SE025, 79 );
SE026 = playSeVer2( spep_1 + 508, 1024, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 538, 1023, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_2 = spep_1 + 562;


------------------------------------------------------
--エネミーが煙から落下 (24F)
------------------------------------------------------
-- ** エフェクト等 ** --
rakka = entryEffect( spep_2 + 0, SP_04r, 0x80, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_2 + 0, rakka, 0, 0 , 0 );
setEffMoveKey( spep_2 + 24, rakka, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rakka, 1.0, 1.0 );
setEffScaleKey( spep_2 + 24, rakka, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rakka, 0 );
setEffRotateKey( spep_2 + 24, rakka, 0 );
setEffAlphaKey( spep_2 + 0, rakka, 255 );
setEffAlphaKey( spep_2 + 24 -2, rakka, 255 );
setEffAlphaKey( spep_2 + 24 -1, rakka, 255 );
setEffAlphaKey( spep_2 + 24, rakka, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 24 + 2, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 3, 1, 1 );
setDisp( spep_2 + 24, 1, 0 );
changeAnime( spep_2 + 3, 1, 107 );

setMoveKey( spep_2 + 3, 1, -10.4, 160.3 , 0 );
setMoveKey( spep_2 + 4, 1, -10.4, 160.3 , 0 );
setMoveKey( spep_2 + 5, 1, -10.2, 159.4 , 0 );
setMoveKey( spep_2 + 6, 1, -10.2, 159.4 , 0 );
setMoveKey( spep_2 + 7, 1, -9.6, 156.8 , 0 );
setMoveKey( spep_2 + 8, 1, -9.6, 156.8 , 0 );
setMoveKey( spep_2 + 9, 1, -8.5, 152 , 0 );
setMoveKey( spep_2 + 10, 1, -8.5, 152 , 0 );
setMoveKey( spep_2 + 11, 1, -6.8, 144.8 , 0 );
setMoveKey( spep_2 + 12, 1, -6.8, 144.8 , 0 );
setMoveKey( spep_2 + 13, 1, -4.4, 134.3 , 0 );
setMoveKey( spep_2 + 14, 1, -4.4, 134.3 , 0 );
setMoveKey( spep_2 + 15, 1, -1, 119.9 , 0 );
setMoveKey( spep_2 + 16, 1, -1, 119.9 , 0 );
setMoveKey( spep_2 + 17, 1, 3.6, 100 , 0 );
setMoveKey( spep_2 + 18, 1, 3.6, 100 , 0 );
setMoveKey( spep_2 + 19, 1, 10, 71.9 , 0 );
setMoveKey( spep_2 + 20, 1, 10, 71.9 , 0 );
setMoveKey( spep_2 + 21, 1, 20, 28.8 , 0 );
setMoveKey( spep_2 + 22, 1, 20, 28.8 , 0 );
setMoveKey( spep_2 + 23, 1, 44.8, -79.8 , 0 );
setMoveKey( spep_2 + 24, 1, 44.8, -79.8 , 0 );

setScaleKey( spep_2 + 3, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 4, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 5, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 6, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 7, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 8, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 9, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 10, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 11, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 12, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 13, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 14, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 15, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 16, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 17, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 18, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 19, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 20, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 21, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 22, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 23, 1, 1, 1 );
setScaleKey( spep_2 + 24, 1, 1, 1 );

setRotateKey( spep_2 + 3, 1, 70 );
setRotateKey( spep_2 + 24, 1, 70 );


-- ** 音 ** --
--敵吹き飛ぶ
SE028 = playSeVer2( spep_2 + 2, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE028, 71 );

--気弾溜め
SE029 = playSeVer2( spep_2 + 22, 1181, "",spep_2 + 24 + 146, 0, 20, -1);
SE030 = playSeVer2( spep_2 + 22, 1396, "",spep_2 + 24 + 146, 0, 20, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 24;


------------------------------------------------------
--地獄玉発生から顔アップ (120F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 120, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 120 -2, tame, 255 );
setEffAlphaKey( spep_3 + 120 -1, tame, 255 );
setEffAlphaKey( spep_3 + 120, tame, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 120 + 2, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 音 ** --
--気弾溜め
SE031 = playSeVer2( spep_3 + 18, 1224, "",spep_3 + 146, 0, 20, 0.6);
setPitch( spep_3 + 18, SE031, -100 );
setTimeStretch( SE031, 0.93, 30, 4 );
SE032 = playSeVer2( spep_3 + 38, 1225, "",spep_3 + 146, 0, 20, -1);
SE033 = playSeVer2( spep_3 + 40, 1262, "",spep_3 + 146, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 40, SE033, 191 );
setPitch( spep_3 + 40, SE033, -100 );
setTimeStretch( SE033, 0.93, 30, 4 );
SE034 = playSeVer2( spep_3 + 40, 1204, "",spep_3 + 146, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 40, SE034, 135 );
setPitch( spep_3 + 40, SE034, -300 );
setTimeStretch( SE034, 0.8, 30, 4 );
SE035 = playSeVer2( spep_3 + 40, 1243, "",spep_3 + 146, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 40, SE035, 73 );
SE036 = playSeVer2( spep_3 + 40, 1148, "",spep_3 + 146, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 40, SE036, 51 );
setPitch( spep_3 + 40, SE036, -1200 );
setTimeStretch( SE036, 0.2, 30, 4 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 120;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
--地獄玉発射 (118F)
------------------------------------------------------
-- ** エフェクト等 ** --
hassha = entryEffect( spep_5 + 0, SP_06r, 0x100, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_5 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_5 + 118, hassha, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_5 + 118, hassha, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hassha, 0 );
setEffRotateKey( spep_5 + 118, hassha, 0 );
setEffAlphaKey( spep_5 + 0, hassha, 255 );
setEffAlphaKey( spep_5 + 118 -2, hassha, 255 );
setEffAlphaKey( spep_5 + 118 -1, hassha, 255 );
setEffAlphaKey( spep_5 + 118, hassha, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 118 + 2, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 音 ** --
--気弾発射前溜め
SE038 = playSeVer2( spep_5 + 0, 1262, "",spep_5 + 78, 0, 20, -1);
setSeVolumeByWorkId( spep_5 + 0, SE038, 178 );
setPitch( spep_5 + 0, SE038, -100 );
setTimeStretch( SE038, 0.93, 30, 4 );
SE039 = playSeVer2( spep_5 + 0, 1204, "",spep_5 + 78, 0, 20, -1);
setSeVolumeByWorkId( spep_5 + 0, SE039, 148 );
setPitch( spep_5 + 0, SE039, -300 );
setTimeStretch( SE039, 0.8, 30, 4 );
SE040 = playSeVer2( spep_5 + 0, 1243, "",spep_5 + 78, 0, 20, -1);
setSeVolumeByWorkId( spep_5 + 0, SE040, 71 );
SE041 = playSeVer2( spep_5 + 0, 1148, "",spep_5 + 78, 0, 20, -1);
setSeVolumeByWorkId( spep_5 + 0, SE041, 56 );
setPitch( spep_5 + 0, SE041, -1200 );
setTimeStretch( SE041, 0.2, 30, 4 );

--気弾発射
SE042 = playSeVer2( spep_5 + 48, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 48, SE042, 60 );
SE043 = playSeVer2( spep_5 + 54, 1027, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_5 + 54, 1193, "",spep_5 + 228, 0, 32, 0.6);
SE045 = playSeVer2( spep_5 + 54, 1145, "",spep_5 + 200, 0, 32, -1);
setPitch( spep_5 + 54, SE045, 300 );
setTimeStretch( SE045, 1.2, 30, 4 );
SE046 = playSeVer2( spep_5 + 70, 1215, "",spep_5 + 226, 0, 28, -1);


-- ** 次の準備 ** --
spep_6 = spep_5 + 118;


------------------------------------------------------
--地獄玉がエネミーに接近 (78F)
------------------------------------------------------
-- ** エフェクト等 ** --
sekkin_f = entryEffect( spep_6 + 0, SP_07r, 0x100, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_6 + 0, sekkin_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 78, sekkin_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, sekkin_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 78, sekkin_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, sekkin_f, 0 );
setEffRotateKey( spep_6 + 78, sekkin_f, 0 );
setEffAlphaKey( spep_6 + 0, sekkin_f, 255 );
setEffAlphaKey( spep_6 + 78 -2, sekkin_f, 255 );
setEffAlphaKey( spep_6 + 78 -1, sekkin_f, 255 );
setEffAlphaKey( spep_6 + 78, sekkin_f, 0 );

sekkin_b = entryEffect( spep_6 + 0, SP_08r, 0x80, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_6 + 0, sekkin_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 78, sekkin_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, sekkin_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 78, sekkin_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, sekkin_b, 0 );
setEffRotateKey( spep_6 + 78, sekkin_b, 0 );
setEffAlphaKey( spep_6 + 0, sekkin_b, 255 );
setEffAlphaKey( spep_6 + 78 -2, sekkin_b, 255 );
setEffAlphaKey( spep_6 + 78 -1, sekkin_b, 255 );
setEffAlphaKey( spep_6 + 78, sekkin_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 78 + 2, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 39, 1, 0 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, 19.6, -73.8 , 0 );
setMoveKey( spep_6 + 1, 1, 24.6, -82.4 , 0 );
setMoveKey( spep_6 + 2, 1, 24.6, -82.4 , 0 );
setMoveKey( spep_6 + 3, 1, 17.6, -85.1 , 0 );
setMoveKey( spep_6 + 4, 1, 17.6, -85.1 , 0 );
setMoveKey( spep_6 + 5, 1, 26.6, -89.8 , 0 );
setMoveKey( spep_6 + 6, 1, 26.6, -89.8 , 0 );
setMoveKey( spep_6 + 7, 1, 19.7, -96.7 , 0 );
setMoveKey( spep_6 + 8, 1, 19.7, -96.7 , 0 );
setMoveKey( spep_6 + 9, 1, 24.8, -97.8 , 0 );
setMoveKey( spep_6 + 10, 1, 24.8, -97.8 , 0 );
setMoveKey( spep_6 + 11, 1, 29.9, -107.1 , 0 );
setMoveKey( spep_6 + 12, 1, 29.9, -107.1 , 0 );
setMoveKey( spep_6 + 13, 1, 23.1, -110.7 , 0 );
setMoveKey( spep_6 + 14, 1, 23.1, -110.7 , 0 );
setMoveKey( spep_6 + 15, 1, 32.4, -116.8 , 0 );
setMoveKey( spep_6 + 16, 1, 32.4, -116.8 , 0 );
setMoveKey( spep_6 + 17, 1, 25.8, -125.3 , 0 );
setMoveKey( spep_6 + 18, 1, 25.8, -125.3 , 0 );
setMoveKey( spep_6 + 19, 1, 31.3, -128.4 , 0 );
setMoveKey( spep_6 + 20, 1, 31.3, -128.4 , 0 );
setMoveKey( spep_6 + 21, 1, 37, -140.1 , 0 );
setMoveKey( spep_6 + 22, 1, 37, -140.1 , 0 );
setMoveKey( spep_6 + 23, 1, 30.8, -146.6 , 0 );
setMoveKey( spep_6 + 24, 1, 30.8, -146.6 , 0 );
setMoveKey( spep_6 + 25, 1, 40.8, -155.9 , 0 );
setMoveKey( spep_6 + 26, 1, 40.8, -155.9 , 0 );
setMoveKey( spep_6 + 27, 1, 35, -168.3 , 0 );
setMoveKey( spep_6 + 28, 1, 35, -168.3 , 0 );
setMoveKey( spep_6 + 29, 1, 41.5, -175.9 , 0 );
setMoveKey( spep_6 + 30, 1, 41.5, -175.9 , 0 );
setMoveKey( spep_6 + 31, 1, 48.2, -192.9 , 0 );
setMoveKey( spep_6 + 32, 1, 48.2, -192.9 , 0 );
setMoveKey( spep_6 + 33, 1, 43.4, -205.5 , 0 );
setMoveKey( spep_6 + 34, 1, 43.4, -205.5 , 0 );
setMoveKey( spep_6 + 35, 1, 54.9, -222.2 , 0 );
setMoveKey( spep_6 + 36, 1, 54.9, -222.2 , 0 );
setMoveKey( spep_6 + 37, 1, 51.2, -243.1 , 0 );
setMoveKey( spep_6 + 39, 1, 51.2, -243.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_6 + 1, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 2, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 3, 1, 0.53, 0.53 );
setScaleKey( spep_6 + 4, 1, 0.53, 0.53 );
setScaleKey( spep_6 + 5, 1, 0.54, 0.54 );
setScaleKey( spep_6 + 6, 1, 0.54, 0.54 );
setScaleKey( spep_6 + 7, 1, 0.56, 0.56 );
setScaleKey( spep_6 + 8, 1, 0.56, 0.56 );
setScaleKey( spep_6 + 9, 1, 0.57, 0.57 );
setScaleKey( spep_6 + 10, 1, 0.57, 0.57 );
setScaleKey( spep_6 + 11, 1, 0.59, 0.59 );
setScaleKey( spep_6 + 12, 1, 0.59, 0.59 );
setScaleKey( spep_6 + 13, 1, 0.61, 0.61 );
setScaleKey( spep_6 + 14, 1, 0.61, 0.61 );
setScaleKey( spep_6 + 15, 1, 0.62, 0.62 );
setScaleKey( spep_6 + 16, 1, 0.62, 0.62 );
setScaleKey( spep_6 + 17, 1, 0.64, 0.64 );
setScaleKey( spep_6 + 18, 1, 0.64, 0.64 );
setScaleKey( spep_6 + 19, 1, 0.67, 0.67 );
setScaleKey( spep_6 + 20, 1, 0.67, 0.67 );
setScaleKey( spep_6 + 21, 1, 0.69, 0.69 );
setScaleKey( spep_6 + 22, 1, 0.69, 0.69 );
setScaleKey( spep_6 + 23, 1, 0.71, 0.71 );
setScaleKey( spep_6 + 24, 1, 0.71, 0.71 );
setScaleKey( spep_6 + 25, 1, 0.74, 0.74 );
setScaleKey( spep_6 + 26, 1, 0.74, 0.74 );
setScaleKey( spep_6 + 27, 1, 0.77, 0.77 );
setScaleKey( spep_6 + 28, 1, 0.77, 0.77 );
setScaleKey( spep_6 + 29, 1, 0.81, 0.81 );
setScaleKey( spep_6 + 30, 1, 0.81, 0.81 );
setScaleKey( spep_6 + 31, 1, 0.85, 0.85 );
setScaleKey( spep_6 + 32, 1, 0.85, 0.85 );
setScaleKey( spep_6 + 33, 1, 0.89, 0.89 );
setScaleKey( spep_6 + 34, 1, 0.89, 0.89 );
setScaleKey( spep_6 + 35, 1, 0.94, 0.94 );
setScaleKey( spep_6 + 36, 1, 0.94, 0.94 );
setScaleKey( spep_6 + 37, 1, 1, 1 );
setScaleKey( spep_6 + 39, 1, 1, 1 );

setRotateKey( spep_6 + 0, 1, 90 );
setRotateKey( spep_6 + 39, 1, 90 );


-- ** 音 ** --
--気弾飛んでくる
SE047 = playSeVer2( spep_6 + 40, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 40, SE047, 67 );
SE048 = playSeVer2( spep_6 + 50, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 50, SE048, 71 );


-- ** 次の準備 ** --
spep_7 = spep_6 + 78;


------------------------------------------------------
--フィニッシュ (128F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_09r, 0x100, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_7 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_7 + 128, finish, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 128, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 128, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 128, finish, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 128 + 2, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 音 ** --
--爆発
SE049 = playSeVer2( spep_7 + 0, 1067, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_7 + 0, 1069, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_7 + 8, 1188, "", 0, 0, 0, -1);


-- -- ** ダメージ表示 ** --
dealDamage( spep_7 + 6 ); -- ダメージ表示フレーム
endPhase( spep_7 + 128 - 10 ); -- 終了フレーム



end