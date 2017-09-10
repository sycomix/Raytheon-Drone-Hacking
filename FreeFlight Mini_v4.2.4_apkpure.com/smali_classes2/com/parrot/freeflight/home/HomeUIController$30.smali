.class Lcom/parrot/freeflight/home/HomeUIController$30;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/HomeUIController;->switchPilotingCardVisibility(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;

.field final synthetic val$endValue:F


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$30;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iput p2, p0, Lcom/parrot/freeflight/home/HomeUIController$30;->val$endValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1270
    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController$30;->val$endValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$30;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2200(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/support/percent/PercentRelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 1273
    :cond_0
    return-void
.end method
