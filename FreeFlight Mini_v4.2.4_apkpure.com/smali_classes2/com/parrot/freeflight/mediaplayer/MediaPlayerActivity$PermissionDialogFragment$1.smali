.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment$1;
.super Ljava/lang/Object;
.source "MediaPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 510
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.GET_ACCOUNTS"

    aput-object v3, v1, v2

    invoke-static {v0, v1, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 511
    return-void
.end method
