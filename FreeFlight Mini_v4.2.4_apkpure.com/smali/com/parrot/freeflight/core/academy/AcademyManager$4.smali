.class Lcom/parrot/freeflight/core/academy/AcademyManager$4;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public youtubeManagerAppShouldBeAllowed(Lcom/parrot/freeflight3/ARYoutubeManager;Landroid/content/Intent;)V
    .locals 2
    .param p1, "youtubeManager"    # Lcom/parrot/freeflight3/ARYoutubeManager;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1700(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$4$1;

    invoke-direct {v1, p0, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$4$1;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$4;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    return-void
.end method

.method public youtubeManagerAuthNeeded(Lcom/parrot/freeflight3/ARYoutubeManager;)V
    .locals 0
    .param p1, "youtubeManager"    # Lcom/parrot/freeflight3/ARYoutubeManager;

    .prologue
    .line 312
    return-void
.end method

.method public youtubeManagerUploadDone(Lcom/parrot/freeflight3/ARYoutubeManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "youtubeManager"    # Lcom/parrot/freeflight3/ARYoutubeManager;
    .param p2, "videoPath"    # Ljava/lang/String;
    .param p3, "videoUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 326
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1700(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$4$3;

    invoke-direct {v1, p0, p3}, Lcom/parrot/freeflight/core/academy/AcademyManager$4$3;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method

.method public youtubeManagerUploadFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1700(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$4$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/academy/AcademyManager$4$4;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    return-void
.end method

.method public youtubeManagerUploadInProgress(Lcom/parrot/freeflight3/ARYoutubeManager;Ljava/lang/String;F)V
    .locals 2
    .param p1, "youtubeManager"    # Lcom/parrot/freeflight3/ARYoutubeManager;
    .param p2, "videoPath"    # Ljava/lang/String;
    .param p3, "progress"    # F

    .prologue
    .line 316
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1700(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/core/academy/AcademyManager$4$2;

    invoke-direct {v1, p0, p3}, Lcom/parrot/freeflight/core/academy/AcademyManager$4$2;-><init>(Lcom/parrot/freeflight/core/academy/AcademyManager$4;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    return-void
.end method
