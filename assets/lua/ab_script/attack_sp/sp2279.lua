--1022420:超サイヤ人4孫悟空&超サイヤ人4ベジータ_必殺技：かめはめ波&ファイナルフラッシュ
--sp_effect_a1_00336
--sp2279

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
SP_01 = 158928; --開幕 ef_001
SP_02 = 158929; --敵の周りを旋回 手前 ef_002_ch
SP_03 = 158931; --敵の周りを旋回 奥 ef_002_ch_ura
SP_04 = 158933; --↑共通背景 ef_002_bg
SP_05 = 158934; --ベジータ蹴り→悟空ハイキック ef_003_ch
SP_06 = 158935; --ベジータ蹴り→悟空ハイキック【背景】 ef_003_bg
SP_07 = 158936; --気弾充填→発射→フィニッシュ ef_004_ch
SP_08 = 158937; --気弾充填→発射→フィニッシュ【背景】 ef_004_bg

--敵側
SP_02r = 158930; --敵の周りを旋回 手前 ef_002_ch_r
SP_03r = 158932; --敵の周りを旋回 奥 ef_002_ch_ura_r

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開幕(84F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 82, 0x100, -1, 0, 0, 0 );  --開幕 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 82, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 82, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 82, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 82 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 82, first_f, 0 );

spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 55, 515.5 , 0 );
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

-- ** 音 ** --
--顔カットイン
SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE002 = playSeVer2( spep_0 + 24, 1233, "", 0, 0, 0, -1);
setPitch( spep_0 + 24, SE002, -200 );
setTimeStretch( SE002, 0.87, 30, 4 );
SE003 = playSeVer2( spep_0 + 34, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE003, 79 );
setPitch( spep_0 + 34, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 82 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 82;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;

-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_1 + 0, SE_05 );

--高速移動
SE005 = playSeVer2( spep_1 + 80, 1246, "",spep_1 +94 + 0, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 80, SE005, 52 );
setPitch( spep_1 + 80, SE005, 200 );
setTimeStretch( SE005, 1.13, 30, 4 );
SE006 = playSeVer2( spep_1 + 86, 1353, "",spep_1 +94 + 38, 0, 16, 0.6);
setSeVolumeByWorkId( spep_1 + 86, SE006, 224 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 敵の周りを旋回(440F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
move_ff = entryEffectLife( spep_2 + 0, SP_02, 440, 0x100, -1, 0, 0, 0 );  --敵の周りを旋回 手前 ef_002_ch
setEffMoveKey( spep_2 + 0, move_ff, 0, 0 , 0 );
setEffMoveKey( spep_2 + 440, move_ff, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, move_ff, 1.0, 1.0 );
setEffScaleKey( spep_2 + 440, move_ff, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, move_ff, 0 );
setEffRotateKey( spep_2 + 440, move_ff, 0 );
setEffAlphaKey( spep_2 + 0, move_ff, 255 );
setEffAlphaKey( spep_2 + 170 -2, move_ff, 255 );
setEffAlphaKey( spep_2 + 170 -1, move_ff, 255 );
setEffAlphaKey( spep_2 + 170, move_ff, 0 );
setEffAlphaKey( spep_2 + 203 -2, move_ff, 0 );
setEffAlphaKey( spep_2 + 203 -1, move_ff, 0 );
setEffAlphaKey( spep_2 + 203, move_ff, 255 );
setEffAlphaKey( spep_2 + 334, move_ff, 255 );
setEffAlphaKey( spep_2 + 335, move_ff, 0 );
setEffAlphaKey( spep_2 + 336, move_ff, 0 );
setEffAlphaKey( spep_2 + 352, move_ff, 0 );
setEffAlphaKey( spep_2 + 353, move_ff, 0 );
setEffAlphaKey( spep_2 + 354, move_ff, 255 );
setEffAlphaKey( spep_2 + 408, move_ff, 255 );
setEffAlphaKey( spep_2 + 409, move_ff, 0 );
setEffAlphaKey( spep_2 + 410, move_ff, 0 );
setEffAlphaKey( spep_2 + 440, move_ff, 0 );

move_e = entryEffectLife( spep_2 + 0, SP_04, 440, 0x80, -1, 0, 0, 0 );  --↑共通背景 ef_002_bg
setEffMoveKey( spep_2 + 0, move_e, 0, 0 , 0 );
setEffMoveKey( spep_2 + 440, move_e, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, move_e, 1.0, 1.0 );
setEffScaleKey( spep_2 + 440, move_e, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, move_e, 0 );
setEffRotateKey( spep_2 + 440, move_e, 0 );
setEffAlphaKey( spep_2 + 0, move_e, 255 );
setEffAlphaKey( spep_2 + 440 -1, move_e, 255 );
setEffAlphaKey( spep_2 + 440, move_e, 0 );

move_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --敵の周りを旋回 奥 ef_002_ch_ura
setEffMoveKey( spep_2 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 440, move_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 440, move_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, move_b, 0 );
setEffRotateKey( spep_2 + 440, move_b, 0 );
setEffAlphaKey( spep_2 + 0, move_b, 255 );
setEffAlphaKey( spep_2 + 440, move_b, 255 );

move_fb = entryEffectLife( spep_2 + 0, SP_02, 440, 0x80, -1, 0, 0, 0 );  --敵の周りを旋回 手前  ef_002_ch
setEffMoveKey( spep_2 + 0, move_fb, 0, 0 , 0 );
setEffMoveKey( spep_2 + 440, move_fb, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, move_fb, 1.0, 1.0 );
setEffScaleKey( spep_2 + 440, move_fb, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, move_fb, 0 );
setEffRotateKey( spep_2 + 440, move_fb, 0 );
setEffAlphaKey( spep_2 + 0, move_fb, 0 );
setEffAlphaKey( spep_2 + 170 -2, move_fb, 0 );
setEffAlphaKey( spep_2 + 170 -1, move_fb, 0 );
setEffAlphaKey( spep_2 + 170, move_fb, 255 );
setEffAlphaKey( spep_2 + 203 -2, move_fb, 255 );
setEffAlphaKey( spep_2 + 203 -1, move_fb, 255 );
setEffAlphaKey( spep_2 + 203, move_fb, 0 );
setEffAlphaKey( spep_2 + 334, move_fb, 0 );
setEffAlphaKey( spep_2 + 335, move_fb, 255 );
setEffAlphaKey( spep_2 + 336, move_fb, 255 );
setEffAlphaKey( spep_2 + 352, move_fb, 255 );
setEffAlphaKey( spep_2 + 353, move_fb, 255 );
setEffAlphaKey( spep_2 + 354, move_fb, 0 );
setEffAlphaKey( spep_2 + 408, move_fb, 0 );
setEffAlphaKey( spep_2 + 409, move_fb, 255 );
setEffAlphaKey( spep_2 + 410, move_fb, 255 );
setEffAlphaKey( spep_2 + 440, move_fb, 255 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_2 -3 + 302,  10020, 22 -1, 0x100, -1, 0, 101.1, 270.9 ); --バキッ
setEffMoveKey( spep_2 -3 + 302, ctbaki, 101.1, 270.9 , 0 );
setEffMoveKey( spep_2 -3 + 304, ctbaki, 114.1, 333.7 , 0 );
setEffMoveKey( spep_2 -3 + 306, ctbaki, 75.9, 349.7 , 0 );
setEffMoveKey( spep_2 -3 + 308, ctbaki, 77.1, 295.8 , 0 );
setEffMoveKey( spep_2 -3 + 310, ctbaki, 95.9, 249.7 , 0 );
setEffMoveKey( spep_2 -3 + 312, ctbaki, 113.4, 273.8 , 0 );
setEffMoveKey( spep_2 -3 + 314, ctbaki, 115.9, 275 , 0 );
setEffMoveKey( spep_2 -3 + 316, ctbaki, 116.2, 264.6 , 0 );
setEffMoveKey( spep_2 -3 + 318, ctbaki, 117.5, 260 , 0 );
setEffMoveKey( spep_2 -3 + 320, ctbaki, 116.7, 252.5 , 0 );
setEffMoveKey( spep_2 -3 + 322, ctbaki, 110.2, 208.9 , 0 );
setEffMoveKey( spep_2 -3 + 323, ctbaki, 110.2, 208.9 , 0 );

setEffScaleKey( spep_2 -3 + 302, ctbaki, 1.29, 1.29 );
setEffScaleKey( spep_2 -3 + 304, ctbaki, 2.38, 2.38 );
setEffScaleKey( spep_2 -3 + 310, ctbaki, 2.38, 2.38 );
setEffScaleKey( spep_2 -3 + 312, ctbaki, 2.37, 2.37 );
setEffScaleKey( spep_2 -3 + 314, ctbaki, 2.3, 2.3 );
setEffScaleKey( spep_2 -3 + 316, ctbaki, 2.23, 2.23 );
setEffScaleKey( spep_2 -3 + 318, ctbaki, 2.16, 2.16 );
setEffScaleKey( spep_2 -3 + 320, ctbaki, 2.1, 2.1 );
setEffScaleKey( spep_2 -3 + 322, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_2 -3 + 323, ctbaki, 1.94, 1.94 );

setEffRotateKey( spep_2 -3 + 302, ctbaki, 44.2 );
setEffRotateKey( spep_2 -3 + 323, ctbaki, 44.2 );

setEffAlphaKey( spep_2 -3 + 302, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 310, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 312, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 318, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 320, ctbaki, 198 );
setEffAlphaKey( spep_2 -3 + 322, ctbaki, 26 );
setEffAlphaKey( spep_2 -3 + 323, ctbaki, 26 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 172, 1, 0 );
changeAnime( spep_2 + 0, 1, 118 );
changeAnime( spep_2 -3 + 48, 1, 2 );
changeAnime( spep_2 -3 + 70, 1, 102 );
changeAnime( spep_2 -3 + 100, 1, 104 );

setMoveKey( spep_2 + 0, 1, 31, 67.6 , 0 );
setMoveKey( spep_2 + 1, 1, 31, 67.6 , 0 );
setMoveKey( spep_2 + 2, 1, 31.1, 67.6 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 31.1, 67.6 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 31.1, 67.7 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 31.1, 67.7 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 31.2, 67.7 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 31.1, 67.7 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 31.2, 67.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 31.2, 67.7 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 31.3, 67.7 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 31.2, 67.7 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 31.3, 67.7 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 31.3, 67.7 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 31.4, 67.7 , 0 );
setMoveKey( spep_2 -3 + 47, 1, 31.4, 67.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 31.1, 52.2 , 0 );
setMoveKey( spep_2 -3 + 69, 1, 31.1, 52.2 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 24.6, 52.2 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 24.6, 52.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 18.4, 52.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 18.4, 52.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 18.5, 52.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 18.6, 52.4 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 18.7, 52.5 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 18.7, 52.5 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 18.8, 52.6 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 18.9, 52.7 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 19, 52.8 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 19.1, 52.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 19.1, 52.9 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 19.2, 53 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 19.3, 53 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 19.3, 53.1 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 19.4, 53.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 19.5, 53.3 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 19.5, 53.3 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 19.6, 53.4 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 19.7, 53.5 , 0 );
setMoveKey( spep_2 -3 + 171, 1, 19.8, 53.5 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 19.8, 53.5 , 0 );

setScaleKey( spep_2 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 1, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 2, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 6, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 8, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 10, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 12, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 16, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 18, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 20, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 22, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 24, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 26, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 28, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 30, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 34, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 36, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 38, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 40, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 42, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 44, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 47, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 48, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 99, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 100, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 134, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 136, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 138, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 140, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 142, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 144, 1, 1.27, 1.27 );
setScaleKey( spep_2 -3 + 146, 1, 1.27, 1.27 );
setScaleKey( spep_2 -3 + 148, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 150, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 152, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 154, 1, 1.24, 1.24 );
setScaleKey( spep_2 -3 + 156, 1, 1.24, 1.24 );
setScaleKey( spep_2 -3 + 158, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 160, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 162, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 164, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 166, 1, 1.21, 1.21 );
setScaleKey( spep_2 -3 + 168, 1, 1.21, 1.21 );
setScaleKey( spep_2 -3 + 171, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 172, 1, 1.2, 1.2 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 172, 1, 0 );

-- ** 音 ** --
--高速移動
SE007 = playSeVer2( spep_2 + 28, 1353, "",spep_2 + 86, 12, 22, 0.6);
setSeVolumeByWorkId( spep_2 + 28, SE007, 224 );
SE008 = playSeVer2( spep_2 + 68, 1353, "",spep_2 + 124, 14, 24, 0.6);
setSeVolumeByWorkId( spep_2 + 68, SE008, 224 );
SE009 = playSeVer2( spep_2 + 104, 1353, "", 0, 20, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 104, SE009, 224 );

--ベジータ向かってくる
SE010 = playSeVer2( spep_2 + 156, 1182, "",spep_2 + 194, 0, 4, -1);
SE011 = playSeVer2( spep_2 + 156, 1117, "",spep_2 + 202, 0, 18, -1);
SE012 = playSeVer2( spep_2 + 164, 1167, "",spep_2 + 198, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 164, SE012, 37 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 440 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 182 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);

    pauseAll( SP_dodge, 67);  

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);

    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 -3 + 198, 1, 1 );
setDisp( spep_2 -3 + 216, 1, 0 );
changeAnime( spep_2 -3 + 198, 1, 102 );
changeAnime( spep_2 -3 + 206, 1, 107 );

setMoveKey( spep_2 -3 + 198, 1, 318.6, -167.4 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 280.1, -168.1 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 241.7, -168.8 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 203.2, -169.6 , 0 );
setMoveKey( spep_2 -3 + 205, 1, 203.2, -169.6 , 0 );--
setMoveKey( spep_2 -3 + 206, 1, 14.6, -684 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 104.6, -604 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 14.6, -764 , 0 );
setMoveKey( spep_2 -3 + 211, 1, 14.6, -764 , 0 );--
setMoveKey( spep_2 -3 + 212, 1, -66, -786.9 , 0 );
setMoveKey( spep_2 -3 + 214, 1, -119.2, -1093.9 , 0 );
setMoveKey( spep_2 -3 + 216, 1, -119.2, -1093.9 , 0 );

setScaleKey( spep_2 -3 + 198, 1, 7.4, 7.4 );
setScaleKey( spep_2 -3 + 200, 1, 6.93, 6.93 );
setScaleKey( spep_2 -3 + 202, 1, 6.47, 6.47 );
setScaleKey( spep_2 -3 + 204, 1, 6, 6 );
setScaleKey( spep_2 -3 + 205, 1, 6, 6 );--
setScaleKey( spep_2 -3 + 206, 1, 3, 3 );
setScaleKey( spep_2 -3 + 211, 1, 3, 3 );--
setScaleKey( spep_2 -3 + 212, 1, 3.3, 3.3 );
setScaleKey( spep_2 -3 + 214, 1, 4, 4 );
setScaleKey( spep_2 -3 + 216, 1, 4, 4 );

setRotateKey( spep_2 -3 + 198, 1, 0 );
setRotateKey( spep_2 -3 + 205, 1, 0 );--
setRotateKey( spep_2 -3 + 206, 1, 98 );
setRotateKey( spep_2 -3 + 211, 1, 98 );--
setRotateKey( spep_2 -3 + 212, 1, 97.8 );
setRotateKey( spep_2 -3 + 214, 1, 97.8 );
setRotateKey( spep_2 -3 + 216, 1, 97.8 );

--敵の動き2
setDisp( spep_2 -3 + 224, 1, 1 );
setDisp( spep_2 -3 + 356, 1, 0 );
changeAnime( spep_2 -3 + 224, 1, 6 );
changeAnime( spep_2 -3 + 238, 1, 8 );
changeAnime( spep_2 -3 + 248, 1, 6 );
changeAnime( spep_2 -3 + 264, 1, 108 );
changeAnime( spep_2 -3 + 268, 1, 106 );
changeAnime( spep_2 -3 + 278, 1, 6 );
changeAnime( spep_2 -3 + 302, 1, 108 );
changeAnime( spep_2 -3 + 314, 1, 105 );

setMoveKey( spep_2 -3 + 224, 1, 385, 284 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 272.9, 193.3 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 181.1, 119 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 109.7, 61.3 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 58.8, 20 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 28.2, -4.7 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 18, -13 , 0 );
setMoveKey( spep_2 -3 + 237, 1, 18, -13 , 0 );--
setMoveKey( spep_2 -3 + 238, 1, -2.8, -42.7 , 0 );
setMoveKey( spep_2 -3 + 240, 1, -10.8, -52.7 , 0 );
setMoveKey( spep_2 -3 + 242, 1, -13.8, -70.7 , 0 );
setMoveKey( spep_2 -3 + 244, 1, -9.8, -63.7 , 0 );
setMoveKey( spep_2 -3 + 246, 1, -25.8, -89.7 , 0 );
setMoveKey( spep_2 -3 + 247, 1, -25.8, -89.7 , 0 );--
setMoveKey( spep_2 -3 + 248, 1, -67.9, -115.4 , 0 );
setMoveKey( spep_2 -3 + 250, 1, -77.3, -169.7 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 7.7, 98.9 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 17.7, 120.4 , 0 );
setMoveKey( spep_2 -3 + 256, 1, -2.7, 68.5 , 0 );
setMoveKey( spep_2 -3 + 258, 1, -2.7, 60.5 , 0 );
setMoveKey( spep_2 -3 + 260, 1, -10.9, 44.5 , 0 );
setMoveKey( spep_2 -3 + 262, 1, -18, 30.5 , 0 );
setMoveKey( spep_2 -3 + 263, 1, -18, 30.5 , 0 );--
setMoveKey( spep_2 -3 + 264, 1, 66.9, 48.2 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 147.9, 68 , 0 );
setMoveKey( spep_2 -3 + 267, 1, 147.9, 68 , 0 );--
setMoveKey( spep_2 -3 + 268, 1, 132.2, 82.9 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 142.2, 62.9 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 162.1, -17.2 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 172.1, -47.2 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 182.1, -77.2 , 0 );
setMoveKey( spep_2 -3 + 277, 1, 182.1, -77.2 , 0 );--
setMoveKey( spep_2 -3 + 278, 1, 48, 75.9 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 55, 85.8 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 49.2, 99.3 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 46.4, 107.5 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 42.7, 113.6 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 40.9, 111.8 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 37.6, 102.4 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 35.3, 93 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 33, 87.6 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 32.4, 77.2 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 30.8, 66.8 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 31.1, 58.4 , 0 );
setMoveKey( spep_2 -3 + 301, 1, 31.1, 58.4 , 0 );--
setMoveKey( spep_2 -3 + 302, 1, 136.8, 25.3 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 181.8, -16.7 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 124.8, 22.6 , 0 );
setMoveKey( spep_2 -3 + 308, 1, 126.8, -32.4 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 146.8, -62.4 , 0 );
setMoveKey( spep_2 -3 + 311, 1, 146.8, -62.4 , 0 );--
setMoveKey( spep_2 -3 + 312, 1, 87.2, 25.6 , 0 );
setMoveKey( spep_2 -3 + 313, 1, 87.2, 25.6 , 0 );--
setMoveKey( spep_2 -3 + 314, 1, 28.8, 22.3 , 0 );
setMoveKey( spep_2 -3 + 316, 1, 26.4, 31.7 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 26.1, 31.1 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 26.7, 30.4 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 26.5, 32.8 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 26.5, 31.2 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 26.5, 29.7 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 26.5, 28.1 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 26.4, 26.5 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 26.6, -70 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 26.7, -166.4 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 26.8, -262.9 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 26.9, -359.4 , 0 );
setMoveKey( spep_2 -3 + 340, 1, 27, -455.9 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 27.1, -552.4 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 27.2, -648.9 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 27.3, -745.4 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 27.5, -841.9 , 0 );
setMoveKey( spep_2 -3 + 350, 1, 27.6, -938.4 , 0 );
setMoveKey( spep_2 -3 + 352, 1, 27.7, -1034.9 , 0 );
setMoveKey( spep_2 -3 + 354, 1, 27.8, -1131.4 , 0 );
setMoveKey( spep_2 -3 + 356, 1, 27.8, -1131.4 , 0 );

setScaleKey( spep_2 -3 + 224, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 237, 1, 1.68, 1.68 );--
setScaleKey( spep_2 -3 + 238, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 247, 1, 1.76, 1.76 );--
setScaleKey( spep_2 -3 + 248, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 263, 1, 1.6, 1.6 );--
setScaleKey( spep_2 -3 + 264, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 267, 1, 1.76, 1.76 );--
setScaleKey( spep_2 -3 + 268, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 277, 1, 1.6, 1.6 );--
setScaleKey( spep_2 -3 + 278, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 280, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 282, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 284, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 286, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 288, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 290, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 292, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 294, 1, 1.84, 1.84 );
setScaleKey( spep_2 -3 + 296, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 298, 1, 2, 2 );
setScaleKey( spep_2 -3 + 300, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 301, 1, 2.08, 2.08 );--

s2 = 0.2;
setScaleKey( spep_2 -3 + 302, 1, 2.16 +s2, 2.16 +s2 );
setScaleKey( spep_2 -3 + 311, 1, 2.16 +s2, 2.16 +s2 );--
setScaleKey( spep_2 -3 + 312, 1, 1.6 +s2, 1.6 +s2 );
setScaleKey( spep_2 -3 + 313, 1, 1.6 +s2, 1.6 +s2 );--

setScaleKey( spep_2 -3 + 314, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 316, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 318, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 320, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 322, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 324, 1, 0.65, 0.65 );
setScaleKey( spep_2 -3 + 326, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 328, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 330, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 332, 1, 1.46, 1.46 );
setScaleKey( spep_2 -3 + 334, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 336, 1, 3.38, 3.38 );
setScaleKey( spep_2 -3 + 338, 1, 4.33, 4.33 );
setScaleKey( spep_2 -3 + 340, 1, 5.29, 5.29 );
setScaleKey( spep_2 -3 + 342, 1, 6.25, 6.25 );
setScaleKey( spep_2 -3 + 344, 1, 7.21, 7.21 );
setScaleKey( spep_2 -3 + 346, 1, 8.17, 8.17 );
setScaleKey( spep_2 -3 + 348, 1, 9.13, 9.13 );
setScaleKey( spep_2 -3 + 350, 1, 10.08, 10.08 );
setScaleKey( spep_2 -3 + 352, 1, 11.04, 11.04 );
setScaleKey( spep_2 -3 + 354, 1, 12, 12 );
setScaleKey( spep_2 -3 + 356, 1, 12, 12 );

setRotateKey( spep_2 -3 + 224, 1, -55.4 );
setRotateKey( spep_2 -3 + 237, 1, -55.4 );--
setRotateKey( spep_2 -3 + 238, 1, -51.1 );
setRotateKey( spep_2 -3 + 240, 1, -50.9 );
setRotateKey( spep_2 -3 + 247, 1, -50.9 );--
setRotateKey( spep_2 -3 + 248, 1, -31.6 );
setRotateKey( spep_2 -3 + 250, 1, -28 );
setRotateKey( spep_2 -3 + 252, 1, -14.6 );
setRotateKey( spep_2 -3 + 254, 1, -14.6 );
setRotateKey( spep_2 -3 + 256, 1, -24.8 );
setRotateKey( spep_2 -3 + 258, 1, -26.7 );
setRotateKey( spep_2 -3 + 260, 1, -30.1 );
setRotateKey( spep_2 -3 + 262, 1, -33.8 );
setRotateKey( spep_2 -3 + 263, 1, -33.8 );--
setRotateKey( spep_2 -3 + 264, 1, 0 );
setRotateKey( spep_2 -3 + 266, 1, -5 );
setRotateKey( spep_2 -3 + 267, 1, -5 );--
setRotateKey( spep_2 -3 + 268, 1, -30 );
setRotateKey( spep_2 -3 + 270, 1, -17.3 );
setRotateKey( spep_2 -3 + 272, 1, 0.9 );
setRotateKey( spep_2 -3 + 274, 1, 7.2 );
setRotateKey( spep_2 -3 + 276, 1, 16.9 );
setRotateKey( spep_2 -3 + 277, 1, 16.9 );--
setRotateKey( spep_2 -3 + 278, 1, 42.1 );
setRotateKey( spep_2 -3 + 288, 1, 42.1 );
setRotateKey( spep_2 -3 + 290, 1, 40.1 );
setRotateKey( spep_2 -3 + 292, 1, 38 );
setRotateKey( spep_2 -3 + 294, 1, 36 );
setRotateKey( spep_2 -3 + 296, 1, 34 );
setRotateKey( spep_2 -3 + 298, 1, 31.9 );
setRotateKey( spep_2 -3 + 300, 1, 29.9 );
setRotateKey( spep_2 -3 + 301, 1, 29.9 );--
setRotateKey( spep_2 -3 + 302, 1, 0.3 );
setRotateKey( spep_2 -3 + 311, 1, 0.3 );--
setRotateKey( spep_2 -3 + 312, 1, 0.3 );
setRotateKey( spep_2 -3 + 313, 1, 0.3 );--
setRotateKey( spep_2 -3 + 314, 1, -20 );
setRotateKey( spep_2 -3 + 356, 1, -20 );

--敵の動き3
setDisp( spep_2 -3 + 382, 1, 1 );
setDisp( spep_2 -3 + 443, 1, 0 );
changeAnime( spep_2 -3 + 382, 1, 7 );

setMoveKey( spep_2 -3 + 382, 1, -86.7, -418.8 , 0 );
setMoveKey( spep_2 -3 + 383, 1, -86.7, -418.8 , 0 );--
setMoveKey( spep_2 -3 + 384, 1, -86.7, -258.8 , 0 );
setMoveKey( spep_2 -3 + 386, 1, -26.7, -484.8 , 0 );
setMoveKey( spep_2 -3 + 388, 1, -126.7, -188.8 , 0 );
setMoveKey( spep_2 -3 + 390, 1, -56.7, -258.8 , 0 );
setMoveKey( spep_2 -3 + 392, 1, -136.7, -118.8 , 0 );
setMoveKey( spep_2 -3 + 394, 1, -36.7, -198.8 , 0 );
setMoveKey( spep_2 -3 + 396, 1, -136.7, -128.8 , 0 );
setMoveKey( spep_2 -3 + 398, 1, -126.7, -162.1 , 0 );
setMoveKey( spep_2 -3 + 400, 1, -106.7, -175.5 , 0 );
setMoveKey( spep_2 -3 + 402, 1, -126.7, -298.7 , 0 );
setMoveKey( spep_2 -3 + 403, 1, -126.7, -298.7 , 0 );--
setMoveKey( spep_2 -3 + 404, 1, -96.4, -498.7 , 0 );
setMoveKey( spep_2 -3 + 406, 1, -116.4, -488.7 , 0 );
setMoveKey( spep_2 -3 + 408, 1, -66.4, -528.7 , 0 );
setMoveKey( spep_2 -3 + 410, 1, -96.4, -535.7 , 0 );
setMoveKey( spep_2 -3 + 411, 1, -96.4, -535.7 , 0 );--
setMoveKey( spep_2 -3 + 412, 1, -416.2, -1118.8 , 0 );
setMoveKey( spep_2 -3 + 413, 1, -416.2, -1118.8 , 0 );--
setMoveKey( spep_2 -3 + 414, 1, -610.4, -1306.5 , 0 );
setMoveKey( spep_2 -3 + 415, 1, -610.4, -1306.5 , 0 );--
setMoveKey( spep_2 -3 + 416, 1, -165, -143.2 , 0 );
setMoveKey( spep_2 -3 + 418, 1, -167, -149.3 , 0 );
setMoveKey( spep_2 -3 + 420, 1, -172.4, -160.6 , 0 );
setMoveKey( spep_2 -3 + 422, 1, -188.6, -194.8 , 0 );
setMoveKey( spep_2 -3 + 424, 1, -216.1, -252.8 , 0 );
setMoveKey( spep_2 -3 + 426, 1, -255.7, -335.2 , 0 );
setMoveKey( spep_2 -3 + 428, 1, -308.3, -444 , 0 );
setMoveKey( spep_2 -3 + 430, 1, -375, -580.9 , 0 );
setMoveKey( spep_2 -3 + 432, 1, -457.6, -748.3 , 0 );
setMoveKey( spep_2 -3 + 434, 1, -557.6, -949.1 , 0 );
setMoveKey( spep_2 -3 + 436, 1, -677.4, -1186.5 , 0 );
setMoveKey( spep_2 -3 + 438, 1, -819.3, -1464.2 , 0 );
setMoveKey( spep_2 -3 + 440, 1, -985.9, -1786.4 , 0 );
setMoveKey( spep_2 -3 + 442, 1, -1180.2, -2157.7 , 0 );
setMoveKey( spep_2 -3 + 443, 1, -1180.2, -2157.7 , 0 );

setScaleKey( spep_2 -3 + 382, 1, 4.6, 4.6 );
setScaleKey( spep_2 -3 + 383, 1, 4.6, 4.6 );--
setScaleKey( spep_2 -3 + 384, 1, 4.6, 4.6 );
setScaleKey( spep_2 -3 + 400, 1, 4.6, 4.6 );
setScaleKey( spep_2 -3 + 402, 1, 5, 5 );
setScaleKey( spep_2 -3 + 403, 1, 5, 5 );--
setScaleKey( spep_2 -3 + 404, 1, 5, 5 );
setScaleKey( spep_2 -3 + 411, 1, 5, 5 );--
setScaleKey( spep_2 -3 + 412, 1, 4, 3.97 );
setScaleKey( spep_2 -3 + 413, 1, 4, 3.97 );--
setScaleKey( spep_2 -3 + 414, 1, 5.04, 5 );
setScaleKey( spep_2 -3 + 415, 1, 5.04, 5 );--
setScaleKey( spep_2 -3 + 416, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 418, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 420, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 422, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 424, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 426, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 428, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 430, 1, 2.45, 2.45 );
setScaleKey( spep_2 -3 + 432, 1, 2.9, 2.9 );
setScaleKey( spep_2 -3 + 434, 1, 3.42, 3.42 );
setScaleKey( spep_2 -3 + 436, 1, 4.01, 4.01 );
setScaleKey( spep_2 -3 + 438, 1, 4.66, 4.66 );
setScaleKey( spep_2 -3 + 440, 1, 5.39, 5.39 );
setScaleKey( spep_2 -3 + 442, 1, 6.19, 6.19 );
setScaleKey( spep_2 -3 + 443, 1, 6.19, 6.19 );

setRotateKey( spep_2 -3 + 382, 1, -82.2 );
setRotateKey( spep_2 -3 + 383, 1, -82.2 );--
setRotateKey( spep_2 -3 + 384, 1, -82.2 );
setRotateKey( spep_2 -3 + 403, 1, -82.2 );--
setRotateKey( spep_2 -3 + 404, 1, -82.2 );
setRotateKey( spep_2 -3 + 411, 1, -82.2 );--
setRotateKey( spep_2 -3 + 412, 1, -74 );
setRotateKey( spep_2 -3 + 413, 1, -74 );--
setRotateKey( spep_2 -3 + 414, 1, -74.5 );
setRotateKey( spep_2 -3 + 415, 1, -74.5 );--
setRotateKey( spep_2 -3 + 416, 1, -82.2 );
setRotateKey( spep_2 -3 + 443, 1, -82.2 );--

-- ** 音 ** --
--ベジータ殴る
SE013 = playSeVer2( spep_2 + 184, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 190, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE014, 106 );
SE015 = playSeVer2( spep_2 + 190, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE015, 107 );

--高速攻撃
SE016 = playSeVer2( spep_2 + 216, 1003, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 220, 1009, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 222, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 222, SE018, 109 );
SE019 = playSeVer2( spep_2 + 234, 1048, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 238, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 238, SE020, 109 );
SE021 = playSeVer2( spep_2 + 238, 1010, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 250, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE022, 99 );
setPitch( spep_2 + 250, SE022, -200 );
setTimeStretch( SE022, 0.87, 30, 4 );
SE023 = playSeVer2( spep_2 + 250, 1009, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 264, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE024, 99 );
SE025 = playSeVer2( spep_2 + 264, 1010, "", 0, 0, 0, -1);

--ベジータ蹴り飛ばし
SE026 = playSeVer2( spep_2 + 284, 1004, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 292, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 292, SE027, 104 );
SE028 = playSeVer2( spep_2 + 292, 1187, "", 0, 0, 0, -1);

--悟空向かってくる
SE029 = playSeVer2( spep_2 + 324, 1182, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 324, 9, "", 0, 0, 0, -1);

--悟空頭突き
SE031 = playSeVer2( spep_2 + 362, 1116, "",spep_2 + 392, 0, 12, -1);
SE032 = playSeVer2( spep_2 + 372, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 372, SE032, 79 );
SE033 = playSeVer2( spep_2 + 374, 1190, "",spep_2 + 434, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 374, SE033, 76 );
SE034 = playSeVer2( spep_2 + 374, 1120, "", 0, 0, 0, -1);

--ベジータ向かってくる
SE035 = playSeVer2( spep_2 + 428, 1182, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 428, 9, "",spep_2 +440 + 44, 0, 16, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 440;


------------------------------------------------------
-- ベジータ蹴り→悟空ハイキック(166F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_3 + 0, SP_05, 164, 0x100, -1, 0, 0, 0 );  --ベジータ蹴り→悟空ハイキック ef_003_ch
setEffMoveKey( spep_3 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 164, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 164, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 164, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 164 -1, kick_f, 255 );
setEffAlphaKey( spep_3 + 164, kick_f, 0 );

kick_b = entryEffectLife( spep_3 + 0, SP_06, 164, 0x80, -1, 0, 0, 0 );  --ベジータ蹴り→悟空ハイキック【背景】 ef_003_bg
setEffMoveKey( spep_3 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 164, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 164, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 164, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 164 -1, kick_b, 255 );
setEffAlphaKey( spep_3 + 164, kick_b, 0 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_3 -3 + 30, 1, 1 );
setDisp( spep_3 -3 + 80, 1, 0 );
changeAnime( spep_3 -3 + 30, 1, 108 );
changeAnime( spep_3 -3 + 44, 1, 105 );
changeAnime( spep_3 -3 + 58, 1, 107 );

setMoveKey( spep_3 -3 + 30, 1, 34.3, 147.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 61, 101.5 , 0 );
setMoveKey( spep_3 -3 + 33, 1, 61, 101.5 , 0 );--
setMoveKey( spep_3 -3 + 34, 1, 114.3, -11.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 134.3, 28.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 94.3, -11.9 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 54.3, 38.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 74.3, 18.1 , 0 );
setMoveKey( spep_3 -3 + 43, 1, 74.3, 18.1 , 0 );--
setMoveKey( spep_3 -3 + 44, 1, 83.6, -88.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 110.5, -123.6 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 137.4, -159 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 164.3, -194.3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 186.5, -223 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 210.7, -255.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 234.7, -281.6 , 0 );
setMoveKey( spep_3 -3 + 57, 1, 234.7, -281.6 , 0 );--
setMoveKey( spep_3 -3 + 58, 1, 63.6, 75.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 133.2, -12.3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 203.8, -99.1 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 153.5, -25.3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 103.1, 48.5 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 52.7, 122.3 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 2.4, 196 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -48, 269.9 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -48, 269.9 , 0 );

setScaleKey( spep_3 -3 + 30, 1, 2.8, 2.8 );
setScaleKey( spep_3 -3 + 32, 1, 2.73, 2.73 );
setScaleKey( spep_3 -3 + 33, 1, 2.73, 2.73 );--
setScaleKey( spep_3 -3 + 34, 1, 2.576, 2.576 );
setScaleKey( spep_3 -3 + 43, 1, 2.576, 2.576 );--
setScaleKey( spep_3 -3 + 44, 1, 2, 2 );
setScaleKey( spep_3 -3 + 46, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 48, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 50, 1, 1, 1 );
setScaleKey( spep_3 -3 + 52, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 54, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 56, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 57, 1, 0.2, 0.2 );--
setScaleKey( spep_3 -3 + 58, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 60, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 62, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 64, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 66, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 68, 1, 1.64, 1.64 );
setScaleKey( spep_3 -3 + 70, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 72, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 80, 1, 1.5, 1.5 );

setRotateKey( spep_3 -3 + 30, 1, 0 );
setRotateKey( spep_3 -3 + 33, 1, 0 );--
setRotateKey( spep_3 -3 + 34, 1, 0 );
setRotateKey( spep_3 -3 + 43, 1, 0 );--
setRotateKey( spep_3 -3 + 44, 1, 30 );
setRotateKey( spep_3 -3 + 57, 1, 30 );--
setRotateKey( spep_3 -3 + 58, 1, 29.9 );
setRotateKey( spep_3 -3 + 60, 1, 30 );
setRotateKey( spep_3 -3 + 80, 1, 30 );

--敵の動き2
setDisp( spep_3 -3 + 108, 1, 1 );
setDisp( spep_3 -3 + 167, 1, 0 );
changeAnime( spep_3 -3 + 108, 1, 7 );
changeAnime( spep_3 -3 + 142, 1, 5 );

setMoveKey( spep_3 -3 + 108, 1, -1034.8, 369.8 , 0 );
setMoveKey( spep_3 -3 + 110, 1, -608.8, 132.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -101.8, 15.8 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -91.6, 95.9 , 0 );
setMoveKey( spep_3 -3 + 115, 1, -91.6, 95.9 , 0 );--
setMoveKey( spep_3 -3 + 116, 1, -22, 125.9 , 0 );
setMoveKey( spep_3 -3 + 118, 1, -112, 195.9 , 0 );
setMoveKey( spep_3 -3 + 120, 1, -72, 85.9 , 0 );
setMoveKey( spep_3 -3 + 122, 1, -92, 185.9 , 0 );
setMoveKey( spep_3 -3 + 124, 1, -72, 95.9 , 0 );
setMoveKey( spep_3 -3 + 126, 1, -122, 145.9 , 0 );
setMoveKey( spep_3 -3 + 128, 1, -42, 195.9 , 0 );
setMoveKey( spep_3 -3 + 130, 1, -2, 125.9 , 0 );
setMoveKey( spep_3 -3 + 132, 1, -22, 153.4 , 0 );
setMoveKey( spep_3 -3 + 134, 1, -18.7, 167.6 , 0 );
setMoveKey( spep_3 -3 + 136, 1, -70.3, 141.7 , 0 );
setMoveKey( spep_3 -3 + 138, 1, -32, 195.9 , 0 );
setMoveKey( spep_3 -3 + 139, 1, -32, 195.9 , 0 );--
setMoveKey( spep_3 -3 + 140, 1, -92, 55.9 , 0 );
setMoveKey( spep_3 -3 + 141, 1, -92, 55.9 , 0 );--
setMoveKey( spep_3 -3 + 142, 1, 212, 17.2 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 151.2, -21.9 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 97.9, -56.4 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 51.6, -86.6 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 11.4, -112.8 , 0 );
setMoveKey( spep_3 -3 + 152, 1, -23.2, -135.6 , 0 );
setMoveKey( spep_3 -3 + 154, 1, -52.9, -155.3 , 0 );
setMoveKey( spep_3 -3 + 156, 1, -78.5, -172.3 , 0 );
setMoveKey( spep_3 -3 + 158, 1, -100.6, -186.9 , 0 );
setMoveKey( spep_3 -3 + 160, 1, -119.8, -199.7 , 0 );
setMoveKey( spep_3 -3 + 162, 1, -136.9, -210.9 , 0 );
setMoveKey( spep_3 -3 + 164, 1, -152.6, -220.9 , 0 );
setMoveKey( spep_3 -3 + 166, 1, -167.4, -230.3 , 0 );
setMoveKey( spep_3 -3 + 167, 1, -182.2, -239.3 , 0 );
--setMoveKey( spep_3 -3 + 168, 1, -182.2, -239.3 , 0 );
--setMoveKey( spep_3 -3 + 169, 1, -182.2, -239.3 , 0 );

setScaleKey( spep_3 -3 + 108, 1, 2.99, 2.99 );
setScaleKey( spep_3 -3 + 110, 1, 2.99, 2.99 );
setScaleKey( spep_3 -3 + 112, 1, 3, 3 );
setScaleKey( spep_3 -3 + 114, 1, 2.99, 2.99 );
setScaleKey( spep_3 -3 + 115, 1, 2.99, 2.99 );--
setScaleKey( spep_3 -3 + 116, 1, 3, 3 );
setScaleKey( spep_3 -3 + 139, 1, 3, 3 );--
setScaleKey( spep_3 -3 + 140, 1, 2.99, 2.99 );
setScaleKey( spep_3 -3 + 141, 1, 2.99, 2.99 );--
setScaleKey( spep_3 -3 + 142, 1, 4.81, 4.81 );
setScaleKey( spep_3 -3 + 144, 1, 4.02, 4.02 );
setScaleKey( spep_3 -3 + 146, 1, 3.34, 3.34 );
setScaleKey( spep_3 -3 + 148, 1, 2.75, 2.75 );
setScaleKey( spep_3 -3 + 150, 1, 2.25, 2.25 );
setScaleKey( spep_3 -3 + 152, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 154, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 156, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 158, 1, 0.91, 0.91 );
setScaleKey( spep_3 -3 + 160, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 162, 1, 0.53, 0.53 );
setScaleKey( spep_3 -3 + 164, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 166, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 167, 1, 0.15, 0.15 );
--setScaleKey( spep_3 -3 + 168, 1, 0.15, 0.15 );
--setScaleKey( spep_3 -3 + 169, 1, 0.15, 0.15 );

setRotateKey( spep_3 -3 + 108, 1, 126.5 );
setRotateKey( spep_3 -3 + 110, 1, 126.5 );
setRotateKey( spep_3 -3 + 112, 1, 104.6 );
setRotateKey( spep_3 -3 + 114, 1, 47.6 );
setRotateKey( spep_3 -3 + 115, 1, 47.6 );--
setRotateKey( spep_3 -3 + 116, 1, 36.6 );
setRotateKey( spep_3 -3 + 139, 1, 36.6 );--
setRotateKey( spep_3 -3 + 140, 1, 36.6 );
setRotateKey( spep_3 -3 + 141, 1, 36.6 );--
setRotateKey( spep_3 -3 + 142, 1, -100 );
setRotateKey( spep_3 -3 + 167, 1, -100 );

-- ** 音 ** --
--ベジータ蹴り落とし
SE037 = playSeVer2( spep_3 + 12, 1003, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_3 + 22, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 22, SE038, 102 );
SE039 = playSeVer2( spep_3 + 22, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 22, SE039, 106 );

--画面遷移
SE040 = playSeVer2( spep_3 + 28, 1072, "", 0, 0, 0, 0.6);

--悟空蹴り飛ばし
SE042 = playSeVer2( spep_3 + 94, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 94, SE042, 108 );
SE043 = playSeVer2( spep_3 + 100, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 100, SE043, 113 );

--敵飛んでいく
SE045 = playSeVer2( spep_3 + 116, 1183, "",spep_3 + 164 + 58, 0, 54, -1);

--悟空アップ
SE046 = playSeVer2( spep_3 + 162, 9, "",spep_3 + 164 + 80, 0, 48, -1);
setSeVolumeByWorkId( spep_3 + 162, SE046, 73 );
SE047 = playSeVer2( spep_3 + 162, 1131, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 162, SE047, 76 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 164 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 164;


------------------------------------------------------
-- 気弾充填→発射→フィニッシュ(376F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --気弾充填→発射→フィニッシュ ef_004_ch
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 420, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 420, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 420, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 420, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --気弾充填→発射→フィニッシュ【背景】 ef_004_bg
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 420, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 420, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 420, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 420, finish_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_4 -3 + 278, 1, 1 );
setDisp( spep_4 -3 + 300, 1, 0 );
changeAnime( spep_4 -3 + 278, 1, 7 );

setMoveKey( spep_4 -3 + 278, 1, -0.1, 110.9 , 0 );
setMoveKey( spep_4 -3 + 280, 1, -0.1, 107.5 , 0 );
setMoveKey( spep_4 -3 + 282, 1, -0.1, 97.3 , 0 );
setMoveKey( spep_4 -3 + 284, 1, -0.1, 80.3 , 0 );
setMoveKey( spep_4 -3 + 286, 1, -0.1, 56.5 , 0 );
setMoveKey( spep_4 -3 + 288, 1, -0.1, 25.9 , 0 );
setMoveKey( spep_4 -3 + 290, 1, -0.2, -11.6 , 0 );
setMoveKey( spep_4 -3 + 292, 1, -0.2, -55.8 , 0 );
setMoveKey( spep_4 -3 + 294, 1, -0.3, -106.8 , 0 );
setMoveKey( spep_4 -3 + 296, 1, -0.3, -164.7 , 0 );
setMoveKey( spep_4 -3 + 298, 1, -0.4, -229.4 , 0 );
setMoveKey( spep_4 -3 + 300, 1, -0.4, -229.4 , 0 );

setScaleKey( spep_4 -3 + 278, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 280, 1, 0.11, 0.11 );
setScaleKey( spep_4 -3 + 282, 1, 0.12, 0.12 );
setScaleKey( spep_4 -3 + 284, 1, 0.15, 0.15 );
setScaleKey( spep_4 -3 + 286, 1, 0.18, 0.18 );
setScaleKey( spep_4 -3 + 288, 1, 0.23, 0.23 );
setScaleKey( spep_4 -3 + 290, 1, 0.28, 0.28 );
setScaleKey( spep_4 -3 + 292, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 294, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 296, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 298, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 300, 1, 0.6, 0.6 );

setRotateKey( spep_4 -3 + 278, 1, 0 );
setRotateKey( spep_4 -3 + 300, 1, 0 );

-- ** 音 ** --
--悟空気弾溜め
SE044 = playSeVer2( spep_4 + 30, 1121, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_4 + 30, SE044, 80 );
setStartTimeMs( SE044,  1483 );
SE048 = playSeVer2( spep_4 + 18, 1132, "",spep_4 + 118, 0, 30, -1);
setSeVolumeByWorkId( spep_4 + 18, SE048, 66 );
SE049 = playSeVer2( spep_4 + 32, 1355, "",spep_4 + 134, 0, 48, 0.6);
setPitch( spep_4 + 32, SE049, 400 );
setTimeStretch( SE049, 1.27, 30, 4 );
SE050 = playSeVer2( spep_4 + 32, 1252, "",spep_4 + 114, 0, 36, -1);
setSeVolumeByWorkId( spep_4 + 32, SE050, 80 );

--画面遷移
SE052 = playSeVer2( spep_4 + 50, 1072, "", 0, 0, 0, -1);

--ベジータアップ
SE053 = playSeVer2( spep_4 + 84, 1264, "",spep_4 + 234, 0, 106, -1);
setSeVolumeByWorkId( spep_4 + 84, SE053, 70 );
SE054 = playSeVer2( spep_4 + 84, 9, "",spep_4 + 162, 0, 36, -1);
setSeVolumeByWorkId( spep_4 + 84, SE054, 81 );

--ベジータ気弾溜め
SE051 = playSeVer2( spep_4 + 124, 1121, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_4 + 124, SE051, 87 );
setStartTimeMs( SE051,  1483 );
SE055 = playSeVer2( spep_4 + 124, 1296, "",spep_4 + 208, 12, 16, -1);
setSeVolumeByWorkId( spep_4 + 124, SE055, 65 );
setStartTimeMs( SE055,  150 );
SE056 = playSeVer2( spep_4 + 116, 1355, "",spep_4 + 238, 0, 58, 0.6);
setPitch( spep_4 + 116, SE056, 500 );
setTimeStretch( SE056, 1.33, 30, 4 );
SE041 = playSeVer2( spep_4 + 146, 1210, "",spep_4 + 232, 32, 24, -1);
setStartTimeMs( SE041,  4667 );

--悟空気弾発射
SE057 = playSeVer2( spep_4 + 196, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 196, SE057, 54 );
SE058 = playSeVer2( spep_4 + 202, 1284, "",spep_4 + 264, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 202, SE058, 82 );
SE059 = playSeVer2( spep_4 + 202, 1213, "",spep_4 + 272, 0, 22, -1);
setSeVolumeByWorkId( spep_4 + 202, SE059, 62 );

--ベジータ気弾発射
SE060 = playSeVer2( spep_4 + 254, 1193, "",spep_4 + 316, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 254, SE060, 155 );
SE061 = playSeVer2( spep_4 + 254, 1213, "",spep_4 + 316, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 254, SE061, 76 );

--爆発
SE062 = playSeVer2( spep_4 + 284, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 284, SE062, 93 );
SE063 = playSeVer2( spep_4 + 292, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 292, SE063, 81 );
SE064 = playSeVer2( spep_4 + 292, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 292, SE064, 95 );
SE065 = playSeVer2( spep_4 + 292, 1044, "", 0, 50, 0, -1);
setSeVolumeByWorkId( spep_4 + 292, SE065, 146 );
SE066 = playSeVer2( spep_4 + 292, 1226, "", 0, 152, 0, -1);
setSeVolumeByWorkId( spep_4 + 292, SE066, 105 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 420 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 304 );
endPhase( spep_4 + 410 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕(84F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 82, 0x100, -1, 0, 0, 0 );  --開幕 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 82, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 82, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 82, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 82 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 82, first_f, 0 );

spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 55, 515.5 , 0 );
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

-- ** 音 ** --
--顔カットイン
SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE002 = playSeVer2( spep_0 + 24, 1233, "", 0, 0, 0, -1);
setPitch( spep_0 + 24, SE002, -200 );
setTimeStretch( SE002, 0.87, 30, 4 );
SE003 = playSeVer2( spep_0 + 34, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE003, 79 );
setPitch( spep_0 + 34, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 82 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 82;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--高速移動
SE005 = playSeVer2( spep_1 + 80, 1246, "",spep_1 +94 + 0, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 80, SE005, 52 );
setPitch( spep_1 + 80, SE005, 200 );
setTimeStretch( SE005, 1.13, 30, 4 );
SE006 = playSeVer2( spep_1 + 86, 1353, "",spep_1 +94 + 38, 0, 16, 0.6);
setSeVolumeByWorkId( spep_1 + 86, SE006, 224 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 敵の周りを旋回(440F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
move_ff = entryEffectLife( spep_2 + 0, SP_02r, 440, 0x100, -1, 0, 0, 0 );  --敵の周りを旋回 手前 ef_002_ch
setEffMoveKey( spep_2 + 0, move_ff, 0, 0 , 0 );
setEffMoveKey( spep_2 + 440, move_ff, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, move_ff, -1.0, 1.0 );
setEffScaleKey( spep_2 + 440, move_ff, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, move_ff, 0 );
setEffRotateKey( spep_2 + 440, move_ff, 0 );
setEffAlphaKey( spep_2 + 0, move_ff, 255 );
setEffAlphaKey( spep_2 + 170 -2, move_ff, 255 );
setEffAlphaKey( spep_2 + 170 -1, move_ff, 255 );
setEffAlphaKey( spep_2 + 170, move_ff, 0 );
setEffAlphaKey( spep_2 + 203 -2, move_ff, 0 );
setEffAlphaKey( spep_2 + 203 -1, move_ff, 0 );
setEffAlphaKey( spep_2 + 203, move_ff, 255 );
setEffAlphaKey( spep_2 + 334, move_ff, 255 );
setEffAlphaKey( spep_2 + 335, move_ff, 0 );
setEffAlphaKey( spep_2 + 336, move_ff, 0 );
setEffAlphaKey( spep_2 + 352, move_ff, 0 );
setEffAlphaKey( spep_2 + 353, move_ff, 0 );
setEffAlphaKey( spep_2 + 354, move_ff, 255 );
setEffAlphaKey( spep_2 + 408, move_ff, 255 );
setEffAlphaKey( spep_2 + 409, move_ff, 0 );
setEffAlphaKey( spep_2 + 410, move_ff, 0 );
setEffAlphaKey( spep_2 + 440, move_ff, 0 );

move_e = entryEffectLife( spep_2 + 0, SP_04, 440, 0x80, -1, 0, 0, 0 );  --↑共通背景 ef_002_bg
setEffMoveKey( spep_2 + 0, move_e, 0, 0 , 0 );
setEffMoveKey( spep_2 + 440, move_e, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, move_e, -1.0, 1.0 );
setEffScaleKey( spep_2 + 440, move_e, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, move_e, 0 );
setEffRotateKey( spep_2 + 440, move_e, 0 );
setEffAlphaKey( spep_2 + 0, move_e, 255 );
setEffAlphaKey( spep_2 + 440 -1, move_e, 255 );
setEffAlphaKey( spep_2 + 440, move_e, 0 );

move_b = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --敵の周りを旋回 奥 ef_002_ch_ura
setEffMoveKey( spep_2 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 440, move_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 440, move_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, move_b, 0 );
setEffRotateKey( spep_2 + 440, move_b, 0 );
setEffAlphaKey( spep_2 + 0, move_b, 255 );
setEffAlphaKey( spep_2 + 440, move_b, 255 );

move_fb = entryEffectLife( spep_2 + 0, SP_02r, 440, 0x80, -1, 0, 0, 0 );  --敵の周りを旋回 手前  ef_002_ch
setEffMoveKey( spep_2 + 0, move_fb, 0, 0 , 0 );
setEffMoveKey( spep_2 + 440, move_fb, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, move_fb, -1.0, 1.0 );
setEffScaleKey( spep_2 + 440, move_fb, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, move_fb, 0 );
setEffRotateKey( spep_2 + 440, move_fb, 0 );
setEffAlphaKey( spep_2 + 0, move_fb, 0 );
setEffAlphaKey( spep_2 + 170 -2, move_fb, 0 );
setEffAlphaKey( spep_2 + 170 -1, move_fb, 0 );
setEffAlphaKey( spep_2 + 170, move_fb, 255 );
setEffAlphaKey( spep_2 + 203 -2, move_fb, 255 );
setEffAlphaKey( spep_2 + 203 -1, move_fb, 255 );
setEffAlphaKey( spep_2 + 203, move_fb, 0 );
setEffAlphaKey( spep_2 + 334, move_fb, 0 );
setEffAlphaKey( spep_2 + 335, move_fb, 255 );
setEffAlphaKey( spep_2 + 336, move_fb, 255 );
setEffAlphaKey( spep_2 + 352, move_fb, 255 );
setEffAlphaKey( spep_2 + 353, move_fb, 255 );
setEffAlphaKey( spep_2 + 354, move_fb, 0 );
setEffAlphaKey( spep_2 + 408, move_fb, 0 );
setEffAlphaKey( spep_2 + 409, move_fb, 255 );
setEffAlphaKey( spep_2 + 410, move_fb, 255 );
setEffAlphaKey( spep_2 + 440, move_fb, 255 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_2 -3 + 302,  10020, 22 -1, 0x100, -1, 0, -101.1, 270.9 ); --バキッ
setEffMoveKey( spep_2 -3 + 302, ctbaki, -101.1, 270.9 , 0 );
setEffMoveKey( spep_2 -3 + 304, ctbaki, -114.1, 333.7 , 0 );
setEffMoveKey( spep_2 -3 + 306, ctbaki, -75.9, 349.7 , 0 );
setEffMoveKey( spep_2 -3 + 308, ctbaki, -77.1, 295.8 , 0 );
setEffMoveKey( spep_2 -3 + 310, ctbaki, -95.9, 249.7 , 0 );
setEffMoveKey( spep_2 -3 + 312, ctbaki, -113.4, 273.8 , 0 );
setEffMoveKey( spep_2 -3 + 314, ctbaki, -115.9, 275 , 0 );
setEffMoveKey( spep_2 -3 + 316, ctbaki, -116.2, 264.6 , 0 );
setEffMoveKey( spep_2 -3 + 318, ctbaki, -117.5, 260 , 0 );
setEffMoveKey( spep_2 -3 + 320, ctbaki, -116.7, 252.5 , 0 );
setEffMoveKey( spep_2 -3 + 322, ctbaki, -110.2, 208.9 , 0 );
setEffMoveKey( spep_2 -3 + 323, ctbaki, -110.2, 208.9 , 0 );

setEffScaleKey( spep_2 -3 + 302, ctbaki, 1.29, 1.29 );
setEffScaleKey( spep_2 -3 + 304, ctbaki, 2.38, 2.38 );
setEffScaleKey( spep_2 -3 + 310, ctbaki, 2.38, 2.38 );
setEffScaleKey( spep_2 -3 + 312, ctbaki, 2.37, 2.37 );
setEffScaleKey( spep_2 -3 + 314, ctbaki, 2.3, 2.3 );
setEffScaleKey( spep_2 -3 + 316, ctbaki, 2.23, 2.23 );
setEffScaleKey( spep_2 -3 + 318, ctbaki, 2.16, 2.16 );
setEffScaleKey( spep_2 -3 + 320, ctbaki, 2.1, 2.1 );
setEffScaleKey( spep_2 -3 + 322, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_2 -3 + 323, ctbaki, 1.94, 1.94 );

setEffRotateKey( spep_2 -3 + 302, ctbaki, -44.2 );
setEffRotateKey( spep_2 -3 + 323, ctbaki, -44.2 );

setEffAlphaKey( spep_2 -3 + 302, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 310, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 312, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 318, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 320, ctbaki, 198 );
setEffAlphaKey( spep_2 -3 + 322, ctbaki, 26 );
setEffAlphaKey( spep_2 -3 + 323, ctbaki, 26 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 172, 1, 0 );
changeAnime( spep_2 + 0, 1, 118 );
changeAnime( spep_2 -3 + 48, 1, 2 );
changeAnime( spep_2 -3 + 70, 1, 102 );
changeAnime( spep_2 -3 + 100, 1, 104 );

setMoveKey( spep_2 + 0, 1, 31, 67.6 , 0 );
setMoveKey( spep_2 + 1, 1, 31, 67.6 , 0 );
setMoveKey( spep_2 + 2, 1, 31.1, 67.6 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 31.1, 67.6 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 31.1, 67.7 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 31.1, 67.7 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 31.2, 67.7 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 31.1, 67.7 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 31.2, 67.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 31.2, 67.7 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 31.3, 67.7 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 31.2, 67.7 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 31.3, 67.7 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 31.3, 67.7 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 31.4, 67.7 , 0 );
setMoveKey( spep_2 -3 + 47, 1, 31.4, 67.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 31.1, 52.2 , 0 );
setMoveKey( spep_2 -3 + 69, 1, 31.1, 52.2 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 24.6, 52.2 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 24.6, 52.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 18.4, 52.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 18.4, 52.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 18.5, 52.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 18.6, 52.4 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 18.7, 52.5 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 18.7, 52.5 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 18.8, 52.6 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 18.9, 52.7 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 19, 52.8 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 19.1, 52.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 19.1, 52.9 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 19.2, 53 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 19.3, 53 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 19.3, 53.1 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 19.4, 53.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 19.5, 53.3 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 19.5, 53.3 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 19.6, 53.4 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 19.7, 53.5 , 0 );
setMoveKey( spep_2 -3 + 171, 1, 19.8, 53.5 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 19.8, 53.5 , 0 );

setScaleKey( spep_2 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 1, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 2, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 6, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 8, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 10, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 12, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 16, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 18, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 20, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 22, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 24, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 26, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 28, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 30, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 34, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 36, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 38, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 40, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 42, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 44, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 47, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 48, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 99, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 100, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 134, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 136, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 138, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 140, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 142, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 144, 1, 1.27, 1.27 );
setScaleKey( spep_2 -3 + 146, 1, 1.27, 1.27 );
setScaleKey( spep_2 -3 + 148, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 150, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 152, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 154, 1, 1.24, 1.24 );
setScaleKey( spep_2 -3 + 156, 1, 1.24, 1.24 );
setScaleKey( spep_2 -3 + 158, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 160, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 162, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 164, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 166, 1, 1.21, 1.21 );
setScaleKey( spep_2 -3 + 168, 1, 1.21, 1.21 );
setScaleKey( spep_2 -3 + 171, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 172, 1, 1.2, 1.2 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 172, 1, 0 );

-- ** 音 ** --
--高速移動
SE007 = playSeVer2( spep_2 + 28, 1353, "",spep_2 + 86, 12, 22, 0.6);
setSeVolumeByWorkId( spep_2 + 28, SE007, 224 );
SE008 = playSeVer2( spep_2 + 68, 1353, "",spep_2 + 124, 14, 24, 0.6);
setSeVolumeByWorkId( spep_2 + 68, SE008, 224 );
SE009 = playSeVer2( spep_2 + 104, 1353, "", 0, 20, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 104, SE009, 224 );

--ベジータ向かってくる
SE010 = playSeVer2( spep_2 + 156, 1182, "",spep_2 + 194, 0, 4, -1);
SE011 = playSeVer2( spep_2 + 156, 1117, "",spep_2 + 202, 0, 18, -1);
SE012 = playSeVer2( spep_2 + 164, 1167, "",spep_2 + 198, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 164, SE012, 37 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 440 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 182 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);

    pauseAll( SP_dodge, 67);  

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);

    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 -3 + 198, 1, 1 );
setDisp( spep_2 -3 + 216, 1, 0 );
changeAnime( spep_2 -3 + 198, 1, 2 );
changeAnime( spep_2 -3 + 206, 1, 7 );

setMoveKey( spep_2 -3 + 198, 1, -318.6, -167.4 , 0 );
setMoveKey( spep_2 -3 + 200, 1, -280.1, -168.1 , 0 );
setMoveKey( spep_2 -3 + 202, 1, -241.7, -168.8 , 0 );
setMoveKey( spep_2 -3 + 204, 1, -203.2, -169.6 , 0 );
setMoveKey( spep_2 -3 + 205, 1, -203.2, -169.6 , 0 );--
setMoveKey( spep_2 -3 + 206, 1, -14.6, -684 , 0 );
setMoveKey( spep_2 -3 + 208, 1, -104.6, -604 , 0 );
setMoveKey( spep_2 -3 + 210, 1, -14.6, -764 , 0 );
setMoveKey( spep_2 -3 + 211, 1, -14.6, -764 , 0 );--
setMoveKey( spep_2 -3 + 212, 1, 66, -786.9 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 119.2, -1093.9 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 119.2, -1093.9 , 0 );

setScaleKey( spep_2 -3 + 198, 1, 7.4, 7.4 );
setScaleKey( spep_2 -3 + 200, 1, 6.93, 6.93 );
setScaleKey( spep_2 -3 + 202, 1, 6.47, 6.47 );
setScaleKey( spep_2 -3 + 204, 1, 6, 6 );
setScaleKey( spep_2 -3 + 205, 1, 6, 6 );--
setScaleKey( spep_2 -3 + 206, 1, 3, 3 );
setScaleKey( spep_2 -3 + 211, 1, 3, 3 );--
setScaleKey( spep_2 -3 + 212, 1, 3.3, 3.3 );
setScaleKey( spep_2 -3 + 214, 1, 4, 4 );
setScaleKey( spep_2 -3 + 216, 1, 4, 4 );

setRotateKey( spep_2 -3 + 198, 1, -0 );
setRotateKey( spep_2 -3 + 205, 1, -0 );--
setRotateKey( spep_2 -3 + 206, 1, -98 );
setRotateKey( spep_2 -3 + 211, 1, -98 );--
setRotateKey( spep_2 -3 + 212, 1, -97.8 );
setRotateKey( spep_2 -3 + 214, 1, -97.8 );
setRotateKey( spep_2 -3 + 216, 1, -97.8 );

--敵の動き2
setDisp( spep_2 -3 + 224, 1, 1 );
setDisp( spep_2 -3 + 356, 1, 0 );
changeAnime( spep_2 -3 + 224, 1, 106 );
changeAnime( spep_2 -3 + 238, 1, 108 );
changeAnime( spep_2 -3 + 248, 1, 106 );
changeAnime( spep_2 -3 + 264, 1, 8 );
changeAnime( spep_2 -3 + 268, 1, 6 );
changeAnime( spep_2 -3 + 278, 1, 106 );
changeAnime( spep_2 -3 + 302, 1, 8 );
changeAnime( spep_2 -3 + 314, 1, 5 );

setMoveKey( spep_2 -3 + 224, 1, -385, 284 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -272.9, 193.3 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -181.1, 119 , 0 );
setMoveKey( spep_2 -3 + 230, 1, -109.7, 61.3 , 0 );
setMoveKey( spep_2 -3 + 232, 1, -58.8, 20 , 0 );
setMoveKey( spep_2 -3 + 234, 1, -28.2, -4.7 , 0 );
setMoveKey( spep_2 -3 + 236, 1, -18, -13 , 0 );
setMoveKey( spep_2 -3 + 237, 1, -18, -13 , 0 );--
setMoveKey( spep_2 -3 + 238, 1, 2.8, -42.7 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 10.8, -52.7 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 13.8, -70.7 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 9.8, -63.7 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 25.8, -89.7 , 0 );
setMoveKey( spep_2 -3 + 247, 1, 25.8, -89.7 , 0 );--
setMoveKey( spep_2 -3 + 248, 1, 67.9, -115.4 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 77.3, -169.7 , 0 );
setMoveKey( spep_2 -3 + 252, 1, -7.7, 98.9 , 0 );
setMoveKey( spep_2 -3 + 254, 1, -17.7, 120.4 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 2.7, 68.5 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 2.7, 60.5 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 10.9, 44.5 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 18, 30.5 , 0 );
setMoveKey( spep_2 -3 + 263, 1, 18, 30.5 , 0 );--
setMoveKey( spep_2 -3 + 264, 1, -66.9, 48.2 , 0 );
setMoveKey( spep_2 -3 + 266, 1, -147.9, 68 , 0 );
setMoveKey( spep_2 -3 + 267, 1, -147.9, 68 , 0 );--
setMoveKey( spep_2 -3 + 268, 1, -132.2, 82.9 , 0 );
setMoveKey( spep_2 -3 + 270, 1, -142.2, 62.9 , 0 );
setMoveKey( spep_2 -3 + 272, 1, -162.1, -17.2 , 0 );
setMoveKey( spep_2 -3 + 274, 1, -172.1, -47.2 , 0 );
setMoveKey( spep_2 -3 + 276, 1, -182.1, -77.2 , 0 );
setMoveKey( spep_2 -3 + 277, 1, -182.1, -77.2 , 0 );--
setMoveKey( spep_2 -3 + 278, 1, -48, 75.9 , 0 );
setMoveKey( spep_2 -3 + 280, 1, -55, 85.8 , 0 );
setMoveKey( spep_2 -3 + 282, 1, -49.2, 99.3 , 0 );
setMoveKey( spep_2 -3 + 284, 1, -46.4, 107.5 , 0 );
setMoveKey( spep_2 -3 + 286, 1, -42.7, 113.6 , 0 );
setMoveKey( spep_2 -3 + 288, 1, -40.9, 111.8 , 0 );
setMoveKey( spep_2 -3 + 290, 1, -37.6, 102.4 , 0 );
setMoveKey( spep_2 -3 + 292, 1, -35.3, 93 , 0 );
setMoveKey( spep_2 -3 + 294, 1, -33, 87.6 , 0 );
setMoveKey( spep_2 -3 + 296, 1, -32.4, 77.2 , 0 );
setMoveKey( spep_2 -3 + 298, 1, -30.8, 66.8 , 0 );
setMoveKey( spep_2 -3 + 300, 1, -31.1, 58.4 , 0 );
setMoveKey( spep_2 -3 + 301, 1, -31.1, 58.4 , 0 );--
setMoveKey( spep_2 -3 + 302, 1, -136.8, 25.3 , 0 );
setMoveKey( spep_2 -3 + 304, 1, -181.8, -16.7 , 0 );
setMoveKey( spep_2 -3 + 306, 1, -124.8, 22.6 , 0 );
setMoveKey( spep_2 -3 + 308, 1, -126.8, -32.4 , 0 );
setMoveKey( spep_2 -3 + 310, 1, -146.8, -62.4 , 0 );
setMoveKey( spep_2 -3 + 311, 1, -146.8, -62.4 , 0 );--
setMoveKey( spep_2 -3 + 312, 1, -87.2, 25.6 , 0 );
setMoveKey( spep_2 -3 + 313, 1, -87.2, 25.6 , 0 );--
setMoveKey( spep_2 -3 + 314, 1, -28.8, 22.3 , 0 );
setMoveKey( spep_2 -3 + 316, 1, -26.4, 31.7 , 0 );
setMoveKey( spep_2 -3 + 318, 1, -26.1, 31.1 , 0 );
setMoveKey( spep_2 -3 + 320, 1, -26.7, 30.4 , 0 );
setMoveKey( spep_2 -3 + 322, 1, -26.5, 32.8 , 0 );
setMoveKey( spep_2 -3 + 324, 1, -26.5, 31.2 , 0 );
setMoveKey( spep_2 -3 + 326, 1, -26.5, 29.7 , 0 );
setMoveKey( spep_2 -3 + 328, 1, -26.5, 28.1 , 0 );
setMoveKey( spep_2 -3 + 330, 1, -26.4, 26.5 , 0 );
setMoveKey( spep_2 -3 + 332, 1, -26.6, -70 , 0 );
setMoveKey( spep_2 -3 + 334, 1, -26.7, -166.4 , 0 );
setMoveKey( spep_2 -3 + 336, 1, -26.8, -262.9 , 0 );
setMoveKey( spep_2 -3 + 338, 1, -26.9, -359.4 , 0 );
setMoveKey( spep_2 -3 + 340, 1, -27, -455.9 , 0 );
setMoveKey( spep_2 -3 + 342, 1, -27.1, -552.4 , 0 );
setMoveKey( spep_2 -3 + 344, 1, -27.2, -648.9 , 0 );
setMoveKey( spep_2 -3 + 346, 1, -27.3, -745.4 , 0 );
setMoveKey( spep_2 -3 + 348, 1, -27.5, -841.9 , 0 );
setMoveKey( spep_2 -3 + 350, 1, -27.6, -938.4 , 0 );
setMoveKey( spep_2 -3 + 352, 1, -27.7, -1034.9 , 0 );
setMoveKey( spep_2 -3 + 354, 1, -27.8, -1131.4 , 0 );
setMoveKey( spep_2 -3 + 356, 1, -27.8, -1131.4 , 0 );

setScaleKey( spep_2 -3 + 224, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 237, 1, 1.68, 1.68 );--
setScaleKey( spep_2 -3 + 238, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 247, 1, 1.76, 1.76 );--
setScaleKey( spep_2 -3 + 248, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 263, 1, 1.6, 1.6 );--
setScaleKey( spep_2 -3 + 264, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 267, 1, 1.76, 1.76 );--
setScaleKey( spep_2 -3 + 268, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 277, 1, 1.6, 1.6 );--
setScaleKey( spep_2 -3 + 278, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 280, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 282, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 284, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 286, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 288, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 290, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 292, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 294, 1, 1.84, 1.84 );
setScaleKey( spep_2 -3 + 296, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 298, 1, 2, 2 );
setScaleKey( spep_2 -3 + 300, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 301, 1, 2.08, 2.08 );--

s2 = 0.2;
setScaleKey( spep_2 -3 + 302, 1, 2.16 +s2, 2.16 +s2 );
setScaleKey( spep_2 -3 + 311, 1, 2.16 +s2, 2.16 +s2 );--
setScaleKey( spep_2 -3 + 312, 1, 1.6 +s2, 1.6 +s2 );
setScaleKey( spep_2 -3 + 313, 1, 1.6 +s2, 1.6 +s2 );--

setScaleKey( spep_2 -3 + 314, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 316, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 318, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 320, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 322, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 324, 1, 0.65, 0.65 );
setScaleKey( spep_2 -3 + 326, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 328, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 330, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 332, 1, 1.46, 1.46 );
setScaleKey( spep_2 -3 + 334, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 336, 1, 3.38, 3.38 );
setScaleKey( spep_2 -3 + 338, 1, 4.33, 4.33 );
setScaleKey( spep_2 -3 + 340, 1, 5.29, 5.29 );
setScaleKey( spep_2 -3 + 342, 1, 6.25, 6.25 );
setScaleKey( spep_2 -3 + 344, 1, 7.21, 7.21 );
setScaleKey( spep_2 -3 + 346, 1, 8.17, 8.17 );
setScaleKey( spep_2 -3 + 348, 1, 9.13, 9.13 );
setScaleKey( spep_2 -3 + 350, 1, 10.08, 10.08 );
setScaleKey( spep_2 -3 + 352, 1, 11.04, 11.04 );
setScaleKey( spep_2 -3 + 354, 1, 12, 12 );
setScaleKey( spep_2 -3 + 356, 1, 12, 12 );

setRotateKey( spep_2 -3 + 224, 1, 55.4 );
setRotateKey( spep_2 -3 + 237, 1, 55.4 );--
setRotateKey( spep_2 -3 + 238, 1, 51.1 );
setRotateKey( spep_2 -3 + 240, 1, 50.9 );
setRotateKey( spep_2 -3 + 247, 1, 50.9 );--
setRotateKey( spep_2 -3 + 248, 1, 31.6 );
setRotateKey( spep_2 -3 + 250, 1, 28 );
setRotateKey( spep_2 -3 + 252, 1, 14.6 );
setRotateKey( spep_2 -3 + 254, 1, 14.6 );
setRotateKey( spep_2 -3 + 256, 1, 24.8 );
setRotateKey( spep_2 -3 + 258, 1, 26.7 );
setRotateKey( spep_2 -3 + 260, 1, 30.1 );
setRotateKey( spep_2 -3 + 262, 1, 33.8 );
setRotateKey( spep_2 -3 + 263, 1, 33.8 );--
setRotateKey( spep_2 -3 + 264, 1, -0 );
setRotateKey( spep_2 -3 + 266, 1, 5 );
setRotateKey( spep_2 -3 + 267, 1, 5 );--
setRotateKey( spep_2 -3 + 268, 1, 30 );
setRotateKey( spep_2 -3 + 270, 1, 17.3 );
setRotateKey( spep_2 -3 + 272, 1, -0.9 );
setRotateKey( spep_2 -3 + 274, 1, -7.2 );
setRotateKey( spep_2 -3 + 276, 1, -16.9 );
setRotateKey( spep_2 -3 + 277, 1, -16.9 );--
setRotateKey( spep_2 -3 + 278, 1, -42.1 );
setRotateKey( spep_2 -3 + 288, 1, -42.1 );
setRotateKey( spep_2 -3 + 290, 1, -40.1 );
setRotateKey( spep_2 -3 + 292, 1, -38 );
setRotateKey( spep_2 -3 + 294, 1, -36 );
setRotateKey( spep_2 -3 + 296, 1, -34 );
setRotateKey( spep_2 -3 + 298, 1, -31.9 );
setRotateKey( spep_2 -3 + 300, 1, -29.9 );
setRotateKey( spep_2 -3 + 301, 1, -29.9 );--
setRotateKey( spep_2 -3 + 302, 1, -0.3 );
setRotateKey( spep_2 -3 + 311, 1, -0.3 );--
setRotateKey( spep_2 -3 + 312, 1, -0.3 );
setRotateKey( spep_2 -3 + 313, 1, -0.3 );--
setRotateKey( spep_2 -3 + 314, 1, 20 );
setRotateKey( spep_2 -3 + 356, 1, 20 );

--敵の動き3
setDisp( spep_2 -3 + 382, 1, 1 );
setDisp( spep_2 -3 + 443, 1, 0 );
changeAnime( spep_2 -3 + 382, 1, 107 );

setMoveKey( spep_2 -3 + 382, 1, 86.7, -418.8 , 0 );
setMoveKey( spep_2 -3 + 383, 1, 86.7, -418.8 , 0 );--
setMoveKey( spep_2 -3 + 384, 1, 86.7, -258.8 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 26.7, -484.8 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 126.7, -188.8 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 56.7, -258.8 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 136.7, -118.8 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 36.7, -198.8 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 136.7, -128.8 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 126.7, -162.1 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 106.7, -175.5 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 126.7, -298.7 , 0 );
setMoveKey( spep_2 -3 + 403, 1, 126.7, -298.7 , 0 );--
setMoveKey( spep_2 -3 + 404, 1, 96.4, -498.7 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 116.4, -488.7 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 66.4, -528.7 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 96.4, -535.7 , 0 );
setMoveKey( spep_2 -3 + 411, 1, 96.4, -535.7 , 0 );--
setMoveKey( spep_2 -3 + 412, 1, 416.2, -1118.8 , 0 );
setMoveKey( spep_2 -3 + 413, 1, 416.2, -1118.8 , 0 );--
setMoveKey( spep_2 -3 + 414, 1, 610.4, -1306.5 , 0 );
setMoveKey( spep_2 -3 + 415, 1, 610.4, -1306.5 , 0 );--
setMoveKey( spep_2 -3 + 416, 1, 165, -143.2 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 167, -149.3 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 172.4, -160.6 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 188.6, -194.8 , 0 );
setMoveKey( spep_2 -3 + 424, 1, 216.1, -252.8 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 255.7, -335.2 , 0 );
setMoveKey( spep_2 -3 + 428, 1, 308.3, -444 , 0 );
setMoveKey( spep_2 -3 + 430, 1, 375, -580.9 , 0 );
setMoveKey( spep_2 -3 + 432, 1, 457.6, -748.3 , 0 );
setMoveKey( spep_2 -3 + 434, 1, 557.6, -949.1 , 0 );
setMoveKey( spep_2 -3 + 436, 1, 677.4, -1186.5 , 0 );
setMoveKey( spep_2 -3 + 438, 1, 819.3, -1464.2 , 0 );
setMoveKey( spep_2 -3 + 440, 1, 985.9, -1786.4 , 0 );
setMoveKey( spep_2 -3 + 442, 1, 1180.2, -2157.7 , 0 );
setMoveKey( spep_2 -3 + 443, 1, 1180.2, -2157.7 , 0 );

setScaleKey( spep_2 -3 + 382, 1, 4.6, 4.6 );
setScaleKey( spep_2 -3 + 383, 1, 4.6, 4.6 );--
setScaleKey( spep_2 -3 + 384, 1, 4.6, 4.6 );
setScaleKey( spep_2 -3 + 400, 1, 4.6, 4.6 );
setScaleKey( spep_2 -3 + 402, 1, 5, 5 );
setScaleKey( spep_2 -3 + 403, 1, 5, 5 );--
setScaleKey( spep_2 -3 + 404, 1, 5, 5 );
setScaleKey( spep_2 -3 + 411, 1, 5, 5 );--
setScaleKey( spep_2 -3 + 412, 1, 4, 3.97 );
setScaleKey( spep_2 -3 + 413, 1, 4, 3.97 );--
setScaleKey( spep_2 -3 + 414, 1, 5.04, 5 );
setScaleKey( spep_2 -3 + 415, 1, 5.04, 5 );--
setScaleKey( spep_2 -3 + 416, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 418, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 420, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 422, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 424, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 426, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 428, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 430, 1, 2.45, 2.45 );
setScaleKey( spep_2 -3 + 432, 1, 2.9, 2.9 );
setScaleKey( spep_2 -3 + 434, 1, 3.42, 3.42 );
setScaleKey( spep_2 -3 + 436, 1, 4.01, 4.01 );
setScaleKey( spep_2 -3 + 438, 1, 4.66, 4.66 );
setScaleKey( spep_2 -3 + 440, 1, 5.39, 5.39 );
setScaleKey( spep_2 -3 + 442, 1, 6.19, 6.19 );
setScaleKey( spep_2 -3 + 443, 1, 6.19, 6.19 );

setRotateKey( spep_2 -3 + 382, 1, 82.2 );
setRotateKey( spep_2 -3 + 383, 1, 82.2 );--
setRotateKey( spep_2 -3 + 384, 1, 82.2 );
setRotateKey( spep_2 -3 + 403, 1, 82.2 );--
setRotateKey( spep_2 -3 + 404, 1, 82.2 );
setRotateKey( spep_2 -3 + 411, 1, 82.2 );--
setRotateKey( spep_2 -3 + 412, 1, 74 );
setRotateKey( spep_2 -3 + 413, 1, 74 );--
setRotateKey( spep_2 -3 + 414, 1, 74.5 );
setRotateKey( spep_2 -3 + 415, 1, 74.5 );--
setRotateKey( spep_2 -3 + 416, 1, 82.2 );
setRotateKey( spep_2 -3 + 443, 1, 82.2 );--

-- ** 音 ** --
--ベジータ殴る
SE013 = playSeVer2( spep_2 + 184, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 190, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE014, 106 );
SE015 = playSeVer2( spep_2 + 190, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE015, 107 );

--高速攻撃
SE016 = playSeVer2( spep_2 + 216, 1003, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 220, 1009, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 222, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 222, SE018, 109 );
SE019 = playSeVer2( spep_2 + 234, 1048, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 238, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 238, SE020, 109 );
SE021 = playSeVer2( spep_2 + 238, 1010, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 250, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE022, 99 );
setPitch( spep_2 + 250, SE022, -200 );
setTimeStretch( SE022, 0.87, 30, 4 );
SE023 = playSeVer2( spep_2 + 250, 1009, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 264, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE024, 99 );
SE025 = playSeVer2( spep_2 + 264, 1010, "", 0, 0, 0, -1);

--ベジータ蹴り飛ばし
SE026 = playSeVer2( spep_2 + 284, 1004, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 292, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 292, SE027, 104 );
SE028 = playSeVer2( spep_2 + 292, 1187, "", 0, 0, 0, -1);

--悟空向かってくる
SE029 = playSeVer2( spep_2 + 324, 1182, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 324, 9, "", 0, 0, 0, -1);

--悟空頭突き
SE031 = playSeVer2( spep_2 + 362, 1116, "",spep_2 + 392, 0, 12, -1);
SE032 = playSeVer2( spep_2 + 372, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 372, SE032, 79 );
SE033 = playSeVer2( spep_2 + 374, 1190, "",spep_2 + 434, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 374, SE033, 76 );
SE034 = playSeVer2( spep_2 + 374, 1120, "", 0, 0, 0, -1);

--ベジータ向かってくる
SE035 = playSeVer2( spep_2 + 428, 1182, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 428, 9, "",spep_2 +440 + 44, 0, 16, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 440;


------------------------------------------------------
-- ベジータ蹴り→悟空ハイキック(166F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_3 + 0, SP_05, 164, 0x100, -1, 0, 0, 0 );  --ベジータ蹴り→悟空ハイキック ef_003_ch
setEffMoveKey( spep_3 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 164, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 164, kick_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 164, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 164 -1, kick_f, 255 );
setEffAlphaKey( spep_3 + 164, kick_f, 0 );

kick_b = entryEffectLife( spep_3 + 0, SP_06, 164, 0x80, -1, 0, 0, 0 );  --ベジータ蹴り→悟空ハイキック【背景】 ef_003_bg
setEffMoveKey( spep_3 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 164, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 164, kick_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 164, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 164 -1, kick_b, 255 );
setEffAlphaKey( spep_3 + 164, kick_b, 0 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_3 -3 + 30, 1, 1 );
setDisp( spep_3 -3 + 80, 1, 0 );
changeAnime( spep_3 -3 + 30, 1, 8 );
changeAnime( spep_3 -3 + 44, 1, 5 );
changeAnime( spep_3 -3 + 58, 1, 7 );

setMoveKey( spep_3 -3 + 30, 1, -34.3, 147.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -61, 101.5 , 0 );
setMoveKey( spep_3 -3 + 33, 1, -61, 101.5 , 0 );--
setMoveKey( spep_3 -3 + 34, 1, -114.3, -11.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -134.3, 28.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -94.3, -11.9 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -54.3, 38.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -74.3, 18.1 , 0 );
setMoveKey( spep_3 -3 + 43, 1, -74.3, 18.1 , 0 );--
setMoveKey( spep_3 -3 + 44, 1, -83.6, -88.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -110.5, -123.6 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -137.4, -159 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -164.3, -194.3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -186.5, -223 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -210.7, -255.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -234.7, -281.6 , 0 );
setMoveKey( spep_3 -3 + 57, 1, -234.7, -281.6 , 0 );--
setMoveKey( spep_3 -3 + 58, 1, -63.6, 75.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -133.2, -12.3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -203.8, -99.1 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -153.5, -25.3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -103.1, 48.5 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -52.7, 122.3 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -2.4, 196 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 48, 269.9 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 48, 269.9 , 0 );

setScaleKey( spep_3 -3 + 30, 1, 2, 2 );
setScaleKey( spep_3 -3 + 32, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 33, 1, 1.95, 1.95 );--
setScaleKey( spep_3 -3 + 34, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 43, 1, 1.84, 1.84 );--
setScaleKey( spep_3 -3 + 44, 1, 2, 2 );
setScaleKey( spep_3 -3 + 46, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 48, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 50, 1, 1, 1 );
setScaleKey( spep_3 -3 + 52, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 54, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 56, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 57, 1, 0.2, 0.2 );--
setScaleKey( spep_3 -3 + 58, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 60, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 62, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 64, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 66, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 68, 1, 1.64, 1.64 );
setScaleKey( spep_3 -3 + 70, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 72, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 80, 1, 1.5, 1.5 );

setRotateKey( spep_3 -3 + 30, 1, -0 );
setRotateKey( spep_3 -3 + 33, 1, -0 );--
setRotateKey( spep_3 -3 + 34, 1, -0 );
setRotateKey( spep_3 -3 + 43, 1, -0 );--
setRotateKey( spep_3 -3 + 44, 1, -30 );
setRotateKey( spep_3 -3 + 57, 1, -30 );--
setRotateKey( spep_3 -3 + 58, 1, -29.9 );
setRotateKey( spep_3 -3 + 60, 1, -30 );
setRotateKey( spep_3 -3 + 80, 1, -30 );

--敵の動き2
setDisp( spep_3 -3 + 108, 1, 1 );
setDisp( spep_3 -3 + 167, 1, 0 );
changeAnime( spep_3 -3 + 108, 1, 107 );
changeAnime( spep_3 -3 + 142, 1, 105 );

setMoveKey( spep_3 -3 + 108, 1, 1034.8, 369.8 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 608.8, 132.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 101.8, 15.8 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 91.6, 95.9 , 0 );
setMoveKey( spep_3 -3 + 115, 1, 91.6, 95.9 , 0 );--
setMoveKey( spep_3 -3 + 116, 1, 22, 125.9 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 112, 195.9 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 72, 85.9 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 92, 185.9 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 72, 95.9 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 122, 145.9 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 42, 195.9 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 2, 125.9 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 22, 153.4 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 18.7, 167.6 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 70.3, 141.7 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 32, 195.9 , 0 );
setMoveKey( spep_3 -3 + 139, 1, 32, 195.9 , 0 );--
setMoveKey( spep_3 -3 + 140, 1, 92, 55.9 , 0 );
setMoveKey( spep_3 -3 + 141, 1, 92, 55.9 , 0 );--
setMoveKey( spep_3 -3 + 142, 1, -212, 17.2 , 0 );
setMoveKey( spep_3 -3 + 144, 1, -151.2, -21.9 , 0 );
setMoveKey( spep_3 -3 + 146, 1, -97.9, -56.4 , 0 );
setMoveKey( spep_3 -3 + 148, 1, -51.6, -86.6 , 0 );
setMoveKey( spep_3 -3 + 150, 1, -11.4, -112.8 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 23.2, -135.6 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 52.9, -155.3 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 78.5, -172.3 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 100.6, -186.9 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 119.8, -199.7 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 136.9, -210.9 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 152.6, -220.9 , 0 );
setMoveKey( spep_3 -3 + 166, 1, 167.4, -230.3 , 0 );
setMoveKey( spep_3 -3 + 167, 1, 182.2, -239.3 , 0 );
--setMoveKey( spep_3 -3 + 168, 1, -182.2, -239.3 , 0 );
--setMoveKey( spep_3 -3 + 169, 1, -182.2, -239.3 , 0 );

setScaleKey( spep_3 -3 + 108, 1, 2.99, 2.99 );
setScaleKey( spep_3 -3 + 110, 1, 2.99, 2.99 );
setScaleKey( spep_3 -3 + 112, 1, 3, 3 );
setScaleKey( spep_3 -3 + 114, 1, 2.99, 2.99 );
setScaleKey( spep_3 -3 + 115, 1, 2.99, 2.99 );--
setScaleKey( spep_3 -3 + 116, 1, 3, 3 );
setScaleKey( spep_3 -3 + 139, 1, 3, 3 );--
setScaleKey( spep_3 -3 + 140, 1, 2.99, 2.99 );
setScaleKey( spep_3 -3 + 141, 1, 2.99, 2.99 );--
setScaleKey( spep_3 -3 + 142, 1, 4.81, 4.81 );
setScaleKey( spep_3 -3 + 144, 1, 4.02, 4.02 );
setScaleKey( spep_3 -3 + 146, 1, 3.34, 3.34 );
setScaleKey( spep_3 -3 + 148, 1, 2.75, 2.75 );
setScaleKey( spep_3 -3 + 150, 1, 2.25, 2.25 );
setScaleKey( spep_3 -3 + 152, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 154, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 156, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 158, 1, 0.91, 0.91 );
setScaleKey( spep_3 -3 + 160, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 162, 1, 0.53, 0.53 );
setScaleKey( spep_3 -3 + 164, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 166, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 167, 1, 0.15, 0.15 );
--setScaleKey( spep_3 -3 + 168, 1, 0.15, 0.15 );
--setScaleKey( spep_3 -3 + 169, 1, 0.15, 0.15 );

setRotateKey( spep_3 -3 + 108, 1, -126.5 );
setRotateKey( spep_3 -3 + 110, 1, -126.5 );
setRotateKey( spep_3 -3 + 112, 1, -104.6 );
setRotateKey( spep_3 -3 + 114, 1, -47.6 );
setRotateKey( spep_3 -3 + 115, 1, -47.6 );--
setRotateKey( spep_3 -3 + 116, 1, -36.6 );
setRotateKey( spep_3 -3 + 139, 1, -36.6 );--
setRotateKey( spep_3 -3 + 140, 1, -36.6 );
setRotateKey( spep_3 -3 + 141, 1, -36.6 );--
setRotateKey( spep_3 -3 + 142, 1, 100 );
setRotateKey( spep_3 -3 + 167, 1, 100 );

-- ** 音 ** --
--ベジータ蹴り落とし
SE037 = playSeVer2( spep_3 + 12, 1003, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_3 + 22, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 22, SE038, 102 );
SE039 = playSeVer2( spep_3 + 22, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 22, SE039, 106 );

--画面遷移
SE040 = playSeVer2( spep_3 + 28, 1072, "", 0, 0, 0, 0.6);

--悟空蹴り飛ばし
SE042 = playSeVer2( spep_3 + 94, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 94, SE042, 108 );
SE043 = playSeVer2( spep_3 + 100, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 100, SE043, 113 );

--敵飛んでいく
SE045 = playSeVer2( spep_3 + 116, 1183, "",spep_3 + 164 + 58, 0, 54, -1);

--悟空アップ
SE046 = playSeVer2( spep_3 + 162, 9, "",spep_3 + 164 + 80, 0, 48, -1);
setSeVolumeByWorkId( spep_3 + 162, SE046, 73 );
SE047 = playSeVer2( spep_3 + 162, 1131, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 162, SE047, 76 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 164 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 164;


------------------------------------------------------
-- 気弾充填→発射→フィニッシュ(376F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --気弾充填→発射→フィニッシュ ef_004_ch
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 420, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 420, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 420, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 420, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --気弾充填→発射→フィニッシュ【背景】 ef_004_bg
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 420, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 420, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 420, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 420, finish_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_4 -3 + 278, 1, 1 );
setDisp( spep_4 -3 + 300, 1, 0 );
changeAnime( spep_4 -3 + 278, 1, 107 );

setMoveKey( spep_4 -3 + 278, 1, 0.1, 110.9 , 0 );
setMoveKey( spep_4 -3 + 280, 1, 0.1, 107.5 , 0 );
setMoveKey( spep_4 -3 + 282, 1, 0.1, 97.3 , 0 );
setMoveKey( spep_4 -3 + 284, 1, 0.1, 80.3 , 0 );
setMoveKey( spep_4 -3 + 286, 1, 0.1, 56.5 , 0 );
setMoveKey( spep_4 -3 + 288, 1, 0.1, 25.9 , 0 );
setMoveKey( spep_4 -3 + 290, 1, 0.2, -11.6 , 0 );
setMoveKey( spep_4 -3 + 292, 1, 0.2, -55.8 , 0 );
setMoveKey( spep_4 -3 + 294, 1, 0.3, -106.8 , 0 );
setMoveKey( spep_4 -3 + 296, 1, 0.3, -164.7 , 0 );
setMoveKey( spep_4 -3 + 298, 1, 0.4, -229.4 , 0 );
setMoveKey( spep_4 -3 + 300, 1, 0.4, -229.4 , 0 );

setScaleKey( spep_4 -3 + 278, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 280, 1, 0.11, 0.11 );
setScaleKey( spep_4 -3 + 282, 1, 0.12, 0.12 );
setScaleKey( spep_4 -3 + 284, 1, 0.15, 0.15 );
setScaleKey( spep_4 -3 + 286, 1, 0.18, 0.18 );
setScaleKey( spep_4 -3 + 288, 1, 0.23, 0.23 );
setScaleKey( spep_4 -3 + 290, 1, 0.28, 0.28 );
setScaleKey( spep_4 -3 + 292, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 294, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 296, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 298, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 300, 1, 0.6, 0.6 );

setRotateKey( spep_4 -3 + 278, 1, -0 );
setRotateKey( spep_4 -3 + 300, 1, -0 );

-- ** 音 ** --
--悟空気弾溜め
SE044 = playSeVer2( spep_4 + 30, 1121, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_4 + 30, SE044, 80 );
setStartTimeMs( SE044,  1483 );
SE048 = playSeVer2( spep_4 + 18, 1132, "",spep_4 + 118, 0, 30, -1);
setSeVolumeByWorkId( spep_4 + 18, SE048, 66 );
SE049 = playSeVer2( spep_4 + 32, 1355, "",spep_4 + 134, 0, 48, 0.6);
setPitch( spep_4 + 32, SE049, 400 );
setTimeStretch( SE049, 1.27, 30, 4 );
SE050 = playSeVer2( spep_4 + 32, 1252, "",spep_4 + 114, 0, 36, -1);
setSeVolumeByWorkId( spep_4 + 32, SE050, 80 );

--画面遷移
SE052 = playSeVer2( spep_4 + 50, 1072, "", 0, 0, 0, -1);

--ベジータアップ
SE053 = playSeVer2( spep_4 + 84, 1264, "",spep_4 + 234, 0, 106, -1);
setSeVolumeByWorkId( spep_4 + 84, SE053, 70 );
SE054 = playSeVer2( spep_4 + 84, 9, "",spep_4 + 162, 0, 36, -1);
setSeVolumeByWorkId( spep_4 + 84, SE054, 81 );

--ベジータ気弾溜め
SE051 = playSeVer2( spep_4 + 124, 1121, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_4 + 124, SE051, 87 );
setStartTimeMs( SE051,  1483 );
SE055 = playSeVer2( spep_4 + 124, 1296, "",spep_4 + 208, 12, 16, -1);
setSeVolumeByWorkId( spep_4 + 124, SE055, 65 );
setStartTimeMs( SE055,  150 );
SE056 = playSeVer2( spep_4 + 116, 1355, "",spep_4 + 238, 0, 58, 0.6);
setPitch( spep_4 + 116, SE056, 500 );
setTimeStretch( SE056, 1.33, 30, 4 );
SE041 = playSeVer2( spep_4 + 146, 1210, "",spep_4 + 232, 32, 24, -1);
setStartTimeMs( SE041,  4667 );

--悟空気弾発射
SE057 = playSeVer2( spep_4 + 196, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 196, SE057, 54 );
SE058 = playSeVer2( spep_4 + 202, 1284, "",spep_4 + 264, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 202, SE058, 82 );
SE059 = playSeVer2( spep_4 + 202, 1213, "",spep_4 + 272, 0, 22, -1);
setSeVolumeByWorkId( spep_4 + 202, SE059, 62 );

--ベジータ気弾発射
SE060 = playSeVer2( spep_4 + 254, 1193, "",spep_4 + 316, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 254, SE060, 155 );
SE061 = playSeVer2( spep_4 + 254, 1213, "",spep_4 + 316, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 254, SE061, 76 );

--爆発
SE062 = playSeVer2( spep_4 + 284, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 284, SE062, 93 );
SE063 = playSeVer2( spep_4 + 292, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 292, SE063, 81 );
SE064 = playSeVer2( spep_4 + 292, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 292, SE064, 95 );
SE065 = playSeVer2( spep_4 + 292, 1044, "", 0, 50, 0, -1);
setSeVolumeByWorkId( spep_4 + 292, SE065, 146 );
SE066 = playSeVer2( spep_4 + 292, 1226, "", 0, 152, 0, -1);
setSeVolumeByWorkId( spep_4 + 292, SE066, 105 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 420 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 304 );
endPhase( spep_4 + 410 );

end