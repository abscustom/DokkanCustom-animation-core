--1028130:UR_ピッコロ&孫悟飯(幼年期)/孫悟飯(幼年期)_必殺技：爆砕魔激閃
--sp_effect_a1_00410
--sp2642

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162421; --ef_001 冒頭、正面向き構え
SP_02 = 162422; --ef_002 ダッシュ、蹴り、パンチ、口ビーム、ラスト：手前
SP_03 = 162423; --ef_003 ダッシュ、蹴り、パンチ、口ビーム、ラスト：奥

--エフェクト(敵)
SP_02r = 162424;  --ef_002r ダッシュ、蹴り、パンチ、口ビーム、ラスト：手前：敵側
SP_03r = 162425;  --ef_003r ダッシュ、蹴り、パンチ、口ビーム、ラスト：奥：敵側


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭、正面向き構え
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001 冒頭、正面向き構え
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 55, 515.5, 3000 ); --ゴゴゴ
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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 90, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 18, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 79 );
SE004 = playSeVer2( spep_0 + 24, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 66 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --96

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
--setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -28 ); -- 技名表示
--setEffScaleKey( spep_c + 0, spname, -1.0, 1.0); -- 敵側のみ
--setEffScaleKey( spep_c + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );
 
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
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_2 = spep_c + 94;


-------------------------------------------------
-- ダッシュ、蹴り、パンチ、口ビーム、ラスト
-------------------------------------------------
MAX_FRAME_2 = 598;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002 ダッシュ、蹴り、パンチ、口ビーム、ラスト：手前
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_003 ダッシュ、蹴り、パンチ、口ビーム、ラスト：奥
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_2 + 114 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 151 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 114 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 114 + OFFSET_X, 1, 52.6, 172.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 52.6, 172.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 123.8, 142.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 123.8, 142.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 79.1, 194.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 79.1, 194.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 168, 180.7 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 168, 180.7 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 84.7, 208.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 84.7, 208.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 65, 203.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 65, 203.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 74.1, 225.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 74.1, 225.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 86.7, 256.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 86.7, 256.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 103.5, 297.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 103.5, 297.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 125.2, 350 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 125.2, 350 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 152.1, 415.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 152.1, 415.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 185.1, 496.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 185.1, 496.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 224.6, 592.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 224.6, 592.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 271.3, 707 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 271.3, 707 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 325.8, 840 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 325.8, 840 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 388.6, 993.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 388.6, 993.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 460.3, 1168.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 460.3, 1168.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 541.6, 1367.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 541.6, 1367.6 , 0 );

setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 4.65, 4.65 );

setRotateKey( spep_2 + 114 + OFFSET_X, 1, -59 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -59 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -58.9 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -58.9 );

--敵の動き２
setDisp( spep_2 + 162 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 200 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 162 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 162 + OFFSET_X, 1, -1026.2, -559.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -1026.2, -559.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -930, -482.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -930, -482.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -831.6, -404.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -831.6, -404.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -731, -324.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -731, -324.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -628.2, -242.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -628.2, -242.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -523.1, -158.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -523.1, -158.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -415.9, -73.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -415.9, -73.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -306.4, 13.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -306.4, 13.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -300.6, 18.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -300.6, 18.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -294.8, 23.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -294.8, 23.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -289, 27.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -289, 27.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -283.1, 32.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -283.1, 32.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -277.1, 37.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -277.1, 37.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -271.1, 42.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -271.1, 42.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -265, 47.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -265, 47.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -258.8, 52.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -258.8, 52.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -252.6, 57 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -252.6, 57 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -246.3, 62 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -246.3, 62 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -240, 67 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -240, 67 , 0 );

setScaleKey( spep_2 + 162 + OFFSET_X, 1, 7.54, 7.54 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 7.54, 7.54 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 7.17, 7.17 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 7.17, 7.17 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 4.79, 4.79 );

setRotateKey( spep_2 + 162 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 40.1 );

--敵の動き３
setDisp( spep_2 + 298 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 321 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 298 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 298 + OFFSET_X, 1, 39.6, 102.8 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 39.6, 102.8 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 93.6, 249.9 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 93.6, 249.9 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 147.7, 393.3 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 147.7, 393.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 200.2, 532.2 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 200.2, 532.2 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 251.5, 667.6 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 251.5, 667.6 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 301.8, 800.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 301.8, 800.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 351.5, 931 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 351.5, 931 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 400.6, 1060.1 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 400.6, 1060.1 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 449.1, 1187.7 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 449.1, 1187.7 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 497.3, 1314.2 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 497.3, 1314.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 545.1, 1439.8 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 545.1, 1439.8 , 0 );

setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 3.47, 3.47 );

setRotateKey( spep_2 + 298 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -58.2 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -58.2 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -61.3 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -61.3 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -67.7 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -67.7 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -70.8 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -70.8 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -74 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -74 );

--敵の動き４
setDisp( spep_2 + 390 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 456 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 390 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 390 + OFFSET_X, 1, 652.5, 971.1 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 652.5, 971.1 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 628.8, 941.2 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 628.8, 941.2 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 618.4, 915.1 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 618.4, 915.1 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 591.2, 882.7 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 591.2, 882.7 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 581, 857.2 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 581, 857.2 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 554, 825.3 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 554, 825.3 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 544, 800.5 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 544, 800.5 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 517.2, 769.2 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 517.2, 769.2 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 507.5, 744.9 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 507.5, 744.9 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 480.8, 714.2 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 480.8, 714.2 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 471.3, 690.4 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 471.3, 690.4 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 444.9, 660.3 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 444.9, 660.3 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 435.5, 637.2 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 435.5, 637.2 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 409.3, 607.6 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 409.3, 607.6 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 400.2, 585.1 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 400.2, 585.1 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 374.1, 556.1 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 374.1, 556.1 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 365.2, 534.2 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 365.2, 534.2 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 339.4, 505.8 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 339.4, 505.8 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 330.7, 484.4 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 330.7, 484.4 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 305, 456.6 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 305, 456.6 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 296.5, 435.8 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 296.5, 435.8 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 271.1, 408.6 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 271.1, 408.6 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 262.8, 388.4 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 262.8, 388.4 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 237.6, 361.8 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 237.6, 361.8 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 229.4, 342.1 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 229.4, 342.1 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 204.4, 316.1 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 204.4, 316.1 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 196.5, 297 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 196.5, 297 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 171.7, 271.6 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 171.7, 271.6 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 164, 253.1 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 164, 253.1 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 131.1, 200.5 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 131.1, 200.5 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 115.4, 155.5 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 115.4, 155.5 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 82.9, 104.5 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 82.9, 104.5 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 67.7, 61 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 67.7, 61 , 0 );

setScaleKey( spep_2 + 390 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 0.91, 0.91 );

setRotateKey( spep_2 + 390 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, -40 );

--敵の動き５
setDisp( spep_2 + 472 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 572 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 540 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 472 + OFFSET_X, 1, -89.7, -157.7 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -89.7, -157.7 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -87.9, -155.5 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -87.9, -155.5 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -86, -153.2 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -86, -153.2 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -84.2, -151 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -84.2, -151 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -82.4, -148.7 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -82.4, -148.7 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -80.5, -146.5 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -80.5, -146.5 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -78.7, -144.2 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -78.7, -144.2 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -76.9, -142 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -76.9, -142 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -68.8, -139.8 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -68.8, -139.8 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -75.2, -129.3 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -75.2, -129.3 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -65.2, -135.3 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -65.2, -135.3 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -71.6, -124.8 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -71.6, -124.8 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -61.5, -130.8 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -61.5, -130.8 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -67.9, -120.3 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -67.9, -120.3 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -57.8, -126.3 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -57.8, -126.3 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -64.2, -115.8 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -64.2, -115.8 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -54.2, -121.8 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -54.2, -121.8 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -60.6, -111.3 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -60.6, -111.3 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -50.5, -117.3 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, -50.5, -117.3 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, -56.9, -106.8 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -56.9, -106.8 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -46.8, -112.8 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -46.8, -112.8 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -51.2, -110.6 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -51.2, -110.6 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -43.1, -108.4 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -43.1, -108.4 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -49.6, -97.9 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -49.6, -97.9 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -39.5, -103.9 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -39.5, -103.9 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -45.9, -93.4 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -45.9, -93.4 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -35.8, -99.4 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, -35.8, -99.4 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, -42.2, -88.9 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, -42.2, -88.9 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, -32.1, -94.9 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, -32.1, -94.9 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, -38.6, -84.4 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, -38.6, -84.4 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, -28.5, -90.4 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, -28.5, -90.4 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, -34.9, -79.9 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, -34.9, -79.9 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -24.8, -85.9 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -24.8, -85.9 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, -31.2, -75.4 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -31.2, -75.4 , 0 );

setMoveKey( spep_2 + 540 + OFFSET_X, 1, -22.8, -80.4 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, -22.8, -80.4 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, -27.8, -78.3 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, -27.8, -78.3 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, -20.5, -76.2 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -20.5, -76.2 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -27.6, -65.9 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, -27.6, -65.9 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -22, -71.3 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, -22, -71.3 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, -25.4, -61.7 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, -25.4, -61.7 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, -19.8, -67.1 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, -19.8, -67.1 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, -23.1, -57.5 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, -23.1, -57.5 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -17.5, -63 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, -17.5, -63 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -20.9, -53.4 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, -20.9, -53.4 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, -15.3, -58.8 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, -15.3, -58.8 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -18.6, -49.2 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -18.6, -49.2 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -13, -54.6 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -13, -54.6 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -16.4, -45 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, -16.4, -45 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -10.8, -50.4 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, -10.8, -50.4 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, -13.2, -51.2 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -13.2, -51.2 , 0 );

setScaleKey( spep_2 + 472 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 539 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 540 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 1.78, 1.78 );

setRotateKey( spep_2 + 472 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 572 + OFFSET_X, 1, -40.1 );

setBlendColor( spep_2 + 472 + OFFSET_X , 1, 3, 0, 0, 0, 0.0);
setBlendColor( spep_2 + 540 + OFFSET_X , 1, 3, 0.62, 0.55, 0.22, 1.0);
setBlendColor( spep_2 + 571 + OFFSET_X , 1, 3, 0.62, 0.55, 0.22, 1.0);
setBlendColor( spep_2 + 572 + OFFSET_X , 1, 3, 0, 0, 0, 0.0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--悟飯構える
SE006 = playSeVer2( spep_2 + 10, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE006, 65 );
SE007 = playSeVer2( spep_2 + 12, 1189, "",spep_2 + 24, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 12, SE007, 89 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 36; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

-- ** 音 ** --
--悟飯向かっていく
SE008 = playSeVer2( spep_2 + 46, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 46, 1117, "",spep_2 + 134, 0, 14, -1);
SE010 = playSeVer2( spep_2 + 46, 1207, "",spep_2 + 132, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 46, SE010, 63 );
SE011 = playSeVer2( spep_2 + 46, 1264, "",spep_2 + 132, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 46, SE011, 56 );

--悟飯蹴り飛ばす
SE012 = playSeVer2( spep_2 + 100, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 112, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 112, 1183, "",spep_2 + 220, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 112, SE014, 71 );
SE015 = playSeVer2( spep_2 + 112, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE016 = playSeVer2( spep_2 + 168, 1109, "", 0, 0, 0, -1);

--ピッコロ振りかぶる
SE017 = playSeVer2( spep_2 + 210, 1116, "",spep_2 + 248, 0, 18, -1);
SE018 = playSeVer2( spep_2 + 210, 1004, "", 0, 0, 0, -1);

--ピッコロ振りかぶる２
SE019 = playSeVer2( spep_2 + 240, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE019,  67 );
SE020 = playSeVer2( spep_2 + 244, 1116, "",spep_2 + 284, 0, 18, -1);
SE021 = playSeVer2( spep_2 + 252, 1190, "", 0, 6, 0, -1);
setStartTimeMs( SE021,  100 );
SE022 = playSeVer2( spep_2 + 246, 9, "",spep_2 + 294, 8, 16, -1);
setSeVolumeByWorkId( spep_2 + 246, SE022, 80 );

--ピッコロパンチ
SE023 = playSeVer2( spep_2 + 276, 1120, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 276, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 276, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 276, SE025, 71 );

--敵吹き飛ぶ
SE026 = playSeVer2( spep_2 + 302, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 302, SE026, 63 );

--発射前溜め
SE027 = playSeVer2( spep_2 + 340, 49, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 340, 1130, "",spep_2 + 370, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 340, SE028, 58 );

--口から光線出す
SE029 = playSeVer2( spep_2 + 354, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 354, SE029, 158 );
SE030 = playSeVer2( spep_2 + 356, 1027, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 356, 1193, "",spep_2 + 512, 0, 46, 0.6);
setSeVolumeByWorkId( spep_2 + 356, SE031, 89 );
SE032 = playSeVer2( spep_2 + 356, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 356, SE032, 77 );
SE033 = playSeVer2( spep_2 + 356, 1423, "", 0, 0, 0, -1);

--気弾飛んでいく
SE034 = playSeVer2( spep_2 + 392, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 392, SE034, 166 );

--敵ヒット
SE035 = playSeVer2( spep_2 + 456, 1161, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 456, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 456, SE036, 74 );
SE037 = playSeVer2( spep_2 + 456, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 456, SE037, 73 );
SE038 = playSeVer2( spep_2 + 456, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 456, SE038, 81 );
setPitch( spep_2 + 456, SE038, -400 );
setTimeStretch( SE038, 0.73, 30, 4 );

--敵飲み込まれる
SE039 = playSeVer2( spep_2 + 514, 1258, "", 0, 16, 0, -1);
setStartTimeMs( SE039,  167 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 490); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム 598 -4


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭、正面向き構え
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001 冒頭、正面向き構え
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 90, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 18, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 79 );
SE004 = playSeVer2( spep_0 + 24, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 66 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --96

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -28 ); -- 技名表示
setEffScaleKey( spep_c + 0, spname, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_c + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );
 
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
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_2 = spep_c + 94;


-------------------------------------------------
-- ダッシュ、蹴り、パンチ、口ビーム、ラスト
-------------------------------------------------
MAX_FRAME_2 = 598;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002 ダッシュ、蹴り、パンチ、口ビーム、ラスト：手前
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0); -- ef_003 ダッシュ、蹴り、パンチ、口ビーム、ラスト：奥
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_2 + 114 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 151 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 114 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 114 + OFFSET_X, 1, 52.6, 172.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 52.6, 172.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 123.8, 142.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 123.8, 142.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 79.1, 194.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 79.1, 194.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 168, 180.7 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 168, 180.7 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 84.7, 208.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 84.7, 208.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 65, 203.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 65, 203.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 74.1, 225.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 74.1, 225.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 86.7, 256.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 86.7, 256.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 103.5, 297.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 103.5, 297.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 125.2, 350 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 125.2, 350 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 152.1, 415.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 152.1, 415.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 185.1, 496.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 185.1, 496.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 224.6, 592.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 224.6, 592.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 271.3, 707 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 271.3, 707 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 325.8, 840 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 325.8, 840 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 388.6, 993.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 388.6, 993.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 460.3, 1168.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 460.3, 1168.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 541.6, 1367.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 541.6, 1367.6 , 0 );

setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 4.65, 4.65 );

setRotateKey( spep_2 + 114 + OFFSET_X, 1, -59 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -59 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -58.9 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -58.9 );

--敵の動き２
setDisp( spep_2 + 162 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 200 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 162 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 162 + OFFSET_X, 1, -1026.2, -559.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -1026.2, -559.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -930, -482.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -930, -482.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -831.6, -404.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -831.6, -404.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -731, -324.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -731, -324.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -628.2, -242.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -628.2, -242.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -523.1, -158.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -523.1, -158.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -415.9, -73.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -415.9, -73.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -306.4, 13.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -306.4, 13.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -300.6, 18.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -300.6, 18.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -294.8, 23.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -294.8, 23.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -289, 27.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -289, 27.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -283.1, 32.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -283.1, 32.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -277.1, 37.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -277.1, 37.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -271.1, 42.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -271.1, 42.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -265, 47.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -265, 47.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -258.8, 52.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -258.8, 52.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -252.6, 57 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -252.6, 57 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -246.3, 62 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -246.3, 62 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -240, 67 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -240, 67 , 0 );

setScaleKey( spep_2 + 162 + OFFSET_X, 1, 7.54, 7.54 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 7.54, 7.54 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 7.17, 7.17 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 7.17, 7.17 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 4.79, 4.79 );

setRotateKey( spep_2 + 162 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 40.1 );

--敵の動き３
setDisp( spep_2 + 298 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 321 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 298 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 298 + OFFSET_X, 1, 39.6, 102.8 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 39.6, 102.8 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 93.6, 249.9 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 93.6, 249.9 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 147.7, 393.3 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 147.7, 393.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 200.2, 532.2 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 200.2, 532.2 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 251.5, 667.6 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 251.5, 667.6 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 301.8, 800.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 301.8, 800.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 351.5, 931 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 351.5, 931 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 400.6, 1060.1 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 400.6, 1060.1 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 449.1, 1187.7 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 449.1, 1187.7 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 497.3, 1314.2 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 497.3, 1314.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 545.1, 1439.8 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 545.1, 1439.8 , 0 );

setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 3.47, 3.47 );

setRotateKey( spep_2 + 298 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -58.2 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -58.2 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -61.3 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -61.3 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -67.7 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -67.7 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -70.8 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -70.8 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -74 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -74 );

--敵の動き４
setDisp( spep_2 + 390 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 456 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 390 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 390 + OFFSET_X, 1, 652.5, 971.1 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 652.5, 971.1 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 628.8, 941.2 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 628.8, 941.2 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 618.4, 915.1 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 618.4, 915.1 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 591.2, 882.7 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 591.2, 882.7 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 581, 857.2 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 581, 857.2 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 554, 825.3 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 554, 825.3 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 544, 800.5 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 544, 800.5 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 517.2, 769.2 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 517.2, 769.2 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 507.5, 744.9 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 507.5, 744.9 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 480.8, 714.2 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 480.8, 714.2 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 471.3, 690.4 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 471.3, 690.4 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 444.9, 660.3 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 444.9, 660.3 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 435.5, 637.2 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 435.5, 637.2 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 409.3, 607.6 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 409.3, 607.6 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 400.2, 585.1 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 400.2, 585.1 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 374.1, 556.1 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 374.1, 556.1 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 365.2, 534.2 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 365.2, 534.2 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 339.4, 505.8 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 339.4, 505.8 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 330.7, 484.4 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 330.7, 484.4 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 305, 456.6 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 305, 456.6 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 296.5, 435.8 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 296.5, 435.8 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 271.1, 408.6 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 271.1, 408.6 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 262.8, 388.4 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 262.8, 388.4 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 237.6, 361.8 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 237.6, 361.8 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 229.4, 342.1 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 229.4, 342.1 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 204.4, 316.1 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 204.4, 316.1 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 196.5, 297 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 196.5, 297 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 171.7, 271.6 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 171.7, 271.6 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 164, 253.1 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 164, 253.1 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 131.1, 200.5 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 131.1, 200.5 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 115.4, 155.5 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 115.4, 155.5 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 82.9, 104.5 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 82.9, 104.5 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 67.7, 61 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 67.7, 61 , 0 );

setScaleKey( spep_2 + 390 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 0.91, 0.91 );

setRotateKey( spep_2 + 390 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, -40 );

--敵の動き５
setDisp( spep_2 + 472 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 572 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 540 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 472 + OFFSET_X, 1, -89.7, -157.7 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -89.7, -157.7 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -87.9, -155.5 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -87.9, -155.5 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -86, -153.2 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -86, -153.2 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -84.2, -151 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -84.2, -151 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -82.4, -148.7 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -82.4, -148.7 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -80.5, -146.5 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -80.5, -146.5 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -78.7, -144.2 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -78.7, -144.2 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -76.9, -142 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -76.9, -142 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -68.8, -139.8 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -68.8, -139.8 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -75.2, -129.3 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -75.2, -129.3 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -65.2, -135.3 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -65.2, -135.3 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -71.6, -124.8 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -71.6, -124.8 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -61.5, -130.8 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -61.5, -130.8 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -67.9, -120.3 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -67.9, -120.3 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -57.8, -126.3 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -57.8, -126.3 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -64.2, -115.8 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -64.2, -115.8 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -54.2, -121.8 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -54.2, -121.8 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -60.6, -111.3 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -60.6, -111.3 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -50.5, -117.3 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, -50.5, -117.3 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, -56.9, -106.8 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -56.9, -106.8 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -46.8, -112.8 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -46.8, -112.8 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -51.2, -110.6 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -51.2, -110.6 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -43.1, -108.4 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -43.1, -108.4 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -49.6, -97.9 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -49.6, -97.9 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -39.5, -103.9 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -39.5, -103.9 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -45.9, -93.4 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -45.9, -93.4 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -35.8, -99.4 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, -35.8, -99.4 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, -42.2, -88.9 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, -42.2, -88.9 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, -32.1, -94.9 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, -32.1, -94.9 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, -38.6, -84.4 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, -38.6, -84.4 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, -28.5, -90.4 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, -28.5, -90.4 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, -34.9, -79.9 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, -34.9, -79.9 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -24.8, -85.9 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -24.8, -85.9 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, -31.2, -75.4 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -31.2, -75.4 , 0 );

setMoveKey( spep_2 + 540 + OFFSET_X, 1, -22.8, -80.4 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, -22.8, -80.4 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, -27.8, -78.3 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, -27.8, -78.3 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, -20.5, -76.2 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -20.5, -76.2 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -27.6, -65.9 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, -27.6, -65.9 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -22, -71.3 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, -22, -71.3 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, -25.4, -61.7 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, -25.4, -61.7 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, -19.8, -67.1 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, -19.8, -67.1 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, -23.1, -57.5 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, -23.1, -57.5 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -17.5, -63 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, -17.5, -63 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -20.9, -53.4 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, -20.9, -53.4 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, -15.3, -58.8 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, -15.3, -58.8 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -18.6, -49.2 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -18.6, -49.2 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -13, -54.6 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -13, -54.6 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -16.4, -45 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, -16.4, -45 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -10.8, -50.4 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, -10.8, -50.4 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, -13.2, -51.2 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -13.2, -51.2 , 0 );

setScaleKey( spep_2 + 472 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 539 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 540 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 1.78, 1.78 );

setRotateKey( spep_2 + 472 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 572 + OFFSET_X, 1, -40.1 );

setBlendColor( spep_2 + 472 + OFFSET_X , 1, 3, 0, 0, 0, 0.0);
setBlendColor( spep_2 + 540 + OFFSET_X , 1, 3, 0.62, 0.55, 0.22, 1.0);
setBlendColor( spep_2 + 571 + OFFSET_X , 1, 3, 0.62, 0.55, 0.22, 1.0);
setBlendColor( spep_2 + 572 + OFFSET_X , 1, 3, 0, 0, 0, 0.0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--悟飯構える
SE006 = playSeVer2( spep_2 + 10, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE006, 65 );
SE007 = playSeVer2( spep_2 + 12, 1189, "",spep_2 + 24, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 12, SE007, 89 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 36; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

-- ** 音 ** --
--悟飯向かっていく
SE008 = playSeVer2( spep_2 + 46, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 46, 1117, "",spep_2 + 134, 0, 14, -1);
SE010 = playSeVer2( spep_2 + 46, 1207, "",spep_2 + 132, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 46, SE010, 63 );
SE011 = playSeVer2( spep_2 + 46, 1264, "",spep_2 + 132, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 46, SE011, 56 );

--悟飯蹴り飛ばす
SE012 = playSeVer2( spep_2 + 100, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 112, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 112, 1183, "",spep_2 + 220, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 112, SE014, 71 );
SE015 = playSeVer2( spep_2 + 112, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE016 = playSeVer2( spep_2 + 168, 1109, "", 0, 0, 0, -1);

--ピッコロ振りかぶる
SE017 = playSeVer2( spep_2 + 210, 1116, "",spep_2 + 248, 0, 18, -1);
SE018 = playSeVer2( spep_2 + 210, 1004, "", 0, 0, 0, -1);

--ピッコロ振りかぶる２
SE019 = playSeVer2( spep_2 + 240, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE019,  67 );
SE020 = playSeVer2( spep_2 + 244, 1116, "",spep_2 + 284, 0, 18, -1);
SE021 = playSeVer2( spep_2 + 252, 1190, "", 0, 6, 0, -1);
setStartTimeMs( SE021,  100 );
SE022 = playSeVer2( spep_2 + 246, 9, "",spep_2 + 294, 8, 16, -1);
setSeVolumeByWorkId( spep_2 + 246, SE022, 80 );

--ピッコロパンチ
SE023 = playSeVer2( spep_2 + 276, 1120, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 276, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 276, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 276, SE025, 71 );

--敵吹き飛ぶ
SE026 = playSeVer2( spep_2 + 302, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 302, SE026, 63 );

--発射前溜め
SE027 = playSeVer2( spep_2 + 340, 49, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 340, 1130, "",spep_2 + 370, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 340, SE028, 58 );

--口から光線出す
SE029 = playSeVer2( spep_2 + 354, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 354, SE029, 158 );
SE030 = playSeVer2( spep_2 + 356, 1027, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 356, 1193, "",spep_2 + 512, 0, 46, 0.6);
setSeVolumeByWorkId( spep_2 + 356, SE031, 89 );
SE032 = playSeVer2( spep_2 + 356, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 356, SE032, 77 );
SE033 = playSeVer2( spep_2 + 356, 1423, "", 0, 0, 0, -1);

--気弾飛んでいく
SE034 = playSeVer2( spep_2 + 392, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 392, SE034, 166 );

--敵ヒット
SE035 = playSeVer2( spep_2 + 456, 1161, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 456, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 456, SE036, 74 );
SE037 = playSeVer2( spep_2 + 456, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 456, SE037, 73 );
SE038 = playSeVer2( spep_2 + 456, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 456, SE038, 81 );
setPitch( spep_2 + 456, SE038, -400 );
setTimeStretch( SE038, 0.73, 30, 4 );

--敵飲み込まれる
SE039 = playSeVer2( spep_2 + 514, 1258, "", 0, 16, 0, -1);
setStartTimeMs( SE039,  167 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 490); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム 598 -4


end
