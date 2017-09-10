.class public interface abstract Lcom/parrot/freeflight/update/UpdaterController$StateListener;
.super Ljava/lang/Object;
.source "UpdaterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/UpdaterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateListener"
.end annotation


# virtual methods
.method public abstract onStateChange(Lcom/parrot/freeflight/update/UpdaterController$State;Lcom/parrot/freeflight/core/model/Model;)V
    .param p1    # Lcom/parrot/freeflight/update/UpdaterController$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
