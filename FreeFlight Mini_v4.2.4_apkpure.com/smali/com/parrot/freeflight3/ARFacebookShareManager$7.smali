.class Lcom/parrot/freeflight3/ARFacebookShareManager$7;
.super Ljava/lang/Object;
.source "ARFacebookShareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/ARFacebookShareManager;->uploadMedia(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$session:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/ARFacebookShareManager;Landroid/support/v4/app/Fragment;Lcom/facebook/Session;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$7;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    iput-object p2, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$7;->val$fragment:Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$7;->val$session:Lcom/facebook/Session;

    iput-object p4, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 256
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$7;->val$fragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$7;->val$session:Lcom/facebook/Session;

    new-instance v1, Lcom/facebook/Session$NewPermissionsRequest;

    iget-object v2, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$7;->val$fragment:Landroid/support/v4/app/Fragment;

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "publish_actions"

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    .line 265
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$7;->val$session:Lcom/facebook/Session;

    new-instance v1, Lcom/facebook/Session$NewPermissionsRequest;

    iget-object v2, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$7;->val$activity:Landroid/app/Activity;

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "publish_actions"

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_0
.end method
