--1032070:UR_人造人間16号_ユニット必殺技：トリニティデストロイド
--sp_effect_a9_00151
--sp2924

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方側のみ)
SP_01  = 164139; --カード前まで ef_001
SP_02  = 164140; --カード後 前面 ef_002
SP_02b = 164141; --カード後 背面 ef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.78);

adjustAttackerLabel( 0, 205);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始セリフカットイン～カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 136;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- カード前まで(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[
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
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 158, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--カットイン
SE003 = playSeVer2( spep_0 + 80, 1179, "",spep_0 + 156, 0, 16, -1);
SE004 = playSeVer2( spep_0 + 82, 1042, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 86, 12, "",spep_0 + 158, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 86, SE005, 47 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 136f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カードカットイン～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 894;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後 前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カード後 背面(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 134 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 226 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 134 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 144 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 134 + OFFSET_X, 1, 129.7, -48.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 129.7, -48.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 188, -6.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 188, -6.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 188.2, -6.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 188.2, -6.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 188.4, -6.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 188.4, -6.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 188.6, -6.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 188.6, -6.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 188.9, -6.3 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 188.9, -6.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 199.1, 3.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 199.1, 3.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 179.3, -14.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 179.3, -14.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 181.6, -0.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 181.6, -0.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 197.8, -11.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 197.8, -11.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 197, -12.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 197, -12.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 180.3, 1.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 180.3, 1.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 193.5, -2.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 193.5, -2.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 187.7, -8.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 187.7, -8.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 188, -2.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 188, -2.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 194.2, -9.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 194.2, -9.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 191.4, -6.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 191.4, -6.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 191.7, -6.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 191.7, -6.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 191.9, -6.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 191.9, -6.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 192.1, -6.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 192.1, -6.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 192.4, -6.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 192.4, -6.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 192.6, -6.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 192.6, -6.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 192.8, -6.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 192.8, -6.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 193.1, -6.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 193.1, -6.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 193.3, -6.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 193.3, -6.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 193.5, -6.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 193.5, -6.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 193.8, -6.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 193.8, -6.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 194, -6.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 194, -6.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 194.2, -6.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 194.2, -6.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 194.7, -6.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 194.7, -6.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 195.2, -6.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 195.2, -6.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 195.6, -6.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 195.6, -6.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 196.1, -6.3 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 196.1, -6.3 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 196.6, -6.4 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 196.6, -6.4 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 197.1, -6.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 197.1, -6.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 197.5, -6.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 197.5, -6.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 198, -6.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 198, -6.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 430.5, -21.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 430.5, -21.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 611.3, -32.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 611.3, -32.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 740.4, -41.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 740.4, -41.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 817.9, -46.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 817.9, -46.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 843.8, -47.8 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 843.8, -47.8 , 0 );

setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 3.2, 3.2 );

setRotateKey( spep_2 + 134 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 230 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 290 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 230 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 230 + OFFSET_X, 1, -689.8, -3.3 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -689.8, -3.3 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -527.8, -3.3 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -527.8, -3.3 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -365.9, -3.3 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -365.9, -3.3 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -203.9, -3.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -203.9, -3.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -42, -3.3 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -42, -3.3 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -40, -3.3 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -40, -3.3 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -38, -3.3 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -38, -3.3 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -36, -3.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -36, -3.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -34, -3.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -34, -3.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -32, -3.3 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -32, -3.3 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -30, -3.3 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -30, -3.3 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -28, -3.3 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -28, -3.3 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -26, -3.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -26, -3.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -24, -3.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -24, -3.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -22, -3.3 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -22, -3.3 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -20, -3.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -20, -3.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -18, -3.3 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -18, -3.3 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -17.1, -3.3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -17.1, -3.3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -16.2, -3.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -16.2, -3.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -15.2, -3.3 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -15.2, -3.3 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -14.3, -3.3 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -14.3, -3.3 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -13.4, -3.3 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -13.4, -3.3 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -12.5, -3.3 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -12.5, -3.3 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -11.5, -3.3 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -11.5, -3.3 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -10.6, -3.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -10.6, -3.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -9.7, -3.3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -9.7, -3.3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -8.8, -3.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -8.8, -3.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -7.8, -3.3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -7.8, -3.3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -6.9, -3.3 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -6.9, -3.3 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -6, -3.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -6, -3.3 , 0 );

setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_2 + 230 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 0 );

--敵の動き3
setDisp( spep_2 + 334 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 358 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 334 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 344 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 334 + OFFSET_X, 1, -26.8, -78.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -26.8, -78.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -6.8, -59.8 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -6.8, -59.8 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -46.8, -86.3 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -46.8, -86.3 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -43.1, -55.3 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -43.1, -55.3 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -23.4, -164.1 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -23.4, -164.1 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -164.3, -205.7 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -164.3, -205.7 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -205.3, -302.5 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -205.3, -302.5 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -282.5, -369.7 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -282.5, -369.7 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -367.2, -457.2 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -367.2, -457.2 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -448.1, -529.9 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -448.1, -529.9 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -529.1, -608.2 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -529.1, -608.2 , 0 );

setScaleKey( spep_2 + 334 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_2 + 334 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -110.3 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -110.3 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -112 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -112 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -113.8 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -113.8 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, -115.6 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -115.6 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -117.4 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -117.4 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -119.2 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -119.2 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -121 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -121 );

--敵の動き4
setDisp( spep_2 + 600 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 744 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 600 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 650 + OFFSET_X, 1, 108 );

--敵Y座標調整用
c = -40;

setMoveKey( spep_2 + 600 + OFFSET_X, 1, 265.6, -83.8 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 265.6, -83.8 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 265.6, -76.8 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, 265.6, -76.8 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 265.6, -69.8 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 265.6, -69.8 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, -626.2, 198.6 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, -626.2, 198.6 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, -473.3, 146.6 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, -473.3, 146.6 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, -320.4, 94.5 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, -320.4, 94.5 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, -167.5, 42.5 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, -167.5, 42.5 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, -14.5, -9.5 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, -14.5, -9.5 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, -11.7, -9.5 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, -11.7, -9.5 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, -8.8, -9.5 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, -8.8, -9.5 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, -5.9, -9.5 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, -5.9, -9.5 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, -3, -9.5 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, -3, -9.5 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 51.5, 16.7 + c , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, 51.5, 16.7 + c, 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, 41.1, -5.2 + c, 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, 41.1, -5.2 + c, 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 64.8, 21.1 + c, 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 64.8, 21.1 + c, 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 76.7, -0.8 + c, 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, 76.7, -0.8 + c, 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, 83.9, 21 + c, 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, 83.9, 21 + c, 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, 56.5, -0.9 + c, 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, 56.5, -0.9 + c, 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, 63.6, 25.4 + c, 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, 63.6, 25.4 + c, 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, 59.2, 3.5 + c, 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, 59.2, 3.5 + c, 0 );
setMoveKey( spep_2 + 666 + OFFSET_X, 1, 66.3, 25.2 + c, 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, 66.3, 25.2 + c, 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, 38.9, 3.4 + c, 0 );
setMoveKey( spep_2 + 669 + OFFSET_X, 1, 38.9, 3.4 + c, 0 );
setMoveKey( spep_2 + 670 + OFFSET_X, 1, 41, 31.6 + c, 0 );
setMoveKey( spep_2 + 671 + OFFSET_X, 1, 41, 31.6 + c, 0 );
setMoveKey( spep_2 + 672 + OFFSET_X, 1, 31.6, 11.5 + c, 0 );
setMoveKey( spep_2 + 673 + OFFSET_X, 1, 31.6, 11.5 + c, 0 );
setMoveKey( spep_2 + 674 + OFFSET_X, 1, 22.1, 25.9 + c, 0 );
setMoveKey( spep_2 + 675 + OFFSET_X, 1, 22.1, 25.9 + c, 0 );
setMoveKey( spep_2 + 676 + OFFSET_X, 1, 12.7, 31.1 + c, 0 );
setMoveKey( spep_2 + 677 + OFFSET_X, 1, 12.7, 31.1 + c, 0 );
setMoveKey( spep_2 + 678 + OFFSET_X, 1, 3.2, 29.4 + c, 0 );
setMoveKey( spep_2 + 679 + OFFSET_X, 1, 3.2, 29.4 + c, 0 );
setMoveKey( spep_2 + 680 + OFFSET_X, 1, -5.1, 36.9 + c, 0 );
setMoveKey( spep_2 + 681 + OFFSET_X, 1, -5.1, 36.9 + c, 0 );
setMoveKey( spep_2 + 682 + OFFSET_X, 1, -16.8, 35.3 + c, 0 );
setMoveKey( spep_2 + 683 + OFFSET_X, 1, -16.8, 35.3 + c, 0 );
setMoveKey( spep_2 + 684 + OFFSET_X, 1, -25.1, 42.7 + c, 0 );
setMoveKey( spep_2 + 685 + OFFSET_X, 1, -25.1, 42.7 + c, 0 );
setMoveKey( spep_2 + 686 + OFFSET_X, 1, -34.6, 41.1 + c, 0 );
setMoveKey( spep_2 + 687 + OFFSET_X, 1, -34.6, 41.1 + c, 0 );
setMoveKey( spep_2 + 688 + OFFSET_X, 1, -18.1, 41.6 + c, 0 );
setMoveKey( spep_2 + 689 + OFFSET_X, 1, -18.1, 41.6 + c, 0 );
setMoveKey( spep_2 + 690 + OFFSET_X, 1, -5.1, 33 + c, 0 );
setMoveKey( spep_2 + 691 + OFFSET_X, 1, -5.1, 33 + c, 0 );
setMoveKey( spep_2 + 692 + OFFSET_X, 1, 11.5, 33.7 + c, 0 );
setMoveKey( spep_2 + 693 + OFFSET_X, 1, 11.5, 33.7 + c, 0 );
setMoveKey( spep_2 + 694 + OFFSET_X, 1, 26.8, 25.1 + c, 0 );
setMoveKey( spep_2 + 695 + OFFSET_X, 1, 26.8, 25.1 + c, 0 );
setMoveKey( spep_2 + 696 + OFFSET_X, 1, 43.4, 25.7 + c, 0 );
setMoveKey( spep_2 + 697 + OFFSET_X, 1, 43.4, 25.7 + c, 0 );
setMoveKey( spep_2 + 698 + OFFSET_X, 1, 56.5, 17.1 + c, 0 );
setMoveKey( spep_2 + 699 + OFFSET_X, 1, 56.5, 17.1 + c, 0 );
setMoveKey( spep_2 + 700 + OFFSET_X, 1, 73.1, 17.8 + c, 0 );
setMoveKey( spep_2 + 701 + OFFSET_X, 1, 73.1, 17.8 + c, 0 );
setMoveKey( spep_2 + 702 + OFFSET_X, 1, 88.6, 9.2 + c, 0 );
setMoveKey( spep_2 + 703 + OFFSET_X, 1, 88.6, 9.2 + c, 0 );
setMoveKey( spep_2 + 704 + OFFSET_X, 1, 105.2, 9.8 + c, 0 );
setMoveKey( spep_2 + 705 + OFFSET_X, 1, 105.2, 9.8 + c, 0 );
setMoveKey( spep_2 + 706 + OFFSET_X, 1, 110.4, 2.1 + c, 0 );
setMoveKey( spep_2 + 707 + OFFSET_X, 1, 110.4, 2.1 + c, 0 );
setMoveKey( spep_2 + 708 + OFFSET_X, 1, 118, -1.1 + c, 0 );
setMoveKey( spep_2 + 709 + OFFSET_X, 1, 118, -1.1 + c, 0 );
setMoveKey( spep_2 + 710 + OFFSET_X, 1, 125.6, -4.3 + c, 0 );
setMoveKey( spep_2 + 711 + OFFSET_X, 1, 125.6, -4.3 + c, 0 );
setMoveKey( spep_2 + 712 + OFFSET_X, 1, 133.2, -7.5 + c, 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, 133.2, -7.5 + c, 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, 140.9, -10.6 + c, 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, 140.9, -10.6 + c, 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, 123.3, -8.7 + c, 0 );
setMoveKey( spep_2 + 717 + OFFSET_X, 1, 123.3, -8.7 + c, 0 );
setMoveKey( spep_2 + 718 + OFFSET_X, 1, 105.7, -6.7 + c, 0 );
setMoveKey( spep_2 + 719 + OFFSET_X, 1, 105.7, -6.7 + c, 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, 88.1, -4.7 + c, 0 );
setMoveKey( spep_2 + 721 + OFFSET_X, 1, 88.1, -4.7 + c, 0 );
setMoveKey( spep_2 + 722 + OFFSET_X, 1, 70.5, -2.7 + c, 0 );
setMoveKey( spep_2 + 723 + OFFSET_X, 1, 70.5, -2.7 + c, 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, 52.8, -0.7 + c, 0 );
setMoveKey( spep_2 + 725 + OFFSET_X, 1, 52.8, -0.7 + c, 0 );
setMoveKey( spep_2 + 726 + OFFSET_X, 1, 35.3, 1.3 + c, 0 );
setMoveKey( spep_2 + 727 + OFFSET_X, 1, 35.3, 1.3 + c, 0 );
setMoveKey( spep_2 + 728 + OFFSET_X, 1, 17.6, 3.2 + c, 0 );
setMoveKey( spep_2 + 729 + OFFSET_X, 1, 17.6, 3.2 + c, 0 );
setMoveKey( spep_2 + 730 + OFFSET_X, 1, 0, 5.2 + c, 0 );
setMoveKey( spep_2 + 731 + OFFSET_X, 1, 0, 5.2 + c, 0 );
setMoveKey( spep_2 + 732 + OFFSET_X, 1, 114.1, 5.2 + c, 0 );
setMoveKey( spep_2 + 733 + OFFSET_X, 1, 114.1, 5.2 + c, 0 );
setMoveKey( spep_2 + 734 + OFFSET_X, 1, 228.2, 5.2 + c, 0 );
setMoveKey( spep_2 + 735 + OFFSET_X, 1, 228.2, 5.2 + c, 0 );
setMoveKey( spep_2 + 736 + OFFSET_X, 1, 342.3, 5.2 + c, 0 );
setMoveKey( spep_2 + 737 + OFFSET_X, 1, 342.3, 5.2 + c, 0 );
setMoveKey( spep_2 + 738 + OFFSET_X, 1, 456.4, 5.2 + c, 0 );
setMoveKey( spep_2 + 739 + OFFSET_X, 1, 456.4, 5.2 + c, 0 );
setMoveKey( spep_2 + 740 + OFFSET_X, 1, 570.5, 5.2 + c, 0 );
setMoveKey( spep_2 + 741 + OFFSET_X, 1, 570.5, 5.2 + c, 0 );
setMoveKey( spep_2 + 742 + OFFSET_X, 1, 684.6, 5.2 + c, 0 );
setMoveKey( spep_2 + 744 + OFFSET_X, 1, 684.6, 5.2 + c, 0 );

--敵サイズ調整
a = 1.0;

setScaleKey( spep_2 + 600 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 601 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 602 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 603 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 604 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 607 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 608 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 611 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 612 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 617 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 618 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 623 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 624 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 627 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 628 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 631 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 632 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 649 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 650 + OFFSET_X, 1, 2 + a, 2 + a );
setScaleKey( spep_2 + 651 + OFFSET_X, 1, 2 + a, 2 + a );
setScaleKey( spep_2 + 652 + OFFSET_X, 1, 1.97 + a, 1.97 + a );
setScaleKey( spep_2 + 653 + OFFSET_X, 1, 1.97 + a, 1.97 + a );
setScaleKey( spep_2 + 654 + OFFSET_X, 1, 1.95 + a, 1.95 + a );
setScaleKey( spep_2 + 655 + OFFSET_X, 1, 1.95 + a, 1.95 + a );
setScaleKey( spep_2 + 656 + OFFSET_X, 1, 1.93 + a, 1.93 + a );
setScaleKey( spep_2 + 657 + OFFSET_X, 1, 1.93 + a, 1.93 + a );
setScaleKey( spep_2 + 658 + OFFSET_X, 1, 1.91 + a, 1.91 + a );
setScaleKey( spep_2 + 659 + OFFSET_X, 1, 1.91 + a, 1.91 + a );
setScaleKey( spep_2 + 660 + OFFSET_X, 1, 1.89 + a, 1.89 + a );
setScaleKey( spep_2 + 661 + OFFSET_X, 1, 1.89 + a, 1.89 + a );
setScaleKey( spep_2 + 662 + OFFSET_X, 1, 1.86 + a, 1.86 + a );
setScaleKey( spep_2 + 663 + OFFSET_X, 1, 1.86 + a, 1.86 + a );
setScaleKey( spep_2 + 664 + OFFSET_X, 1, 1.84 + a, 1.84 + a );
setScaleKey( spep_2 + 665 + OFFSET_X, 1, 1.84 + a, 1.84 + a );
setScaleKey( spep_2 + 666 + OFFSET_X, 1, 1.82 + a, 1.82 + a );
setScaleKey( spep_2 + 667 + OFFSET_X, 1, 1.82 + a, 1.82 + a );
setScaleKey( spep_2 + 668 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 669 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 670 + OFFSET_X, 1, 1.79 + a, 1.79 + a );
setScaleKey( spep_2 + 671 + OFFSET_X, 1, 1.79 + a, 1.79 + a );
setScaleKey( spep_2 + 672 + OFFSET_X, 1, 1.78 + a, 1.78 + a );
setScaleKey( spep_2 + 673 + OFFSET_X, 1, 1.78 + a, 1.78 + a );
setScaleKey( spep_2 + 674 + OFFSET_X, 1, 1.76 + a, 1.76 + a );
setScaleKey( spep_2 + 675 + OFFSET_X, 1, 1.76 + a, 1.76 + a );
setScaleKey( spep_2 + 676 + OFFSET_X, 1, 1.75 + a, 1.75 + a );
setScaleKey( spep_2 + 677 + OFFSET_X, 1, 1.75 + a, 1.75 + a );
setScaleKey( spep_2 + 678 + OFFSET_X, 1, 1.74 + a, 1.74 + a );
setScaleKey( spep_2 + 679 + OFFSET_X, 1, 1.74 + a, 1.74 + a );
setScaleKey( spep_2 + 680 + OFFSET_X, 1, 1.73 + a, 1.73 + a );
setScaleKey( spep_2 + 681 + OFFSET_X, 1, 1.73 + a, 1.73 + a );
setScaleKey( spep_2 + 682 + OFFSET_X, 1, 1.72 + a, 1.72 + a );
setScaleKey( spep_2 + 683 + OFFSET_X, 1, 1.72 + a, 1.72 + a );
setScaleKey( spep_2 + 684 + OFFSET_X, 1, 1.71 + a, 1.71 + a );
setScaleKey( spep_2 + 685 + OFFSET_X, 1, 1.71 + a, 1.71 + a );
setScaleKey( spep_2 + 686 + OFFSET_X, 1, 1.7 + a, 1.7 + a );
setScaleKey( spep_2 + 687 + OFFSET_X, 1, 1.7 + a, 1.7 + a );
setScaleKey( spep_2 + 688 + OFFSET_X, 1, 1.73 + a, 1.73 + a );
setScaleKey( spep_2 + 689 + OFFSET_X, 1, 1.73 + a, 1.73 + a );
setScaleKey( spep_2 + 690 + OFFSET_X, 1, 1.76 + a, 1.76 + a );
setScaleKey( spep_2 + 691 + OFFSET_X, 1, 1.76 + a, 1.76 + a );
setScaleKey( spep_2 + 692 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 693 + OFFSET_X, 1, 1.8 + a, 1.8 + a );
setScaleKey( spep_2 + 694 + OFFSET_X, 1, 1.83 + a, 1.83 + a );
setScaleKey( spep_2 + 695 + OFFSET_X, 1, 1.83 + a, 1.83 + a );
setScaleKey( spep_2 + 696 + OFFSET_X, 1, 1.86 + a, 1.86 + a );
setScaleKey( spep_2 + 697 + OFFSET_X, 1, 1.86 + a, 1.86 + a );
setScaleKey( spep_2 + 698 + OFFSET_X, 1, 1.9 + a, 1.9 + a );
setScaleKey( spep_2 + 699 + OFFSET_X, 1, 1.9 + a, 1.9 + a );
setScaleKey( spep_2 + 700 + OFFSET_X, 1, 1.93 + a, 1.93 + a );
setScaleKey( spep_2 + 701 + OFFSET_X, 1, 1.93 + a, 1.93 + a );
setScaleKey( spep_2 + 702 + OFFSET_X, 1, 1.96 + a, 1.96 + a );
setScaleKey( spep_2 + 703 + OFFSET_X, 1, 1.96 + a, 1.96 + a );
setScaleKey( spep_2 + 704 + OFFSET_X, 1, 2 + a, 2 + a );
setScaleKey( spep_2 + 705 + OFFSET_X, 1, 2 + a, 2 + a );
setScaleKey( spep_2 + 706 + OFFSET_X, 1, 2.02 + a, 2.02 + a );
setScaleKey( spep_2 + 707 + OFFSET_X, 1, 2.02 + a, 2.02 + a );
setScaleKey( spep_2 + 708 + OFFSET_X, 1, 2.04 + a, 2.04 + a );
setScaleKey( spep_2 + 709 + OFFSET_X, 1, 2.04 + a, 2.04 + a );
setScaleKey( spep_2 + 710 + OFFSET_X, 1, 2.06 + a, 2.06 + a );
setScaleKey( spep_2 + 711 + OFFSET_X, 1, 2.06 + a, 2.06 + a );
setScaleKey( spep_2 + 712 + OFFSET_X, 1, 2.08 + a, 2.08 + a );
setScaleKey( spep_2 + 713 + OFFSET_X, 1, 2.08 + a, 2.08 + a );
setScaleKey( spep_2 + 714 + OFFSET_X, 1, 2.1 + a, 2.1 + a );
setScaleKey( spep_2 + 715 + OFFSET_X, 1, 2.1 + a, 2.1 + a );
setScaleKey( spep_2 + 716 + OFFSET_X, 1, 2.08 + a, 2.08 + a );
setScaleKey( spep_2 + 717 + OFFSET_X, 1, 2.08 + a, 2.08 + a );
setScaleKey( spep_2 + 718 + OFFSET_X, 1, 2.07 + a, 2.07 + a );
setScaleKey( spep_2 + 719 + OFFSET_X, 1, 2.07 + a, 2.07 + a );
setScaleKey( spep_2 + 720 + OFFSET_X, 1, 2.06 + a, 2.06 + a );
setScaleKey( spep_2 + 721 + OFFSET_X, 1, 2.06 + a, 2.06 + a );
setScaleKey( spep_2 + 722 + OFFSET_X, 1, 2.05 + a, 2.05 + a );
setScaleKey( spep_2 + 723 + OFFSET_X, 1, 2.05 + a, 2.05 + a );
setScaleKey( spep_2 + 724 + OFFSET_X, 1, 2.03 + a, 2.03 + a );
setScaleKey( spep_2 + 725 + OFFSET_X, 1, 2.03 + a, 2.03 + a );
setScaleKey( spep_2 + 726 + OFFSET_X, 1, 2.02 + a, 2.02 + a );
setScaleKey( spep_2 + 727 + OFFSET_X, 1, 2.02 + a, 2.02 + a );
setScaleKey( spep_2 + 728 + OFFSET_X, 1, 2.01 + a, 2.01 + a );
setScaleKey( spep_2 + 729 + OFFSET_X, 1, 2.01 + a, 2.01 + a );
setScaleKey( spep_2 + 730 + OFFSET_X, 1, 2 + a, 2 + a );
setScaleKey( spep_2 + 744 + OFFSET_X, 1, 2 + a, 2 + a );

setRotateKey( spep_2 + 600 + OFFSET_X, 1, 78.5 );
setRotateKey( spep_2 + 649 + OFFSET_X, 1, 78.5 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 744 + OFFSET_X, 1, 13.3 );

setBlendColor( spep_2 + 650 + OFFSET_X, 1, 2, 0.219, 0.635, 0.2, 1.0 );
setBlendColor( spep_2 + 743 + OFFSET_X, 1, 2, 0.219, 0.635, 0.2, 1.0 );
setBlendColor( spep_2 + 744 + OFFSET_X, 1, 2, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--18号飛び上がる
SE007 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 72, 0, 46, -1);
SE008 = playSeVer2( spep_2 + 0, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE008, 63 );
SE009 = playSeVer2( spep_2 + 0, 1183, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 10, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);

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
--18号蹴り飛ばす
SE011 = playSeVer2( spep_2 + 112, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 134, 1187, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 136, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 136, SE013, 85 );

--敵吹き飛ぶ
SE014 = playSeVer2( spep_2 + 212, 1027, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 218, 1121, "",spep_2 + 336, 0, 66, -1);
setSeVolumeByWorkId( spep_2 + 218, SE015, 77 );

--17号アップ
SE016 = playSeVer2( spep_2 + 248, 8, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 278, 1182, "",spep_2 + 332, 14, 22, -1);
setSeVolumeByWorkId( spep_2 + 278, SE017, 77 );
setStartTimeMs( SE017,  67 );
SE018 = playSeVer2( spep_2 + 284, 1232, "", 0, 0, 0, -1);

--叩き落とす
SE019 = playSeVer2( spep_2 + 306, 1116, "",spep_2 + 352, 0, 16, -1);
SE020 = playSeVer2( spep_2 + 322, 1123, "", 0, 0, 0, -1);

--敵落ちていく
SE021 = playSeVer2( spep_2 + 332, 1183, "",spep_2 + 452, 0, 62, -1);

--構える
SE022 = playSeVer2( spep_2 + 404, 1150, "", 0, 4, 0, -1);
setStartTimeMs( SE022,  400 );
SE024 = playSeVer2( spep_2 + 402, 1208, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 414, 1389, "", 0, 0, 0, -1);

--ロケットパンチ溜め
SE023 = playSeVer2( spep_2 + 440, 1136, "",spep_2 + 546, 26, 16, -1);
setStartTimeMs( SE023,  733 );
SE026 = playSeVer2( spep_2 + 442, 1158, "",spep_2 + 546, 0, 14, -1);

--ロケットパンチ発射
SE027 = playSeVer2( spep_2 + 522, 1023, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 522, 1027, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 522, 1145, "", 0, 0, 0, -1);

--ロケットパンチ加速
SE030 = playSeVer2( spep_2 + 564, 1116, "",spep_2 + 624, 0, 20, -1);
SE031 = playSeVer2( spep_2 + 576, 1314, "",spep_2 + 780, 0, 26, -1);
SE032 = playSeVer2( spep_2 + 576, 9, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 576, 1121, "",spep_2 + 786, 0, 56, -1);

--敵ヒット
SE034 = playSeVer2( spep_2 + 642, 1009, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 642, 1011, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE036 = playSeVer2( spep_2 + 724, 1052, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 724, 1027, "", 0, 0, 0, -1);

--岩激突
SE038 = playSeVer2( spep_2 + 760, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 772); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 894f

else

end