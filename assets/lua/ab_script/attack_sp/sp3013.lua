--4033600:LR_超サイヤ人ゴッドベジータ_超必殺技：ファイナルランページ
--sp_effect_a1_00537
--sp3013

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164483 --気を溜めて気弾を出す ef_001
SP_02 = 164484 --気弾を発射〜稲妻パンチ〜KO ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.7);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    setupMovie(0, SP_01, 0, 1);
else

    setupMovie(0, SP_01, 0, 1);

    mirror = -1;

end

------------------------------------------------------------------------------------------------------------
-- 共通演出
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 気を溜めて気弾を出す ef_001
-------------------------------------------------
MAX_FRAME_0 = 178;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 気を溜めて気弾を出す ef_001
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 44; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

ctgogo_x = 150; -- 演出によって白目にかからないように調整

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, ctgogo_x * mirror, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0 * mirror, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09 * mirror, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39 * mirror, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69 * mirror, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 206, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 52 );
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );

--オーラ
SE003 = playSeVer2( spep_0 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE003, 50 );
SE006 = playSeVer2( spep_0 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE006, 50 );
SE010 = playSeVer2( spep_0 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE010, 50 );
SE013 = playSeVer2( spep_0 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE013, 50 );
SE014 = playSeVer2( spep_0 + 108, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE014, 50 );
SE015 = playSeVer2( spep_0 + 132, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE015, 50 );
SE016 = playSeVer2( spep_0 + 156, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE016, 50 );

--一瞬ブルーになる
SE004 = playSeVer2( spep_0 + 14, 1445, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 14, 1440, "", 0, 0, 0, -1);

--気弾溜める
SE008 = playSeVer2( spep_0 + 54, 1252, "",spep_0 + 182, 0, 10, -1);
SE009 = playSeVer2( spep_0 + 54, 1161, "",spep_0 + 192, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 54, SE009, 77 );
SE011 = playSeVer2( spep_0 + 62, 1465, "",spep_0 + 184, 0, 12, -1);
SE012 = playSeVer2( spep_0 + 62, 1017, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 178F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 気弾を発射〜稲妻パンチ〜KO ef_002
-------------------------------------------------
MAX_FRAME_2 = 558;

if ( _IS_PLAYER_SIDE_ == 1 and _IS_DEAD_LAST_ == 1) then
    MAX_FRAME_2 = 566;
end

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾を発射〜稲妻パンチ〜KO ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 124 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 276 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 124 + OFFSET_X, 1, 117 );
changeAnimeBySide( spep_2 + 156 + OFFSET_X, 1, 118 );
changeAnimeBySide( spep_2 + 236 + OFFSET_X, 1, 117 );
changeAnimeBySide( spep_2 + 260 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 124 + OFFSET_X, 1, 410 * mirror, 76.2 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 410 * mirror, 76.2 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 367.5 * mirror, 69.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 367.5 * mirror, 69.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 321.8 * mirror, 63.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 321.8 * mirror, 63.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 277.2 * mirror, 59.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 277.2 * mirror, 59.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 271.1 * mirror, 59.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 271.1 * mirror, 59.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 267.8 * mirror, 59.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 267.8 * mirror, 59.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 264.9 * mirror, 59.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 264.9 * mirror, 59.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 260.1 * mirror, 54.1 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 260.1 * mirror, 54.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 255.6 * mirror, 57.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 255.6 * mirror, 57.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 252.1 * mirror, 56.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 252.1 * mirror, 56.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 249 * mirror, 57.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 249 * mirror, 57.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 245.6 * mirror, 56.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 245.6 * mirror, 56.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 242.4 * mirror, 56.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 242.4 * mirror, 56.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 240.9 * mirror, 59 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 240.9 * mirror, 59 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 238.8 * mirror, 59.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 238.8 * mirror, 59.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 232.6 * mirror, 54.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 232.6 * mirror, 54.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 119 * mirror, 49.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 119 * mirror, 49.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 117.3 * mirror, 51.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 117.3 * mirror, 51.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 119.9 * mirror, 50.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 119.9 * mirror, 50.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 119.3 * mirror, 51.8 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 119.3 * mirror, 51.8 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 119.7 * mirror, 53.9 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 119.7 * mirror, 53.9 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 121.1 * mirror, 52.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 121.1 * mirror, 52.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 121.7 * mirror, 46.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 121.7 * mirror, 46.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 120.1 * mirror, 48.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 120.1 * mirror, 48.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 119.5 * mirror, 50.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 119.5 * mirror, 50.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 123 * mirror, 49.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 123 * mirror, 49.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 123.4 * mirror, 46.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 123.4 * mirror, 46.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 121.9 * mirror, 47.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 121.9 * mirror, 47.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 123.3 * mirror, 50.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 123.3 * mirror, 50.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 123.8 * mirror, 51.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 123.8 * mirror, 51.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 124.3 * mirror, 48.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 124.3 * mirror, 48.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 123.7 * mirror, 47.8 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 123.7 * mirror, 47.8 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 123.1 * mirror, 46.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 123.1 * mirror, 46.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 125.5 * mirror, 47.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 125.5 * mirror, 47.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 126 * mirror, 49.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 126 * mirror, 49.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 131.5 * mirror, 47.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 131.5 * mirror, 47.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 132.9 * mirror, 44.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 132.9 * mirror, 44.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 135.3 * mirror, 45.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 135.3 * mirror, 45.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 134.8 * mirror, 50.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 134.8 * mirror, 50.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 126.2 * mirror, 44 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 126.2 * mirror, 44 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 122.7 * mirror, 43.8 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 122.7 * mirror, 43.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 129.1 * mirror, 51.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 129.1 * mirror, 51.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 129.5 * mirror, 51.8 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 129.5 * mirror, 51.8 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 127 * mirror, 49.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 127 * mirror, 49.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 130.4 * mirror, 48.8 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 130.4 * mirror, 48.8 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 136.9 * mirror, 57.8 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 136.9 * mirror, 57.8 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 143.4 * mirror, 41 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 143.4 * mirror, 41 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 133.8 * mirror, 39.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 133.8 * mirror, 39.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 134.3 * mirror, 45.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 134.3 * mirror, 45.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 134.8 * mirror, 51 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 134.8 * mirror, 51 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 128.3 * mirror, 49.8 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 128.3 * mirror, 49.8 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 127.7 * mirror, 52.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 127.7 * mirror, 52.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 133 * mirror, 45.8 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 133 * mirror, 45.8 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 129.5 * mirror, 52.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 129.5 * mirror, 52.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 145 * mirror, 42.8 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 145 * mirror, 42.8 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 146.5 * mirror, 46.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 146.5 * mirror, 46.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 29.2 * mirror, -8.7 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 29.2 * mirror, -8.7 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 113.2 * mirror, 6.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 113.2 * mirror, 6.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 91.5 * mirror, -12.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 91.5 * mirror, -12.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 93 * mirror, 2.6 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 93 * mirror, 2.6 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 79.4 * mirror, 7.6 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 79.4 * mirror, 7.6 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 81.2 * mirror, 12.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 81.2 * mirror, 12.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 74.5 * mirror, 9.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 74.5 * mirror, 9.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 113.9 * mirror, -16.4 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 113.9 * mirror, -16.4 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 56.9 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 56.9 * mirror, -1.8 , 0 );

setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.05, 2.06 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.05, 2.06 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.12, 2.13 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.12, 2.13 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 2.19, 2.2 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 2.19, 2.2 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 2.26, 2.27 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 2.26, 2.27 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 124 + OFFSET_X, 1, -6.5 * mirror );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -6.5 * mirror );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -5.5 * mirror );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -5.5 * mirror );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -8 * mirror );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -8 * mirror );

setBlendColor( spep_2 + 156 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 158 + OFFSET_X, 1, 3, 0, 0, 0, 0.01 );
setBlendColor( spep_2 + 160 + OFFSET_X, 1, 3, 0, 0, 0, 0.02 );
setBlendColor( spep_2 + 162 + OFFSET_X, 1, 3, 0, 0, 0, 0.03 );
setBlendColor( spep_2 + 164 + OFFSET_X, 1, 3, 0, 0, 0, 0.05 );
setBlendColor( spep_2 + 166 + OFFSET_X, 1, 3, 0, 0, 0, 0.06 );
setBlendColor( spep_2 + 168 + OFFSET_X, 1, 3, 0, 0, 0, 0.07 );
setBlendColor( spep_2 + 170 + OFFSET_X, 1, 3, 0, 0, 0, 0.08 );
setBlendColor( spep_2 + 172 + OFFSET_X, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_2 + 174 + OFFSET_X, 1, 3, 0, 0, 0, 0.11 );
setBlendColor( spep_2 + 176 + OFFSET_X, 1, 3, 0, 0, 0, 0.12 );
setBlendColor( spep_2 + 178 + OFFSET_X, 1, 3, 0, 0, 0, 0.14 );
setBlendColor( spep_2 + 180 + OFFSET_X, 1, 3, 0, 0, 0, 0.15 );
setBlendColor( spep_2 + 182 + OFFSET_X, 1, 3, 0, 0, 0, 0.16 );
setBlendColor( spep_2 + 184 + OFFSET_X, 1, 3, 0, 0, 0, 0.17 );
setBlendColor( spep_2 + 186 + OFFSET_X, 1, 3, 0, 0, 0, 0.19 );
setBlendColor( spep_2 + 188 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_2 + 190 + OFFSET_X, 1, 3, 0, 0, 0, 0.21 );
setBlendColor( spep_2 + 192 + OFFSET_X, 1, 3, 0, 0, 0, 0.23 );
setBlendColor( spep_2 + 194 + OFFSET_X, 1, 3, 0, 0, 0, 0.24 );
setBlendColor( spep_2 + 196 + OFFSET_X, 1, 3, 0, 0, 0, 0.25 );
setBlendColor( spep_2 + 198 + OFFSET_X, 1, 3, 0, 0, 0, 0.26 );
setBlendColor( spep_2 + 200 + OFFSET_X, 1, 3, 0, 0, 0, 0.28 );
setBlendColor( spep_2 + 202 + OFFSET_X, 1, 3, 0, 0, 0, 0.29 );
setBlendColor( spep_2 + 204 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_2 + 206 + OFFSET_X, 1, 3, 0, 0, 0, 0.32 );
setBlendColor( spep_2 + 208 + OFFSET_X, 1, 3, 0, 0, 0, 0.33 );
setBlendColor( spep_2 + 210 + OFFSET_X, 1, 3, 0, 0, 0, 0.34 );
setBlendColor( spep_2 + 212 + OFFSET_X, 1, 3, 0, 0, 0, 0.35 );
setBlendColor( spep_2 + 214 + OFFSET_X, 1, 3, 0, 0, 0, 0.37 );
setBlendColor( spep_2 + 216 + OFFSET_X, 1, 3, 0, 0, 0, 0.38 );
setBlendColor( spep_2 + 218 + OFFSET_X, 1, 3, 0, 0, 0, 0.39 );
setBlendColor( spep_2 + 220 + OFFSET_X, 1, 3, 0, 0, 0, 0.41 );
setBlendColor( spep_2 + 222 + OFFSET_X, 1, 3, 0, 0, 0, 0.42 );
setBlendColor( spep_2 + 224 + OFFSET_X, 1, 3, 0, 0, 0, 0.43 );
setBlendColor( spep_2 + 226 + OFFSET_X, 1, 3, 0, 0, 0, 0.44 );
setBlendColor( spep_2 + 228 + OFFSET_X, 1, 3, 0, 0, 0, 0.46 );
setBlendColor( spep_2 + 230 + OFFSET_X, 1, 3, 0, 0, 0, 0.47 );
setBlendColor( spep_2 + 232 + OFFSET_X, 1, 3, 0, 0, 0, 0.48 );
setBlendColor( spep_2 + 234 + OFFSET_X, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_2 + 236 + OFFSET_X, 1, 3, 0, 0, 0, 0.0 );

-- 敵の動き2
setDisp( spep_2 + 284 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 356 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 284 + OFFSET_X, 1, 86.8 * mirror, 6.3 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 86.8 * mirror, 6.3 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 92.8 * mirror, -1.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 92.8 * mirror, -1.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 83.1 * mirror, -0.7 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 83.1 * mirror, -0.7 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 82.7 * mirror, 5 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 82.7 * mirror, 5 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 87.5 * mirror, 12.4 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 87.5 * mirror, 12.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 80.2 * mirror, 8.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 80.2 * mirror, 8.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 94 * mirror, 14.5 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 94 * mirror, 14.5 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 86.4 * mirror, 1.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 86.4 * mirror, 1.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 78.7 * mirror, 5.9 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 78.7 * mirror, 5.9 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 87.6 * mirror, 6 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 87.6 * mirror, 6 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 85.5 * mirror, 4.8 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 85.5 * mirror, 4.8 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 82.9 * mirror, 9.2 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 82.9 * mirror, 9.2 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 82.4 * mirror, 6.5 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 82.4 * mirror, 6.5 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 84.3 * mirror, 3.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 84.3 * mirror, 3.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 81.6 * mirror, 2.7 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 81.6 * mirror, 2.7 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 82.9 * mirror, 1.9 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 82.9 * mirror, 1.9 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 84.3 * mirror, 3.9 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 84.3 * mirror, 3.9 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 86.9 * mirror, 8 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 86.9 * mirror, 8 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 92.5 * mirror, 9.4 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 92.5 * mirror, 9.4 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 88.2 * mirror, 0.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 88.2 * mirror, 0.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 82.8 * mirror, 4.3 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 82.8 * mirror, 4.3 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 79.8 * mirror, 5.8 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 79.8 * mirror, 5.8 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 86.9 * mirror, 4.9 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 86.9 * mirror, 4.9 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 82 * mirror, 3.1 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 82 * mirror, 3.1 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 86 * mirror, 12.2 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 86 * mirror, 12.2 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 87.3 * mirror, 5.7 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 87.3 * mirror, 5.7 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 85.5 * mirror, 7.9 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 85.5 * mirror, 7.9 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 90.7 * mirror, 4.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 90.7 * mirror, 4.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 87.3 * mirror, 5.4 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 87.3 * mirror, 5.4 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 89.6 * mirror, 6.2 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 89.6 * mirror, 6.2 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 91.3 * mirror, 6.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 91.3 * mirror, 6.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 88.6 * mirror, 2.5 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 88.6 * mirror, 2.5 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 90.5 * mirror, 1.4 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 90.5 * mirror, 1.4 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 79.9 * mirror, 6.2 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 79.9 * mirror, 6.2 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 83.8 * mirror, 9.8 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 83.8 * mirror, 9.8 , 0 );

setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 284 + OFFSET_X, 1, -8 * mirror );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -8 * mirror );

setBlendColor(spep_2 + 284 + OFFSET_X, 1, 3, 0, 0, 0, 1.0);

-- 敵の動き3
setDisp( spep_2 + 454 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 566 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 454 + OFFSET_X, 1, 20.9 * mirror, -3.5 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 20.9 * mirror, -3.5 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 39.2 * mirror, -5.2 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 39.2 * mirror, -5.2 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 39.4 * mirror, -13.6 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 39.4 * mirror, -13.6 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 35.3 * mirror, -0.1 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 35.3 * mirror, -0.1 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 9 * mirror, -10.1 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 9 * mirror, -10.1 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 20.1 * mirror, 0.1 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 20.1 * mirror, 0.1 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 14.5 * mirror, -0.9 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 14.5 * mirror, -0.9 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 22.2 * mirror, -7.1 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 22.2 * mirror, -7.1 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 47.5 * mirror, -3.4 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 47.5 * mirror, -3.4 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 25.7 * mirror, -22.7 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 25.7 * mirror, -22.7 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 27.2 * mirror, -7.1 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 27.2 * mirror, -7.1 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 13.6 * mirror, -2.3 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 13.6 * mirror, -2.3 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 15.3 * mirror, 2.6 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 15.3 * mirror, 2.6 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 8.6 * mirror, 0 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 8.6 * mirror, 0 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 48.3 * mirror, -26.3 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 48.3 * mirror, -26.3 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -8.7 * mirror, -11.7 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -8.7 * mirror, -11.7 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 27.2 * mirror, -7.2 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 27.2 * mirror, -7.2 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 25.3 * mirror, -5.4 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 25.3 * mirror, -5.4 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 24.6 * mirror, -3.1 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 24.6 * mirror, -3.1 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 19.6 * mirror, -6.9 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 19.6 * mirror, -6.9 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 17.7 * mirror, -6.9 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 17.7 * mirror, -6.9 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 20.9 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 20.9 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 20.9 * mirror, -1.7 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 20.9 * mirror, -1.7 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 18.9 * mirror, -3.1 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 18.9 * mirror, -3.1 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 21.2 * mirror, -4 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 21.2 * mirror, -4 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 24.5 * mirror, 0.6 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 24.5 * mirror, 0.6 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 27.6 * mirror, -8.3 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 27.6 * mirror, -8.3 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 21.8 * mirror, -8.2 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 21.8 * mirror, -8.2 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 21.7 * mirror, -5.5 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 21.7 * mirror, -5.5 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 22.5 * mirror, -2.5 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 22.5 * mirror, -2.5 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 18.6 * mirror, -3.4 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 18.6 * mirror, -3.4 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 17.2 * mirror, -1.7 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 17.2 * mirror, -1.7 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 20.3 * mirror, -5.4 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 20.3 * mirror, -5.4 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 17.9 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 17.9 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 26.3 * mirror, -7.2 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 26.3 * mirror, -7.2 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 26.8 * mirror, -5.6 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 26.8 * mirror, -5.6 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 20 * mirror, -4.7 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 20 * mirror, -4.7 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 21 * mirror, -2.8 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 21 * mirror, -2.8 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 21.1 * mirror, -2.6 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 21.1 * mirror, -2.6 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 20.1 * mirror, -3.3 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 20.1 * mirror, -3.3 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 20.6 * mirror, -3.8 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 20.6 * mirror, -3.8 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 21 * mirror, -3.6 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 21 * mirror, -3.6 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 21.5 * mirror, -1.7 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 21.5 * mirror, -1.7 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 23.8 * mirror, -3.9 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 23.8 * mirror, -3.9 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 22.8 * mirror, -5.9 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 22.8 * mirror, -5.9 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 21.2 * mirror, -5.2 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 21.2 * mirror, -5.2 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 21 * mirror, -4.4 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 21 * mirror, -4.4 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 21.6 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 21.6 * mirror, -3.7 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 21.2 * mirror, -2.8 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 21.2 * mirror, -2.8 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 20 * mirror, -3.6 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 20 * mirror, -3.6 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 19.3 * mirror, -3.1 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 19.3 * mirror, -3.1 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 20.6 * mirror, -3.1 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 20.6 * mirror, -3.1 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 20.1 * mirror, -4.5 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 20.1 * mirror, -4.5 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 19.8 * mirror, -2.8 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 19.8 * mirror, -2.8 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 22.3 * mirror, -4 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 22.3 * mirror, -4 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 23.8 * mirror, -5.7 , 0 );

setScaleKey( spep_2 + 454 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 0.31, 0.31 );

setRotateKey( spep_2 + 454 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_2 + 566 + OFFSET_X, 1, 0 * mirror );

setBlendColor(spep_2 + 454 + OFFSET_X, 1, 3, 0, 0, 0, 0.0);

-- ** 音 ** --
--気弾発射
SE018 = playSeVer2( spep_2 + 8, 1027, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 8, 1193, "", 0, 0, 0, 0.6);
SE020 = playSeVer2( spep_2 + 8, 1133, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 8, 1423, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 26, 1227, "",spep_2 + 500, 0, 46, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 140; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);

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
--気弾飛んでいく
SE023 = playSeVer2( spep_2 + 138, 1343, "",spep_2 + 494, 0, 126, -1);
SE024 = playSeVer2( spep_2 + 146, 1161, "",spep_2 + 320, 0, 54, -1);

--気弾ヒット
SE025 = playSeVer2( spep_2 + 266, 1024, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 266, 1258, "", 0, 0, 0, -1);

--向かってくる
SE027 = playSeVer2( spep_2 + 358, 1182, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 358, 1117, "", 0, 0, 0, -1);

--ラストパンチ
SE029 = playSeVer2( spep_2 + 428, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 428, SE029, 184 );
SE030 = playSeVer2( spep_2 + 428, 1305, "",spep_2 + 580, 0, 74, -1);
SE031 = playSeVer2( spep_2 + 438, 1049, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 442, 1120, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 448, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 448, SE033, 78 );
SE034 = playSeVer2( spep_2 + 451, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 451, SE034, 70 );

-- ** ダメージ表示 ** --
if (_IS_PLAYER_SIDE_ == 1) then
    hideKoScreen();
    fadeKoLabel( 1, 0.5)
end
dealDamage( spep_2 + 454); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 558F(KO時 566F)