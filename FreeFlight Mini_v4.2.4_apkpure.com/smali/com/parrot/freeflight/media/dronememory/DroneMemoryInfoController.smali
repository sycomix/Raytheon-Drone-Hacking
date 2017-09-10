.class public Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;
.super Ljava/lang/Object;
.source "DroneMemoryInfoController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/core/model/Model;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "droneModel"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public updateMediaCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 25
    return-void
.end method
