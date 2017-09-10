.class Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$1;
.super Ljava/lang/Object;
.source "MyFlightsDetailsMediasFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/MediaManager$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$1;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public localMediaUpdated()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$1;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->access$000(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;)V

    .line 41
    return-void
.end method
