.class Lcom/parrot/freeflight3/ARFacebookShareManager$5;
.super Ljava/lang/Object;
.source "ARFacebookShareManager.java"

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/ARFacebookShareManager;->updateUserLogin()V
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
    .line 159
    iput-object p1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$5;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .locals 3
    .param p1, "user"    # Lcom/facebook/model/GraphUser;
    .param p2, "response"    # Lcom/facebook/Response;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$5;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    if-eqz p1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$5;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$5;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerAccountNameReceived(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string v0, "ARFacebookShareManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user is null, response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/Response;->getRawResponse()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/Response;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
