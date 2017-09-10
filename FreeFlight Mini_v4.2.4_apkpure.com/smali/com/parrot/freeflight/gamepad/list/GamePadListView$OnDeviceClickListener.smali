.class public interface abstract Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;
.super Ljava/lang/Object;
.source "GamePadListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/list/GamePadListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDeviceClickListener"
.end annotation


# virtual methods
.method public abstract onDeviceClick(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .param p1    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
