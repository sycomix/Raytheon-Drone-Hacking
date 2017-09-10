.class Lcom/parrot/freeflight/core/academy/job/Job$2;
.super Ljava/lang/Object;
.source "Job.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/job/Job;->dispatchResult(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/job/Job;

.field final synthetic val$error:Ljava/lang/Exception;

.field final synthetic val$job:Ljava/lang/Object;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/job/Job;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/job/Job;

    .prologue
    .line 53
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/Job$2;, "Lcom/parrot/freeflight/core/academy/job/Job$2;"
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/job/Job$2;->this$0:Lcom/parrot/freeflight/core/academy/job/Job;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/job/Job$2;->val$job:Ljava/lang/Object;

    iput-object p3, p0, Lcom/parrot/freeflight/core/academy/job/Job$2;->val$result:Ljava/lang/Object;

    iput-object p4, p0, Lcom/parrot/freeflight/core/academy/job/Job$2;->val$error:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 57
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/Job$2;, "Lcom/parrot/freeflight/core/academy/job/Job$2;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/Job$2;->this$0:Lcom/parrot/freeflight/core/academy/job/Job;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/Job$2;->val$job:Ljava/lang/Object;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/job/Job$2;->val$result:Ljava/lang/Object;

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/job/Job$2;->val$error:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/core/academy/job/Job;->onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/Job$2;->val$error:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/Job$2;->this$0:Lcom/parrot/freeflight/core/academy/job/Job;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/job/Job;->mJobHolder:Lcom/parrot/freeflight/core/academy/job/IJobHolder;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/Job$2;->val$job:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/core/academy/job/IJobHolder;->rollBack(Ljava/lang/Object;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/Job$2;->this$0:Lcom/parrot/freeflight/core/academy/job/Job;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/job/Job;->access$000(Lcom/parrot/freeflight/core/academy/job/Job;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/Job$2;->this$0:Lcom/parrot/freeflight/core/academy/job/Job;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/Job;->next()V

    .line 64
    :cond_1
    return-void
.end method
