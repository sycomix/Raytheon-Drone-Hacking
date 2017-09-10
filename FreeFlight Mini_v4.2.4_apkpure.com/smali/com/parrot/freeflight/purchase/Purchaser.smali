.class public Lcom/parrot/freeflight/purchase/Purchaser;
.super Ljava/lang/Object;
.source "Purchaser.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/parrot/freeflight/core/PurchaseManager;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "purchaseManager"    # Lcom/parrot/freeflight/core/PurchaseManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method
