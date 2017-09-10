.class public interface abstract Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;
.super Ljava/lang/Object;
.source "GamePadListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IListener"
.end annotation


# virtual methods
.method public abstract onGamePadSelected(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .param p1    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
