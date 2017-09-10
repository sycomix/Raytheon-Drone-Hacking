.class public interface abstract Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;
.super Ljava/lang/Object;
.source "ARPicasaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/ARPicasaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ARPicasaManagerListener"
.end annotation


# virtual methods
.method public abstract picasaManagerAppShouldBeAllowed(Lcom/parrot/freeflight3/ARPicasaManager;Landroid/content/Intent;)V
.end method

.method public abstract picasaManagerAuthNeeded(Lcom/parrot/freeflight3/ARPicasaManager;)V
.end method

.method public abstract picasaManagerUploadDone(Lcom/parrot/freeflight3/ARPicasaManager;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract picasaManagerUploadFailed()V
.end method

.method public abstract picasaManagerUploadInProgress(Lcom/parrot/freeflight3/ARPicasaManager;Ljava/lang/String;F)V
.end method
