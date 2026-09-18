--1027470:LR_セル(完全体)(GT)&フリーザ(最終形態)(GT)_超必殺技：ヘルズコンビネーション
--sp_effect_a1_00416
--sp2639

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162488;  --ef_001  フリーザ正面に向かってくる～セルのセリフカット 手前
SP_01b = 162489;  --ef_001b フリーザ正面に向かってくる～セルのセリフカット 奥
SP_02  = 162490;  --ef_002  セル魔貫光～爆発を見ているセル＆フリーザ 手前
SP_02b = 162491;  --ef_002b セル魔貫光～爆発を見ているセル＆フリーザ 奥

--エフェクト(敵)
SP_01r = 162513;  --ef_001r  フリーザ正面に向かってくる～セルのセリフカット 手前

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
-- フリーザ正面に向かってくる～セルのセリフカット
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_0 = 340;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001   フリーザ正面に向かってくる～セルのセリフカット 手前
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b  フリーザ正面に向かってくる～セルのセリフカット 奥
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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

--------------------------------
-- 集中線
--------------------------------
-- ** 集中線0 ** --
shuchusen_0 = entryEffectLife( spep_0 + 0, 906, 88, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen_0, 88, 20 );
setEffMoveKey( spep_0 + 0, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 88, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 88, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 0, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 88, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 88, shuchusen_0, 255 );

-- ** 集中線1 ** --
shuchusen_1 = entryEffectLife( spep_0 + 120, 906, 38, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 120, shuchusen_1, 38, 20 );
setEffMoveKey( spep_0 + 120, shuchusen_1, 0, 0, 0 );
setEffMoveKey( spep_0 + 160, shuchusen_1, 0, 0, 0 );
setEffScaleKey( spep_0 + 120, shuchusen_1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 160, shuchusen_1, 1.6, 1.6 );
setEffRotateKey( spep_0 + 120, shuchusen_1, 0 );
setEffRotateKey( spep_0 + 160, shuchusen_1, 0 );
setEffAlphaKey( spep_0 + 120, shuchusen_1, 255 );
setEffAlphaKey( spep_0 + 160, shuchusen_1, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 80, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 258 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 120 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 160 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 178 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 192 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 200 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 120 + OFFSET_X, 1, 310.2, 391.2 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 310.2, 391.2 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 217.9, 280 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 217.9, 280 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 183.4, 237.3 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 183.4, 237.3 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 158.6, 206 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 158.6, 206 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 138.8, 180.5 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 138.8, 180.5 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 122.1, 158.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 122.1, 158.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 107.7, 140 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 107.7, 140 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 95.1, 123.1 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 95.1, 123.1 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 83.9, 107.9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 83.9, 107.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 73.8, 94.1 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 73.8, 94.1 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 64.8, 81.4 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 64.8, 81.4 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 56.6, 69.8 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 56.6, 69.8 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 49.1, 59.1 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 49.1, 59.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 42.4, 49.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 42.4, 49.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 36.2, 40 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 36.2, 40 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 30.7, 31.5 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 30.7, 31.5 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 25.7, 23.7 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 25.7, 23.7 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 21.2, 16.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 21.2, 16.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 17.3, 9.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 17.3, 9.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 14.1, 4.2 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 14.1, 4.2 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 161.8, 182.7 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 161.8, 182.7 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 156.8, 174.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 156.8, 174.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 185.9, 212.4 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 185.9, 212.4 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 161.8, 182.7 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 161.8, 182.7 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 126.8, 142.1 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 126.8, 142.1 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 176.9, 223.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 176.9, 223.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 166.2, 179.6 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 166.2, 179.6 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 157.8, 183.9 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 157.8, 183.9 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 169.5, 158.4 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 169.5, 158.4 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 188.3, 198.9 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 188.3, 198.9 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 130.9, 162.6 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 130.9, 162.6 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 173.4, 177.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 173.4, 177.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 139.4, 195.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 139.4, 195.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 157.8, 180.3 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 157.8, 180.3 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 205.5, 208.5 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 205.5, 208.5 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 132.6, 169 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 132.6, 169 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 160.8, 192.7 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 160.8, 192.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 153.4, 165.4 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 153.4, 165.4 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 161.3, 183.2 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 161.3, 183.2 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 156.2, 172.1 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 156.2, 172.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 278.6, 313.8 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 278.6, 313.8 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 201, 233.6 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 201, 233.6 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 198.2, 280.8 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 198.2, 280.8 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 183, 190.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 183, 190.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 152, 208.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 152, 208.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 157.3, 188 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 157.3, 188 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 124, 167.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 124, 167.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 120.4, 136.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 120.4, 136.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 104.1, 123.6 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 104.1, 123.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 91.3, 102.5 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 91.3, 102.5 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 81.1, 81.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 81.1, 81.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 72.1, 59.4 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 72.1, 59.4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 63.6, 36 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 63.6, 36 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 54.8, 10.2 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 54.8, 10.2 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -167.8, 270.5 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -167.8, 270.5 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -126.5, 210.4 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -126.5, 210.4 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -107.7, 183.2 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -107.7, 183.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -156.5, 209.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -156.5, 209.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -229.3, 264.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -229.3, 264.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -349.7, 376.6 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -349.7, 376.6 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -504.9, 530.4 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -504.9, 530.4 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -664.8, 688.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -664.8, 688.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -834.6, 859.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -834.6, 859.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -1011.2, 1041.2 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -1011.2, 1041.2 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -1181.3, 1215.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -1181.3, 1215.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -1317.9, 1345.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -1317.9, 1345.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -1383.7, 1385.9 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -1383.7, 1385.9 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -1385.4, 1388.7 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -1385.4, 1388.7 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -1386.7, 1390.2 , 0 );

setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 2.93, 2.95 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 2.93, 2.95 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 2.65, 2.68 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 2.65, 2.68 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 2.57, 2.58 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 2.57, 2.58 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 3.09, 3.06 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 3.09, 3.06 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 3.66, 3.6 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 3.66, 3.6 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 4.4, 4.33 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 4.4, 4.33 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 5.31, 5.24 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 5.31, 5.24 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 6.31, 6.29 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 6.31, 6.29 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 7.28, 7.33 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 7.28, 7.33 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 7.99, 8.08 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 7.99, 8.08 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 8.05, 8.13 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 8.05, 8.13 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 8.06, 8.15 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 8.06, 8.15 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 8.08, 8.17 );

setRotateKey( spep_0 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -48.2 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -48.2 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, 46 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, 46 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, 49.3 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, 49.3 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, 55.9 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, 55.9 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, 59.1 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, 59.1 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, 65.7 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, 65.7 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, 69 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, 69 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 72.3 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, 72.3 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 75.6 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, 75.6 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, 78.9 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, 78.9 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, 82.1 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, 82.1 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, 85.4 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, 85.4 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, 88.7 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, 88.7 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, 92 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, 92 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, 52 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, 52 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, 55.4 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, 55.4 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 57.1 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, 57.1 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, 58.8 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, 58.8 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 60.5 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, 60.5 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 62.2 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, 62.2 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 65.6 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, 65.6 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 67.3 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 67.3 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 69 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, 69 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, 70.7 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 70.7 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 72.4 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 72.4 );

-- ** 音 ** --
--フリーザ向かってくる
SE001 = playSeVer2( spep_0 + 0, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 75 );
SE002 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 75 );
SE003 = playSeVer2( spep_0 + 4, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 4, SE003, 50 );
setTimeStretch( SE003, 1.48, 35, 8 );

--画面遷移
SE005 = playSeVer2( spep_0 + 62, 1072, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
--フリーザ飛んでいく
SE006 = playSeVer2( spep_0 + 110, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 110, 1116, "",spep_0 + 172, 0, 28, -1);

--フリーザラッシュ
SE008 = playSeVer2( spep_0 + 158, 1009, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 158, 1110, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 168, 1010, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 168, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 182, 1010, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 182, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 196, 1010, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 196, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE016 = playSeVer2( spep_0 + 210, 1183, "",spep_0 + 360, 0, 14, -1);

--セルセリフカットイン
SE017 = playSeVer2( spep_0 + 248, 44, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 248, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE018, 54 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --340

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--セル構える
SE020 = playSeVer2( spep_1 + 84, 1189, "", 0, 0, 0, -1);

------------------------------------------------
-- セル魔貫光～爆発を見ているセル＆フリーザ
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_2 = 410;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002  セル魔貫光～爆発を見ているセル＆フリーザ 手前
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002b  セル魔貫光～爆発を見ているセル＆フリーザ 奥
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

--------------------------------
-- 集中線
--------------------------------
-- ** 集中線3 ** --
shuchusen_3 = entryEffectLife( spep_2 + 120, 906, 46, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 120, shuchusen_3, 46, 20 );
setEffMoveKey( spep_2 + 120, shuchusen_3, 0, 0, 0 );
setEffMoveKey( spep_2 + 166, shuchusen_3, 0, 0, 0 );
setEffScaleKey( spep_2 + 120, shuchusen_3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 166, shuchusen_3, 1.6, 1.6 );
setEffRotateKey( spep_2 + 120, shuchusen_3, 0 );
setEffRotateKey( spep_2 + 166, shuchusen_3, 0 );
setEffAlphaKey( spep_2 + 120, shuchusen_3, 255 );
setEffAlphaKey( spep_2 + 166, shuchusen_3, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_2 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 121 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 90 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, -370.7, 239.9 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -370.7, 239.9 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -343.1, 220 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -343.1, 220 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -315.6, 200.2 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -315.6, 200.2 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -288, 180.6 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -288, 180.6 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -260.5, 161 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -260.5, 161 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -233, 141.6 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -233, 141.6 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -205.5, 122.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -205.5, 122.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -178, 103.2 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -178, 103.2 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -150.5, 84.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -150.5, 84.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -123, 65.1 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -123, 65.1 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -95.5, 46.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -95.5, 46.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -68, 27.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -68, 27.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -40.4, 9 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -40.4, 9 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -12.9, -9.5 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -12.9, -9.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 14.8, -27.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 14.8, -27.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -27, -35.4 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -27, -35.4 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -10.1, -65.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -10.1, -65.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -19.6, -24.2 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -19.6, -24.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -28.4, -51.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -28.4, -51.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -11.4, -37.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -11.4, -37.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -25.3, -44.3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -25.3, -44.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -20.1, -35.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -20.1, -35.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -16.7, -49.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -16.7, -49.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -19.7, -42.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -19.7, -42.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -22.7, -46.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -22.7, -46.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -19.3, -37.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -19.3, -37.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -24.6, -44.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -24.6, -44.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -19.7, -44.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -19.7, -44.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -25.3, -46.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -25.3, -46.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -19.6, -42.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -19.6, -42.4 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 3.51, 3.5 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 3.51, 3.5 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 3.33, 3.32 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 3.33, 3.32 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 3.15, 3.14 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 3.15, 3.14 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2.98, 2.96 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 2.98, 2.96 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.8, 2.79 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.8, 2.79 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.62, 2.61 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 2.62, 2.61 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 2.44, 2.43 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 2.44, 2.43 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 2.26, 2.25 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 2.26, 2.25 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 2.08, 2.07 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 2.08, 2.07 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.9, 1.89 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.9, 1.89 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.72, 1.71 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.72, 1.71 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.01, 1 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.01, 1 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.13, 2.12 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 2.13, 2.12 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.14, 2.12 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 2.14, 2.12 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, 23 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 23 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 26 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 26 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 40.9 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 40.9 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -19 );

--敵の動き2
setDisp( spep_2 + 242 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 292 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 242 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 242 + OFFSET_X, 1, 113.3, 129.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 113.3, 129.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 114.9, 130.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 114.9, 130.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 116.4, 130.5 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 116.4, 130.5 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 117.9, 130.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 117.9, 130.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 119.3, 131.1 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 119.3, 131.1 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 121, 131.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 121, 131.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 122.5, 131.6 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 122.5, 131.6 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 124, 131.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 124, 131.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 125.6, 132.2 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 125.6, 132.2 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 127.1, 132.5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 127.1, 132.5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 128.6, 132.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 128.6, 132.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 130.2, 133.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 130.2, 133.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 131.8, 133.4 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 131.8, 133.4 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 133.3, 133.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 133.3, 133.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 134.9, 134 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 134.9, 134 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 136.5, 134.3 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 136.5, 134.3 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 138.1, 134.6 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 138.1, 134.6 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 139.6, 134.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 139.6, 134.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 141.2, 135.2 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 141.2, 135.2 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 142.8, 135.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 142.8, 135.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 144.4, 135.8 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 144.4, 135.8 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 146, 136.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 146, 136.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 147.6, 136.4 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 147.6, 136.4 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 149.3, 136.7 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 149.3, 136.7 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 150.9, 137 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 150.9, 137 , 0 );

setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.26, 1.24 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 1.26, 1.24 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.24, 1.22 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 1.24, 1.22 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.22, 1.2 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.22, 1.2 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.2, 1.18 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 1.2, 1.18 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.18, 1.16 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 1.18, 1.16 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.16, 1.14 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 1.16, 1.14 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 1.14, 1.12 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.14, 1.12 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.11, 1.1 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.11, 1.1 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.09, 1.08 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 1.09, 1.08 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.07, 1.06 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.07, 1.06 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.05, 1.04 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 1.05, 1.04 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1.03, 1.02 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1.03, 1.02 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.01, 1 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1.01, 1 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.99, 0.97 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.99, 0.97 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.97, 0.95 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.97, 0.95 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.95, 0.93 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.95, 0.93 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.93, 0.91 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.93, 0.91 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.91, 0.89 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.91, 0.89 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.89, 0.87 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.89, 0.87 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.87, 0.85 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.87, 0.85 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.85, 0.83 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.85, 0.83 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.83, 0.81 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.83, 0.81 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.8, 0.79 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.8, 0.79 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.78, 0.77 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.78, 0.77 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.76, 0.75 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.76, 0.75 );

setRotateKey( spep_2 + 242 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 23.1 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 23.1 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 41.6 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 41.6 );

-- ** 音 ** --
--セル構える
SE021 = playSeVer2( spep_2 + 0, 1006, "", 0, 0, 0, -1);

--気弾溜め
SE022 = playSeVer2( spep_2 + 06, 1255, "",spep_2 + 46, 0, 10, -1);
SE023 = playSeVer2( spep_2 + 06, 1204, "",spep_2 + 46, 0, 10, -1);
SE024 = playSeVer2( spep_2 + 10, 1225, "",spep_2 + 48, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 10, SE024, 145 );

--セル気弾発射
SE025 = playSeVer2( spep_2 + 32, 1145, "",spep_2 + 162, 0, 46, -1);
SE026 = playSeVer2( spep_2 + 32, 1239, "",spep_2 + 162, 0, 46, -1);
SE027 = playSeVer2( spep_2 + 32, 1249, "",spep_2 + 160, 0, 44, -1);

--気弾ヒット
SE028 = playSeVer2( spep_2 + 82, 1153, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 82, 1011, "", 0, 0, 0, -1);

--フリーザ集中線
SE030 = playSeVer2( spep_2 + 108, 1264, "",spep_2 + 228, 0, 64, -1);
setSeVolumeByWorkId( spep_2 + 108, SE030, 77 );
SE031 = playSeVer2( spep_2 + 108, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE031, 77 );

--フリーザ気弾溜め
SE032 = playSeVer2( spep_2 + 160, 1240, "",spep_2 + 254, 0, 26, -1);
SE033 = playSeVer2( spep_2 + 164, 1282, "", 0, 0, 0, 0.65);
setSeVolumeByWorkId( spep_2 + 164, SE033, 56 );
SE034 = playSeVer2( spep_2 + 164, 1239, "",spep_2 + 256, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 164, SE034, 129 );

--フリーザ気弾発射
SE035 = playSeVer2( spep_2 + 214, 1242, "",spep_2 + 302, 12, 16, -1);
setSeVolumeByWorkId( spep_2 + 214, SE035, 160 );
setStartTimeMs( SE035,  467 );
SE036 = playSeVer2( spep_2 + 214, 1241, "",spep_2 + 300, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 214, SE036, 132 );
SE037 = playSeVer2( spep_2 + 214, 1027, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 222, 1202, "",spep_2 + 298, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 222, SE038, 176 );

--爆発
SE039 = playSeVer2( spep_2 + 282, 1023, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 290, 1024, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 306, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 306); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム　410 -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- フリーザ正面に向かってくる～セルのセリフカット
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_0 = 340;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001   フリーザ正面に向かってくる～セルのセリフカット 手前
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b  フリーザ正面に向かってくる～セルのセリフカット 奥
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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

--------------------------------
-- 集中線
--------------------------------
-- ** 集中線0 ** --
shuchusen_0 = entryEffectLife( spep_0 + 0, 906, 88, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen_0, 88, 20 );
setEffMoveKey( spep_0 + 0, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 88, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 88, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 0, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 88, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 88, shuchusen_0, 255 );

-- ** 集中線1 ** --
shuchusen_1 = entryEffectLife( spep_0 + 120, 906, 38, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 120, shuchusen_1, 38, 20 );
setEffMoveKey( spep_0 + 120, shuchusen_1, 0, 0, 0 );
setEffMoveKey( spep_0 + 160, shuchusen_1, 0, 0, 0 );
setEffScaleKey( spep_0 + 120, shuchusen_1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 160, shuchusen_1, 1.6, 1.6 );
setEffRotateKey( spep_0 + 120, shuchusen_1, 0 );
setEffRotateKey( spep_0 + 160, shuchusen_1, 0 );
setEffAlphaKey( spep_0 + 120, shuchusen_1, 255 );
setEffAlphaKey( spep_0 + 160, shuchusen_1, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 80, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 258 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 120 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 160 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 178 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 192 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 200 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 120 + OFFSET_X, 1, -310.2, 391.2 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -310.2, 391.2 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -217.9, 280 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -217.9, 280 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -183.4, 237.3 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -183.4, 237.3 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -158.6, 206 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -158.6, 206 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -138.8, 180.5 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -138.8, 180.5 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -122.1, 158.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -122.1, 158.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -107.7, 140 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -107.7, 140 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -95.1, 123.1 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -95.1, 123.1 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -83.9, 107.9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -83.9, 107.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -73.8, 94.1 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -73.8, 94.1 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -64.8, 81.4 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -64.8, 81.4 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -56.6, 69.8 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -56.6, 69.8 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -49.1, 59.1 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -49.1, 59.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -42.4, 49.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -42.4, 49.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -36.2, 40 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -36.2, 40 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -30.7, 31.5 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -30.7, 31.5 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -25.7, 23.7 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -25.7, 23.7 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -21.2, 16.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -21.2, 16.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -17.3, 9.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -17.3, 9.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -14.1, 4.2 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -14.1, 4.2 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -161.8, 182.7 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -161.8, 182.7 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -156.8, 174.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -156.8, 174.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -185.9, 212.4 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -185.9, 212.4 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -161.8, 182.7 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -161.8, 182.7 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -126.8, 142.1 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -126.8, 142.1 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -176.9, 223.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -176.9, 223.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -166.2, 179.6 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -166.2, 179.6 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -157.8, 183.9 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -157.8, 183.9 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -169.5, 158.4 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -169.5, 158.4 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -188.3, 198.9 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -188.3, 198.9 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -130.9, 162.6 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -130.9, 162.6 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -173.4, 177.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -173.4, 177.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -139.4, 195.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -139.4, 195.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -157.8, 180.3 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -157.8, 180.3 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -205.5, 208.5 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -205.5, 208.5 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -132.6, 169 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -132.6, 169 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -160.8, 192.7 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -160.8, 192.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -153.4, 165.4 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -153.4, 165.4 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -161.3, 183.2 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -161.3, 183.2 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -156.2, 172.1 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -156.2, 172.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -278.6, 313.8 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -278.6, 313.8 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -201, 233.6 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -201, 233.6 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -198.2, 280.8 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -198.2, 280.8 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -183, 190.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -183, 190.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -152, 208.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -152, 208.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -157.3, 188 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -157.3, 188 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -124, 167.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -124, 167.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -120.4, 136.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -120.4, 136.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -104.1, 123.6 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -104.1, 123.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -91.3, 102.5 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -91.3, 102.5 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -81.1, 81.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -81.1, 81.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -72.1, 59.4 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -72.1, 59.4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -63.6, 36 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -63.6, 36 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -54.8, 10.2 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -54.8, 10.2 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 167.8, 270.5 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 167.8, 270.5 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 126.5, 210.4 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 126.5, 210.4 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 107.7, 183.2 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 107.7, 183.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 156.5, 209.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 156.5, 209.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 229.3, 264.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 229.3, 264.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 349.7, 376.6 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 349.7, 376.6 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 504.9, 530.4 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 504.9, 530.4 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 664.8, 688.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 664.8, 688.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 834.6, 859.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 834.6, 859.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 1011.2, 1041.2 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 1011.2, 1041.2 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 1181.3, 1215.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 1181.3, 1215.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 1317.9, 1345.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 1317.9, 1345.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 1383.7, 1385.9 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 1383.7, 1385.9 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 1385.4, 1388.7 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 1385.4, 1388.7 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 1386.7, 1390.2 , 0 );

setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 2.93, 2.95 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 2.93, 2.95 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 2.65, 2.68 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 2.65, 2.68 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 2.57, 2.58 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 2.57, 2.58 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 3.09, 3.06 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 3.09, 3.06 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 3.66, 3.6 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 3.66, 3.6 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 4.4, 4.33 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 4.4, 4.33 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 5.31, 5.24 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 5.31, 5.24 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 6.31, 6.29 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 6.31, 6.29 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 7.28, 7.33 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 7.28, 7.33 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 7.99, 8.08 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 7.99, 8.08 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 8.05, 8.13 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 8.05, 8.13 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 8.06, 8.15 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 8.06, 8.15 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 8.08, 8.17 );

setRotateKey( spep_0 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, 48.2 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, 48.2 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, 40 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, 40 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 42.5 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 42.5 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, 46 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, 46 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -49.3 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -49.3 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -52.6 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -52.6 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -55.9 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -55.9 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -65.7 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, -65.7 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -69 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -69 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -72.3 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -72.3 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -75.6 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -75.6 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -78.9 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -78.9 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -82.1 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -82.1 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -85.4 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -85.4 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -88.7 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -88.7 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -92 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -92 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -52 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -52 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -53.7 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -53.7 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -55.4 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -55.4 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -57.1 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -57.1 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -58.8 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -58.8 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -63.9 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -63.9 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -65.6 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -65.6 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -67.3 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, -67.3 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -69 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -69 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -70.7 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -70.7 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -72.4 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -72.4 );

-- ** 音 ** --
--フリーザ向かってくる
SE001 = playSeVer2( spep_0 + 0, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 75 );
SE002 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 75 );
SE003 = playSeVer2( spep_0 + 4, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 4, SE003, 50 );
setTimeStretch( SE003, 1.48, 35, 8 );

--画面遷移
SE005 = playSeVer2( spep_0 + 62, 1072, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
--フリーザ飛んでいく
SE006 = playSeVer2( spep_0 + 110, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 110, 1116, "",spep_0 + 172, 0, 28, -1);

--フリーザラッシュ
SE008 = playSeVer2( spep_0 + 158, 1009, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 158, 1110, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 168, 1010, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 168, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 182, 1010, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 182, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 196, 1010, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 196, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE016 = playSeVer2( spep_0 + 210, 1183, "",spep_0 + 360, 0, 14, -1);

--セルセリフカットイン
SE017 = playSeVer2( spep_0 + 248, 44, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 248, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE018, 54 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --340

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--セル構える
SE020 = playSeVer2( spep_1 + 84, 1189, "", 0, 0, 0, -1);

------------------------------------------------
-- セル魔貫光～爆発を見ているセル＆フリーザ
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_2 = 410;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002  セル魔貫光～爆発を見ているセル＆フリーザ 手前
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002b  セル魔貫光～爆発を見ているセル＆フリーザ 奥
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

--------------------------------
-- 集中線
--------------------------------
-- ** 集中線3 ** --
shuchusen_3 = entryEffectLife( spep_2 + 120, 906, 46, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 120, shuchusen_3, 46, 20 );
setEffMoveKey( spep_2 + 120, shuchusen_3, 0, 0, 0 );
setEffMoveKey( spep_2 + 166, shuchusen_3, 0, 0, 0 );
setEffScaleKey( spep_2 + 120, shuchusen_3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 166, shuchusen_3, 1.6, 1.6 );
setEffRotateKey( spep_2 + 120, shuchusen_3, 0 );
setEffRotateKey( spep_2 + 166, shuchusen_3, 0 );
setEffAlphaKey( spep_2 + 120, shuchusen_3, 255 );
setEffAlphaKey( spep_2 + 166, shuchusen_3, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_2 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 121 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 90 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, 370.7, 239.9 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 370.7, 239.9 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 343.1, 220 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 343.1, 220 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 315.6, 200.2 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 315.6, 200.2 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 288, 180.6 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 288, 180.6 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 260.5, 161 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 260.5, 161 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 233, 141.6 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 233, 141.6 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 205.5, 122.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 205.5, 122.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 178, 103.2 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 178, 103.2 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 150.5, 84.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 150.5, 84.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 123, 65.1 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 123, 65.1 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 95.5, 46.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 95.5, 46.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 68, 27.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 68, 27.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 40.4, 9 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 40.4, 9 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 12.9, -9.5 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 12.9, -9.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -14.8, -27.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -14.8, -27.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 27, -35.4 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 27, -35.4 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 10.1, -65.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 10.1, -65.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 19.6, -24.2 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 19.6, -24.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 28.4, -51.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 28.4, -51.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 11.4, -37.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 11.4, -37.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 25.3, -44.3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 25.3, -44.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 20.1, -35.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 20.1, -35.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 16.7, -49.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 16.7, -49.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 19.7, -42.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 19.7, -42.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 22.7, -46.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 22.7, -46.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 19.3, -37.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 19.3, -37.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 24.6, -44.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 24.6, -44.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 19.7, -44.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 19.7, -44.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 25.3, -46.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 25.3, -46.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 19.6, -42.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 19.6, -42.4 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 3.51, 3.5 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 3.51, 3.5 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 3.33, 3.32 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 3.33, 3.32 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 3.15, 3.14 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 3.15, 3.14 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2.98, 2.96 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 2.98, 2.96 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.8, 2.79 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.8, 2.79 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.62, 2.61 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 2.62, 2.61 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 2.44, 2.43 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 2.44, 2.43 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 2.26, 2.25 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 2.26, 2.25 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 2.08, 2.07 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 2.08, 2.07 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.9, 1.89 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.9, 1.89 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.72, 1.71 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.72, 1.71 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.01, 1 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.01, 1 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.13, 2.12 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 2.13, 2.12 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.14, 2.12 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 2.14, 2.12 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -24.5 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, -24.5 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -26 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -26 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -27.5 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -27.5 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 19 );

--敵の動き2
setDisp( spep_2 + 242 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 292 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 242 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 242 + OFFSET_X, 1, -113.3, 129.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -113.3, 129.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -114.9, 130.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -114.9, 130.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -116.4, 130.5 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -116.4, 130.5 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -117.9, 130.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -117.9, 130.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -119.3, 131.1 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -119.3, 131.1 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -121, 131.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -121, 131.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -122.5, 131.6 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -122.5, 131.6 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -124, 131.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -124, 131.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -125.6, 132.2 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -125.6, 132.2 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -127.1, 132.5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -127.1, 132.5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -128.6, 132.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -128.6, 132.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -130.2, 133.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -130.2, 133.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -131.8, 133.4 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -131.8, 133.4 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -133.3, 133.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -133.3, 133.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -134.9, 134 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -134.9, 134 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -136.5, 134.3 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -136.5, 134.3 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -138.1, 134.6 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -138.1, 134.6 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -139.6, 134.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -139.6, 134.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -141.2, 135.2 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -141.2, 135.2 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -142.8, 135.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -142.8, 135.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -144.4, 135.8 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -144.4, 135.8 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -146, 136.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -146, 136.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -147.6, 136.4 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -147.6, 136.4 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -149.3, 136.7 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -149.3, 136.7 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -150.9, 137 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -150.9, 137 , 0 );

setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.26, 1.24 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 1.26, 1.24 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.24, 1.22 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 1.24, 1.22 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.22, 1.2 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.22, 1.2 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.2, 1.18 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 1.2, 1.18 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.18, 1.16 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 1.18, 1.16 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.16, 1.14 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 1.16, 1.14 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 1.14, 1.12 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.14, 1.12 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.11, 1.1 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.11, 1.1 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.09, 1.08 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 1.09, 1.08 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.07, 1.06 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.07, 1.06 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.05, 1.04 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 1.05, 1.04 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1.03, 1.02 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1.03, 1.02 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.01, 1 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1.01, 1 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.99, 0.97 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.99, 0.97 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.97, 0.95 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.97, 0.95 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.95, 0.93 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.95, 0.93 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.93, 0.91 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.93, 0.91 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.91, 0.89 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.91, 0.89 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.89, 0.87 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.89, 0.87 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.87, 0.85 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.87, 0.85 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.85, 0.83 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.85, 0.83 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.83, 0.81 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.83, 0.81 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.8, 0.79 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.8, 0.79 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.78, 0.77 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.78, 0.77 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.76, 0.75 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.76, 0.75 );

setRotateKey( spep_2 + 242 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -27.5 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -27.5 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -31 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, -31 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, -41.6 );

-- ** 音 ** --
--セル構える
SE021 = playSeVer2( spep_2 + 0, 1006, "", 0, 0, 0, -1);

--気弾溜め
SE022 = playSeVer2( spep_2 + 06, 1255, "",spep_2 + 46, 0, 10, -1);
SE023 = playSeVer2( spep_2 + 06, 1204, "",spep_2 + 46, 0, 10, -1);
SE024 = playSeVer2( spep_2 + 10, 1225, "",spep_2 + 48, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 10, SE024, 145 );

--セル気弾発射
SE025 = playSeVer2( spep_2 + 32, 1145, "",spep_2 + 162, 0, 46, -1);
SE026 = playSeVer2( spep_2 + 32, 1239, "",spep_2 + 162, 0, 46, -1);
SE027 = playSeVer2( spep_2 + 32, 1249, "",spep_2 + 160, 0, 44, -1);

--気弾ヒット
SE028 = playSeVer2( spep_2 + 82, 1153, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 82, 1011, "", 0, 0, 0, -1);

--フリーザ集中線
SE030 = playSeVer2( spep_2 + 108, 1264, "",spep_2 + 228, 0, 64, -1);
setSeVolumeByWorkId( spep_2 + 108, SE030, 77 );
SE031 = playSeVer2( spep_2 + 108, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE031, 77 );

--フリーザ気弾溜め
SE032 = playSeVer2( spep_2 + 160, 1240, "",spep_2 + 254, 0, 26, -1);
SE033 = playSeVer2( spep_2 + 164, 1282, "", 0, 0, 0, 0.65);
setSeVolumeByWorkId( spep_2 + 164, SE033, 56 );
SE034 = playSeVer2( spep_2 + 164, 1239, "",spep_2 + 256, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 164, SE034, 129 );

--フリーザ気弾発射
SE035 = playSeVer2( spep_2 + 214, 1242, "",spep_2 + 302, 12, 16, -1);
setSeVolumeByWorkId( spep_2 + 214, SE035, 160 );
setStartTimeMs( SE035,  467 );
SE036 = playSeVer2( spep_2 + 214, 1241, "",spep_2 + 300, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 214, SE036, 132 );
SE037 = playSeVer2( spep_2 + 214, 1027, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 222, 1202, "",spep_2 + 298, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 222, SE038, 176 );

--爆発
SE039 = playSeVer2( spep_2 + 282, 1023, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 290, 1024, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 306, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 306); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム　410 -4


end
