.class public Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "MediaPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialogFragment"
.end annotation


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 528
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 529
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08067b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 531
    invoke-virtual {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040088

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 532
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0f0253

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 534
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 535
    const v2, 0x7f080111

    new-instance v3, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment$1;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 542
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public setProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 546
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 549
    :cond_0
    return-void
.end method
