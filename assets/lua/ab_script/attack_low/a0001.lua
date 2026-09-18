print ("[lua]exec a0001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

ENABLE_AUTO_TIME_STRETCH(0.9);

--リッチ化ヒットエフェクト(小攻撃)
--rot : エフェクトの角度
--hit_kinds : ヒット火花の種類(0~7まで)
function hitEffect01(flame,rot,hit_kinds)

	hit = entryEffectLife( flame, 60+hit_kinds, 16, 0x40,  1,   0,  0,  0);--HIT
	setEffRotateKey(flame,hit,rot);
	setEffScaleKey(flame,hit,0.2,0.2);
	setEffScaleKey(flame + 6,hit,1.0,1.0);
	setEffScaleKey(flame + 12,hit,1.2,1.2);
	setEffAlphaKey(flame + 0,hit,255);
	setEffAlphaKey(flame + 6,hit,255);
	setEffAlphaKey(flame + 16,hit,0);

end

--リッチ化ヒットエフェクト(中攻撃)
--rot : エフェクトの角度
--hit_kinds : ヒット火花の種類(0~7まで)
function hitEffect02(flame,rot,hit_kinds)
	
	shock = entryEffect( flame - 3, 55, 0x40,  1,  0,  0,  0);
	setEffScaleKey(flame - 3,shock,0.5,0.5);
	setEffAlphaKey(flame - 3 + 0,shock,255);
	setEffAlphaKey(flame - 3 + 4,shock,255);
	setEffAlphaKey(flame - 3 + 10,shock,0);
	setEffRotateKey(flame - 3, shock,rot);

	hit = entryEffectLife( flame, 60+hit_kinds, 16, 0x40,  1,   0,  0,  0);--HIT
	setEffRotateKey(flame, hit,rot);
	setEffScaleKey(flame, hit,0.2,0.2);
	setEffScaleKey(flame + 6,hit,0.8,0.8);
	setEffAlphaKey(flame + 0,hit,255);
	setEffAlphaKey(flame + 6,hit,255);
	setEffAlphaKey(flame + 16,hit,0);

end

--リッチ化ヒットエフェクト(大攻撃)
--rot : エフェクトの角度
--hit_kinds : ヒット火花の種類(0~7まで)
function hitEffect03(flame,rot,hit_kinds)
	flame = flame-1;
	
	shock = entryEffect( flame, 55, 0x40,  1,  0,  0,  0);
	setEffScaleKey(flame,shock,0.5,0.5);
	setEffAlphaKey(flame,shock,255);
	setEffAlphaKey(flame+ 4,shock,255);
	setEffAlphaKey(flame+ 10,shock,0);

	hit = entryEffectLife( flame, 60+hit_kinds, 16, 0x40,  1,   0,  0,  0);--HIT
	setEffRotateKey(flame, hit,rot);
	setEffScaleKey(flame, hit,0.2,0.2);
	setEffScaleKey(flame + 6,hit,0.8,0.8);
	setEffAlphaKey(flame,hit,255);
	setEffAlphaKey(flame + 6,hit,255);
	setEffAlphaKey(flame + 16,hit,0);

	entryEffectLife( flame, 50, 6, 0x40,  1,  0,  0, 0);
end

-- 回避カウンター時、カットイン前のフレームで味方キャラが表示されるように (ISHINKI-28854)
setDisp(0, 1, 1);

----------------------------------------------
---会心の場合
----------------------------------------------

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 40, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( 25, 906, 40, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 25, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( 53, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end


    -- ズーム許可
    setEnvZoomEnable(0, 1);

    -- 味方登場
    --                f  eid,life, attr, tgt, tag,  x, y
    --entryEffectLife(  0, 907,  28,   64,    0,   0,  0,  0);
    changeAnime(  0,   0,  3);               -- モーション（ダッシュ）
    playSe( 0,1018);--ダッシュSE
    setMoveKey(   0,   0, -700,  0,   -128);   -- 画面外
    setMoveKey(  10,   0, -200,  0,   -128);   -- 中央に近づく
    changeAnime( 23,   0,  1);               -- モーション(立ち)
    setMoveKey(  25,   0, -80,  0,   0);      -- 画面中央 ＆ 元サイズ

    -- 敵登場
    --changeAnime(  0,   1,  103);               -- モーション（ダッシュ）
    setLastPosKey( 0, 1);
    setLastPosKey( 10, 1);
    -- setMoveKey(   0,   1,  800,  0,   0);      -- 画面外
    -- setMoveKey(  10,   1,  800,  0,   0);      --
    changeAnime( 0,   1,    101);               -- モーション(立ち)
    setMoveKey(  20,   1,  50,  0,   0);      -- 画面中央
    -------------------------------------------------------
    setEnvZoomEnable(25, 0);

-- ** 音 ** --
--飛んでくる
SE001 = playSeVer2( 0, 1117, "", 0, 0, 0, -1);	
SE002 = playSeVer2( 0, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 0, SE002, 82 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE001, 0);
stopSe( SP_dodge-12, SE002, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
setEffScaleKey( SP_dodge-12, speff, 1.0, 1.0);


kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示

	if (_IS_PLAYER_SIDE_ == 1) then

		setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

	else

		setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

	end

setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5, 0, 30,  0,   0);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end


    -----------------------------------------------------
    kame_flag = 0x00;
    if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
        -- 攻撃
        entryFadeBg( 37, 5, 10, 5, 0,  0,  0, 100);

        setMoveKey(  37, 0, 30,  0,   0);-- 中央位置から
        setMoveKey(  37, 1, 150,  0,   0);-- 中央位置から
        changeAnime( 36,   0, 11);-- パンチ3
        setShake( 36, 10, 20);
     SE1 = playSe( 35,1003);--SE
        setSeVolume( 35, 1003, 70 );
     SE2 =  playSe( 36,1001);--SE
        setSeVolume( 36, 1001, 70 );
        entryEffect(  36,   23,   0,  1,   0,  -100,  0);
        changeAnime( 36,  1,   104);-- モーション

        setMoveKey( 41, 0, 20,  0,   0);-- 中央位置から
        setMoveKey( 41, 1, 120,  0,   0);-- 中央位置から
        changeAnime( 40,   0, 9);--
        SE3=playSe( 40,1009);--SE
        setSeVolume( 40, 1009, 70 );
        stopSe( 40, SE1, 4 );
    
        hitEffect02( 40, 30, 7);
        setDamage( 42, 1, 0);  -- ダメージ振動等
    
        --entryFlashBg( 46, 1, 255,  255,  255);
    
        setMoveKey( 46, 0, -50,  0,   0);-- 中央位置から
        setMoveKey( 46, 1, 60,  0,   0);-- 中央位置から
        changeAnime( 45,   0, 11);-- パンチ3
        SE4=playSe( 46,1009);--SE
        setSeVolume( 46, 1009, 70 );
        stopSe( 46, SE2, 4 );
        hitEffect01( 45, 0, 4);
        setDamage( 46, 1, 0);  -- ダメージ振動等
    
        setEnvZoomEnable(50, 1);
        setMoveKey( 50, 0, 0,  0,   0);-- 中央位置から
        setMoveKey( 50, 1, 110,  0,   0);-- 中央位置から
        changeAnime( 49,   0, 10);-- パンチ2
        SE5=playSe( 49,1003);--SE
        setSeVolume( 49, 1003, 70 );
        stopSe( 49, SE3, 4 );
        SE6=playSe( 50,1009);--SE
        setSeVolume( 50, 1009, 70 );
        stopSe( 50, SE4, 4 );
        hitEffect02( 49, 15, 0);
        setDamage( 50, 1, 0);-- ダメージ振動等
        setMoveKey( 50, 0, -80,  0,   0);-- 中央位置から
        setMoveKey( 50, 1, 60,  0,   0);-- 中央位置から
    
        setMoveKey( 53, 0, -50,  0,   0);-- 中央位置から
        setMoveKey( 53, 1, 60,  0,   0);-- 中央位置から
        changeAnime( 53,   0, 14);-- キック3

        SE3 =   playSe( 55,1003);--SE
        setSeVolume( 55, 1003, 70 );
     SE4 =  playSe( 55,1009);--SE
        setSeVolume( 55, 1009, 70 );
        entryEffectLife(  55,   70,   2,   0,  1,   0,  0,  0);
        entryEffect(  56,   23,   0x40,  1,  0,  -100,  0);
        setQuake( 56, 7, 18);
        pauseChara( 56, 5);
        dealDamage( 56);
        --popPowerBall( 56);
        setDamage( 57, 1, 0);  -- ダメージ振動

        naname = entryEffectLife( 37, 72, 60, 0x80,  -1,  0,  -500,  0); -- 流線斜め
        setEffScaleKey( 37, naname, 2,2);
        setEffRotateKey( 37, naname, -45);
        setEffAlphaKey( 37, naname, 255);
        setEffAlphaKey( 54, naname, 255);
        setEffAlphaKey( 55, naname, 0);
        setEffAlphaKey( 57, naname, 0);
        setEffAlphaKey( 58, naname, 255);
        setEffAlphaKey( 97, naname, 255);

        changeAnime(  57, 1,  104);  -- 吹っ飛び
        setMoveKey(   60, 1, 110,  0,   0);      -- 中央位置から
        setMoveKey( 60, 0, -100,  0,   0);-- 中央位置から

        startBgScroll(60, 7, 18);
        stopBgScroll(100, 8);

    else
        -- 攻撃 (ガード)
        entryFadeBg( 37, 5, 10, 5, 0,  0,  0, 100);

        setMoveKey(  37, 0, 30,  0,   0);-- 中央位置から
        setMoveKey(  37, 1, 170,  0,   0);-- 中央位置から
        changeAnime( 35,   0, 11);-- パンチ3
        --SE1 =   playSe( 35,1003);--SE
        --setSeVolume( 35, 1003, 70 );
        --SE2 =   playSe( 37,1009);--SE
        --setSeVolume( 37, 1009, 70 );

        hitEffect01(36, 0, 5);
        changeAnime( 37,  1,   106);-- モーション
        setDamage( 38, 1, 0);  -- ダメージ振動等

        setMoveKey( 41, 0, 20,  0,   0);-- 中央位置から
        setMoveKey( 41, 1, 120,  0,   0);-- 中央位置から
        changeAnime( 40,   0, 9);--
        -- SE3=playSe( 40,1009);--SE
        -- setSeVolume( 40, 1009, 70 );
        -- stopSe( 40, SE1, 4 );
    
        hitEffect02( 40, 30, 7);
        setDamage( 42, 1, 0);  -- ダメージ振動等
    
        --entryFlashBg( 46, 1, 255,  255,  255);
    
        setMoveKey( 46, 0, -50,  0,   0);-- 中央位置から
        setMoveKey( 46, 1, 60,  0,   0);-- 中央位置から
        changeAnime( 45,   0, 11);-- パンチ3
        -- SE4=playSe( 46,1009);--SE
        -- setSeVolume( 46, 1009, 70 );
        -- stopSe( 46, SE2, 4 );
        hitEffect01( 45, 0, 4);
        setDamage( 46, 1, 0);  -- ダメージ振動等
    
        setEnvZoomEnable(50, 1);
        setMoveKey( 50, 0, 0,  0,   0);-- 中央位置から
        setMoveKey( 50, 1, 110,  0,   0);-- 中央位置から
        changeAnime( 49,   0, 10);-- パンチ2
        -- SE5=playSe( 49,1003);--SE
        -- setSeVolume( 49, 1003, 70 );
        -- stopSe( 49, SE3, 4 );
        -- SE6=playSe( 50,1009);--SE
        -- setSeVolume( 50, 1009, 70 );
        -- stopSe( 50, SE4, 4 );
        hitEffect02( 49, 15, 0);
        setDamage( 50, 1, 0);-- ダメージ振動等
        setMoveKey( 50, 0, -80,  0,   0);-- 中央位置から
        setMoveKey( 50, 1, 60,  0,   0);-- 中央位置から
    
        setMoveKey( 53, 0, -50,  0,   0);-- 中央位置から
        setMoveKey( 53, 1, 60,  0,   0);-- 中央位置から
        changeAnime( 53,   0, 14);-- キック3

        -- playSe( 53,1009);--SE
        -- setSeVolume( 53, 1009, 70 );
        -- stopSe( 53, SE2, 4 );
        entryEffectLife(  55,   70,   2,   0,  1,   0,  0,  0);
        hitEffect03( 56, 0, 1);

        setQuake( 56, 15, 10);
        pauseChara( 56, 5);
        dealDamage( 56);
        --popPowerBall( 56);
        setDamage( 57, 1, 0);  -- ダメージ振動

        naname = entryEffectLife( 37, 72, 60, 0x80,  -1,  0,  -500,  0); -- 流線斜め
        setEffScaleKey( 37, naname, 2,2);
        setEffRotateKey( 37, naname, -45);
        setEffAlphaKey( 37, naname, 255);
        setEffAlphaKey( 54, naname, 255);
        setEffAlphaKey( 55, naname, 0);
        setEffAlphaKey( 57, naname, 0);
        setEffAlphaKey( 58, naname, 255);
        setEffAlphaKey( 97, naname, 255);

        changeAnime(  57, 1,  108);  -- 吹っ飛び
        setMoveKey(   60, 1, 110,  0,   0);      -- 中央位置から
        setMoveKey( 60, 0, -100,  0,   0);-- 中央位置から

        startBgScroll( 10, 7, 32);
        stopBgScroll(100, 8);

        -- ** 音 ** --
        --連打
        SE003 = playSeVer2( 20, 1189, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( 20, SE003, 151 );
        SE004 = playSeVer2( 24, 1000, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( 24, SE004, 119 );
        SE005 = playSeVer2( 28, 1000, "", 0, 0, 0, -1);	
        SE006 = playSeVer2( 32, 1001, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( 32, SE006, 71 );
        SE007 = playSeVer2( 42, 1110, "", 0, 0, 0, -1);	

    end

    --------------------------------
    kame_flag = 0x00;

    if (_IS_DEAD_ == 1) then
        -- 死亡フェーズ (sys0002 / sys0003)
        entryFade( 57, 2, 4, 5, 119,3,16,0);
        endPhase(59);
    else
    -- 受け------------------------------------------
    -- 味方移動（画面外へ)
    setMoveKey(   68, 0, -700,  0,   0);      -- 画面外へ
    setDisp( 68, 0, 0);--味方を非表示20170607
    --setMoveKey( 72, 1, 250,  0,   0);      -- 敵を若干後退

    setMoveKey(  72, 1, 250,  0,   0);      -- 吹っ飛び中
    changeAnime( 80, 1, 104);   
    changeAnime( 85, 1, 101);    			-- モーション(立ち)
    setMoveKey(  90, 1, 100,  0,   0);      -- 敵画面中央へゆっくり戻す

    endPhase(100);
    end



print ("[lua]exec a0001");
