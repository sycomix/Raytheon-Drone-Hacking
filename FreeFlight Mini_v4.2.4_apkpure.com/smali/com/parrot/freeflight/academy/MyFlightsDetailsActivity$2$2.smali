.class Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$2;
.super Ljava/lang/Object;
.source "MyFlightsDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;->facebookShareManagerAccountNameReceived(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;

.field final synthetic val$accountName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$2;->this$1:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;

    iput-object p2, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$2;->val$accountName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$2;->val$accountName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$2;->this$1:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$2;->this$1:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;

    iget-object v1, v1, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$700(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$502(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Z)Z

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$2;->this$1:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$600(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    .line 174
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$2;->this$1:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$502(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Z)Z

    goto :goto_0
.end method
