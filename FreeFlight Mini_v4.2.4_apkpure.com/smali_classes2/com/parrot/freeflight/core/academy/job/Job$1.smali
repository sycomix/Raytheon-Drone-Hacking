.class Lcom/parrot/freeflight/core/academy/job/Job$1;
.super Ljava/lang/Object;
.source "Job.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/job/Job;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/job/Job;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/job/Job;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/job/Job;

    .prologue
    .line 29
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/Job$1;, "Lcom/parrot/freeflight/core/academy/job/Job$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/job/Job$1;->this$0:Lcom/parrot/freeflight/core/academy/job/Job;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/parrot/freeflight/core/academy/job/Job$1;, "Lcom/parrot/freeflight/core/academy/job/Job$1;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/Job$1;->this$0:Lcom/parrot/freeflight/core/academy/job/Job;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/Job;->next()V

    .line 33
    return-void
.end method
