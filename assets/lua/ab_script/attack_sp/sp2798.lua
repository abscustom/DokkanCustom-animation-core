-- 1030020: LR_超サイヤ人3ゴテンクス_必殺技：超かめはめ波
-- sp_effect_b4_00363
-- sp2798

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 163419;  -- 開幕〜かめはめ波の正面構え ef_001
SP_01b = 163421;  -- 開幕〜かめはめ波の正面構え ef_001b
SP_02 = 163423;  -- かめはめ波の横構え〜フィニッシュまで ef_002
SP_02b = 163424;  -- かめはめ波の横構え〜フィニッシュまで ef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

   if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 672;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 90 );  -- スキップ先フレーム指定
        setupMovie(spep_2 + 90 , SP_01, spep_2 + 90 -1 + 2, 1);

        -- ** 音 ** --
        --かめはめ波発射
        SE048 = playSeVer2( spep_2 + 93, 1133, "", 0, 0, 0, -1);
        SE049 = playSeVer2( spep_2 + 93, 1027, "", 0, 0, 0, -1);
        SE050 = playSeVer2( spep_2 + 93, 1146, "", 0, 0, 0, -1);

        --かめはめ波飛んでいく
        SE051 = playSeVer2( spep_2 + 93, 1215, "", 0, 0, 0, -1);

    else 
        setupMovie(0, SP_01, 0, 1);
    end
------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕〜かめはめ波の正面構え ef_001
------------------------------------------------------
MAX_FRAME_0 = 672;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  -- 開幕〜かめはめ波の正面構え ef_001
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255 );
--[[
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- 開幕〜かめはめ波の正面構え ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 578;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 145, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 145, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 145, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 170 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 260 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 170 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 244 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 170 + OFFSET_X, 1, 1557.2, -298.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 1557.2, -298.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 1560.2, -295.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 1560.2, -295.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 1443.9, -287.3 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 1443.9, -287.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 1443.9, -281.4 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 1443.9, -281.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 1339.6, -273 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 1339.6, -273 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 1339.6, -267 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 1339.6, -267 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 1223.3, -258.7 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 1223.3, -258.7 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 1223.3, -252.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 1223.3, -252.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 1119, -244.4 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 1119, -244.4 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 1119, -238.4 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 1119, -238.4 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 1002.8, -230.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 1002.8, -230.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 1002.8, -224.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 1002.8, -224.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 898.4, -215.8 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 898.4, -215.8 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 898.4, -209.8 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 898.4, -209.8 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 782.2, -201.4 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 782.2, -201.4 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 782.2, -195.5 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 782.2, -195.5 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 677.8, -187.2 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 677.8, -187.2 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 677.8, -181.2 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 677.8, -181.2 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 561.5, -172.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 561.5, -172.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 561.5, -167 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 561.5, -167 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 457.2, -158.6 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 457.2, -158.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 457.2, -152.7 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 457.2, -152.7 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 341.1, -144.3 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 341.1, -144.3 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 341.1, -138.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 341.1, -138.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 236.9, -130.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 236.9, -130.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 236.9, -124.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 236.9, -124.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 220.5, -126.5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 220.5, -126.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 215.3, -118.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 215.3, -118.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 216.1, -122.9 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 216.1, -122.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 210.9, -115.1 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 210.9, -115.1 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 199.7, -119.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 199.7, -119.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 194.5, -111.5 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 194.5, -111.5 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 195.3, -115.7 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 195.3, -115.7 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 190.1, -107.9 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 190.1, -107.9 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 179, -112 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 179, -112 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 173.8, -104.3 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 173.8, -104.3 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 174.5, -108.4 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 174.5, -108.4 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 365.2, -184 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 365.2, -184 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 362.4, -184 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 362.4, -184 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 343.2, -184 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 343.2, -184 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 286.9, -184 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 286.9, -184 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 245.2, -184 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 245.2, -184 , 0 );

setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 4.61, 4.61 );

setRotateKey( spep_0 + 170 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 264 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 586 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 264 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 292 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 294 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 302 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 310 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 316 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 322 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 324 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 332 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 340 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 346 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 352 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 354 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 362 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 370 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 376 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 382 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 384 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 392 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 400 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 406 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 412 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 414 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 422 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 430 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 436 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 442 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 444 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 452 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 460 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 466 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 472 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 264 + OFFSET_X, 1, 79.3, -190.7 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 79.3, -190.7 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 93.3, -58.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 93.3, -58.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 67.4, -151.8 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 67.4, -151.8 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 82.9, -86.5 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 82.9, -86.5 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 103.2, -167 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 103.2, -167 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 123.9, -102.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 123.9, -102.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 133.5, -142 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 133.5, -142 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 172.9, -103.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 172.9, -103.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 189.1, -125.1 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 189.1, -125.1 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 211.3, -104 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 211.3, -104 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 255, -110.9 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 255, -110.9 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 315.9, -84.5 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 315.9, -84.5 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 366, -101.8 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 366, -101.8 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 429.7, -77 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 429.7, -77 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 41.4, -30.4 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 41.4, -30.4 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 54.3, -1.1 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 54.3, -1.1 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 50.3, -9.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 50.3, -9.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 54.3, -0.1 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 54.3, -0.1 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 63.3, -9.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 63.3, -9.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 103.9, 30.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 103.9, 30.9 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 99.9, 22.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 99.9, 22.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 103.9, 31.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 103.9, 31.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 112.9, 22.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 112.9, 22.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 78.3, -42.4 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 78.3, -42.4 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 74.2, -50.4 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 74.2, -50.4 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 78.2, -41.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 78.2, -41.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 87.2, -9.1 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 87.2, -9.1 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 90.2, -1.1 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 90.2, -1.1 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 86.2, -9.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 86.2, -9.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 90.2, -41.4 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 90.2, -41.4 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 99.2, -9.1 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 99.2, -9.1 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 102.2, -1.1 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 102.2, -1.1 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 98.1, -9.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 98.1, -9.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 102.1, -0.1 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 102.1, -0.1 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 148.7, 22.9 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 148.7, 22.9 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 151.7, 30.9 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 151.7, 30.9 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 147.7, 22.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 147.7, 22.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 151.7, 31.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 151.7, 31.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 123.1, -50.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 123.1, -50.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 126.1, -42.4 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 126.1, -42.4 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 122.1, -50.4 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 122.1, -50.4 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 126.1, -0.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 126.1, -0.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 135, -9.1 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 135, -9.1 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 138, -1.1 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 138, -1.1 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 134, -50.4 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 134, -50.4 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 138, -0.1 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 138, -0.1 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 147, -9.1 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 147, -9.1 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 150, -1.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 150, -1.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 146, -9.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 146, -9.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 187.6, 31.9 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 187.6, 31.9 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 196.6, 22.9 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 196.6, 22.9 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 199.6, 30.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 199.6, 30.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 195.5, 22.9 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 195.5, 22.9 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 161.9, -41.4 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 161.9, -41.4 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 170.9, -50.4 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 170.9, -50.4 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 173.9, -42.4 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 173.9, -42.4 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 169.9, -9.1 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 169.9, -9.1 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 173.9, -0.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 173.9, -0.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 182.9, -9.1 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 182.9, -9.1 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 185.9, -42.4 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 185.9, -42.4 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 181.9, -9.1 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 181.9, -9.1 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 185.8, -0.1 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 185.8, -0.1 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 194.8, -9.1 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 194.8, -9.1 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 197.8, -1.1 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 197.8, -1.1 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 231.4, 22.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 231.4, 22.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 235.4, 31.9 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 235.4, 31.9 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 244.4, 22.9 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 244.4, 22.9 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 247.4, 30.9 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 247.4, 30.9 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 205.8, -50.4 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 205.8, -50.4 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 209.8, -41.4 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 209.8, -41.4 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 218.8, -50.4 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 218.8, -50.4 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 221.7, -1.1 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 221.7, -1.1 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 217.7, -9.1 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 217.7, -9.1 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 221.7, -0.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 221.7, -0.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 230.7, -50.4 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 230.7, -50.4 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 233.7, -1.1 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 233.7, -1.1 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 229.7, -9.1 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 229.7, -9.1 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 233.7, -0.1 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 233.7, -0.1 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 242.7, -9.1 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 242.7, -9.1 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 283.3, 30.9 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 283.3, 30.9 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 279.3, 22.9 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 279.3, 22.9 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 283.2, 31.9 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 283.2, 31.9 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 292.2, 22.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 292.2, 22.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 257.6, -42.4 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 257.6, -42.4 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 253.6, -50.4 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 253.6, -50.4 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 257.6, -41.4 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 257.6, -41.4 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 266.6, -9.1 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 266.6, -9.1 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 269.6, -1.1 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 269.6, -1.1 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 265.6, -9.1 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 265.6, -9.1 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 269.6, -41.4 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 269.6, -41.4 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 278.5, -9.1 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 278.5, -9.1 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 281.5, -1.1 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 281.5, -1.1 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 277.5, -9.1 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 277.5, -9.1 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 281.5, -0.1 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 281.5, -0.1 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 328.1, 22.9 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 328.1, 22.9 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 331.1, 30.9 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 331.1, 30.9 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 327.1, 22.9 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 327.1, 22.9 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 331.1, 31.9 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 331.1, 31.9 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 302.5, -50.4 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 302.5, -50.4 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 305.4, -42.4 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 305.4, -42.4 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 301.4, -50.4 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 301.4, -50.4 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 305.4, -0.1 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 305.4, -0.1 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 314.4, -9.1 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 314.4, -9.1 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 307.4, 10.9 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 307.4, 10.9 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 139.2, -364.5 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 139.2, -364.5 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 148.8, -379.4 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 148.8, -379.4 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 158.7, -392.6 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 158.7, -392.6 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 169.2, -402.4 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 169.2, -402.4 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 180.6, -407.1 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 180.6, -407.1 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 193.3, -405.1 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 193.3, -405.1 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 207.6, -394.6 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 207.6, -394.6 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 223.7, -373.9 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 223.7, -373.9 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 242.1, -341.4 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 242.1, -341.4 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 256.3, -283.4 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 256.3, -283.4 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 273.2, -209.9 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 273.2, -209.9 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 275.8, -212.8 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 275.8, -212.8 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 278.2, -215.4 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 278.2, -215.4 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 280.5, -217.9 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 280.5, -217.9 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 282.6, -220.2 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 282.6, -220.2 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 284.6, -222.4 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 284.6, -222.4 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 286.4, -224.4 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 286.4, -224.4 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 288.1, -226.2 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 288.1, -226.2 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 289.7, -228 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 289.7, -228 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 291.2, -229.6 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 291.2, -229.6 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 292.5, -231 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 292.5, -231 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 293.7, -232.4 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 293.7, -232.4 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 294.9, -233.6 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 294.9, -233.6 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 295.9, -234.8 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 295.9, -234.8 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 296.9, -235.8 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 296.9, -235.8 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 297.7, -236.8 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 297.7, -236.8 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 298.5, -237.6 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 298.5, -237.6 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 299.2, -238.4 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 299.2, -238.4 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 299.9, -239.1 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 299.9, -239.1 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 300.5, -239.7 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 300.5, -239.7 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 301, -240.3 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 301, -240.3 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 301.4, -240.8 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 301.4, -240.8 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 301.8, -241.2 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 301.8, -241.2 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 302.2, -241.6 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 302.2, -241.6 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 302.5, -242 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 302.5, -242 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 302.8, -242.3 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 302.8, -242.3 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 303, -242.5 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 303, -242.5 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 303.2, -242.8 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 303.2, -242.8 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 303.4, -243 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 303.4, -243 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 303.6, -243.1 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 303.6, -243.1 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 315.7, -254.3 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 315.7, -254.3 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 306.8, -263.4 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 306.8, -263.4 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 307.9, -254.5 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 307.9, -254.5 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 313.9, -263.5 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 313.9, -263.5 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 316, -254.6 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 316, -254.6 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 307, -263.6 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 307, -263.6 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 308.1, -254.7 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 308.1, -254.7 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 314.1, -263.7 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 314.1, -263.7 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 316.1, -254.7 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 316.1, -254.7 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 307.1, -263.7 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 307.1, -263.7 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 308.1, -254.7 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 308.1, -254.7 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 314.1, -263.7 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 314.1, -263.7 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 314.1, -255.7 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 314.1, -255.7 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 307.1, -263.7 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 307.1, -263.7 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 308.1, -254.7 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 308.1, -254.7 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 314.1, -263.7 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 314.1, -263.7 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 314.1, -255.7 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 314.1, -255.7 , 0 );

setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_0 + 264 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 586 + OFFSET_X, 1, 0 );

setAlphaKey( spep_0 + 170 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 586 + OFFSET_X, 1, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 140, 0, 92, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--腕上げる
SE002 = playSeVer2( spep_0 + 22, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE002, 71 );

--気ダメ
SE003 = playSeVer2( spep_0 + 40, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE003, 162 );
SE004 = playSeVer2( spep_0 + 40, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE004, 79 );
SE005 = playSeVer2( spep_0 + 40, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE005, 67 );

--オーラ
SE006 = playSeVer2( spep_0 + 46, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 70, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 94, 1036, "", 0, 0, 0, -1);

--向かってくる
SE009 = playSeVer2( spep_0 + 118, 1068, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 120, 1182, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 120, 1117, "", 0, 0, 0, -1);

--気ダメ
SE012 = playSeVer2( spep_0 + 150, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE012, 67 );

--飛んでいく
SE013 = playSeVer2( spep_0 + 154, 1121, "",spep_0 + 274, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 154, SE013, 66 );
SE014 = playSeVer2( spep_0 + 170, 9, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 170, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE015, 224 );

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 186;  -- エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);

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
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--蹴り上げ
SE016 = playSeVer2( spep_0 + 248, 1004, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 258, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 258, SE017, 89 );
SE018 = playSeVer2( spep_0 + 258, 1153, "", 0, 0, 0, -1);

--連打
SE019 = playSeVer2( spep_0 + 286, 1425, "", 0, 0, 0, 0.5);
SE020 = playSeVer2( spep_0 + 286, 1010, "", 0, 0, 0, 0.5);
SE021 = playSeVer2( spep_0 + 308, 1009, "", 0, 0, 0, 0.5);
SE022 = playSeVer2( spep_0 + 340, 1010, "", 0, 0, 0, 0.5);
SE023 = playSeVer2( spep_0 + 374, 1425, "", 0, 0, 0, 0.5);
SE024 = playSeVer2( spep_0 + 374, 1009, "", 0, 0, 0, 0.5);
SE025 = playSeVer2( spep_0 + 400, 1010, "", 0, 0, 0, 0.5);
SE026 = playSeVer2( spep_0 + 430, 1009, "", 0, 0, 0, 0.5);

--敵飛んでいく
SE027 = playSeVer2( spep_0 + 460, 1027, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 460, 1121, "",spep_0 + 616, 0, 104, -1);
setSeVolumeByWorkId( spep_0 + 460, SE028, 72 );

--着地
SE029 = playSeVer2( spep_0 + 460, 63, "",spep_0 + 510, 0, 18, -1);
SE030 = playSeVer2( spep_0 + 482, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE030, 145 );
SE031 = playSeVer2( spep_0 + 488, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE031, 219 );

--構える
SE032 = playSeVer2( spep_0 + 526, 1003, "", 0, 0, 0, -1);

--気ダメ
SE033 = playSeVer2( spep_0 + 542, 1035, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 542, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 542, SE034, 72 );

--オーラ
SE035 = playSeVer2( spep_0 + 552, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE035, 79 );
SE036 = playSeVer2( spep_0 + 576, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE036, 79 );
SE038 = playSeVer2( spep_0 + 600, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 600, SE038, 79 );
SE039 = playSeVer2( spep_0 + 624, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 624, SE039, 79 );
SE041 = playSeVer2( spep_0 + 648, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 648, SE041, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 672

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

--かめはめ波溜め
SE040 = playSeVer2( spep_1 + 78, 1210, "",spep_1 + 164, 4, 18, -1);
setStartTimeMs( SE040,  2067 );

--イナヅマ
SE043 = playSeVer2( spep_1 + 78, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE043, 63 );

--オーラ
SE044 = playSeVer2( spep_1 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE044, 63 );

--かめはめ波溜め
SE045 = playSeVer2( spep_1 + 78, 1209, "", 0, 0, 0, -1);

------------------------------------------------------
-- かめはめ波の横構え〜フィニッシュまで ef_002
------------------------------------------------------
MAX_FRAME_2 = 294;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  -- かめはめ波の横構え〜フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish, 255 );
--[[
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- かめはめ波の横構え〜フィニッシュまで ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );
]]
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 294 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 120 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 120 + OFFSET_X, 1, 262.8, 330.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 262.8, 330.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 263.3, 390.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 263.3, 390.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 223.7, 310.8 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 223.7, 310.8 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 224, 370.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 224, 370.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 264.3, 330.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 264.3, 330.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 264.4, 390.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 264.4, 390.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 224.5, 309.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 224.5, 309.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 224.3, 367.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 224.3, 367.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 264, 326 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 264, 326 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 263.5, 383.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 263.5, 383.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 222.8, 300.5 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 222.8, 300.5 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 221.9, 356.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 221.9, 356.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 262.7, 322 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 262.7, 322 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 249.3, 362.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 249.3, 362.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 217.7, 288 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 217.7, 288 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 215.7, 324.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 215.7, 324.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 243.4, 284.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 243.4, 284.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 240.9, 282.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 240.9, 282.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 231.1, 263.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 231.1, 263.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 229, 260.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 229, 260.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 231.6, 238.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 231.6, 238.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 227.9, 231.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 227.9, 231.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 216.9, 207.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 216.9, 207.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 213.6, 198.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 213.6, 198.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 215, 170.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 215, 170.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 210.1, 157.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 210.1, 157.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 198, 127.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 198, 127.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 193.6, 112.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 193.6, 112.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 193.9, 77.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 193.9, 77.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 100.8, -92.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 100.8, -92.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 93.8, -100.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 93.8, -100.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 94.8, -91.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 94.8, -91.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 100.8, -100.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 100.8, -100.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 100.8, -92.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 100.8, -92.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 93.8, -100.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 93.8, -100.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 94.8, -91.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 94.8, -91.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 100.8, -100.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 100.8, -100.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 100.8, -92.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 100.8, -92.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 93.8, -100.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 93.8, -100.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 94.8, -91.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 94.8, -91.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 100.8, -100.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 100.8, -100.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 100.8, -92.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 100.8, -92.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 93.8, -100.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 93.8, -100.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 94.8, -91.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 94.8, -91.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 100.8, -100.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 100.8, -100.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 94.9, -91.2 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 100.9, -100.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 100.9, -92.2 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 93.9, -100.2 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 93.9, -100.2 , 0 );

setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 2.45, 2.45 );

setRotateKey( spep_2 + 120 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -12.8 );

setAlphaKey( spep_2 + 120 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 237 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 238 + OFFSET_X, 1, 232 );
setAlphaKey( spep_2 + 239 + OFFSET_X, 1, 232 );
setAlphaKey( spep_2 + 240 + OFFSET_X, 1, 209 );
setAlphaKey( spep_2 + 241 + OFFSET_X, 1, 209 );
setAlphaKey( spep_2 + 242 + OFFSET_X, 1, 185 );
setAlphaKey( spep_2 + 243 + OFFSET_X, 1, 185 );
setAlphaKey( spep_2 + 244 + OFFSET_X, 1, 162 );
setAlphaKey( spep_2 + 245 + OFFSET_X, 1, 162 );
setAlphaKey( spep_2 + 246 + OFFSET_X, 1, 139 );
setAlphaKey( spep_2 + 247 + OFFSET_X, 1, 139 );
setAlphaKey( spep_2 + 248 + OFFSET_X, 1, 116 );
setAlphaKey( spep_2 + 249 + OFFSET_X, 1, 116 );
setAlphaKey( spep_2 + 250 + OFFSET_X, 1, 93 );
setAlphaKey( spep_2 + 251 + OFFSET_X, 1, 93 );
setAlphaKey( spep_2 + 252 + OFFSET_X, 1, 70 );
setAlphaKey( spep_2 + 253 + OFFSET_X, 1, 70 );
setAlphaKey( spep_2 + 254 + OFFSET_X, 1, 46 );
setAlphaKey( spep_2 + 255 + OFFSET_X, 1, 46 );
setAlphaKey( spep_2 + 256 + OFFSET_X, 1, 23 );
setAlphaKey( spep_2 + 257 + OFFSET_X, 1, 23 );
setAlphaKey( spep_2 + 258 + OFFSET_X, 1, 0 );
setAlphaKey( spep_2 + 293 + OFFSET_X, 1, 0 );
setAlphaKey( spep_2 + 294 + OFFSET_X, 1, 255 );

setBlendColor( spep_2 + 120 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 190 + OFFSET_X, 1, 3, 0.1, 0.8, 0.9, 0.1 );
setBlendColor( spep_2 + 200 + OFFSET_X, 1, 3, 0.2, 0.8, 0.9, 0.2 );
setBlendColor( spep_2 + 206 + OFFSET_X, 1, 3, 0.2, 0.8, 0.9, 0.3 );
setBlendColor( spep_2 + 212 + OFFSET_X, 1, 3, 0.3, 0.8, 0.9, 0.4 );
setBlendColor( spep_2 + 218 + OFFSET_X, 1, 3, 0.4, 0.8, 0.9, 0.4 );
setBlendColor( spep_2 + 224 + OFFSET_X, 1, 3, 0.5, 0.8, 0.9, 0.4 );
setBlendColor( spep_2 + 230 + OFFSET_X, 1, 3, 0.6, 0.8, 0.9, 0.5 );
setBlendColor( spep_2 + 236 + OFFSET_X, 1, 3, 0.7, 0.8, 0.9, 0.5 );
setBlendColor( spep_2 + 242 + OFFSET_X, 1, 3, 0.7, 0.8, 0.9, 0.5 );
setBlendColor( spep_2 + 248 + OFFSET_X, 1, 3, 0.7, 0.8, 0.9, 0.6 );
setBlendColor( spep_2 + 254 + OFFSET_X, 1, 3, 0.7, 0.8, 0.9, 0.6 );
setBlendColor( spep_2 + 294 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--オーラ
SE046 = playSeVer2( spep_2 + 8, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE046, 63 );
SE047 = playSeVer2( spep_2 + 32, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE047, 63 );

--かめはめ波発射
SE048 = playSeVer2( spep_2 + 42, 1133, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 42, 1027, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 42, 1146, "", 0, 0, 0, -1);

--かめはめ波飛んでいく
SE051 = playSeVer2( spep_2 + 64, 1215, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 96, 1226, "", 0, 34, 0, -1);
setStartTimeMs( SE052,  400 );
SE054 = playSeVer2( spep_2 + 110, 1021, "", 0, 0, 0, -1);

--かめはめ波中
SE053 = playSeVer2( spep_2 + 106, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE053, 164 );

--敵呑まれる
SE055 = playSeVer2( spep_2 + 158, 1258, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 158, 1024, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 190 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 294

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- 開幕〜かめはめ波の正面構え ef_001
------------------------------------------------------
MAX_FRAME_0 = 672;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  -- 開幕〜かめはめ波の正面構え ef_001
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, start, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255 );
--[[
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- 開幕〜かめはめ波の正面構え ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 578;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 145, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 145, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 145, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 170 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 260 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 170 + OFFSET_X, 1,17 );
changeAnime( spep_0 + 244 + OFFSET_X, 1,18 );

setMoveKey( spep_0 + 170 + OFFSET_X, 1, -1557.2, -298.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -1557.2, -298.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -1560.2, -295.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -1560.2, -295.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -1443.9, -287.3 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -1443.9, -287.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -1443.9, -281.4 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -1443.9, -281.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -1339.6, -273 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -1339.6, -273 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -1339.6, -267 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -1339.6, -267 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -1223.3, -258.7 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -1223.3, -258.7 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -1223.3, -252.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -1223.3, -252.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -1119, -244.4 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -1119, -244.4 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -1119, -238.4 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -1119, -238.4 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -1002.8, -230.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -1002.8, -230.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -1002.8, -224.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -1002.8, -224.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -898.4, -215.8 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -898.4, -215.8 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -898.4, -209.8 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -898.4, -209.8 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -782.2, -201.4 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -782.2, -201.4 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -782.2, -195.5 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -782.2, -195.5 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -677.8, -187.2 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -677.8, -187.2 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -677.8, -181.2 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -677.8, -181.2 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -561.5, -172.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -561.5, -172.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -561.5, -167 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -561.5, -167 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -457.2, -158.6 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -457.2, -158.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -457.2, -152.7 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -457.2, -152.7 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -341.1, -144.3 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -341.1, -144.3 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -341.1, -138.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -341.1, -138.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -236.9, -130.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -236.9, -130.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -236.9, -124.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -236.9, -124.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -220.5, -126.5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -220.5, -126.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -215.3, -118.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -215.3, -118.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -216.1, -122.9 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -216.1, -122.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -210.9, -115.1 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -210.9, -115.1 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -199.7, -119.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -199.7, -119.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -194.5, -111.5 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -194.5, -111.5 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -195.3, -115.7 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -195.3, -115.7 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -190.1, -107.9 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -190.1, -107.9 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -179, -112 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -179, -112 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -173.8, -104.3 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -173.8, -104.3 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -174.5, -108.4 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -174.5, -108.4 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -365.2, -184 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -365.2, -184 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -362.4, -184 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -362.4, -184 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -343.2, -184 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -343.2, -184 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -286.9, -184 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -286.9, -184 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -245.2, -184 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -245.2, -184 , 0 );

setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 4.61, 4.61 );

setRotateKey( spep_0 + 170 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 264 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 586 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 264 + OFFSET_X, 1,7 );
changeAnime( spep_0 + 292 + OFFSET_X, 1,4 );
changeAnime( spep_0 + 294 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 302 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 310 + OFFSET_X, 1,4 );
changeAnime( spep_0 + 316 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 322 + OFFSET_X, 1,4 );
changeAnime( spep_0 + 324 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 332 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 340 + OFFSET_X, 1,4 );
changeAnime( spep_0 + 346 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 352 + OFFSET_X, 1,4 );
changeAnime( spep_0 + 354 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 362 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 370 + OFFSET_X, 1,4 );
changeAnime( spep_0 + 376 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 382 + OFFSET_X, 1,4 );
changeAnime( spep_0 + 384 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 392 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 400 + OFFSET_X, 1,4 );
changeAnime( spep_0 + 406 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 412 + OFFSET_X, 1,4 );
changeAnime( spep_0 + 414 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 422 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 430 + OFFSET_X, 1,4 );
changeAnime( spep_0 + 436 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 442 + OFFSET_X, 1,4 );
changeAnime( spep_0 + 444 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 452 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 460 + OFFSET_X, 1,4 );
changeAnime( spep_0 + 466 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 472 + OFFSET_X, 1,8 );

setMoveKey( spep_0 + 264 + OFFSET_X, 1, -79.3, -190.7 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -79.3, -190.7 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -93.3, -58.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -93.3, -58.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -67.4, -151.8 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -67.4, -151.8 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -82.9, -86.5 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -82.9, -86.5 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -103.2, -167 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -103.2, -167 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -123.9, -102.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -123.9, -102.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -133.5, -142 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -133.5, -142 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -172.9, -103.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -172.9, -103.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -189.1, -125.1 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -189.1, -125.1 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -211.3, -104 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -211.3, -104 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -255, -110.9 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -255, -110.9 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -315.9, -84.5 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -315.9, -84.5 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -366, -101.8 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -366, -101.8 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -429.7, -77 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -429.7, -77 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -41.4, -30.4 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -41.4, -30.4 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -54.3, -1.1 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -54.3, -1.1 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -50.3, -9.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -50.3, -9.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -54.3, -0.1 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -54.3, -0.1 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -63.3, -9.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -63.3, -9.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -103.9, 30.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -103.9, 30.9 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -99.9, 22.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -99.9, 22.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -103.9, 31.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -103.9, 31.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -112.9, 22.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -112.9, 22.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -78.3, -42.4 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -78.3, -42.4 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -74.2, -50.4 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -74.2, -50.4 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -78.2, -41.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -78.2, -41.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -87.2, -9.1 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -87.2, -9.1 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -90.2, -1.1 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -90.2, -1.1 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -86.2, -9.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -86.2, -9.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -90.2, -41.4 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -90.2, -41.4 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -99.2, -9.1 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -99.2, -9.1 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -102.2, -1.1 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -102.2, -1.1 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -98.1, -9.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -98.1, -9.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -102.1, -0.1 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -102.1, -0.1 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -148.7, 22.9 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -148.7, 22.9 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -151.7, 30.9 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -151.7, 30.9 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -147.7, 22.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -147.7, 22.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -151.7, 31.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -151.7, 31.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -123.1, -50.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -123.1, -50.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -126.1, -42.4 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -126.1, -42.4 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -122.1, -50.4 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -122.1, -50.4 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -126.1, -0.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -126.1, -0.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -135, -9.1 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -135, -9.1 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -138, -1.1 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -138, -1.1 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -134, -50.4 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -134, -50.4 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -138, -0.1 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -138, -0.1 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -147, -9.1 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -147, -9.1 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -150, -1.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -150, -1.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -146, -9.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -146, -9.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -187.6, 31.9 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -187.6, 31.9 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -196.6, 22.9 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -196.6, 22.9 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -199.6, 30.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -199.6, 30.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -195.5, 22.9 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -195.5, 22.9 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -161.9, -41.4 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -161.9, -41.4 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -170.9, -50.4 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -170.9, -50.4 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -173.9, -42.4 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -173.9, -42.4 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -169.9, -9.1 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -169.9, -9.1 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -173.9, -0.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -173.9, -0.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -182.9, -9.1 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -182.9, -9.1 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -185.9, -42.4 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -185.9, -42.4 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -181.9, -9.1 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -181.9, -9.1 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -185.8, -0.1 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -185.8, -0.1 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -194.8, -9.1 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -194.8, -9.1 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -197.8, -1.1 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -197.8, -1.1 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -231.4, 22.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -231.4, 22.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -235.4, 31.9 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -235.4, 31.9 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -244.4, 22.9 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -244.4, 22.9 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -247.4, 30.9 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -247.4, 30.9 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -205.8, -50.4 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -205.8, -50.4 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -209.8, -41.4 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -209.8, -41.4 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -218.8, -50.4 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -218.8, -50.4 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -221.7, -1.1 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -221.7, -1.1 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -217.7, -9.1 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -217.7, -9.1 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -221.7, -0.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -221.7, -0.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -230.7, -50.4 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -230.7, -50.4 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -233.7, -1.1 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -233.7, -1.1 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -229.7, -9.1 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -229.7, -9.1 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -233.7, -0.1 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -233.7, -0.1 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -242.7, -9.1 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -242.7, -9.1 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -283.3, 30.9 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -283.3, 30.9 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -279.3, 22.9 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -279.3, 22.9 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -283.2, 31.9 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -283.2, 31.9 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -292.2, 22.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -292.2, 22.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -257.6, -42.4 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -257.6, -42.4 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -253.6, -50.4 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -253.6, -50.4 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -257.6, -41.4 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -257.6, -41.4 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -266.6, -9.1 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -266.6, -9.1 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -269.6, -1.1 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -269.6, -1.1 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -265.6, -9.1 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -265.6, -9.1 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -269.6, -41.4 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -269.6, -41.4 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -278.5, -9.1 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -278.5, -9.1 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -281.5, -1.1 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -281.5, -1.1 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -277.5, -9.1 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -277.5, -9.1 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -281.5, -0.1 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -281.5, -0.1 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -328.1, 22.9 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -328.1, 22.9 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -331.1, 30.9 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -331.1, 30.9 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -327.1, 22.9 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -327.1, 22.9 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -331.1, 31.9 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -331.1, 31.9 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -302.5, -50.4 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -302.5, -50.4 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -305.4, -42.4 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -305.4, -42.4 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -301.4, -50.4 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -301.4, -50.4 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -305.4, -0.1 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -305.4, -0.1 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -314.4, -9.1 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -314.4, -9.1 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -307.4, 10.9 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -307.4, 10.9 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -139.2, -364.5 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -139.2, -364.5 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -148.8, -379.4 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -148.8, -379.4 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -158.7, -392.6 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -158.7, -392.6 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -169.2, -402.4 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -169.2, -402.4 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -180.6, -407.1 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -180.6, -407.1 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -193.3, -405.1 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -193.3, -405.1 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -207.6, -394.6 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -207.6, -394.6 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -223.7, -373.9 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -223.7, -373.9 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -242.1, -341.4 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -242.1, -341.4 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -256.3, -283.4 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -256.3, -283.4 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -273.2, -209.9 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, -273.2, -209.9 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -275.8, -212.8 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -275.8, -212.8 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -278.2, -215.4 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -278.2, -215.4 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -280.5, -217.9 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -280.5, -217.9 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -282.6, -220.2 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -282.6, -220.2 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -284.6, -222.4 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -284.6, -222.4 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -286.4, -224.4 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -286.4, -224.4 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -288.1, -226.2 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -288.1, -226.2 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -289.7, -228 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -289.7, -228 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -291.2, -229.6 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -291.2, -229.6 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -292.5, -231 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -292.5, -231 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -293.7, -232.4 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -293.7, -232.4 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -294.9, -233.6 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -294.9, -233.6 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -295.9, -234.8 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -295.9, -234.8 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -296.9, -235.8 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -296.9, -235.8 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -297.7, -236.8 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -297.7, -236.8 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -298.5, -237.6 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -298.5, -237.6 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -299.2, -238.4 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -299.2, -238.4 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -299.9, -239.1 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -299.9, -239.1 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -300.5, -239.7 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -300.5, -239.7 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -301, -240.3 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -301, -240.3 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -301.4, -240.8 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, -301.4, -240.8 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, -301.8, -241.2 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, -301.8, -241.2 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, -302.2, -241.6 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, -302.2, -241.6 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, -302.5, -242 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -302.5, -242 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, -302.8, -242.3 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, -302.8, -242.3 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, -303, -242.5 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, -303, -242.5 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -303.2, -242.8 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, -303.2, -242.8 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, -303.4, -243 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, -303.4, -243 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, -303.6, -243.1 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, -303.6, -243.1 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, -315.7, -254.3 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, -315.7, -254.3 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, -306.8, -263.4 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, -306.8, -263.4 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, -307.9, -254.5 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, -307.9, -254.5 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, -313.9, -263.5 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, -313.9, -263.5 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, -316, -254.6 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, -316, -254.6 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, -307, -263.6 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, -307, -263.6 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, -308.1, -254.7 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, -308.1, -254.7 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, -314.1, -263.7 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, -314.1, -263.7 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, -316.1, -254.7 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, -316.1, -254.7 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, -307.1, -263.7 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, -307.1, -263.7 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, -308.1, -254.7 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, -308.1, -254.7 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, -314.1, -263.7 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, -314.1, -263.7 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, -314.1, -255.7 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, -314.1, -255.7 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, -307.1, -263.7 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, -307.1, -263.7 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, -308.1, -254.7 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, -308.1, -254.7 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, -314.1, -263.7 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, -314.1, -263.7 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, -314.1, -255.7 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, -314.1, -255.7 , 0 );

setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_0 + 264 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 586 + OFFSET_X, 1, 0 );

setAlphaKey( spep_0 + 170 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 586 + OFFSET_X, 1, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 140, 0, 92, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--腕上げる
SE002 = playSeVer2( spep_0 + 22, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE002, 71 );

--気ダメ
SE003 = playSeVer2( spep_0 + 40, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE003, 162 );
SE004 = playSeVer2( spep_0 + 40, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE004, 79 );
SE005 = playSeVer2( spep_0 + 40, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE005, 67 );

--オーラ
SE006 = playSeVer2( spep_0 + 46, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 70, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 94, 1036, "", 0, 0, 0, -1);

--向かってくる
SE009 = playSeVer2( spep_0 + 118, 1068, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 120, 1182, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 120, 1117, "", 0, 0, 0, -1);

--気ダメ
SE012 = playSeVer2( spep_0 + 150, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE012, 67 );

--飛んでいく
SE013 = playSeVer2( spep_0 + 154, 1121, "",spep_0 + 274, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 154, SE013, 66 );
SE014 = playSeVer2( spep_0 + 170, 9, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 170, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE015, 224 );

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 186;  -- エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);

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
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--蹴り上げ
SE016 = playSeVer2( spep_0 + 248, 1004, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 258, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 258, SE017, 89 );
SE018 = playSeVer2( spep_0 + 258, 1153, "", 0, 0, 0, -1);

--連打
SE019 = playSeVer2( spep_0 + 286, 1425, "", 0, 0, 0, 0.5);
SE020 = playSeVer2( spep_0 + 286, 1010, "", 0, 0, 0, 0.5);
SE021 = playSeVer2( spep_0 + 308, 1009, "", 0, 0, 0, 0.5);
SE022 = playSeVer2( spep_0 + 340, 1010, "", 0, 0, 0, 0.5);
SE023 = playSeVer2( spep_0 + 374, 1425, "", 0, 0, 0, 0.5);
SE024 = playSeVer2( spep_0 + 374, 1009, "", 0, 0, 0, 0.5);
SE025 = playSeVer2( spep_0 + 400, 1010, "", 0, 0, 0, 0.5);
SE026 = playSeVer2( spep_0 + 430, 1009, "", 0, 0, 0, 0.5);

--敵飛んでいく
SE027 = playSeVer2( spep_0 + 460, 1027, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 460, 1121, "",spep_0 + 616, 0, 104, -1);
setSeVolumeByWorkId( spep_0 + 460, SE028, 72 );

--着地
SE029 = playSeVer2( spep_0 + 460, 63, "",spep_0 + 510, 0, 18, -1);
SE030 = playSeVer2( spep_0 + 482, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE030, 145 );
SE031 = playSeVer2( spep_0 + 488, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE031, 219 );

--構える
SE032 = playSeVer2( spep_0 + 526, 1003, "", 0, 0, 0, -1);

--気ダメ
SE033 = playSeVer2( spep_0 + 542, 1035, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 542, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 542, SE034, 72 );

--オーラ
SE035 = playSeVer2( spep_0 + 552, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE035, 79 );
SE036 = playSeVer2( spep_0 + 576, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE036, 79 );
SE038 = playSeVer2( spep_0 + 600, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 600, SE038, 79 );
SE039 = playSeVer2( spep_0 + 624, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 624, SE039, 79 );
SE041 = playSeVer2( spep_0 + 648, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 648, SE041, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 672

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

--かめはめ波溜め
SE040 = playSeVer2( spep_1 + 78, 1210, "",spep_1 + 164, 4, 18, -1);
setStartTimeMs( SE040,  2067 );

--イナヅマ
SE043 = playSeVer2( spep_1 + 78, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE043, 63 );

--オーラ
SE044 = playSeVer2( spep_1 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE044, 63 );

--かめはめ波溜め
SE045 = playSeVer2( spep_1 + 78, 1209, "", 0, 0, 0, -1);

------------------------------------------------------
-- かめはめ波の横構え〜フィニッシュまで ef_002
------------------------------------------------------
MAX_FRAME_2 = 294;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  -- かめはめ波の横構え〜フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish, 255 );
--[[
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- かめはめ波の横構え〜フィニッシュまで ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );
]]
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 294 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 120 + OFFSET_X, 1,8 );

setMoveKey( spep_2 + 120 + OFFSET_X, 1, -262.8, 330.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -262.8, 330.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -263.3, 390.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -263.3, 390.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -223.7, 310.8 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -223.7, 310.8 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -224, 370.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -224, 370.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -264.3, 330.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -264.3, 330.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -264.4, 390.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -264.4, 390.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -224.5, 309.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -224.5, 309.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -224.3, 367.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -224.3, 367.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -264, 326 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -264, 326 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -263.5, 383.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -263.5, 383.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -222.8, 300.5 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -222.8, 300.5 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -221.9, 356.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -221.9, 356.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -262.7, 322 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -262.7, 322 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -249.3, 362.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -249.3, 362.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -217.7, 288 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -217.7, 288 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -215.7, 324.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -215.7, 324.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -243.4, 284.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -243.4, 284.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -240.9, 282.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -240.9, 282.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -231.1, 263.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -231.1, 263.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -229, 260.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -229, 260.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -231.6, 238.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -231.6, 238.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -227.9, 231.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -227.9, 231.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -216.9, 207.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -216.9, 207.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -213.6, 198.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -213.6, 198.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -215, 170.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -215, 170.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -210.1, 157.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -210.1, 157.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -198, 127.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -198, 127.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -193.6, 112.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -193.6, 112.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -193.9, 77.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -193.9, 77.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -100.8, -92.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -100.8, -92.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -93.8, -100.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -93.8, -100.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -94.8, -91.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -94.8, -91.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -100.8, -100.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -100.8, -100.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -100.8, -92.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -100.8, -92.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -93.8, -100.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -93.8, -100.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -94.8, -91.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -94.8, -91.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -100.8, -100.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -100.8, -100.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -100.8, -92.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -100.8, -92.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -93.8, -100.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -93.8, -100.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -94.8, -91.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -94.8, -91.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -100.8, -100.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -100.8, -100.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -100.8, -92.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -100.8, -92.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -93.8, -100.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -93.8, -100.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -94.8, -91.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -94.8, -91.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -100.8, -100.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -100.8, -100.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -94.9, -91.2 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -100.9, -100.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -100.9, -92.2 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -93.9, -100.2 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -93.9, -100.2 , 0 );

setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 2.45, 2.45 );

setRotateKey( spep_2 + 120 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 12.8 );

setAlphaKey( spep_2 + 120 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 237 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 238 + OFFSET_X, 1, 232 );
setAlphaKey( spep_2 + 239 + OFFSET_X, 1, 232 );
setAlphaKey( spep_2 + 240 + OFFSET_X, 1, 209 );
setAlphaKey( spep_2 + 241 + OFFSET_X, 1, 209 );
setAlphaKey( spep_2 + 242 + OFFSET_X, 1, 185 );
setAlphaKey( spep_2 + 243 + OFFSET_X, 1, 185 );
setAlphaKey( spep_2 + 244 + OFFSET_X, 1, 162 );
setAlphaKey( spep_2 + 245 + OFFSET_X, 1, 162 );
setAlphaKey( spep_2 + 246 + OFFSET_X, 1, 139 );
setAlphaKey( spep_2 + 247 + OFFSET_X, 1, 139 );
setAlphaKey( spep_2 + 248 + OFFSET_X, 1, 116 );
setAlphaKey( spep_2 + 249 + OFFSET_X, 1, 116 );
setAlphaKey( spep_2 + 250 + OFFSET_X, 1, 93 );
setAlphaKey( spep_2 + 251 + OFFSET_X, 1, 93 );
setAlphaKey( spep_2 + 252 + OFFSET_X, 1, 70 );
setAlphaKey( spep_2 + 253 + OFFSET_X, 1, 70 );
setAlphaKey( spep_2 + 254 + OFFSET_X, 1, 46 );
setAlphaKey( spep_2 + 255 + OFFSET_X, 1, 46 );
setAlphaKey( spep_2 + 256 + OFFSET_X, 1, 23 );
setAlphaKey( spep_2 + 257 + OFFSET_X, 1, 23 );
setAlphaKey( spep_2 + 258 + OFFSET_X, 1, 0 );
setAlphaKey( spep_2 + 293 + OFFSET_X, 1, 0 );
setAlphaKey( spep_2 + 294 + OFFSET_X, 1, 255 );

setBlendColor( spep_2 + 120 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 190 + OFFSET_X, 1, 3, 0.1, 0.8, 0.9, 0.1 );
setBlendColor( spep_2 + 200 + OFFSET_X, 1, 3, 0.2, 0.8, 0.9, 0.2 );
setBlendColor( spep_2 + 206 + OFFSET_X, 1, 3, 0.2, 0.8, 0.9, 0.3 );
setBlendColor( spep_2 + 212 + OFFSET_X, 1, 3, 0.3, 0.8, 0.9, 0.4 );
setBlendColor( spep_2 + 218 + OFFSET_X, 1, 3, 0.4, 0.8, 0.9, 0.4 );
setBlendColor( spep_2 + 224 + OFFSET_X, 1, 3, 0.5, 0.8, 0.9, 0.4 );
setBlendColor( spep_2 + 230 + OFFSET_X, 1, 3, 0.6, 0.8, 0.9, 0.5 );
setBlendColor( spep_2 + 236 + OFFSET_X, 1, 3, 0.7, 0.8, 0.9, 0.5 );
setBlendColor( spep_2 + 242 + OFFSET_X, 1, 3, 0.7, 0.8, 0.9, 0.5 );
setBlendColor( spep_2 + 248 + OFFSET_X, 1, 3, 0.7, 0.8, 0.9, 0.6 );
setBlendColor( spep_2 + 254 + OFFSET_X, 1, 3, 0.7, 0.8, 0.9, 0.6 );
setBlendColor( spep_2 + 294 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--オーラ
SE046 = playSeVer2( spep_2 + 8, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE046, 63 );
SE047 = playSeVer2( spep_2 + 32, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE047, 63 );

--かめはめ波発射
SE048 = playSeVer2( spep_2 + 42, 1133, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 42, 1027, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 42, 1146, "", 0, 0, 0, -1);

--かめはめ波飛んでいく
SE051 = playSeVer2( spep_2 + 64, 1215, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 96, 1226, "", 0, 34, 0, -1);
setStartTimeMs( SE052,  400 );
SE054 = playSeVer2( spep_2 + 110, 1021, "", 0, 0, 0, -1);

--かめはめ波中
SE053 = playSeVer2( spep_2 + 106, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE053, 164 );

--敵呑まれる
SE055 = playSeVer2( spep_2 + 158, 1258, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 158, 1024, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 190 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 294

end
