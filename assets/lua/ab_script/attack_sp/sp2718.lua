-- 1028920: LR_孫悟空(少年期)&クリリン(少年期)&ブルマ(少女期)_必殺技：破竹の快進撃
-- sp_effect_b1_00282
-- sp2718

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162886;  -- 冒頭 ef_001
SP_002 = 162887;  -- 走る殴るジャン拳：前 ef_002
SP_002b = 162889;  -- 走る殴るジャン拳：裏 ef_002b
SP_003 = 162888;  -- 「ガッ」 ef_003

-- 敵側
SP_002r = 162890;  -- 走る殴るジャン拳：前：反転 ef_002r

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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭 ef_001
------------------------------------------------------
MAX_FRAME_0 = 146;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );     -- 冒頭 ef_001
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

-- ** 白フェード ** --
entryFade( spep_0 + 136, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 50;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -70, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -70, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -70, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--二人構える
SE001 = playSeVer2( spep_0 + 16, 1013, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 54, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE002, 170 );
SE004 = playSeVer2( spep_0 + 64, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE004, 78 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0 - 2;  -- 146

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 走る殴るジャン拳：前 ef_002
------------------------------------------------------
MAX_FRAME_2 = 404;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );    -- 走る殴るジャン拳：前 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );   -- 走る殴るジャン拳：裏 ef_002b
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
setDisp( spep_2 + 112 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 234 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 112 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 124 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 186 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 112 + OFFSET_X, 1, -13.8, -13.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -13.8, -13.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 36.3, -11.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 36.3, -11.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 124.5, 22.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 124.5, 22.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 148.6, -33.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 148.6, -33.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 202.9, -1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 202.9, -1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 199.1, 22.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 199.1, 22.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 149.7, -33.1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 149.7, -33.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 185.4, -11.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 185.4, -11.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 185.8, -11.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 185.8, -11.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 186.1, -11.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 186.1, -11.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 186.5, -11.3 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 186.5, -11.3 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 186.9, -11.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 186.9, -11.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 187.3, -11.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 187.3, -11.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 187.6, -11.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 187.6, -11.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 188, -11.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 188, -11.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 188.9, -11.3 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 188.9, -11.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 189.7, -11.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 189.7, -11.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 190.5, -11.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 190.5, -11.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 191.4, -11.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 191.4, -11.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 192.2, -11.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 192.2, -11.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 193.1, -11.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 193.1, -11.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 193.9, -11.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 193.9, -11.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 194.8, -11.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 194.8, -11.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 195.6, -11.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 195.6, -11.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 196.4, -11.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 196.4, -11.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 197.3, -11.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 197.3, -11.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 198.1, -11.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 198.1, -11.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 199, -11.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 199, -11.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 199.8, -11.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 199.8, -11.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 200.7, -11.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 200.7, -11.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 201.5, -11.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 201.5, -11.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 202.4, -11.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 202.4, -11.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -67.4, -98.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -67.4, -98.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -67.5, -93.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -67.5, -93.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -67.7, -88.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -67.7, -88.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -16.7, -43.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -16.7, -43.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -91.5, -76.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -91.5, -76.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -39.8, -96.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -39.8, -96.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -17.8, -53.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -17.8, -53.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -6.5, -45.4 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -6.5, -45.4 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 37.3, -15.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 37.3, -15.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 47.7, -8.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 47.7, -8.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 14.8, -30.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 14.8, -30.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 47.7, -8.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 47.7, -8.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 14.8, -30.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 14.8, -30.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 47.7, -8.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 47.7, -8.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 14.8, -30.1 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 14.8, -30.1 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 47.7, -8.3 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 47.7, -8.3 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 14.8, -30.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 14.8, -30.1 , 0 );

setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 5.37, 5.37 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 5.37, 5.37 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 4.74, 4.73 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 4.74, 4.73 );

setRotateKey( spep_2 + 112 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -40.1 );

-- ** 音 ** --
--二人走ってくる
SE006 = playSeVer2( spep_2 + 8, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 8, SE006, 158 );
SE007 = playSeVer2( spep_2 + 12, 1182, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 12, SE007, 69 );
stopSeIfDoubleSpeed( spep_2 + 12, SE007);
SE008 = playSeVer2( spep_2 + 12, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 12, SE008, 158 );
SE009 = playSeVer2( spep_2 + 14, 1264, "",spep_2 + 206, 0, 92, 0.5);
setSeVolumeByWorkId( spep_2 + 14, SE009, 75 );
SE010 = playSeVer2( spep_2 + 22, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 22, SE010, 158 );
stopSeIfDoubleSpeed( spep_2 + 22, SE010);
SE011 = playSeVer2( spep_2 + 24, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 24, SE011, 158 );
SE012 = playSeVer2( spep_2 + 34, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 34, SE012, 158 );
SE013 = playSeVer2( spep_2 + 34, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 34, SE013, 158 );
stopSeIfDoubleSpeed( spep_2 + 34, SE013);
SE014 = playSeVer2( spep_2 + 46, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 46, SE014, 158 );
SE015 = playSeVer2( spep_2 + 46, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 46, SE015, 158 );
SE016 = playSeVer2( spep_2 + 56, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 56, SE016, 158 );
SE017 = playSeVer2( spep_2 + 60, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 60, SE017, 158 );
stopSeIfDoubleSpeed( spep_2 + 60, SE017);
SE018 = playSeVer2( spep_2 + 68, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 68, SE018, 158 );
SE019 = playSeVer2( spep_2 + 72, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 72, SE019, 158 );
stopSeIfDoubleSpeed( spep_2 + 72, SE019);
SE020 = playSeVer2( spep_2 + 78, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 78, SE020, 158 );
SE021 = playSeVer2( spep_2 + 84, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 84, SE021, 158 );
stopSeIfDoubleSpeed( spep_2 + 84, SE021);

--クリリン突っ込んでいく
SE022 = playSeVer2( spep_2 + 90, 1117, "",spep_2 + 142, 0, 20, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 106;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);

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
--クリリンパンチ
SE023 = playSeVer2( spep_2 + 120, 1009, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 120, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE024, 79 );
SE025 = playSeVer2( spep_2 + 122, 1110, "", 0, 0, 0, -1);

--着地
SE026 = playSeVer2( spep_2 + 158, 1192, "",spep_2 + 176, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 158, SE026, 157 );
SE027 = playSeVer2( spep_2 + 162, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE027, 182 );

--クリリン蹴り上げ
SE028 = playSeVer2( spep_2 + 178, 1003, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 184, 1187, "", 0, 0, 0, -1);

--悟空飛び上がる
SE030 = playSeVer2( spep_2 + 230, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE030, 62 );
SE031 = playSeVer2( spep_2 + 230, 1117, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 242, 44, "", 0, 0, 0, -1);

--グー
SE033 = playSeVer2( spep_2 + 296, 1004, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 312, 1009, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 314, 1110, "", 0, 0, 0, -1);

--チョキ
SE036 = playSeVer2( spep_2 + 344, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 344, SE036, 61 );
SE037 = playSeVer2( spep_2 + 348, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 348, SE037, 76 );
SE038 = playSeVer2( spep_2 + 350, 1110, "", 0, 0, 0, -1);

--パー
SE039 = playSeVer2( spep_2 + 386, 1120, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 388, 1110, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;  -- 404

------------------------------------------------------
-- 「ガッ」 ef_003
------------------------------------------------------
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );
 
-- 背景差し替えがある場合のみ
finish_1b = entryEffect( spep_N + 0, SP_003 , 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_003)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
 
-- ** 爆発 ** --
--[[
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );
 
setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );
 
setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
]]
 
-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );
 
--[[
shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );
]]

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );
 
--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 107 );
 
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
 
-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭 ef_001
------------------------------------------------------
MAX_FRAME_0 = 146;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );     -- 冒頭 ef_001
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

-- ** 白フェード ** --
entryFade( spep_0 + 136, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 50;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -70, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -70, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -70, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--二人構える
SE001 = playSeVer2( spep_0 + 16, 1013, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 54, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE002, 170 );
SE004 = playSeVer2( spep_0 + 64, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE004, 78 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0 - 2;  -- 146

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 走る殴るジャン拳：前 ef_002
------------------------------------------------------
MAX_FRAME_2 = 404;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );    -- 走る殴るジャン拳：前 ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );   -- 走る殴るジャン拳：裏 ef_002b
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
setDisp( spep_2 + 112 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 234 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 112 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 124 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 186 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 112 + OFFSET_X, 1, -13.8, -13.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -13.8, -13.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 36.3, -11.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 36.3, -11.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 124.5, 22.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 124.5, 22.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 148.6, -33.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 148.6, -33.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 202.9, -1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 202.9, -1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 199.1, 22.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 199.1, 22.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 149.7, -33.1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 149.7, -33.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 185.4, -11.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 185.4, -11.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 185.8, -11.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 185.8, -11.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 186.1, -11.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 186.1, -11.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 186.5, -11.3 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 186.5, -11.3 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 186.9, -11.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 186.9, -11.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 187.3, -11.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 187.3, -11.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 187.6, -11.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 187.6, -11.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 188, -11.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 188, -11.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 188.9, -11.3 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 188.9, -11.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 189.7, -11.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 189.7, -11.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 190.5, -11.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 190.5, -11.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 191.4, -11.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 191.4, -11.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 192.2, -11.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 192.2, -11.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 193.1, -11.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 193.1, -11.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 193.9, -11.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 193.9, -11.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 194.8, -11.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 194.8, -11.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 195.6, -11.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 195.6, -11.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 196.4, -11.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 196.4, -11.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 197.3, -11.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 197.3, -11.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 198.1, -11.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 198.1, -11.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 199, -11.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 199, -11.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 199.8, -11.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 199.8, -11.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 200.7, -11.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 200.7, -11.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 201.5, -11.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 201.5, -11.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 202.4, -11.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 202.4, -11.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -67.4, -98.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -67.4, -98.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -67.5, -93.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -67.5, -93.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -67.7, -88.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -67.7, -88.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -16.7, -43.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -16.7, -43.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -91.5, -76.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -91.5, -76.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -39.8, -96.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -39.8, -96.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -17.8, -53.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -17.8, -53.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -6.5, -45.4 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -6.5, -45.4 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 37.3, -15.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 37.3, -15.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 47.7, -8.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 47.7, -8.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 14.8, -30.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 14.8, -30.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 47.7, -8.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 47.7, -8.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 14.8, -30.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 14.8, -30.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 47.7, -8.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 47.7, -8.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 14.8, -30.1 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 14.8, -30.1 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 47.7, -8.3 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 47.7, -8.3 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 14.8, -30.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 14.8, -30.1 , 0 );

setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 5.37, 5.37 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 5.37, 5.37 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 4.74, 4.73 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 4.74, 4.73 );

setRotateKey( spep_2 + 112 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -40.1 );

-- ** 音 ** --
--二人走ってくる
SE006 = playSeVer2( spep_2 + 8, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 8, SE006, 158 );
SE007 = playSeVer2( spep_2 + 12, 1182, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 12, SE007, 69 );
stopSeIfDoubleSpeed( spep_2 + 12, SE007);
SE008 = playSeVer2( spep_2 + 12, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 12, SE008, 158 );
SE009 = playSeVer2( spep_2 + 14, 1264, "",spep_2 + 206, 0, 92, 0.5);
setSeVolumeByWorkId( spep_2 + 14, SE009, 75 );
SE010 = playSeVer2( spep_2 + 22, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 22, SE010, 158 );
stopSeIfDoubleSpeed( spep_2 + 22, SE010);
SE011 = playSeVer2( spep_2 + 24, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 24, SE011, 158 );
SE012 = playSeVer2( spep_2 + 34, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 34, SE012, 158 );
SE013 = playSeVer2( spep_2 + 34, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 34, SE013, 158 );
stopSeIfDoubleSpeed( spep_2 + 34, SE013);
SE014 = playSeVer2( spep_2 + 46, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 46, SE014, 158 );
SE015 = playSeVer2( spep_2 + 46, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 46, SE015, 158 );
SE016 = playSeVer2( spep_2 + 56, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 56, SE016, 158 );
SE017 = playSeVer2( spep_2 + 60, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 60, SE017, 158 );
stopSeIfDoubleSpeed( spep_2 + 60, SE017);
SE018 = playSeVer2( spep_2 + 68, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 68, SE018, 158 );
SE019 = playSeVer2( spep_2 + 72, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 72, SE019, 158 );
stopSeIfDoubleSpeed( spep_2 + 72, SE019);
SE020 = playSeVer2( spep_2 + 78, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 78, SE020, 158 );
SE021 = playSeVer2( spep_2 + 84, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 84, SE021, 158 );
stopSeIfDoubleSpeed( spep_2 + 84, SE021);

--クリリン突っ込んでいく
SE022 = playSeVer2( spep_2 + 90, 1117, "",spep_2 + 142, 0, 20, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 106;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);

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
--クリリンパンチ
SE023 = playSeVer2( spep_2 + 120, 1009, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 120, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE024, 79 );
SE025 = playSeVer2( spep_2 + 122, 1110, "", 0, 0, 0, -1);

--着地
SE026 = playSeVer2( spep_2 + 158, 1192, "",spep_2 + 176, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 158, SE026, 157 );
SE027 = playSeVer2( spep_2 + 162, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE027, 182 );

--クリリン蹴り上げ
SE028 = playSeVer2( spep_2 + 178, 1003, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 184, 1187, "", 0, 0, 0, -1);

--悟空飛び上がる
SE030 = playSeVer2( spep_2 + 230, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE030, 62 );
SE031 = playSeVer2( spep_2 + 230, 1117, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 242, 44, "", 0, 0, 0, -1);

--グー
SE033 = playSeVer2( spep_2 + 296, 1004, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 312, 1009, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 314, 1110, "", 0, 0, 0, -1);

--チョキ
SE036 = playSeVer2( spep_2 + 344, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 344, SE036, 61 );
SE037 = playSeVer2( spep_2 + 348, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 348, SE037, 76 );
SE038 = playSeVer2( spep_2 + 350, 1110, "", 0, 0, 0, -1);

--パー
SE039 = playSeVer2( spep_2 + 386, 1120, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 388, 1110, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;  -- 404

------------------------------------------------------
-- 「ガッ」 ef_003
------------------------------------------------------
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );
 
-- 背景差し替えがある場合のみ
finish_1b = entryEffect( spep_N + 0, SP_003 , 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_003)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, -1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, -1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
 
-- ** 爆発 ** --
--[[
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );
 
setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );
 
setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
]]
 
-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );
 
--[[
shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );
]]

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );
 
--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 107 );
 
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
 
-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

end
