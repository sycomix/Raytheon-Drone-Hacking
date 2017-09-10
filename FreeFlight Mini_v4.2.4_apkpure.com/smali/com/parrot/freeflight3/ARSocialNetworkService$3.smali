.class Lcom/parrot/freeflight3/ARSocialNetworkService$3;
.super Ljava/lang/Object;
.source "ARSocialNetworkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/ARSocialNetworkService;->signInToFacebook(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/ARSocialNetworkService;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/ARSocialNetworkService;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$3;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    iput-object p2, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$3;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$3;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    new-instance v1, Lcom/parrot/freeflight3/ARFacebookShareManager;

    iget-object v2, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$3;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$3;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    invoke-direct {v1, v2, v3}, Lcom/parrot/freeflight3/ARFacebookShareManager;-><init>(Landroid/app/Activity;Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;)V

    invoke-static {v0, v1}, Lcom/parrot/freeflight3/ARSocialNetworkService;->access$102(Lcom/parrot/freeflight3/ARSocialNetworkService;Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager;

    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$3;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARSocialNetworkService;->access$100(Lcom/parrot/freeflight3/ARSocialNetworkService;)Lcom/parrot/freeflight3/ARFacebookShareManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$3;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight3/ARFacebookShareManager;->signIn(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    .line 264
    return-void
.end method
