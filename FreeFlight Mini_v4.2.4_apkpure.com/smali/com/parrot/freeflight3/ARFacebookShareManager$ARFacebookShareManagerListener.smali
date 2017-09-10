.class public interface abstract Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;
.super Ljava/lang/Object;
.source "ARFacebookShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/ARFacebookShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ARFacebookShareManagerListener"
.end annotation


# virtual methods
.method public abstract facebookShareManagerAccountNameReceived(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
.end method

.method public abstract facebookShareManagerIsSignedIn(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
.end method

.method public abstract facebookShareManagerPermissionNotGranted(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
.end method

.method public abstract facebookShareManagerSignInFailed(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
.end method

.method public abstract facebookShareManagerUploadingEnded(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
.end method

.method public abstract facebookShareManagerUploadingFailed(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
.end method

.method public abstract facebookShareManagerUploadingStarted(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
.end method
