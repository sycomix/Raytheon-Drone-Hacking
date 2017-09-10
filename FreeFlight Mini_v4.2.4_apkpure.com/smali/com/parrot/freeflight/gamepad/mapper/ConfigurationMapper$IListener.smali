.class public interface abstract Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;
.super Ljava/lang/Object;
.source "ConfigurationMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IListener"
.end annotation


# virtual methods
.method public abstract onMappingChange(Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V
    .param p1    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onMappingUnsupported()V
.end method
