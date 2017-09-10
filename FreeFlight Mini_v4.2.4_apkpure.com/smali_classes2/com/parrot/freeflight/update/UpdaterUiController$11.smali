.class Lcom/parrot/freeflight/update/UpdaterUiController$11;
.super Ljava/lang/Object;
.source "UpdaterUiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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

.field final synthetic val$checked:[Z


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdaterUiController;[Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$11;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    iput-object p2, p0, Lcom/parrot/freeflight/update/UpdaterUiController$11;->val$checked:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 452
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController$11;->val$checked:[Z

    aput-boolean p3, v2, p2

    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, "found":Z
    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterUiController$11;->val$checked:[Z

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-boolean v0, v3, v2

    .line 455
    .local v0, "b":Z
    if-eqz v0, :cond_1

    .line 456
    const/4 v1, 0x1

    .line 460
    .end local v0    # "b":Z
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController$11;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v2}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$800(Lcom/parrot/freeflight/update/UpdaterUiController;)Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 461
    return-void

    .line 454
    .restart local v0    # "b":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
