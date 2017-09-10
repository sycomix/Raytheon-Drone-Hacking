.class public interface abstract Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;
.super Ljava/lang/Object;
.source "ARYoutubeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/ARYoutubeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ARYoutubeManagerListener"
.end annotation


# virtual methods
.method public abstract youtubeManagerAppShouldBeAllowed(Lcom/parrot/freeflight3/ARYoutubeManager;Landroid/content/Intent;)V
.end method

.method public abstract youtubeManagerAuthNeeded(Lcom/parrot/freeflight3/ARYoutubeManager;)V
.end method

.method public abstract youtubeManagerUploadDone(Lcom/parrot/freeflight3/ARYoutubeManager;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract youtubeManagerUploadFailed(Ljava/lang/String;)V
.end method

.method public abstract youtubeManagerUploadInProgress(Lcom/parrot/freeflight3/ARYoutubeManager;Ljava/lang/String;F)V
.end method
