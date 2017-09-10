.class Lcom/parrot/freeflight3/ARFacebookShareManager$1;
.super Ljava/lang/Object;
.source "ARFacebookShareManager.java"

# interfaces
.implements Lcom/facebook/widget/FacebookDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/ARFacebookShareManager;
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
    .line 46
    iput-object p1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$1;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "pendingCall"    # Lcom/facebook/widget/FacebookDialog$PendingCall;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const-string v0, "ARFacebookShareManager"

    const-string v1, "Success!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$1;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$1;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$1;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerUploadingEnded(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    .line 64
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/widget/FacebookDialog$PendingCall;Ljava/lang/Exception;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "pendingCall"    # Lcom/facebook/widget/FacebookDialog$PendingCall;
    .param p2, "error"    # Ljava/lang/Exception;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 49
    const-string v0, "ARFacebookShareManager"

    const-string v1, "Error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$1;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$1;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$1;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerUploadingFailed(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V

    .line 54
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    return-void
.end method
