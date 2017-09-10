.class public interface abstract Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;
.super Ljava/lang/Object;
.source "GamePadRemotePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemotePreferencesListener"
.end annotation


# virtual methods
.method public abstract onResetPreferences()V
.end method

.method public abstract onSaveJoystickParams(Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V
    .param p1    # Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSaveMapping(Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V
    .param p1    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
