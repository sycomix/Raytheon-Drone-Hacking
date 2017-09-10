.class Lcom/parrot/freeflight3/ARFacebookShareManager$FileUploadCallback;
.super Ljava/lang/Object;
.source "ARFacebookShareManager.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/ARFacebookShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileUploadCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$FileUploadCallback;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight3/ARFacebookShareManager;Lcom/parrot/freeflight3/ARFacebookShareManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight3/ARFacebookShareManager;
    .param p2, "x1"    # Lcom/parrot/freeflight3/ARFacebookShareManager$1;

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/parrot/freeflight3/ARFacebookShareManager$FileUploadCallback;-><init>(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 276
    const-string v0, "ARFacebookShareManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Post completed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$FileUploadCallback;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$FileUploadCallback;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$FileUploadCallback;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorUserMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerUploadingFailed(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$FileUploadCallback;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$FileUploadCallback;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerUploadingEnded(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    goto :goto_0
.end method
