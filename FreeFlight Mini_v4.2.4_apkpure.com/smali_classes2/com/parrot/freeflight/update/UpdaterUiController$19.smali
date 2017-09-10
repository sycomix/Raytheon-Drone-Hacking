.class Lcom/parrot/freeflight/update/UpdaterUiController$19;
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

.field final synthetic val$availableUpdateList:Ljava/util/List;

.field final synthetic val$productToUpdateList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdaterUiController;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$19;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    iput-object p2, p0, Lcom/parrot/freeflight/update/UpdaterUiController$19;->val$productToUpdateList:Ljava/util/List;

    iput-object p3, p0, Lcom/parrot/freeflight/update/UpdaterUiController$19;->val$availableUpdateList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 530
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$19;->val$productToUpdateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 531
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$19;->val$productToUpdateList:Ljava/util/List;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$19;->val$availableUpdateList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    return-void
.end method
