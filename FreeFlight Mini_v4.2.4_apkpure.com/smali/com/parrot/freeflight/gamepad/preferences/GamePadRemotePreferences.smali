.class public Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;
.super Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;
.source "GamePadRemotePreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$AxisExpoOwner;,
        Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GamePadRemotePreferences"


# instance fields
.field protected final mGamePadPrefListener:Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V
    .locals 0
    .param p1, "gamePadType"    # I
    .param p2, "gamePadPrefListener"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "gamePadMapping"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "gamePadJoystickParams"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-direct {p0, p1, p3, p4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;-><init>(ILcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    .line 20
    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;->mGamePadPrefListener:Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;

    .line 21
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;->mGamePadPrefListener:Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;->mGamePadPrefListener:Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;->onResetPreferences()V

    .line 42
    :cond_0
    return-void
.end method

.method public saveJoystickParams(Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V
    .locals 1
    .param p1, "gamePadJoystickParams"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;->mGamePadPrefListener:Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;->mGamePadPrefListener:Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;->onSaveJoystickParams(Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    .line 35
    :cond_0
    return-void
.end method

.method public saveMapping(Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V
    .locals 1
    .param p1, "gamePadMapping"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;->mGamePadPrefListener:Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;->mGamePadPrefListener:Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;->onSaveMapping(Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    .line 28
    :cond_0
    return-void
.end method
