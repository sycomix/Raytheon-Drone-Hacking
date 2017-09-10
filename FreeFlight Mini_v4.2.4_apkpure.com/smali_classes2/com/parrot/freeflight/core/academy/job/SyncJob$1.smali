.class Lcom/parrot/freeflight/core/academy/job/SyncJob$1;
.super Ljava/lang/Object;
.source "SyncJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/job/SyncJob;->handle(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/job/SyncJob;

.field final synthetic val$job:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/job/SyncJob;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/job/SyncJob;

    .prologue
    .line 42
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/SyncJob$1;, "Lcom/parrot/freeflight/core/academy/job/SyncJob$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/SyncJob;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->val$job:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/SyncJob$1;, "Lcom/parrot/freeflight/core/academy/job/SyncJob$1;"
    const/4 v6, 0x0

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "needRollBack":Z
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/SyncJob;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/job/SyncJob;->isStopped()Z

    move-result v3

    if-nez v3, :cond_3

    .line 49
    :try_start_0
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/SyncJob;

    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->val$job:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/core/academy/job/SyncJob;->process(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 50
    .local v2, "result":Ljava/lang/Object;, "TR;"
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/SyncJob;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/job/SyncJob;->isStopped()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/SyncJob;

    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->val$job:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/parrot/freeflight/core/academy/job/SyncJob;->dispatchResult(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v2    # "result":Ljava/lang/Object;, "TR;"
    :goto_0
    if-eqz v1, :cond_0

    .line 62
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/SyncJob;

    invoke-static {v3}, Lcom/parrot/freeflight/core/academy/job/SyncJob;->access$000(Lcom/parrot/freeflight/core/academy/job/SyncJob;)Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;

    move-result-object v3

    if-nez v3, :cond_4

    .line 63
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/SyncJob;

    iget-object v3, v3, Lcom/parrot/freeflight/core/academy/job/SyncJob;->mJobHolder:Lcom/parrot/freeflight/core/academy/job/IJobHolder;

    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->val$job:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lcom/parrot/freeflight/core/academy/job/IJobHolder;->rollBack(Ljava/lang/Object;)V

    .line 74
    :cond_0
    :goto_1
    return-void

    .line 51
    .restart local v2    # "result":Ljava/lang/Object;, "TR;"
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "result":Ljava/lang/Object;, "TR;"
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/SyncJob;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/job/SyncJob;->isStopped()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/SyncJob;

    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->val$job:Ljava/lang/Object;

    invoke-virtual {v3, v4, v6, v0}, Lcom/parrot/freeflight/core/academy/job/SyncJob;->dispatchResult(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 55
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 66
    :cond_4
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/SyncJob;

    new-instance v4, Lcom/parrot/freeflight/core/academy/job/SyncJob$1$1;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/core/academy/job/SyncJob$1$1;-><init>(Lcom/parrot/freeflight/core/academy/job/SyncJob$1;)V

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/core/academy/job/SyncJob;->post(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
