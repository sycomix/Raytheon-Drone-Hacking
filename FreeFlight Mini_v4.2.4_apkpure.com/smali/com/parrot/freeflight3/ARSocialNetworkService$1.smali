.class Lcom/parrot/freeflight3/ARSocialNetworkService$1;
.super Ljava/lang/Object;
.source "ARSocialNetworkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/ARSocialNetworkService;->beginYoutubeUploadProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$tags:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/ARSocialNetworkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/ARSocialNetworkService;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$1;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    iput-object p2, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$1;->val$accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$1;->val$filePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$1;->val$description:Ljava/lang/String;

    iput-object p6, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$1;->val$tags:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$1;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    new-instance v1, Lcom/parrot/freeflight3/ARYoutubeManager;

    iget-object v2, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$1;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    invoke-direct {v1, v2}, Lcom/parrot/freeflight3/ARYoutubeManager;-><init>(Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;)V

    invoke-static {v0, v1}, Lcom/parrot/freeflight3/ARSocialNetworkService;->access$002(Lcom/parrot/freeflight3/ARSocialNetworkService;Lcom/parrot/freeflight3/ARYoutubeManager;)Lcom/parrot/freeflight3/ARYoutubeManager;

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$1;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARSocialNetworkService;->access$000(Lcom/parrot/freeflight3/ARSocialNetworkService;)Lcom/parrot/freeflight3/ARYoutubeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$1;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    iget-object v2, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$1;->val$accountName:Ljava/lang/String;

    const-string v3, "ARFreeFlight"

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight3/ARYoutubeManager;->signIn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$1;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARSocialNetworkService;->access$000(Lcom/parrot/freeflight3/ARSocialNetworkService;)Lcom/parrot/freeflight3/ARYoutubeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$1;->val$filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$1;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$1;->val$description:Ljava/lang/String;

    iget-object v4, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$1;->val$tags:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight3/ARYoutubeManager;->uploadVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    return-void
.end method
