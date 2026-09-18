print(  "[lua]exec a0004");

rn_01 = 0;
rn_02 = 0;

ATK_01 = 35;--205
ATK_02 = ATK_01+3;--211
ATK_03 = ATK_02+4;--218
ATK_04 = ATK_03+4;--228
ATK_05 = ATK_04+5;--236
ATK_06 = ATK_05+10;--250
ATK_07 = ATK_06+3;--256
ATK_08 = ATK_07+4;--262
ATK_09 = ATK_08+4;--268
ATK_10 = ATK_09+12;--274
ATK_11 = ATK_10+23;--274
ATK_end = ATK_11+48;
f01 = 15;

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

ENABLE_AUTO_TIME_STRETCH(0.9);

--リッチ化ヒットエフェクト
function shockEffect(flame,pra,tag1,tag2,x,y)
    shock01 = entryEffectLife( flame,  55, 8,  pra,  tag1,  tag2,  x,  y);
    setEffScaleKey(flame + 0,shock01,0.7, 0.7);
    setEffAlphaKey(flame + 0,shock01,255);
    setEffAlphaKey(flame + 4,shock01,255);
    setEffAlphaKey(flame + 8,shock01,0);
    shock02 = entryEffectLife( flame+4,  56, 6, pra,  tag1,  tag2,  x,  y);
    setEffScaleKey(flame + 4,shock02,0.7, 0.7);
    setEffAlphaKey(flame + 4,shock02,255);
    setEffAlphaKey(flame + 8,shock02,255);
    setEffAlphaKey(flame + 10,shock02,0);

end

if ((_IS_CRITICAL_ == 1) ) then --会心の場合


entryFadeBg( 0, 30, 97, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 84, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_10+23+f01, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト


else

end


    --setEnvZoomEnable(  rn_02,  1);
    changeAnime(  rn_02,  0,  3);
    changeAnime(  rn_02,  1,  117);
    setMoveKey(  rn_02,  0,  -850,  0,  0);
    setLastPosKey( rn_02, 1);
    -- setMoveKey(  rn_02,  1,  100,  0,  0);--
    --entryKakimoji(  rn_02+3,  1,  2,  1,  0,  20,  150);--!!
    
    setMoveKey(  rn_02+15,  0,  -850,  0,  0);
    setMoveKey(  rn_02+20,  0,  -120,  0,  0);
    --setEnvZoomEnable(  rn_02+20,  0);
    changeAnime(  rn_02+18,  1,  104);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え


kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示

	if (_IS_PLAYER_SIDE_ == 1) then

		setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

	else

		setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

	end

setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5, 0, -30,  0,  0);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end


    -------------------------------------------
    
    setMoveKey(  ATK_01,  0,  -30,  0,  0);--
    setMoveKey(  ATK_01-1,  1,  60,  0,  0);
    
    changeAnime(  ATK_01,  0,  12);--キック
    setMoveKey(  ATK_01+1,  1,  65,  0,  0);--
    setMoveKey(  ATK_01+3,  0,  -45,  0,  0);--
    
    --エフェクト
    hit01 = entryEffectLife(  ATK_01,  64,  10,  0,  -1,  0,  -30,  -15);
    setEffScaleKey(ATK_01, hit01, 1.2, 1.2);
    setEffAlphaKey(ATK_01, hit01,255);
    setEffAlphaKey(ATK_01 + 10, hit01, 0);

    -- playSe(ATK_01,1004);
    -- setSeVolume( ATK_01, 1004, 110 );
    -- playSe(ATK_01,1001);
    -- setSeVolume( ATK_01, 1001, 110 );
    shockEffect(ATK_01+1,  0,  -1,  0,  0,  0);

    shuchusen01 = entryEffectLife(  ATK_01+1,  70, 4,  0,  -1,  0,  0,  0);
    setEffScaleKey(ATK_01+1, shuchusen01, 1.0, 1.2);

    entryKakimoji(  ATK_01+1,  20,  4,  1,  -1,  -20,  -240);--baki
    pauseChara(  ATK_01+2, 1);
    
    setMoveKey(  ATK_02+1,  1,  60,  0,  0);
    setMoveKey(  ATK_02,  0,  -40,  0,  0);
    setMoveKey(  ATK_02+1,  1,  80,  0,  0);
    setMoveKey(  ATK_02+2,  1,  77,  0,  0);
    setMoveKey(  ATK_02+2,  0,  -45,  0,  0);
    
    changeAnime(  ATK_02,  1,  111);--モーション
    changeAnime(  ATK_02+1,  0,  10);--パンチ1

    hit02 = entryEffectLife(  ATK_02,  67,  10,  0,  -1,  0,  10,  30);
    setEffScaleKey(ATK_02, hit02, 1.0, 1.0);
    setEffAlphaKey(ATK_02, hit02,255);
    setEffAlphaKey(ATK_02 + 10, hit02, 0);

    hit03 = entryEffectLife(  ATK_02+1,  60,  10,  0,  -1,  0,  -15,  -20);
    setEffScaleKey(ATK_02+1, hit03, 1.0, 1.0);
    setEffAlphaKey(ATK_02+1, hit03,255);
    setEffAlphaKey(ATK_02+1 + 10, hit03, 0);


    -- playSe(ATK_02,1000);
    -- setSeVolume( ATK_02, 1000, 110 );
    --playSe(ATK_02+1,1000);
    
    shockEffect(  ATK_02,  0,  -1,  0,  -150,  -150);
    shuchusen02 = entryEffectLife(  ATK_02,  70,  4,  0,  -1,  0,  0,  0);
    setEffScaleKey(ATK_02, shuchusen02, 1.0, 1.2);

    entryKakimoji(  ATK_02+1,  2,  4,  -1,  -1,  -30,  240);--gagaga
    shockEffect(  ATK_02+3,  0,  -1,  0,  180,  -250);
    pauseChara(  ATK_02+3, 1);
    
    setMoveKey(  ATK_03,  0,  -40,  0,  0);--
    setMoveKey(  ATK_03,  1,  66,  0,  0);
    
    --モーション
    changeAnime(  ATK_03+1,  0,  9);
    changeAnime(  ATK_03+2,  1,  113);

    hit04 = entryEffectLife(  ATK_03+2,  65,  10,  0,  -1,  0,  -5,  18);
    setEffScaleKey(ATK_03+2, hit04, 1.4, 1.4);
    setEffAlphaKey(ATK_03+2, hit04,255);
    setEffAlphaKey(ATK_03+2 + 10, hit04, 0);

    hit05 = entryEffectLife(  ATK_03+1,  64,  10,  0,  -1,  0,  5,  20);
    setEffScaleKey(ATK_03+1, hit05, 1.0, 1.0);
    setEffAlphaKey(ATK_03+1, hit05,255);
    setEffAlphaKey(ATK_03+1 + 10, hit05, 0);

    -- playSe(ATK_03+2,1001);
    -- setSeVolume( ATK_03+2, 1001, 70 );
    -- playSe(ATK_03+1,1000);
    -- setSeVolume( ATK_03+1, 1000, 70 );
    
    shuchusen03 = entryEffectLife(  ATK_03,  70,  4,  0,  -1,  0,  0,  0);
    setEffScaleKey(ATK_03, shuchusen03, 1.0, 1.2);

    shockEffect(  ATK_03+2,  0,  -1,  0,  -77,  150);
    pauseChara(  ATK_03+3,  1);
    
    
    setMoveKey(  ATK_03+3,  0,  -55,  0,  0);--
    setMoveKey(  ATK_03+3,  1,  72,  0,  0);
    
    --setEnvZoomEnable(  ATK_04+3,  1);
    
    setMoveKey(  ATK_04,  0,  -36,  0,  0);
    
    changeAnime(  ATK_04+1,  0,  13);--キック
    -- playSe(ATK_04+1,1004);
    -- setSeVolume( ATK_04+1, 1004, 70 );
    -- playSe(ATK_04+1,1001);
    -- setSeVolume( ATK_04+1, 1001, 70 );    
    --entryFlashBg(  ATK_04+1,  1,  0,  0,  0);

    hit06 = entryEffectLife(  ATK_04+1,  66,  10,  0,  -1,  0,  0,  0);
    setEffScaleKey(ATK_04+1, hit06, 1.4, 1.4);
    setEffAlphaKey(ATK_04+1, hit06,255);
    setEffAlphaKey(ATK_04+1 + 10, hit06, 0);

    entryEffectLife(  ATK_04+1,  55,  4,  0,  -1,  0,  0,  0);

    shockEffect(  ATK_04+1,  0,  -1,  0,  280,  -120);
    shuchusen04 = entryEffectLife(  ATK_04+2,  70,  4,  0,  -1,  0,  0,  0);
    setEffScaleKey(ATK_04+2, shuchusen04, 1.0, 1.2);
    changeAnime(  ATK_04+2,  1,  106);--モーション
    setMoveKey(  ATK_04+3,  1,  88,  0,  0);
    pauseChara(  ATK_04+4,  1);
    
    setMoveKey(  ATK_05,  0,  -36,  0,  0);--
    setMoveKey(  ATK_05+1,  0,  -55,  0,  0);--
    setMoveKey(  ATK_05+1,  1,  69,  0,  0);--
    setMoveKey(  ATK_05+3,  0,  -89,  0,  0);--
    
    changeAnime(  ATK_05+1,  1,  111);--モーション
    changeAnime(  ATK_05+2,  0,  14);--蹴り
    
    hit07 = entryEffectLife(  ATK_05+1,  62,  10,  0,  -1,  0,  0,  20);
    setEffScaleKey(ATK_05+1, hit07, 1.0, 1.0);
    setEffAlphaKey(ATK_05+1, hit07,255);
    setEffAlphaKey(ATK_05+1 + 10, hit07, 0);

    hit08 = entryEffectLife(  ATK_05+5,  64,  10,  0,  -1,  0,  0,  0);
    setEffScaleKey(ATK_05+5, hit08, 1.2, 1.2);
    setEffAlphaKey(ATK_05+5, hit08,255);
    setEffAlphaKey(ATK_05+5 + 10, hit08, 0);

    -- playSe(ATK_05+1,1009);
    -- setSeVolume( ATK_05+1, 1009, 70 );
    -- playSe(ATK_05+5,1010);
    -- setSeVolume( ATK_05+1, 1010, 70 );
    
    shuchusen05 = entryEffectLife(  ATK_05+1,  70,  4,  0,  -1,  0,  0,  0);
    setEffScaleKey(ATK_05+1, shuchusen05, 1.0, 1.2);

    shockEffect(  ATK_05+5,  0,  -1,  0,  160,  -120);
    shockEffect(  ATK_05+5,  0,  -1,  0,  0,  0);
    entryKakimoji(  ATK_05+5,  13,  4,  -1,  0,  -25,  -250);--どん
    setQuake(  ATK_05+4,  7,  15);
    pauseChara(  ATK_05+7,  3);
    
    -----------------------------------
    setMoveKey(  ATK_06,  0,  -50,  0,  0);--
    setMoveKey(  ATK_06-1,  1,  60,  0,  0);
    
    changeAnime(  ATK_06,  0,  9);--パンチ3
    changeAnime(  ATK_06+1,  1,  112);--モーション
    
    hit09 = entryEffectLife(  ATK_06,  62,  10,  0,  -1,  0,  0,  50);
    setEffScaleKey(ATK_06, hit09, 1.0, 1.0);
    setEffAlphaKey(ATK_06, hit09,255);
    setEffAlphaKey(ATK_06 + 10, hit09, 0);

    -- playSe(ATK_06,1000);
    -- setSeVolume( ATK_06, 1000, 70 );
    -- playSe(ATK_06+1,1001);
    -- setSeVolume( ATK_06+1, 1001, 70 );
    
    shockEffect(  ATK_06+2,  0,  -1,  0,  0,  -200);
    shockEffect(  ATK_06+1,  0,  -1,  0,  190,  100);

    shuchusen06 = entryEffectLife(  ATK_06,  70,  4,  0,  -1,  0,  0,  0);
    setEffScaleKey(ATK_06, shuchusen06, 1.0, 1.2);

    hit10 = entryEffectLife(  ATK_06+1,  65,  10,  0,  -1,  0,  -15,  0);
    setEffScaleKey(ATK_06+1, hit10, 1.4, 1.4);
    setEffAlphaKey(ATK_06+1, hit10,255);
    setEffAlphaKey(ATK_06+1 + 10, hit10, 0);

    entryKakimoji(  ATK_06+1,  20,  4,  -1,  0,  -20,  -240);--baki
    
    setMoveKey(  ATK_06+2,  0,  -44,  0,  0);
    setMoveKey(  ATK_06+2,  1,  69,  0,  0);
    pauseChara(  ATK_06+2,  1);
    
    
    setMoveKey(  ATK_07+1,  0,  -45,  0,  0);
    setMoveKey(  ATK_07,  1,  60,  0,  0);
    setMoveKey(  ATK_07+1,  1,  80,  0,  0);
    changeAnime(  ATK_07+1,  0,  14);--パンチ1
    changeAnime(  ATK_07+1,  1,  110);--モーション
    
    hit11 = entryEffectLife(  ATK_07+1,  66,  10,  0,  -1,  0,  0,  0);
    setEffScaleKey(ATK_07+1, hit11, 1.2, 1.2);
    setEffAlphaKey(ATK_07+1, hit11,255);
    setEffAlphaKey(ATK_07+1 + 10, hit11, 0);

    -- playSe(ATK_07+1,1010);
    -- setSeVolume( ATK_07+1, 1010, 70 );
    -- playSe(ATK_07+1,1000);
    -- setSeVolume( ATK_07+1, 1000, 70 );

    shockEffect(  ATK_07+2,  0,  -1,  0,  10,  260);

    shuchusen07 = entryEffectLife(  ATK_07+1,  70,  4,  0,  -1,  0,  0,  0);
    setEffScaleKey(ATK_07+1, shuchusen07, 1.0, 1.2);

    shockEffect(  ATK_07+3, 0,  -1,  0,  -120,  -200);
    
    entryKakimoji(  ATK_07+1,  2,  4,  -1,  0,  -30,  240);--gagaga
    pauseChara(  ATK_07+3,  1);
    
    setMoveKey(  ATK_08,  0,  -32,  0,  0);--
    setMoveKey(  ATK_08,  1,  60,  0,  0);
    
    changeAnime(  ATK_08+1,  0,  10);
    changeAnime(  ATK_08+2,  1,  112);
    
    --entryFlashBg(  ATK_08+1,  1,  0,  0,  0);

        
    hit12 = entryEffectLife(  ATK_08+1,  67,  10,  0,  -1,  0,  21,  0);
    setEffScaleKey(ATK_08+1, hit12, 1.2, 1.2);
    setEffAlphaKey(ATK_08+1, hit12,255);
    setEffAlphaKey(ATK_08+1 + 10, hit12, 0);

    hit13 = entryEffectLife(  ATK_08+2,  64,  10,  0,  -1,  0,  30,  -10);
    setEffScaleKey(ATK_08+2, hit13, 1.0, 1.0);
    setEffAlphaKey(ATK_08+2, hit13,255);
    setEffAlphaKey(ATK_08+2 + 10, hit13, 0);

    -- playSe(ATK_08+1,1000);
    -- setSeVolume( ATK_08+1, 1000, 70 );
    -- playSe(ATK_08+2,1001);
    -- setSeVolume( ATK_08+2, 1001, 70 );
    
    shuchusen08 = entryEffectLife(  ATK_08,  70,  4,  0,  -1,  0,  0,  0);
    setEffScaleKey(ATK_08, shuchusen08, 1.0, 1.2);

    shockEffect(  ATK_08+3,  0,  -1,  0,  140,  -60);
    
    setMoveKey(  ATK_08+3,  0,  -48,  0,  0);--
    setMoveKey(  ATK_08+3,  1,  71,  0,  0);
    pauseChara(  ATK_08+3,  1);
    
    setMoveKey(  ATK_09,  0,  -36,  0,  0);--
    setMoveKey(  ATK_09,  1,  67,  0,  0);--
    
    changeAnime(  ATK_09+1,  0,  13);--パンチ2
    changeAnime(  ATK_09+2,  1,  110);--モーション

    hit14 = entryEffectLife(  ATK_09+1,  62,  10,  0,  -1,  0,  -25,  -20);
    setEffScaleKey(ATK_09+1, hit14, 1.0, 1.0);
    setEffAlphaKey(ATK_09+1, hit14,255);
    setEffAlphaKey(ATK_09+1 + 10, hit14, 0);

    hit15 = entryEffectLife(  ATK_09+2,  61,  10,  0,  -1,  0,  25,  20);
    setEffScaleKey(ATK_09+2, hit15, 1.0, 1.0);
    setEffAlphaKey(ATK_09+2, hit15,255);
    setEffAlphaKey(ATK_09+2 + 10, hit15, 0);


    -- playSe(ATK_09+1,1001);
    -- setSeVolume( ATK_09+1, 1001, 70 );
    
    shockEffect(  ATK_09+1,  0,  -1,  0,  200,  -100);

    shuchusen09 = entryEffectLife(  ATK_09+1,  70,  4,  0,  -1,  0,  0,  0);
    setEffScaleKey(ATK_09+1, shuchusen09, 1.0, 1.2);

    setMoveKey(  ATK_09+4,  0,  -80,  0,  0);--
    setMoveKey(  ATK_09+4,  1,  80,  0,  0);--
    pauseChara(  ATK_09+4,  1);
    
    setMoveKey(  ATK_10,  0,  -80,  0,  0);--
    setMoveKey(  ATK_10+2,  0,  -230,  0,  0);--
    setMoveKey(  ATK_10,  1,  80,  0,  0);--
    setMoveKey(  ATK_10+2,  1,  230,  0,  0);--
    setEnvZoomEnable( ATK_10+3,  1);
    changeAnime(  ATK_10+3,  0,  12);
    changeAnime(  ATK_10+3,  1,  112);
    
    setMoveKey(  ATK_10+5,  0,  -80,  0,  0);
    setMoveKey(  ATK_10+5,  1,  80,  0,  0);

    hit16 = entryEffectLife(  ATK_10+5,  60,  10,  0,  -1,  0,  0,  20);
    setEffScaleKey(ATK_10+5, hit16, 1.0, 1.0);
    setEffAlphaKey(ATK_10+5, hit16,255);
    setEffAlphaKey(ATK_10+5 + 10, hit16, 0);

    entryEffectLife(  ATK_10+5,  53,  10,  0,  -1,  0,  0,  0);

    -- playSe(ATK_10+5,1010);
    -- setSeVolume( ATK_10+5, 1010, 70 );

    shuchusen10 = entryEffectLife(  ATK_10+3,  70,  4,  0,  -1,  0,  0,  0);
    setEffScaleKey(ATK_10+3, shuchusen10, 1.0, 1.2);

    shockEffect(  ATK_10+5,  1,  -1,  0,  0,  20);
    entryKakimoji(  ATK_10+5,  4,  4,  1,  -1,  -10,  -70);
    pauseAll(ATK_10+5,6);
    
    startBgScroll(  ATK_10+4,  30,  3);
    --entryFlash( (ATK_10+6), 1, fcolor_r, fcolor_g, fcolor_b, 100);
    
    
    f01 = 15;
    
    setMoveKey(  ATK_10+12,  0,  -80,  0,  0);
    setMoveKey(  ATK_10+12,  1,  80,  0,  0);
    --setEnvZoomEnable( ATK_10+12,  0);
    setMoveKey(  ATK_10+12+f01,  0,  -280,  0,  0);--
    setMoveKey(  ATK_10+12+f01,  1,  230,  0,  0);--
    
    changeAnime( ATK_10+11+f01,  0,  4);
    changeAnime( ATK_10+13+f01,  0,  1);
    changeAnime( ATK_10+13+f01,  1,  104);
    changeAnime( ATK_10+14+f01,  1,  101);
    
    setMoveKey( ATK_10+20+f01,  0,  -230,  0,  0);--
    setMoveKey( ATK_10+25+f01,  0,  80,  0,  0);--
    setMoveKey(  ATK_10+12+f01,  1,  230,  0,  0);--
    setMoveKey(  ATK_10+12+f01,  1,  230,  0,  0);--
    changeAnime( ATK_10+21+f01,  0,  3);
    changeAnime( ATK_10+23+f01,  0,  12);

    naname = entryEffectLife( ATK_10+20+f01, 72, 20, 0x80,  -1,  0,  -500,  0); -- 流線斜め
    setEffScaleKey(ATK_10+20+f01, naname, 2,2);
    setEffRotateKey(ATK_10+20+f01, naname, -45);
    setEffAlphaKey(ATK_10+20+f01, naname, 255);
    setEffAlphaKey(ATK_10+20+f01+4, naname, 255);
    setEffAlphaKey(ATK_10+20+f01+5, naname, 0);
    setEffAlphaKey(ATK_10+20+f01+9, naname, 0);
    setEffAlphaKey(ATK_10+20+f01+10, naname, 255);
    setEffAlphaKey(ATK_10+20+f01+72, naname, 255);

    --dealDamage( ATK_10+25+f01);
    -- playSe(ATK_10+25+f01,1011);

    -- ** 音 ** --
    --向かっていく
    SE001 = playSeVer2( 2, 1117, "",58, 0, 30, -1);

    --破裂エフェクト
    SE003 = playSeVer2( 24, 20, "", 0, 0, 0, -1);
    setSeVolumeByWorkId( 24, SE003, 61 );

    --連打
    SE002 = playSeVer2( 24, 1009, "", 0, 0, 0, -1);
    SE004 = playSeVer2( 34, 1000, "", 0, 0, 0, -1);
    SE005 = playSeVer2( 42, 1000, "", 0, 0, 0, -1);
    SE006 = playSeVer2( 46, 1001, "", 0, 0, 0, -1);
    setSeVolumeByWorkId( 46, SE006, 63 );
    SE007 = playSeVer2( 54, 1009, "", 0, 0, 0, -1);
    setSeVolumeByWorkId( 54, SE007, 85 );
    SE008 = playSeVer2( 56, 1000, "", 0, 0, 0, -1);

    --蹴り交差
    SE009 = playSeVer2( 68, 1003, "", 0, 0, 0, -1);
    SE010 = playSeVer2( 78, 1110, "", 0, 0, 0, -1);
    SE011 = playSeVer2( 78, 1179, "",144, 0, 42, -1);
    setSeVolumeByWorkId( 78, SE011, 78 );
    SE012 = playSeVer2( 78, 19, "", 0, 0, 0, -1);
    setSeVolumeByWorkId( 78, SE012, 60 );

    --ラスト蹴り
    SE013 = playSeVer2( 114, 1010, "", 0, 0, 0, -1);
    SE014 = playSeVer2( 114, 1110, "", 0, 0, 0, -1);


    -----------------------------------------------------
    kame_flag = 0x00;
    if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
    -----------------------
    
    dealDamage( ATK_10+25+f01);
    playSe(ATK_10+25+f01,1003);
    pauseChara(  ATK_10+25+f01,  5);
    entryEffect(  ATK_10+25+f01,  23,  0x40,  1,  0,-100,  0);
    changeAnime( ATK_10+25+f01,  1,  104);--待機
    
    else
    dealDamage( ATK_10+32+f01);
    setMoveKey( ATK_10+32+f01,  0,  -50,  0,  0);--
    setMoveKey( ATK_10+32+f01,  1,  50,  0,  0);--
    
    setMoveKey( ATK_10+35+f01,  1,  50,  0,  0);--
    pauseChara(  ATK_10+25+f01,  5);

    hit17 = entryEffectLife(  ATK_10+25+f01,  66,  10,  0x40, 1, 0,  0,  0);
    setEffScaleKey(ATK_10+25+f01, hit17, 1.4, 1.4);
    setEffAlphaKey(ATK_10+25+f01, hit17,255);
    setEffAlphaKey(ATK_10+25+f01 + 10, hit17, 0);

    shock03 = entryEffectLife(  ATK_10+25+f01,  54,  10, 0,  -1,  0,  100,  0);
    setEffScaleKey(ATK_10+25+f01, shock03, 0.5, 0.5);
    setEffScaleKey(ATK_10+25+f01 + 10, shock03, 3, 3);
    entryEffectLife(  ATK_10+25+f01,  50,  10, 0,  -1,  0,  100,  0);
    
    shunkan = entryEffect(  ATK_10+25+f01,  57,  -1,  0,  0,  0,  0);
    setEffRotateKey(ATK_10+25+f01,  shunkan,  90);

    shuchusen11 = entryEffectLife(  ATK_10+25+f01,  70,  4,  0,  -1,  0,  0,  0);
    setEffScaleKey(ATK_10+25+f01, shuchusen11, 1.0, 1.2);

    changeAnime( ATK_10+25+f01,  1,  106);--モーション
    --entryFlash( (ATK_10+25+f01), 1, fcolor_r, fcolor_g, fcolor_b, 100);
    
    end
    -----------------------------------------------------
    --しぼんぬ
    --------------------------------
    kame_flag = 0x00;
    
    if (_IS_DEAD_ == 1) then
        -- 死亡フェーズ (sys0002 / sys0003)
    
    ATK_dead = ATK_10+25+f01;
    	
            entryFade( ATK_dead, 5, 5, 17, 119,3,16,0); -- カット接続用
       endPhase( ATK_dead+6);
       
    else
    -----------------------------------------------------
    kame_flag = 0x00;
    if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
    -----------------------
    
    setMoveKey( ATK_10+36+f01,  1,  100,  0,  0);--
    setMoveKey( ATK_10+35+f01,  0,  -100,  0,  0);--
    changeAnime( ATK_10+37+f01,  0,  0);--待機
    
    --endPhase(ATK_10+45+f01);
    -----------------------
    else
    setMoveKey( ATK_10+32+f01,  0,  -50,  0,  0);--
    setMoveKey( ATK_10+32+f01,  1,  50,  0,  0);--
    
    setMoveKey( ATK_10+35+f01,  1,  50,  0,  0);--
    pauseChara(  ATK_10+25+f01,  5);

    hit17 = entryEffectLife(  ATK_10+25+f01,  66,  10,  0x40, 1, 0,  0,  0);
    setEffScaleKey(ATK_10+25+f01, hit17, 1.4, 1.4);
    setEffAlphaKey(ATK_10+25+f01, hit17,255);
    setEffAlphaKey(ATK_10+25+f01 + 10, hit17, 0);

    shock03 = entryEffectLife(  ATK_10+25+f01,  54,  10, 0,  -1,  0,  100,  0);
    setEffScaleKey(ATK_10+25+f01, shock03, 0.5, 0.5);
    setEffScaleKey(ATK_10+25+f01 + 10, shock03, 3, 3);
    entryEffectLife(  ATK_10+25+f01,  50,  10, 0,  -1,  0,  100,  0);

    shunkan = entryEffect(  ATK_10+25+f01,  57,  -1,  0,  0,  0,  0);
    setEffRotateKey(ATK_10+25+f01,  shunkan,  90);

    shuchusen11 = entryEffectLife(  ATK_10+25+f01,  70,  4,  0,  -1,  0,  0,  0);
    setEffScaleKey(ATK_10+25+f01, shuchusen11, 1.0, 1.2);

    changeAnime( ATK_10+25+f01,  1,  106);--モーション
    --entryFlash( (ATK_10+25+f01), 1, fcolor_r, fcolor_g, fcolor_b, 100);
    
    end
    setMoveKey( ATK_10+45+f01,  1,  250,  0,  0);--
    setMoveKey( ATK_10+39+f01,  0,  -700,  0,  0);--

    setDisp( ATK_10+39+f01, 0, 0); --味方消す20170607

    changeAnime( ATK_10+50+f01,  1,  104);--モーション
    changeAnime( ATK_10+54+f01,  1,  100);--モーション
    
    setEnvZoomEnable( ATK_10+54+f01,  0);
    endPhase(ATK_10+55+f01);
    
    end



print(  "[lua]exec a0004");
