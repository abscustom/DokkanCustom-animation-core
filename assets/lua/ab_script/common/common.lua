-- common.lua

function showCardCutin(startFrame, isDynamicBg)
    -- ** カードカットイン ** --
    local cutinEffectId = 1507;

    if (_SPECIAL_SKILL_LEVEL_ == 1) then
        cutinEffectId = 1120;
    elseif (_SPECIAL_SKILL_LEVEL_ == 2) then
        cutinEffectId = 1121;
    end

    local speff = entryEffectLife( startFrame, cutinEffectId, 90, 0x100, -1, 0, 0, 0 );  -- カード
    setEffReplaceTexture( speff, 1, 1 );
    setEffReplaceTexture( speff, 2, 0 );  -- カード差し替え
    setEffReplaceTexture( speff, 5, 4 );  -- 技名テクスチャ差し替え

    -- ** 集中線 ** --
    local shuchusen = entryEffectLife( startFrame + 0, 906, 90, 0x100, -1, 0, 0, 0 );  -- 集中線
    setEffShake( startFrame + 0, shuchusen, 90, 20 );
    setEffMoveKey( startFrame + 0, shuchusen, 0, 0 , 0 );
    setEffMoveKey( startFrame + 90, shuchusen, 0, 0 , 0 );
    setEffScaleKey( startFrame + 0, shuchusen, 1.6, 1.6 );
    setEffScaleKey( startFrame + 90, shuchusen, 1.6, 1.6 );
    setEffRotateKey( startFrame + 0, shuchusen, 0 );
    setEffRotateKey( startFrame + 90, shuchusen, 0 );
    setEffAlphaKey( startFrame + 0, shuchusen, 255 );
    setEffAlphaKey( startFrame + 90, shuchusen, 255 );

    -- ** 音 ** --
    SE_CUTIN = playSe( startFrame + 0, 1035 );

    -- ** 白背景 ** --
    local fadeBgFrame = 96;
    if (isDynamicBg == 1) then
        fadeBgFrame = 94;
    else end
    entryFadeBg( startFrame + 0, 0, fadeBgFrame, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- 白　背景

    -- ** 白フェード ** --
    entryFade( startFrame + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
    entryFade( startFrame + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

    -- ** 次の準備 ** --
    return startFrame + 94;
end

function showCardCutinEx(startFrame, isDynamicBg)
    -- ** カードカットイン ** --
    local cutinEffectId = 1514;

    if (_SPECIAL_SKILL_LEVEL_ == 1) then
        cutinEffectId = 1127;
    elseif (_SPECIAL_SKILL_LEVEL_ == 2) then
        cutinEffectId = 1128;
    end

    local speff = entryEffectLife( startFrame, cutinEffectId, 90, 0x100, -1, 0, 0, 0 );  -- カード
    setEffReplaceTexture( speff, 1, 1 );
    setEffReplaceTexture( speff, 2, 0 );  -- カード差し替え
    setEffReplaceTexture( speff, 5, 4 );  -- 技名テクスチャ差し替え

    -- ** 集中線 ** --
    local shuchusen = entryEffectLife( startFrame + 0, 906, 90, 0x100, -1, 0, 0, 0 );  -- 集中線
    setEffShake( startFrame + 0, shuchusen, 90, 20 );
    setEffMoveKey( startFrame + 0, shuchusen, 0, 0 , 0 );
    setEffMoveKey( startFrame + 90, shuchusen, 0, 0 , 0 );
    setEffScaleKey( startFrame + 0, shuchusen, 1.6, 1.6 );
    setEffScaleKey( startFrame + 90, shuchusen, 1.6, 1.6 );
    setEffRotateKey( startFrame + 0, shuchusen, 0 );
    setEffRotateKey( startFrame + 90, shuchusen, 0 );
    setEffAlphaKey( startFrame + 0, shuchusen, 255 );
    setEffAlphaKey( startFrame + 90, shuchusen, 255 );

    -- ** 音 ** --
    SE_CUTIN = playSe( startFrame + 0, 1035 );

    -- ** 白背景 ** --
    local fadeBgFrame = 96;
    if (isDynamicBg == 1) then
        fadeBgFrame = 94;
    else end
    entryFadeBg( startFrame + 0, 0, fadeBgFrame, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- 白　背景

    -- ** 白フェード ** --
    entryFade( startFrame + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
    entryFade( startFrame + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

    -- ** 次の準備 ** --
    return startFrame + 94;
end

function showCardCutinOffset(startFrame, isDynamicBg,offset_Y)
    -- ** カードカットイン ** --
    local cutinEffectId = 1513;
    local offsetId = 1512;

    if (_SPECIAL_SKILL_LEVEL_ == 1) then
        cutinEffectId = 3248;
        offsetId = 3246;
    elseif (_SPECIAL_SKILL_LEVEL_ == 2) then
        cutinEffectId = 3252;
        offsetId = 3250;
    end

    speff2 = entryEffectLife( startFrame + 0, cutinEffectId, 90, 0x100, -1, 0, 0, 0 );   -- カード

    if (_IS_PLAYER_SIDE_ == 0) then

        setEffScaleKey( startFrame + 0, speff2, -1.0, 1.0); -- 敵側のみ  
        setEffScaleKey( startFrame + 90, speff2, -1.0, 1.0); -- 敵側のみ 
        
    end
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 放射線(黄) ** --
    housha = entryEffectLife( startFrame + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
    setEffMoveKey( startFrame + 0, housha, 0, 0 , 0 );
    setEffMoveKey( startFrame + 90, housha, 0, 0 , 0 );
    setEffScaleKey( startFrame + 0, housha, 1.0, 1.0 );
    setEffScaleKey( startFrame + 90, housha, 1.0, 1.0 );
    setEffRotateKey( startFrame + 0, housha, 0 );
    setEffRotateKey( startFrame + 90, housha, 0 );
    setEffAlphaKey( startFrame + 0, housha, 255 );
    setEffAlphaKey( startFrame + 90, housha, 255 );

    -- ** 集中線 ** --
    shuchusen = entryEffectLife( startFrame + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
    setEffShake( startFrame + 0, shuchusen, 90, 20 );
    setEffMoveKey( startFrame + 0, shuchusen, 0, 0 , 0 );
    setEffMoveKey( startFrame + 90, shuchusen, 0, 0 , 0 );
    setEffScaleKey( startFrame + 0, shuchusen, 1.6, 1.6 );
    setEffScaleKey( startFrame + 90, shuchusen, 1.6, 1.6 );
    setEffRotateKey( startFrame + 0, shuchusen, 0 );
    setEffRotateKey( startFrame + 90, shuchusen, 0 );
    setEffAlphaKey( startFrame + 0, shuchusen, 255 );
    setEffAlphaKey( startFrame + 90, shuchusen, 255 );

    if (_SPECIAL_SKILL_LEVEL_ > 0) then-- 極限時判定

    local kaminariEff = 3247;-- 雷エフェクト
    local haikeiEff = 3249;-- 極限背景
    if (_SPECIAL_SKILL_LEVEL_ == 2) then
        kaminariEff = 3251;
        haikeiEff = 3253;
    end
        -- ** 雷エフェクト ** --
        kaminari = entryEffectLife( startFrame + 0, kaminariEff, 90, 0x100, -1, 0, 0, 0 );  -- 雷エフェクト
        setEffMoveKey( startFrame + 0, kaminari, 0, 0 , 0 );
        setEffMoveKey( startFrame + 90, kaminari, 0, 0 , 0 );
        setEffScaleKey( startFrame + 0, kaminari, 1.0, 1.0 );
        setEffScaleKey( startFrame + 90, kaminari, 1.0, 1.0 );
        setEffRotateKey( startFrame + 0, kaminari, 0 );
        setEffRotateKey( startFrame + 90, kaminari, 0 );
        setEffAlphaKey( startFrame + 0, kaminari, 255 );
        setEffAlphaKey( startFrame + 90, kaminari, 255 );

            -- ** 極限背景 ** --
        haikei = entryEffectLife( startFrame + 0, haikeiEff, 90, 0x80, -1, 0, 0, 0 );  -- 極限背景
        setEffMoveKey( startFrame + 0, haikei, 0, 0 , 0 );
        setEffMoveKey( startFrame + 90, haikei, 0, 0 , 0 );
        setEffScaleKey( startFrame + 0, haikei, 1.0, 1.0 );
        setEffScaleKey( startFrame + 90, haikei, 1.0, 1.0 );
        setEffRotateKey( startFrame + 0, haikei, 0 );
        setEffRotateKey( startFrame + 90, haikei, 0 );
        setEffAlphaKey( startFrame + 0, haikei, 255 );
        setEffAlphaKey( startFrame + 90, haikei, 255 );
    end
    spname = entryEffectLife( startFrame + 0, offsetId, 90, 0x100, -1, 0, 0, offset_Y );-- 技名呼び出し・位置変更offset_Y
    if (_IS_PLAYER_SIDE_ == 0) then

        setEffScaleKey( startFrame + 0, spname, -1.0, 1.0); -- 敵側のみ
        setEffScaleKey( startFrame + 90, spname, -1.0, 1.0); -- 敵側のみ

    end
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
    
    SE_CUTIN = playSe( startFrame + 0, 1035 );

    -- ** 白背景 ** --
    local fadeBgFrame = 96;
    if (isDynamicBg == 1) then
        fadeBgFrame = 94;
    else end
    entryFadeBg( startFrame + 0, 0, fadeBgFrame, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- 白　背景

    -- ** 白フェード ** --
    entryFade( startFrame + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
    entryFade( startFrame + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

    -- ** 次の準備 ** --
    return startFrame + 94;
end

function changeAnimeBySide(timing, battleChara, animeNo)
    local fixedAnimeNo = animeNo

    -- 敵側の場合のみアニメ番号を反転
    if _IS_PLAYER_SIDE_ == 0 then
        if animeNo >= 100 then
            fixedAnimeNo = animeNo - 100;
        else
            fixedAnimeNo = animeNo + 100;
        end
    end

    changeAnime(timing, battleChara, fixedAnimeNo)
end