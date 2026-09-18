-- 1027800: UR_トワ_必殺技：ヘルサプライズ
-- sp_effect_a5_00019
-- sp2619

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162371;  -- 登場 ef_001
SP_002 = 162373;  -- フィニッシュ ef_002
SP_002_back = 162375;  -- フィニッシュ　裏側 ef_002_back

-- 敵側
SP_001_r = 162372;  -- 登場　敵側 ef_001_r
SP_002_r = 162374;  -- フィニッシュ　敵側 ef_002_r
SP_002_back_r = 162376;  -- フィニッシュ　敵側　裏側 ef_002_back_r

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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 登場 ef_001
------------------------------------------------------
MAX_FRAME_0 = 118;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
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
spep_x = spep_0 + 0;

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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--手のひら光る
SE002 = playSeVer2( spep_0 + 36, 1221, "",spep_0 + 142, 0, 18, -1);
SE003 = playSeVer2( spep_0 + 36, 1240, "",spep_0 + 124, 0, 24, 0.6);
setPitch( spep_0 + 36, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
setSeVolumeByWorkId( spep_0 + 36, SE003, 120 );
SE004 = playSeVer2( spep_0 + 36, 12, "",spep_0 + 144, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 36, SE004, 86 );
setPitch( spep_0 + 36, SE004, -300 );
setTimeStretch( SE004, 0.8, 30, 4 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 118

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 1);

entryFade( spep_1 + 90, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 630;

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
SP_02_back = entryEffect( spep_2 + 0, SP_002_back, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02_back, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02_back, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02_back, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02_back, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02_back, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02_back, 0 );
setEffAlphaKey( spep_2 + 0, SP_02_back, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02_back, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 130 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 220 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 130 + OFFSET_X, 1, 117 );

setMoveKey( spep_2 + 130 + OFFSET_X, 1, -5.4, 53.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -5.4, 53.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -5.5, 53.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -5.5, 53.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -5.7, 52.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -5.7, 52.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -5.8, 52.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -5.8, 52.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -6, 52.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -6, 52.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -6.1, 52.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -6.1, 52.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -6.3, 52 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -6.3, 52 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -6.4, 51.7 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -6.4, 51.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -6.5, 51.5 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -6.5, 51.5 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -6.7, 51.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -6.7, 51.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -6.8, 51 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -6.8, 51 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -6.9, 50.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -6.9, 50.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -7.1, 50.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -7.1, 50.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -7.2, 50.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -7.2, 50.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -7.3, 50 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -7.3, 50 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -7.5, 49.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -7.5, 49.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -7.6, 49.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -7.6, 49.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -7.7, 49.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -7.7, 49.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -7.8, 49 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -7.8, 49 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -8, 48.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -8, 48.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -8.1, 48.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -8.1, 48.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -8.2, 48.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -8.2, 48.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -8.3, 48 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -8.3, 48 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -8.4, 47.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -8.4, 47.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -8.5, 47.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -8.5, 47.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -8.7, 47.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -8.7, 47.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -8.8, 47 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -8.8, 47 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -8.9, 46.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -8.9, 46.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -9, 46.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -9, 46.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -9.1, 46.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -9.1, 46.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -9.2, 46 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -9.2, 46 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -9.3, 45.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -9.3, 45.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -9.4, 45.4 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -9.4, 45.4 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -9.5, 45.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -9.5, 45.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -9.6, 44.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -9.6, 44.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -9.7, 44.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -9.7, 44.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -9.8, 44.4 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -9.8, 44.4 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -9.9, 44.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -9.9, 44.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -10, 43.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -10, 43.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -10.1, 43.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -10.1, 43.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -10.2, 43.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -10.2, 43.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -10.2, 43.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -10.2, 43.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -10.3, 42.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -10.3, 42.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -10.4, 42.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -10.4, 42.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -10.5, 42.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -10.5, 42.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -10.5, 42.4 , 0 );

setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.86, 0.86 );

setRotateKey( spep_2 + 130 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 13 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 13 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 7 );

-- 敵の動き2
setDisp( spep_2 + 430 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 528 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 430 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 452 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 478 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 500 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 430 + OFFSET_X, 1, 28.4, 13.6 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 28.4, 13.6 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 28.4, 13.6 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 40.4, -4.4 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 40.4, -4.4 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 10.4, 33.6 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 10.4, 33.6 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 6.4, 9.6 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 6.4, 9.6 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 48.4, 15.6 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 48.4, 15.6 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 10.4, -2.4 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 10.4, -2.4 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 44.4, 29.6 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 44.4, 29.6 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 12.4, 23.6 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 12.4, 23.6 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 40.4, -4.4 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 40.4, -4.4 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 10.4, 33.6 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 10.4, 33.6 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 6.4, 9.6 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 6.4, 9.6 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 48.4, 15.6 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 48.4, 15.6 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -21.6, 45.6 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -21.6, 45.6 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 12.4, 77.6 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 12.4, 77.6 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -19.6, 71.6 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -19.6, 71.6 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 28.4, 91.6 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 28.4, 91.6 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 30.4, 27.6 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 30.4, 27.6 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -35.7, 93.6 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -35.7, 93.6 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 38.4, 93.6 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 38.4, 93.6 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -29.6, 17.6 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -29.6, 17.6 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -3.6, 61.6 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -3.6, 61.6 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -23.6, 109.6 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -23.6, 109.6 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -73.7, 51.6 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -73.7, 51.6 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 52.4, 79.6 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 52.4, 79.6 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 16.3, 27.9 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 16.3, 27.9 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -22.8, 119.9 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -22.8, 119.9 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -31.9, 42 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -31.9, 42 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 15.1, 5.9 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 15.1, 5.9 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 30, 120 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 30, 120 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -41.1, 14 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -41.1, 14 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 61.9, 112 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 61.9, 112 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 50.8, 2 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 50.8, 2 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -42.3, 94 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -42.3, 94 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 12.6, 132.1 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 12.6, 132.1 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -12.5, -6 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -12.5, -6 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 88.5, 46 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 88.5, 46 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, -28.6, 34.1 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, -28.6, 34.1 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 34.3, 62.1 , 0 );

setScaleKey( spep_2 + 430 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 499 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 500 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 501 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 502 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 503 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 505 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 506 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 509 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 510 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 517 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 518 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 527 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 1.56, 1.56 );

setRotateKey( spep_2 + 430 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 499 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 500 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 528 + OFFSET_X, 1, 45 );

-- 敵の動き3
setDisp( spep_2 + 538 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 630 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 538 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 538 + OFFSET_X, 1, 2.4, -15.8 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 2.4, -15.8 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 14.5, -20.8 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 14.5, -20.8 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 25.8, -25.5 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 25.8, -25.5 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 36.5, -29.8 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 36.5, -29.8 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 46.4, -33.9 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 46.4, -33.9 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 55.7, -37.8 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 55.7, -37.8 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 64.4, -41.3 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 64.4, -41.3 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 72.4, -44.6 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 72.4, -44.6 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 79.8, -47.7 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 79.8, -47.7 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 86.7, -50.5 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 86.7, -50.5 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 93, -53.1 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 93, -53.1 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 98.8, -55.5 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 98.8, -55.5 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 104.1, -57.7 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 104.1, -57.7 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 108.9, -59.7 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 108.9, -59.7 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 113.3, -61.5 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 113.3, -61.5 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 117.2, -63.1 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 117.2, -63.1 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 120.7, -64.6 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 120.7, -64.6 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 123.8, -65.8 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 123.8, -65.8 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 126.5, -67 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 126.5, -67 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 128.9, -68 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 128.9, -68 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 131, -68.8 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 131, -68.8 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 132.8, -69.6 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 132.8, -69.6 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 134.3, -70.2 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 134.3, -70.2 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 135.6, -70.7 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 135.6, -70.7 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 136.6, -71.2 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, 136.6, -71.2 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 137.4, -71.5 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 137.4, -71.5 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 138.1, -71.8 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, 138.1, -71.8 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, 138.6, -72 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 138.6, -72 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 138.9, -72.1 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, 138.9, -72.1 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 139.2, -72.2 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 139.2, -72.2 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 139.3, -72.3 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, 139.3, -72.3 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, 139.4, -72.3 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 139.4, -72.3 , 0 );

setScaleKey( spep_2 + 538 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 539 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 540 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 541 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 545 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 547 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 551 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 553 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 554 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 559 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 560 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 561 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 562 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 563 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 564 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 567 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 569 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 570 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 571 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 573 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 574 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 575 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 576 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 577 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 578 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 579 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 580 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 581 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 582 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 583 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 584 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 585 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 586 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 587 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 588 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 589 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 590 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 591 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 592 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 630 + OFFSET_X, 1, 0.16, 0.16 );

setRotateKey( spep_2 + 538 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_2 + 630 + OFFSET_X, 1, 24.3 );

-- ** 音 ** --
--腕を振る
SE006 = playSeVer2( spep_2 + 0, 1227, "",spep_2 + 164, 0, 26, -1);
SE007 = playSeVer2( spep_2 + 0, 1240, "",spep_2 + 86, 0, 22, 0.6);
setSeVolumeByWorkId( spep_2 + 0, SE007, 158 );
setPitch( spep_2 + 0, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );
SE008 = playSeVer2( spep_2 + 6, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE008, 75 );
SE009 = playSeVer2( spep_2 + 44, 1240, "",spep_2 + 130, 0, 22, 0.6);
setSeVolumeByWorkId( spep_2 + 44, SE009, 158 );
setPitch( spep_2 + 44, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );
SE010 = playSeVer2( spep_2 + 44, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE010, 72 );
SE011 = playSeVer2( spep_2 + 90, 1240, "",spep_2 + 174, 0, 24, 0.6);
setSeVolumeByWorkId( spep_2 + 90, SE011, 158 );
setPitch( spep_2 + 90, SE011, -400 );
setTimeStretch( SE011, 0.73, 30, 4 );
SE012 = playSeVer2( spep_2 + 94, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE012, 76 );

--魔法陣出現する
SE013 = playSeVer2( spep_2 + 102, 1271, "",spep_2 + 284, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 102, SE013, 188 );
SE014 = playSeVer2( spep_2 + 116, 1334, "",spep_2 + 216, 0, 34, -1);
SE015 = playSeVer2( spep_2 + 116, 1274, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE015, 123 );
SE016 = playSeVer2( spep_2 + 130, 1240, "",spep_2 + 174, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 130, SE016, 141 );
SE017 = playSeVer2( spep_2 + 148, 1240, "",spep_2 + 186, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 148, SE017, 141 );
SE018 = playSeVer2( spep_2 + 172, 1240, "",spep_2 + 264, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 172, SE018, 150 );

--気弾溜め
SE019 = playSeVer2( spep_2 + 212, 1282, "",spep_2 + 288, 0, 22, -1);
SE020 = playSeVer2( spep_2 + 268, 1145, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 268, 1177, "",spep_2 + 354, 0, 46, -1);

--手にエネルギー溜める
SE022 = playSeVer2( spep_2 + 290, 1227, "",spep_2 + 398, 0, 20, -1);
SE023 = playSeVer2( spep_2 + 306, 1240, "",spep_2 + 398, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 306, SE023, 155 );
setPitch( spep_2 + 306, SE023, -4 );
setTimeStretch( SE023, 1, 30, 4 );
SE024 = playSeVer2( spep_2 + 310, 49, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 310, SE024, 100 );
SE025 = playSeVer2( spep_2 + 344, 49, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 344, SE025, 100 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 360;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
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
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);

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
--握りつぶす
SE026 = playSeVer2( spep_2 + 374, 1042, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 374, SE026, 71 );
SE027 = playSeVer2( spep_2 + 378, 1170, "",spep_2 + 416, 0, 14, -1);
SE028 = playSeVer2( spep_2 + 378, 1006, "", 0, 0, 0, -1);

--気弾飛んでいく
SE029 = playSeVer2( spep_2 + 424, 1177, "",spep_2 + 510, 0, 46, -1);
SE030 = playSeVer2( spep_2 + 424, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 424, SE030, 200 );
setTimeStretch( SE030, 0.66, 30, 4 );
SE031 = playSeVer2( spep_2 + 434, 1406, "",spep_2 + 540, 0, 22, -1);

--爆発
SE032 = playSeVer2( spep_2 + 452, 1011, "", 0, 0, 0, 0.7);
SE033 = playSeVer2( spep_2 + 468, 1024, "", 0, 0, 0, 0.7);

--敵飛んでいく
SE034 = playSeVer2( spep_2 + 528, 1027, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 528, 1121, "",spep_2 + 630, 0, 78, -1);

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 520 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 630

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 登場 ef_001
------------------------------------------------------
MAX_FRAME_0 = 118;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001_r, 0x80, -1, 0, 0, 0 );
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
spep_x = spep_0 + 0;

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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--手のひら光る
SE002 = playSeVer2( spep_0 + 36, 1221, "",spep_0 + 142, 0, 18, -1);
SE003 = playSeVer2( spep_0 + 36, 1240, "",spep_0 + 124, 0, 24, 0.6);
setPitch( spep_0 + 36, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
setSeVolumeByWorkId( spep_0 + 36, SE003, 120 );
SE004 = playSeVer2( spep_0 + 36, 12, "",spep_0 + 144, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 36, SE004, 86 );
setPitch( spep_0 + 36, SE004, -300 );
setTimeStretch( SE004, 0.8, 30, 4 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 118

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 1);

entryFade( spep_1 + 90, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 630;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002_r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02_back = entryEffect( spep_2 + 0, SP_002_back_r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02_back, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02_back, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02_back, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02_back, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02_back, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02_back, 0 );
setEffAlphaKey( spep_2 + 0, SP_02_back, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02_back, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 130 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 220 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 130 + OFFSET_X, 1, 117 );

setMoveKey( spep_2 + 130 + OFFSET_X, 1, -5.4, 53.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -5.4, 53.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -5.5, 53.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -5.5, 53.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -5.7, 52.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -5.7, 52.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -5.8, 52.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -5.8, 52.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -6, 52.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -6, 52.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -6.1, 52.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -6.1, 52.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -6.3, 52 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -6.3, 52 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -6.4, 51.7 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -6.4, 51.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -6.5, 51.5 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -6.5, 51.5 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -6.7, 51.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -6.7, 51.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -6.8, 51 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -6.8, 51 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -6.9, 50.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -6.9, 50.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -7.1, 50.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -7.1, 50.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -7.2, 50.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -7.2, 50.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -7.3, 50 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -7.3, 50 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -7.5, 49.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -7.5, 49.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -7.6, 49.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -7.6, 49.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -7.7, 49.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -7.7, 49.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -7.8, 49 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -7.8, 49 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -8, 48.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -8, 48.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -8.1, 48.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -8.1, 48.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -8.2, 48.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -8.2, 48.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -8.3, 48 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -8.3, 48 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -8.4, 47.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -8.4, 47.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -8.5, 47.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -8.5, 47.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -8.7, 47.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -8.7, 47.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -8.8, 47 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -8.8, 47 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -8.9, 46.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -8.9, 46.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -9, 46.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -9, 46.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -9.1, 46.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -9.1, 46.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -9.2, 46 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -9.2, 46 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -9.3, 45.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -9.3, 45.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -9.4, 45.4 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -9.4, 45.4 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -9.5, 45.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -9.5, 45.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -9.6, 44.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -9.6, 44.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -9.7, 44.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -9.7, 44.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -9.8, 44.4 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -9.8, 44.4 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -9.9, 44.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -9.9, 44.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -10, 43.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -10, 43.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -10.1, 43.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -10.1, 43.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -10.2, 43.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -10.2, 43.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -10.2, 43.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -10.2, 43.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -10.3, 42.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -10.3, 42.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -10.4, 42.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -10.4, 42.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -10.5, 42.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -10.5, 42.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -10.5, 42.4 , 0 );

setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.86, 0.86 );

setRotateKey( spep_2 + 130 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 13 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 13 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 7 );

-- 敵の動き2
setDisp( spep_2 + 430 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 528 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 430 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 452 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 478 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 500 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 430 + OFFSET_X, 1, -28.4, 13.6 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -28.4, 13.6 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -28.4, 13.6 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -40.4, -4.4 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -40.4, -4.4 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -10.4, 33.6 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -10.4, 33.6 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -6.4, 9.6 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -6.4, 9.6 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -48.4, 15.6 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -48.4, 15.6 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -10.4, -2.4 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -10.4, -2.4 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -44.4, 29.6 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -44.4, 29.6 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -12.4, 23.6 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -12.4, 23.6 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -40.4, -4.4 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -40.4, -4.4 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -10.4, 33.6 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -10.4, 33.6 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -6.4, 9.6 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -6.4, 9.6 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -48.4, 15.6 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -48.4, 15.6 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 21.6, 45.6 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 21.6, 45.6 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -12.4, 77.6 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -12.4, 77.6 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 19.6, 71.6 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 19.6, 71.6 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -28.4, 91.6 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -28.4, 91.6 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -30.4, 27.6 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -30.4, 27.6 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 35.7, 93.6 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 35.7, 93.6 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -38.4, 93.6 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -38.4, 93.6 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 29.6, 17.6 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 29.6, 17.6 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 3.6, 61.6 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 3.6, 61.6 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 23.6, 109.6 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 23.6, 109.6 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 73.7, 51.6 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 73.7, 51.6 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -52.4, 79.6 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -52.4, 79.6 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -16.3, 27.9 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -16.3, 27.9 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 22.8, 119.9 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 22.8, 119.9 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 31.9, 42 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 31.9, 42 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -15.1, 5.9 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, -15.1, 5.9 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, -30, 120 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -30, 120 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 41.1, 14 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 41.1, 14 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -61.9, 112 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -61.9, 112 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -50.8, 2 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -50.8, 2 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 42.3, 94 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 42.3, 94 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -12.6, 132.1 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -12.6, 132.1 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 12.5, -6 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 12.5, -6 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -88.5, 46 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, -88.5, 46 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 28.6, 34.1 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 28.6, 34.1 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, -34.3, 62.1 , 0 );

setScaleKey( spep_2 + 430 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 499 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 500 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 501 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 502 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 503 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 505 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 506 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 509 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 510 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 517 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 518 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 527 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 1.56, 1.56 );

setRotateKey( spep_2 + 430 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 499 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 500 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 528 + OFFSET_X, 1, -45 );

-- 敵の動き3
setDisp( spep_2 + 538 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 630 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 538 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 538 + OFFSET_X, 1, -2.4, -15.8 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -2.4, -15.8 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, -14.5, -20.8 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, -14.5, -20.8 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, -25.8, -25.5 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, -25.8, -25.5 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, -36.5, -29.8 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -36.5, -29.8 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -46.4, -33.9 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, -46.4, -33.9 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -55.7, -37.8 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, -55.7, -37.8 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, -64.4, -41.3 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, -64.4, -41.3 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, -72.4, -44.6 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, -72.4, -44.6 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, -79.8, -47.7 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, -79.8, -47.7 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -86.7, -50.5 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, -86.7, -50.5 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -93, -53.1 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, -93, -53.1 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, -98.8, -55.5 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, -98.8, -55.5 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -104.1, -57.7 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -104.1, -57.7 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -108.9, -59.7 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -108.9, -59.7 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -113.3, -61.5 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, -113.3, -61.5 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -117.2, -63.1 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, -117.2, -63.1 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, -120.7, -64.6 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, -120.7, -64.6 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -123.8, -65.8 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, -123.8, -65.8 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, -126.5, -67 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, -126.5, -67 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -128.9, -68 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, -128.9, -68 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -131, -68.8 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, -131, -68.8 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, -132.8, -69.6 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, -132.8, -69.6 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, -134.3, -70.2 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -134.3, -70.2 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -135.6, -70.7 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -135.6, -70.7 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -136.6, -71.2 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, -136.6, -71.2 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, -137.4, -71.5 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, -137.4, -71.5 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, -138.1, -71.8 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, -138.1, -71.8 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, -138.6, -72 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, -138.6, -72 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, -138.9, -72.1 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, -138.9, -72.1 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, -139.2, -72.2 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, -139.2, -72.2 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, -139.3, -72.3 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, -139.3, -72.3 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, -139.4, -72.3 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, -139.4, -72.3 , 0 );

setScaleKey( spep_2 + 538 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 539 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 540 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 541 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 545 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 547 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 551 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 553 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 554 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 559 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 560 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 561 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 562 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 563 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 564 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 567 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 569 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 570 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 571 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 573 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 574 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 575 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 576 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 577 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 578 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 579 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 580 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 581 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 582 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 583 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 584 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 585 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 586 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 587 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 588 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 589 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 590 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 591 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 592 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 630 + OFFSET_X, 1, 0.16, 0.16 );

setRotateKey( spep_2 + 538 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_2 + 630 + OFFSET_X, 1, -24.3 );

-- ** 音 ** --
--腕を振る
SE006 = playSeVer2( spep_2 + 0, 1227, "",spep_2 + 164, 0, 26, -1);
SE007 = playSeVer2( spep_2 + 0, 1240, "",spep_2 + 86, 0, 22, 0.6);
setSeVolumeByWorkId( spep_2 + 0, SE007, 158 );
setPitch( spep_2 + 0, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );
SE008 = playSeVer2( spep_2 + 6, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE008, 75 );
SE009 = playSeVer2( spep_2 + 44, 1240, "",spep_2 + 130, 0, 22, 0.6);
setSeVolumeByWorkId( spep_2 + 44, SE009, 158 );
setPitch( spep_2 + 44, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );
SE010 = playSeVer2( spep_2 + 44, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE010, 72 );
SE011 = playSeVer2( spep_2 + 90, 1240, "",spep_2 + 174, 0, 24, 0.6);
setSeVolumeByWorkId( spep_2 + 90, SE011, 158 );
setPitch( spep_2 + 90, SE011, -400 );
setTimeStretch( SE011, 0.73, 30, 4 );
SE012 = playSeVer2( spep_2 + 94, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE012, 76 );

--魔法陣出現する
SE013 = playSeVer2( spep_2 + 102, 1271, "",spep_2 + 284, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 102, SE013, 188 );
SE014 = playSeVer2( spep_2 + 116, 1334, "",spep_2 + 216, 0, 34, -1);
SE015 = playSeVer2( spep_2 + 116, 1274, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE015, 123 );
SE016 = playSeVer2( spep_2 + 130, 1240, "",spep_2 + 174, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 130, SE016, 141 );
SE017 = playSeVer2( spep_2 + 148, 1240, "",spep_2 + 186, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 148, SE017, 141 );
SE018 = playSeVer2( spep_2 + 172, 1240, "",spep_2 + 264, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 172, SE018, 150 );

--気弾溜め
SE019 = playSeVer2( spep_2 + 212, 1282, "",spep_2 + 288, 0, 22, -1);
SE020 = playSeVer2( spep_2 + 268, 1145, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 268, 1177, "",spep_2 + 354, 0, 46, -1);

--手にエネルギー溜める
SE022 = playSeVer2( spep_2 + 290, 1227, "",spep_2 + 398, 0, 20, -1);
SE023 = playSeVer2( spep_2 + 306, 1240, "",spep_2 + 398, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 306, SE023, 155 );
setPitch( spep_2 + 306, SE023, -4 );
setTimeStretch( SE023, 1, 30, 4 );
SE024 = playSeVer2( spep_2 + 310, 49, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 310, SE024, 100 );
SE025 = playSeVer2( spep_2 + 344, 49, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 344, SE025, 100 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 360;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
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
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);

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
--握りつぶす
SE026 = playSeVer2( spep_2 + 374, 1042, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 374, SE026, 71 );
SE027 = playSeVer2( spep_2 + 378, 1170, "",spep_2 + 416, 0, 14, -1);
SE028 = playSeVer2( spep_2 + 378, 1006, "", 0, 0, 0, -1);

--気弾飛んでいく
SE029 = playSeVer2( spep_2 + 424, 1177, "",spep_2 + 510, 0, 46, -1);
SE030 = playSeVer2( spep_2 + 424, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 424, SE030, 200 );
setTimeStretch( SE030, 0.66, 30, 4 );
SE031 = playSeVer2( spep_2 + 434, 1406, "",spep_2 + 540, 0, 22, -1);

--爆発
SE032 = playSeVer2( spep_2 + 452, 1011, "", 0, 0, 0, 0.7);
SE033 = playSeVer2( spep_2 + 468, 1024, "", 0, 0, 0, 0.7);

--敵飛んでいく
SE034 = playSeVer2( spep_2 + 528, 1027, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 528, 1121, "",spep_2 + 630, 0, 78, -1);

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 520 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 630

end
