--1030660:超サイヤ人孫悟空(ミニ)(DAIMA)_必殺技：如意棒乱舞
--sp_effect_b1_00307
--sp2825

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163546;  --ef_001 前半
SP_02  = 163547;  --ef_002 後半
SP_02b = 163548;  --ef_002b 後半奥

--エフェクト(敵)
SP_02r  = 163549;  --ef_002r 後半(敵側)
SP_02br = 163550;  --ef_002br 後半奥(敵側)


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

ENABLE_AUTO_TIME_STRETCH(0.68);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 前半
-------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 前半(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
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

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 102, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE003 = playSeVer2( spep_0 + 18, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --88f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かってくる
SE005 = playSeVer2( spep_1 + 92, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 92, 1117, "", 0, 0, 0, -1);

-------------------------------------------------
-- 後半
-------------------------------------------------
MAX_FRAME_2 = 760;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 後半(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 後半奥(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 104 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 328 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 104 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 122 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 206 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 244 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 272 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 104 + OFFSET_X, 1, 112.1, -108.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 112.1, -108.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 96.1, -133.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 96.1, -133.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 176, -183.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 176, -183.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 152.6, -201 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 152.6, -201 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 204.6, -231.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 204.6, -231.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 205.2, -235.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 205.2, -235.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 204.3, -234.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 204.3, -234.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 248.9, 88.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 248.9, 88.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 249, 64 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 249, 64 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 249, 55.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 249, 55.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 249, 49 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 249, 49 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 249, 44.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 249, 44.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 249, 40.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 249, 40.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 249, 36.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 249, 36.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 249.1, 33.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 249.1, 33.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 249.1, 31.1 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 249.1, 31.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 249.1, 28.7 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 249.1, 28.7 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 249.1, 26.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 249.1, 26.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 249.1, 24.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 249.1, 24.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 249.1, 23.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 249.1, 23.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 249.1, 21.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 249.1, 21.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 249.1, 20.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 249.1, 20.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 249.1, 18.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 249.1, 18.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 249.1, 17.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 249.1, 17.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 249.1, 16.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 249.1, 16.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 249.1, 15.7 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 249.1, 15.7 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 249.1, 14.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 249.1, 14.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 249.1, 14 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 249.1, 14 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 249.1, 13.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 249.1, 13.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 249.1, 12.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 249.1, 12.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 249.1, 12.1 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 249.1, 12.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 249.1, 11.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 249.1, 11.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 249.1, 11.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 249.1, 11.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 249.1, 10.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 249.1, 10.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 249.1, 10.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 249.1, 10.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 249.1, 9.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 249.1, 9.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 249.1, 9.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 249.1, 9.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 249.1, 9.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 249.1, 9.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 249.1, 9.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 249.1, 9.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 249.1, 9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 249.1, 9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 249.1, 8.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 249.1, 8.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 249.1, 8.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 249.1, 8.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 249.1, 8.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 249.1, 8.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 249.1, 8.5 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 249.1, 8.5 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 249, 8.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 249, 8.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 253.2, 1.8 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 253.2, 1.8 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 250.7, -0.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 250.7, -0.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 245.3, -4.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 245.3, -4.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 242.2, -7.4 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 242.2, -7.4 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 240.4, -8.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 240.4, -8.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 239.7, -9.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 239.7, -9.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 239.2, -9.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 239.2, -9.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 239.1, -10.2 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 239.1, -10.2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 240.2, -10.8 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 240.2, -10.8 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 240.8, -11.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 240.8, -11.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 241.4, -12 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 241.4, -12 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 296.1, -66.9 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 296.1, -66.9 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 263.8, -14.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 263.8, -14.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 305.1, -66.8 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 305.1, -66.8 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 334.4, -17.6 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 334.4, -17.6 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 294.5, -62.8 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 294.5, -62.8 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 324.2, -24.4 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 324.2, -24.4 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 281.8, -52.3 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 281.8, -52.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 282.4, -32.3 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 282.4, -32.3 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 290.9, -42.7 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 290.9, -42.7 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 288.4, -34.7 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 288.4, -34.7 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 288.4, -36.9 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 288.4, -36.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 293.6, -40.5 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 293.6, -40.5 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 292.8, -40.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 292.8, -40.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 292.8, -40.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 292.8, -40.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 293.3, -41.2 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 293.3, -41.2 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 293.3, -42.6 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 293.3, -42.6 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 293.9, -43.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 293.9, -43.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 294.5, -43.9 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 294.5, -43.9 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 295, -44.9 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 295, -44.9 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 295.3, -46.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 295.3, -46.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 295.3, -46.8 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 295.3, -46.8 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 295.5, -48 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 295.5, -48 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 295.3, -49 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 295.3, -49 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 294.8, -49.9 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 294.8, -49.9 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 294.1, -50.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 294.1, -50.6 , 0 );

--サイズ調整+0.2
a = 0.2;

setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.96 + a, 0.96 + a );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.96 + a, 0.96 + a );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.09 + a, 1.09 + a );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.09 + a, 1.09 + a );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.13 + a, 1.13 + a );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.13 + a, 1.13 + a );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.01 + a, 1.01 + a );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.01 + a, 1.01 + a );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.98 + a, 0.98 + a );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.98 + a, 0.98 + a );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.97 + a, 0.97 + a );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.97 + a, 0.97 + a );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.96 + a, 0.96 + a );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.96 + a, 0.96 + a );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.95 + a, 0.95 + a );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.95 + a, 0.95 + a );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.94 + a, 0.94 + a );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.94 + a, 0.94 + a );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.93 + a, 0.93 + a );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.93 + a, 0.93 + a );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.92 + a, 0.92 + a );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.92 + a, 0.92 + a );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.91 + a, 0.91 + a );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.91 + a, 0.91 + a );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.92 + a, 0.92 + a );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.92 + a, 0.92 + a );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.94 + a, 0.94 + a );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.94 + a, 0.94 + a );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.99 + a, 0.99 + a );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.99 + a, 0.99 + a );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.01 + a, 1.01 + a );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 1.01 + a, 1.01 + a );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.03 + a, 1.03 + a );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 1.03 + a, 1.03 + a );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.04 + a, 1.04 + a );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.04 + a, 1.04 + a );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.02 + a, 1.02 + a );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.02 + a, 1.02 + a );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.01 + a, 1.01 + a );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.01 + a, 1.01 + a );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.99 + a, 0.99 + a );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.99 + a, 0.99 + a );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.98 + a, 0.98 + a );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.98 + a, 0.98 + a );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.97 + a, 0.97 + a );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.97 + a, 0.97 + a );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.95 + a, 0.95 + a );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.95 + a, 0.95 + a );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.94 + a, 0.94 + a );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.94 + a, 0.94 + a );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.93 + a, 0.93 + a );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.93 + a, 0.93 + a );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.92 + a, 0.92 + a );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.92 + a, 0.92 + a );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.91 + a, 0.91 + a );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.91 + a, 0.91 + a );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.9 + a, 0.9 + a );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 0.9 + a, 0.9 + a );

setRotateKey( spep_2 + 104 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 17.6 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 17.6 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 18.9 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 18.9 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 14.3 );

--敵の動き2
setDisp( spep_2 + 396 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 658 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 508 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 596 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 642 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 654 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 396 + OFFSET_X, 1, 89.7, 145.4 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 89.7, 145.4 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 89.9, 145.4 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 89.9, 145.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 138.2, 167.4 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 138.2, 167.4 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 141.5, 171.1 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 141.5, 171.1 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 152.9, 186.5 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 152.9, 186.5 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 185.8, 232.8 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 185.8, 232.8 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 317.2, 419.2 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 317.2, 419.2 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 419.5, 563.8 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 419.5, 563.8 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 472.7, 638.9 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 472.7, 638.9 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 509.6, 690.8 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 509.6, 690.8 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 537.9, 730.5 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 537.9, 730.5 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 560.7, 762.8 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 560.7, 762.8 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 579.2, 789.9 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 579.2, 789.9 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 594.5, 813.7 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 594.5, 813.7 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 607.2, 836.9 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 607.2, 836.9 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 617.4, 861.3 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 617.4, 861.3 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 626.9, 874.7 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 626.9, 874.7 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 634.9, 901.6 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 634.9, 901.6 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 641.6, 935.8 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 641.6, 935.8 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 648, 983.6 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 648, 983.6 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 653.7, 1062.1 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 653.7, 1062.1 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 659.1, 1069.8 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 659.1, 1069.8 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 663.6, 1260.8 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 663.6, 1260.8 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 650.2, 1452.2 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 650.2, 1452.2 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 665.1, 1432.9 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 665.1, 1432.9 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 682.6, 1462.1 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 682.6, 1462.1 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 686, 1467 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 686, 1467 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 697.7, 1449 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 697.7, 1449 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 695.9, 1471.9 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 695.9, 1471.9 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 686, 1461.4 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 686, 1461.4 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 691.4, 1472 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 691.4, 1472 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 693.7, 1475.3 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 693.7, 1475.3 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 696.1, 1476.2 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 696.1, 1476.2 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 698.7, 1478.9 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 698.7, 1478.9 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 701.1, 1481.6 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 701.1, 1481.6 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 703.2, 1483.8 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 703.2, 1483.8 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 704.6, 1485.9 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 704.6, 1485.9 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 706.5, 1488.1 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 706.5, 1488.1 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 707.9, 1490 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 707.9, 1490 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 709.1, 1491.9 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 709.1, 1491.9 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 710, 1493.5 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 710, 1493.5 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 710.9, 1494.8 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 710.9, 1494.8 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 711.6, 1496 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 711.6, 1496 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 712, 1497.3 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 712, 1497.3 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 712.4, 1498.3 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 712.4, 1498.3 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 712.7, 1499.4 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 712.7, 1499.4 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 713.1, 1500.1 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 713.1, 1500.1 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 713, 1500.9 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 713, 1500.9 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 712.9, 1501.6 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 712.9, 1501.6 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 712.6, 1502.2 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 712.6, 1502.2 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 712.6, 1502.5 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 712.6, 1502.5 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 712.7, 1502.7 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 712.7, 1502.7 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 712.5, 1502.8 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 712.5, 1502.8 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 712.3, 1503 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 712.3, 1503 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 0.5, 343.1 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 0.5, 343.1 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 0.6, 51.2 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 0.6, 51.2 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 0.5, 51.2 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 0.5, 51.2 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 0.6, -153.8 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 0.6, -153.8 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 0.6, -276.7 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 0.6, -276.7 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 0.6, -349.3 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 0.6, -349.3 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 1.1, -386.7 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 1.1, -386.7 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 1, -386.7 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 1, -386.7 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 0.8, -397.9 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 0.8, -397.9 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 3.3, -398.6 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 3.3, -398.6 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 5.5, -399.7 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 5.5, -399.7 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 5.5, -401.2 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 5.5, -401.2 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 3.1, -401.3 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 3.1, -401.3 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 1.7, -400.6 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 1.7, -400.6 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 0.5, -399.6 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 0.5, -399.6 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, -0.5, -398.3 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, -0.5, -398.3 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, -1.3, -396.5 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -1.3, -396.5 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -1.5, -394.2 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, -1.5, -394.2 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -1.3, -391.9 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, -1.3, -391.9 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, -1.2, -389.7 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, -1.2, -389.7 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, -0.9, -387.5 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, -0.9, -387.5 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -0.8, -385.6 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, -0.8, -385.6 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -0.5, -383.5 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, -0.5, -383.5 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, -0.5, -381.5 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, -0.5, -381.5 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -0.4, -381.5 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -0.4, -381.5 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -0.5, -379.6 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -0.5, -379.6 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -0.7, -378.5 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, -0.7, -378.5 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -0.9, -377.4 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, -0.9, -377.4 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, -1.1, -376.3 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, -1.1, -376.3 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -1, -376.1 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, -1, -376.1 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, -1.3, -375 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, -1.3, -375 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -1.5, -373.8 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, -1.5, -373.8 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -1.6, -372.7 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, -1.6, -372.7 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, -1.8, -371.6 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -1.8, -371.6 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -2, -370.4 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -2, -370.4 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -2, -369.1 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, -2, -369.1 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, -2.1, -367.6 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, -2.1, -367.6 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, -1.9, -366.1 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, -1.9, -366.1 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, -1.9, -366 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, -1.9, -366 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 56.1, -76.1 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 56.1, -76.1 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 54.1, -79.1 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, 54.1, -79.1 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, 51.2, -81.8 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 51.2, -81.8 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 51.3, -81.8 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, 51.3, -81.8 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 48.5, -83.8 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, 48.5, -83.8 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, 47.3, -84.5 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, 47.3, -84.5 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, 47, -84.5 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, 47, -84.5 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, 27.3, -63.3 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, 27.3, -63.3 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 27.4, -63.4 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 27.4, -63.4 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 36.4, -100.4 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 36.4, -100.4 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 22, -74 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 22, -74 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 35, -90.8 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, 35, -90.8 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, 25.7, -84.9 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, 25.7, -84.9 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, 25.5, -84.9 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, 25.5, -84.9 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 25.3, -83.7 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, 25.3, -83.7 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, 24.8, -82.3 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 24.8, -82.3 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 24.2, -81.1 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, 24.2, -81.1 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 23.9, -80 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 23.9, -80 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, 23.7, -79.6 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 23.7, -79.6 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 23.8, -79.6 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 23.8, -79.6 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 24, -80 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 24, -80 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, 24.1, -80.4 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, 24.1, -80.4 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, 106.1, -36 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, 106.1, -36 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, 106.1, -48.8 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 106.1, -48.8 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 106.1, -56 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, 106.1, -56 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 102.5, -294 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 102.5, -294 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 124.6, -562 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, 124.6, -562 , 0 );

setScaleKey( spep_2 + 396 + OFFSET_X, 1, 6.95, 6.95 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 6.95, 6.95 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 6.54, 6.54 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 6.54, 6.54 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 6.29, 6.29 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 6.29, 6.29 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 469 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 473 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 474 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 477 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 481 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 485 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 486 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 2.35 + a, 2.35 + a );
setScaleKey( spep_2 + 595 + OFFSET_X, 1, 2.35 + a, 2.35 + a );
setScaleKey( spep_2 + 596 + OFFSET_X, 1, 5.04 + a, 5.04 + a );
setScaleKey( spep_2 + 597 + OFFSET_X, 1, 5.04 + a, 5.04 + a );
setScaleKey( spep_2 + 598 + OFFSET_X, 1, 4.89 + a, 4.89 + a );
setScaleKey( spep_2 + 599 + OFFSET_X, 1, 4.89 + a, 4.89 + a );
setScaleKey( spep_2 + 600 + OFFSET_X, 1, 4.76 + a, 4.76 + a );
setScaleKey( spep_2 + 601 + OFFSET_X, 1, 4.76 + a, 4.76 + a );
setScaleKey( spep_2 + 602 + OFFSET_X, 1, 4.67 + a, 4.67 + a );
setScaleKey( spep_2 + 603 + OFFSET_X, 1, 4.67 + a, 4.67 + a );
setScaleKey( spep_2 + 604 + OFFSET_X, 1, 4.59 + a, 4.59 + a );
setScaleKey( spep_2 + 605 + OFFSET_X, 1, 4.59 + a, 4.59 + a );
setScaleKey( spep_2 + 606 + OFFSET_X, 1, 4.55 + a, 4.55 + a );
setScaleKey( spep_2 + 607 + OFFSET_X, 1, 4.55 + a, 4.55 + a );
setScaleKey( spep_2 + 608 + OFFSET_X, 1, 4.54 + a, 4.54 + a );
setScaleKey( spep_2 + 609 + OFFSET_X, 1, 4.54 + a, 4.54 + a );
setScaleKey( spep_2 + 610 + OFFSET_X, 1, 4.18 + a, 4.18 + a );
setScaleKey( spep_2 + 611 + OFFSET_X, 1, 4.18 + a, 4.18 + a );
setScaleKey( spep_2 + 612 + OFFSET_X, 1, 4.17 + a, 4.17 + a );
setScaleKey( spep_2 + 613 + OFFSET_X, 1, 4.17 + a, 4.17 + a );
setScaleKey( spep_2 + 614 + OFFSET_X, 1, 4.1 + a, 4.1 + a );
setScaleKey( spep_2 + 615 + OFFSET_X, 1, 4.1 + a, 4.1 + a );
setScaleKey( spep_2 + 616 + OFFSET_X, 1, 3.87 + a, 3.87 + a );
setScaleKey( spep_2 + 617 + OFFSET_X, 1, 3.87 + a, 3.87 + a );
setScaleKey( spep_2 + 618 + OFFSET_X, 1, 3.76 + a, 3.76 + a );
setScaleKey( spep_2 + 619 + OFFSET_X, 1, 3.76 + a, 3.76 + a );
setScaleKey( spep_2 + 620 + OFFSET_X, 1, 3.7 + a, 3.7 + a );
setScaleKey( spep_2 + 621 + OFFSET_X, 1, 3.7 + a, 3.7 + a );
setScaleKey( spep_2 + 622 + OFFSET_X, 1, 3.67 + a, 3.67 + a );
setScaleKey( spep_2 + 623 + OFFSET_X, 1, 3.67 + a, 3.67 + a );
setScaleKey( spep_2 + 624 + OFFSET_X, 1, 3.64 + a, 3.64 + a );
setScaleKey( spep_2 + 625 + OFFSET_X, 1, 3.64 + a, 3.64 + a );
setScaleKey( spep_2 + 626 + OFFSET_X, 1, 3.62 + a, 3.62 + a );
setScaleKey( spep_2 + 627 + OFFSET_X, 1, 3.62 + a, 3.62 + a );
setScaleKey( spep_2 + 628 + OFFSET_X, 1, 3.61 + a, 3.61 + a );
setScaleKey( spep_2 + 629 + OFFSET_X, 1, 3.61 + a, 3.61 + a);
setScaleKey( spep_2 + 630 + OFFSET_X, 1, 3.6 + a, 3.6 + a );
setScaleKey( spep_2 + 631 + OFFSET_X, 1, 3.6 + a, 3.6 + a );
setScaleKey( spep_2 + 632 + OFFSET_X, 1, 3.59 + a, 3.59 + a );
setScaleKey( spep_2 + 633 + OFFSET_X, 1, 3.59 + a, 3.59 + a );
setScaleKey( spep_2 + 634 + OFFSET_X, 1, 3.58 + a, 3.58 + a );
setScaleKey( spep_2 + 637 + OFFSET_X, 1, 3.58 + a, 3.58 + a );
setScaleKey( spep_2 + 638 + OFFSET_X, 1, 3.57 + a, 3.57 + a );
setScaleKey( spep_2 + 641 + OFFSET_X, 1, 3.57 + a, 3.57 + a );
setScaleKey( spep_2 + 642 + OFFSET_X, 1, 2.03 + a, 2.03 + a );
setScaleKey( spep_2 + 658 + OFFSET_X, 1, 2.03 + a, 2.03 + a );

setRotateKey( spep_2 + 396 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_2 + 409 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 411 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_2 + 413 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_2 + 414 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_2 + 415 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_2 + 416 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 417 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, -25.9 );
setRotateKey( spep_2 + 419 + OFFSET_X, 1, -25.9 );
setRotateKey( spep_2 + 420 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_2 + 421 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_2 + 422 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_2 + 423 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_2 + 425 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_2 + 427 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_2 + 428 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 429 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 431 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, -23.7 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, -23.7 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, -23.5 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, -23.5 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_2 + 439 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 459 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 463 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_2 + 469 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_2 + 470 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 477 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 478 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 493 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 507 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 508 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 595 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 596 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_2 + 597 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_2 + 598 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_2 + 605 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_2 + 606 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 609 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 610 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 615 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 616 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 641 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 642 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 645 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 646 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 649 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_2 + 653 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_2 + 654 + OFFSET_X, 1, 79.4 );
setRotateKey( spep_2 + 655 + OFFSET_X, 1, 79.4 );
setRotateKey( spep_2 + 656 + OFFSET_X, 1, 88.6 );
setRotateKey( spep_2 + 658 + OFFSET_X, 1, 88.6 );

-- ** 音 ** --
--上昇する
SE007 = playSeVer2( spep_2 + 33, 1035, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 46, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE008, 65 );

--降りてくる
SE009 = playSeVer2( spep_2 + 76, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE009, 136 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 90; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_00X, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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
--如意棒で叩く
SE011 = playSeVer2( spep_2 + 82, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE011, 200 );
SE012 = playSeVer2( spep_2 + 90, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 90, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE013, 72 );

--後ろにひるがえる
SE014 = playSeVer2( spep_2 + 114, 1117, "",spep_2 + 218, 0, 38, -1);
SE015 = playSeVer2( spep_2 + 114, 63, "",spep_2 + 182, 0, 20, -1);

--風圧
SE010 = playSeVer2( spep_2 + 146, 1427, "", 0, 8, 0, -1);
setStartTimeMs( SE010,  1100 );

--着地
SE016 = playSeVer2( spep_2 + 152, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 152, SE016, 188 );
SE017 = playSeVer2( spep_2 + 156, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE017, 302 );

--如意棒まわす
SE018 = playSeVer2( spep_2 + 226, 1151, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 226, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 226, SE019, 76 );
SE020 = playSeVer2( spep_2 + 234, 1151, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 234, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 234, SE021, 76 );

--如意棒で叩く２
SE022 = playSeVer2( spep_2 + 252, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 260, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE023, 76 );
SE024 = playSeVer2( spep_2 + 260, 1187, "", 0, 0, 0, -1);

--構える
SE025 = playSeVer2( spep_2 + 324, 1179, "",spep_2 + 414, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 324, SE025, 54 );
SE026 = playSeVer2( spep_2 + 326, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 326, SE026, 148 );
SE027 = playSeVer2( spep_2 + 326, 1233, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 330, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 330, SE028, 150 );

--つく
SE029 = playSeVer2( spep_2 + 358, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 358, SE029, 82 );
SE030 = playSeVer2( spep_2 + 358, 9, "",spep_2 + 422, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 358, SE030, 72 );
SE031 = playSeVer2( spep_2 + 358, 1116, "",spep_2 + 420, 0, 20, -1);
SE032 = playSeVer2( spep_2 + 372, 1003, "", 0, 0, 0, -1);

--如意棒ヒット
SE033 = playSeVer2( spep_2 + 388, 1258, "",spep_2 + 554, 0, 116, -1);
setSeVolumeByWorkId( spep_2 + 388, SE033, 63 );
SE034 = playSeVer2( spep_2 + 394, 1153, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 394, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 394, SE035, 85 );

--敵吹き飛ぶ
SE036 = playSeVer2( spep_2 + 412, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 412, SE036, 75 );

--環境音
SE037 = playSeVer2( spep_2 + 476, 1278, "",spep_2 + 644, 38, 60, -1);
setSeVolumeByWorkId( spep_2 + 476, SE037, 43 );
setStartTimeMs( SE037,  767 );

--地面突く
SE038 = playSeVer2( spep_2 + 466, 1190, "",spep_2 + 510, 0, 22, -1);
SE039 = playSeVer2( spep_2 + 466, 413, "",spep_2 + 500, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 466, SE039, 78 );
setPitch( spep_2 + 466, SE039, -500 );
setTimeStretch( SE039, 0.67, 30, 4 );
SE040 = playSeVer2( spep_2 + 466, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE040, 132 );

--飛び上がる
SE041 = playSeVer2( spep_2 + 496, 1117, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 508, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 508, SE042, 65 );
SE043 = playSeVer2( spep_2 + 508, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 508, SE043, 84 );

--叩きつける
SE044 = playSeVer2( spep_2 + 584, 1004, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 602, 1120, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 602, 1187, "", 0, 0, 0, -1);

--爆発
SE047 = playSeVer2( spep_2 + 646, 1159, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 666, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 654); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2 ); -- 終了フレーム  760f -2


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 前半
-------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 前半(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

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

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 102, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE003 = playSeVer2( spep_0 + 18, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --88f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かってくる
SE005 = playSeVer2( spep_1 - 92, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 - 92, 1117, "", 0, 0, 0, -1);

-------------------------------------------------
-- 後半
-------------------------------------------------
MAX_FRAME_2 = 760;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 後半(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 後半奥(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 104 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 328 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 104 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 122 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 206 + OFFSET_X, 1, 17 );
changeAnime( spep_2 + 244 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 272 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 104 + OFFSET_X, 1, 112.1, -108.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 112.1, -108.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 96.1, -133.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 96.1, -133.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 176, -183.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 176, -183.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 152.6, -201 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 152.6, -201 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 204.6, -231.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 204.6, -231.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 205.2, -235.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 205.2, -235.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 204.3, -234.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 204.3, -234.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -248.9, 88.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -248.9, 88.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -249, 64 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -249, 64 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -249, 55.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -249, 55.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -249, 49 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -249, 49 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -249, 44.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -249, 44.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -249, 40.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -249, 40.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -249, 36.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -249, 36.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -249.1, 33.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -249.1, 33.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -249.1, 31.1 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -249.1, 31.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -249.1, 28.7 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -249.1, 28.7 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -249.1, 26.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -249.1, 26.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -249.1, 24.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -249.1, 24.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -249.1, 23.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -249.1, 23.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -249.1, 21.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -249.1, 21.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -249.1, 20.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -249.1, 20.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -249.1, 18.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -249.1, 18.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -249.1, 17.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -249.1, 17.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -249.1, 16.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -249.1, 16.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -249.1, 15.7 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -249.1, 15.7 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -249.1, 14.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -249.1, 14.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -249.1, 14 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -249.1, 14 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -249.1, 13.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -249.1, 13.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -249.1, 12.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -249.1, 12.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -249.1, 12.1 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -249.1, 12.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -249.1, 11.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -249.1, 11.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -249.1, 11.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -249.1, 11.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -249.1, 10.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -249.1, 10.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -249.1, 10.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -249.1, 10.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -249.1, 9.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -249.1, 9.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -249.1, 9.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -249.1, 9.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -249.1, 9.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -249.1, 9.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -249.1, 9.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -249.1, 9.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -249.1, 9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -249.1, 9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -249.1, 8.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -249.1, 8.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -249.1, 8.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -249.1, 8.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -249.1, 8.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -249.1, 8.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -249.1, 8.5 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -249.1, 8.5 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -249, 8.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -249, 8.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -253.2, 1.8 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -253.2, 1.8 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -250.7, -0.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -250.7, -0.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -245.3, -4.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -245.3, -4.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -242.2, -7.4 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -242.2, -7.4 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -240.4, -8.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -240.4, -8.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -239.7, -9.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -239.7, -9.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -239.2, -9.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -239.2, -9.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -239.1, -10.2 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -239.1, -10.2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -240.2, -10.8 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -240.2, -10.8 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -240.8, -11.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -240.8, -11.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -241.4, -12 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -241.4, -12 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -296.1, -66.9 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -296.1, -66.9 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -263.8, -14.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -263.8, -14.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -305.1, -66.8 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -305.1, -66.8 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -334.4, -17.6 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -334.4, -17.6 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -294.5, -62.8 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -294.5, -62.8 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -324.2, -24.4 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -324.2, -24.4 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -281.8, -52.3 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -281.8, -52.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -282.4, -32.3 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -282.4, -32.3 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -290.9, -42.7 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -290.9, -42.7 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -288.4, -34.7 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -288.4, -34.7 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -288.4, -36.9 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -288.4, -36.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -293.6, -40.5 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -293.6, -40.5 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -292.8, -40.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -292.8, -40.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -292.8, -40.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -292.8, -40.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -293.3, -41.2 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -293.3, -41.2 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -293.3, -42.6 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -293.3, -42.6 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -293.9, -43.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -293.9, -43.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -294.5, -43.9 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -294.5, -43.9 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -295, -44.9 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -295, -44.9 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -295.3, -46.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -295.3, -46.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -295.3, -46.8 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -295.3, -46.8 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -295.5, -48 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -295.5, -48 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -295.3, -49 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -295.3, -49 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -294.8, -49.9 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -294.8, -49.9 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -294.1, -50.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -294.1, -50.6 , 0 );

--サイズ調整+0.2
a = 0.2;

setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.96 + a, 0.96 + a );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.96 + a, 0.96 + a );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.09 + a, 1.09 + a );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.09 + a, 1.09 + a );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.13 + a, 1.13 + a );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.13 + a, 1.13 + a );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.01 + a, 1.01 + a );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.01 + a, 1.01 + a );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.98 + a, 0.98 + a );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.98 + a, 0.98 + a );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.97 + a, 0.97 + a );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.97 + a, 0.97 + a );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.96 + a, 0.96 + a );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.96 + a, 0.96 + a );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.95 + a, 0.95 + a );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.95 + a, 0.95 + a );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.94 + a, 0.94 + a );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.94 + a, 0.94 + a );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.93 + a, 0.93 + a );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.93 + a, 0.93 + a );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.92 + a, 0.92 + a );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.92 + a, 0.92 + a );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.91 + a, 0.91 + a );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.91 + a, 0.91 + a );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.92 + a, 0.92 + a );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.92 + a, 0.92 + a );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.94 + a, 0.94 + a );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.94 + a, 0.94 + a );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.99 + a, 0.99 + a );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.99 + a, 0.99 + a );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.01 + a, 1.01 + a );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 1.01 + a, 1.01 + a );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.03 + a, 1.03 + a );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 1.03 + a, 1.03 + a );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.04 + a, 1.04 + a );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.04 + a, 1.04 + a );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.02 + a, 1.02 + a );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.02 + a, 1.02 + a );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.01 + a, 1.01 + a );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.01 + a, 1.01 + a );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.99 + a, 0.99 + a );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.99 + a, 0.99 + a );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.98 + a, 0.98 + a );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.98 + a, 0.98 + a );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.97 + a, 0.97 + a );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.97 + a, 0.97 + a );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.95 + a, 0.95 + a );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.95 + a, 0.95 + a );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.94 + a, 0.94 + a );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.94 + a, 0.94 + a );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.93 + a, 0.93 + a );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.93 + a, 0.93 + a );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.92 + a, 0.92 + a );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.92 + a, 0.92 + a );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.91 + a, 0.91 + a );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.91 + a, 0.91 + a );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.9 + a, 0.9 + a );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 0.9 + a, 0.9 + a );

setRotateKey( spep_2 + 104 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -18.5 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -18.5 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -14.3 );

--敵の動き2
setDisp( spep_2 + 396 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 658 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 508 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 596 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 642 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 654 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 396 + OFFSET_X, 1, -89.7, 145.4 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -89.7, 145.4 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -89.9, 145.4 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -89.9, 145.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -138.2, 167.4 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -138.2, 167.4 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -141.5, 171.1 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -141.5, 171.1 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -152.9, 186.5 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -152.9, 186.5 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -185.8, 232.8 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -185.8, 232.8 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -317.2, 419.2 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -317.2, 419.2 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -419.5, 563.8 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -419.5, 563.8 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -472.7, 638.9 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -472.7, 638.9 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -509.6, 690.8 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -509.6, 690.8 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -537.9, 730.5 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -537.9, 730.5 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -560.7, 762.8 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -560.7, 762.8 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -579.2, 789.9 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -579.2, 789.9 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -594.5, 813.7 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -594.5, 813.7 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -607.2, 836.9 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -607.2, 836.9 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -617.4, 861.3 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -617.4, 861.3 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -626.9, 874.7 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -626.9, 874.7 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -634.9, 901.6 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -634.9, 901.6 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -641.6, 935.8 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -641.6, 935.8 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -648, 983.6 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -648, 983.6 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -653.7, 1062.1 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -653.7, 1062.1 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -659.1, 1069.8 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -659.1, 1069.8 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -663.6, 1260.8 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -663.6, 1260.8 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -650.2, 1452.2 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -650.2, 1452.2 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -665.1, 1432.9 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -665.1, 1432.9 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -682.6, 1462.1 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -682.6, 1462.1 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -686, 1467 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -686, 1467 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -697.7, 1449 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -697.7, 1449 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -695.9, 1471.9 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -695.9, 1471.9 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -686, 1461.4 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -686, 1461.4 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -691.4, 1472 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -691.4, 1472 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -693.7, 1475.3 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -693.7, 1475.3 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -696.1, 1476.2 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -696.1, 1476.2 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -698.7, 1478.9 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -698.7, 1478.9 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -701.1, 1481.6 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -701.1, 1481.6 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -703.2, 1483.8 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -703.2, 1483.8 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -704.6, 1485.9 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -704.6, 1485.9 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -706.5, 1488.1 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -706.5, 1488.1 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -707.9, 1490 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -707.9, 1490 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -709.1, 1491.9 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -709.1, 1491.9 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -710, 1493.5 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -710, 1493.5 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -710.9, 1494.8 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -710.9, 1494.8 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -711.6, 1496 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -711.6, 1496 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -712, 1497.3 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -712, 1497.3 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -712.4, 1498.3 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -712.4, 1498.3 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -712.7, 1499.4 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -712.7, 1499.4 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -713.1, 1500.1 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -713.1, 1500.1 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -713, 1500.9 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -713, 1500.9 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -712.9, 1501.6 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -712.9, 1501.6 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -712.6, 1502.2 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -712.6, 1502.2 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -712.6, 1502.5 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -712.6, 1502.5 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -712.7, 1502.7 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -712.7, 1502.7 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -712.5, 1502.8 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -712.5, 1502.8 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -712.3, 1503 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -712.3, 1503 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -0.5, 343.1 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, -0.5, 343.1 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, -0.6, 51.2 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -0.6, 51.2 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -0.5, 51.2 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -0.5, 51.2 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -0.6, -153.8 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -0.6, -153.8 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -0.6, -276.7 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -0.6, -276.7 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -0.6, -349.3 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -0.6, -349.3 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -1.1, -386.7 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -1.1, -386.7 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -1, -386.7 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -1, -386.7 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -0.8, -397.9 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, -0.8, -397.9 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, -3.3, -398.6 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, -3.3, -398.6 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, -5.5, -399.7 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, -5.5, -399.7 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, -5.5, -401.2 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, -5.5, -401.2 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, -3.1, -401.3 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, -3.1, -401.3 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -1.7, -400.6 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -1.7, -400.6 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, -0.5, -399.6 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -0.5, -399.6 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 0.5, -398.3 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 0.5, -398.3 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 1.3, -396.5 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 1.3, -396.5 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 1.5, -394.2 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 1.5, -394.2 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 1.3, -391.9 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 1.3, -391.9 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 1.2, -389.7 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 1.2, -389.7 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 0.9, -387.5 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 0.9, -387.5 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 0.8, -385.6 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 0.8, -385.6 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 0.5, -383.5 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 0.5, -383.5 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 0.5, -381.5 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 0.5, -381.5 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 0.4, -381.5 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 0.4, -381.5 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 0.5, -379.6 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 0.5, -379.6 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 0.7, -378.5 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 0.7, -378.5 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 0.9, -377.4 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 0.9, -377.4 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 1.1, -376.3 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 1.1, -376.3 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 1, -376.1 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 1, -376.1 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 1.3, -375 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 1.3, -375 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 1.5, -373.8 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 1.5, -373.8 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 1.6, -372.7 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 1.6, -372.7 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 1.8, -371.6 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 1.8, -371.6 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 2, -370.4 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 2, -370.4 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 2, -369.1 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, 2, -369.1 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 2.1, -367.6 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 2.1, -367.6 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 1.9, -366.1 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 1.9, -366.1 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 1.9, -366 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, 1.9, -366 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, -56.1, -76.1 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, -56.1, -76.1 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, -54.1, -79.1 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, -54.1, -79.1 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, -51.2, -81.8 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, -51.2, -81.8 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, -51.3, -81.8 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, -51.3, -81.8 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, -48.5, -83.8 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, -48.5, -83.8 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, -47.3, -84.5 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, -47.3, -84.5 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, -47, -84.5 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, -47, -84.5 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, -27.3, -63.3 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, -27.3, -63.3 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, -27.4, -63.4 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, -27.4, -63.4 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, -36.4, -100.4 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, -36.4, -100.4 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, -22, -74 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, -22, -74 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, -35, -90.8 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, -35, -90.8 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, -25.7, -84.9 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, -25.7, -84.9 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, -25.5, -84.9 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, -25.5, -84.9 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, -25.3, -83.7 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, -25.3, -83.7 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, -24.8, -82.3 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, -24.8, -82.3 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, -24.2, -81.1 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, -24.2, -81.1 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, -23.9, -80 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, -23.9, -80 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, -23.7, -79.6 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, -23.7, -79.6 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, -23.8, -79.6 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, -23.8, -79.6 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, -24, -80 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, -24, -80 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, -24.1, -80.4 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, -24.1, -80.4 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, 106.1, -36 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, 106.1, -36 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, 106.1, -48.8 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 106.1, -48.8 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 106.1, -56 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, 106.1, -56 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 102.5, -294 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 102.5, -294 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 124.6, -562 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, 124.6, -562 , 0 );

setScaleKey( spep_2 + 396 + OFFSET_X, 1, 6.95, 6.95 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 6.95, 6.95 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 6.54, 6.54 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 6.54, 6.54 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 6.29, 6.29 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 6.29, 6.29 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 469 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 473 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 474 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 477 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 481 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 485 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 486 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 2.35 + a, 2.35 + a );
setScaleKey( spep_2 + 595 + OFFSET_X, 1, 2.35 + a, 2.35 + a );
setScaleKey( spep_2 + 596 + OFFSET_X, 1, 5.04 + a, 5.04 + a );
setScaleKey( spep_2 + 597 + OFFSET_X, 1, 5.04 + a, 5.04 + a );
setScaleKey( spep_2 + 598 + OFFSET_X, 1, 4.89 + a, 4.89 + a );
setScaleKey( spep_2 + 599 + OFFSET_X, 1, 4.89 + a, 4.89 + a );
setScaleKey( spep_2 + 600 + OFFSET_X, 1, 4.76 + a, 4.76 + a );
setScaleKey( spep_2 + 601 + OFFSET_X, 1, 4.76 + a, 4.76 + a );
setScaleKey( spep_2 + 602 + OFFSET_X, 1, 4.67 + a, 4.67 + a );
setScaleKey( spep_2 + 603 + OFFSET_X, 1, 4.67 + a, 4.67 + a );
setScaleKey( spep_2 + 604 + OFFSET_X, 1, 4.59 + a, 4.59 + a );
setScaleKey( spep_2 + 605 + OFFSET_X, 1, 4.59 + a, 4.59 + a );
setScaleKey( spep_2 + 606 + OFFSET_X, 1, 4.55 + a, 4.55 + a );
setScaleKey( spep_2 + 607 + OFFSET_X, 1, 4.55 + a, 4.55 + a );
setScaleKey( spep_2 + 608 + OFFSET_X, 1, 4.54 + a, 4.54 + a );
setScaleKey( spep_2 + 609 + OFFSET_X, 1, 4.54 + a, 4.54 + a );
setScaleKey( spep_2 + 610 + OFFSET_X, 1, 4.18 + a, 4.18 + a );
setScaleKey( spep_2 + 611 + OFFSET_X, 1, 4.18 + a, 4.18 + a );
setScaleKey( spep_2 + 612 + OFFSET_X, 1, 4.17 + a, 4.17 + a );
setScaleKey( spep_2 + 613 + OFFSET_X, 1, 4.17 + a, 4.17 + a );
setScaleKey( spep_2 + 614 + OFFSET_X, 1, 4.1 + a, 4.1 + a );
setScaleKey( spep_2 + 615 + OFFSET_X, 1, 4.1 + a, 4.1 + a );
setScaleKey( spep_2 + 616 + OFFSET_X, 1, 3.87 + a, 3.87 + a );
setScaleKey( spep_2 + 617 + OFFSET_X, 1, 3.87 + a, 3.87 + a );
setScaleKey( spep_2 + 618 + OFFSET_X, 1, 3.76 + a, 3.76 + a );
setScaleKey( spep_2 + 619 + OFFSET_X, 1, 3.76 + a, 3.76 + a );
setScaleKey( spep_2 + 620 + OFFSET_X, 1, 3.7 + a, 3.7 + a );
setScaleKey( spep_2 + 621 + OFFSET_X, 1, 3.7 + a, 3.7 + a );
setScaleKey( spep_2 + 622 + OFFSET_X, 1, 3.67 + a, 3.67 + a );
setScaleKey( spep_2 + 623 + OFFSET_X, 1, 3.67 + a, 3.67 + a );
setScaleKey( spep_2 + 624 + OFFSET_X, 1, 3.64 + a, 3.64 + a );
setScaleKey( spep_2 + 625 + OFFSET_X, 1, 3.64 + a, 3.64 + a );
setScaleKey( spep_2 + 626 + OFFSET_X, 1, 3.62 + a, 3.62 + a );
setScaleKey( spep_2 + 627 + OFFSET_X, 1, 3.62 + a, 3.62 + a );
setScaleKey( spep_2 + 628 + OFFSET_X, 1, 3.61 + a, 3.61 + a );
setScaleKey( spep_2 + 629 + OFFSET_X, 1, 3.61 + a, 3.61 + a);
setScaleKey( spep_2 + 630 + OFFSET_X, 1, 3.6 + a, 3.6 + a );
setScaleKey( spep_2 + 631 + OFFSET_X, 1, 3.6 + a, 3.6 + a );
setScaleKey( spep_2 + 632 + OFFSET_X, 1, 3.59 + a, 3.59 + a );
setScaleKey( spep_2 + 633 + OFFSET_X, 1, 3.59 + a, 3.59 + a );
setScaleKey( spep_2 + 634 + OFFSET_X, 1, 3.58 + a, 3.58 + a );
setScaleKey( spep_2 + 637 + OFFSET_X, 1, 3.58 + a, 3.58 + a );
setScaleKey( spep_2 + 638 + OFFSET_X, 1, 3.57 + a, 3.57 + a );
setScaleKey( spep_2 + 641 + OFFSET_X, 1, 3.57 + a, 3.57 + a );
setScaleKey( spep_2 + 642 + OFFSET_X, 1, 2.03 + a, 2.03 + a );
setScaleKey( spep_2 + 658 + OFFSET_X, 1, 2.03 + a, 2.03 + a );

setRotateKey( spep_2 + 396 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 409 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 411 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, 29.5 );
setRotateKey( spep_2 + 413 + OFFSET_X, 1, 29.5 );
setRotateKey( spep_2 + 414 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 415 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 416 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 417 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_2 + 419 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_2 + 420 + OFFSET_X, 1, 25.4 );
setRotateKey( spep_2 + 421 + OFFSET_X, 1, 25.4 );
setRotateKey( spep_2 + 422 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_2 + 423 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, 24.6 );
setRotateKey( spep_2 + 425 + OFFSET_X, 1, 24.6 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_2 + 427 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_2 + 428 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 429 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, 23.8 );
setRotateKey( spep_2 + 431 + OFFSET_X, 1, 23.8 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, 23.7 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, 23.7 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, 23.2 );
setRotateKey( spep_2 + 439 + OFFSET_X, 1, 23.2 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, 23.1 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, 23.1 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, 23 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, 23 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_2 + 459 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 463 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 469 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 470 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 477 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 478 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 493 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 507 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 508 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 595 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 596 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_2 + 597 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_2 + 598 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_2 + 605 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_2 + 606 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 609 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 610 + OFFSET_X, 1, -28.7 );
setRotateKey( spep_2 + 615 + OFFSET_X, 1, -28.7 );
setRotateKey( spep_2 + 616 + OFFSET_X, 1, -28.6 );
setRotateKey( spep_2 + 641 + OFFSET_X, 1, -28.6 );
setRotateKey( spep_2 + 642 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 645 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 646 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 649 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_2 + 653 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_2 + 654 + OFFSET_X, 1, 79.4 );
setRotateKey( spep_2 + 655 + OFFSET_X, 1, 79.4 );
setRotateKey( spep_2 + 656 + OFFSET_X, 1, 88.6 );
setRotateKey( spep_2 + 658 + OFFSET_X, 1, 88.6 );

-- ** 音 ** --
--上昇する
SE007 = playSeVer2( spep_2 + 33, 1035, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 46, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE008, 65 );

--降りてくる
SE009 = playSeVer2( spep_2 + 76, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE009, 136 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 90; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_00X, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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
--如意棒で叩く
SE011 = playSeVer2( spep_2 + 82, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE011, 200 );
SE012 = playSeVer2( spep_2 + 90, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 90, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE013, 72 );

--後ろにひるがえる
SE014 = playSeVer2( spep_2 + 114, 1117, "",spep_2 + 218, 0, 38, -1);
SE015 = playSeVer2( spep_2 + 114, 63, "",spep_2 + 182, 0, 20, -1);

--風圧
SE010 = playSeVer2( spep_2 + 146, 1427, "", 0, 8, 0, -1);
setStartTimeMs( SE010,  1100 );

--着地
SE016 = playSeVer2( spep_2 + 152, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 152, SE016, 188 );
SE017 = playSeVer2( spep_2 + 156, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE017, 302 );

--如意棒まわす
SE018 = playSeVer2( spep_2 + 226, 1151, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 226, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 226, SE019, 76 );
SE020 = playSeVer2( spep_2 + 234, 1151, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 234, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 234, SE021, 76 );

--如意棒で叩く２
SE022 = playSeVer2( spep_2 + 252, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 260, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE023, 76 );
SE024 = playSeVer2( spep_2 + 260, 1187, "", 0, 0, 0, -1);

--構える
SE025 = playSeVer2( spep_2 + 324, 1179, "",spep_2 + 414, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 324, SE025, 54 );
SE026 = playSeVer2( spep_2 + 326, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 326, SE026, 148 );
SE027 = playSeVer2( spep_2 + 326, 1233, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 330, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 330, SE028, 150 );

--つく
SE029 = playSeVer2( spep_2 + 358, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 358, SE029, 82 );
SE030 = playSeVer2( spep_2 + 358, 9, "",spep_2 + 422, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 358, SE030, 72 );
SE031 = playSeVer2( spep_2 + 358, 1116, "",spep_2 + 420, 0, 20, -1);
SE032 = playSeVer2( spep_2 + 372, 1003, "", 0, 0, 0, -1);

--如意棒ヒット
SE033 = playSeVer2( spep_2 + 388, 1258, "",spep_2 + 554, 0, 116, -1);
setSeVolumeByWorkId( spep_2 + 388, SE033, 63 );
SE034 = playSeVer2( spep_2 + 394, 1153, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 394, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 394, SE035, 85 );

--敵吹き飛ぶ
SE036 = playSeVer2( spep_2 + 412, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 412, SE036, 75 );

--環境音
SE037 = playSeVer2( spep_2 + 476, 1278, "",spep_2 + 644, 38, 60, -1);
setSeVolumeByWorkId( spep_2 + 476, SE037, 43 );
setStartTimeMs( SE037,  767 );

--地面突く
SE038 = playSeVer2( spep_2 + 466, 1190, "",spep_2 + 510, 0, 22, -1);
SE039 = playSeVer2( spep_2 + 466, 413, "",spep_2 + 500, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 466, SE039, 78 );
setPitch( spep_2 + 466, SE039, -500 );
setTimeStretch( SE039, 0.67, 30, 4 );
SE040 = playSeVer2( spep_2 + 466, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE040, 132 );

--飛び上がる
SE041 = playSeVer2( spep_2 + 496, 1117, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 508, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 508, SE042, 65 );
SE043 = playSeVer2( spep_2 + 508, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 508, SE043, 84 );

--叩きつける
SE044 = playSeVer2( spep_2 + 584, 1004, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 602, 1120, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 602, 1187, "", 0, 0, 0, -1);

--爆発
SE047 = playSeVer2( spep_2 + 646, 1159, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 666, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 654); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2 ); -- 終了フレーム  760f -2


end
