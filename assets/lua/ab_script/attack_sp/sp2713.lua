--1028780:SSR_超サイヤ人3孫悟空(天使)_必殺技(↓簡易版)：瞬間移動メテオクラッシュ
--sp_effect_a1_00437
--sp2713

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162822;  --ef_001  かまえ〜手を前にかざす
SP_02  = 162824;  --ef_002  気功波〜フィニッシュ
SP_02b = 162826;  --ef_002_b  気功波〜フィニッシュ
SP_03  = 162847;  --ef_003  ガッ

--エフェクト(敵)
SP_01r  = 162823;  --ef_001_r  かまえ〜手を前にかざす
SP_02r  = 162825;  --ef_002_r  気功波〜フィニッシュ
SP_02br = 162827;  --ef_002_b_r 気功波〜フィニッシュ

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
-- かまえ〜手を前にかざす
-------------------------------------------------
MAX_FRAME_0 = 148;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- かまえ〜手を前にかざす(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 62;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 8, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE001, 62 );

--構える
SE002 = playSeVer2( spep_0 + 22, 1003, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 74, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 74, 1233, "", 0, 0, 0, -1);

--イナヅマ
SE003 = playSeVer2( spep_0 + 36, 1147, "", spep_0 + 158, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 36, SE003, 37 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --148f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かってくる
SE008 = playSeVer2( spep_1 + 88, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 92, 9, "",spep_1 + 168, 0, 30, -1);
SE010 = playSeVer2( spep_1 + 92, 1167, "",spep_1 + 150, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 92, SE010, 38 );

-------------------------------------------------
-- 気功波〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 328;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気功波〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気功波〜フィニッシュ(ef_002_b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 80 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 116 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 80 + OFFSET_X, 1, 102 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 80 + OFFSET_X, 1, 180.1, -180.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 180.1, -180.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 232.2, -147.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 232.2, -147.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 231, -146 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 231, -146 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 492.8, -293.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 492.8, -293.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 480.9, -289.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 480.9, -289.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 476, -275 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 476, -275 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 968.8, -470 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 968.8, -470 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 1200.8, -770 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 1200.8, -770 , 0 );

setScaleKey( spep_2 + 80 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 4.57, 4.57 );

setRotateKey( spep_2 + 80 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 12.4 );

--敵の動き2
setDisp( spep_2 + 144 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 160 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 144 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 144 + OFFSET_X, 1, -272.6, 180.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -272.6, 180.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -246.8, 170.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -246.8, 170.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -169.4, 141 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -169.4, 141 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -40.5, 92 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -40.5, 92 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 43.7, 59.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 43.7, 59.8 , 0 );

setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.23, 1.23 );

setRotateKey( spep_2 + 144 + OFFSET_X, 1, 68.2 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 68.2 );

--敵の動き3
setDisp( spep_2 + 162 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 264 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 162 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 192 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 206 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 212 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 226 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 232 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 246 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 252 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 162 + OFFSET_X, 1, -83.2, -18.8 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -83.2, -18.8 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -87.7, -18.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -87.7, -18.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -114.5, -2.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -114.5, -2.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -108.4, -17 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -108.4, -17 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -140.2, -9.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -140.2, -9.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -140.4, -8.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -140.4, -8.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -150.8, 1.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -150.8, 1.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -148.6, -0.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -148.6, -0.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -154.7, 13.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -154.7, 13.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -159.3, 0.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -159.3, 0.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -163.9, -0.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -163.9, -0.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -169.9, -0.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -169.9, -0.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -161.8, 0.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -161.8, 0.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -160.8, -5.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -160.8, -5.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -163.5, 1.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -163.5, 1.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -130, -102 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -130, -102 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -138.4, -106 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -138.4, -106 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -91.8, 68.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -91.8, 68.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -91.8, 59.1 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -91.8, 59.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -104.8, 65.6 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -104.8, 65.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -265.3, 93.4 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -265.3, 93.4 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -256.5, 93 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -256.5, 93 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -192.3, -216.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -192.3, -216.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -191, -209.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -191, -209.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -189.4, -210.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -189.4, -210.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -133, -105.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -133, -105.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -135, -109.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -135, -109.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -95.5, 65.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -95.5, 65.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -88, 63.2 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -88, 63.2 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -103, 66.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -103, 66.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -261.7, 77.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -261.7, 77.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -258.4, 90.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -258.4, 90.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -195.6, -209.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -195.6, -209.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -206.4, -207.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -206.4, -207.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -196.4, -211 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -196.4, -211 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -134.1, -106.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -134.1, -106.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -134.6, -99.1 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -134.6, -99.1 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -100.2, 63.7 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -100.2, 63.7 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -100.8, 61 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -100.8, 61 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -96.5, 67.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -96.5, 67.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -256.7, 89.1 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -256.7, 89.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -260.5, 85.6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -260.5, 85.6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -198.2, -210.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -198.2, -210.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -188.4, -210.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -188.4, -210.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -202, -204.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -202, -204.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -126.9, -96.5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -126.9, -96.5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -130.6, -103.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -130.6, -103.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -99.5, 64.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -99.5, 64.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -93.1, 61.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -93.1, 61.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -89.1, 63.7 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -89.1, 63.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -262.2, 86.2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -262.2, 86.2 , 0 );

setScaleKey( spep_2 + 162 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 6.5, 6.5 );

setRotateKey( spep_2 + 162 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 14.9 );

--敵の動き3
setDisp( spep_2 + 298 + OFFSET_X, 1, 1 );
--setDisp( spep_2 + 328 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 298 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 298 + OFFSET_X, 1, -131.7, -3.4 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -131.7, -3.4 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -134.6, -3.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -134.6, -3.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -130.6, -12.1 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -130.6, -12.1 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -125.4, -14.7 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -125.4, -14.7 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -143.4, 4.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -143.4, 4.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -118.6, 2.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -118.6, 2.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -130.4, -9.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -130.4, -9.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -130.9, 1.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -130.9, 1.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -171.2, 2.6 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -171.2, 2.6 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -193.2, 10.1 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -193.2, 10.1 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -235.8, 12.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -235.8, 12.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -241.5, 14 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -241.5, 14 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -246, 9.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -246, 9.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -252, 5.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -252, 5.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -252.8, 13.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -252.8, 13.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -257.2, 16.6 , 0 );

setScaleKey( spep_2 + 298 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 1.22, 1.22 );

setRotateKey( spep_2 + 298 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -35.5 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--瞬間移動
SE011 = playSeVer2( spep_2 + 42, 1109, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 72, 1109, "", 0, 0, 0, -1);

--蹴り飛ばす
SE013 = playSeVer2( spep_2 + 80, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 90, 1187, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 90, 1359, "", 0, 0, 0, -1);

--イナヅマ
SE016 = playSeVer2( spep_2 + 108, 1056, "", 0, 0, 0, -1);

--瞬間移動
SE017 = playSeVer2( spep_2 + 120, 1109, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 136, 1109, "", 0, 0, 0, -1);

--殴る
SE020 = playSeVer2( spep_2 + 156, 1359, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 156, 1009, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 156, 1153, "", 0, 0, 0, -1);

--イナヅマ
SE019 = playSeVer2( spep_2 + 158, 1056, "", 0, 0, 0, -1);

--連続打撃
SE023 = playSeVer2( spep_2 + 182, 1110, "",spep_2 + 216, 0, 20, 0.5);
SE024 = playSeVer2( spep_2 + 182, 1187, "",spep_2 + 216, 0, 22, 0.5);
SE025 = playSeVer2( spep_2 + 190, 1110, "",spep_2 + 224, 0, 16, 0.5);
stopSeIfDoubleSpeed( spep_2 + 190, SE025);
SE026 = playSeVer2( spep_2 + 190, 1187, "",spep_2 + 224, 0, 22, 0.5);
stopSeIfDoubleSpeed( spep_2 + 190, SE026);
SE027 = playSeVer2( spep_2 + 200, 1110, "",spep_2 + 236, 0, 18, 0.5);
setSeVolumeByWorkId( spep_2 + 200, SE027, 133 );
setPitch( spep_2 + 200, SE027, -100 );
setTimeStretch( SE027, 0.93, 30, 4 );
SE028 = playSeVer2( spep_2 + 200, 1010, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 210, 1110, "",spep_2 + 248, 0, 18, 0.5);
SE030 = playSeVer2( spep_2 + 210, 1187, "",spep_2 + 244, 0, 22, 0.5);
SE031 = playSeVer2( spep_2 + 222, 1110, "",spep_2 + 256, 0, 16, 0.5);
setSeVolumeByWorkId( spep_2 + 222, SE031, 76 );
setPitch( spep_2 + 222, SE031, -100 );
setTimeStretch( SE031, 0.93, 30, 4 );
SE032 = playSeVer2( spep_2 + 222, 1009, "", 0, 0, 0, 0.5);
SE033 = playSeVer2( spep_2 + 234, 1110, "",spep_2 + 272, 0, 18, 0.5);
setPitch( spep_2 + 234, SE033, 100 );
setTimeStretch( SE033, 1.07, 30, 4 );
SE034 = playSeVer2( spep_2 + 240, 1187, "",spep_2 + 266, 0, 22, 0.5);
stopSeIfDoubleSpeed( spep_2 + 240, SE034);
SE035 = playSeVer2( spep_2 + 250, 1110, "",spep_2 + 280, 0, 16, 0.5);
SE036 = playSeVer2( spep_2 + 250, 1187, "",spep_2 + 278, 0, 22, 0.5);

--振りかぶる
SE037 = playSeVer2( spep_2 + 248, 1148, "",spep_2 + 316, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 248, SE037, 60 );	
SE038 = playSeVer2( spep_2 + 250, 1116, "",spep_2 + 302, 0, 18, -1);
SE039 = playSeVer2( spep_2 + 256, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE039,  100 );

--殴り飛ばす
SE040 = playSeVer2( spep_2 + 288, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 288, SE040, 150 );
SE041 = playSeVer2( spep_2 + 298, 1120, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 298, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE043 = playSeVer2( spep_2 + 312, 1183, "",spep_2 + 376, 0, 24, -1);
SE044 = playSeVer2( spep_2 + 312, 1121, "",spep_2 + 376, 0, 24, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;  --328f

---------------------------------------------------------------------------------------------------
-- ガッの背景爆発
---------------------------------------------------------------------------------------------------

-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 8, finish_1f, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 0, 0 , 0 );
setEffScaleKey( spep_N + 8, finish_1f, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1f, 1.0, 1.0 );
setEffRotateKey( spep_N + 8, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 8, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

finish_1b = entryEffectLife( spep_N + 0, SP_03, spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_005)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );

--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
--ここまで

-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_N + 6 );
endPhase( spep_N + 108 );


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- かまえ〜手を前にかざす
-------------------------------------------------
MAX_FRAME_0 = 148;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- かまえ〜手を前にかざす(ef_001_r)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 62;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 8, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE001, 62 );

--構える
SE002 = playSeVer2( spep_0 + 22, 1003, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 74, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 74, 1233, "", 0, 0, 0, -1);

--イナヅマ
SE003 = playSeVer2( spep_0 + 36, 1147, "", spep_0 + 158, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 36, SE003, 37 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --148f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かってくる
SE008 = playSeVer2( spep_1 + 88, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 92, 9, "",spep_1 + 168, 0, 30, -1);
SE010 = playSeVer2( spep_1 + 92, 1167, "",spep_1 + 150, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 92, SE010, 38 );

-------------------------------------------------
-- 気功波〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 328;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 気功波〜フィニッシュ(ef_002_r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 気功波〜フィニッシュ(ef_002_r_b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 80 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 116 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 80 + OFFSET_X, 1, 102 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 80 + OFFSET_X, 1, 180.1, -180.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 180.1, -180.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 232.2, -147.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 232.2, -147.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 231, -146 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 231, -146 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 492.8, -293.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 492.8, -293.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 480.9, -289.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 480.9, -289.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 476, -275 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 476, -275 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 968.8, -470 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 968.8, -470 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 1200.8, -770 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 1200.8, -770 , 0 );

setScaleKey( spep_2 + 80 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 4.57, 4.57 );

setRotateKey( spep_2 + 80 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 12.4 );

--敵の動き2
setDisp( spep_2 + 144 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 160 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 144 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 144 + OFFSET_X, 1, -272.6, 180.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -272.6, 180.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -246.8, 170.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -246.8, 170.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -169.4, 141 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -169.4, 141 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -40.5, 92 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -40.5, 92 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 43.7, 59.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 43.7, 59.8 , 0 );

setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.23, 1.23 );

setRotateKey( spep_2 + 144 + OFFSET_X, 1, 68.2 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 68.2 );

--敵の動き3
setDisp( spep_2 + 162 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 264 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 162 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 192 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 206 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 212 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 226 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 232 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 246 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 252 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 162 + OFFSET_X, 1, -83.2, -18.8 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -83.2, -18.8 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -87.7, -18.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -87.7, -18.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -114.5, -2.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -114.5, -2.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -108.4, -17 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -108.4, -17 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -140.2, -9.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -140.2, -9.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -140.4, -8.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -140.4, -8.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -150.8, 1.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -150.8, 1.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -148.6, -0.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -148.6, -0.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -154.7, 13.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -154.7, 13.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -159.3, 0.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -159.3, 0.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -163.9, -0.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -163.9, -0.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -169.9, -0.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -169.9, -0.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -161.8, 0.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -161.8, 0.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -160.8, -5.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -160.8, -5.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -163.5, 1.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -163.5, 1.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -130, -102 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -130, -102 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -138.4, -106 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -138.4, -106 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -91.8, 68.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -91.8, 68.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -91.8, 59.1 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -91.8, 59.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -104.8, 65.6 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -104.8, 65.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -265.3, 93.4 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -265.3, 93.4 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -256.5, 93 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -256.5, 93 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -192.3, -216.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -192.3, -216.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -191, -209.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -191, -209.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -189.4, -210.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -189.4, -210.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -133, -105.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -133, -105.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -135, -109.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -135, -109.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -95.5, 65.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -95.5, 65.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -88, 63.2 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -88, 63.2 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -103, 66.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -103, 66.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -261.7, 77.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -261.7, 77.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -258.4, 90.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -258.4, 90.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -195.6, -209.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -195.6, -209.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -206.4, -207.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -206.4, -207.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -196.4, -211 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -196.4, -211 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -134.1, -106.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -134.1, -106.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -134.6, -99.1 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -134.6, -99.1 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -100.2, 63.7 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -100.2, 63.7 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -100.8, 61 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -100.8, 61 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -96.5, 67.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -96.5, 67.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -256.7, 89.1 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -256.7, 89.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -260.5, 85.6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -260.5, 85.6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -198.2, -210.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -198.2, -210.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -188.4, -210.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -188.4, -210.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -202, -204.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -202, -204.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -126.9, -96.5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -126.9, -96.5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -130.6, -103.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -130.6, -103.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -99.5, 64.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -99.5, 64.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -93.1, 61.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -93.1, 61.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -89.1, 63.7 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -89.1, 63.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -262.2, 86.2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -262.2, 86.2 , 0 );

setScaleKey( spep_2 + 162 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 6.5, 6.5 );

setRotateKey( spep_2 + 162 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 14.9 );

--敵の動き3
setDisp( spep_2 + 298 + OFFSET_X, 1, 1 );
--setDisp( spep_2 + 328 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 298 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 298 + OFFSET_X, 1, -131.7, -3.4 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -131.7, -3.4 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -134.6, -3.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -134.6, -3.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -130.6, -12.1 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -130.6, -12.1 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -125.4, -14.7 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -125.4, -14.7 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -143.4, 4.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -143.4, 4.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -118.6, 2.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -118.6, 2.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -130.4, -9.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -130.4, -9.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -130.9, 1.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -130.9, 1.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -171.2, 2.6 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -171.2, 2.6 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -193.2, 10.1 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -193.2, 10.1 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -235.8, 12.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -235.8, 12.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -241.5, 14 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -241.5, 14 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -246, 9.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -246, 9.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -252, 5.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -252, 5.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -252.8, 13.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -252.8, 13.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -257.2, 16.6 , 0 );

setScaleKey( spep_2 + 298 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 1.22, 1.22 );

setRotateKey( spep_2 + 298 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -35.5 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--瞬間移動
SE011 = playSeVer2( spep_2 + 42, 1109, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 72, 1109, "", 0, 0, 0, -1);

--蹴り飛ばす
SE013 = playSeVer2( spep_2 + 80, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 90, 1187, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 90, 1359, "", 0, 0, 0, -1);

--イナヅマ
SE016 = playSeVer2( spep_2 + 108, 1056, "", 0, 0, 0, -1);

--瞬間移動
SE017 = playSeVer2( spep_2 + 120, 1109, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 136, 1109, "", 0, 0, 0, -1);

--殴る
SE020 = playSeVer2( spep_2 + 156, 1359, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 156, 1009, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 156, 1153, "", 0, 0, 0, -1);

--イナヅマ
SE019 = playSeVer2( spep_2 + 158, 1056, "", 0, 0, 0, -1);

--連続打撃
SE023 = playSeVer2( spep_2 + 182, 1110, "",spep_2 + 216, 0, 20, 0.5);
SE024 = playSeVer2( spep_2 + 182, 1187, "",spep_2 + 216, 0, 22, 0.5);
SE025 = playSeVer2( spep_2 + 190, 1110, "",spep_2 + 224, 0, 16, 0.5);
stopSeIfDoubleSpeed( spep_2 + 190, SE025);
SE026 = playSeVer2( spep_2 + 190, 1187, "",spep_2 + 224, 0, 22, 0.5);
stopSeIfDoubleSpeed( spep_2 + 190, SE026);
SE027 = playSeVer2( spep_2 + 200, 1110, "",spep_2 + 236, 0, 18, 0.5);
setSeVolumeByWorkId( spep_2 + 200, SE027, 133 );
setPitch( spep_2 + 200, SE027, -100 );
setTimeStretch( SE027, 0.93, 30, 4 );
SE028 = playSeVer2( spep_2 + 200, 1010, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 210, 1110, "",spep_2 + 248, 0, 18, 0.5);
SE030 = playSeVer2( spep_2 + 210, 1187, "",spep_2 + 244, 0, 22, 0.5);
SE031 = playSeVer2( spep_2 + 222, 1110, "",spep_2 + 256, 0, 16, 0.5);
setSeVolumeByWorkId( spep_2 + 222, SE031, 76 );
setPitch( spep_2 + 222, SE031, -100 );
setTimeStretch( SE031, 0.93, 30, 4 );
SE032 = playSeVer2( spep_2 + 222, 1009, "", 0, 0, 0, 0.5);
SE033 = playSeVer2( spep_2 + 234, 1110, "",spep_2 + 272, 0, 18, 0.5);
setPitch( spep_2 + 234, SE033, 100 );
setTimeStretch( SE033, 1.07, 30, 4 );
SE034 = playSeVer2( spep_2 + 240, 1187, "",spep_2 + 266, 0, 22, 0.5);
stopSeIfDoubleSpeed( spep_2 + 240, SE034);
SE035 = playSeVer2( spep_2 + 250, 1110, "",spep_2 + 280, 0, 16, 0.5);
SE036 = playSeVer2( spep_2 + 250, 1187, "",spep_2 + 278, 0, 22, 0.5);

--振りかぶる
SE037 = playSeVer2( spep_2 + 248, 1148, "",spep_2 + 316, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 248, SE037, 60 );	
SE038 = playSeVer2( spep_2 + 250, 1116, "",spep_2 + 302, 0, 18, -1);
SE039 = playSeVer2( spep_2 + 256, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE039,  100 );

--殴り飛ばす
SE040 = playSeVer2( spep_2 + 288, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 288, SE040, 150 );
SE041 = playSeVer2( spep_2 + 298, 1120, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 298, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE043 = playSeVer2( spep_2 + 312, 1183, "",spep_2 + 376, 0, 24, -1);
SE044 = playSeVer2( spep_2 + 312, 1121, "",spep_2 + 376, 0, 24, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;  --328f

---------------------------------------------------------------------------------------------------
-- ガッの背景爆発
---------------------------------------------------------------------------------------------------

-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 8, finish_1f, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 0, 0 , 0 );
setEffScaleKey( spep_N + 8, finish_1f, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1f, 1.0, 1.0 );
setEffRotateKey( spep_N + 8, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 8, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

finish_1b = entryEffectLife( spep_N + 0, SP_03, spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_005)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );

--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
--ここまで

-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_N + 6 );
endPhase( spep_N + 108 );


end
