.class Lcom/parrot/freeflight3/ARSocialNetworkService$6;
.super Ljava/lang/Object;
.source "ARSocialNetworkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/ARSocialNetworkService;->onFBActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/ARSocialNetworkService;IILandroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/ARSocialNetworkService;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$6;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    iput p2, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$6;->val$requestCode:I

    iput p3, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$6;->val$resultCode:I

    iput-object p4, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$6;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$6;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARSocialNetworkService;->access$100(Lcom/parrot/freeflight3/ARSocialNetworkService;)Lcom/parrot/freeflight3/ARFacebookShareManager;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$6;->val$requestCode:I

    iget v2, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$6;->val$resultCode:I

    iget-object v3, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$6;->val$data:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight3/ARFacebookShareManager;->onFBActivityResult(IILandroid/content/Intent;)V

    .line 312
    return-void
.end method
