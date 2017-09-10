.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$8;
.super Ljava/lang/Object;
.source "MediaPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$8;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 338
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$8;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    const-string v3, "android.permission.GET_ACCOUNTS"

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 339
    .local v1, "permissionCheck":I
    if-eqz v1, :cond_1

    .line 340
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$8;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    const-string v3, "android.permission.GET_ACCOUNTS"

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    new-instance v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;

    invoke-direct {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;-><init>()V

    .line 342
    .local v0, "dialogFragment":Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;
    invoke-virtual {v0, v5}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;->setCancelable(Z)V

    .line 343
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$8;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-virtual {v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "permission_fragment"

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 350
    .end local v0    # "dialogFragment":Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$8;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "android.permission.GET_ACCOUNTS"

    aput-object v4, v3, v5

    invoke-static {v2, v3, v6}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$8;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$1100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    goto :goto_0
.end method
