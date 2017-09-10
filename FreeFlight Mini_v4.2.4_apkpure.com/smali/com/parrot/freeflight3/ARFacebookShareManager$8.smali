.class Lcom/parrot/freeflight3/ARFacebookShareManager$8;
.super Ljava/lang/Object;
.source "ARFacebookShareManager.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/ARFacebookShareManager;->shareLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$8;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 319
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$8;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$8;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorUserMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerUploadingFailed(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$8;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$8;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerUploadingEnded(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    goto :goto_0
.end method
