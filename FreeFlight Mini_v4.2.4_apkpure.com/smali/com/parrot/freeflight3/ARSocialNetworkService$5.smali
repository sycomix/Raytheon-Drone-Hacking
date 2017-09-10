.class Lcom/parrot/freeflight3/ARSocialNetworkService$5;
.super Ljava/lang/Object;
.source "ARSocialNetworkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/ARSocialNetworkService;->beginFacebookLinkShareProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$isVideo:Z

.field final synthetic val$linkToShare:Ljava/lang/String;

.field final synthetic val$thumbUrl:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/ARSocialNetworkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/ARSocialNetworkService;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    iput-object p2, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;->val$linkToShare:Ljava/lang/String;

    iput-object p3, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;->val$thumbUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;->val$activity:Landroid/app/Activity;

    iput-object p6, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;->val$fragment:Landroid/support/v4/app/Fragment;

    iput-boolean p7, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;->val$isVideo:Z

    iput-object p8, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;->val$appName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 296
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARSocialNetworkService;->access$100(Lcom/parrot/freeflight3/ARSocialNetworkService;)Lcom/parrot/freeflight3/ARFacebookShareManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    iget-object v2, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;->val$linkToShare:Ljava/lang/String;

    iget-object v3, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;->val$thumbUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;->val$title:Ljava/lang/String;

    iget-object v5, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;->val$activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;->val$fragment:Landroid/support/v4/app/Fragment;

    iget-boolean v7, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;->val$isVideo:Z

    iget-object v8, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;->val$appName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/parrot/freeflight3/ARFacebookShareManager;->shareLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 297
    return-void
.end method
