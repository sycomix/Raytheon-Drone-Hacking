.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$5;
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
    .line 308
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$5;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$5;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->finish()V

    .line 312
    return-void
.end method
