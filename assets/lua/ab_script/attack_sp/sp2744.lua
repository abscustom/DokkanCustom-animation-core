-- 1029140: UR_亀仙人_必殺技：亀仙流乱舞
-- sp_effect_b1_00286
-- sp2744

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163051;  -- 冒頭 ef_001
SP_002 = 163052;  -- ラッシュ：敵より前 ef_002
SP_002b = 163053;  -- ラッシュ：敵より後ろ ef_002b

-- 敵側
SP_002r = 163054;  -- ラッシュ：敵より前：反転 ef_002r
SP_002br = 163102;  -- ラッシュ：敵より後ろ：反転 ef_002br

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

ENABLE_AUTO_TIME_STRETCH(0.88);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭 ef_001
------------------------------------------------------
MAX_FRAME_0 = 218;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 冒頭 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 22;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -145, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -145, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -145, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 248, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--カメラズーム
SE002 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, 0.6);
SE004 = playSeVer2( spep_0 + 20, 8, "", 0, 0, 0, -1);

--腕の動き
SE005 = playSeVer2( spep_0 + 130, 1003, "", 0, 0, 0, -1);

--構える
SE006 = playSeVer2( spep_0 + 176, 1330, "",spep_0 + 232, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 176, SE006, 81 );
SE007 = playSeVer2( spep_0 + 182, 1012, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0 - 2;  -- 218

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
--setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -80 ); -- 第8引数のY軸オフセット値は適宜調整してください。（このコメントはコンフル用説明なので実装時は削除ください）
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

------------------------------------------------------
-- ラッシュ：敵より前 ef_002
------------------------------------------------------
MAX_FRAME_2 = 660;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- ラッシュ：敵より前 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- ラッシュ：敵より後ろ ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 58 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 104 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 58 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 80 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 58 + OFFSET_X, 1, 362.3, -63.8 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 362.3, -63.8 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 467.6, -32.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 467.6, -32.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 478.2, -26 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 478.2, -26 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 480.6, -17.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 480.6, -17.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 433.6, -26.6 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 433.6, -26.6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 379.6, -37.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 379.6, -37.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 522.4, -9.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 522.4, -9.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 447.9, -7.1 , 0 );

setScaleKey( spep_2 + 58 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 6.24, 6.24 );

setRotateKey( spep_2 + 58 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 142 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 196 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 142 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 142 + OFFSET_X, 1, -41.2, -214.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -41.2, -214.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -0.8, -214.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -0.8, -214.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 201.6, -179.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 201.6, -179.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 173.3, -192.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 173.3, -192.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 145.1, -205.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 145.1, -205.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 149.4, -207.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 149.4, -207.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 182.4, -185.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 182.4, -185.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 149.4, -207.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 149.4, -207.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 182.4, -185.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 182.4, -185.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 149.4, -207.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 149.4, -207.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 182.4, -185.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 182.4, -185.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 150.2, -207.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 150.2, -207.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 188.8, -186 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 188.8, -186 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 171.1, -207.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 171.1, -207.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 233.8, -186 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 233.8, -186 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 249.9, -207.8 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 249.9, -207.8 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 323.1, -207.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 323.1, -207.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 425.3, -207.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 425.3, -207.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 561.2, -207.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 561.2, -207.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 735.8, -207.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 735.8, -207.8 , 0 );

setScaleKey( spep_2 + 142 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 4.29, 4.29 );

setRotateKey( spep_2 + 142 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -33 );

--敵の動き3
setDisp( spep_2 + 254 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 298 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 254 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 254 + OFFSET_X, 1, -214, -491.2 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -214, -491.2 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -213.6, -512.8 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -213.6, -512.8 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -230.7, -478.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -230.7, -478.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -181, -526.7 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -181, -526.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -230, -469.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -230, -469.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -100.9, -371.4 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -100.9, -371.4 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -53.1, -197.8 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -53.1, -197.8 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -54.9, -187 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -54.9, -187 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -50.2, -191.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -50.2, -191.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -52.5, -190.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -52.5, -190.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -54.4, -179.2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -54.4, -179.2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -49.7, -184.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -49.7, -184.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -51.9, -182.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -51.9, -182.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -49.3, -179 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -49.3, -179 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -51.5, -177.2 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -51.5, -177.2 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -51.3, -174.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -51.3, -174.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -51.2, -172 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -51.2, -172 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -51, -169.4 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -51, -169.4 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -50.8, -166.8 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -50.8, -166.8 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -50.6, -164.3 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -50.6, -164.3 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -50.4, -161.7 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -50.4, -161.7 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -50.2, -159.1 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -50.2, -159.1 , 0 );

setScaleKey( spep_2 + 254 + OFFSET_X, 1, 6.6, 6.6 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 6.6, 6.6 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 6.52, 6.52 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 6.52, 6.52 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 6.48, 6.48 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 6.48, 6.48 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 6.43, 6.43 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 6.43, 6.43 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 2.47, 2.47 );

setRotateKey( spep_2 + 254 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -11 );

--敵の動き4
setDisp( spep_2 + 396 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 436 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 396 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 406 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 396 + OFFSET_X, 1, -66.2, -203.2 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -66.2, -203.2 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 92.3, -164.5 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 92.3, -164.5 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 250.8, -125.7 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 250.8, -125.7 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 409.4, -87 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 409.4, -87 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 442.7, -44.8 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 442.7, -44.8 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 201.3, -117.8 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 201.3, -117.8 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 275.2, 27.4 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 275.2, 27.4 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 150.7, -41.5 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 150.7, -41.5 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 210.7, -23.5 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 210.7, -23.5 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 207.2, -15.3 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 207.2, -15.3 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 210.4, -22.8 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 210.4, -22.8 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 206.6, -23.6 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 206.6, -23.6 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 207.6, -22.9 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 207.6, -22.9 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 203.8, -23.7 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 203.8, -23.7 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 204.9, -23 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 204.9, -23 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 201.1, -23.7 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 201.1, -23.7 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 202.2, -23 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 202.2, -23 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 198.3, -23.8 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 198.3, -23.8 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 197, -23.8 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 197, -23.8 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 195.6, -23.9 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 195.6, -23.9 , 0 );

setScaleKey( spep_2 + 396 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 8.25, 8.25 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 8.25, 8.25 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 5.14, 5.14 );

setRotateKey( spep_2 + 396 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, -54 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, -54 );

--敵の動き5
setDisp( spep_2 + 506 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 572 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 542 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 506 + OFFSET_X, 1, 76.7, -492.9 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 76.7, -492.9 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 98.3, -444.6 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 98.3, -444.6 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 204.8, -315.1 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 204.8, -315.1 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 32.1, -496.5 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 32.1, -496.5 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 154.4, -237 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 154.4, -237 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 215.5, -157.2 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 215.5, -157.2 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 429.2, 57.9 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 429.2, 57.9 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 556.6, 203.9 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 556.6, 203.9 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 683.9, 349.8 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 683.9, 349.8 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 811.3, 495.8 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 811.3, 495.8 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 938.7, 641.8 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 938.7, 641.8 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 1066, 787.8 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 1066, 787.8 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 1193.4, 933.8 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 1193.4, 933.8 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 206, 198.5 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 206, 198.5 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 251.3, 295.3 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 251.3, 295.3 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 302.2, 382.2 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 302.2, 382.2 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 358.4, 460.1 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 358.4, 460.1 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 419.4, 529.6 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 419.4, 529.6 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 484.9, 591.2 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 484.9, 591.2 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 554.9, 645.1 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 554.9, 645.1 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 629.3, 691.4 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 629.3, 691.4 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 708, 730.3 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 708, 730.3 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 791.2, 761.5 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 791.2, 761.5 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 878.9, 784.9 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 878.9, 784.9 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 971.4, 800.1 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 971.4, 800.1 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 1069, 806.5 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 1069, 806.5 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 1172.2, 803.3 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 1172.2, 803.3 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 1281.6, 789.6 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 1281.6, 789.6 , 0 );

setScaleKey( spep_2 + 506 + OFFSET_X, 1, 10.8, 10.8 );
setScaleKey( spep_2 + 529 + OFFSET_X, 1, 10.8, 10.8 );
setScaleKey( spep_2 + 530 + OFFSET_X, 1, 10.79, 10.79 );
setScaleKey( spep_2 + 541 + OFFSET_X, 1, 10.79, 10.79 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 545 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 547 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 551 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 553 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 554 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 3.26, 3.25 );
setScaleKey( spep_2 + 559 + OFFSET_X, 1, 3.26, 3.25 );
setScaleKey( spep_2 + 560 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 561 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 562 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 563 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 564 + OFFSET_X, 1, 3.67, 3.66 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 3.67, 3.66 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 3.81, 3.8 );
setScaleKey( spep_2 + 567 + OFFSET_X, 1, 3.81, 3.8 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 569 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 570 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 4.08, 4.08 );

setRotateKey( spep_2 + 506 + OFFSET_X, 1, -56 );
setRotateKey( spep_2 + 517 + OFFSET_X, 1, -56 );
setRotateKey( spep_2 + 518 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 523 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 524 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_2 + 525 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_2 + 526 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 527 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 528 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 529 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 530 + OFFSET_X, 1, -27.8 );
setRotateKey( spep_2 + 531 + OFFSET_X, 1, -27.8 );
setRotateKey( spep_2 + 532 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 533 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 534 + OFFSET_X, 1, -23.5 );
setRotateKey( spep_2 + 535 + OFFSET_X, 1, -23.5 );
setRotateKey( spep_2 + 536 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 537 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 538 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 539 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 540 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 541 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 542 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 543 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 544 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_2 + 545 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_2 + 546 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 547 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 548 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_2 + 549 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_2 + 550 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_2 + 551 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_2 + 552 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_2 + 553 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_2 + 554 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 555 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 556 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 557 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 559 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 560 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 561 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 562 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 563 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 564 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_2 + 565 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_2 + 566 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_2 + 567 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_2 + 568 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 569 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 570 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 572 + OFFSET_X, 1, -10 );

-- ** 音 ** --
--走り出す
SE009 = playSeVer2( spep_2 + 10, 44, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 10, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE010, 63 );
SE011 = playSeVer2( spep_2 + 10, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE011, 145 );
SE012 = playSeVer2( spep_2 + 26, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE012, 155 );
SE013 = playSeVer2( spep_2 + 36, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE013, 162 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 8, SE013, 0);
pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--走り出す
SE014 = playSeVer2( spep_2 + 48, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE014, 155 );

--パンチ
SE015 = playSeVer2( spep_2 + 66, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 74, 1009, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 74, 1110, "", 0, 0, 0, -1);

--杖地面つく
SE018 = playSeVer2( spep_2 + 104, 1013, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 104, 413, "",spep_2 + 134, 0, 4, -1);

--キック
SE020 = playSeVer2( spep_2 + 140, 1004, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 150, 1001, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 152, 1187, "",spep_2 + 210, 0, 42, -1);

--振りかぶる
SE023 = playSeVer2( spep_2 + 194, 1116, "",spep_2 + 238, 0, 20, -1);

--杖で殴る
SE024 = playSeVer2( spep_2 + 240, 1004, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 250, 1153, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 250, 1187, "",spep_2 + 300, 0, 30, -1);

--着地
SE027 = playSeVer2( spep_2 + 292, 63, "",spep_2 + 334, 0, 10, -1);
SE028 = playSeVer2( spep_2 + 316, 1106, "", 0, 0, 0, -1);

--走り出す
SE029 = playSeVer2( spep_2 + 316, 1111, "",spep_2 + 336, 0, 6, -1);
SE030 = playSeVer2( spep_2 + 318, 1108, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 328, 1111, "",spep_2 + 348, 0, 4, -1);
SE032 = playSeVer2( spep_2 + 334, 1111, "",spep_2 + 354, 0, 4, -1);

--向かってくる
SE033 = playSeVer2( spep_2 + 344, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 344, SE033, 72 );
SE034 = playSeVer2( spep_2 + 344, 1117, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 344, 44, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 346, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 346, SE036, 65 );

--肘打ち
SE037 = playSeVer2( spep_2 + 388, 1003, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 394, 1153, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 394, 1110, "", 0, 0, 0, -1);

--画面遷移
SE040 = playSeVer2( spep_2 + 434, 1004, "", 0, 0, 0, -1);

--飛んでいく
SE041 = playSeVer2( spep_2 + 458, 1264, "",spep_2 + 560, 0, 46, -1);
SE042 = playSeVer2( spep_2 + 480, 1117, "", 0, 0, 0, -1);

--蹴り飛ばす
SE043 = playSeVer2( spep_2 + 508, 1189, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 514, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE045 = playSeVer2( spep_2 + 542, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 542, SE045, 60 );

--環境音
SE046 = playSeVer2( spep_2 + 542, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 542, SE046, 25 );

--ピース
SE047 = playSeVer2( spep_2 + 620, 1108, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 620, 1111, "",spep_2 + 640, 0, 6, -1);
SE049 = playSeVer2( spep_2 + 620, 1113, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 550 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 660

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭 ef_001
------------------------------------------------------
MAX_FRAME_0 = 218;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 冒頭 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 22;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 248, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--カメラズーム
SE002 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, 0.6);
SE004 = playSeVer2( spep_0 + 20, 8, "", 0, 0, 0, -1);

--腕の動き
SE005 = playSeVer2( spep_0 + 130, 1003, "", 0, 0, 0, -1);

--構える
SE006 = playSeVer2( spep_0 + 176, 1330, "",spep_0 + 232, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 176, SE006, 81 );
SE007 = playSeVer2( spep_0 + 182, 1012, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0 - 2;  -- 218

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -80 ); -- 第8引数のY軸オフセット値は適宜調整してください。（このコメントはコンフル用説明なので実装時は削除ください）
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

------------------------------------------------------
-- ラッシュ：敵より前 ef_002
------------------------------------------------------
MAX_FRAME_2 = 660;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );  -- ラッシュ：敵より前：反転 ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );  -- ラッシュ：敵より後ろ：反転 ef_002br
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 58 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 104 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 58 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 80 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 58 + OFFSET_X, 1, 362.3, -63.8 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 362.3, -63.8 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 467.6, -32.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 467.6, -32.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 478.2, -26 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 478.2, -26 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 480.6, -17.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 480.6, -17.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 433.6, -26.6 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 433.6, -26.6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 379.6, -37.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 379.6, -37.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 522.4, -9.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 522.4, -9.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 447.9, -7.1 , 0 );

setScaleKey( spep_2 + 58 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 6.24, 6.24 );

setRotateKey( spep_2 + 58 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 142 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 196 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 142 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 142 + OFFSET_X, 1, -41.2, -214.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -41.2, -214.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -0.8, -214.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -0.8, -214.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 201.6, -179.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 201.6, -179.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 173.3, -192.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 173.3, -192.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 145.1, -205.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 145.1, -205.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 149.4, -207.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 149.4, -207.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 182.4, -185.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 182.4, -185.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 149.4, -207.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 149.4, -207.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 182.4, -185.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 182.4, -185.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 149.4, -207.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 149.4, -207.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 182.4, -185.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 182.4, -185.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 150.2, -207.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 150.2, -207.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 188.8, -186 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 188.8, -186 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 171.1, -207.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 171.1, -207.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 233.8, -186 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 233.8, -186 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 249.9, -207.8 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 249.9, -207.8 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 323.1, -207.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 323.1, -207.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 425.3, -207.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 425.3, -207.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 561.2, -207.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 561.2, -207.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 735.8, -207.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 735.8, -207.8 , 0 );

setScaleKey( spep_2 + 142 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 4.29, 4.29 );

setRotateKey( spep_2 + 142 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -33 );

--敵の動き3
setDisp( spep_2 + 254 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 298 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 254 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 254 + OFFSET_X, 1, -214, -491.2 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -214, -491.2 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -213.6, -512.8 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -213.6, -512.8 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -230.7, -478.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -230.7, -478.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -181, -526.7 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -181, -526.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -230, -469.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -230, -469.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -100.9, -371.4 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -100.9, -371.4 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -53.1, -197.8 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -53.1, -197.8 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -54.9, -187 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -54.9, -187 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -50.2, -191.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -50.2, -191.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -52.5, -190.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -52.5, -190.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -54.4, -179.2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -54.4, -179.2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -49.7, -184.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -49.7, -184.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -51.9, -182.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -51.9, -182.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -49.3, -179 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -49.3, -179 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -51.5, -177.2 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -51.5, -177.2 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -51.3, -174.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -51.3, -174.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -51.2, -172 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -51.2, -172 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -51, -169.4 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -51, -169.4 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -50.8, -166.8 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -50.8, -166.8 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -50.6, -164.3 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -50.6, -164.3 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -50.4, -161.7 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -50.4, -161.7 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -50.2, -159.1 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -50.2, -159.1 , 0 );

setScaleKey( spep_2 + 254 + OFFSET_X, 1, 6.6, 6.6 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 6.6, 6.6 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 6.52, 6.52 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 6.52, 6.52 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 6.48, 6.48 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 6.48, 6.48 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 6.43, 6.43 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 6.43, 6.43 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 2.47, 2.47 );

setRotateKey( spep_2 + 254 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -11 );

--敵の動き4
setDisp( spep_2 + 396 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 436 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 396 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 406 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 396 + OFFSET_X, 1, -66.2, -203.2 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -66.2, -203.2 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 92.3, -164.5 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 92.3, -164.5 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 250.8, -125.7 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 250.8, -125.7 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 409.4, -87 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 409.4, -87 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 442.7, -44.8 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 442.7, -44.8 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 201.3, -117.8 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 201.3, -117.8 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 275.2, 27.4 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 275.2, 27.4 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 150.7, -41.5 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 150.7, -41.5 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 210.7, -23.5 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 210.7, -23.5 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 207.2, -15.3 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 207.2, -15.3 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 210.4, -22.8 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 210.4, -22.8 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 206.6, -23.6 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 206.6, -23.6 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 207.6, -22.9 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 207.6, -22.9 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 203.8, -23.7 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 203.8, -23.7 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 204.9, -23 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 204.9, -23 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 201.1, -23.7 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 201.1, -23.7 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 202.2, -23 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 202.2, -23 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 198.3, -23.8 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 198.3, -23.8 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 197, -23.8 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 197, -23.8 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 195.6, -23.9 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 195.6, -23.9 , 0 );

setScaleKey( spep_2 + 396 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 8.25, 8.25 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 8.25, 8.25 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 5.14, 5.14 );

setRotateKey( spep_2 + 396 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, -54 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, -54 );

--敵の動き5
setDisp( spep_2 + 506 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 572 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 542 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 506 + OFFSET_X, 1, 76.7, -492.9 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 76.7, -492.9 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 98.3, -444.6 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 98.3, -444.6 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 204.8, -315.1 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 204.8, -315.1 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 32.1, -496.5 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 32.1, -496.5 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 154.4, -237 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 154.4, -237 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 215.5, -157.2 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 215.5, -157.2 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 429.2, 57.9 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 429.2, 57.9 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 556.6, 203.9 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 556.6, 203.9 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 683.9, 349.8 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 683.9, 349.8 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 811.3, 495.8 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 811.3, 495.8 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 938.7, 641.8 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 938.7, 641.8 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 1066, 787.8 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 1066, 787.8 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 1193.4, 933.8 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 1193.4, 933.8 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 206, 198.5 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 206, 198.5 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 251.3, 295.3 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 251.3, 295.3 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 302.2, 382.2 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 302.2, 382.2 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 358.4, 460.1 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 358.4, 460.1 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 419.4, 529.6 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 419.4, 529.6 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 484.9, 591.2 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 484.9, 591.2 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 554.9, 645.1 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 554.9, 645.1 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 629.3, 691.4 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 629.3, 691.4 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 708, 730.3 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 708, 730.3 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 791.2, 761.5 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 791.2, 761.5 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 878.9, 784.9 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 878.9, 784.9 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 971.4, 800.1 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 971.4, 800.1 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 1069, 806.5 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 1069, 806.5 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 1172.2, 803.3 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 1172.2, 803.3 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 1281.6, 789.6 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 1281.6, 789.6 , 0 );

setScaleKey( spep_2 + 506 + OFFSET_X, 1, 10.8, 10.8 );
setScaleKey( spep_2 + 529 + OFFSET_X, 1, 10.8, 10.8 );
setScaleKey( spep_2 + 530 + OFFSET_X, 1, 10.79, 10.79 );
setScaleKey( spep_2 + 541 + OFFSET_X, 1, 10.79, 10.79 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 545 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 547 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 551 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 553 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 554 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 3.26, 3.25 );
setScaleKey( spep_2 + 559 + OFFSET_X, 1, 3.26, 3.25 );
setScaleKey( spep_2 + 560 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 561 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 562 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 563 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 564 + OFFSET_X, 1, 3.67, 3.66 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 3.67, 3.66 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 3.81, 3.8 );
setScaleKey( spep_2 + 567 + OFFSET_X, 1, 3.81, 3.8 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 569 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 570 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 4.08, 4.08 );

setRotateKey( spep_2 + 506 + OFFSET_X, 1, -56 );
setRotateKey( spep_2 + 517 + OFFSET_X, 1, -56 );
setRotateKey( spep_2 + 518 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 523 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 524 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_2 + 525 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_2 + 526 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 527 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 528 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 529 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 530 + OFFSET_X, 1, -27.8 );
setRotateKey( spep_2 + 531 + OFFSET_X, 1, -27.8 );
setRotateKey( spep_2 + 532 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 533 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 534 + OFFSET_X, 1, -23.5 );
setRotateKey( spep_2 + 535 + OFFSET_X, 1, -23.5 );
setRotateKey( spep_2 + 536 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 537 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 538 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 539 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 540 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 541 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 542 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 543 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 544 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_2 + 545 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_2 + 546 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 547 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 548 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_2 + 549 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_2 + 550 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_2 + 551 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_2 + 552 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_2 + 553 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_2 + 554 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 555 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 556 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 557 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 559 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 560 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 561 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 562 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 563 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 564 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_2 + 565 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_2 + 566 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_2 + 567 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_2 + 568 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 569 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 570 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 572 + OFFSET_X, 1, -10 );

-- ** 音 ** --
--走り出す
SE009 = playSeVer2( spep_2 + 10, 44, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 10, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE010, 63 );
SE011 = playSeVer2( spep_2 + 10, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE011, 145 );
SE012 = playSeVer2( spep_2 + 26, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE012, 155 );
SE013 = playSeVer2( spep_2 + 36, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE013, 162 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 8, SE013, 0);
pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--走り出す
SE014 = playSeVer2( spep_2 + 48, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE014, 155 );

--パンチ
SE015 = playSeVer2( spep_2 + 66, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 74, 1009, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 74, 1110, "", 0, 0, 0, -1);

--杖地面つく
SE018 = playSeVer2( spep_2 + 104, 1013, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 104, 413, "",spep_2 + 134, 0, 4, -1);

--キック
SE020 = playSeVer2( spep_2 + 140, 1004, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 150, 1001, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 152, 1187, "",spep_2 + 210, 0, 42, -1);

--振りかぶる
SE023 = playSeVer2( spep_2 + 194, 1116, "",spep_2 + 238, 0, 20, -1);

--杖で殴る
SE024 = playSeVer2( spep_2 + 240, 1004, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 250, 1153, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 250, 1187, "",spep_2 + 300, 0, 30, -1);

--着地
SE027 = playSeVer2( spep_2 + 292, 63, "",spep_2 + 334, 0, 10, -1);
SE028 = playSeVer2( spep_2 + 316, 1106, "", 0, 0, 0, -1);

--走り出す
SE029 = playSeVer2( spep_2 + 316, 1111, "",spep_2 + 336, 0, 6, -1);
SE030 = playSeVer2( spep_2 + 318, 1108, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 328, 1111, "",spep_2 + 348, 0, 4, -1);
SE032 = playSeVer2( spep_2 + 334, 1111, "",spep_2 + 354, 0, 4, -1);

--向かってくる
SE033 = playSeVer2( spep_2 + 344, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 344, SE033, 72 );
SE034 = playSeVer2( spep_2 + 344, 1117, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 344, 44, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 346, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 346, SE036, 65 );

--肘打ち
SE037 = playSeVer2( spep_2 + 388, 1003, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 394, 1153, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 394, 1110, "", 0, 0, 0, -1);

--画面遷移
SE040 = playSeVer2( spep_2 + 434, 1004, "", 0, 0, 0, -1);

--飛んでいく
SE041 = playSeVer2( spep_2 + 458, 1264, "",spep_2 + 560, 0, 46, -1);
SE042 = playSeVer2( spep_2 + 480, 1117, "", 0, 0, 0, -1);

--蹴り飛ばす
SE043 = playSeVer2( spep_2 + 508, 1189, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 514, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE045 = playSeVer2( spep_2 + 542, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 542, SE045, 60 );

--環境音
SE046 = playSeVer2( spep_2 + 542, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 542, SE046, 25 );

--ピース
SE047 = playSeVer2( spep_2 + 620, 1108, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 620, 1111, "",spep_2 + 640, 0, 6, -1);
SE049 = playSeVer2( spep_2 + 620, 1113, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 550 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 660

end
