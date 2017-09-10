.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$1;
.super Ljava/lang/Object;
.source "MediaPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;
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
    .line 74
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "market://details?id=com.google.android.gms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method
