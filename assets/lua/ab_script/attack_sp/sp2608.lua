-- 1027330: LR_超サイヤ人孫悟飯(未来)_超必殺技：魔貫光殺砲
-- sp_effect_b4_00303
-- sp2608

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162221;  -- 開幕〜チャージが完了 ef_001
SP_002 = 162222;  -- 悟飯のバストアップ〜フィニッシュまで ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
--changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
--setDisp( 0, 1, 0 );

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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕〜チャージが完了 ef_001 (578F)
------------------------------------------------------
MAX_FRAME_0 = 578;

setupMovie(0, SP_001, 0, 1);

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 440;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 1 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 74 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1 + OFFSET_X, 1, 100 );

setMoveKey( spep_0 + 1 + OFFSET_X, 1, 193.4, 116 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 190.8, 114.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 188.2, 112.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 188.2, 112.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 185.7, 111.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 185.7, 111.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 183.3, 110 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 183.3, 110 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 181, 108.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 178.8, 107.2 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 176.6, 105.9 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 174.5, 104.7 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 172.5, 103.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 170.5, 102.3 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 168.6, 101.2 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 166.8, 100.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 165.1, 99 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 163.4, 98 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 161.8, 97.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 160.3, 96.2 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 158.9, 95.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 157.5, 94.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 156.2, 93.7 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 155, 93 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 153.9, 92.3 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 152.8, 91.7 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 151.8, 91.1 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 150.9, 90.5 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 150, 90 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 149.2, 89.6 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 148.5, 89.1 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 147.9, 88.8 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 147.4, 88.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 146.9, 88.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 146.5, 87.9 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 146.1, 87.7 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 145.9, 87.6 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 145.7, 87.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 145.6, 87.4 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 145.5, 87.4 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 145.5, 87.4 , 0 );

setScaleKey( spep_0 + 1 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 0.31, 0.31 );

setRotateKey( spep_0 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 74 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 162 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 244 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 162 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 162 + OFFSET_X, 1, 154.3, -4.7 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 154.3, -4.7 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 176.4, -24.3 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 176.4, -24.3 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 180.4, 6.1 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 180.4, 6.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 168.4, -33.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 168.4, -33.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 170.4, -3.1 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 170.4, -3.1 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 192.4, -22.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 192.4, -22.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 196.4, 7.6 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 196.4, 7.6 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 184.4, -32 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 184.4, -32 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 186.4, -1.6 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 186.4, -1.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 208.4, -21.2 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 208.4, -21.2 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 212.4, 9.2 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 212.4, 9.2 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 208.5, -10.4 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 208.5, -10.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 212.5, -10.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 212.5, -10.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 216.5, -9.7 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 220.5, -9.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 224.5, -8.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 228.5, -8.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 232.6, -8.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 236.6, -7.8 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 240.6, -7.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 244.6, -7.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 248.6, -6.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 252.7, -6.3 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 252.7, -6.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -6.8, -92.3 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -6.8, -92.3 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -3.8, -86.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -0.7, -80.8 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 2.3, -75.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 5.4, -69.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 8.4, -63.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 11.5, -57.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 14.5, -52.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 17.6, -46.3 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 20.6, -40.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 23.7, -34.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 26.7, -29.1 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 29.7, -23.4 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 32.8, -17.6 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 35.8, -11.9 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 38.9, -6.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 41.9, -0.4 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 45, 5.4 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 45, 5.4 , 0 );

setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 0.75, 0.75 );

setRotateKey( spep_0 + 162 + OFFSET_X, 1, 64.8 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, 64.8 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, 64.8 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, 8.6 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, 8.6 );

-- 敵の動き3
setDisp( spep_0 + 292 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 310 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 292 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 292 + OFFSET_X, 1, -57.4, -281.8 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -69.1, -323.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -104.6, -390.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -124.1, -427.2 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -131.5, -493.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -147, -530 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -182.6, -600.1 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -202.4, -641.3 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -214.3, -703.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -214.3, -703.8 , 0 );

setScaleKey( spep_0 + 292 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 2.38, 2.38 );

setRotateKey( spep_0 + 292 + OFFSET_X, 1, 100.4 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 100.4 );

-- 敵の動き4
setDisp( spep_0 + 332 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 363 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 332 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 332 + OFFSET_X, 1, 63.9, 166.5 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 66.9, 169.8 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 69.5, 172.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 71.2, 174.5 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 71.3, 174 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 68.8, 170.2 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 62.6, 161.3 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 51.2, 145.2 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 33.1, 119.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 6.3, 82.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -31.3, 30.2 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -82.2, -40.5 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -148.9, -133 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -234.3, -251.6 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -341.9, -400.7 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -475.1, -585.2 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -475.1, -585.2 , 0 );

setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 1.7, 1.7 );

setRotateKey( spep_0 + 332 + OFFSET_X, 1, -55.2 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -55.2 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -55.1 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, -54.8 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -54.3 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -53.7 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, -36.3 );

-- ** 音 ** --
--向かっていく
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
SE004 = playSeVer2( spep_0 + 6, 1011, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 12, 1117, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 50 );
SE006 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE006, 50 );
SE007 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE007, 50 );
SE011 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE011, 50 );

--振りかぶる
SE008 = playSeVer2( spep_0 + 68, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE008,  133 );
SE010 = playSeVer2( spep_0 + 66, 9, "",spep_0 + 120, 12, 14, -1);
setSeVolumeByWorkId( spep_0 + 66, SE010, 63 );
SE012 = playSeVer2( spep_0 + 72, 1004, "", 0, 0, 0, -1);

--向かっていく
SE009 = playSeVer2( spep_0 + 64, 1019, "",spep_0 + 116, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 64, SE009, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 90;  -- エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
-- stopSe( SP_dodge - 12, seInstance, 0 ); を必要に応じて入れる
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--オーラ
SE013 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE013, 50 );
SE016 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE016, 50 );
SE017 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE017, 50 );

--振りかぶる
SE014 = playSeVer2( spep_0 + 100, 1116, "",spep_0 + 148, 0, 18, -1);
setTimeStretch( SE014, 1.25, 30, 4 );
setSeVolumeByWorkId( spep_0 + 100, SE014, 150 );
SE015 = playSeVer2( spep_0 + 108, 1003, "", 0, 0, 0, -1);

--殴り飛ばす
SE018 = playSeVer2( spep_0 + 140, 1187, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 140, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE020 = playSeVer2( spep_0 + 176, 1121, "",spep_0 + 292, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 176, SE020, 68 );

--瞬間移動
SE021 = playSeVer2( spep_0 + 188, 1109, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 228, 1109, "", 0, 0, 0, -1);

--敵落ちる
SE022 = playSeVer2( spep_0 + 298, 1121, "",spep_0 + 414, 12, 28, -1);
setStartTimeMs( SE022,  1500 );
setPitch( spep_0 + 298, SE022, 200 );
setTimeStretch( SE022, 1.13, 30, 4 );

--蹴り落とす
SE024 = playSeVer2( spep_0 + 266, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE024, 178 );
SE025 = playSeVer2( spep_0 + 270, 1123, "", 0, 0, 0, -1);

--地面激突
SE026 = playSeVer2( spep_0 + 360, 1023, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 366, 1159, "", 0, 0, 0, 0.6);

--魔貫光殺砲溜め
SE027 = playSeVer2( spep_0 + 452, 1371, "",spep_0 + 598, 16, 18, 0.5);
setSeVolumeByWorkId( spep_0 + 452, SE027, 91 );
setStartTimeMs( SE027,  1533 );
setPitch( spep_0 + 452, SE027, -900 );
setTimeStretch( SE027, 0.4, 30, 4 );

--画面遷移
SE029 = playSeVer2( spep_0 + 402, 1072, "", 0, 0, 0, -1);

--オーラ
SE030 = playSeVer2( spep_0 + 428, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 428, SE030, 63 );
SE032 = playSeVer2( spep_0 + 452, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE032, 63 );
SE037 = playSeVer2( spep_0 + 476, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE037, 63 );
SE039 = playSeVer2( spep_0 + 500, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE039, 63 );
SE041 = playSeVer2( spep_0 + 524, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 524, SE041, 63 );
SE043 = playSeVer2( spep_0 + 548, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 548, SE043, 63 );
SE044 = playSeVer2( spep_0 + 572, 1036, "",spep_0 + 594, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 572, SE044, 63 );

--魔貫光殺砲溜め
SE033 = playSeVer2( spep_0 + 456, 1148, "",spep_0 + 542, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 456, SE033, 119 );
SE034 = playSeVer2( spep_0 + 456, 1038, "", 0, 0, 0, 0.6);
SE035 = playSeVer2( spep_0 + 456, 1122, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 456, SE035, 100 );
SE036 = playSeVer2( spep_0 + 472, 1026, "", 0, 0, 0, 0.6);
stopSeIfDoubleSpeed( spep_0 + 472, SE036 );
SE038 = playSeVer2( spep_0 + 480, 1243, "",spep_0 + 596, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 480, SE038, 120 );
setPitch( spep_0 + 480, SE038, 500 );
setTimeStretch( SE038, 1.33, 30, 4 );
SE040 = playSeVer2( spep_0 + 518, 1147, "",spep_0 + 600, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 518, SE040, 101 );
stopSeIfDoubleSpeed( spep_0 + 518, SE040 );

--腕構える
SE042 = playSeVer2( spep_0 + 548, 1003, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 578

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 悟飯のバストアップ〜フィニッシュまで ef_002 (318F)
------------------------------------------------------
MAX_FRAME_2 = 318;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 音 ** --
--発射前溜め
SE046 = playSeVer2( spep_2 + 0, 1147, "",spep_2 + 80, 0, 20, -1);
SE047 = playSeVer2( spep_2 + 0, 1243, "",spep_2 + 80, 0, 18, -1);
setPitch( spep_2 + 0, SE047, 500 );
setTimeStretch( SE047, 1.33, 30, 4 );

--オーラ
SE048 = playSeVer2( spep_2 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE048, 71 );
SE049 = playSeVer2( spep_2 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE049, 71 );
SE050 = playSeVer2( spep_2 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE050, 71 );
--SE057 = playSeVer2( spep_2 + 72, 1036, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_2 + 72, SE057, 71 );
--腕構える
SE057EX = playSeVer2( spep_2 + 10, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE057EX, 60 );

--魔貫光殺砲発射
SE051 = playSeVer2( spep_2 + 48, 1177, "",spep_2 + 214, 0, 24, -1);
setTimeStretch( SE051, 1.17, 30, 4 );
setSeVolumeByWorkId( spep_2 + 48, SE051, 130 );
SE052 = playSeVer2( spep_2 + 48, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE052, 126 );
SE053 = playSeVer2( spep_2 + 48, 1038, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 48, 1212, "",spep_2 + 224, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 48, SE054, 100 );
SE055 = playSeVer2( spep_2 + 48, 1249, "",spep_2 + 224, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 48, SE055, 120 );
SE056 = playSeVer2( spep_2 + 58, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE056, 151 );

--気弾飛んでいく
SE058 = playSeVer2( spep_2 + 132, 1360, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 132, SE058, 117 );

--爆発
SE059 = playSeVer2( spep_2 + 188, 1159, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 188, 1024, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 206, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 210 );
endPhase( spep_2 +  MAX_FRAME_2 - 2);  -- 316

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕〜チャージが完了 ef_001 (578F)
------------------------------------------------------
MAX_FRAME_0 = 578;

setupMovie(0, SP_001, 0, 1);

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
--spep_x = spep_0 + 440;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 1 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 74 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1 + OFFSET_X, 1,0 );

setMoveKey( spep_0 + 1 + OFFSET_X, 1, -193.4, 116 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -190.8, 114.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -188.2, 112.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -188.2, 112.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -185.7, 111.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -185.7, 111.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -183.3, 110 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -183.3, 110 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -181, 108.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -178.8, 107.2 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -176.6, 105.9 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -174.5, 104.7 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -172.5, 103.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -170.5, 102.3 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -168.6, 101.2 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -166.8, 100.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -165.1, 99 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -163.4, 98 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -161.8, 97.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -160.3, 96.2 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -158.9, 95.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -157.5, 94.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -156.2, 93.7 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -155, 93 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -153.9, 92.3 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -152.8, 91.7 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -151.8, 91.1 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -150.9, 90.5 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -150, 90 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -149.2, 89.6 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -148.5, 89.1 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -147.9, 88.8 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -147.4, 88.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -146.9, 88.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -146.5, 87.9 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -146.1, 87.7 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -145.9, 87.6 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -145.7, 87.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -145.6, 87.4 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -145.5, 87.4 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -145.5, 87.4 , 0 );

setScaleKey( spep_0 + 1 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 0.31, 0.31 );

setRotateKey( spep_0 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 74 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 162 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 244 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 162 + OFFSET_X, 1,5 );

setMoveKey( spep_0 + 162 + OFFSET_X, 1, -154.3, -4.7 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -154.3, -4.7 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -176.4, -24.3 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -176.4, -24.3 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -180.4, 6.1 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -180.4, 6.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -168.4, -33.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -168.4, -33.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -170.4, -3.1 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -170.4, -3.1 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -192.4, -22.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -192.4, -22.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -196.4, 7.6 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -196.4, 7.6 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -184.4, -32 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -184.4, -32 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -186.4, -1.6 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -186.4, -1.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -208.4, -21.2 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -208.4, -21.2 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -212.4, 9.2 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -212.4, 9.2 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -208.5, -10.4 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -208.5, -10.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -212.5, -10.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -212.5, -10.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -216.5, -9.7 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -220.5, -9.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -224.5, -8.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -228.5, -8.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -232.6, -8.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -236.6, -7.8 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -240.6, -7.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -244.6, -7.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -248.6, -6.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -252.7, -6.3 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -252.7, -6.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 6.8, -92.3 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 6.8, -92.3 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 3.8, -86.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 0.7, -80.8 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -2.3, -75.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -5.4, -69.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -8.4, -63.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -11.5, -57.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -14.5, -52.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -17.6, -46.3 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -20.6, -40.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -23.7, -34.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -26.7, -29.1 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -29.7, -23.4 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -32.8, -17.6 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -35.8, -11.9 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -38.9, -6.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -41.9, -0.4 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -45, 5.4 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -45, 5.4 , 0 );

setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 0.75, 0.75 );

setRotateKey( spep_0 + 162 + OFFSET_X, 1, -64.8 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -64.8 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -64.8 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -8.6 );

-- 敵の動き3
setDisp( spep_0 + 292 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 310 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 292 + OFFSET_X, 1,8 );

setMoveKey( spep_0 + 292 + OFFSET_X, 1, 57.4, -281.8 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 69.1, -323.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 104.6, -390.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 124.1, -427.2 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 131.5, -493.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 147, -530 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 182.6, -600.1 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 202.4, -641.3 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 214.3, -703.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 214.3, -703.8 , 0 );

setScaleKey( spep_0 + 292 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 2.38, 2.38 );

setRotateKey( spep_0 + 292 + OFFSET_X, 1, -100.4 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -100.4 );

-- 敵の動き4
setDisp( spep_0 + 332 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 363 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 332 + OFFSET_X, 1, 107  );

setMoveKey( spep_0 + 332 + OFFSET_X, 1, -63.9, 166.5 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -66.9, 169.8 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -69.5, 172.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -71.2, 174.5 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -71.3, 174 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -68.8, 170.2 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -62.6, 161.3 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -51.2, 145.2 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -33.1, 119.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -6.3, 82.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 31.3, 30.2 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 82.2, -40.5 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 148.9, -133 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 234.3, -251.6 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 341.9, -400.7 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 475.1, -585.2 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 475.1, -585.2 , 0 );

setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 1.7, 1.7 );

setRotateKey( spep_0 + 332 + OFFSET_X, 1, 55.2 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, 55.2 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, 55.1 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 54.8 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, 54.3 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 52.8 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, 49.8 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 47.5 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, 44.6 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, 40.9 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, 36.3 );

-- ** 音 ** --
--向かっていく
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
SE004 = playSeVer2( spep_0 + 6, 1011, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 12, 1117, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 50 );
SE006 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE006, 50 );
SE007 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE007, 50 );
SE011 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE011, 50 );

--振りかぶる
SE008 = playSeVer2( spep_0 + 68, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE008,  133 );
SE010 = playSeVer2( spep_0 + 66, 9, "",spep_0 + 120, 12, 14, -1);
setSeVolumeByWorkId( spep_0 + 66, SE010, 63 );
SE012 = playSeVer2( spep_0 + 72, 1004, "", 0, 0, 0, -1);

--向かっていく
SE009 = playSeVer2( spep_0 + 64, 1019, "",spep_0 + 116, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 64, SE009, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 90;  -- エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
-- stopSe( SP_dodge - 12, seInstance, 0 ); を必要に応じて入れる
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--オーラ
SE013 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE013, 50 );
SE016 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE016, 50 );
SE017 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE017, 50 );

--振りかぶる
SE014 = playSeVer2( spep_0 + 100, 1116, "",spep_0 + 148, 0, 18, -1);
setTimeStretch( SE014, 1.25, 30, 4 );
setSeVolumeByWorkId( spep_0 + 100, SE014, 150 );
SE015 = playSeVer2( spep_0 + 108, 1003, "", 0, 0, 0, -1);

--殴り飛ばす
SE018 = playSeVer2( spep_0 + 140, 1187, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 140, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE020 = playSeVer2( spep_0 + 176, 1121, "",spep_0 + 292, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 176, SE020, 68 );

--瞬間移動
SE021 = playSeVer2( spep_0 + 188, 1109, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 228, 1109, "", 0, 0, 0, -1);

--敵落ちる
SE022 = playSeVer2( spep_0 + 298, 1121, "",spep_0 + 414, 12, 28, -1);
setStartTimeMs( SE022,  1500 );
setPitch( spep_0 + 298, SE022, 200 );
setTimeStretch( SE022, 1.13, 30, 4 );

--蹴り落とす
SE024 = playSeVer2( spep_0 + 266, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE024, 178 );
SE025 = playSeVer2( spep_0 + 270, 1123, "", 0, 0, 0, -1);

--地面激突
SE026 = playSeVer2( spep_0 + 360, 1023, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 366, 1159, "", 0, 0, 0, 0.6);

--魔貫光殺砲溜め
SE027 = playSeVer2( spep_0 + 452, 1371, "",spep_0 + 598, 16, 18, 0.5);
setSeVolumeByWorkId( spep_0 + 452, SE027, 91 );
setStartTimeMs( SE027,  1533 );
setPitch( spep_0 + 452, SE027, -900 );
setTimeStretch( SE027, 0.4, 30, 4 );

--画面遷移
SE029 = playSeVer2( spep_0 + 402, 1072, "", 0, 0, 0, -1);

--オーラ
SE030 = playSeVer2( spep_0 + 428, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 428, SE030, 63 );
SE032 = playSeVer2( spep_0 + 452, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE032, 63 );
SE037 = playSeVer2( spep_0 + 476, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE037, 63 );
SE039 = playSeVer2( spep_0 + 500, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE039, 63 );
SE041 = playSeVer2( spep_0 + 524, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 524, SE041, 63 );
SE043 = playSeVer2( spep_0 + 548, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 548, SE043, 63 );
SE044 = playSeVer2( spep_0 + 572, 1036, "",spep_0 + 594, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 572, SE044, 63 );

--魔貫光殺砲溜め
SE033 = playSeVer2( spep_0 + 456, 1148, "",spep_0 + 542, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 456, SE033, 119 );
SE034 = playSeVer2( spep_0 + 456, 1038, "", 0, 0, 0, 0.6);
SE035 = playSeVer2( spep_0 + 456, 1122, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 456, SE035, 100 );
SE036 = playSeVer2( spep_0 + 472, 1026, "", 0, 0, 0, 0.6);
stopSeIfDoubleSpeed( spep_0 + 472, SE036 );
SE038 = playSeVer2( spep_0 + 480, 1243, "",spep_0 + 596, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 480, SE038, 120 );
setPitch( spep_0 + 480, SE038, 500 );
setTimeStretch( SE038, 1.33, 30, 4 );
SE040 = playSeVer2( spep_0 + 518, 1147, "",spep_0 + 600, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 518, SE040, 101 );
stopSeIfDoubleSpeed( spep_0 + 518, SE040 );

--腕構える
SE042 = playSeVer2( spep_0 + 548, 1003, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 578

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 悟飯のバストアップ〜フィニッシュまで ef_002 (318F)
------------------------------------------------------
MAX_FRAME_2 = 318;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 音 ** --
--発射前溜め
SE046 = playSeVer2( spep_2 + 0, 1147, "",spep_2 + 80, 0, 20, -1);
SE047 = playSeVer2( spep_2 + 0, 1243, "",spep_2 + 80, 0, 18, -1);
setPitch( spep_2 + 0, SE047, 500 );
setTimeStretch( SE047, 1.33, 30, 4 );

--オーラ
SE048 = playSeVer2( spep_2 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE048, 71 );
SE049 = playSeVer2( spep_2 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE049, 71 );
SE050 = playSeVer2( spep_2 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE050, 71 );
--SE057 = playSeVer2( spep_2 + 72, 1036, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_2 + 72, SE057, 71 );
--腕構える
SE057EX = playSeVer2( spep_2 + 10, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE057EX, 60 );

--魔貫光殺砲発射
SE051 = playSeVer2( spep_2 + 48, 1177, "",spep_2 + 214, 0, 24, -1);
setTimeStretch( SE051, 1.17, 30, 4 );
setSeVolumeByWorkId( spep_2 + 48, SE051, 130 );
SE052 = playSeVer2( spep_2 + 48, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE052, 126 );
SE053 = playSeVer2( spep_2 + 48, 1038, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 48, 1212, "",spep_2 + 224, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 48, SE054, 100 );
SE055 = playSeVer2( spep_2 + 48, 1249, "",spep_2 + 224, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 48, SE055, 120 );
SE056 = playSeVer2( spep_2 + 58, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE056, 151 );

--気弾飛んでいく
SE058 = playSeVer2( spep_2 + 132, 1360, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 132, SE058, 117 );

--爆発
SE059 = playSeVer2( spep_2 + 188, 1159, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 188, 1024, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 206, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 210 );
endPhase( spep_2 +  MAX_FRAME_2 - 2);  -- 316

end