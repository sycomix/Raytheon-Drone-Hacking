.class public abstract Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;
.super Ljava/lang/Object;
.source "GamePadPreferences.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GamePadPreferences"


# instance fields
.field protected mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mGamePadMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mGamePadType:I


# direct methods
.method public constructor <init>(ILcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V
    .locals 0
    .param p1, "gamePadType"    # I
    .param p2, "gamePadMapping"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "gamePadJoystickParams"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;->mGamePadType:I

    .line 23
    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;->mGamePadMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    .line 24
    iput-object p3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    .line 25
    return-void
.end method


# virtual methods
.method public getGamePadJoystickParams()Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    return-object v0
.end method

.method public getMapping()Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;->mGamePadMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    return-object v0
.end method

.method public abstract reset()V
.end method

.method public abstract saveJoystickParams(Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V
    .param p1    # Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract saveMapping(Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V
    .param p1    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
