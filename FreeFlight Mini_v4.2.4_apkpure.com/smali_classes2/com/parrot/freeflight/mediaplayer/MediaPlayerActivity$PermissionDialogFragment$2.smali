.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment$2;
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
    .line 513
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$1200(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    .line 517
    return-void
.end method
