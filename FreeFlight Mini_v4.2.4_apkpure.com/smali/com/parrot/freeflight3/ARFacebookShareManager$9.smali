.class Lcom/parrot/freeflight3/ARFacebookShareManager$9;
.super Ljava/lang/Object;
.source "ARFacebookShareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/ARFacebookShareManager;->shareLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

.field final synthetic val$request:Lcom/facebook/Request;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/ARFacebookShareManager;Lcom/facebook/Request;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$9;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    iput-object p2, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$9;->val$request:Lcom/facebook/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$9;->val$request:Lcom/facebook/Request;

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 339
    return-void
.end method
