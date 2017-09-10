.class Lcom/parrot/freeflight/purchase/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/purchase/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/parrot/freeflight/purchase/util/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/purchase/util/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/parrot/freeflight/purchase/util/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/purchase/util/IabHelper;ZLjava/util/List;Lcom/parrot/freeflight/purchase/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/purchase/util/IabHelper;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/parrot/freeflight/purchase/util/IabHelper$2;->this$0:Lcom/parrot/freeflight/purchase/util/IabHelper;

    iput-boolean p2, p0, Lcom/parrot/freeflight/purchase/util/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/parrot/freeflight/purchase/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/parrot/freeflight/purchase/util/IabHelper$2;->val$listener:Lcom/parrot/freeflight/purchase/util/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/parrot/freeflight/purchase/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 625
    new-instance v3, Lcom/parrot/freeflight/purchase/util/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/parrot/freeflight/purchase/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 626
    .local v3, "result":Lcom/parrot/freeflight/purchase/util/IabResult;
    const/4 v1, 0x0

    .line 628
    .local v1, "inv":Lcom/parrot/freeflight/purchase/util/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/parrot/freeflight/purchase/util/IabHelper$2;->this$0:Lcom/parrot/freeflight/purchase/util/IabHelper;

    iget-boolean v6, p0, Lcom/parrot/freeflight/purchase/util/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/parrot/freeflight/purchase/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/parrot/freeflight/purchase/util/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/parrot/freeflight/purchase/util/Inventory;
    :try_end_0
    .catch Lcom/parrot/freeflight/purchase/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 634
    :goto_0
    iget-object v5, p0, Lcom/parrot/freeflight/purchase/util/IabHelper$2;->this$0:Lcom/parrot/freeflight/purchase/util/IabHelper;

    invoke-virtual {v5}, Lcom/parrot/freeflight/purchase/util/IabHelper;->flagEndAsync()V

    .line 636
    move-object v4, v3

    .line 637
    .local v4, "result_f":Lcom/parrot/freeflight/purchase/util/IabResult;
    move-object v2, v1

    .line 638
    .local v2, "inv_f":Lcom/parrot/freeflight/purchase/util/Inventory;
    iget-object v5, p0, Lcom/parrot/freeflight/purchase/util/IabHelper$2;->this$0:Lcom/parrot/freeflight/purchase/util/IabHelper;

    iget-boolean v5, v5, Lcom/parrot/freeflight/purchase/util/IabHelper;->mDisposed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/parrot/freeflight/purchase/util/IabHelper$2;->val$listener:Lcom/parrot/freeflight/purchase/util/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_0

    .line 639
    iget-object v5, p0, Lcom/parrot/freeflight/purchase/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/parrot/freeflight/purchase/util/IabHelper$2$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/parrot/freeflight/purchase/util/IabHelper$2$1;-><init>(Lcom/parrot/freeflight/purchase/util/IabHelper$2;Lcom/parrot/freeflight/purchase/util/IabResult;Lcom/parrot/freeflight/purchase/util/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 645
    :cond_0
    return-void

    .line 630
    .end local v2    # "inv_f":Lcom/parrot/freeflight/purchase/util/Inventory;
    .end local v4    # "result_f":Lcom/parrot/freeflight/purchase/util/IabResult;
    :catch_0
    move-exception v0

    .line 631
    .local v0, "ex":Lcom/parrot/freeflight/purchase/util/IabException;
    invoke-virtual {v0}, Lcom/parrot/freeflight/purchase/util/IabException;->getResult()Lcom/parrot/freeflight/purchase/util/IabResult;

    move-result-object v3

    goto :goto_0
.end method
