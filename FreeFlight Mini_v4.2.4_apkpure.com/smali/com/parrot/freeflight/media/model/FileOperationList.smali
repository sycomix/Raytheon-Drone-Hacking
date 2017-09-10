.class public Lcom/parrot/freeflight/media/model/FileOperationList;
.super Lcom/parrot/freeflight/media/model/ItemList;
.source "FileOperationList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/media/model/ItemList",
        "<",
        "Lcom/parrot/freeflight/media/model/FileOperation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/media/model/ItemList$IProvider;Lcom/parrot/freeflight/util/observer/IObserver;[Lcom/parrot/freeflight/media/model/FileOperation;)V
    .locals 0
    .param p1, "itemProvider"    # Lcom/parrot/freeflight/media/model/ItemList$IProvider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "observer"    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "items"    # [Lcom/parrot/freeflight/media/model/FileOperation;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/media/model/ItemList;-><init>(Lcom/parrot/freeflight/media/model/ItemList$IProvider;Lcom/parrot/freeflight/util/observer/IObserver;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method
