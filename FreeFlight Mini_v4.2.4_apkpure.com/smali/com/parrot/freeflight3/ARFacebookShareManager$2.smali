.class Lcom/parrot/freeflight3/ARFacebookShareManager$2;
.super Ljava/lang/Object;
.source "ARFacebookShareManager.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


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
    .line 68
    iput-object p1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$2;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v3, 0x0

    .line 72
    const-string v0, "ARFacebookShareManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session is opened : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$2;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$100(Lcom/parrot/freeflight3/ARFacebookShareManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$2;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$200(Lcom/parrot/freeflight3/ARFacebookShareManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$2;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0, v3}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$102(Lcom/parrot/freeflight3/ARFacebookShareManager;Z)Z

    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$2;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->updateUserLogin()V

    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$2;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$2;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$2;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerIsSignedIn(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$2;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$100(Lcom/parrot/freeflight3/ARFacebookShareManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$2;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0, v3}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$102(Lcom/parrot/freeflight3/ARFacebookShareManager;Z)Z

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$2;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$2;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$2;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerPermissionNotGranted(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    goto :goto_0

    .line 95
    :cond_3
    const-string v1, "ARFacebookShareManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session is not opened, state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", exception:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v0, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$2;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$2;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$2;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerSignInFailed(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_4
    const-string v0, "null"

    goto :goto_1
.end method
