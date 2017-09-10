.class Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;
.super Ljava/lang/Object;
.source "MyFlightsDetailsActivity.java"

# interfaces
.implements Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public facebookShareManagerAccountNameReceived(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    new-instance v1, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$2;

    invoke-direct {v1, p0, p2}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$2;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method public facebookShareManagerIsSignedIn(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 0
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 149
    return-void
.end method

.method public facebookShareManagerPermissionNotGranted(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 2
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    new-instance v1, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$3;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method public facebookShareManagerSignInFailed(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    new-instance v1, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$1;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public facebookShareManagerUploadingEnded(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 2
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    new-instance v1, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$4;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method

.method public facebookShareManagerUploadingFailed(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    new-instance v1, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$5;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method

.method public facebookShareManagerUploadingStarted(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 0
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 192
    return-void
.end method
