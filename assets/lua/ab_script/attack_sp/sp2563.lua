--1026850:ジャッキー・チュン_萬國驚天掌
--sp_effect_a1_00398

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
SP_01 = 161772; --手を合わせる〜気を練る ef_001_front
SP_02 = 161773; --手を合わせる〜気を練る ef_001_back
SP_03 = 161774; --気を発射〜敵にヒット ef_002_front
SP_04 = 161776; --気を発射〜敵にヒット ef_002_back

--敵側
SP_03r = 161775; --気を発射〜敵にヒット ef_002_front_re
SP_04r = 161777; --気を発射〜敵にヒット ef_002_back_re

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
-- 手を合わせる〜気を練る(196F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); --手を合わせる〜気を練る ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, first_f, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, first_f, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 196, first_f, 0 );

setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 196 - 2, first_f, 255 );
setEffAlphaKey( spep_0 + 196 - 1, first_f, 255 );
setEffAlphaKey( spep_0 + 196, first_f, 0 );


first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); --手を合わせる〜気を練る ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, first_b, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, first_b, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 196, first_b, 0 );

setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 196 - 2, first_b, 255 );
setEffAlphaKey( spep_0 + 196 - 1, first_b, 255 );
setEffAlphaKey( spep_0 + 196, first_b, 0 );

--//////////顔カットイン、セリフカットインテンプレ
------------------------------------------------------
spep_x = spep_0 + 14;  --表示させたいフレーム−10の分を足す！
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -35, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -35, 515.5 , 0 );
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
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);
------------------------------------------------------

-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 22, 906, 92, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 22, shuchusen_0, 92, 20 );
setEffMoveKey( spep_0 + 22, shuchusen_0, 0, 0 , 0 );
setEffMoveKey( spep_0 + 114, shuchusen_0, 0, 0 , 0 );
setEffScaleKey( spep_0 + 22, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 114, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 22, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 114, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 22, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 114, shuchusen_0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 119, 1, 1 );
setDisp( spep_0 + 196, 1, 0 );

changeAnime( spep_0 + 119, 1, 118 );

setMoveKey( spep_0 + 119, 1, 199.9, -185.4 , 0 );
setMoveKey( spep_0 + 120, 1, 199.9, -185.4 , 0 );
setMoveKey( spep_0 + 122, 1, 201.2, -183.8 , 0 );
setMoveKey( spep_0 + 124, 1, 202.5, -185.2 , 0 );
setMoveKey( spep_0 + 126, 1, 203.8, -182.7 , 0 );
setMoveKey( spep_0 + 128, 1, 205, -184.1 , 0 );
setMoveKey( spep_0 + 130, 1, 206.3, -181.6 , 0 );
setMoveKey( spep_0 + 132, 1, 207.6, -183 , 0 );
setMoveKey( spep_0 + 134, 1, 208.9, -180.5 , 0 );
setMoveKey( spep_0 + 136, 1, 210.2, -181.9 , 0 );
setMoveKey( spep_0 + 138, 1, 211.4, -179.4 , 0 );
setMoveKey( spep_0 + 140, 1, 212.7, -180.8 , 0 );
setMoveKey( spep_0 + 142, 1, 214, -178.3 , 0 );
setMoveKey( spep_0 + 144, 1, 215.3, -179.7 , 0 );
setMoveKey( spep_0 + 146, 1, 216.6, -177.2 , 0 );
setMoveKey( spep_0 + 148, 1, 217.8, -178.6 , 0 );
setMoveKey( spep_0 + 150, 1, 219.1, -176.1 , 0 );
setMoveKey( spep_0 + 152, 1, 220.3, -177.5 , 0 );
setMoveKey( spep_0 + 154, 1, 221.6, -175 , 0 );
setMoveKey( spep_0 + 156, 1, 222.9, -176.5 , 0 );
setMoveKey( spep_0 + 158, 1, 224.1, -174 , 0 );
setMoveKey( spep_0 + 160, 1, 225.4, -175.4 , 0 );
setMoveKey( spep_0 + 162, 1, 226.6, -172.9 , 0 );
setMoveKey( spep_0 + 164, 1, 227.9, -174.3 , 0 );
setMoveKey( spep_0 + 166, 1, 229.2, -171.8 , 0 );
setMoveKey( spep_0 + 168, 1, 230.4, -173.2 , 0 );
setMoveKey( spep_0 + 170, 1, 231.7, -170.7 , 0 );
setMoveKey( spep_0 + 172, 1, 232.9, -172.1 , 0 );
setMoveKey( spep_0 + 174, 1, 234.2, -169.7 , 0 );
setMoveKey( spep_0 + 176, 1, 235.4, -171.1 , 0 );
setMoveKey( spep_0 + 178, 1, 236.7, -168.6 , 0 );
setMoveKey( spep_0 + 180, 1, 237.9, -170 , 0 );
setMoveKey( spep_0 + 182, 1, 239.2, -167.5 , 0 );
setMoveKey( spep_0 + 184, 1, 240.4, -168.9 , 0 );
setMoveKey( spep_0 + 186, 1, 241.6, -166.4 , 0 );
setMoveKey( spep_0 + 188, 1, 242.9, -167.9 , 0 );
setMoveKey( spep_0 + 190, 1, 244.1, -165.4 , 0 );
setMoveKey( spep_0 + 192, 1, 245.3, -166.8 , 0 );
setMoveKey( spep_0 + 194, 1, 246.6, -164.4 , 0 );
setMoveKey( spep_0 + 196, 1, 247.8, -165.8 , 0 );

setScaleKey( spep_0 + 119, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 120, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 122, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 124, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 126, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 128, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 130, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 132, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 134, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 136, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 138, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 140, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 142, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 144, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 146, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 148, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 150, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 152, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 154, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 156, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 158, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 160, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 162, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 164, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 166, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 168, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 170, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 172, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 174, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 176, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 178, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 180, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 182, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 184, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 186, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 188, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 190, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 192, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 194, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 196, 1, 2.81, 2.81 );

setRotateKey( spep_0 + 119, 1, 0 );
setRotateKey( spep_0 + 196, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 196 + 2, 0, 0, 0, 0, 255); 

-- ** 音 ** --
--手を合わせる
SE002 = playSeVer2( spep_0 + 26, 1233, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 36, 1006, "", 0, 0, 0, -1);

--画面遷移
SE004 = playSeVer2( spep_0 + 94, 8, "", 0, 0, 0, -1);

--気ため
SE005 = playSeVer2( spep_0 + 126, 1148, "",spep_0 + 212, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 126, SE005, 62 );
SE006 = playSeVer2( spep_0 + 126, 1240, "",spep_0 + 212, 0, 12, -1);
SE007 = playSeVer2( spep_0 + 126, 1341, "",spep_0 + 212, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 196;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
--playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 気を発射〜敵にヒット(358F)
------------------------------------------------------

-- ** エフェクト等 ** --
beam_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); --気を発射〜敵にヒット ef_002_front
setEffMoveKey( spep_2 + 0, beam_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 358, beam_f, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 358, beam_f, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, beam_f, 0 );
setEffRotateKey( spep_2 + 358, beam_f, 0 );

setEffAlphaKey( spep_2 + 0, beam_f, 255 );
setEffAlphaKey( spep_2 + 358, beam_f, 255 );

beam_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); --気を発射〜敵にヒット ef_002_back
setEffMoveKey( spep_2 + 0, beam_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 358, beam_b, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 358, beam_b, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, beam_b, 0 );
setEffRotateKey( spep_2 + 358, beam_b, 0 );

setEffAlphaKey( spep_2 + 0, beam_b, 255 );
setEffAlphaKey( spep_2 + 358, beam_b, 255 );

-- ** 音 ** --
--発射前気ため
SE009 = playSeVer2( spep_2 + 8, 1148, "",spep_2 + 128, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 8, SE009, 71 );
SE010 = playSeVer2( spep_2 + 8, 1240, "",spep_2 + 118, 0, 30, -1);
SE011 = playSeVer2( spep_2 + 8, 1341, "",spep_2 + 130, 0, 12, -1);

--腕あげる
SE012 = playSeVer2( spep_2 + 26, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE012, 85 );

--気弾発射
SE013 = playSeVer2( spep_2 + 84, 1342, "",spep_2 + 282, 0, 34, -1);
SE014 = playSeVer2( spep_2 + 118, 1145, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 118, 1114, "", 0, 0, 0, -1);

--気弾飛んでいく
SE016 = playSeVer2( spep_2 + 154, 1284, "",spep_2 + 274, 0, 28, -1);
SE017 = playSeVer2( spep_2 + 154, 1177, "",spep_2 + 274, 0, 28, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 358 + 2, 0, 0, 0, 0, 255); 

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 192; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 敵キャラクター ** --

setDisp( spep_2 + 220, 1, 1 );
setDisp( spep_2 + 350, 1, 0 );

changeAnime( spep_2 + 220, 1, 117 );
changeAnime( spep_2 + 234, 1, 106 );

setMoveKey( spep_2 + 220, 1, 114.4, -206.8 , 0 );
setMoveKey( spep_2 + 221, 1, 112.3, -209.5 , 0 );
setMoveKey( spep_2 + 222, 1, 112.3, -209.5 , 0 );
setMoveKey( spep_2 + 223, 1, 105.1, -210.2 , 0 );
setMoveKey( spep_2 + 224, 1, 105.1, -210.2 , 0 );
setMoveKey( spep_2 + 225, 1, 90.1, -222.6 , 0 );
setMoveKey( spep_2 + 226, 1, 90.1, -222.6 , 0 );
setMoveKey( spep_2 + 227, 1, 62.4, -235.9 , 0 );
setMoveKey( spep_2 + 228, 1, 62.4, -235.9 , 0 );
setMoveKey( spep_2 + 229, 1, 35.6, -256.8 , 0 );
setMoveKey( spep_2 + 230, 1, 35.6, -256.8 , 0 );
setMoveKey( spep_2 + 231, 1, -12, -284.4 , 0 );
setMoveKey( spep_2 + 232, 1, -12, -284.4 , 0 );
setMoveKey( spep_2 + 233, 1, -388.2, -544.4 , 0 );
setMoveKey( spep_2 + 234, 1, -388.2, -544.4 , 0 );
setMoveKey( spep_2 + 235, 1, -229.6, -352.4 , 0 );
setMoveKey( spep_2 + 236, 1, -229.6, -352.4 , 0 );
setMoveKey( spep_2 + 237, 1, -66, -185.1 , 0 );
setMoveKey( spep_2 + 238, 1, -66, -185.1 , 0 );
setMoveKey( spep_2 + 239, 1, 22.6, -89.9 , 0 );
setMoveKey( spep_2 + 240, 1, 22.6, -89.9 , 0 );
setMoveKey( spep_2 + 241, 1, 96.7, -28.6 , 0 );
setMoveKey( spep_2 + 242, 1, 96.7, -28.6 , 0 );
setMoveKey( spep_2 + 243, 1, 157.5, 40.8 , 0 );
setMoveKey( spep_2 + 244, 1, 157.5, 40.8 , 0 );
setMoveKey( spep_2 + 245, 1, 143, 34.8 , 0 );
setMoveKey( spep_2 + 246, 1, 143, 34.8 , 0 );
setMoveKey( spep_2 + 247, 1, 141.3, 35.4 , 0 );
setMoveKey( spep_2 + 248, 1, 141.3, 35.4 , 0 );
setMoveKey( spep_2 + 249, 1, 130.6, 25.1 , 0 );
setMoveKey( spep_2 + 250, 1, 130.6, 25.1 , 0 );
setMoveKey( spep_2 + 251, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_2 + 252, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_2 + 253, 1, 135.7, 30.3 , 0 );
setMoveKey( spep_2 + 254, 1, 135.7, 30.3 , 0 );
setMoveKey( spep_2 + 255, 1, 129, 24.1 , 0 );
setMoveKey( spep_2 + 256, 1, 129, 24.1 , 0 );
setMoveKey( spep_2 + 257, 1, 135.5, 30.9 , 0 );
setMoveKey( spep_2 + 258, 1, 135.5, 30.9 , 0 );
setMoveKey( spep_2 + 259, 1, 129.3, 24 , 0 );
setMoveKey( spep_2 + 260, 1, 129.3, 24 , 0 );
setMoveKey( spep_2 + 261, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_2 + 262, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_2 + 263, 1, 132.2, 23.3 , 0 );
setMoveKey( spep_2 + 264, 1, 132.2, 23.3 , 0 );
setMoveKey( spep_2 + 265, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_2 + 266, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_2 + 267, 1, 135.7, 30.3 , 0 );
setMoveKey( spep_2 + 268, 1, 135.7, 30.3 , 0 );
setMoveKey( spep_2 + 269, 1, 130.9, 24.1 , 0 );
setMoveKey( spep_2 + 270, 1, 130.9, 24.1 , 0 );
setMoveKey( spep_2 + 271, 1, 135.5, 29.1 , 0 );
setMoveKey( spep_2 + 272, 1, 135.5, 29.1 , 0 );
setMoveKey( spep_2 + 273, 1, 132.4, 24.1 , 0 );
setMoveKey( spep_2 + 274, 1, 132.4, 24.1 , 0 );
setMoveKey( spep_2 + 275, 1, 135.1, 28.3 , 0 );
setMoveKey( spep_2 + 276, 1, 135.1, 28.3 , 0 );
setMoveKey( spep_2 + 277, 1, 132.2, 23.3 , 0 );
setMoveKey( spep_2 + 278, 1, 132.2, 23.3 , 0 );
setMoveKey( spep_2 + 279, 1, 135.1, 26.9 , 0 );
setMoveKey( spep_2 + 280, 1, 135.1, 26.9 , 0 );
setMoveKey( spep_2 + 281, 1, 135.7, 26.6 , 0 );
setMoveKey( spep_2 + 282, 1, 135.7, 26.6 , 0 );
setMoveKey( spep_2 + 283, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 284, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 285, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_2 + 286, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_2 + 287, 1, 134.1, 24 , 0 );
setMoveKey( spep_2 + 288, 1, 134.1, 24 , 0 );
setMoveKey( spep_2 + 289, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_2 + 290, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_2 + 291, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_2 + 292, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_2 + 293, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 294, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 295, 1, 135.5, 25.8 , 0 );
setMoveKey( spep_2 + 296, 1, 135.5, 25.8 , 0 );
setMoveKey( spep_2 + 297, 1, 134.7, 24.1 , 0 );
setMoveKey( spep_2 + 298, 1, 134.7, 24.1 , 0 );
setMoveKey( spep_2 + 299, 1, 135.7, 26.6 , 0 );
setMoveKey( spep_2 + 300, 1, 135.7, 26.6 , 0 );
setMoveKey( spep_2 + 301, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 302, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 303, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_2 + 304, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_2 + 305, 1, 134.1, 24 , 0 );
setMoveKey( spep_2 + 306, 1, 134.1, 24 , 0 );
setMoveKey( spep_2 + 307, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_2 + 308, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_2 + 309, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_2 + 310, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_2 + 311, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 312, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 313, 1, 135.5, 25.8 , 0 );
setMoveKey( spep_2 + 314, 1, 135.5, 25.8 , 0 );
setMoveKey( spep_2 + 315, 1, 134.7, 24.1 , 0 );
setMoveKey( spep_2 + 316, 1, 134.7, 24.1 , 0 );
setMoveKey( spep_2 + 317, 1, 135.7, 26.6 , 0 );
setMoveKey( spep_2 + 318, 1, 135.7, 26.6 , 0 );
setMoveKey( spep_2 + 319, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 320, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 321, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_2 + 322, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_2 + 323, 1, 134.1, 24 , 0 );
setMoveKey( spep_2 + 324, 1, 134.1, 24 , 0 );
setMoveKey( spep_2 + 325, 1, 135.7, 26.6 , 0 );
setMoveKey( spep_2 + 326, 1, 135.7, 26.6 , 0 );
setMoveKey( spep_2 + 327, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 328, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 329, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_2 + 330, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_2 + 331, 1, 134.1, 24 , 0 );
setMoveKey( spep_2 + 332, 1, 134.1, 24 , 0 );
setMoveKey( spep_2 + 333, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_2 + 334, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_2 + 335, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_2 + 336, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_2 + 337, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 338, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 339, 1, 135.5, 25.8 , 0 );
setMoveKey( spep_2 + 340, 1, 135.5, 25.8 , 0 );
setMoveKey( spep_2 + 341, 1, 134.7, 24.1 , 0 );
setMoveKey( spep_2 + 342, 1, 134.7, 24.1 , 0 );
setMoveKey( spep_2 + 350, 1, 134.7, 24.1 , 0 );

setScaleKey( spep_2 + 220, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 233, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 234, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 342, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 350, 1, 1.53, 1.53 );

setRotateKey( spep_2 + 220, 1, 0 );
setRotateKey( spep_2 + 233, 1, 0 );
setRotateKey( spep_2 + 234, 1, -23.5 );
setRotateKey( spep_2 + 235, 1, -25.1 );
setRotateKey( spep_2 + 236, 1, -25.1 );
setRotateKey( spep_2 + 237, 1, -29.3 );
setRotateKey( spep_2 + 238, 1, -29.3 );
setRotateKey( spep_2 + 239, 1, -26.2 );
setRotateKey( spep_2 + 240, 1, -26.2 );
setRotateKey( spep_2 + 241, 1, -29.1 );
setRotateKey( spep_2 + 242, 1, -29.1 );
setRotateKey( spep_2 + 243, 1, -26.3 );
setRotateKey( spep_2 + 244, 1, -26.3 );
setRotateKey( spep_2 + 245, 1, -26.7 );
setRotateKey( spep_2 + 246, 1, -26.7 );
setRotateKey( spep_2 + 247, 1, -29.3 );
setRotateKey( spep_2 + 248, 1, -29.3 );
setRotateKey( spep_2 + 249, 1, -26.7 );
setRotateKey( spep_2 + 250, 1, -26.7 );
setRotateKey( spep_2 + 251, 1, -29.3 );
setRotateKey( spep_2 + 252, 1, -29.3 );
setRotateKey( spep_2 + 253, 1, -26.7 );
setRotateKey( spep_2 + 254, 1, -26.7 );
setRotateKey( spep_2 + 255, 1, -29.3 );
setRotateKey( spep_2 + 256, 1, -29.3 );
setRotateKey( spep_2 + 257, 1, -26.7 );
setRotateKey( spep_2 + 258, 1, -26.7 );
setRotateKey( spep_2 + 259, 1, -29.3 );
setRotateKey( spep_2 + 260, 1, -29.3 );
setRotateKey( spep_2 + 261, 1, -26.7 );
setRotateKey( spep_2 + 262, 1, -26.7 );
setRotateKey( spep_2 + 263, 1, -29.3 );
setRotateKey( spep_2 + 264, 1, -29.3 );
setRotateKey( spep_2 + 265, 1, -26.7 );
setRotateKey( spep_2 + 266, 1, -26.7 );
setRotateKey( spep_2 + 267, 1, -29.3 );
setRotateKey( spep_2 + 268, 1, -29.3 );
setRotateKey( spep_2 + 269, 1, -26.7 );
setRotateKey( spep_2 + 270, 1, -26.7 );
setRotateKey( spep_2 + 271, 1, -29.3 );
setRotateKey( spep_2 + 272, 1, -29.3 );
setRotateKey( spep_2 + 273, 1, -26.7 );
setRotateKey( spep_2 + 274, 1, -26.7 );
setRotateKey( spep_2 + 275, 1, -29.3 );
setRotateKey( spep_2 + 276, 1, -29.3 );
setRotateKey( spep_2 + 277, 1, -26.7 );
setRotateKey( spep_2 + 278, 1, -26.7 );
setRotateKey( spep_2 + 279, 1, -29.3 );
setRotateKey( spep_2 + 280, 1, -29.3 );
setRotateKey( spep_2 + 281, 1, -26.7 );
setRotateKey( spep_2 + 282, 1, -26.7 );
setRotateKey( spep_2 + 283, 1, -29.3 );
setRotateKey( spep_2 + 284, 1, -29.3 );
setRotateKey( spep_2 + 285, 1, -26.7 );
setRotateKey( spep_2 + 286, 1, -26.7 );
setRotateKey( spep_2 + 287, 1, -29.3 );
setRotateKey( spep_2 + 288, 1, -29.3 );
setRotateKey( spep_2 + 289, 1, -26.7 );
setRotateKey( spep_2 + 290, 1, -26.7 );
setRotateKey( spep_2 + 291, 1, -29.3 );
setRotateKey( spep_2 + 292, 1, -29.3 );
setRotateKey( spep_2 + 293, 1, -26.7 );
setRotateKey( spep_2 + 294, 1, -26.7 );
setRotateKey( spep_2 + 295, 1, -29.3 );
setRotateKey( spep_2 + 296, 1, -29.3 );
setRotateKey( spep_2 + 297, 1, -26.7 );
setRotateKey( spep_2 + 298, 1, -26.7 );
setRotateKey( spep_2 + 299, 1, -29.3 );
setRotateKey( spep_2 + 300, 1, -29.3 );
setRotateKey( spep_2 + 301, 1, -26.7 );
setRotateKey( spep_2 + 302, 1, -26.7 );
setRotateKey( spep_2 + 303, 1, -29.3 );
setRotateKey( spep_2 + 304, 1, -29.3 );
setRotateKey( spep_2 + 305, 1, -26.7 );
setRotateKey( spep_2 + 306, 1, -26.7 );
setRotateKey( spep_2 + 307, 1, -29.3 );
setRotateKey( spep_2 + 308, 1, -29.3 );
setRotateKey( spep_2 + 309, 1, -26.7 );
setRotateKey( spep_2 + 310, 1, -26.7 );
setRotateKey( spep_2 + 311, 1, -29.3 );
setRotateKey( spep_2 + 312, 1, -29.3 );
setRotateKey( spep_2 + 313, 1, -26.7 );
setRotateKey( spep_2 + 314, 1, -26.7 );
setRotateKey( spep_2 + 315, 1, -29.3 );
setRotateKey( spep_2 + 316, 1, -29.3 );
setRotateKey( spep_2 + 317, 1, -26.7 );
setRotateKey( spep_2 + 318, 1, -26.7 );
setRotateKey( spep_2 + 319, 1, -29.3 );
setRotateKey( spep_2 + 320, 1, -29.3 );
setRotateKey( spep_2 + 321, 1, -26.7 );
setRotateKey( spep_2 + 322, 1, -26.7 );
setRotateKey( spep_2 + 323, 1, -29.3 );
setRotateKey( spep_2 + 324, 1, -29.3 );
setRotateKey( spep_2 + 325, 1, -26.7 );
setRotateKey( spep_2 + 326, 1, -26.7 );
setRotateKey( spep_2 + 327, 1, -29.3 );
setRotateKey( spep_2 + 328, 1, -29.3 );
setRotateKey( spep_2 + 329, 1, -26.7 );
setRotateKey( spep_2 + 330, 1, -26.7 );
setRotateKey( spep_2 + 331, 1, -29.3 );
setRotateKey( spep_2 + 332, 1, -29.3 );
setRotateKey( spep_2 + 333, 1, -26.7 );
setRotateKey( spep_2 + 334, 1, -26.7 );
setRotateKey( spep_2 + 335, 1, -29.3 );
setRotateKey( spep_2 + 336, 1, -29.3 );
setRotateKey( spep_2 + 337, 1, -26.7 );
setRotateKey( spep_2 + 338, 1, -26.7 );
setRotateKey( spep_2 + 339, 1, -29.3 );
setRotateKey( spep_2 + 340, 1, -29.3 );
setRotateKey( spep_2 + 341, 1, -26.7 );
setRotateKey( spep_2 + 342, 1, -26.7 );
setRotateKey( spep_2 + 350, 1, -26.7 );


-- ** 音 ** --
--気弾ヒット
SE018 = playSeVer2( spep_2 + 244, 1023, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 244, 1038, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 244, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 244, SE020, 84 );
SE021 = playSeVer2( spep_2 + 244, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 244 );
endPhase( spep_2 + 348 );

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 手を合わせる〜気を練る(196F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); --手を合わせる〜気を練る ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, first_f, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, first_f, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 196, first_f, 0 );

setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 196 - 2, first_f, 255 );
setEffAlphaKey( spep_0 + 196 - 1, first_f, 255 );
setEffAlphaKey( spep_0 + 196, first_f, 0 );


first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); --手を合わせる〜気を練る ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, first_b, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, first_b, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 196, first_b, 0 );

setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 196 - 2, first_b, 255 );
setEffAlphaKey( spep_0 + 196 - 1, first_b, 255 );
setEffAlphaKey( spep_0 + 196, first_b, 0 );

--//////////顔カットイン、セリフカットインテンプレ
------------------------------------------------------
spep_x = spep_0 + 14;  --表示させたいフレーム−10の分を足す！
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -35, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -35, 515.5 , 0 );
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
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);
------------------------------------------------------

-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 22, 906, 92, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 22, shuchusen_0, 92, 20 );
setEffMoveKey( spep_0 + 22, shuchusen_0, 0, 0 , 0 );
setEffMoveKey( spep_0 + 114, shuchusen_0, 0, 0 , 0 );
setEffScaleKey( spep_0 + 22, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 114, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 22, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 114, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 22, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 114, shuchusen_0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 119, 1, 1 );
setDisp( spep_0 + 196, 1, 0 );

changeAnime( spep_0 + 119, 1, 118 );

setMoveKey( spep_0 + 119, 1, 199.9, -185.4 , 0 );
setMoveKey( spep_0 + 120, 1, 199.9, -185.4 , 0 );
setMoveKey( spep_0 + 122, 1, 201.2, -183.8 , 0 );
setMoveKey( spep_0 + 124, 1, 202.5, -185.2 , 0 );
setMoveKey( spep_0 + 126, 1, 203.8, -182.7 , 0 );
setMoveKey( spep_0 + 128, 1, 205, -184.1 , 0 );
setMoveKey( spep_0 + 130, 1, 206.3, -181.6 , 0 );
setMoveKey( spep_0 + 132, 1, 207.6, -183 , 0 );
setMoveKey( spep_0 + 134, 1, 208.9, -180.5 , 0 );
setMoveKey( spep_0 + 136, 1, 210.2, -181.9 , 0 );
setMoveKey( spep_0 + 138, 1, 211.4, -179.4 , 0 );
setMoveKey( spep_0 + 140, 1, 212.7, -180.8 , 0 );
setMoveKey( spep_0 + 142, 1, 214, -178.3 , 0 );
setMoveKey( spep_0 + 144, 1, 215.3, -179.7 , 0 );
setMoveKey( spep_0 + 146, 1, 216.6, -177.2 , 0 );
setMoveKey( spep_0 + 148, 1, 217.8, -178.6 , 0 );
setMoveKey( spep_0 + 150, 1, 219.1, -176.1 , 0 );
setMoveKey( spep_0 + 152, 1, 220.3, -177.5 , 0 );
setMoveKey( spep_0 + 154, 1, 221.6, -175 , 0 );
setMoveKey( spep_0 + 156, 1, 222.9, -176.5 , 0 );
setMoveKey( spep_0 + 158, 1, 224.1, -174 , 0 );
setMoveKey( spep_0 + 160, 1, 225.4, -175.4 , 0 );
setMoveKey( spep_0 + 162, 1, 226.6, -172.9 , 0 );
setMoveKey( spep_0 + 164, 1, 227.9, -174.3 , 0 );
setMoveKey( spep_0 + 166, 1, 229.2, -171.8 , 0 );
setMoveKey( spep_0 + 168, 1, 230.4, -173.2 , 0 );
setMoveKey( spep_0 + 170, 1, 231.7, -170.7 , 0 );
setMoveKey( spep_0 + 172, 1, 232.9, -172.1 , 0 );
setMoveKey( spep_0 + 174, 1, 234.2, -169.7 , 0 );
setMoveKey( spep_0 + 176, 1, 235.4, -171.1 , 0 );
setMoveKey( spep_0 + 178, 1, 236.7, -168.6 , 0 );
setMoveKey( spep_0 + 180, 1, 237.9, -170 , 0 );
setMoveKey( spep_0 + 182, 1, 239.2, -167.5 , 0 );
setMoveKey( spep_0 + 184, 1, 240.4, -168.9 , 0 );
setMoveKey( spep_0 + 186, 1, 241.6, -166.4 , 0 );
setMoveKey( spep_0 + 188, 1, 242.9, -167.9 , 0 );
setMoveKey( spep_0 + 190, 1, 244.1, -165.4 , 0 );
setMoveKey( spep_0 + 192, 1, 245.3, -166.8 , 0 );
setMoveKey( spep_0 + 194, 1, 246.6, -164.4 , 0 );
setMoveKey( spep_0 + 196, 1, 247.8, -165.8 , 0 );

setScaleKey( spep_0 + 119, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 120, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 122, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 124, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 126, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 128, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 130, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 132, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 134, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 136, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 138, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 140, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 142, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 144, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 146, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 148, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 150, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 152, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 154, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 156, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 158, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 160, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 162, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 164, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 166, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 168, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 170, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 172, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 174, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 176, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 178, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 180, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 182, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 184, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 186, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 188, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 190, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 192, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 194, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 196, 1, 2.81, 2.81 );

setRotateKey( spep_0 + 119, 1, 0 );
setRotateKey( spep_0 + 196, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 196 + 2, 0, 0, 0, 0, 255); 

-- ** 音 ** --
--手を合わせる
SE002 = playSeVer2( spep_0 + 26, 1233, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 36, 1006, "", 0, 0, 0, -1);

--画面遷移
SE004 = playSeVer2( spep_0 + 94, 8, "", 0, 0, 0, -1);

--気ため
SE005 = playSeVer2( spep_0 + 126, 1148, "",spep_0 + 212, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 126, SE005, 62 );
SE006 = playSeVer2( spep_0 + 126, 1240, "",spep_0 + 212, 0, 12, -1);
SE007 = playSeVer2( spep_0 + 126, 1341, "",spep_0 + 212, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 196;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
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
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 気を発射〜敵にヒット(358F)
------------------------------------------------------

-- ** エフェクト等 ** --
beam_f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 ); --気を発射〜敵にヒット ef_002_front
setEffMoveKey( spep_2 + 0, beam_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 358, beam_f, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, beam_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 358, beam_f, -1.0, 1.0 );

setEffRotateKey( spep_2 + 0, beam_f, 0 );
setEffRotateKey( spep_2 + 358, beam_f, 0 );

setEffAlphaKey( spep_2 + 0, beam_f, 255 );
setEffAlphaKey( spep_2 + 358, beam_f, 255 );

beam_b = entryEffect( spep_2 + 0, SP_04r, 0x80, -1, 0, 0, 0 ); --気を発射〜敵にヒット ef_002_back
setEffMoveKey( spep_2 + 0, beam_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 358, beam_b, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, beam_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 358, beam_b, -1.0, 1.0 );

setEffRotateKey( spep_2 + 0, beam_b, 0 );
setEffRotateKey( spep_2 + 358, beam_b, 0 );

setEffAlphaKey( spep_2 + 0, beam_b, 255 );
setEffAlphaKey( spep_2 + 358, beam_b, 255 );

-- ** 音 ** --
--発射前気ため
SE009 = playSeVer2( spep_2 + 8, 1148, "",spep_2 + 128, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 8, SE009, 71 );
SE010 = playSeVer2( spep_2 + 8, 1240, "",spep_2 + 118, 0, 30, -1);
SE011 = playSeVer2( spep_2 + 8, 1341, "",spep_2 + 130, 0, 12, -1);

--腕あげる
SE012 = playSeVer2( spep_2 + 26, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE012, 85 );

--気弾発射
SE013 = playSeVer2( spep_2 + 84, 1342, "",spep_2 + 282, 0, 34, -1);
SE014 = playSeVer2( spep_2 + 118, 1145, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 118, 1114, "", 0, 0, 0, -1);

--気弾飛んでいく
SE016 = playSeVer2( spep_2 + 154, 1284, "",spep_2 + 274, 0, 28, -1);
SE017 = playSeVer2( spep_2 + 154, 1177, "",spep_2 + 274, 0, 28, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 358 + 2, 0, 0, 0, 0, 255); 

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 192; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 敵キャラクター ** --

setDisp( spep_2 + 220, 1, 1 );
setDisp( spep_2 + 350, 1, 0 );

changeAnime( spep_2 + 220, 1, 117 );
changeAnime( spep_2 + 234, 1, 106 );

setMoveKey( spep_2 + 220, 1, 114.4, -206.8 , 0 );
setMoveKey( spep_2 + 221, 1, 112.3, -209.5 , 0 );
setMoveKey( spep_2 + 222, 1, 112.3, -209.5 , 0 );
setMoveKey( spep_2 + 223, 1, 105.1, -210.2 , 0 );
setMoveKey( spep_2 + 224, 1, 105.1, -210.2 , 0 );
setMoveKey( spep_2 + 225, 1, 90.1, -222.6 , 0 );
setMoveKey( spep_2 + 226, 1, 90.1, -222.6 , 0 );
setMoveKey( spep_2 + 227, 1, 62.4, -235.9 , 0 );
setMoveKey( spep_2 + 228, 1, 62.4, -235.9 , 0 );
setMoveKey( spep_2 + 229, 1, 35.6, -256.8 , 0 );
setMoveKey( spep_2 + 230, 1, 35.6, -256.8 , 0 );
setMoveKey( spep_2 + 231, 1, -12, -284.4 , 0 );
setMoveKey( spep_2 + 232, 1, -12, -284.4 , 0 );
setMoveKey( spep_2 + 233, 1, -388.2, -544.4 , 0 );
setMoveKey( spep_2 + 234, 1, -388.2, -544.4 , 0 );
setMoveKey( spep_2 + 235, 1, -229.6, -352.4 , 0 );
setMoveKey( spep_2 + 236, 1, -229.6, -352.4 , 0 );
setMoveKey( spep_2 + 237, 1, -66, -185.1 , 0 );
setMoveKey( spep_2 + 238, 1, -66, -185.1 , 0 );
setMoveKey( spep_2 + 239, 1, 22.6, -89.9 , 0 );
setMoveKey( spep_2 + 240, 1, 22.6, -89.9 , 0 );
setMoveKey( spep_2 + 241, 1, 96.7, -28.6 , 0 );
setMoveKey( spep_2 + 242, 1, 96.7, -28.6 , 0 );
setMoveKey( spep_2 + 243, 1, 157.5, 40.8 , 0 );
setMoveKey( spep_2 + 244, 1, 157.5, 40.8 , 0 );
setMoveKey( spep_2 + 245, 1, 143, 34.8 , 0 );
setMoveKey( spep_2 + 246, 1, 143, 34.8 , 0 );
setMoveKey( spep_2 + 247, 1, 141.3, 35.4 , 0 );
setMoveKey( spep_2 + 248, 1, 141.3, 35.4 , 0 );
setMoveKey( spep_2 + 249, 1, 130.6, 25.1 , 0 );
setMoveKey( spep_2 + 250, 1, 130.6, 25.1 , 0 );
setMoveKey( spep_2 + 251, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_2 + 252, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_2 + 253, 1, 135.7, 30.3 , 0 );
setMoveKey( spep_2 + 254, 1, 135.7, 30.3 , 0 );
setMoveKey( spep_2 + 255, 1, 129, 24.1 , 0 );
setMoveKey( spep_2 + 256, 1, 129, 24.1 , 0 );
setMoveKey( spep_2 + 257, 1, 135.5, 30.9 , 0 );
setMoveKey( spep_2 + 258, 1, 135.5, 30.9 , 0 );
setMoveKey( spep_2 + 259, 1, 129.3, 24 , 0 );
setMoveKey( spep_2 + 260, 1, 129.3, 24 , 0 );
setMoveKey( spep_2 + 261, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_2 + 262, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_2 + 263, 1, 132.2, 23.3 , 0 );
setMoveKey( spep_2 + 264, 1, 132.2, 23.3 , 0 );
setMoveKey( spep_2 + 265, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_2 + 266, 1, 135.1, 30.3 , 0 );
setMoveKey( spep_2 + 267, 1, 135.7, 30.3 , 0 );
setMoveKey( spep_2 + 268, 1, 135.7, 30.3 , 0 );
setMoveKey( spep_2 + 269, 1, 130.9, 24.1 , 0 );
setMoveKey( spep_2 + 270, 1, 130.9, 24.1 , 0 );
setMoveKey( spep_2 + 271, 1, 135.5, 29.1 , 0 );
setMoveKey( spep_2 + 272, 1, 135.5, 29.1 , 0 );
setMoveKey( spep_2 + 273, 1, 132.4, 24.1 , 0 );
setMoveKey( spep_2 + 274, 1, 132.4, 24.1 , 0 );
setMoveKey( spep_2 + 275, 1, 135.1, 28.3 , 0 );
setMoveKey( spep_2 + 276, 1, 135.1, 28.3 , 0 );
setMoveKey( spep_2 + 277, 1, 132.2, 23.3 , 0 );
setMoveKey( spep_2 + 278, 1, 132.2, 23.3 , 0 );
setMoveKey( spep_2 + 279, 1, 135.1, 26.9 , 0 );
setMoveKey( spep_2 + 280, 1, 135.1, 26.9 , 0 );
setMoveKey( spep_2 + 281, 1, 135.7, 26.6 , 0 );
setMoveKey( spep_2 + 282, 1, 135.7, 26.6 , 0 );
setMoveKey( spep_2 + 283, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 284, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 285, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_2 + 286, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_2 + 287, 1, 134.1, 24 , 0 );
setMoveKey( spep_2 + 288, 1, 134.1, 24 , 0 );
setMoveKey( spep_2 + 289, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_2 + 290, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_2 + 291, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_2 + 292, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_2 + 293, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 294, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 295, 1, 135.5, 25.8 , 0 );
setMoveKey( spep_2 + 296, 1, 135.5, 25.8 , 0 );
setMoveKey( spep_2 + 297, 1, 134.7, 24.1 , 0 );
setMoveKey( spep_2 + 298, 1, 134.7, 24.1 , 0 );
setMoveKey( spep_2 + 299, 1, 135.7, 26.6 , 0 );
setMoveKey( spep_2 + 300, 1, 135.7, 26.6 , 0 );
setMoveKey( spep_2 + 301, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 302, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 303, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_2 + 304, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_2 + 305, 1, 134.1, 24 , 0 );
setMoveKey( spep_2 + 306, 1, 134.1, 24 , 0 );
setMoveKey( spep_2 + 307, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_2 + 308, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_2 + 309, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_2 + 310, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_2 + 311, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 312, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 313, 1, 135.5, 25.8 , 0 );
setMoveKey( spep_2 + 314, 1, 135.5, 25.8 , 0 );
setMoveKey( spep_2 + 315, 1, 134.7, 24.1 , 0 );
setMoveKey( spep_2 + 316, 1, 134.7, 24.1 , 0 );
setMoveKey( spep_2 + 317, 1, 135.7, 26.6 , 0 );
setMoveKey( spep_2 + 318, 1, 135.7, 26.6 , 0 );
setMoveKey( spep_2 + 319, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 320, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 321, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_2 + 322, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_2 + 323, 1, 134.1, 24 , 0 );
setMoveKey( spep_2 + 324, 1, 134.1, 24 , 0 );
setMoveKey( spep_2 + 325, 1, 135.7, 26.6 , 0 );
setMoveKey( spep_2 + 326, 1, 135.7, 26.6 , 0 );
setMoveKey( spep_2 + 327, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 328, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 329, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_2 + 330, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_2 + 331, 1, 134.1, 24 , 0 );
setMoveKey( spep_2 + 332, 1, 134.1, 24 , 0 );
setMoveKey( spep_2 + 333, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_2 + 334, 1, 135.1, 26.2 , 0 );
setMoveKey( spep_2 + 335, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_2 + 336, 1, 135.7, 25.8 , 0 );
setMoveKey( spep_2 + 337, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 338, 1, 134.1, 24.1 , 0 );
setMoveKey( spep_2 + 339, 1, 135.5, 25.8 , 0 );
setMoveKey( spep_2 + 340, 1, 135.5, 25.8 , 0 );
setMoveKey( spep_2 + 341, 1, 134.7, 24.1 , 0 );
setMoveKey( spep_2 + 342, 1, 134.7, 24.1 , 0 );
setMoveKey( spep_2 + 350, 1, 134.7, 24.1 , 0 );

setScaleKey( spep_2 + 220, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 233, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 234, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 342, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 350, 1, 1.53, 1.53 );

setRotateKey( spep_2 + 220, 1, 0 );
setRotateKey( spep_2 + 233, 1, 0 );
setRotateKey( spep_2 + 234, 1, -23.5 );
setRotateKey( spep_2 + 235, 1, -25.1 );
setRotateKey( spep_2 + 236, 1, -25.1 );
setRotateKey( spep_2 + 237, 1, -29.3 );
setRotateKey( spep_2 + 238, 1, -29.3 );
setRotateKey( spep_2 + 239, 1, -26.2 );
setRotateKey( spep_2 + 240, 1, -26.2 );
setRotateKey( spep_2 + 241, 1, -29.1 );
setRotateKey( spep_2 + 242, 1, -29.1 );
setRotateKey( spep_2 + 243, 1, -26.3 );
setRotateKey( spep_2 + 244, 1, -26.3 );
setRotateKey( spep_2 + 245, 1, -26.7 );
setRotateKey( spep_2 + 246, 1, -26.7 );
setRotateKey( spep_2 + 247, 1, -29.3 );
setRotateKey( spep_2 + 248, 1, -29.3 );
setRotateKey( spep_2 + 249, 1, -26.7 );
setRotateKey( spep_2 + 250, 1, -26.7 );
setRotateKey( spep_2 + 251, 1, -29.3 );
setRotateKey( spep_2 + 252, 1, -29.3 );
setRotateKey( spep_2 + 253, 1, -26.7 );
setRotateKey( spep_2 + 254, 1, -26.7 );
setRotateKey( spep_2 + 255, 1, -29.3 );
setRotateKey( spep_2 + 256, 1, -29.3 );
setRotateKey( spep_2 + 257, 1, -26.7 );
setRotateKey( spep_2 + 258, 1, -26.7 );
setRotateKey( spep_2 + 259, 1, -29.3 );
setRotateKey( spep_2 + 260, 1, -29.3 );
setRotateKey( spep_2 + 261, 1, -26.7 );
setRotateKey( spep_2 + 262, 1, -26.7 );
setRotateKey( spep_2 + 263, 1, -29.3 );
setRotateKey( spep_2 + 264, 1, -29.3 );
setRotateKey( spep_2 + 265, 1, -26.7 );
setRotateKey( spep_2 + 266, 1, -26.7 );
setRotateKey( spep_2 + 267, 1, -29.3 );
setRotateKey( spep_2 + 268, 1, -29.3 );
setRotateKey( spep_2 + 269, 1, -26.7 );
setRotateKey( spep_2 + 270, 1, -26.7 );
setRotateKey( spep_2 + 271, 1, -29.3 );
setRotateKey( spep_2 + 272, 1, -29.3 );
setRotateKey( spep_2 + 273, 1, -26.7 );
setRotateKey( spep_2 + 274, 1, -26.7 );
setRotateKey( spep_2 + 275, 1, -29.3 );
setRotateKey( spep_2 + 276, 1, -29.3 );
setRotateKey( spep_2 + 277, 1, -26.7 );
setRotateKey( spep_2 + 278, 1, -26.7 );
setRotateKey( spep_2 + 279, 1, -29.3 );
setRotateKey( spep_2 + 280, 1, -29.3 );
setRotateKey( spep_2 + 281, 1, -26.7 );
setRotateKey( spep_2 + 282, 1, -26.7 );
setRotateKey( spep_2 + 283, 1, -29.3 );
setRotateKey( spep_2 + 284, 1, -29.3 );
setRotateKey( spep_2 + 285, 1, -26.7 );
setRotateKey( spep_2 + 286, 1, -26.7 );
setRotateKey( spep_2 + 287, 1, -29.3 );
setRotateKey( spep_2 + 288, 1, -29.3 );
setRotateKey( spep_2 + 289, 1, -26.7 );
setRotateKey( spep_2 + 290, 1, -26.7 );
setRotateKey( spep_2 + 291, 1, -29.3 );
setRotateKey( spep_2 + 292, 1, -29.3 );
setRotateKey( spep_2 + 293, 1, -26.7 );
setRotateKey( spep_2 + 294, 1, -26.7 );
setRotateKey( spep_2 + 295, 1, -29.3 );
setRotateKey( spep_2 + 296, 1, -29.3 );
setRotateKey( spep_2 + 297, 1, -26.7 );
setRotateKey( spep_2 + 298, 1, -26.7 );
setRotateKey( spep_2 + 299, 1, -29.3 );
setRotateKey( spep_2 + 300, 1, -29.3 );
setRotateKey( spep_2 + 301, 1, -26.7 );
setRotateKey( spep_2 + 302, 1, -26.7 );
setRotateKey( spep_2 + 303, 1, -29.3 );
setRotateKey( spep_2 + 304, 1, -29.3 );
setRotateKey( spep_2 + 305, 1, -26.7 );
setRotateKey( spep_2 + 306, 1, -26.7 );
setRotateKey( spep_2 + 307, 1, -29.3 );
setRotateKey( spep_2 + 308, 1, -29.3 );
setRotateKey( spep_2 + 309, 1, -26.7 );
setRotateKey( spep_2 + 310, 1, -26.7 );
setRotateKey( spep_2 + 311, 1, -29.3 );
setRotateKey( spep_2 + 312, 1, -29.3 );
setRotateKey( spep_2 + 313, 1, -26.7 );
setRotateKey( spep_2 + 314, 1, -26.7 );
setRotateKey( spep_2 + 315, 1, -29.3 );
setRotateKey( spep_2 + 316, 1, -29.3 );
setRotateKey( spep_2 + 317, 1, -26.7 );
setRotateKey( spep_2 + 318, 1, -26.7 );
setRotateKey( spep_2 + 319, 1, -29.3 );
setRotateKey( spep_2 + 320, 1, -29.3 );
setRotateKey( spep_2 + 321, 1, -26.7 );
setRotateKey( spep_2 + 322, 1, -26.7 );
setRotateKey( spep_2 + 323, 1, -29.3 );
setRotateKey( spep_2 + 324, 1, -29.3 );
setRotateKey( spep_2 + 325, 1, -26.7 );
setRotateKey( spep_2 + 326, 1, -26.7 );
setRotateKey( spep_2 + 327, 1, -29.3 );
setRotateKey( spep_2 + 328, 1, -29.3 );
setRotateKey( spep_2 + 329, 1, -26.7 );
setRotateKey( spep_2 + 330, 1, -26.7 );
setRotateKey( spep_2 + 331, 1, -29.3 );
setRotateKey( spep_2 + 332, 1, -29.3 );
setRotateKey( spep_2 + 333, 1, -26.7 );
setRotateKey( spep_2 + 334, 1, -26.7 );
setRotateKey( spep_2 + 335, 1, -29.3 );
setRotateKey( spep_2 + 336, 1, -29.3 );
setRotateKey( spep_2 + 337, 1, -26.7 );
setRotateKey( spep_2 + 338, 1, -26.7 );
setRotateKey( spep_2 + 339, 1, -29.3 );
setRotateKey( spep_2 + 340, 1, -29.3 );
setRotateKey( spep_2 + 341, 1, -26.7 );
setRotateKey( spep_2 + 342, 1, -26.7 );
setRotateKey( spep_2 + 350, 1, -26.7 );

-- ** 音 ** --
--気弾ヒット
SE018 = playSeVer2( spep_2 + 244, 1023, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 244, 1038, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 244, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 244, SE020, 84 );
SE021 = playSeVer2( spep_2 + 244, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 244 );
endPhase( spep_2 + 348 );

end