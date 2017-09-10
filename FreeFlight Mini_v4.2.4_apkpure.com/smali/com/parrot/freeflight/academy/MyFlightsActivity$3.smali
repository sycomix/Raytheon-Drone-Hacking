.class Lcom/parrot/freeflight/academy/MyFlightsActivity$3;
.super Ljava/lang/Object;
.source "MyFlightsActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/MediaManager$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/MyFlightsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$3;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public localMediaUpdated()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$3;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$400(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->notifyDataSetChanged()V

    .line 110
    return-void
.end method
