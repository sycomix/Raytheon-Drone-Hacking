.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment$1;
.super Ljava/lang/Object;
.source "MediaPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 538
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$1300(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    .line 539
    return-void
.end method
