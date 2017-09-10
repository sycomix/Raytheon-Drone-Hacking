.class Lcom/parrot/freeflight/core/academy/RunOfflineManager$12;
.super Ljava/lang/Object;
.source "RunOfflineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/RunOfflineManager;->updateRunGrade(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

.field final synthetic val$grade:I

.field final synthetic val$run:Lcom/parrot/freeflight/core/academy/RunInformation;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Lcom/parrot/freeflight/core/academy/RunInformation;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$12;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$12;->val$run:Lcom/parrot/freeflight/core/academy/RunInformation;

    iput p3, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$12;->val$grade:I

    iput-boolean p4, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$12;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$12;->val$run:Lcom/parrot/freeflight/core/academy/RunInformation;

    iget v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$12;->val$grade:I

    iget-boolean v2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$12;->val$visible:Z

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/RunInformation;->updateGrade(IZ)V

    .line 453
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$12;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$000(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$12;->val$run:Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->updateGrade(Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 454
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$12;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$1200(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    .line 455
    return-void
.end method
