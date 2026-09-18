--1028720:LR_ギニュー(特戦隊)_必殺技：先攻ジャンケン(グルド)
--sp_effect_a1_00432
--sp2692

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162799;	--じゃんけん	ef_001
SP_02 = 162800;	--岩あげ→正面投げ→敵ヒット：前	ef_002
SP_02b = 162801;--岩あげ→正面投げ→敵ヒット：後ろ	ef_002b
SP_03 = 162802;	--ガッ	ef_003

--エフェクト(てき)
SP_02r = 162803;--岩あげ→正面アップ投げ→敵ヒット：前：反転	ef_002r

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

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- じゃんけん
-------------------------------------------------

MAX_FRAME_0 = 128;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); --じゃんけん	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 118, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -70, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -70, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -70, 515.5 , 0 );
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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "",spep_0 + 150, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );
--じゃんけん
SE003 = playSeVer2( spep_0 + 56, 1237, "",spep_0 + 150, 4, 18, -1);
setSeVolumeByWorkId( spep_0 + 56, SE003, 85 );
setStartTimeMs( SE003,  173 );
SE004 = playSeVer2( spep_0 + 56, 13, "",spep_0 + 154, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 56, SE004, 79 );
SE005 = playSeVer2( spep_0 + 56, 10, "",spep_0 + 156, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 56, SE005, 68 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --128F

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
--setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -188 ); 
--setEffScaleKey( spep_c + 0, spname, -1.0, 1.0); -- 敵側のみ
--setEffScaleKey( spep_c + 90, spname, -1.0, 1.0); -- 敵側のみ
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
-- 岩あげ→正面投げ→敵ヒット
-------------------------------------------------

MAX_FRAME_1 = 236;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 岩あげ→正面投げ→敵ヒット：前	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 岩あげ→正面投げ→敵ヒット：後ろ	ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 166 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 236 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 166 + OFFSET_X, 1, 104 );
changeAnime( spep_1 + 174 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 224 + OFFSET_X, 1, 5 );

setMoveKey( spep_1 + 166 + OFFSET_X, 1, 140.7, -56.5 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, 140.7, -56.5 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, 154.3, -73.3 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, 154.3, -73.3 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, 152.8, -54.9 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_X, 1, 152.8, -54.9 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, 201.2, -81 , 0 );
setMoveKey( spep_1 + 179 + OFFSET_X, 1, 201.2, -81 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, 146, -65.1 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_X, 1, 146, -65.1 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, 176.5, -84.7 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_X, 1, 176.5, -84.7 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 167.2, -50.1 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_X, 1, 167.2, -50.1 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 150.5, -72.6 , 0 );
setMoveKey( spep_1 + 187 + OFFSET_X, 1, 150.5, -72.6 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, 168.2, -76.4 , 0 );
setMoveKey( spep_1 + 189 + OFFSET_X, 1, 168.2, -76.4 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, 171.7, -57.6 , 0 );
setMoveKey( spep_1 + 191 + OFFSET_X, 1, 171.7, -57.6 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, 146, -65.1 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, 146, -65.1 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 172.7, -83.9 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, 172.7, -83.9 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 167.2, -50.1 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, 167.2, -50.1 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 150.5, -72.6 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, 150.5, -72.6 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 168.2, -76.4 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, 168.2, -76.4 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 171.7, -57.6 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 171.7, -57.6 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 146, -65.1 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 146, -65.1 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 172.7, -83.9 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 172.7, -83.9 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 167.2, -50.1 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 167.2, -50.1 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 150.5, -72.6 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 150.5, -72.6 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 168.2, -76.4 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 168.2, -76.4 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 171.7, -57.6 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 171.7, -57.6 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 146, -65.1 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 146, -65.1 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 172.7, -83.9 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 172.7, -83.9 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 167.2, -50.1 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, 167.2, -50.1 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 150.5, -72.6 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 150.5, -72.6 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 136.6, -47.2 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 136.6, -47.2 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 200.9, -3.3 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 200.9, -3.3 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 256.2, 55.6 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, 256.2, 55.6 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 320.5, 99.6 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, 320.5, 99.6 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 375.8, 158.5 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, 375.8, 158.5 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 440.1, 202.5 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, 440.1, 202.5 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, 495.4, 261.4 , 0 );

setScaleKey( spep_1 + 166 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 173 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 174 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 223 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 227 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 229 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 230 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 231 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 232 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 233 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_1 + 166 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 223 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 224 + OFFSET_X, 1, 64 );
setRotateKey( spep_1 + 225 + OFFSET_X, 1, 64 );
setRotateKey( spep_1 + 226 + OFFSET_X, 1, 64.5 );
setRotateKey( spep_1 + 227 + OFFSET_X, 1, 64.5 );
setRotateKey( spep_1 + 228 + OFFSET_X, 1, 65 );
setRotateKey( spep_1 + 229 + OFFSET_X, 1, 65 );
setRotateKey( spep_1 + 230 + OFFSET_X, 1, 65.5 );
setRotateKey( spep_1 + 231 + OFFSET_X, 1, 65.5 );
setRotateKey( spep_1 + 232 + OFFSET_X, 1, 66 );
setRotateKey( spep_1 + 233 + OFFSET_X, 1, 66 );
setRotateKey( spep_1 + 234 + OFFSET_X, 1, 66.5 );
setRotateKey( spep_1 + 235 + OFFSET_X, 1, 66.5 );
setRotateKey( spep_1 + 236 + OFFSET_X, 1, 67 );

-- ** 音 ** --
--岩巻き上げる
SE009 = playSeVer2( spep_1 + 24, 1168, "",spep_1 + 98, 0, 38, -1);
SE010 = playSeVer2( spep_1 + 24, 1044, "",spep_1 + 110, 0, 32, -1);
--画面遷移
SE011 = playSeVer2( spep_1 + 70, 1232, "", 0, 0, 0, -1);
--集中線
SE012 = playSeVer2( spep_1 + 94, 1051, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 94, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 94, SE013, 72 );
--岩投げる
SE014 = playSeVer2( spep_1 + 106, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 106, SE014, 79 );
SE015 = playSeVer2( spep_1 + 114, 1027, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 114, 1178, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 140; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
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

--岩飛んでいく
SE017 = playSeVer2( spep_1 + 156, 1168, "",spep_1 + 260, 0, 26, -1);


-- ** 次の準備 ** --
spep_N = spep_1 + MAX_FRAME_1;  --236F

---------------------------------------------------------------------------------------------------
-- ガラスに激突
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
shuchusen_wh = entryEffectLife( spep_N + 0,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 0, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 0, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 0, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 );
 
setEffRotateKey( spep_N + 0, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 0, shuchusen_wh, 255 );
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
  
-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
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

-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- じゃんけん
-------------------------------------------------

MAX_FRAME_0 = 128;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); --じゃんけん	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 118, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -70, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -70, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -70, 515.5 , 0 );
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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "",spep_0 + 150, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );
--じゃんけん
SE003 = playSeVer2( spep_0 + 56, 1237, "",spep_0 + 150, 4, 18, -1);
setSeVolumeByWorkId( spep_0 + 56, SE003, 85 );
setStartTimeMs( SE003,  173 );
SE004 = playSeVer2( spep_0 + 56, 13, "",spep_0 + 154, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 56, SE004, 79 );
SE005 = playSeVer2( spep_0 + 56, 10, "",spep_0 + 156, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 56, SE005, 68 );

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
-- 岩あげ→正面投げ→敵ヒット
-------------------------------------------------

MAX_FRAME_1 = 236;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 岩あげ→正面投げ→敵ヒット：前	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 岩あげ→正面投げ→敵ヒット：後ろ	ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 166 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 236 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 166 + OFFSET_X, 1, 104 );
changeAnime( spep_1 + 174 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 224 + OFFSET_X, 1, 5 );

setMoveKey( spep_1 + 166 + OFFSET_X, 1, 140.7, -56.5 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, 140.7, -56.5 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, 154.3, -73.3 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, 154.3, -73.3 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, 152.8, -54.9 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_X, 1, 152.8, -54.9 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, 201.2, -81 , 0 );
setMoveKey( spep_1 + 179 + OFFSET_X, 1, 201.2, -81 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, 146, -65.1 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_X, 1, 146, -65.1 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, 176.5, -84.7 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_X, 1, 176.5, -84.7 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 167.2, -50.1 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_X, 1, 167.2, -50.1 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 150.5, -72.6 , 0 );
setMoveKey( spep_1 + 187 + OFFSET_X, 1, 150.5, -72.6 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, 168.2, -76.4 , 0 );
setMoveKey( spep_1 + 189 + OFFSET_X, 1, 168.2, -76.4 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, 171.7, -57.6 , 0 );
setMoveKey( spep_1 + 191 + OFFSET_X, 1, 171.7, -57.6 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, 146, -65.1 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, 146, -65.1 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 172.7, -83.9 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, 172.7, -83.9 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 167.2, -50.1 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, 167.2, -50.1 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 150.5, -72.6 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, 150.5, -72.6 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 168.2, -76.4 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, 168.2, -76.4 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 171.7, -57.6 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 171.7, -57.6 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 146, -65.1 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 146, -65.1 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 172.7, -83.9 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 172.7, -83.9 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 167.2, -50.1 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 167.2, -50.1 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 150.5, -72.6 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 150.5, -72.6 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 168.2, -76.4 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 168.2, -76.4 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 171.7, -57.6 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 171.7, -57.6 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 146, -65.1 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 146, -65.1 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 172.7, -83.9 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 172.7, -83.9 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 167.2, -50.1 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, 167.2, -50.1 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 150.5, -72.6 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 150.5, -72.6 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 136.6, -47.2 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 136.6, -47.2 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 200.9, -3.3 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 200.9, -3.3 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 256.2, 55.6 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, 256.2, 55.6 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 320.5, 99.6 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, 320.5, 99.6 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 375.8, 158.5 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, 375.8, 158.5 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 440.1, 202.5 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, 440.1, 202.5 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, 495.4, 261.4 , 0 );

setScaleKey( spep_1 + 166 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 173 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 174 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 223 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 227 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 229 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 230 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 231 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 232 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 233 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_1 + 166 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 223 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 224 + OFFSET_X, 1, 64 );
setRotateKey( spep_1 + 225 + OFFSET_X, 1, 64 );
setRotateKey( spep_1 + 226 + OFFSET_X, 1, 64.5 );
setRotateKey( spep_1 + 227 + OFFSET_X, 1, 64.5 );
setRotateKey( spep_1 + 228 + OFFSET_X, 1, 65 );
setRotateKey( spep_1 + 229 + OFFSET_X, 1, 65 );
setRotateKey( spep_1 + 230 + OFFSET_X, 1, 65.5 );
setRotateKey( spep_1 + 231 + OFFSET_X, 1, 65.5 );
setRotateKey( spep_1 + 232 + OFFSET_X, 1, 66 );
setRotateKey( spep_1 + 233 + OFFSET_X, 1, 66 );
setRotateKey( spep_1 + 234 + OFFSET_X, 1, 66.5 );
setRotateKey( spep_1 + 235 + OFFSET_X, 1, 66.5 );
setRotateKey( spep_1 + 236 + OFFSET_X, 1, 67 );

-- ** 音 ** --
--岩巻き上げる
SE009 = playSeVer2( spep_1 + 24, 1168, "",spep_1 + 98, 0, 38, -1);
SE010 = playSeVer2( spep_1 + 24, 1044, "",spep_1 + 110, 0, 32, -1);
--画面遷移
SE011 = playSeVer2( spep_1 + 70, 1232, "", 0, 0, 0, -1);
--集中線
SE012 = playSeVer2( spep_1 + 94, 1051, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 94, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 94, SE013, 72 );
--岩投げる
SE014 = playSeVer2( spep_1 + 106, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 106, SE014, 79 );
SE015 = playSeVer2( spep_1 + 114, 1027, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 114, 1178, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 140; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
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

--岩飛んでいく
SE017 = playSeVer2( spep_1 + 156, 1168, "",spep_1 + 260, 0, 26, -1);


-- ** 次の準備 ** --
spep_N = spep_1 + MAX_FRAME_1;  --236F

---------------------------------------------------------------------------------------------------
-- ガラスに激突
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
shuchusen_wh = entryEffectLife( spep_N + 0,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 0, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 0, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 0, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 );
 
setEffRotateKey( spep_N + 0, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 0, shuchusen_wh, 255 );
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
  
-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
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

-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

end
