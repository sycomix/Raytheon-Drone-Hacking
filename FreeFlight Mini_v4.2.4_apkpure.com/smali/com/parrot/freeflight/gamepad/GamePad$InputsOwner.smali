.class public interface abstract Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;
.super Ljava/lang/Object;
.source "GamePad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputsOwner"
.end annotation


# virtual methods
.method public abstract getInputById(I)Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getInputs()Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            ">;"
        }
    .end annotation
.end method
