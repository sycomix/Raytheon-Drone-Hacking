.class Lcom/parrot/freeflight/core/academy/job/DeleteRunJob$1;
.super Ljava/lang/Object;
.source "DeleteRunJob.java"

# interfaces
.implements Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteRunListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->process(Lcom/parrot/freeflight/core/academy/RunInformation;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

.field final synthetic val$run:Lcom/parrot/freeflight/core/academy/RunInformation;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;Lcom/parrot/freeflight/core/academy/RunInformation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob$1;->val$run:Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthDeleteRunResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V
    .locals 4
    .param p1, "error"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .prologue
    const/4 v3, 0x0

    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob$1;->val$run:Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {v0, v1, v3, v3}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->dispatchResult(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob$1;->val$run:Lcom/parrot/freeflight/core/academy/RunInformation;

    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->dispatchResult(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
