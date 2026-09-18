--1033760:LR_ピッコロ_必殺技：爆力魔波
--sp_effect_b4_00430
--sp3018

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164447;  -- 開幕〜カメラスライドしてピッコロ映す ef_001
SP_02 = 164448;  -- 溜めた気を⼿に送ることで膨張する～フィニッシュまで ef_002


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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 130;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 80);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 80, SP_02, spep_2 + 80 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
        --気弾発射
        SE008 = playSeVer2( spep_2 + 83, 1116, "",spep_2 + 108, 0, 16, -1);
    else

        setupMovie(0 , SP_02, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕〜カメラスライドしてピッコロ映す
-------------------------------------------------
MAX_FRAME_0 = 130;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 40;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 150, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --130F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--力む
SE005 = playSeVer2( spep_1 + 80, 1330, "", 0, 0, 0, -1);

-------------------------------------------------
-- 溜めた気を⼿に送ることで膨張する～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 376;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 溜めた気を⼿に送ることで膨張する～フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 138 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 252 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 138 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 160 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 138 + OFFSET_X, 1, 239.8, 55.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 239.8, 55.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 244.2, 59.1 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 244.2, 59.1 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 236.6, 51.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 236.6, 51.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 240.9, 70.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 240.9, 70.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 248.3, 59.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 248.3, 59.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 249.8, 68.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 249.8, 68.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 242.2, 60.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 242.2, 60.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 242.7, 70.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 242.7, 70.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 250.2, 59.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 250.2, 59.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 251.7, 68.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 251.7, 68.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 244.2, 60.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 244.2, 60.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 244.8, 70.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 244.8, 70.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 253.3, 68.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 253.3, 68.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 245.9, 60.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 245.9, 60.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 246.5, 70.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 246.5, 70.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 254.1, 59.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 254.1, 59.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 251.7, 64.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 251.7, 64.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 256.3, 68.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 256.3, 68.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 249, 60.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 249, 60.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 249.7, 70.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 249.7, 70.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 162.5, 52.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 162.5, 52.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 163.5, 61.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 163.5, 61.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 155.5, 63.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 155.5, 63.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 162.5, 52.5 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 162.5, 52.5 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 163.5, 61.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 163.5, 61.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 155.5, 53.5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 155.5, 53.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 155.5, 63.5 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 155.5, 63.5 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 163.5, 61.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 163.5, 61.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 155.5, 53.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 155.5, 53.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 155.5, 63.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 155.5, 63.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 162.5, 52.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 162.5, 52.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 163.5, 61.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 163.5, 61.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 155.5, 53.5 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 155.5, 53.5 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 155.5, 63.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 155.5, 63.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 163.5, 61.5 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 163.5, 61.5 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 155.5, 53.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 155.5, 53.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 155.5, 63.5 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 155.5, 63.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 162.5, 52.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 162.5, 52.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 159.5, 57.5 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 159.5, 57.5 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 167.5, 77.5 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 167.5, 77.5 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 153.5, 51.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 153.5, 51.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 149.5, 79.5 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 149.5, 79.5 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 159.5, 57.5 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 159.5, 57.5 , 0 );

setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.36, 1.36 );

setRotateKey( spep_2 + 138 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -30.4 );

setBlendColor( spep_2 + 160 + OFFSET_X, 1, 3, 1, 1, 0.8, 0.74 );
setBlendColor( spep_2 + 252 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--力む
SE006 = playSeVer2( spep_2 + 14, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE006, 56 );
SE007 = playSeVer2( spep_2 + 46, 1170, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE007, 73 );

--気弾発射
SE008 = playSeVer2( spep_2 + 70, 1116, "",spep_2 + 108, 0, 16, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 100; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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

--気弾発射
SE009 = playSeVer2( spep_2 + 92, 1512, "",spep_2 + 204, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 92, SE009, 67 );
SE010 = playSeVer2( spep_2 + 92, 1312, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 92, 1335, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 92, 1145, "", 0, 0, 0, -1);

--敵ヒット
SE013 = playSeVer2( spep_2 + 152, 1068, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 152, 1200, "", spep_2 + 260, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 152, SE014, 172 );
SE015 = playSeVer2( spep_2 + 152, 1214, "",spep_2 + 260, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 152, SE015, 178 );

--爆発
SE016 = playSeVer2( spep_2 + 228, 1067, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 228, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 270); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム 376F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_02, 0, 1);

-------------------------------------------------
-- 開幕〜カメラスライドしてピッコロ映す
-------------------------------------------------
MAX_FRAME_0 = 130;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 40;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 150, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --130F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--力む
SE005 = playSeVer2( spep_1 + 80, 1330, "", 0, 0, 0, -1);

-------------------------------------------------
-- 溜めた気を⼿に送ることで膨張する～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 376;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 溜めた気を⼿に送ることで膨張する～フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 138 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 252 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 138 + OFFSET_X, 1,4 );
changeAnime( spep_2 + 160 + OFFSET_X, 1,6 );

setMoveKey( spep_2 + 138 + OFFSET_X, 1, -239.8, 55.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -239.8, 55.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -244.2, 59.1 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -244.2, 59.1 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -236.6, 51.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -236.6, 51.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -240.9, 70.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -240.9, 70.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -248.3, 59.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -248.3, 59.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -249.8, 68.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -249.8, 68.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -242.2, 60.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -242.2, 60.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -242.7, 70.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -242.7, 70.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -250.2, 59.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -250.2, 59.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -251.7, 68.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -251.7, 68.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -244.2, 60.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -244.2, 60.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -244.8, 70.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -244.8, 70.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -253.3, 68.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -253.3, 68.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -245.9, 60.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -245.9, 60.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -246.5, 70.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -246.5, 70.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -254.1, 59.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -254.1, 59.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -251.7, 64.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -251.7, 64.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -256.3, 68.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -256.3, 68.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -249, 60.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -249, 60.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -249.7, 70.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -249.7, 70.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -162.5, 52.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -162.5, 52.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -163.5, 61.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -163.5, 61.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -155.5, 63.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -155.5, 63.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -162.5, 52.5 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -162.5, 52.5 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -163.5, 61.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -163.5, 61.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -155.5, 53.5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -155.5, 53.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -155.5, 63.5 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -155.5, 63.5 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -163.5, 61.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -163.5, 61.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -155.5, 53.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -155.5, 53.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -155.5, 63.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -155.5, 63.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -162.5, 52.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -162.5, 52.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -163.5, 61.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -163.5, 61.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -155.5, 53.5 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -155.5, 53.5 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -155.5, 63.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -155.5, 63.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -163.5, 61.5 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -163.5, 61.5 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -155.5, 53.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -155.5, 53.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -155.5, 63.5 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -155.5, 63.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -162.5, 52.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -162.5, 52.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -159.5, 57.5 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -159.5, 57.5 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -167.5, 77.5 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -167.5, 77.5 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -153.5, 51.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -153.5, 51.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -149.5, 79.5 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -149.5, 79.5 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -159.5, 57.5 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -159.5, 57.5 , 0 );

setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.36, 1.36 );

setRotateKey( spep_2 + 138 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 43.5 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 43.5 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 30.4 );

setBlendColor( spep_2 + 160 + OFFSET_X, 1, 3, 1, 1, 0.8, 0.74 );
setBlendColor( spep_2 + 252 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--力む
SE006 = playSeVer2( spep_2 + 14, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE006, 56 );
SE007 = playSeVer2( spep_2 + 46, 1170, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE007, 73 );

--気弾発射
SE008 = playSeVer2( spep_2 + 70, 1116, "",spep_2 + 108, 0, 16, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 100; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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

--気弾発射
SE009 = playSeVer2( spep_2 + 92, 1512, "",spep_2 + 204, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 92, SE009, 67 );
SE010 = playSeVer2( spep_2 + 92, 1312, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 92, 1335, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 92, 1145, "", 0, 0, 0, -1);

--敵ヒット
SE013 = playSeVer2( spep_2 + 152, 1068, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 152, 1200, "", spep_2 + 260, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 152, SE014, 172 );
SE015 = playSeVer2( spep_2 + 152, 1214, "",spep_2 + 260, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 152, SE015, 178 );

--爆発
SE016 = playSeVer2( spep_2 + 228, 1067, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 228, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 270); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム 376F


end
