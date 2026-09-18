--4030620:UR_孫悟天(幼年期)+トランクス(幼年期)_必殺技：かめはめ波
--sp_effect_a1_00481
--sp2836

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 163652; --対峙〜蹴り：前 ef_001
SP_01b = 163653; --対峙〜蹴り：後 ef_001b
SP_02  = 163654; --かめはめ波〜爆発：前 ef_002
SP_02b = 163655; --かめはめ波〜爆発：後 ef_002b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[
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
]]

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 対峙〜蹴り
-------------------------------------------------
MAX_FRAME_0 = 250;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 対峙〜蹴り：前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 対峙〜蹴り：後(ef_001b)
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
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -52, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -52, 515.5 , 0 );
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


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 112 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 338, -100 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 336.2, -100 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 336.2, -100 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 334.6, -100 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 334.6, -100 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 333.1, -100 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 333.1, -100 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 331.7, -100 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 331.7, -100 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 330.3, -100 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 330.3, -100 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 329.1, -100 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 329.1, -100 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 328, -100 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 328, -100 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 327, -100 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 327, -100 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 326, -100 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 326, -100 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 325.1, -100 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 325.1, -100 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 324.3, -100 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 324.3, -100 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 323.6, -100 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 323.6, -100 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 322.9, -100 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 322.9, -100 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 322.3, -100 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 322.3, -100 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 321.8, -100 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 321.8, -100 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 321.3, -100 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 321.3, -100 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 320.8, -100 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 320.8, -100 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 320.4, -100 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 320.4, -100 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 320.1, -100 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 320.1, -100 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 319.8, -100 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 319.8, -100 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 319.5, -100 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 319.5, -100 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 319.3, -100 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 319.3, -100 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 319, -100 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 319, -100 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 318.9, -100 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 318.9, -100 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 318.7, -100 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 318.7, -100 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 318.6, -100 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 318.6, -100 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 318.4, -100 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 318.4, -100 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 318.3, -100 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 318.3, -100 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 318.2, -100 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 318.2, -100 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 318.1, -100 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 318.1, -100 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 318, -100 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 318, -100 , 0 );

setScaleKey( spep_0 + 0, 1, 5, 5 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 5, 5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_0 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 230 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 150 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 164 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 220 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 150 + OFFSET_X, 1, 127, 46 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 127, 46 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 127.1, 46 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 127.1, 46 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 127.8, 46 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 127.8, 46 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 129.5, 45.8 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 129.5, 45.8 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 132.7, 45.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 132.7, 45.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 137.3, 45.3 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 137.3, 45.3 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 146.9, 44.8 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 146.9, 44.8 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 137, 44 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 137, 44 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 98.3, 44 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 98.3, 44 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 119.6, 64 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 119.6, 64 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 120.8, 24 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 120.8, 24 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 132.1, 44 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 132.1, 44 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 113.4, 44 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 113.4, 44 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 124.7, 54 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 124.7, 54 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 125.9, 34 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 125.9, 34 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 127.2, 44 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 127.2, 44 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 128.5, 44 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 128.5, 44 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 129.8, 44 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 129.8, 44 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 131.1, 44 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 131.1, 44 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 132.3, 44 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 132.3, 44 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 133.6, 44 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 133.6, 44 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 134.9, 44 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 134.9, 44 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 136.2, 44 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 136.2, 44 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 137.4, 44 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 137.4, 44 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 138.7, 44 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 138.7, 44 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 140, 44 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 140, 44 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 141.3, 44 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 141.3, 44 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 142.6, 44 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 142.6, 44 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 143.8, 44 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 143.8, 44 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 145.1, 44 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 145.1, 44 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 146.4, 44 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 146.4, 44 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 147.7, 44 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 147.7, 44 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 148.9, 44 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 148.9, 44 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 150.2, 44 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 150.2, 44 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 151.5, 44 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 151.5, 44 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 122, 5 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 122, 5 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 351.3, 5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 351.3, 5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 640.5, 25 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 640.5, 25 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 909.8, -15 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 909.8, -15 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 1189, 5 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 1189, 5 , 0 );

setScaleKey( spep_0 + 150 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.4, 2.4 );

setRotateKey( spep_0 + 150 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -14 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 62, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE003, 63 );

--向かってくる
SE004 = playSeVer2( spep_0 + 102, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE004, 148 );
SE005 = playSeVer2( spep_0 + 106, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 106, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 112, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE007, 143 );
SE008 = playSeVer2( spep_0 + 124, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE008, 157 );
SE009 = playSeVer2( spep_0 + 134, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE009, 170 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 136; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 2, SE009, 0);


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
--パンチ
SE010 = playSeVer2( spep_0 + 154, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 160, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 160, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE012, 63 );
SE013 = playSeVer2( spep_0 + 162, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE014 = playSeVer2( spep_0 + 190, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 208, 1189, "", 0, 0, 0, -1);	
SE016 = playSeVer2( spep_0 + 210, 1120, "",spep_0 + 264, 0, 12, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --250f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


--かめはめ波溜め
SE019 = playSeVer2( spep_1 + 84, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE019, 71 );	


-------------------------------------------------
-- かめはめ波〜爆発
-------------------------------------------------
MAX_FRAME_2 = 456;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波〜爆発：前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ波〜爆発：後(ef_002b)
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
--敵の動き
setDisp( spep_2 + 240 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 266 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 240 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 240 + OFFSET_X, 1, 207.6, 1.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 207.6, 1.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 207.5, 1.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 207.5, 1.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 207.1, 1.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 207.1, 1.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 205.9, 1.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 205.9, 1.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 203.7, 1.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 203.7, 1.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 199.9, 1.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 199.9, 1.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 194.3, 1.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 194.3, 1.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 186.4, 1.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 186.4, 1.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 176, 1.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 176, 1.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 162.6, 1.8 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 162.6, 1.8 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 145.9, 1.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 145.9, 1.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 125.5, 1.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 125.5, 1.8 , 0 );

setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 240 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -30 );


-- ** 音 ** --
--かめはめ波溜め
SE018 = playSeVer2( spep_2 + 12, 1210, "",spep_2 + 230, 8, 26, -1);
setStartTimeMs( SE018,  800 );
SE020 = playSeVer2( spep_2 + 14, 1209, "", 0, 0, 0, -1);

--構える
SE021 = playSeVer2( spep_2 + 126, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE021, 78 );

--かめはめ波発射
SE022 = playSeVer2( spep_2 + 192, 1145, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 196, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE023, 158 );

--爆発
SE024 = playSeVer2( spep_2 + 256, 1024, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 256, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 256, SE025, 87 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 270); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 456f -0f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 対峙〜蹴り
-------------------------------------------------
MAX_FRAME_0 = 250;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 対峙〜蹴り：前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 対峙〜蹴り：後(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -52, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -52, 515.5 , 0 );
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


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 112 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 2 );

setMoveKey( spep_0 + 0, 1, -338, -100 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -336.2, -100 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -336.2, -100 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -334.6, -100 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -334.6, -100 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -333.1, -100 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -333.1, -100 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -331.7, -100 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -331.7, -100 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -330.3, -100 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -330.3, -100 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -329.1, -100 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -329.1, -100 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -328, -100 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -328, -100 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -327, -100 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -327, -100 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -326, -100 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -326, -100 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -325.1, -100 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -325.1, -100 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -324.3, -100 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -324.3, -100 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -323.6, -100 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -323.6, -100 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -322.9, -100 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -322.9, -100 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -322.3, -100 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -322.3, -100 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -321.8, -100 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -321.8, -100 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -321.3, -100 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -321.3, -100 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -320.8, -100 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -320.8, -100 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -320.4, -100 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -320.4, -100 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -320.1, -100 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -320.1, -100 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -319.8, -100 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -319.8, -100 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -319.5, -100 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -319.5, -100 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -319.3, -100 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -319.3, -100 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -319, -100 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -319, -100 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -318.9, -100 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -318.9, -100 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -318.7, -100 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -318.7, -100 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -318.6, -100 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -318.6, -100 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -318.4, -100 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -318.4, -100 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -318.3, -100 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -318.3, -100 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -318.2, -100 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -318.2, -100 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -318.1, -100 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -318.1, -100 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -318, -100 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -318, -100 , 0 );

setScaleKey( spep_0 + 0, 1, 5, 5 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 5, 5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_0 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 230 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 150 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 164 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 220 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 150 + OFFSET_X, 1, -127, 46 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -127, 46 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -127.1, 46 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -127.1, 46 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -127.8, 46 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -127.8, 46 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -129.5, 45.8 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -129.5, 45.8 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -132.7, 45.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -132.7, 45.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -137.3, 45.3 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -137.3, 45.3 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -146.9, 44.8 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -146.9, 44.8 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -137, 44 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -137, 44 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -98.3, 44 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -98.3, 44 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -119.6, 64 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -119.6, 64 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -120.8, 24 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -120.8, 24 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -132.1, 44 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -132.1, 44 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -113.4, 44 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -113.4, 44 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -124.7, 54 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -124.7, 54 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -125.9, 34 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -125.9, 34 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -127.2, 44 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -127.2, 44 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -128.5, 44 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -128.5, 44 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -129.8, 44 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -129.8, 44 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -131.1, 44 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -131.1, 44 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -132.3, 44 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -132.3, 44 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -133.6, 44 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -133.6, 44 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -134.9, 44 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -134.9, 44 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -136.2, 44 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -136.2, 44 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -137.4, 44 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -137.4, 44 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -138.7, 44 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -138.7, 44 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -140, 44 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -140, 44 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -141.3, 44 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -141.3, 44 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -142.6, 44 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -142.6, 44 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -143.8, 44 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -143.8, 44 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -145.1, 44 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -145.1, 44 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -146.4, 44 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -146.4, 44 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -147.7, 44 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -147.7, 44 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -148.9, 44 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -148.9, 44 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -150.2, 44 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -150.2, 44 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -151.5, 44 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -151.5, 44 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -122, 5 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -122, 5 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -351.3, 5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -351.3, 5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -640.5, 25 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -640.5, 25 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -909.8, -15 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -909.8, -15 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -1189, 5 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -1189, 5 , 0 );

setScaleKey( spep_0 + 150 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.4, 2.4 );

setRotateKey( spep_0 + 150 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, 14 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 62, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE003, 63 );

--向かってくる
SE004 = playSeVer2( spep_0 + 102, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE004, 148 );
SE005 = playSeVer2( spep_0 + 106, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 106, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 112, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE007, 143 );
SE008 = playSeVer2( spep_0 + 124, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE008, 157 );
SE009 = playSeVer2( spep_0 + 134, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE009, 170 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 136; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 2, SE009, 0);


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
--パンチ
SE010 = playSeVer2( spep_0 + 154, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 160, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 160, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE012, 63 );
SE013 = playSeVer2( spep_0 + 162, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE014 = playSeVer2( spep_0 + 190, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 208, 1189, "", 0, 0, 0, -1);	
SE016 = playSeVer2( spep_0 + 210, 1120, "",spep_0 + 264, 0, 12, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --250f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


--かめはめ波溜め
SE019 = playSeVer2( spep_1 + 84, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE019, 71 );	


-------------------------------------------------
-- かめはめ波〜爆発
-------------------------------------------------
MAX_FRAME_2 = 456;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波〜爆発：前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ波〜爆発：後(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 + 240 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 266 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 240 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 240 + OFFSET_X, 1, -207.6, 1.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -207.6, 1.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -207.5, 1.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -207.5, 1.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -207.1, 1.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -207.1, 1.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -205.9, 1.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -205.9, 1.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -203.7, 1.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -203.7, 1.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -199.9, 1.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -199.9, 1.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -194.3, 1.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -194.3, 1.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -186.4, 1.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -186.4, 1.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -176, 1.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -176, 1.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -162.6, 1.8 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -162.6, 1.8 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -145.9, 1.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -145.9, 1.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -125.5, 1.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -125.5, 1.8 , 0 );

setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 240 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 30 );


-- ** 音 ** --
--かめはめ波溜め
SE018 = playSeVer2( spep_2 + 12, 1210, "",spep_2 + 230, 8, 26, -1);
setStartTimeMs( SE018,  800 );
SE020 = playSeVer2( spep_2 + 14, 1209, "", 0, 0, 0, -1);

--構える
SE021 = playSeVer2( spep_2 + 126, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE021, 78 );

--かめはめ波発射
SE022 = playSeVer2( spep_2 + 192, 1145, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 196, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE023, 158 );

--爆発
SE024 = playSeVer2( spep_2 + 256, 1024, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 256, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 256, SE025, 87 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 270); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 456f -0f


end