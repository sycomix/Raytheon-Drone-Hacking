.class public Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;
.super Landroid/app/DialogFragment;
.source "MediaPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 504
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 505
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0803bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 506
    const v1, 0x7f08068d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 507
    const v1, 0x7f0805ea

    new-instance v2, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment$1;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 513
    const v1, 0x7f080397

    new-instance v2, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment$2;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 519
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
