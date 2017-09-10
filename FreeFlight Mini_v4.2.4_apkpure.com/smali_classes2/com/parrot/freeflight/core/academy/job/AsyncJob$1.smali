.class Lcom/parrot/freeflight/core/academy/job/AsyncJob$1;
.super Ljava/lang/Object;
.source "AsyncJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/job/AsyncJob;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/job/AsyncJob;

.field final synthetic val$element:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/job/AsyncJob;Ljava/util/Map$Entry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/job/AsyncJob;

    .prologue
    .line 58
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/AsyncJob$1;, "Lcom/parrot/freeflight/core/academy/job/AsyncJob$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/job/AsyncJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/AsyncJob;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/job/AsyncJob$1;->val$element:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/AsyncJob$1;, "Lcom/parrot/freeflight/core/academy/job/AsyncJob$1;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/AsyncJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/AsyncJob;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->mJobHolder:Lcom/parrot/freeflight/core/academy/job/IJobHolder;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/AsyncJob$1;->val$element:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/core/academy/job/IJobHolder;->rollBack(Ljava/lang/Object;)V

    .line 62
    return-void
.end method
