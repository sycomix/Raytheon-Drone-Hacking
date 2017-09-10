.class Lcom/parrot/freeflight/home/HomeUIController$26;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/HomeUIController;->showLastMediasTakenSnackbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;

.field final synthetic val$photoCountTakenDuringRun:I

.field final synthetic val$runId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$26;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iput-object p2, p0, Lcom/parrot/freeflight/home/HomeUIController$26;->val$runId:Ljava/lang/String;

    iput p3, p0, Lcom/parrot/freeflight/home/HomeUIController$26;->val$photoCountTakenDuringRun:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$26;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$26;->val$runId:Ljava/lang/String;

    iget v2, p0, Lcom/parrot/freeflight/home/HomeUIController$26;->val$photoCountTakenDuringRun:I

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$3500(Lcom/parrot/freeflight/home/HomeUIController;Ljava/lang/String;I)V

    .line 1052
    return-void
.end method
