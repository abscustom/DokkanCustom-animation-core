--1028050:UR_超サイヤ人孫悟空&超サイヤ人ベジータ&超サイヤ人トランクス(青年期)_必殺技：三大超サイヤ人競演
--sp_effect_b4_00313
--sp2665

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162526;	--開幕〜カードカットインまで	ef_001
SP_02 = 162527;	--ベジータから出動〜フィニッシュまで	ef_002
SP_02b = 162528;	--ベジータから出動〜フィニッシュまで	ef_002b

--エフェクト(てき)


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
-- 開幕〜カードカットインまで
-------------------------------------------------


MAX_FRAME_0 = 128;


-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
-- ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
-- setEffShake( spep_x + 16, ctgogo, 68, 10 );
-- setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
-- setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
-- setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
-- setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
-- setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
-- setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
-- setEffRotateKey( spep_x + 16, ctgogo, 0 );
-- setEffRotateKey( spep_x + 84, ctgogo, 0 );
-- setEffAlphaKey( spep_x + 16, ctgogo, 255 );
-- setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 140, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --128F


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -188 );
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_1 = spep_c + 94;


-------------------------------------------------
-- ベジータから出動〜フィニッシュまで
-------------------------------------------------

MAX_FRAME_1 = 750;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 134 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 202 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 134 + OFFSET_X, 1, 104 );
changeAnime( spep_1 + 156 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 134 + OFFSET_X, 1, 104.3, -53.1 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 104.3, -53.1 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 104.4, -53.1 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 104.4, -53.1 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 104.9, -53.1 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 104.9, -53.1 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 106.3, -53.1 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 106.3, -53.1 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 109.1, -53.1 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 109.1, -53.1 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 113.6, -53.1 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 113.6, -53.1 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 120.3, -53.1 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 120.3, -53.1 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 129.6, -53.1 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 129.6, -53.1 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 142.1, -53.1 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 142.1, -53.1 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 158.1, -53.1 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 158.1, -53.1 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 178.1, -53.1 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 178.1, -53.1 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 178.1, -72.7 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, 178.1, -72.7 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 181.1, -68.7 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, 181.1, -68.7 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, 190.9, -53.5 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, 190.9, -53.5 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, 189.9, -47.5 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, 189.9, -47.5 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, 186.7, -73.8 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, 186.7, -73.8 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, 186.7, -66.8 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, 186.7, -66.8 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, 190.9, -53.5 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, 190.9, -53.5 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, 189.9, -47.5 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, 189.9, -47.5 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, 186.7, -73.8 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, 186.7, -73.8 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, 186.7, -66.8 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, 186.7, -66.8 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, 190.9, -53.5 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_X, 1, 190.9, -53.5 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, 189.9, -47.5 , 0 );
setMoveKey( spep_1 + 179 + OFFSET_X, 1, 189.9, -47.5 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, 186.7, -73.8 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_X, 1, 186.7, -73.8 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, 186.7, -66.8 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_X, 1, 186.7, -66.8 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 190.9, -53.5 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_X, 1, 190.9, -53.5 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 189.9, -47.5 , 0 );
setMoveKey( spep_1 + 187 + OFFSET_X, 1, 189.9, -47.5 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, 195.9, -53.5 , 0 );
setMoveKey( spep_1 + 189 + OFFSET_X, 1, 195.9, -53.5 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, 195.9, -46.5 , 0 );
setMoveKey( spep_1 + 191 + OFFSET_X, 1, 195.9, -46.5 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, 181.7, -84.9 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, 181.7, -84.9 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 180.7, -78.9 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, 180.7, -78.9 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 195.9, -53.5 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, 195.9, -53.5 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 195.9, -46.5 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, 195.9, -46.5 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 181.7, -84.9 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 181.7, -84.9 , 0 );

setScaleKey( spep_1 + 134 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 155 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 156 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 202 + OFFSET_X, 1, 1.06, 1.06 );

setRotateKey( spep_1 + 134 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 155 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 156 + OFFSET_X, 1, -25.7 );
setRotateKey( spep_1 + 202 + OFFSET_X, 1, -25.7 );

-- 敵の動き2
setDisp( spep_1 + 230 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 352 + OFFSET_X, 1, 0 );

setMoveKey( spep_1 + 230 + OFFSET_X, 1, 434.7, -37.6 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, 434.7, -37.6 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 336.8, -33.6 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, 336.8, -33.6 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 240.1, -62.8 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, 240.1, -62.8 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, 237.5, -56.8 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, 237.5, -56.8 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, 232.6, -40.6 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, 232.6, -40.6 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, 231, -33.6 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, 231, -33.6 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, 233.7, -62.8 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, 233.7, -62.8 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, 231.1, -56.8 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, 231.1, -56.8 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 226.2, -40.6 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, 226.2, -40.6 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, 224.6, -33.6 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, 224.6, -33.6 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 227.3, -62.8 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, 227.3, -62.8 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 224.7, -56.8 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 224.7, -56.8 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 219.8, -40.6 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 219.8, -40.6 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 218.2, -33.6 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 218.2, -33.6 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 220.9, -62.8 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 220.9, -62.8 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 218.3, -56.8 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, 218.3, -56.8 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 213.4, -40.6 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, 213.4, -40.6 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, 211.8, -33.6 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, 211.8, -33.6 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 214.5, -62.8 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, 214.5, -62.8 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, 211.9, -56.8 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, 211.9, -56.8 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, 207, -40.6 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, 207, -40.6 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 205.4, -33.6 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, 205.4, -33.6 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 208.1, -62.8 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 208.1, -62.8 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 205.5, -56.8 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, 205.5, -56.8 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 200.6, -40.6 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, 200.6, -40.6 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 199, -33.6 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X, 1, 199, -33.6 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 185.8, -40.6 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, 185.8, -40.6 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, 177.8, -34.6 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, 177.8, -34.6 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, 175, -37.6 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, 175, -37.6 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, 170.3, -37.6 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, 170.3, -37.6 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, 166.5, -37.6 , 0 );
setMoveKey( spep_1 + 291 + OFFSET_X, 1, 166.5, -37.6 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, 163.5, -37.6 , 0 );
setMoveKey( spep_1 + 293 + OFFSET_X, 1, 163.5, -37.6 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X, 1, 161.3, -37.6 , 0 );
setMoveKey( spep_1 + 295 + OFFSET_X, 1, 161.3, -37.6 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X, 1, 159.7, -37.6 , 0 );
setMoveKey( spep_1 + 297 + OFFSET_X, 1, 159.7, -37.6 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X, 1, 158.7, -37.6 , 0 );
setMoveKey( spep_1 + 299 + OFFSET_X, 1, 158.7, -37.6 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X, 1, 158, -37.6 , 0 );
setMoveKey( spep_1 + 301 + OFFSET_X, 1, 158, -37.6 , 0 );
setMoveKey( spep_1 + 302 + OFFSET_X, 1, 157.7, -37.6 , 0 );
setMoveKey( spep_1 + 303 + OFFSET_X, 1, 157.7, -37.6 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, 157.6, -37.6 , 0 );
setMoveKey( spep_1 + 305 + OFFSET_X, 1, 157.6, -37.6 , 0 );
setMoveKey( spep_1 + 306 + OFFSET_X, 1, 193.5, -17.6 , 0 );
setMoveKey( spep_1 + 307 + OFFSET_X, 1, 193.5, -17.6 , 0 );
setMoveKey( spep_1 + 308 + OFFSET_X, 1, 192.1, -67.8 , 0 );
setMoveKey( spep_1 + 309 + OFFSET_X, 1, 192.1, -67.8 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, 127.5, 2.4 , 0 );
setMoveKey( spep_1 + 311 + OFFSET_X, 1, 127.5, 2.4 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, 193.5, -17.6 , 0 );
setMoveKey( spep_1 + 313 + OFFSET_X, 1, 193.5, -17.6 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, 192.1, -67.8 , 0 );
setMoveKey( spep_1 + 315 + OFFSET_X, 1, 192.1, -67.8 , 0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, 127.5, 2.4 , 0 );
setMoveKey( spep_1 + 317 + OFFSET_X, 1, 127.5, 2.4 , 0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, 216.9, -61.1 , 0 );
setMoveKey( spep_1 + 319 + OFFSET_X, 1, 216.9, -61.1 , 0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, 213.5, 2.4 , 0 );
setMoveKey( spep_1 + 321 + OFFSET_X, 1, 213.5, 2.4 , 0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, 109.5, -57.6 , 0 );
setMoveKey( spep_1 + 323 + OFFSET_X, 1, 109.5, -57.6 , 0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, 167.5, -23.6 , 0 );
setMoveKey( spep_1 + 325 + OFFSET_X, 1, 167.5, -23.6 , 0 );
setMoveKey( spep_1 + 326 + OFFSET_X, 1, 158.3, -23.6 , 0 );
setMoveKey( spep_1 + 327 + OFFSET_X, 1, 158.3, -23.6 , 0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, 169.8, -30.5 , 0 );
setMoveKey( spep_1 + 329 + OFFSET_X, 1, 169.8, -30.5 , 0 );
setMoveKey( spep_1 + 330 + OFFSET_X, 1, 173.5, -43.2 , 0 );
setMoveKey( spep_1 + 331 + OFFSET_X, 1, 173.5, -43.2 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, 204.3, -28.6 , 0 );
setMoveKey( spep_1 + 333 + OFFSET_X, 1, 204.3, -28.6 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, 233.1, -35.6 , 0 );
setMoveKey( spep_1 + 335 + OFFSET_X, 1, 233.1, -35.6 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, 238.9, -34.2 , 0 );
setMoveKey( spep_1 + 337 + OFFSET_X, 1, 238.9, -34.2 , 0 );
setMoveKey( spep_1 + 338 + OFFSET_X, 1, 229.5, -32.1 , 0 );
setMoveKey( spep_1 + 339 + OFFSET_X, 1, 229.5, -32.1 , 0 );
setMoveKey( spep_1 + 340 + OFFSET_X, 1, 209.6, -29.4 , 0 );
setMoveKey( spep_1 + 341 + OFFSET_X, 1, 209.6, -29.4 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, 183.7, -25.9 , 0 );
setMoveKey( spep_1 + 343 + OFFSET_X, 1, 183.7, -25.9 , 0 );
setMoveKey( spep_1 + 344 + OFFSET_X, 1, 156.5, -21.5 , 0 );
setMoveKey( spep_1 + 345 + OFFSET_X, 1, 156.5, -21.5 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, 132.8, -16.2 , 0 );
setMoveKey( spep_1 + 347 + OFFSET_X, 1, 132.8, -16.2 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, 117.1, -9.8 , 0 );
setMoveKey( spep_1 + 349 + OFFSET_X, 1, 117.1, -9.8 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, 114.1, -2.2 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, 114.1, -2.2 , 0 );

setScaleKey( spep_1 + 230 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 307 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 308 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 309 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 310 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 313 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 314 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 315 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 316 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 317 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 318 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 319 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 320 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 352 + OFFSET_X, 1, 1.06, 1.06 );

setRotateKey( spep_1 + 230 + OFFSET_X, 1, -25.7 );
setRotateKey( spep_1 + 329 + OFFSET_X, 1, -25.7 );
setRotateKey( spep_1 + 330 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_1 + 331 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_1 + 332 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_1 + 333 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_1 + 334 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_1 + 335 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_1 + 336 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_1 + 337 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_1 + 338 + OFFSET_X, 1, -24 );
setRotateKey( spep_1 + 339 + OFFSET_X, 1, -24 );
setRotateKey( spep_1 + 340 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_1 + 341 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_1 + 342 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_1 + 343 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_1 + 344 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_1 + 345 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_1 + 346 + OFFSET_X, 1, -19 );
setRotateKey( spep_1 + 347 + OFFSET_X, 1, -19 );
setRotateKey( spep_1 + 348 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_1 + 349 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_1 + 350 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_1 + 352 + OFFSET_X, 1, -14.7 );

-- 敵の動き3
setDisp( spep_1 + 568 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 624 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 568 + OFFSET_X, 1, 5 );

setMoveKey( spep_1 + 568 + OFFSET_X, 1, 193.5, -14.6 , 0 );
setMoveKey( spep_1 + 569 + OFFSET_X, 1, 193.5, -14.6 , 0 );
setMoveKey( spep_1 + 570 + OFFSET_X, 1, 194.8, 2.3 , 0 );
setMoveKey( spep_1 + 571 + OFFSET_X, 1, 194.8, 2.3 , 0 );
setMoveKey( spep_1 + 572 + OFFSET_X, 1, 206.1, -10.9 , 0 );
setMoveKey( spep_1 + 573 + OFFSET_X, 1, 206.1, -10.9 , 0 );
setMoveKey( spep_1 + 574 + OFFSET_X, 1, 199.2, -0.2 , 0 );
setMoveKey( spep_1 + 575 + OFFSET_X, 1, 199.2, -0.2 , 0 );
setMoveKey( spep_1 + 576 + OFFSET_X, 1, 198.4, 2.4 , 0 );
setMoveKey( spep_1 + 577 + OFFSET_X, 1, 198.4, 2.4 , 0 );
setMoveKey( spep_1 + 578 + OFFSET_X, 1, 203.5, 14.8 , 0 );
setMoveKey( spep_1 + 579 + OFFSET_X, 1, 203.5, 14.8 , 0 );
setMoveKey( spep_1 + 580 + OFFSET_X, 1, 188.5, -4.8 , 0 );
setMoveKey( spep_1 + 581 + OFFSET_X, 1, 188.5, -4.8 , 0 );
setMoveKey( spep_1 + 582 + OFFSET_X, 1, 189.5, 17.4 , 0 );
setMoveKey( spep_1 + 583 + OFFSET_X, 1, 189.5, 17.4 , 0 );
setMoveKey( spep_1 + 584 + OFFSET_X, 1, 202.4, 1.6 , 0 );
setMoveKey( spep_1 + 585 + OFFSET_X, 1, 202.4, 1.6 , 0 );
setMoveKey( spep_1 + 586 + OFFSET_X, 1, 193.3, 13.6 , 0 );
setMoveKey( spep_1 + 587 + OFFSET_X, 1, 193.3, 13.6 , 0 );
setMoveKey( spep_1 + 588 + OFFSET_X, 1, 186.1, 23.5 , 0 );
setMoveKey( spep_1 + 589 + OFFSET_X, 1, 186.1, 23.5 , 0 );
setMoveKey( spep_1 + 590 + OFFSET_X, 1, 198.9, 7.3 , 0 );
setMoveKey( spep_1 + 591 + OFFSET_X, 1, 198.9, 7.3 , 0 );
setMoveKey( spep_1 + 592 + OFFSET_X, 1, 189.6, 19 , 0 );
setMoveKey( spep_1 + 593 + OFFSET_X, 1, 189.6, 19 , 0 );
setMoveKey( spep_1 + 594 + OFFSET_X, 1, 188.3, 20.6 , 0 );
setMoveKey( spep_1 + 595 + OFFSET_X, 1, 188.3, 20.6 , 0 );
setMoveKey( spep_1 + 596 + OFFSET_X, 1, 186.9, 22.1 , 0 );
setMoveKey( spep_1 + 597 + OFFSET_X, 1, 186.9, 22.1 , 0 );
setMoveKey( spep_1 + 598 + OFFSET_X, 1, 185.5, 23.5 , 0 );
setMoveKey( spep_1 + 599 + OFFSET_X, 1, 185.5, 23.5 , 0 );
setMoveKey( spep_1 + 600 + OFFSET_X, 1, 184, 24.7 , 0 );
setMoveKey( spep_1 + 601 + OFFSET_X, 1, 184, 24.7 , 0 );
setMoveKey( spep_1 + 602 + OFFSET_X, 1, 190.5, 15.9 , 0 );
setMoveKey( spep_1 + 603 + OFFSET_X, 1, 190.5, 15.9 , 0 );
setMoveKey( spep_1 + 604 + OFFSET_X, 1, 180.9, 26.9 , 0 );
setMoveKey( spep_1 + 605 + OFFSET_X, 1, 180.9, 26.9 , 0 );
setMoveKey( spep_1 + 606 + OFFSET_X, 1, 173.3, 35.8 , 0 );
setMoveKey( spep_1 + 607 + OFFSET_X, 1, 173.3, 35.8 , 0 );
setMoveKey( spep_1 + 608 + OFFSET_X, 1, 185.6, 18.7 , 0 );
setMoveKey( spep_1 + 609 + OFFSET_X, 1, 185.6, 18.7 , 0 );
setMoveKey( spep_1 + 610 + OFFSET_X, 1, 175.9, 29.4 , 0 );
setMoveKey( spep_1 + 611 + OFFSET_X, 1, 175.9, 29.4 , 0 );
setMoveKey( spep_1 + 612 + OFFSET_X, 1, 174.1, 30 , 0 );
setMoveKey( spep_1 + 613 + OFFSET_X, 1, 174.1, 30 , 0 );
setMoveKey( spep_1 + 614 + OFFSET_X, 1, 172.3, 30.5 , 0 );
setMoveKey( spep_1 + 615 + OFFSET_X, 1, 172.3, 30.5 , 0 );
setMoveKey( spep_1 + 616 + OFFSET_X, 1, 170.4, 30.9 , 0 );
setMoveKey( spep_1 + 617 + OFFSET_X, 1, 170.4, 30.9 , 0 );
setMoveKey( spep_1 + 618 + OFFSET_X, 1, 168.4, 31.1 , 0 );
setMoveKey( spep_1 + 619 + OFFSET_X, 1, 168.4, 31.1 , 0 );
setMoveKey( spep_1 + 620 + OFFSET_X, 1, 172.5, 41.3 , 0 );
setMoveKey( spep_1 + 621 + OFFSET_X, 1, 172.5, 41.3 , 0 );
setMoveKey( spep_1 + 622 + OFFSET_X, 1, 156.4, 19.4 , 0 );
setMoveKey( spep_1 + 624 + OFFSET_X, 1, 156.4, 19.4 , 0 );

setScaleKey( spep_1 + 568 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 624 + OFFSET_X, 1, 0.16, 0.16 );

setRotateKey( spep_1 + 568 + OFFSET_X, 1, 54.2 );
setRotateKey( spep_1 + 624 + OFFSET_X, 1, 54.2 );

-- ** 音 ** --
--ベジータ気ダメ
SE005 = playSeVer2( spep_1 + 0, 1035, "",spep_1 + 66, 0, 10, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 12; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
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
--ベジータ向かっていく
SE006 = playSeVer2( spep_1 + 14, 1182, "",spep_1 + 48, 0, 20, -1);
SE007 = playSeVer2( spep_1 + 14, 1117, "",spep_1 + 52, 0, 14, -1);

--トランクス向かっていく
SE008 = playSeVer2( spep_1 + 38, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 38, 44, "", 0, 0, 0, -1);

--悟空気ダメ
SE010 = playSeVer2( spep_1 + 54, 1035, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 54, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 54, SE011, 63 );

--オーラ
SE012 = playSeVer2( spep_1 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 54, SE012, 63 );
SE013 = playSeVer2( spep_1 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE013, 63 );
SE014 = playSeVer2( spep_1 + 102, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 102, SE014, 63 );

--ベジータ飛んでくる
SE015 = playSeVer2( spep_1 + 122, 1117, "",spep_1 + 156, 4, 10, -1);
setStartTimeMs( SE015,  167 );
SE016 = playSeVer2( spep_1 + 124, 1277, "", 0, 0, 0, -1);
setPitch( spep_1 + 124, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );

--連打
SE017 = playSeVer2( spep_1 + 144, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 144, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 154, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 154, 1010, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 162, 1110, "", 0, 0, 0, -1);

--飛行音
SE022 = playSeVer2( spep_1 + 170, 1019, "", 0, 0, 0, -1);

--連打
SE023 = playSeVer2( spep_1 + 172, 1110, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 172, 1009, "", 0, 0, 0, -1);

--トランクス飛んでくる
SE025 = playSeVer2( spep_1 + 190, 1117, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_1 + 190, 44, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 190, 1277, "", 0, 0, 0, -1);

--連打
SE028 = playSeVer2( spep_1 + 216, 1187, "",spep_1 + 234, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 216, SE028, 71 );
SE029 = playSeVer2( spep_1 + 216, 1110, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 226, 1187, "",spep_1 + 250, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 226, SE030, 71 );
SE031 = playSeVer2( spep_1 + 226, 1110, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_1 + 234, 1187, "",spep_1 + 258, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 234, SE032, 71 );
SE033 = playSeVer2( spep_1 + 234, 1110, "", 0, 0, 0, -1);

--飛行音
SE034 = playSeVer2( spep_1 + 234, 1019, "", 0, 0, 0, -1);

--連打
SE035 = playSeVer2( spep_1 + 244, 1187, "",spep_1 + 266, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 244, SE035, 71 );
SE036 = playSeVer2( spep_1 + 244, 1110, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_1 + 250, 1187, "",spep_1 + 272, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 250, SE037, 71 );
SE038 = playSeVer2( spep_1 + 250, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE039 = playSeVer2( spep_1 + 290, 1120, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_1 + 290, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 290, SE040, 75 );

--飛行音
SE041 = playSeVer2( spep_1 + 298, 1019, "",spep_1 + 338, 0, 18, -1);

--オーラ
SE042 = playSeVer2( spep_1 + 330, 1036, "", 0, 0, 0, -1);

--悟空飛び上がる
SE043 = playSeVer2( spep_1 + 356, 1011, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_1 + 356, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 356, SE044, 67 );

--オーラ
SE045 = playSeVer2( spep_1 + 354, 1036, "", 0, 0, 0, -1);

--悟空飛び上がる
SE046 = playSeVer2( spep_1 + 368, 1117, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_1 + 378, 44, "", 0, 0, 0, -1);

--気弾溜め
SE048 = playSeVer2( spep_1 + 456, 1210, "",spep_1 + 540, 10, 22, -1);
setStartTimeMs( SE048,  1233 );

--気弾ける
SE049 = playSeVer2( spep_1 + 434, 1002, "",spep_1 + 490, 0, 34, -1);
SE050 = playSeVer2( spep_1 + 434, 1026, "", 0, 0, 0, -1);

--気弾溜め
SE051 = playSeVer2( spep_1 + 456, 1296, "",spep_1 + 538, 0, 22, -1);

--気ダメ
SE052 = playSeVer2( spep_1 + 490, 1035, "", 0, 0, 0, -1);

--気弾飛んでいく
SE053 = playSeVer2( spep_1 + 548, 1212, "",spep_1 + 634, 16, 26, -1);
setStartTimeMs( SE053,  733 );

--気弾発射
SE054 = playSeVer2( spep_1 + 518, 1022, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_1 + 518, 1027, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_1 + 518, 1145, "", 0, 0, 0, -1);

--気弾飛んでいく
SE057 = playSeVer2( spep_1 + 552, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 552, SE057, 67 );
setTimeStretch( SE057, 1.42, 30, 4 );
SE058 = playSeVer2( spep_1 + 556, 1202, "",spep_1 + 634, 0, 26, -1);
setSeVolumeByWorkId( spep_1 + 556, SE058, 157 );

--爆発
SE059 = playSeVer2( spep_1 + 606, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 606, SE059, 84 );
SE060 = playSeVer2( spep_1 + 610, 1023, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 646); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 750F-4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜カードカットインまで
-------------------------------------------------


MAX_FRAME_0 = 128;


-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
-- ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
-- setEffShake( spep_x + 16, ctgogo, 68, 10 );
-- setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
-- setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
-- setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
-- setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
-- setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
-- setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
-- setEffRotateKey( spep_x + 16, ctgogo, 0 );
-- setEffRotateKey( spep_x + 84, ctgogo, 0 );
-- setEffAlphaKey( spep_x + 16, ctgogo, 255 );
-- setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 140, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --128F


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -188 ); 
setEffScaleKey( spep_c + 0, spname, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_c + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_1 = spep_c + 94;


-------------------------------------------------
-- ベジータから出動〜フィニッシュまで
-------------------------------------------------

MAX_FRAME_1 = 750;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 134 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 202 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 134 + OFFSET_X, 1, 4 );
changeAnime( spep_1 + 156 + OFFSET_X, 1, 6 );

setMoveKey( spep_1 + 134 + OFFSET_X, 1, -104.3, -53.1 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, -104.3, -53.1 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, -104.4, -53.1 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, -104.4, -53.1 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, -104.9, -53.1 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, -104.9, -53.1 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, -106.3, -53.1 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, -106.3, -53.1 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, -109.1, -53.1 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, -109.1, -53.1 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, -113.6, -53.1 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, -113.6, -53.1 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, -120.3, -53.1 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, -120.3, -53.1 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, -129.6, -53.1 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, -129.6, -53.1 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, -142.1, -53.1 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, -142.1, -53.1 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, -158.1, -53.1 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, -158.1, -53.1 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, -178.1, -53.1 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, -178.1, -53.1 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, -178.1, -72.7 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, -178.1, -72.7 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, -181.1, -68.7 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, -181.1, -68.7 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, -190.9, -53.5 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, -190.9, -53.5 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, -189.9, -47.5 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, -189.9, -47.5 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, -186.7, -73.8 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, -186.7, -73.8 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, -186.7, -66.8 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, -186.7, -66.8 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, -190.9, -53.5 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, -190.9, -53.5 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, -189.9, -47.5 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, -189.9, -47.5 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, -186.7, -73.8 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, -186.7, -73.8 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, -186.7, -66.8 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, -186.7, -66.8 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, -190.9, -53.5 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_X, 1, -190.9, -53.5 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, -189.9, -47.5 , 0 );
setMoveKey( spep_1 + 179 + OFFSET_X, 1, -189.9, -47.5 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, -186.7, -73.8 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_X, 1, -186.7, -73.8 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, -186.7, -66.8 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_X, 1, -186.7, -66.8 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, -190.9, -53.5 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_X, 1, -190.9, -53.5 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, -189.9, -47.5 , 0 );
setMoveKey( spep_1 + 187 + OFFSET_X, 1, -189.9, -47.5 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, -195.9, -53.5 , 0 );
setMoveKey( spep_1 + 189 + OFFSET_X, 1, -195.9, -53.5 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, -195.9, -46.5 , 0 );
setMoveKey( spep_1 + 191 + OFFSET_X, 1, -195.9, -46.5 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, -181.7, -84.9 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, -181.7, -84.9 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, -180.7, -78.9 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, -180.7, -78.9 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, -195.9, -53.5 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, -195.9, -53.5 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, -195.9, -46.5 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, -195.9, -46.5 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, -181.7, -84.9 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, -181.7, -84.9 , 0 );

setScaleKey( spep_1 + 134 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 155 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 156 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 202 + OFFSET_X, 1, 1.06, 1.06 );

setRotateKey( spep_1 + 134 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 155 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 156 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_1 + 202 + OFFSET_X, 1, 25.7 );

-- 敵の動き2
setDisp( spep_1 + 230 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 352 + OFFSET_X, 1, 0 );

setMoveKey( spep_1 + 230 + OFFSET_X, 1, -434.7, -37.6 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, -434.7, -37.6 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, -336.8, -33.6 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, -336.8, -33.6 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, -240.1, -62.8 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, -240.1, -62.8 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, -237.5, -56.8 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, -237.5, -56.8 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, -232.6, -40.6 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, -232.6, -40.6 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, -231, -33.6 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, -231, -33.6 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, -233.7, -62.8 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, -233.7, -62.8 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, -231.1, -56.8 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, -231.1, -56.8 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, -226.2, -40.6 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, -226.2, -40.6 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, -224.6, -33.6 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, -224.6, -33.6 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, -227.3, -62.8 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, -227.3, -62.8 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, -224.7, -56.8 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, -224.7, -56.8 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, -219.8, -40.6 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, -219.8, -40.6 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, -218.2, -33.6 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, -218.2, -33.6 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, -220.9, -62.8 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, -220.9, -62.8 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, -218.3, -56.8 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, -218.3, -56.8 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, -213.4, -40.6 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, -213.4, -40.6 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, -211.8, -33.6 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, -211.8, -33.6 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, -214.5, -62.8 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, -214.5, -62.8 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, -211.9, -56.8 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, -211.9, -56.8 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, -207, -40.6 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, -207, -40.6 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, -205.4, -33.6 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, -205.4, -33.6 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, -208.1, -62.8 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, -208.1, -62.8 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, -205.5, -56.8 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, -205.5, -56.8 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, -200.6, -40.6 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, -200.6, -40.6 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, -199, -33.6 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X, 1, -199, -33.6 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, -185.8, -40.6 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, -185.8, -40.6 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, -177.8, -34.6 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, -177.8, -34.6 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, -175, -37.6 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, -175, -37.6 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, -170.3, -37.6 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, -170.3, -37.6 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, -166.5, -37.6 , 0 );
setMoveKey( spep_1 + 291 + OFFSET_X, 1, -166.5, -37.6 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, -163.5, -37.6 , 0 );
setMoveKey( spep_1 + 293 + OFFSET_X, 1, -163.5, -37.6 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X, 1, -161.3, -37.6 , 0 );
setMoveKey( spep_1 + 295 + OFFSET_X, 1, -161.3, -37.6 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X, 1, -159.7, -37.6 , 0 );
setMoveKey( spep_1 + 297 + OFFSET_X, 1, -159.7, -37.6 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X, 1, -158.7, -37.6 , 0 );
setMoveKey( spep_1 + 299 + OFFSET_X, 1, -158.7, -37.6 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X, 1, -158, -37.6 , 0 );
setMoveKey( spep_1 + 301 + OFFSET_X, 1, -158, -37.6 , 0 );
setMoveKey( spep_1 + 302 + OFFSET_X, 1, -157.7, -37.6 , 0 );
setMoveKey( spep_1 + 303 + OFFSET_X, 1, -157.7, -37.6 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, -157.6, -37.6 , 0 );
setMoveKey( spep_1 + 305 + OFFSET_X, 1, -157.6, -37.6 , 0 );
setMoveKey( spep_1 + 306 + OFFSET_X, 1, -193.5, -17.6 , 0 );
setMoveKey( spep_1 + 307 + OFFSET_X, 1, -193.5, -17.6 , 0 );
setMoveKey( spep_1 + 308 + OFFSET_X, 1, -192.1, -67.8 , 0 );
setMoveKey( spep_1 + 309 + OFFSET_X, 1, -192.1, -67.8 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, -127.5, 2.4 , 0 );
setMoveKey( spep_1 + 311 + OFFSET_X, 1, -127.5, 2.4 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, -193.5, -17.6 , 0 );
setMoveKey( spep_1 + 313 + OFFSET_X, 1, -193.5, -17.6 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, -192.1, -67.8 , 0 );
setMoveKey( spep_1 + 315 + OFFSET_X, 1, -192.1, -67.8 , 0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, -127.5, 2.4 , 0 );
setMoveKey( spep_1 + 317 + OFFSET_X, 1, -127.5, 2.4 , 0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, -216.9, -61.1 , 0 );
setMoveKey( spep_1 + 319 + OFFSET_X, 1, -216.9, -61.1 , 0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, -213.5, 2.4 , 0 );
setMoveKey( spep_1 + 321 + OFFSET_X, 1, -213.5, 2.4 , 0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, -109.5, -57.6 , 0 );
setMoveKey( spep_1 + 323 + OFFSET_X, 1, -109.5, -57.6 , 0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, -167.5, -23.6 , 0 );
setMoveKey( spep_1 + 325 + OFFSET_X, 1, -167.5, -23.6 , 0 );
setMoveKey( spep_1 + 326 + OFFSET_X, 1, -158.3, -23.6 , 0 );
setMoveKey( spep_1 + 327 + OFFSET_X, 1, -158.3, -23.6 , 0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, -169.8, -30.5 , 0 );
setMoveKey( spep_1 + 329 + OFFSET_X, 1, -169.8, -30.5 , 0 );
setMoveKey( spep_1 + 330 + OFFSET_X, 1, -173.5, -43.2 , 0 );
setMoveKey( spep_1 + 331 + OFFSET_X, 1, -173.5, -43.2 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, -204.3, -28.6 , 0 );
setMoveKey( spep_1 + 333 + OFFSET_X, 1, -204.3, -28.6 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, -233.1, -35.6 , 0 );
setMoveKey( spep_1 + 335 + OFFSET_X, 1, -233.1, -35.6 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, -238.9, -34.2 , 0 );
setMoveKey( spep_1 + 337 + OFFSET_X, 1, -238.9, -34.2 , 0 );
setMoveKey( spep_1 + 338 + OFFSET_X, 1, -229.5, -32.1 , 0 );
setMoveKey( spep_1 + 339 + OFFSET_X, 1, -229.5, -32.1 , 0 );
setMoveKey( spep_1 + 340 + OFFSET_X, 1, -209.6, -29.4 , 0 );
setMoveKey( spep_1 + 341 + OFFSET_X, 1, -209.6, -29.4 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, -183.7, -25.9 , 0 );
setMoveKey( spep_1 + 343 + OFFSET_X, 1, -183.7, -25.9 , 0 );
setMoveKey( spep_1 + 344 + OFFSET_X, 1, -156.5, -21.5 , 0 );
setMoveKey( spep_1 + 345 + OFFSET_X, 1, -156.5, -21.5 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, -132.8, -16.2 , 0 );
setMoveKey( spep_1 + 347 + OFFSET_X, 1, -132.8, -16.2 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, -117.1, -9.8 , 0 );
setMoveKey( spep_1 + 349 + OFFSET_X, 1, -117.1, -9.8 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, -114.1, -2.2 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, -114.1, -2.2 , 0 );

setScaleKey( spep_1 + 230 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 307 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 308 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 309 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 310 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 313 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 314 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 315 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 316 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 317 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 318 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 319 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 320 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 352 + OFFSET_X, 1, 1.06, 1.06 );

setRotateKey( spep_1 + 230 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_1 + 329 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_1 + 330 + OFFSET_X, 1, 25.6 );
setRotateKey( spep_1 + 331 + OFFSET_X, 1, 25.6 );
setRotateKey( spep_1 + 332 + OFFSET_X, 1, 25.4 );
setRotateKey( spep_1 + 333 + OFFSET_X, 1, 25.4 );
setRotateKey( spep_1 + 334 + OFFSET_X, 1, 25.1 );
setRotateKey( spep_1 + 335 + OFFSET_X, 1, 25.1 );
setRotateKey( spep_1 + 336 + OFFSET_X, 1, 24.6 );
setRotateKey( spep_1 + 337 + OFFSET_X, 1, 24.6 );
setRotateKey( spep_1 + 338 + OFFSET_X, 1, 24 );
setRotateKey( spep_1 + 339 + OFFSET_X, 1, 24 );
setRotateKey( spep_1 + 340 + OFFSET_X, 1, 23.2 );
setRotateKey( spep_1 + 341 + OFFSET_X, 1, 23.2 );
setRotateKey( spep_1 + 342 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_1 + 343 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_1 + 344 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_1 + 345 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_1 + 346 + OFFSET_X, 1, 19 );
setRotateKey( spep_1 + 347 + OFFSET_X, 1, 19 );
setRotateKey( spep_1 + 348 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_1 + 349 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_1 + 350 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_1 + 352 + OFFSET_X, 1, 14.7 );

-- 敵の動き3
setDisp( spep_1 + 568 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 624 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 568 + OFFSET_X, 1, 105 );

setMoveKey( spep_1 + 568 + OFFSET_X, 1, -193.5, -14.6 , 0 );
setMoveKey( spep_1 + 569 + OFFSET_X, 1, -193.5, -14.6 , 0 );
setMoveKey( spep_1 + 570 + OFFSET_X, 1, -194.8, 2.3 , 0 );
setMoveKey( spep_1 + 571 + OFFSET_X, 1, -194.8, 2.3 , 0 );
setMoveKey( spep_1 + 572 + OFFSET_X, 1, -206.1, -10.9 , 0 );
setMoveKey( spep_1 + 573 + OFFSET_X, 1, -206.1, -10.9 , 0 );
setMoveKey( spep_1 + 574 + OFFSET_X, 1, -199.2, -0.2 , 0 );
setMoveKey( spep_1 + 575 + OFFSET_X, 1, -199.2, -0.2 , 0 );
setMoveKey( spep_1 + 576 + OFFSET_X, 1, -198.4, 2.4 , 0 );
setMoveKey( spep_1 + 577 + OFFSET_X, 1, -198.4, 2.4 , 0 );
setMoveKey( spep_1 + 578 + OFFSET_X, 1, -203.5, 14.8 , 0 );
setMoveKey( spep_1 + 579 + OFFSET_X, 1, -203.5, 14.8 , 0 );
setMoveKey( spep_1 + 580 + OFFSET_X, 1, -188.5, -4.8 , 0 );
setMoveKey( spep_1 + 581 + OFFSET_X, 1, -188.5, -4.8 , 0 );
setMoveKey( spep_1 + 582 + OFFSET_X, 1, -189.5, 17.4 , 0 );
setMoveKey( spep_1 + 583 + OFFSET_X, 1, -189.5, 17.4 , 0 );
setMoveKey( spep_1 + 584 + OFFSET_X, 1, -202.4, 1.6 , 0 );
setMoveKey( spep_1 + 585 + OFFSET_X, 1, -202.4, 1.6 , 0 );
setMoveKey( spep_1 + 586 + OFFSET_X, 1, -193.3, 13.6 , 0 );
setMoveKey( spep_1 + 587 + OFFSET_X, 1, -193.3, 13.6 , 0 );
setMoveKey( spep_1 + 588 + OFFSET_X, 1, -186.1, 23.5 , 0 );
setMoveKey( spep_1 + 589 + OFFSET_X, 1, -186.1, 23.5 , 0 );
setMoveKey( spep_1 + 590 + OFFSET_X, 1, -198.9, 7.3 , 0 );
setMoveKey( spep_1 + 591 + OFFSET_X, 1, -198.9, 7.3 , 0 );
setMoveKey( spep_1 + 592 + OFFSET_X, 1, -189.6, 19 , 0 );
setMoveKey( spep_1 + 593 + OFFSET_X, 1, -189.6, 19 , 0 );
setMoveKey( spep_1 + 594 + OFFSET_X, 1, -188.3, 20.6 , 0 );
setMoveKey( spep_1 + 595 + OFFSET_X, 1, -188.3, 20.6 , 0 );
setMoveKey( spep_1 + 596 + OFFSET_X, 1, -186.9, 22.1 , 0 );
setMoveKey( spep_1 + 597 + OFFSET_X, 1, -186.9, 22.1 , 0 );
setMoveKey( spep_1 + 598 + OFFSET_X, 1, -185.5, 23.5 , 0 );
setMoveKey( spep_1 + 599 + OFFSET_X, 1, -185.5, 23.5 , 0 );
setMoveKey( spep_1 + 600 + OFFSET_X, 1, -184, 24.7 , 0 );
setMoveKey( spep_1 + 601 + OFFSET_X, 1, -184, 24.7 , 0 );
setMoveKey( spep_1 + 602 + OFFSET_X, 1, -190.5, 15.9 , 0 );
setMoveKey( spep_1 + 603 + OFFSET_X, 1, -190.5, 15.9 , 0 );
setMoveKey( spep_1 + 604 + OFFSET_X, 1, -180.9, 26.9 , 0 );
setMoveKey( spep_1 + 605 + OFFSET_X, 1, -180.9, 26.9 , 0 );
setMoveKey( spep_1 + 606 + OFFSET_X, 1, -173.3, 35.8 , 0 );
setMoveKey( spep_1 + 607 + OFFSET_X, 1, -173.3, 35.8 , 0 );
setMoveKey( spep_1 + 608 + OFFSET_X, 1, -185.6, 18.7 , 0 );
setMoveKey( spep_1 + 609 + OFFSET_X, 1, -185.6, 18.7 , 0 );
setMoveKey( spep_1 + 610 + OFFSET_X, 1, -175.9, 29.4 , 0 );
setMoveKey( spep_1 + 611 + OFFSET_X, 1, -175.9, 29.4 , 0 );
setMoveKey( spep_1 + 612 + OFFSET_X, 1, -174.1, 30 , 0 );
setMoveKey( spep_1 + 613 + OFFSET_X, 1, -174.1, 30 , 0 );
setMoveKey( spep_1 + 614 + OFFSET_X, 1, -172.3, 30.5 , 0 );
setMoveKey( spep_1 + 615 + OFFSET_X, 1, -172.3, 30.5 , 0 );
setMoveKey( spep_1 + 616 + OFFSET_X, 1, -170.4, 30.9 , 0 );
setMoveKey( spep_1 + 617 + OFFSET_X, 1, -170.4, 30.9 , 0 );
setMoveKey( spep_1 + 618 + OFFSET_X, 1, -168.4, 31.1 , 0 );
setMoveKey( spep_1 + 619 + OFFSET_X, 1, -168.4, 31.1 , 0 );
setMoveKey( spep_1 + 620 + OFFSET_X, 1, -172.5, 41.3 , 0 );
setMoveKey( spep_1 + 621 + OFFSET_X, 1, -172.5, 41.3 , 0 );
setMoveKey( spep_1 + 622 + OFFSET_X, 1, -156.4, 19.4 , 0 );
setMoveKey( spep_1 + 624 + OFFSET_X, 1, -156.4, 19.4 , 0 );

setScaleKey( spep_1 + 568 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 624 + OFFSET_X, 1, 0.16, 0.16 );

setRotateKey( spep_1 + 568 + OFFSET_X, 1, -54.2 );
setRotateKey( spep_1 + 624 + OFFSET_X, 1, -54.2 );

-- ** 音 ** --
--ベジータ気ダメ
SE005 = playSeVer2( spep_1 + 0, 1035, "",spep_1 + 66, 0, 10, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 12; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
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
--ベジータ向かっていく
SE006 = playSeVer2( spep_1 + 14, 1182, "",spep_1 + 48, 0, 20, -1);
SE007 = playSeVer2( spep_1 + 14, 1117, "",spep_1 + 52, 0, 14, -1);

--トランクス向かっていく
SE008 = playSeVer2( spep_1 + 38, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 38, 44, "", 0, 0, 0, -1);

--悟空気ダメ
SE010 = playSeVer2( spep_1 + 54, 1035, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 54, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 54, SE011, 63 );

--オーラ
SE012 = playSeVer2( spep_1 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 54, SE012, 63 );
SE013 = playSeVer2( spep_1 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE013, 63 );
SE014 = playSeVer2( spep_1 + 102, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 102, SE014, 63 );

--ベジータ飛んでくる
SE015 = playSeVer2( spep_1 + 122, 1117, "",spep_1 + 156, 4, 10, -1);
setStartTimeMs( SE015,  167 );
SE016 = playSeVer2( spep_1 + 124, 1277, "", 0, 0, 0, -1);
setPitch( spep_1 + 124, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );

--連打
SE017 = playSeVer2( spep_1 + 144, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 144, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 154, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 154, 1010, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 162, 1110, "", 0, 0, 0, -1);

--飛行音
SE022 = playSeVer2( spep_1 + 170, 1019, "", 0, 0, 0, -1);

--連打
SE023 = playSeVer2( spep_1 + 172, 1110, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 172, 1009, "", 0, 0, 0, -1);

--トランクス飛んでくる
SE025 = playSeVer2( spep_1 + 190, 1117, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_1 + 190, 44, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 190, 1277, "", 0, 0, 0, -1);

--連打
SE028 = playSeVer2( spep_1 + 216, 1187, "",spep_1 + 234, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 216, SE028, 71 );
SE029 = playSeVer2( spep_1 + 216, 1110, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 226, 1187, "",spep_1 + 250, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 226, SE030, 71 );
SE031 = playSeVer2( spep_1 + 226, 1110, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_1 + 234, 1187, "",spep_1 + 258, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 234, SE032, 71 );
SE033 = playSeVer2( spep_1 + 234, 1110, "", 0, 0, 0, -1);

--飛行音
SE034 = playSeVer2( spep_1 + 234, 1019, "", 0, 0, 0, -1);

--連打
SE035 = playSeVer2( spep_1 + 244, 1187, "",spep_1 + 266, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 244, SE035, 71 );
SE036 = playSeVer2( spep_1 + 244, 1110, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_1 + 250, 1187, "",spep_1 + 272, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 250, SE037, 71 );
SE038 = playSeVer2( spep_1 + 250, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE039 = playSeVer2( spep_1 + 290, 1120, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_1 + 290, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 290, SE040, 75 );

--飛行音
SE041 = playSeVer2( spep_1 + 298, 1019, "",spep_1 + 338, 0, 18, -1);

--オーラ
SE042 = playSeVer2( spep_1 + 330, 1036, "", 0, 0, 0, -1);

--悟空飛び上がる
SE043 = playSeVer2( spep_1 + 356, 1011, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_1 + 356, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 356, SE044, 67 );

--オーラ
SE045 = playSeVer2( spep_1 + 354, 1036, "", 0, 0, 0, -1);

--悟空飛び上がる
SE046 = playSeVer2( spep_1 + 368, 1117, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_1 + 378, 44, "", 0, 0, 0, -1);

--気弾溜め
SE048 = playSeVer2( spep_1 + 456, 1210, "",spep_1 + 540, 10, 22, -1);
setStartTimeMs( SE048,  1233 );

--気弾ける
SE049 = playSeVer2( spep_1 + 434, 1002, "",spep_1 + 490, 0, 34, -1);
SE050 = playSeVer2( spep_1 + 434, 1026, "", 0, 0, 0, -1);

--気弾溜め
SE051 = playSeVer2( spep_1 + 456, 1296, "",spep_1 + 538, 0, 22, -1);

--気ダメ
SE052 = playSeVer2( spep_1 + 490, 1035, "", 0, 0, 0, -1);

--気弾飛んでいく
SE053 = playSeVer2( spep_1 + 548, 1212, "",spep_1 + 634, 16, 26, -1);
setStartTimeMs( SE053,  733 );

--気弾発射
SE054 = playSeVer2( spep_1 + 518, 1022, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_1 + 518, 1027, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_1 + 518, 1145, "", 0, 0, 0, -1);

--気弾飛んでいく
SE057 = playSeVer2( spep_1 + 552, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 552, SE057, 67 );
setTimeStretch( SE057, 1.42, 30, 4 );
SE058 = playSeVer2( spep_1 + 556, 1202, "",spep_1 + 634, 0, 26, -1);
setSeVolumeByWorkId( spep_1 + 556, SE058, 157 );

--爆発
SE059 = playSeVer2( spep_1 + 606, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 606, SE059, 84 );
SE060 = playSeVer2( spep_1 + 610, 1023, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 646); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 750F-4

end
