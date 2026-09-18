--1032120:LR_超サイヤ人孫悟飯(未来)/超サイヤ人トランクス(少年期)(未来)_超必殺技：爆裂乱舞
--sp_effect_b1_00348
--sp2927

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164209; --悟飯PANアップ〜カットインまで ef_001
SP_02  = 164211; --ダッシュ〜フィニッシュまで ef_002
SP_02b = 164212; --ダッシュ〜フィニッシュまで ef_002b

--エフェクト(敵)
SP_01r  = 164210; --悟飯PANアップ〜カットインまで ef_001r
SP_02r  = 164213; --ダッシュ〜フィニッシュまで ef_002r
SP_02br = 164214; --ダッシュ〜フィニッシュまで ef_002br

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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 悟飯PANアップ〜カットインまで
-------------------------------------------------
MAX_FRAME_0 = 116;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 悟飯PANアップ〜カットインまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 14;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 134, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
--顔カットイン
--SE003 = playSeVer2( spep_0 + 24, 1018, "", 0, 0, 0, -1);
--構える
SE004 = playSeVer2( spep_0 + 26, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 58 );
--カードカットイン
--SE005 = playSeVer2( spep_1 + 6, 1035, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 116

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- ダッシュ〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 624;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ダッシュ〜フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ダッシュ〜フィニッシュまで(ef_002b)
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
setDisp( spep_2 + 94 + OFFSET_X, 1, 1);
setDisp( spep_2 + 200 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 94 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 118 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 94 + OFFSET_X, 1, 175, 4.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 175, 4.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 126.9, 85.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 126.9, 85.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 190.3, 128.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 190.3, 128.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 158.6, 107.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 158.6, 107.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 126.9, 85.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 126.9, 85.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 158.6, 107.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 158.6, 107.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 142.7, 96.7 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 142.7, 96.7 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 126.9, 85.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 126.9, 85.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 130, 89 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 130, 89 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 123.8, 82.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 123.8, 82.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 130, 89 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 130, 89 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 123.8, 82.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 123.8, 82.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 126.9, 85.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 126.9, 85.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 101.5, 85.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 101.5, 85.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 95, 85.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 95, 85.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 65.1, 85.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 65.1, 85.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 11.9, 85.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 11.9, 85.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -64.6, 85.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -64.6, 85.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -70.6, 86 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -70.6, 86 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -80.3, 85.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -80.3, 85.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -89, 85.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -89, 85.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -96.7, 85.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -96.7, 85.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -103.6, 85.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -103.6, 85.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -109.4, 85.9 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -109.4, 85.9 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -114.3, 85.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -114.3, 85.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -118.3, 85.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -118.3, 85.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -121.3, 85.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -121.3, 85.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -123.3, 85.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -123.3, 85.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -124.4, 85.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -124.4, 85.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -124.5, 85.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -124.5, 85.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -124.2, 85.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -124.2, 85.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -123.9, 85.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -123.9, 85.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -123.6, 85.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -123.6, 85.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -123.3, 85.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -123.3, 85.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -123.1, 85.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -123.1, 85.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -122.8, 85.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -122.8, 85.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -122.6, 85.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -122.6, 85.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -122.4, 85.9 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -122.4, 85.9 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -122.2, 85.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -122.2, 85.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -122, 85.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -122, 85.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -121.9, 85.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -121.9, 85.9 , 0 );

setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.35, 2.35 );

setRotateKey( spep_2 + 94 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -28.7 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -28.7 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -16.1 );

--敵の動き2
setDisp( spep_2 + 246 + OFFSET_X, 1, 1);
setDisp( spep_2 + 294 + OFFSET_X, 1, 0);

setMoveKey( spep_2 + 246 + OFFSET_X, 1, 316.6, -108.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 316.6, -108.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 290, -108.6 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 290, -108.6 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 263.5, -108.7 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 263.5, -108.7 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 253.9, -108.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 253.9, -108.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 246, -109 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 246, -109 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 239.9, -109.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 239.9, -109.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 235.6, -109.2 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 235.6, -109.2 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 233.1, -109.2 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 233.1, -109.2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 232.2, -109.4 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 232.2, -109.4 , 0 );

setMoveKey( spep_2 + 272 + OFFSET_X, 1, 156.3, 372.2 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 156.3, 372.2 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 235.5, 565.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 235.5, 565.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 197.1, 476.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 197.1, 476.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 158.4, 385.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 158.4, 385.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 238.7, 585.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 238.7, 585.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 159.8, 395.1 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 159.8, 395.1 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 200.6, 499.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 200.6, 499.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 161.2, 404.3 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 161.2, 404.3 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 251, 609.6 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 251, 609.6 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 331.4, 805.7 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 331.4, 805.7 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 424.3, 1014.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 424.3, 1014.1 , 0 );

setScaleKey( spep_2 + 246 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 3.3, 3.3 );

setRotateKey( spep_2 + 246 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -33.2 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -33.2 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -39 );

--敵の動き3
setDisp( spep_2 + 370 + OFFSET_X, 1, 1);
setDisp( spep_2 + 458 + OFFSET_X, 1, 0);

setMoveKey( spep_2 + 370 + OFFSET_X, 1, 256.6, -890 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 256.6, -890 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 276.8, -581.8 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 276.8, -581.8 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 296.9, -273.6 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 296.9, -273.6 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 317.1, 34.5 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 317.1, 34.5 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 337.2, 342.7 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 337.2, 342.7 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 357.4, 650.9 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 357.4, 650.9 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 377.6, 959.1 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 377.6, 959.1 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 397.7, 1267.2 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 397.7, 1267.2 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 417.9, 1575.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 417.9, 1575.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 438, 1883.6 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 438, 1883.6 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 458.2, 2191.8 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 458.2, 2191.8 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 457.5, 2170.5 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 457.5, 2170.5 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 458.2, 2158.2 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 458.2, 2158.2 , 0 );

setMoveKey( spep_2 + 418 + OFFSET_X, 1, 7.6, 290.8 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 7.6, 290.8 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 5.6, 292.1 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 5.6, 292.1 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 5.4, 293.4 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 5.4, 293.4 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 4.3, 299.5 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 4.3, 299.5 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 3.3, 305 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 3.3, 305 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 2.2, 316 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 2.2, 316 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 1.1, 326.1 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 1.1, 326.1 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -9.5, 342.6 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -9.5, 342.6 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -66.4, 448.8 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -66.4, 448.8 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -106.7, 508.3 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -106.7, 508.3 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -155, 564.8 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -155, 564.8 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -211.3, 617.8 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -211.3, 617.8 , 0 );

setScaleKey( spep_2 + 370 + OFFSET_X, 1, 14.98, 14.98 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 14.99, 14.99 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 14.99, 14.99 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 14.99, 14.99 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 2.52, 2.52 );

setRotateKey( spep_2 + 370 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 417 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_2 + 421 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_2 + 422 + OFFSET_X, 1, -38.8 );
setRotateKey( spep_2 + 425 + OFFSET_X, 1, -38.8 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_2 + 429 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, -41.4 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, -41.4 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, -49.6 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, -49.6 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, -53 );
setRotateKey( spep_2 + 453 + OFFSET_X, 1, -53 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, -56.5 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, -56.5 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, -59.9 );

--敵の動き4
setDisp( spep_2 + 476 + OFFSET_X, 1, 1);
setDisp( spep_2 + 490 + OFFSET_X, 1, 0);

setMoveKey( spep_2 + 476 + OFFSET_X, 1, -23, 589.7 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -23, 589.7 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -23, 497.2 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -23, 497.2 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -23, 404.7 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -23, 404.7 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -23, 312.2 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -23, 312.2 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -23, 219.8 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -23, 219.8 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -23, 127.3 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -23, 127.3 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -23, 34.8 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -23, 34.8 , 0 );

setScaleKey( spep_2 + 476 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 0.2, 0.2 );


setRotateKey( spep_2 + 476 + OFFSET_X, 1, -113.5 );
setRotateKey( spep_2 + 490 + OFFSET_X, 1, -113.5 );


-- ** 音 ** --
--気ダメ
SE006 = playSeVer2( spep_2 + 26, 1035, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 26, 1503, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 56, 1504, "", 0, 0, 0, -1);
--向かっていく
SE009 = playSeVer2( spep_2 + 70, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 82, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 108; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006, 0);
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
--蹴る
SE011 = playSeVer2( spep_2 + 112, 1003, "", 0, 0, 0, -1);
--オーラ
SE012 = playSeVer2( spep_2 + 116, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE012, 79 );
--蹴る
SE013 = playSeVer2( spep_2 + 118, 1187, "", 0, 0, 0, -1);
--オーラ
SE014 = playSeVer2( spep_2 + 140, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE014, 79 );
--着地
SE015 = playSeVer2( spep_2 + 158, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 158, SE015, 170 );
--オーラ
SE016 = playSeVer2( spep_2 + 164, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 164, SE016, 79 );
--着地
SE017 = playSeVer2( spep_2 + 164, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 164, SE017, 153 );
--オーラ
SE018 = playSeVer2( spep_2 + 188, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE018, 79 );
--画面遷移
SE019 = playSeVer2( spep_2 + 192, 1232, "", 0, 0, 0, -1);
--振りかぶる
SE020 = playSeVer2( spep_2 + 200, 1004, "", 0, 0, 0, -1);
--オーラ
SE021 = playSeVer2( spep_2 + 212, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE021, 79 );
SE022 = playSeVer2( spep_2 + 236, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 236, SE022, 79 );
--殴り飛ばす
SE023 = playSeVer2( spep_2 + 256, 1189, "", 0, 0, 0, -1);
--オーラ
SE024 = playSeVer2( spep_2 + 260, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE024, 79 );
--殴り飛ばす
SE025 = playSeVer2( spep_2 + 264, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE025, 74 );
SE026 = playSeVer2( spep_2 + 264, 1187, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 274, 1027, "", 0, 0, 0, -1);
--オーラ
SE028 = playSeVer2( spep_2 + 284, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 284, SE028, 79 );
SE029 = playSeVer2( spep_2 + 308, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 308, SE029, 79 );
--走り出す
SE030 = playSeVer2( spep_2 + 308, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 308, SE030, 164 );
SE031 = playSeVer2( spep_2 + 318, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 318, SE031, 182 );
--飛び上がる
SE032 = playSeVer2( spep_2 + 322, 1452, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 328, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 328, SE033, 71 );
--オーラ
SE034 = playSeVer2( spep_2 + 332, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 332, SE034, 79 );
SE035 = playSeVer2( spep_2 + 356, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 356, SE035, 50 );
SE036 = playSeVer2( spep_2 + 380, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 380, SE036, 40 );
--敵つかむ
SE037 = playSeVer2( spep_2 + 386, 1013, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 386, 1006, "", 0, 0, 0, -1);
--オーラ
SE039 = playSeVer2( spep_2 + 404, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 404, SE039, 32 );
--おりてくる
SE040 = playSeVer2( spep_2 + 406, 1121, "",spep_2 + 508, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 406, SE040, 71 );
SE041 = playSeVer2( spep_2 + 408, 1183, "",spep_2 + 506, 0, 18, -1);
SE042 = playSeVer2( spep_2 + 408, 1304, "",spep_2 + 504, 0, 18, -1);
--オーラ
SE043 = playSeVer2( spep_2 + 428, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 428, SE043, 32 );
SE044 = playSeVer2( spep_2 + 452, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 452, SE044, 32 );
SE045 = playSeVer2( spep_2 + 476, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 476, SE045, 40 );
--建物叩きつける
SE046 = playSeVer2( spep_2 + 488, 1120, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 488, 1159, "", 0, 0, 0, -1);
--オーラ
SE048 = playSeVer2( spep_2 + 500, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 500, SE048, 40 );
SE049 = playSeVer2( spep_2 + 524, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 524, SE049, 40 );
SE050 = playSeVer2( spep_2 + 548, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 548, SE050, 40 );
SE051 = playSeVer2( spep_2 + 572, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 572, SE051, 40 );
SE052 = playSeVer2( spep_2 + 596, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 596, SE052, 40 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 492); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 624

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 悟飯PANアップ〜カットインまで
-------------------------------------------------
MAX_FRAME_0 = 116;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 悟飯PANアップ〜カットインまで(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 14;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 134, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
--顔カットイン
--SE003 = playSeVer2( spep_0 + 24, 1018, "", 0, 0, 0, -1);
--構える
SE004 = playSeVer2( spep_0 + 26, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 58 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 116

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- ダッシュ〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 624;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ダッシュ〜フィニッシュまで(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ダッシュ〜フィニッシュまで(ef_002br)
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
setDisp( spep_2 + 94 + OFFSET_X, 1, 1);
setDisp( spep_2 + 200 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 94 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 118 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 94 + OFFSET_X, 1, 175, 4.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 175, 4.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 126.9, 85.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 126.9, 85.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 190.3, 128.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 190.3, 128.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 158.6, 107.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 158.6, 107.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 126.9, 85.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 126.9, 85.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 158.6, 107.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 158.6, 107.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 142.7, 96.7 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 142.7, 96.7 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 126.9, 85.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 126.9, 85.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 130, 89 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 130, 89 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 123.8, 82.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 123.8, 82.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 130, 89 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 130, 89 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 123.8, 82.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 123.8, 82.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 126.9, 85.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 126.9, 85.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 101.5, 85.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 101.5, 85.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 95, 85.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 95, 85.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 65.1, 85.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 65.1, 85.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 11.9, 85.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 11.9, 85.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -64.6, 85.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -64.6, 85.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -70.6, 86 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -70.6, 86 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -80.3, 85.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -80.3, 85.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -89, 85.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -89, 85.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -96.7, 85.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -96.7, 85.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -103.6, 85.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -103.6, 85.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -109.4, 85.9 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -109.4, 85.9 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -114.3, 85.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -114.3, 85.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -118.3, 85.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -118.3, 85.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -121.3, 85.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -121.3, 85.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -123.3, 85.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -123.3, 85.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -124.4, 85.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -124.4, 85.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -124.5, 85.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -124.5, 85.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -124.2, 85.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -124.2, 85.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -123.9, 85.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -123.9, 85.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -123.6, 85.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -123.6, 85.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -123.3, 85.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -123.3, 85.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -123.1, 85.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -123.1, 85.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -122.8, 85.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -122.8, 85.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -122.6, 85.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -122.6, 85.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -122.4, 85.9 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -122.4, 85.9 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -122.2, 85.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -122.2, 85.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -122, 85.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -122, 85.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -121.9, 85.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -121.9, 85.9 , 0 );

setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.35, 2.35 );

setRotateKey( spep_2 + 94 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -28.7 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -28.7 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -16.1 );

--敵の動き2
setDisp( spep_2 + 246 + OFFSET_X, 1, 1);
setDisp( spep_2 + 294 + OFFSET_X, 1, 0);

setMoveKey( spep_2 + 246 + OFFSET_X, 1, 316.6, -108.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 316.6, -108.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 290, -108.6 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 290, -108.6 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 263.5, -108.7 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 263.5, -108.7 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 253.9, -108.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 253.9, -108.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 246, -109 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 246, -109 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 239.9, -109.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 239.9, -109.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 235.6, -109.2 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 235.6, -109.2 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 233.1, -109.2 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 233.1, -109.2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 232.2, -109.4 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 232.2, -109.4 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 156.3, 372.2 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 156.3, 372.2 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 235.5, 565.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 235.5, 565.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 197.1, 476.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 197.1, 476.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 158.4, 385.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 158.4, 385.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 238.7, 585.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 238.7, 585.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 159.8, 395.1 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 159.8, 395.1 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 200.6, 499.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 200.6, 499.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 161.2, 404.3 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 161.2, 404.3 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 251, 609.6 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 251, 609.6 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 331.4, 805.7 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 331.4, 805.7 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 424.3, 1014.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 424.3, 1014.1 , 0 );

setScaleKey( spep_2 + 246 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 3.3, 3.3 );

setRotateKey( spep_2 + 246 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -33.2 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -33.2 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -39 );

--敵の動き3
setDisp( spep_2 + 370 + OFFSET_X, 1, 1);
setDisp( spep_2 + 458 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 370 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 370 + OFFSET_X, 1, -256.6, -890 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -256.6, -890 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -276.8, -581.8 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -276.8, -581.8 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -296.9, -273.6 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -296.9, -273.6 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -317.1, 34.5 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -317.1, 34.5 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -337.2, 342.7 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -337.2, 342.7 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -357.4, 650.9 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -357.4, 650.9 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -377.6, 959.1 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -377.6, 959.1 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -397.7, 1267.2 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -397.7, 1267.2 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -417.9, 1575.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -417.9, 1575.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -438, 1883.6 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -438, 1883.6 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -458.2, 2191.8 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -458.2, 2191.8 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -457.5, 2170.5 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -457.5, 2170.5 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -458.2, 2158.2 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -458.2, 2158.2 , 0 );

setMoveKey( spep_2 + 418 + OFFSET_X, 1, -7.6, 290.8 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -7.6, 290.8 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -5.6, 292.1 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -5.6, 292.1 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -5.4, 293.4 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -5.4, 293.4 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -4.3, 299.5 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -4.3, 299.5 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -3.3, 305 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -3.3, 305 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -2.2, 316 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -2.2, 316 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -1.1, 326.1 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -1.1, 326.1 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 9.5, 342.6 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 9.5, 342.6 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 66.4, 448.8 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 66.4, 448.8 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 106.7, 508.3 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 106.7, 508.3 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 155, 564.8 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 155, 564.8 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 211.3, 617.8 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 211.3, 617.8 , 0 );

setScaleKey( spep_2 + 370 + OFFSET_X, 1, 14.98, 14.98 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 14.99, 14.99 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 14.99, 14.99 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 14.99, 14.99 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 2.52, 2.52 );

setRotateKey( spep_2 + 370 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 417 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, 38.2 );
setRotateKey( spep_2 + 421 + OFFSET_X, 1, 38.2 );
setRotateKey( spep_2 + 422 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_2 + 425 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_2 + 429 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, 41.4 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, 41.4 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, 42.1 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, 42.1 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, 49.6 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, 49.6 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, 53 );
setRotateKey( spep_2 + 453 + OFFSET_X, 1, 53 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, 56.5 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, 56.5 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, 59.9 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, 59.9 );

--敵の動き4
setDisp( spep_2 + 476 + OFFSET_X, 1, 1);
setDisp( spep_2 + 490 + OFFSET_X, 1, 0);

setMoveKey( spep_2 + 476 + OFFSET_X, 1, 2, 589.7 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 2, 589.7 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 2, 497.2 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 2, 497.2 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 2, 404.7 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 2, 404.7 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 2, 312.2 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 2, 312.2 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 2, 219.8 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 2, 219.8 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 2, 127.3 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 2, 127.3 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 2, 34.8 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 2, 34.8 , 0 );

setScaleKey( spep_2 + 476 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 476 + OFFSET_X, 1, 113.5 );
setRotateKey( spep_2 + 490 + OFFSET_X, 1, 113.5 );


-- ** 音 ** --
--気ダメ
SE006 = playSeVer2( spep_2 + 26, 1035, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 26, 1503, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 56, 1504, "", 0, 0, 0, -1);
--向かっていく
SE009 = playSeVer2( spep_2 + 70, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 82, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 108; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006, 0);
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

--蹴る
SE011 = playSeVer2( spep_2 + 112, 1003, "", 0, 0, 0, -1);
--オーラ
SE012 = playSeVer2( spep_2 + 116, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE012, 79 );
--蹴る
SE013 = playSeVer2( spep_2 + 118, 1187, "", 0, 0, 0, -1);
--オーラ
SE014 = playSeVer2( spep_2 + 140, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE014, 79 );
--着地
SE015 = playSeVer2( spep_2 + 158, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 158, SE015, 170 );
--オーラ
SE016 = playSeVer2( spep_2 + 164, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 164, SE016, 79 );
--着地
SE017 = playSeVer2( spep_2 + 164, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 164, SE017, 153 );
--オーラ
SE018 = playSeVer2( spep_2 + 188, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE018, 79 );
--画面遷移
SE019 = playSeVer2( spep_2 + 192, 1232, "", 0, 0, 0, -1);
--振りかぶる
SE020 = playSeVer2( spep_2 + 200, 1004, "", 0, 0, 0, -1);
--オーラ
SE021 = playSeVer2( spep_2 + 212, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE021, 79 );
SE022 = playSeVer2( spep_2 + 236, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 236, SE022, 79 );
--殴り飛ばす
SE023 = playSeVer2( spep_2 + 256, 1189, "", 0, 0, 0, -1);
--オーラ
SE024 = playSeVer2( spep_2 + 260, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE024, 79 );
--殴り飛ばす
SE025 = playSeVer2( spep_2 + 264, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE025, 74 );
SE026 = playSeVer2( spep_2 + 264, 1187, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 274, 1027, "", 0, 0, 0, -1);
--オーラ
SE028 = playSeVer2( spep_2 + 284, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 284, SE028, 79 );
SE029 = playSeVer2( spep_2 + 308, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 308, SE029, 79 );
--走り出す
SE030 = playSeVer2( spep_2 + 308, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 308, SE030, 164 );
SE031 = playSeVer2( spep_2 + 318, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 318, SE031, 182 );
--飛び上がる
SE032 = playSeVer2( spep_2 + 322, 1452, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 328, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 328, SE033, 71 );
--オーラ
SE034 = playSeVer2( spep_2 + 332, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 332, SE034, 79 );
SE035 = playSeVer2( spep_2 + 356, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 356, SE035, 50 );
SE036 = playSeVer2( spep_2 + 380, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 380, SE036, 40 );
--敵つかむ
SE037 = playSeVer2( spep_2 + 386, 1013, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 386, 1006, "", 0, 0, 0, -1);
--オーラ
SE039 = playSeVer2( spep_2 + 404, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 404, SE039, 32 );
--おりてくる
SE040 = playSeVer2( spep_2 + 406, 1121, "",spep_2 + 508, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 406, SE040, 71 );
SE041 = playSeVer2( spep_2 + 408, 1183, "",spep_2 + 506, 0, 18, -1);
SE042 = playSeVer2( spep_2 + 408, 1304, "",spep_2 + 504, 0, 18, -1);
--オーラ
SE043 = playSeVer2( spep_2 + 428, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 428, SE043, 32 );
SE044 = playSeVer2( spep_2 + 452, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 452, SE044, 32 );
SE045 = playSeVer2( spep_2 + 476, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 476, SE045, 40 );
--建物叩きつける
SE046 = playSeVer2( spep_2 + 488, 1120, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 488, 1159, "", 0, 0, 0, -1);
--オーラ
SE048 = playSeVer2( spep_2 + 500, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 500, SE048, 40 );
SE049 = playSeVer2( spep_2 + 524, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 524, SE049, 40 );
SE050 = playSeVer2( spep_2 + 548, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 548, SE050, 40 );
SE051 = playSeVer2( spep_2 + 572, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 572, SE051, 40 );
SE052 = playSeVer2( spep_2 + 596, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 596, SE052, 40 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 492); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 624

end