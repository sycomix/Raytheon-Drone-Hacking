.class Lcom/parrot/freeflight/update/UpdaterUiController$13;
.super Ljava/lang/Object;
.source "UpdaterUiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/update/UpdaterUiController;->showAskingDownloading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

.field final synthetic val$availableUpdateList:Ljava/util/List;

.field final synthetic val$checked:[Z

.field final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdaterUiController;[Ljava/lang/String;[ZLjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$13;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    iput-object p2, p0, Lcom/parrot/freeflight/update/UpdaterUiController$13;->val$items:[Ljava/lang/String;

    iput-object p3, p0, Lcom/parrot/freeflight/update/UpdaterUiController$13;->val$checked:[Z

    iput-object p4, p0, Lcom/parrot/freeflight/update/UpdaterUiController$13;->val$availableUpdateList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v1, "productList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterUiController$13;->val$items:[Ljava/lang/String;

    array-length v2, v3

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 436
    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterUiController$13;->val$checked:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 437
    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterUiController$13;->val$availableUpdateList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v3, v3, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterUiController$13;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v3}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$900(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/UpdaterController;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v4, v3}, Lcom/parrot/freeflight/update/UpdaterController;->readyForDownloading([Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 441
    return-void
.end method
