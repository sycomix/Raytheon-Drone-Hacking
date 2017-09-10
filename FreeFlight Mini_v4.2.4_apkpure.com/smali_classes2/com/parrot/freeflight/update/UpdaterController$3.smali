.class Lcom/parrot/freeflight/update/UpdaterController$3;
.super Ljava/lang/Object;
.source "UpdaterController.java"

# interfaces
.implements Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/UpdaterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/UpdaterController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdaterController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 691
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlreadyDownloaded(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/update/task/AvailableUpdate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, "availableUpdates":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v2}, Lcom/parrot/freeflight/update/UpdaterController;->access$400(Lcom/parrot/freeflight/update/UpdaterController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 725
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v2}, Lcom/parrot/freeflight/update/UpdaterController;->access$400(Lcom/parrot/freeflight/update/UpdaterController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 726
    const/4 v0, 0x1

    .line 727
    .local v0, "upToDate":Z
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v2}, Lcom/parrot/freeflight/update/UpdaterController;->access$400(Lcom/parrot/freeflight/update/UpdaterController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/update/task/AvailableUpdate;

    .line 728
    .local v1, "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    iget-boolean v3, v1, Lcom/parrot/freeflight/update/task/AvailableUpdate;->deviceNeedUpdate:Z

    if-eqz v3, :cond_0

    .line 729
    const/4 v0, 0x0

    .line 733
    .end local v1    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    :cond_1
    if-eqz v0, :cond_2

    .line 734
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    sget-object v3, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_DEVICES_UP_TO_DATE:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/update/UpdaterController;->access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 738
    :goto_0
    return-void

    .line 736
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    sget-object v3, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_ALREADY_DOWNLOADED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/update/UpdaterController;->access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    goto :goto_0
.end method

.method public onFinish(Z[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 6
    .param p1, "succeeded"    # Z
    .param p2, "downloadedProducts"    # [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 742
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 743
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p2, v2

    .line 744
    .local v0, "downloadedProduct":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v4}, Lcom/parrot/freeflight/update/UpdaterController;->access$400(Lcom/parrot/freeflight/update/UpdaterController;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/update/task/AvailableUpdate;

    .line 745
    .local v1, "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    iget-object v5, v1, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v5, v0, :cond_0

    .line 746
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/parrot/freeflight/update/task/AvailableUpdate;->downloaded:Z

    .line 743
    .end local v1    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 752
    .end local v0    # "downloadedProduct":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    if-eqz p1, :cond_3

    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_DOWNLOADING_SUCCEEDED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    :goto_1
    invoke-static {v3, v2}, Lcom/parrot/freeflight/update/UpdaterController;->access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 753
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/parrot/freeflight/update/UpdaterController;->access$902(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/task/DownloaderTask;)Lcom/parrot/freeflight/update/task/DownloaderTask;

    .line 754
    return-void

    .line 752
    :cond_3
    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_DOWNLOADING_FAILED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    goto :goto_1
.end method

.method public onInternetNeeded()V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_INTERNET_NEEDED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController;->access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 696
    return-void
.end method

.method public onProgressChange(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;F)V
    .locals 4
    .param p1, "downloadingProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "downloadingVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "progress"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 708
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v3}, Lcom/parrot/freeflight/update/UpdaterController;->access$500(Lcom/parrot/freeflight/update/UpdaterController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    .line 709
    invoke-static {v3}, Lcom/parrot/freeflight/update/UpdaterController;->access$600(Lcom/parrot/freeflight/update/UpdaterController;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    if-eq p1, v3, :cond_6

    :cond_1
    move v0, v2

    .line 710
    .local v0, "productUpdated":Z
    :goto_0
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v3}, Lcom/parrot/freeflight/update/UpdaterController;->access$700(Lcom/parrot/freeflight/update/UpdaterController;)F

    move-result v3

    cmpl-float v3, p3, v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 711
    .local v1, "update":Z
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v2, p2}, Lcom/parrot/freeflight/update/UpdaterController;->access$502(Lcom/parrot/freeflight/update/UpdaterController;Ljava/lang/String;)Ljava/lang/String;

    .line 712
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v2, p1}, Lcom/parrot/freeflight/update/UpdaterController;->access$602(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 713
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v2, p3}, Lcom/parrot/freeflight/update/UpdaterController;->access$702(Lcom/parrot/freeflight/update/UpdaterController;F)F

    .line 714
    if-eqz v0, :cond_4

    .line 715
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    sget-object v3, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_DOWNLOADING_UPDATED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/update/UpdaterController;->access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 717
    :cond_4
    if-eqz v1, :cond_5

    .line 718
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v2}, Lcom/parrot/freeflight/update/UpdaterController;->access$800(Lcom/parrot/freeflight/update/UpdaterController;)V

    .line 720
    :cond_5
    return-void

    .end local v0    # "productUpdated":Z
    .end local v1    # "update":Z
    :cond_6
    move v0, v1

    .line 709
    goto :goto_0
.end method

.method public onUpdateAvailable(Ljava/util/List;)Z
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/update/task/AvailableUpdate;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 700
    .local p1, "availableUpdateList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterController;->access$400(Lcom/parrot/freeflight/update/UpdaterController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 701
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterController;->access$400(Lcom/parrot/freeflight/update/UpdaterController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 702
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterController;

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_UPDATE_AVAILABLE:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController;->access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 703
    const/4 v0, 0x1

    return v0
.end method
