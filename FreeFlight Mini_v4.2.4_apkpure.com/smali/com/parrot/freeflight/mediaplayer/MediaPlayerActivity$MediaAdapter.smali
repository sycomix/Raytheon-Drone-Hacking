.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$MediaAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MediaPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$MediaAdapter;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .line 554
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 555
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$MediaAdapter;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$700(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$MediaAdapter;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$700(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 567
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 559
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$MediaAdapter;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$700(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaInfos;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerFragment;->newInstance(Lcom/parrot/freeflight/core/academy/MediaInfos;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 572
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
