.class Lcom/parrot/freeflight/update/UpdaterUiController$21;
.super Ljava/lang/Object;
.source "UpdaterUiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/update/UpdaterUiController;->showWarningEraseDataDialog(Lcom/parrot/freeflight/update/task/AvailableUpdate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

.field final synthetic val$update:Lcom/parrot/freeflight/update/task/AvailableUpdate;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdaterUiController;Lcom/parrot/freeflight/update/task/AvailableUpdate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$21;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    iput-object p2, p0, Lcom/parrot/freeflight/update/UpdaterUiController$21;->val$update:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 566
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$21;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$900(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/UpdaterController;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$21;->val$update:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController;->startUpload(Lcom/parrot/freeflight/update/task/AvailableUpdate;)V

    .line 567
    return-void
.end method
