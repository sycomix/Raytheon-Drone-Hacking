.class Lcom/parrot/freeflight3/ARFacebookShareManager$4;
.super Ljava/lang/Object;
.source "ARFacebookShareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/ARFacebookShareManager;->signIn(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/ARFacebookShareManager;Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$4;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    iput-object p2, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$4;->val$fragment:Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$4;->val$fragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$4;->val$fragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$4;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v2}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$300(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/facebook/Session$StatusCallback;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;Landroid/support/v4/app/Fragment;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$4;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-static {v1}, Lcom/parrot/freeflight3/ARFacebookShareManager;->access$300(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/facebook/Session$StatusCallback;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    goto :goto_0
.end method
