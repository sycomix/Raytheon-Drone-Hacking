.class public interface abstract Lcom/parrot/freeflight/core/model/ModelStore$Listener;
.super Ljava/lang/Object;
.source "ModelStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/model/ModelStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
