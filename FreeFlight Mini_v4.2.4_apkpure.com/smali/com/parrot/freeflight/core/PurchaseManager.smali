.class public Lcom/parrot/freeflight/core/PurchaseManager;
.super Ljava/lang/Object;
.source "PurchaseManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method
