.class Lcom/facebook/internal/LikeActionController$6$1;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/RequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/LikeActionController$6;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/internal/LikeActionController$6;

.field final synthetic val$likeRequest:Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/internal/LikeActionController$6;Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    iput-object p2, p0, Lcom/facebook/internal/LikeActionController$6$1;->val$likeRequest:Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/RequestBatch;)V
    .locals 4
    .param p1, "batch"    # Lcom/facebook/RequestBatch;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 844
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    iget-object v0, v0, Lcom/facebook/internal/LikeActionController$6;->this$0:Lcom/facebook/internal/LikeActionController;

    invoke-static {v0, v1}, Lcom/facebook/internal/LikeActionController;->access$2002(Lcom/facebook/internal/LikeActionController;Z)Z

    .line 846
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$6$1;->val$likeRequest:Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;

    iget-object v0, v0, Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    iget-object v0, v0, Lcom/facebook/internal/LikeActionController$6;->this$0:Lcom/facebook/internal/LikeActionController;

    invoke-static {v0, v1}, Lcom/facebook/internal/LikeActionController;->access$2100(Lcom/facebook/internal/LikeActionController;Z)V

    .line 861
    :goto_0
    return-void

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    iget-object v0, v0, Lcom/facebook/internal/LikeActionController$6;->this$0:Lcom/facebook/internal/LikeActionController;

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$6$1;->val$likeRequest:Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;

    iget-object v1, v1, Lcom/facebook/internal/LikeActionController$PublishLikeRequestWrapper;->unlikeToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/LikeActionController;->access$1302(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;

    .line 853
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    iget-object v0, v0, Lcom/facebook/internal/LikeActionController$6;->this$0:Lcom/facebook/internal/LikeActionController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/internal/LikeActionController;->access$2202(Lcom/facebook/internal/LikeActionController;Z)Z

    .line 855
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    iget-object v0, v0, Lcom/facebook/internal/LikeActionController$6;->this$0:Lcom/facebook/internal/LikeActionController;

    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$1400(Lcom/facebook/internal/LikeActionController;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    const-string v1, "fb_like_control_did_like"

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    iget-object v2, v2, Lcom/facebook/internal/LikeActionController$6;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3, v2}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 859
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    iget-object v0, v0, Lcom/facebook/internal/LikeActionController$6;->this$0:Lcom/facebook/internal/LikeActionController;

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$6$1;->this$1:Lcom/facebook/internal/LikeActionController$6;

    iget-object v1, v1, Lcom/facebook/internal/LikeActionController$6;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/facebook/internal/LikeActionController;->access$2300(Lcom/facebook/internal/LikeActionController;Landroid/os/Bundle;)V

    goto :goto_0
.end method
