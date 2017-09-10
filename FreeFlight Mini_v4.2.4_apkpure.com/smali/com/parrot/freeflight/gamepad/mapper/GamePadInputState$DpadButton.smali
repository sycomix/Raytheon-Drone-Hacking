.class public Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;
.super Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;
.source "GamePadInputState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DpadButton"
.end annotation


# instance fields
.field private mDirection:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 585
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;-><init>(I)V

    .line 586
    iput p1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;->mDirection:I

    .line 587
    return-void
.end method


# virtual methods
.method public getControlType()I
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x1

    return v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$DpadButton;->mDirection:I

    return v0
.end method
