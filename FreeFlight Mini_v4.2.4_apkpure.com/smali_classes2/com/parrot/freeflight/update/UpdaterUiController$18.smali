.class Lcom/parrot/freeflight/update/UpdaterUiController$18;
.super Ljava/lang/Object;
.source "UpdaterUiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/update/UpdaterUiController;->showAskingUploadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

.field final synthetic val$productToUpdateList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdaterUiController;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$18;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    iput-object p2, p0, Lcom/parrot/freeflight/update/UpdaterUiController$18;->val$productToUpdateList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 537
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$18;->val$productToUpdateList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;

    .line 538
    .local v0, "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    iget-boolean v1, v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->trampolineUpdate:Z

    if-nez v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$18;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$900(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/UpdaterController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/update/UpdaterController;->startUpload(Lcom/parrot/freeflight/update/task/AvailableUpdate;)V

    .line 543
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$18;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$1000(Lcom/parrot/freeflight/update/UpdaterUiController;Lcom/parrot/freeflight/update/task/AvailableUpdate;)V

    goto :goto_0
.end method
