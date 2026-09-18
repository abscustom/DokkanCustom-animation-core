--1029930:UR_暗黒王ドミグラ(時の力解放)_必殺技_ケイオティックギガンテス
--sp_effect_a2_00247
--sp2781

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163314; --登場〜セリフカットイン ef_001
SP_02  = 163315; --気弾ため〜発射(前) ef_002
SP_02b = 163316; --気弾ため〜発射(奥) ef_002b

--エフェクト(敵)
SP_02r  = 163317; --気弾ため〜発射(前) ef_002r
SP_02br = 163318; --気弾ため〜発射(奥) ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場〜セリフカットイン
-------------------------------------------------
MAX_FRAME_0 = 116;

-- ** エフェクト等 ** --
start_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場〜セリフカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
-- ** 音 ** --
--背景音
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 152, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 68 );

--目光る
SE003 = playSeVer2( spep_0 + 6, 1253, "",spep_0 + 42, 0, 16, -1);
SE004 = playSeVer2( spep_0 + 6, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE004, 141 );
SE005 = playSeVer2( spep_0 + 6, 1273, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 10, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE006, 79 );

--ズームアウト
SE007 = playSeVer2( spep_0 + 12, 63, "",spep_0 + 100, 0, 18, -1);
SE008 = playSeVer2( spep_0 + 30, 1072, "", 0, 0, 0, -1);
setTimeStretch( SE008, 1.24, 30, 4 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 116f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);


-- ** 音 ** --
--背景音
SE010 = playSeVer2( spep_1 + 88, 1226, "",spep_2 + 152, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 88, SE010, 71 );


-------------------------------------------------
-- 気弾ため〜発射
-------------------------------------------------
MAX_FRAME_2 = 742;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾ため〜発射(前)(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 0);


finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾ため〜発射(奥)(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 0);

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 116 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 220 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 116 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 178 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 116 + OFFSET_X, 1, 652.8, -692.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 652.8, -692.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 496.1, -605.7 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 496.1, -605.7 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 383.6, -543.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 383.6, -543.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 316.3, -506.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 316.3, -506.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 277.7, -485.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 277.7, -485.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 256.3, -473.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 256.3, -473.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 246, -467.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 246, -467.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 246.8, -466.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 246.8, -466.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 246.8, -466.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 246.8, -466.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 246.8, -466.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 246.8, -466.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 246.8, -466.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 246.8, -466.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 144.1, -107 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 144.1, -107 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 144.4, -107.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 144.4, -107.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 144.8, -107.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 144.8, -107.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 145.1, -108.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 145.1, -108.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 145.5, -108.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 145.5, -108.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 145.8, -108.7 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 145.8, -108.7 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 146.1, -109.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 146.1, -109.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 146.5, -109.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 146.5, -109.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 146.8, -109.7 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 146.8, -109.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 147.2, -110.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 147.2, -110.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 147.5, -110.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 147.5, -110.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 147.9, -110.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 147.9, -110.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 148.2, -111.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 148.2, -111.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 148.5, -111.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 148.5, -111.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 148.9, -111.8 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 148.9, -111.8 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 149.2, -112.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 149.2, -112.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 149.6, -112.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 149.6, -112.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 149.9, -112.8 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 149.9, -112.8 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 150.3, -113.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 150.3, -113.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 150.6, -113.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 150.6, -113.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 150.9, -113.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 150.9, -113.8 , 0 );

setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 3.09, 3.09 );

setRotateKey( spep_2 + 116 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 9.8 );


--敵の動き2
setDisp( spep_2 + 538 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 576 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 538 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 562 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 564 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 538 + OFFSET_X, 1, 144.6, -312.6 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 144.6, -312.6 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 142.8, -320.1 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 142.8, -320.1 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 151, -317.6 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 151, -317.6 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 144.2, -316.2 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 144.2, -316.2 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 150.4, -321.7 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 150.4, -321.7 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 150.6, -315.3 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 150.6, -315.3 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 148.8, -322.8 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 148.8, -322.8 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 157, -320.4 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 157, -320.4 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 150.2, -318.9 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 150.2, -318.9 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 156.4, -324.5 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 156.4, -324.5 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 156.6, -318 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 156.6, -318 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 153.6, -325 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 153.6, -325 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 147.9, -302 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 147.9, -302 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 143.9, -256 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 143.9, -256 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 150.2, -230.8 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 150.2, -230.8 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 150.5, -193.6 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 150.5, -193.6 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 148.8, -170.4 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 148.8, -170.4 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 157.1, -137.2 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 157.1, -137.2 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 150.4, -104.9 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 150.4, -104.9 , 0 );

setScaleKey( spep_2 + 538 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 539 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 540 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 541 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 545 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 547 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 551 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 553 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 554 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 561 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 562 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 563 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 564 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 567 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 569 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 570 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 571 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 573 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 574 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 576 + OFFSET_X, 1, 1.23, 1.23 );

setRotateKey( spep_2 + 538 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 561 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 562 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_2 + 563 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_2 + 564 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 565 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 566 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_2 + 567 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_2 + 568 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 569 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 570 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 571 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 572 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 573 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 574 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 576 + OFFSET_X, 1, 6 );

setBlendColor( spep_2 + 560 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 562 + OFFSET_X, 1, 3, 0.87, 0.87, 0.87, 0.4 );
setBlendColor( spep_2 + 564 + OFFSET_X, 1, 3, 0.89, 0.89, 0.89, 0.55 );
setBlendColor( spep_2 + 568 + OFFSET_X, 1, 3, 0.89, 0.89, 0.85, 0.57 );
setBlendColor( spep_2 + 572 + OFFSET_X, 1, 3, 0.9, 0.9, 0.9, 0.64 );
setBlendColor( spep_2 + 576 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--腕クロス
SE011 = playSeVer2( spep_2 + 28, 1004, "", 0, 0, 0, -1);

--気を溜める
SE012 = playSeVer2( spep_2 + 48, 1043, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 48, 33, "",spep_2 + 166, 0, 16, -1);
SE014 = playSeVer2( spep_2 + 48, 1254, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE014, 61 );
SE015 = playSeVer2( spep_2 + 102, 1056, "", 0, 0, 0, -1);

--気を爆発させる
SE016 = playSeVer2( spep_2 + 132, 40, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 132, 1184, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 132, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE018, 200 );
SE019 = playSeVer2( spep_2 + 132, 1466, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE019, 158 );

--巨大気弾音
SE020 = playSeVer2( spep_2 + 184, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE020, 79 );
SE021 = playSeVer2( spep_2 + 184, 1226, "",spep_2 + 496, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 184, SE021, 68 );
SE022 = playSeVer2( spep_2 + 184, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE022, 56 );
SE023 = playSeVer2( spep_2 + 184, 1396, "",spep_2 + 496, 0, 44, -1);

--画面遷移
SE024 = playSeVer2( spep_2 + 200, 8, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 272, 1232, "", 0, 0, 0, -1);

--目が光る２
SE026 = playSeVer2( spep_2 + 306, 1303, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 306, SE026, 71 );
SE027 = playSeVer2( spep_2 + 306, 1038, "", 0, 0, 0, -1);

--画面遷移
SE028 = playSeVer2( spep_2 + 330, 1072, "", 0, 0, 0, -1);

--巨大気弾音
SE029 = playSeVer2( spep_2 + 392, 1161, "",spep_2 + 500, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 392, SE029, 79 );

--巨大気弾投げる
SE030 = playSeVer2( spep_2 + 430, 1027, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 430, 1193, "",spep_2 + 610, 0, 26, -1);
SE032 = playSeVer2( spep_2 + 430, 1145, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 430, 1215, "",spep_2 + 608, 0, 28, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 488; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
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
--爆発
SE034 = playSeVer2( spep_2 + 580, 1159, "", 0, 0, 0, -1);
SE034_02 = playSeVer2( spep_2 + 560, 1027, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 604, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 616); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 742f


else
------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場〜セリフカットイン
-------------------------------------------------
MAX_FRAME_0 = 116;

-- ** エフェクト等 ** --
start_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場〜セリフカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
-- ** 音 ** --
--背景音
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 152, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 68 );

--目光る
SE003 = playSeVer2( spep_0 + 6, 1253, "",spep_0 + 42, 0, 16, -1);
SE004 = playSeVer2( spep_0 + 6, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE004, 141 );
SE005 = playSeVer2( spep_0 + 6, 1273, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 10, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE006, 79 );

--ズームアウト
SE007 = playSeVer2( spep_0 + 12, 63, "",spep_0 + 100, 0, 18, -1);
SE008 = playSeVer2( spep_0 + 30, 1072, "", 0, 0, 0, -1);
setTimeStretch( SE008, 1.24, 30, 4 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 116f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);


-- ** 音 ** --
--背景音
SE010 = playSeVer2( spep_1 + 88, 1226, "",spep_2 + 152, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 88, SE010, 71 );


-------------------------------------------------
-- 気弾ため〜発射
-------------------------------------------------
MAX_FRAME_2 = 742;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 気弾ため〜発射(前)(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 0);


finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 気弾ため〜発射(奥)(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 0);

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 116 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 220 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 116 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 178 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 116 + OFFSET_X, 1, 652.8, -692.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 652.8, -692.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 496.1, -605.7 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 496.1, -605.7 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 383.6, -543.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 383.6, -543.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 316.3, -506.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 316.3, -506.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 277.7, -485.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 277.7, -485.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 256.3, -473.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 256.3, -473.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 246, -467.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 246, -467.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 246.8, -466.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 246.8, -466.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 246.8, -466.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 246.8, -466.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 246.8, -466.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 246.8, -466.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 246.8, -466.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 246.8, -466.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 245.8, -462.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 244.8, -465.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 246.8, -464.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 243.8, -464.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 144.1, -107 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 144.1, -107 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 144.4, -107.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 144.4, -107.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 144.8, -107.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 144.8, -107.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 145.1, -108.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 145.1, -108.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 145.5, -108.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 145.5, -108.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 145.8, -108.7 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 145.8, -108.7 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 146.1, -109.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 146.1, -109.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 146.5, -109.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 146.5, -109.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 146.8, -109.7 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 146.8, -109.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 147.2, -110.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 147.2, -110.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 147.5, -110.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 147.5, -110.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 147.9, -110.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 147.9, -110.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 148.2, -111.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 148.2, -111.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 148.5, -111.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 148.5, -111.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 148.9, -111.8 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 148.9, -111.8 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 149.2, -112.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 149.2, -112.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 149.6, -112.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 149.6, -112.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 149.9, -112.8 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 149.9, -112.8 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 150.3, -113.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 150.3, -113.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 150.6, -113.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 150.6, -113.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 150.9, -113.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 150.9, -113.8 , 0 );

setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 3.09, 3.09 );

setRotateKey( spep_2 + 116 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 9.8 );


--敵の動き2
setDisp( spep_2 + 538 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 576 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 538 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 562 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 564 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 538 + OFFSET_X, 1, 144.6, -312.6 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 144.6, -312.6 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 142.8, -320.1 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 142.8, -320.1 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 151, -317.6 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 151, -317.6 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 144.2, -316.2 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 144.2, -316.2 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 150.4, -321.7 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 150.4, -321.7 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 150.6, -315.3 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 150.6, -315.3 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 148.8, -322.8 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 148.8, -322.8 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 157, -320.4 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 157, -320.4 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 150.2, -318.9 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 150.2, -318.9 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 156.4, -324.5 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 156.4, -324.5 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 156.6, -318 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 156.6, -318 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 153.6, -325 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 153.6, -325 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 147.9, -302 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 147.9, -302 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 143.9, -256 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 143.9, -256 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 150.2, -230.8 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 150.2, -230.8 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 150.5, -193.6 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 150.5, -193.6 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 148.8, -170.4 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 148.8, -170.4 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 157.1, -137.2 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 157.1, -137.2 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 150.4, -104.9 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 150.4, -104.9 , 0 );

setScaleKey( spep_2 + 538 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 539 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 540 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 541 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 545 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 547 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 551 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 553 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 554 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 561 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 562 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 563 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 564 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 567 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 569 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 570 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 571 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 573 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 574 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 576 + OFFSET_X, 1, 1.23, 1.23 );

setRotateKey( spep_2 + 538 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 561 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 562 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_2 + 563 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_2 + 564 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 565 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 566 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_2 + 567 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_2 + 568 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 569 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 570 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 571 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 572 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 573 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 574 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 576 + OFFSET_X, 1, 6 );

setBlendColor( spep_2 + 560 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 562 + OFFSET_X, 1, 3, 0.87, 0.87, 0.87, 0.4 );
setBlendColor( spep_2 + 564 + OFFSET_X, 1, 3, 0.89, 0.89, 0.89, 0.55 );
setBlendColor( spep_2 + 568 + OFFSET_X, 1, 3, 0.89, 0.89, 0.85, 0.57 );
setBlendColor( spep_2 + 572 + OFFSET_X, 1, 3, 0.9, 0.9, 0.9, 0.64 );
setBlendColor( spep_2 + 576 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--腕クロス
SE011 = playSeVer2( spep_2 + 28, 1004, "", 0, 0, 0, -1);

--気を溜める
SE012 = playSeVer2( spep_2 + 48, 1043, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 48, 33, "",spep_2 + 166, 0, 16, -1);
SE014 = playSeVer2( spep_2 + 48, 1254, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE014, 61 );
SE015 = playSeVer2( spep_2 + 102, 1056, "", 0, 0, 0, -1);

--気を爆発させる
SE016 = playSeVer2( spep_2 + 132, 40, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 132, 1184, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 132, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE018, 200 );
SE019 = playSeVer2( spep_2 + 132, 1466, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE019, 158 );

--巨大気弾音
SE020 = playSeVer2( spep_2 + 184, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE020, 79 );
SE021 = playSeVer2( spep_2 + 184, 1226, "",spep_2 + 496, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 184, SE021, 68 );
SE022 = playSeVer2( spep_2 + 184, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE022, 56 );
SE023 = playSeVer2( spep_2 + 184, 1396, "",spep_2 + 496, 0, 44, -1);

--画面遷移
SE024 = playSeVer2( spep_2 + 200, 8, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 272, 1232, "", 0, 0, 0, -1);

--目が光る２
SE026 = playSeVer2( spep_2 + 306, 1303, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 306, SE026, 71 );
SE027 = playSeVer2( spep_2 + 306, 1038, "", 0, 0, 0, -1);

--画面遷移
SE028 = playSeVer2( spep_2 + 330, 1072, "", 0, 0, 0, -1);

--巨大気弾音
SE029 = playSeVer2( spep_2 + 392, 1161, "",spep_2 + 500, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 392, SE029, 79 );

--巨大気弾投げる
SE030 = playSeVer2( spep_2 + 430, 1027, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 430, 1193, "",spep_2 + 610, 0, 26, -1);
SE032 = playSeVer2( spep_2 + 430, 1145, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 430, 1215, "",spep_2 + 608, 0, 28, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 488; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
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
--爆発
SE034 = playSeVer2( spep_2 + 580, 1159, "", 0, 0, 0, -1);
SE034_02 = playSeVer2( spep_2 + 560, 1027, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 604, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 616); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 742f


end