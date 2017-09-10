.class Lcom/parrot/freeflight/core/academy/job/SyncJob$1$1;
.super Ljava/lang/Object;
.source "SyncJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/core/academy/job/SyncJob$1;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/job/SyncJob$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/core/academy/job/SyncJob$1;

    .prologue
    .line 66
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/SyncJob$1$1;, "Lcom/parrot/freeflight/core/academy/job/SyncJob$1$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1$1;->this$1:Lcom/parrot/freeflight/core/academy/job/SyncJob$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/SyncJob$1$1;, "Lcom/parrot/freeflight/core/academy/job/SyncJob$1$1;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1$1;->this$1:Lcom/parrot/freeflight/core/academy/job/SyncJob$1;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/SyncJob;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/job/SyncJob;->mJobHolder:Lcom/parrot/freeflight/core/academy/job/IJobHolder;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/SyncJob$1$1;->this$1:Lcom/parrot/freeflight/core/academy/job/SyncJob$1;

    iget-object v1, v1, Lcom/parrot/freeflight/core/academy/job/SyncJob$1;->val$job:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/core/academy/job/IJobHolder;->rollBack(Ljava/lang/Object;)V

    .line 70
    return-void
.end method
