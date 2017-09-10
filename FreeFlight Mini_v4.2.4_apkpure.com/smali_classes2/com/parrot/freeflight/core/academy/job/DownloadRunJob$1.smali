.class Lcom/parrot/freeflight/core/academy/job/DownloadRunJob$1;
.super Ljava/lang/Object;
.source "DownloadRunJob.java"

# interfaces
.implements Lcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunJsonDetailsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;->process(Lcom/parrot/freeflight/core/academy/RunInformation;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

.field final synthetic val$run:Lcom/parrot/freeflight/core/academy/RunInformation;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;Lcom/parrot/freeflight/core/academy/RunInformation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob$1;->val$run:Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthGetRunJsonDetailsResponse(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "error"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne p1, v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob$1;->val$run:Lcom/parrot/freeflight/core/academy/RunInformation;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;->dispatchResult(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v0, "DownloadRunJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run download error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob$1;->val$run:Lcom/parrot/freeflight/core/academy/RunInformation;

    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    invoke-direct {v2, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    invoke-virtual {v0, v1, p2, v2}, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;->dispatchResult(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
