--1030880:SSR_タマガミ・ナンバー・スリー_必殺技：スラストハンマー
--sp_effect_b1_00347
--sp2952

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164279;  -- セリフカットイン〜ハンマー担ぐ ef_001
SP_01b = 164281;  -- セリフカットイン〜ハンマー担ぐ ef_001b
SP_02 = 164282;  -- ハンマーで攻撃〜フィニッシュ ef_002
SP_02b = 164284;  -- ハンマーで攻撃〜フィニッシュ ef_002b


--エフェクト(敵)
SP_01r = 164280;  -- セリフカットイン〜ハンマー担ぐ ef_001r
SP_02r = 164283;  -- ハンマーで攻撃〜フィニッシュef_002r


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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- セリフカットイン〜ハンマー担ぐ
-------------------------------------------------
MAX_FRAME_0 = 224;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- セリフカットイン〜ハンマー担ぐ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- セリフカットイン〜ハンマー担ぐ(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 18;

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

setDisp( spep_0 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 228 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 150 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 150 + OFFSET_X, 1, 726.9, -209.4 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 726.9, -209.4 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 716.7, -207.3 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 716.7, -207.3 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 706.3, -205.1 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 706.3, -205.1 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 695.6, -202.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 695.6, -202.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 684.7, -200.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 684.7, -200.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 673.5, -198.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 673.5, -198.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 662.1, -195.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 662.1, -195.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 650.6, -193.5 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 650.6, -193.5 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 638.8, -191 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 638.8, -191 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 626.8, -188.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 626.8, -188.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 614.7, -186 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 614.7, -186 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 602.5, -183.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 602.5, -183.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 590.1, -180.8 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 590.1, -180.8 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 577.7, -178.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 577.7, -178.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 565.2, -175.6 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 565.2, -175.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 552.7, -173 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 552.7, -173 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 540.1, -170.4 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 540.1, -170.4 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 527.6, -167.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 527.6, -167.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 515.1, -165.2 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 515.1, -165.2 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 502.7, -162.6 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 502.7, -162.6 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 490.4, -160 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 490.4, -160 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 478.3, -157.5 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 478.3, -157.5 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 466.4, -155 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 466.4, -155 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 454.7, -152.5 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 454.7, -152.5 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 443.3, -150.2 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 443.3, -150.2 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 432.3, -147.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 432.3, -147.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 421.6, -145.6 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 421.6, -145.6 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 411.4, -143.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 411.4, -143.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 401.6, -141.5 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 401.6, -141.5 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 392.5, -139.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 392.5, -139.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 383.9, -137.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 383.9, -137.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 376, -136.1 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 376, -136.1 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 368.8, -134.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 368.8, -134.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 362.4, -133.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 362.4, -133.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 356.9, -132.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 356.9, -132.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 352.3, -131.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 352.3, -131.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 348.7, -130.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 348.7, -130.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 346.2, -129.9 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 346.2, -129.9 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 344.9, -129.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 344.9, -129.6 , 0 );

setScaleKey( spep_0 + 150 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 6.22, 6.22 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 6.22, 6.22 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 5.38, 5.38 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 5.38, 5.38 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 4.39, 4.39 );

setRotateKey( spep_0 + 150 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 1264, "",spep_0 + 186, 0, 126, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 56 );
SE002 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 184, 0, 120, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 58 );
SE003 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );

--振りかぶる
SE005 = playSeVer2( spep_0 + 74, 1117, "",spep_0 + 156, 0, 56, -1);
SE006 = playSeVer2( spep_0 + 74, 1116, "",spep_0 + 122, 0, 26, -1);
SE007 = playSeVer2( spep_0 + 86, 1497, "",spep_0 + 140, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 86, SE007, 61 );

--構える
SE008 = playSeVer2( spep_0 + 142, 1387, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 142, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE009, 63 );
SE010 = playSeVer2( spep_0 + 142, 1414, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --224F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--向かっていく
SE012 = playSeVer2( spep_1 + 90, 1182, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 90, 1117, "", 0, 0, 0, -1);

-------------------------------------------------
-- ハンマーで攻撃〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 256;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ハンマーで攻撃〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ハンマーで攻撃〜フィニッシュ(ef_002b)
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

setDisp( spep_2 + 38 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 140 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 38 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 54 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 106 + OFFSET_X, 1, 7 );

x = 15;
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 190.2, -115.1 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 190.2, -115.1 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 173.9, -121.2 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 173.9, -121.2 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 157.6, -127.3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 157.6, -127.3 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 141.3, -133.4 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 141.3, -133.4 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 125, -139.5 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 125, -139.5 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 108.7, -145.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 108.7, -145.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 92.4, -151.7 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 92.4, -151.7 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 94.7+ x, -171.2 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 94.7+ x, -171.2 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 100.2+ x, -195.7 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 100.2+ x, -195.7 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 53+ x, -167.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 53+ x, -167.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 61.7+ x, -160.5 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 61.7+ x, -160.5 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 29.8+ x, -164.9 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 29.8+ x, -164.9 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 17.7+ x, -132.6 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 17.7+ x, -132.6 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 22.4+ x, -149.4 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 22.4+ x, -149.4 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 16+ x, -117.1 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 16+ x, -117.1 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 15.7+ x, -118.3 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 15.7+ x, -118.3 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 13.8, -104.1 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 13.8, -104.1 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 13.5, -105.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 13.5, -105.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 11.6, -91 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 11.6, -91 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 11.3, -92.2 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 11.3, -92.2 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 11, -93.5 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 11, -93.5 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 8.4, -71.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 8.4, -71.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 8.1, -72.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 8.1, -72.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 6.2, -58.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 6.2, -58.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 6, -59.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 6, -59.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 5.7, -60.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 5.7, -60.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 2.9, -38.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 2.9, -38.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 2.6, -40.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 2.6, -40.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 2.4, -41.3 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 2.4, -41.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -0.4, -19.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -0.4, -19.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -0.7, -20.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -0.7, -20.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -1, -21.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -1, -21.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -3.4, -0.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -3.4, -0.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -25.9, 29 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -25.9, 29 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -167.8, -11.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -167.8, -11.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -149.9, -22.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -149.9, -22.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -342.4, -62.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -342.4, -62.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -347.6, -84.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -347.6, -84.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -468.9, -122.3 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -468.9, -122.3 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -491.9, -122.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -491.9, -122.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -581.5, -170 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -581.5, -170 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -582.1, -167.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -582.1, -167.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -670.2, -195.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -670.2, -195.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -670.8, -193.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -670.8, -193.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -747.7, -217.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -747.7, -217.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -748.3, -215.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -748.3, -215.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -820.9, -237.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -820.9, -237.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -821.5, -235.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -821.5, -235.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -822.1, -233.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -822.1, -233.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -938.9, -270.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -938.9, -270.9 , 0 );

setScaleKey( spep_2 + 38 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.49, 2.49 );

setRotateKey( spep_2 + 38 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 17.8 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 26; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

--ハンマー打ち1
SE014 = playSeVer2( spep_2 + 36, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 46, 1387, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 48, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE016, 87 );

--ハンマー打ち2
SE017 = playSeVer2( spep_2 + 92, 1387, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 94, 1187, "", 0, 0, 0, -1);

--ハンマー打ち3
SE019 = playSeVer2( spep_2 + 128, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 132, 1387, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 134, 1187, "",spep_2 + 190, 0, 36, -1);
SE022 = playSeVer2( spep_2 + 136, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 156); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -6); -- 250F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- セリフカットイン〜ハンマー担ぐ
-------------------------------------------------
MAX_FRAME_0 = 224;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- セリフカットイン〜ハンマー担ぐ(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- セリフカットイン〜ハンマー担ぐ(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 18;

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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

setDisp( spep_0 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 228 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 150 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 150 + OFFSET_X, 1, 726.9, -209.4 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 726.9, -209.4 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 716.7, -207.3 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 716.7, -207.3 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 706.3, -205.1 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 706.3, -205.1 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 695.6, -202.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 695.6, -202.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 684.7, -200.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 684.7, -200.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 673.5, -198.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 673.5, -198.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 662.1, -195.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 662.1, -195.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 650.6, -193.5 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 650.6, -193.5 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 638.8, -191 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 638.8, -191 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 626.8, -188.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 626.8, -188.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 614.7, -186 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 614.7, -186 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 602.5, -183.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 602.5, -183.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 590.1, -180.8 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 590.1, -180.8 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 577.7, -178.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 577.7, -178.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 565.2, -175.6 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 565.2, -175.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 552.7, -173 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 552.7, -173 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 540.1, -170.4 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 540.1, -170.4 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 527.6, -167.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 527.6, -167.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 515.1, -165.2 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 515.1, -165.2 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 502.7, -162.6 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 502.7, -162.6 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 490.4, -160 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 490.4, -160 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 478.3, -157.5 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 478.3, -157.5 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 466.4, -155 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 466.4, -155 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 454.7, -152.5 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 454.7, -152.5 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 443.3, -150.2 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 443.3, -150.2 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 432.3, -147.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 432.3, -147.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 421.6, -145.6 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 421.6, -145.6 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 411.4, -143.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 411.4, -143.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 401.6, -141.5 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 401.6, -141.5 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 392.5, -139.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 392.5, -139.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 383.9, -137.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 383.9, -137.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 376, -136.1 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 376, -136.1 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 368.8, -134.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 368.8, -134.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 362.4, -133.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 362.4, -133.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 356.9, -132.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 356.9, -132.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 352.3, -131.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 352.3, -131.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 348.7, -130.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 348.7, -130.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 346.2, -129.9 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 346.2, -129.9 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 344.9, -129.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 344.9, -129.6 , 0 );

setScaleKey( spep_0 + 150 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 6.22, 6.22 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 6.22, 6.22 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 5.38, 5.38 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 5.38, 5.38 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 4.39, 4.39 );

setRotateKey( spep_0 + 150 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 1264, "",spep_0 + 186, 0, 126, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 56 );
SE002 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 184, 0, 120, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 58 );
SE003 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );

--振りかぶる
SE005 = playSeVer2( spep_0 + 74, 1117, "",spep_0 + 156, 0, 56, -1);
SE006 = playSeVer2( spep_0 + 74, 1116, "",spep_0 + 122, 0, 26, -1);
SE007 = playSeVer2( spep_0 + 86, 1497, "",spep_0 + 140, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 86, SE007, 61 );

--構える
SE008 = playSeVer2( spep_0 + 142, 1387, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 142, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE009, 63 );
SE010 = playSeVer2( spep_0 + 142, 1414, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --224F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--向かっていく
SE012 = playSeVer2( spep_1 + 90, 1182, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 90, 1117, "", 0, 0, 0, -1);

-------------------------------------------------
-- ハンマーで攻撃〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 256;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ハンマーで攻撃〜フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ハンマーで攻撃〜フィニッシュ(ef_002b)
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

setDisp( spep_2 + 38 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 140 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 38 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 54 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 106 + OFFSET_X, 1, 7 );

x = 15;

setMoveKey( spep_2 + 38 + OFFSET_X, 1, 190.2, -115.1 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 190.2, -115.1 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 173.9, -121.2 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 173.9, -121.2 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 157.6, -127.3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 157.6, -127.3 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 141.3, -133.4 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 141.3, -133.4 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 125, -139.5 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 125, -139.5 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 108.7, -145.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 108.7, -145.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 92.4, -151.7 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 92.4, -151.7 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 94.7+ x, -171.2 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 94.7+ x, -171.2 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 100.2+ x, -195.7 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 100.2+ x, -195.7 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 53+ x, -167.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 53+ x, -167.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 61.7+ x, -160.5 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 61.7+ x, -160.5 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 29.8+ x, -164.9 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 29.8+ x, -164.9 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 17.7+ x, -132.6 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 17.7+ x, -132.6 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 22.4+ x, -149.4 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 22.4+ x, -149.4 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 16+ x, -117.1 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 16+ x, -117.1 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 15.7+ x, -118.3 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 15.7+ x, -118.3 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 13.8, -104.1 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 13.8, -104.1 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 13.5, -105.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 13.5, -105.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 11.6, -91 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 11.6, -91 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 11.3, -92.2 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 11.3, -92.2 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 11, -93.5 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 11, -93.5 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 8.4, -71.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 8.4, -71.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 8.1, -72.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 8.1, -72.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 6.2, -58.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 6.2, -58.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 6, -59.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 6, -59.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 5.7, -60.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 5.7, -60.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 2.9, -38.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 2.9, -38.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 2.6, -40.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 2.6, -40.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 2.4, -41.3 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 2.4, -41.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -0.4, -19.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -0.4, -19.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -0.7, -20.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -0.7, -20.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -1, -21.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -1, -21.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -3.4, -0.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -3.4, -0.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -25.9, 29 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -25.9, 29 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -167.8, -11.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -167.8, -11.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -149.9, -22.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -149.9, -22.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -342.4, -62.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -342.4, -62.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -347.6, -84.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -347.6, -84.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -468.9, -122.3 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -468.9, -122.3 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -491.9, -122.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -491.9, -122.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -581.5, -170 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -581.5, -170 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -582.1, -167.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -582.1, -167.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -670.2, -195.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -670.2, -195.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -670.8, -193.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -670.8, -193.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -747.7, -217.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -747.7, -217.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -748.3, -215.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -748.3, -215.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -820.9, -237.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -820.9, -237.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -821.5, -235.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -821.5, -235.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -822.1, -233.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -822.1, -233.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -938.9, -270.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -938.9, -270.9 , 0 );

setScaleKey( spep_2 + 38 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.49, 2.49 );

setRotateKey( spep_2 + 38 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 17.8 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 26; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

--ハンマー打ち1
SE014 = playSeVer2( spep_2 + 36, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 46, 1387, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 48, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE016, 87 );

--ハンマー打ち2
SE017 = playSeVer2( spep_2 + 92, 1387, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 94, 1187, "", 0, 0, 0, -1);

--ハンマー打ち3
SE019 = playSeVer2( spep_2 + 128, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 132, 1387, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 134, 1187, "",spep_2 + 190, 0, 36, -1);
SE022 = playSeVer2( spep_2 + 136, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 156); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -6); -- 250F

end
